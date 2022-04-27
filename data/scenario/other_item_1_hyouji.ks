

[clearstack]
[clearfix name="other" ]
[free name="item_suuti" layer=2]





[iscript]



//ブッキング防止
for(i=1;i<31;i++){

	if(tyrano.plugin.kag.variable.tf.other_item_no[i]>0){
   for(e=1;e<31;e++){
		if(i==e){
			tyrano.plugin.kag.variable.tf.other_shori_no[i]+=1;
		     }else{
			
			
			if(tyrano.plugin.kag.variable.tf.other_shori_no[e]>0){
				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;
			}
			
			tyrano.plugin.kag.variable.tf.other_shori_no[e] = 0;		    
	         }
	     }
	 }
	   
}

for(i=1;i<31;i++){
tyrano.plugin.kag.variable.tf.other_item_no[i]=0;
}

[endscript]

;ティラノ処理キーカーソル消去

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]



;能力値変更
[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;



for(i=1;i<31;i++){
if(tyrano.plugin.kag.variable.tf.other_shori_no[i]==2){
tyrano.plugin.kag.variable.tf.choice_number= tyrano.plugin.kag.variable.tf.other_item_number[i];
tyrano.plugin.kag.variable.tf.jump_change = 1;//能力値変更にジャンプ
}
}
[endscript]

;ティラノ処理ターゲットジャンぷ
[if exp="tf.jump_change==1"]
[eval exp="tf.jump_change=0"]


[jump target=*other_change]


[endif]
;-----------------------------------------------------------------------------------------------------



;-----------------------------------------------------------------------------------------------------
*item_explain
;アイテム説明
[iscript]


tyrano.plugin.kag.variable.tf.other_item_explain_array = [
0,
tyrano.plugin.kag.variable.tf.other_item_explain_1,
tyrano.plugin.kag.variable.tf.other_item_explain_2,
tyrano.plugin.kag.variable.tf.other_item_explain_3,
tyrano.plugin.kag.variable.tf.other_item_explain_4,
tyrano.plugin.kag.variable.tf.other_item_explain_5,
tyrano.plugin.kag.variable.tf.other_item_explain_6,
tyrano.plugin.kag.variable.tf.other_item_explain_7,
tyrano.plugin.kag.variable.tf.other_item_explain_8,
tyrano.plugin.kag.variable.tf.other_item_explain_9,
tyrano.plugin.kag.variable.tf.other_item_explain_10,
tyrano.plugin.kag.variable.tf.other_item_explain_11,
tyrano.plugin.kag.variable.tf.other_item_explain_12,
tyrano.plugin.kag.variable.tf.other_item_explain_13,
tyrano.plugin.kag.variable.tf.other_item_explain_14,
tyrano.plugin.kag.variable.tf.other_item_explain_15,
tyrano.plugin.kag.variable.tf.other_item_explain_16,
tyrano.plugin.kag.variable.tf.other_item_explain_17,
tyrano.plugin.kag.variable.tf.other_item_explain_18,
tyrano.plugin.kag.variable.tf.other_item_explain_19,
tyrano.plugin.kag.variable.tf.other_item_explain_20,
tyrano.plugin.kag.variable.tf.other_item_explain_21,
tyrano.plugin.kag.variable.tf.other_item_explain_22,
tyrano.plugin.kag.variable.tf.other_item_explain_23,
tyrano.plugin.kag.variable.tf.other_item_explain_24,
tyrano.plugin.kag.variable.tf.other_item_explain_25,
tyrano.plugin.kag.variable.tf.other_item_explain_26,
tyrano.plugin.kag.variable.tf.other_item_explain_27,
tyrano.plugin.kag.variable.tf.other_item_explain_28,
tyrano.plugin.kag.variable.tf.other_item_explain_29,
tyrano.plugin.kag.variable.tf.other_item_explain_30
];


for(i=1;i<31;i++){
if(tyrano.plugin.kag.variable.tf.other_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1){
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
	                        tyrano.plugin.kag.variable.tf.other_key_y = tyrano.plugin.kag.variable.tf.other_1_key_y + o;
	                         tyrano.plugin.kag.variable.tf.other_item_y_trush = tyrano.plugin.kag.variable.tf.other_key_y - 15;
	             i+=1;o=0;
	 if(big==3){
	 	i+=9; big=0;
	 	}else if(big==2){
	 	i+=18; big=0;	
	 	}else if(big==1){
	 	i+=27; big=0;	
	 	}


	tyrano.plugin.kag.variable.tf.other_item_explain = tyrano.plugin.kag.variable.tf.other_item_explain_array[i];
	tyrano.plugin.kag.variable.tf.other_trush_value = i;
	 tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_other_end =1;
    		tyrano.plugin.kag.variable.tf.skill=i;

}
}
[endscript]

[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.other_1_key_x y=&tf.other_key_y]


;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.other_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]

;other_trush[1]の変数に１代入
[button graphic="trush.png" fix=true storage="item_trush.ks" target=*other_item_1_trush name="other" x=&tf.other_item_x_trush y=&tf.other_item_y_trush]

;アップパラメータ表示
[skill_calc_hyouji_other]


[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[if exp="tf.jump_other_end ==1"]
[eval exp="tf.jump_other_end =0"]
[jump storage="other_item_hyouji.ks" target=*hyouji_end]
[else]
[jump storage="other_item_hyouji.ks" target=*item_shokika]
[endif]

[endif]

[s]
;-------------------------------------------------------------
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
[playse storage="item_status_up_onjin.ogg"]
[irain_kousin]

[jump storage="other_item_hyouji.ks" target=*item_shokika]



;-------------------------------------------------------------------------
;------------------------------------------------------------------------






;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------
;------------------------------------------------------------------------










