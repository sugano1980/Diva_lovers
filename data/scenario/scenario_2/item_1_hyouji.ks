

[clearstack]
[free name="item_suuti" layer=2]

[if exp="tf.hana==1"]
[eval exp="tf.hana=0"]
[endif]

;[eval exp="tf.item_battle_hyouji=1"]
;[eval exp="tf.item_equip_hyouji=0"]
;[eval exp="tf.item_other_hyouji=0"]
;[eval exp="tf.item_cook_hyouji=0"]

;[call storage="scenario_2/item_check.ks"]
[clearfix name="process" ]
[free name="process_moji" layer=2]



[iscript]





//ブッキング防止
for(i=1;i<=tf.item_list.length;i++){

	if(tyrano.plugin.kag.variable.tf.process_item_no[i]>0){
   for(e=1;e<=tf.item_list.length;e++){
		if(i==e){
			tyrano.plugin.kag.variable.tf.process_shori_no[i]+=1;
		     }else{
			
			
			if(tyrano.plugin.kag.variable.tf.process_shori_no[e]>0){
				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;
			}
			
			tyrano.plugin.kag.variable.tf.process_shori_no[e] = 0;		    
	         }
	     }
	 }
	   
}

for(i=1;i<tf.item_list.length;i++){
tyrano.plugin.kag.variable.tf.process_item_no[i]=0;
}

[endscript]

;ティラノ処理キーカーソル消去

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;-----------------------------------------------------------------------------------------------------
;ただの２回なら消去
[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;

for(i=1;i<=tf.item_list.length;i++){
if(tyrano.plugin.kag.variable.tf.process_shori_no[i]===2){

if(tf.item_other_hyouji===1||tf.sell===1){

tyrano.plugin.kag.variable.tf.choice_number= tyrano.plugin.kag.variable.tf.process_item_number[i];
tyrano.plugin.kag.variable.tf.jump_change = 1;//能力値変更にジャンプ

}else{

tyrano.plugin.kag.variable.tf.free_name_key=1;
tyrano.plugin.kag.variable.tf.suuti_delete=1;


        }
    }
}
[endscript]


;ティラノ処理ターゲットジャンぷ;その他アイテムなら使用
[if exp="tf.jump_change==1&&tf.item_other_hyouji==1&&tf.sell!=1"]
[eval exp="tf.jump_change=0"]
[jump target=*other_change]
[elsif exp="tf.sell==1&&tf.jump_change==1"]
[eval exp="tf.jump_change=0"]
[jump target=*sell_no]
[endif]

;[key_delete]

[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;-----------------------------------------------------------------------------------------------------
*item_explain
[eval exp="tf.item_num =0"]
[eval exp="tf.item_value=0"]
[eval exp="tf.item_value_half=0"]
[eval exp="tf.sell_id=0"]
;装備欄１、２のアイテム説明
[iscript]


tyrano.plugin.kag.variable.tf.process_trush_value=0;

;-----------------------------------------------------------------------------------------------------
//アイテム欄だけのクリック、アイテム説明


for(i=1;i<=tf.item_list.length;i++){
if(tyrano.plugin.kag.variable.tf.process_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1){
	tyrano.plugin.kag.variable.tf.free_name_key=1;

		tf.item_num =Math.floor(i/9)*9

        var nnn = 0;

        if(i>tf.item_num){
			//変数iからiだとフリーズ。変数を変える
			nnn = i - tf.item_num;
		}else if(i===tf.item_num){
         
            nnn = 9;
                     
        }

		//if(i>27){
		//i-=27; var big=1;
		//}else if(i>18){
		//i-=18; var big=2;	
		//}else if(i>9){
		//i-=9; var big=3;	
		//}
                if(nnn!=0){
                nnn -= 1;
                }
	            
     var o = nnn*45;		                    
	                        tyrano.plugin.kag.variable.tf.process_key_y = tyrano.plugin.kag.variable.tf.process_1_key_y + o;
                 
                            tyrano.plugin.kag.variable.tf.process_item_y_trush = tyrano.plugin.kag.variable.tf.process_key_y - 15;
                if(nnn!=0){
                nnn += 1;
                }
	         
                 
                 
                 ;o=0;




	tyrano.plugin.kag.variable.tf.process_item_explain = tyrano.plugin.kag.variable.tf.process_item_explain_w[i];
	tyrano.plugin.kag.variable.tf.process_trush_value = i;
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_process_end =1;
    tyrano.plugin.kag.variable.tf.skill=i;
	tf.sell_id = i;
	i-=1;
	tyrano.plugin.kag.variable.tf.item_value_half = tf.process_item_value[i]/2;
	tyrano.plugin.kag.variable.tf.item_value_half = Math.floor(tf.item_value_half);
	i+=1;
    		

}
}




//売却値段;売却の場合
[endscript]
;値段表示

[eval exp="tf.key_y_price=tf.process_item_y-3"]
[eval exp="tf.item_x_sell = tf.process_item_x_2 + 50"]
[eval exp="tf.item_x_sell_price = tf.item_x_sell + 50"]

[eval exp="tf.process_key_y_price=tf.process_key_y-3 "]
[if exp="tf.item_hyouji!=1"]
[ptext layer=2 page=fore text=&tf.item_value_half face=antique name="item_suuti" size=20 x=&tf.item_x_sell y=&tf.process_key_y_price]

[ptext layer=2 page=fore text="G" face=antique name="item_suuti" size=20 x=&tf.item_x_sell_price y=&tf.process_key_y_price]
[endif]
;-------------------------------------------------------------------------------------------------------------------


[key_delete]

;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]


;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.process_1_key_x y=&tf.process_key_y]

