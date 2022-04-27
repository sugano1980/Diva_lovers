

[clearstack]
[if exp="tf.equip_item_current_1_click==1"]
[eval exp="tf.equip_item_change_1=1"]
[elsif exp="tf.equip_item_current_2_click==1"]
[eval exp="tf.equip_item_change_2=1"]
[endif]




[iscript]



//ブッキング防止
for(i=1;i<19;i++){

	if(tyrano.plugin.kag.variable.tf.equip_item_no[i]>0){
   for(e=1;e<19;e++){
		if(i==e){
			tyrano.plugin.kag.variable.tf.equip_shori_no[i]+=1;
		     }else{
			
			
			if(tyrano.plugin.kag.variable.tf.equip_shori_no[e]>0){
				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;
			}
			
			tyrano.plugin.kag.variable.tf.equip_shori_no[e] = 0;		    
	         }
	     }
	 }
	   
}

for(i=1;i<19;i++){
tyrano.plugin.kag.variable.tf.equip_item_no[i]=0;
}

[endscript]

;ティラノ処理キーカーソル消去

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]


[if exp="tf.equip_item_current_1_click>0"]
[eval exp="tf.equip_item_current_click =tf.equip_item_current_1_click"]
[elsif exp="tf.equip_item_current_2_click>0"]
[eval exp="tf.equip_item_current_click =tf.equip_item_current_2_click"]
[endif]

;装備変更
[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;



for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==2&&tyrano.plugin.kag.variable.tf.equip_item_current_click==1){
tyrano.plugin.kag.variable.tf.choice_number= tyrano.plugin.kag.variable.tf.equip_item_number[i];
tyrano.plugin.kag.variable.tf.jump_change = 1;//装備変更にジャンプ
}
}
[endscript]

;ティラノ処理ターゲットジャンぷ
[if exp="tf.jump_change==1"]
[eval exp="tf.jump_change=0"]

[if exp="tf.equip_item_current_1_click==1"]
[jump target=*equip_change]
[elsif exp="tf.equip_item_current_2_click==1"]
[jump target=*equip_change_2]
[endif]

[endif]
;-----------------------------------------------------------------------------------------------------
;ただの２回なら消去
[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;

for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==2){
tyrano.plugin.kag.variable.tf.free_name_key=1;
tyrano.plugin.kag.variable.tf.suuti_delete=1;

}
}
[endscript]

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
;----
[if exp="f.equip_change==1"]
[jump storage="equip_change.ks" target=*item_shokika]
[else]
[jump storage="status_macro.ks" target=*item_shokika]
[endif]
;----

[endif]



;-----------------------------------------------------------------------------------------------------
*item_explain
;装備欄１、２のアイテム説明
[iscript]


tyrano.plugin.kag.variable.tf.equip_item_explain_array = [
0,
tyrano.plugin.kag.variable.tf.equip_item_explain_1,
tyrano.plugin.kag.variable.tf.equip_item_explain_2,
tyrano.plugin.kag.variable.tf.equip_item_explain_3,
tyrano.plugin.kag.variable.tf.equip_item_explain_4,
tyrano.plugin.kag.variable.tf.equip_item_explain_5,
tyrano.plugin.kag.variable.tf.equip_item_explain_6,
tyrano.plugin.kag.variable.tf.equip_item_explain_7,
tyrano.plugin.kag.variable.tf.equip_item_explain_8,
tyrano.plugin.kag.variable.tf.equip_item_explain_9,
tyrano.plugin.kag.variable.tf.equip_item_explain_10,
tyrano.plugin.kag.variable.tf.equip_item_explain_11,
tyrano.plugin.kag.variable.tf.equip_item_explain_12,
tyrano.plugin.kag.variable.tf.equip_item_explain_13,
tyrano.plugin.kag.variable.tf.equip_item_explain_14,
tyrano.plugin.kag.variable.tf.equip_item_explain_15,
tyrano.plugin.kag.variable.tf.equip_item_explain_16,
tyrano.plugin.kag.variable.tf.equip_item_explain_17,
tyrano.plugin.kag.variable.tf.equip_item_explain_18
];


