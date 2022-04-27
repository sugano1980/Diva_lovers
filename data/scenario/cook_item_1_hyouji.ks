[clearstack]
[clearfix name="cook" ]
[free name="item_suuti" layer=2]
[free name="cook_moji" layer=2]
[iscript]



//ブッキング防止
for(i=1;i<35;i++){

	if(tyrano.plugin.kag.variable.tf.cook_item_no[i]>0){
   for(e=1;e<35;e++){
		if(i==e){
			tyrano.plugin.kag.variable.tf.cook_shori_no[i]+=1;
		     }else{
			
			
			if(tyrano.plugin.kag.variable.tf.cook_shori_no[e]>0){
				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;
			}
			
			tyrano.plugin.kag.variable.tf.cook_shori_no[e] = 0;		    
	         }
	     }
	 }
	   
}

for(i=1;i<35;i++){
tyrano.plugin.kag.variable.tf.cook_item_no[i]=0;
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

for(i=1;i<35;i++){
if(tyrano.plugin.kag.variable.tf.cook_shori_no[i]==2){
tyrano.plugin.kag.variable.tf.free_name_key=1;
tyrano.plugin.kag.variable.tf.suuti_delete=1;

}
}
[endscript]

[key_delete]
[if exp="tf.suuti_delete==1"]
[cook_number_shoki]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[jump storage="cook_item_hyouji.ks" target=*item_hyouji2]
[endif]



;-----------------------------------------------------------------------------------------------------
*item_explain
;装備欄１、２のアイテム説明
[iscript]


tyrano.plugin.kag.variable.tf.cook_item_explain_array = [
0,
tyrano.plugin.kag.variable.tf.cook_item_explain_1,
tyrano.plugin.kag.variable.tf.cook_item_explain_2,
tyrano.plugin.kag.variable.tf.cook_item_explain_3,
tyrano.plugin.kag.variable.tf.cook_item_explain_4,
tyrano.plugin.kag.variable.tf.cook_item_explain_5,
tyrano.plugin.kag.variable.tf.cook_item_explain_6,
tyrano.plugin.kag.variable.tf.cook_item_explain_7,
tyrano.plugin.kag.variable.tf.cook_item_explain_8,
tyrano.plugin.kag.variable.tf.cook_item_explain_9,
tyrano.plugin.kag.variable.tf.cook_item_explain_10,
tyrano.plugin.kag.variable.tf.cook_item_explain_11,
tyrano.plugin.kag.variable.tf.cook_item_explain_12,
tyrano.plugin.kag.variable.tf.cook_item_explain_13,
tyrano.plugin.kag.variable.tf.cook_item_explain_14,
tyrano.plugin.kag.variable.tf.cook_item_explain_15,
tyrano.plugin.kag.variable.tf.cook_item_explain_16,
tyrano.plugin.kag.variable.tf.cook_item_explain_17,
tyrano.plugin.kag.variable.tf.cook_item_explain_18,
tyrano.plugin.kag.variable.tf.cook_item_explain_19,
tyrano.plugin.kag.variable.tf.cook_item_explain_20,
tyrano.plugin.kag.variable.tf.cook_item_explain_21,
tyrano.plugin.kag.variable.tf.cook_item_explain_22,
tyrano.plugin.kag.variable.tf.cook_item_explain_23,
tyrano.plugin.kag.variable.tf.cook_item_explain_24,
tyrano.plugin.kag.variable.tf.cook_item_explain_25,
tyrano.plugin.kag.variable.tf.cook_item_explain_26,
tyrano.plugin.kag.variable.tf.cook_item_explain_27,
tyrano.plugin.kag.variable.tf.cook_item_explain_28,
tyrano.plugin.kag.variable.tf.cook_item_explain_29,
tyrano.plugin.kag.variable.tf.cook_item_explain_30,
tyrano.plugin.kag.variable.tf.cook_item_explain_31,
tyrano.plugin.kag.variable.tf.cook_item_explain_32,
tyrano.plugin.kag.variable.tf.cook_item_explain_33,
tyrano.plugin.kag.variable.tf.cook_item_explain_34
];
tyrano.plugin.kag.variable.tf.cook_trush_value=0;

;-----------------------------------------------------------------------------------------------------
;アイテム欄だけのクリック、アイテム説明


for(i=1;i<35;i++){
if(tyrano.plugin.kag.variable.tf.cook_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1){
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
	                        tyrano.plugin.kag.variable.tf.cook_key_y = tyrano.plugin.kag.variable.tf.cook_1_key_y + o;
	                        tyrano.plugin.kag.variable.tf.cook_item_y_trush = tyrano.plugin.kag.variable.tf.cook_key_y - 15;
	             i+=1;o=0;
	 if(big==3){
	 	i+=9; big=0;
	 	}else if(big==2){
	 	i+=18; big=0;	
	 	}else if(big==1){
	 	i+=27; big=0;	
	 	}

	tyrano.plugin.kag.variable.tf.cook_item_explain = tyrano.plugin.kag.variable.tf.cook_item_explain_array[i];
	tyrano.plugin.kag.variable.tf.cook_trush_value = i;
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_cook_end =1;
    		

}
}
[endscript]

[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.cook_1_key_x y=&tf.cook_key_y]

;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.cook_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]