;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.process_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]


[if exp="tf.sell!=1"]
;------
[eval exp="tf.hana=1"]
;cook_trush[1]の変数に１代入
[button graphic="trush.png" fix=true storage="scenario_2/item_trush.ks" target=*process_item_1_trush name="process" x=&tf.process_item_x_trush y=&tf.process_item_y_trush]
;ゴミ箱のY座標を取得
[eval exp="tf.trush_y_memori = tf.process_item_y_trush"]

[if exp="tf.item_other_hyouji==1"]
;アップパラメータ表示
[skill_calc_hyouji_other]
[endif]
;--------
[endif]



;元シナリオへジャンプ

;[if exp="tf.battle_item_hyouji==1"]
;[battle_number_shoki]
;[jump storage="scenario_2/battle_item_hyouji.ks" target=*item_hyouji2]
;[elsif exp="tf.cook_item_hyouji==1"]
;[cook_number_shoki]
;[jump storage="scenario_2/cook_item_hyouji.ks" target=*item_hyouji2]
;[elsif exp="tf.equip_item_hyouji==1"]
;[equip_number_shoki]
;[jump storage="scenario_2/equip_item_hyouji.ks" target=*item_hyouji2]
;[elsif exp="tf.other_item_hyouji==1"]
;[other_number_shoki]
;[jump storage="scenario_2/other_item_hyouji.ks" target=*item_hyouji2]

;[endif]






[jump storage="scenario_2/item_hyouji.ks" target=*hyouji_end]




[endif]


[jump storage="scenario_2/item_hyouji.ks" target=*item_hyouji2]


[s]
;-------------------------------------------------------------
;-------------------------------------------------------------
;売却処理
*sell_no

[cm]
[item_1_sell]
[if exp="tf.no_sell==1"]

[no_sell_message]
[else]
[eval exp="f.money=f.money+tf.item_value_half"]
[endif]

[if exp="tf.no_sell!=1"]
[playse storage="store_money_koukaonlabo.ogg"]
[endif]
[eval exp="tf.no_sell=0"]
[item_suuti_delete]
[free name="money" layer=2]
[key_delete]
[if exp="tf.suuti_delete==1"]
[eval exp="tf.suuti_delete=0"]
[endif]

;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=&tf.money_x y=&tf.money_y_g]


[free name="key" layer=2]
[jump storage="scenario_2/item_hyouji.ks" target=*item_hyouji2]












;アイテム使用
*other_change



[free name="item_suuti" layer=2]

;------------------------------------------------------------------------
;--------------------------------------------------------------------------

;選択されたアイテムを一つ減らす、能力値を上げる
;-------------------------------------------------------------------------
[item_use_shori]


;アイテム欄再表示
[free name="key" layer=2]
[other_item_shoki]
[if exp="tf.use_no!=1"]
[playse storage="item_status_up_onjin.ogg"]
[endif]
[irain_kousin]

[jump storage="scenario_2/item_hyouji.ks" target=*item_hyouji2]


