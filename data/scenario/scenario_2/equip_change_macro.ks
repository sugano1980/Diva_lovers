

[clearstack]
[if exp="tf.equip_item_current_1_click==1"]
[eval exp="tf.equip_item_change_1=1"]
[elsif exp="tf.equip_item_current_2_click==1"]
[eval exp="tf.equip_item_change_2=1"]
[endif]



[len_hantei]
;[eval exp="tf.soubi_len = tf.soubi_len +1"]
[iscript]



//ブッキング防止
for(i=1;i<=tf.soubi_len;i++){

	if(tyrano.plugin.kag.variable.tf.equip_item_no[i]>0){
       for(e=1;e<tf.soubi_len;e++){
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

for(i=1;i<=tf.soubi_len;i++){
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



for(i=1;i<=tf.soubi_len;i++){
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

for(i=1;i<=tf.soubi_len;i++){
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
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[else]
[jump storage="scenario_2/status_macro.ks" target=*item_shokika]
[endif]
;----

[endif]



;-----------------------------------------------------------------------------------------------------
*item_explain
[len_hantei]
[eval exp="tf.soubi_len = tf.soubi_len +1"]
[eval exp="tf.item_num =0"]
;装備欄１、２のアイテム説明
[iscript]


tyrano.plugin.kag.variable.tf.equip_item_explain_array = [0];
for(i=0;i<f.hogetto;i++){
tyrano.plugin.kag.variable.tf.equip_item_explain_array.push(tf.equip_item_explain_w[i]);
}



for(i=1;i<=tf.soubi_len;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_click==1){
	tyrano.plugin.kag.variable.tf.free_name_key=1;

	tf.item_num =Math.floor(i/9)*9

	var nnn = 0;

        if(i>tf.item_num){
			//変数iからiだとフリーズ。変数を変える
			nnn = i - tf.item_num;
		}

		//if(i>27){
		//i-=27; var big=1;
		//}else if(i>18){
		//i-=18; var big=2;	
		//}else if(i>9){
		//i-=9; var big=3;	
		//}

	             nnn -= 1;
     var o = nnn*45;		                    
	                        tyrano.plugin.kag.variable.tf.equip_key_y = tyrano.plugin.kag.variable.tf.equip_1_key_y + o;
	             nnn += 1;o=0;

 //if(i>item_num){
		//nnn += item_num;
		//}
		//big=0;

	    //if(big==3){
	 	//i+=9; big=0;
	 	//}else if(big==2){
	 	//i+=18; big=0;	
	 	//}else if(big==1){
	 	//i+=27; big=0;	
	 	//}


	tyrano.plugin.kag.variable.tf.equip_item_explain = tyrano.plugin.kag.variable.tf.equip_item_explain_array[i];
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_equip_end =1;
    tyrano.plugin.kag.variable.tf.skill=i;
	tyrano.plugin.kag.variable.tf.icon_id = i;

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


;-----------------------
;画像表示
;画像表示マクロ;-----
[equip_hyouji_shokika]
[eval exp="tf.equip_item_kind =tf.equip_item_type_no[tf.icon_id]"]
[eval exp="tf.equip_item_id = tf.equip_item_number[tf.icon_id]"]
[equip_hyouji_item]
[icon_hyouji_e]
;--------
;---------------------



[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[scenario_jump]
[endif]
;-----------------------------------------------------------------------------------------------------
;アイテム欄だけのクリック、アイテム説明

[iscript]
for(i=1;i<=tf.soubi_len;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1){
	tyrano.plugin.kag.variable.tf.free_name_key=1;

	var item_num =Math.floor(i/9)*9

        if(i>item_num){
			i-=item_num; 
			var big=(item_num/9);
			
		}

		//if(i>27){
		//i-=27; var big=3;
		//}else if(i>18){
		//i-=18; var big=2;	
		//}else if(i>9){
		//i-=9; var big=1;	
		//}
	             i-=1;
     var o = i*45;		                    
	                        tyrano.plugin.kag.variable.tf.equip_key_y = tyrano.plugin.kag.variable.tf.equip_1_key_y + o;
	             i+=1;o=0;
		
		i+=item_num;
		big=0;

	    //if(big==1){
	 	//i+=9; big=0;
	 	//}else if(big==2){
	 	//i+=18; big=0;	
	 	//}else if(big==3){
	 	//i+=27; big=0;	
	 	//}


	tyrano.plugin.kag.variable.tf.equip_item_explain = tyrano.plugin.kag.variable.tf.equip_item_explain_array[i];
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_equip_end =1;
    tyrano.plugin.kag.variable.tf.icon_id = i;		

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

;-----------------------
;画像表示
;画像表示マクロ;-----
[equip_hyouji_shokika]
[eval exp="tf.equip_item_kind =tf.equip_item_type_no[tf.icon_id]"]
[eval exp="tf.equip_item_id = tf.equip_item_number[tf.icon_id]"]
[equip_hyouji_item]
[icon_hyouji_e]
;--------
;---------------------


[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[scenario_jump]
[endif]

[scenario_jump]
[s]
;-------------------------------------------------------------
;装備変更
*equip_change
[len_hantei]
[eval exp="tf.soubi_len = tf.soubi_len +1"]
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
[len_hantei]
[eval exp="tf.soubi_len = tf.soubi_len +1"]
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