;cook_trush[1]の変数に１代入
[button graphic="trush.png" fix=true storage="item_trush.ks" target=*cook_item_1_trush name="cook" x=&tf.cook_item_x_trush y=&tf.cook_item_y_trush]

[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[jump storage="cook_item_hyouji.ks" target=*hyouji_end]
[endif]

[jump storage="cook_item_hyouji.ks" target=*item_hyouji2]
[s]
;-------------------------------------------------------------




*cook_item_1
[clearstack]




;ブッキング防止
[if exp="tf.cook_item_2==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.cook_item_2=0"]
[clearfix name="cook"]
[endif]

[if exp="tf.cook_item_1==2"]
;２回ならマーカー消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.cook_item_1=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_3==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_3" layer=2]
[eval exp="tf.cook_item_3=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_4==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_4" layer=2]
[eval exp="tf.cook_item_4=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_5==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_5" layer=2]
[eval exp="tf.cook_item_5=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_6==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_6" layer=2]
[eval exp="tf.cook_item_6=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_7==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_7" layer=2]
[eval exp="tf.cook_item_7=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_8==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_8" layer=2]
[eval exp="tf.cook_item_8=0"]
[clearfix name="cook"]
[endif]

;ブッキング防止
[if exp="tf.cook_item_9==1"]
;他の行を選択していた場合消去
[free name="key" layer=2]
[free name="item_suuti_9" layer=2]
[eval exp="tf.cook_item_9=0"]
[clearfix name="cook"]
[endif]



[if exp="tf.cook_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.cook_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.cook_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.cook_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.cook_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.cook_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.cook_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.cook_item_9>0"]
[free name="item_suuti_9" layer=2]
[endif]
;--------------

;-----------------------------------------------------------------------------------------

[if exp="tf.cook_item_1==1&&tf.cook_item_hyouji_1==1"]
;アイテム欄１回でアップステータス数値表示と説明
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item1_key_x y=&tf.item1_key_y]

;アイテム説明
[ptext layer=2 page=fore text=&tf.cook_item_explain_1 face=antique name="item_suuti" size=&tf.font_size x=&tf.item_explain_x y=&tf.item_explain_y]
;他のアイテムの説明が表示してあれば消去

;-------------


;cook_trush[1]の変数に１代入
[button graphic="trush.png" fix=true storage="item_trush.ks" target=*cook_item_1_trush name="cook" x=&tf.cook_item_x_trush y=&tf.cook_item_y_trush]


;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.cook_item_2=0"]
[eval exp="tf.cook_item_3=0"]
[eval exp="tf.cook_item_4=0"]
[eval exp="tf.cook_item_5=0"]
[eval exp="tf.cook_item_6=0"]
[eval exp="tf.cook_item_7=0"]
[eval exp="tf.cook_item_8=0"]
[eval exp="tf.cook_item_9=0"]
;------


[endif]





;元のファイルに戻る
[jump storage="cook_item_hyouji.ks" target=*item_hyouji2]