for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_click==1){
	tyrano.plugin.kag.variable.tf.free_name_key=1;
			if(i>27){
		i-=27; var big=1;
		}else if(i>18){
		i-=18; var big=2;	
		}else if(i>9){
		i-=9; var big=3;	
		}

	             i-=1;
     var o = i*45;		                    
	                        tyrano.plugin.kag.variable.tf.equip_key_y = tyrano.plugin.kag.variable.tf.equip_1_key_y + o;
	             i+=1;o=0;
	    if(big==3){
	 	i+=9; big=0;
	 	}else if(big==2){
	 	i+=18; big=0;	
	 	}else if(big==1){
	 	i+=27; big=0;	
	 	}


	tyrano.plugin.kag.variable.tf.equip_item_explain = tyrano.plugin.kag.variable.tf.equip_item_explain_array[i];
	 tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_equip_end =1;
    		tyrano.plugin.kag.variable.tf.skill=i;

}
}
[endscript]

[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.equip_1_key_x y=&tf.equip_key_y]
;装備欄
[if exp="tf.equip_item_current_1_click>0"]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
[elsif exp="tf.equip_item_current_2_click>0"]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[endif]

;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.equip_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]


;アップパラメータ表示



[if exp="tf.equip_item_current_1_click==1"]
[skill_calc_hyouji_current_1]
[elsif exp="tf.equip_item_current_2_click==1"]
[skill_calc_hyouji_current_2]
[endif]


[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[scenario_jump]
[endif]
;-----------------------------------------------------------------------------------------------------
;アイテム欄だけのクリック、アイテム説明

[iscript]
for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1){
	tyrano.plugin.kag.variable.tf.free_name_key=1;
		if(i>27){
		i-=27; var big=1;
		}else if(i>18){
		i-=18; var big=2;	
		}else if(i>9){
		i-=9; var big=3;	
		}
	             i-=1;
     var o = i*45;		                    
	                        tyrano.plugin.kag.variable.tf.equip_key_y = tyrano.plugin.kag.variable.tf.equip_1_key_y + o;
	             i+=1;o=0;
	    if(big==3){
	 	i+=9; big=0;
	 	}else if(big==2){
	 	i+=18; big=0;	
	 	}else if(big==1){
	 	i+=27; big=0;	
	 	}


	tyrano.plugin.kag.variable.tf.equip_item_explain = tyrano.plugin.kag.variable.tf.equip_item_explain_array[i];
	 tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_equip_end =1;
    		

}
}
[endscript]

[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.equip_1_key_x y=&tf.equip_key_y]

;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.equip_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]

[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[scenario_jump]
[endif]

[scenario_jump]
[s]
;-------------------------------------------------------------
;装備変更
*equip_change
;装備変更後、アイテム欄に装備１のアイテム表示のためのフラグ
[eval exp="tf.equip_item_change_1=1"]

;クリックされたのが装備１の時
[free name="item_suuti" layer=2]

;------------------------------------------------------------------------
;装備１がなんのアイテムか番号でチェック
;同時にヘアアいてむかどうかもチェックする。ヘアアイテムじゃなければ下へジャンプ警告


[equip_current_1_check]



;--------------------------------------------------------------------------


;選択されたアイテムを一つ減らして、現在装備のフラグにアイテム番号を代入
;-------------------------------------------------------------------------
[item_change_shori]

;名前を変更
[free name="soubi1" layer=2]

[equip_change_item_name_1]
;-------------------------------------------------------------------------
;------------------------------------------------------------------------






;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;クリックされたのが装備２の時
*equip_change_2

;装備変更後、アイテム欄に装備2のアイテム表示のためのフラグ
[eval exp="tf.equip_item_change_2=1"]

;クリックされたのが装備１の時
[free name="item_suuti" layer=2]

;------------------------------------------------------------------------
;装備１がなんのアイテムか番号でチェック
;同時にヘアアいてむかどうかもチェックする。ヘアアイテムじゃなければ下へジャンプ警告


[equip_current_2_check]



;--------------------------------------------------------------------------


;選択されたアイテムを一つ減らして、現在装備のフラグにアイテム番号を代入
;-------------------------------------------------------------------------
[item_change_shori]

;名前を変更
[free name="soubi2" layer=2]

[equip_change_item_name_2]
;-------------------------------------------------------------------------
;------------------------------------------------------------------------










