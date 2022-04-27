[clearstack]
[clearfix name="battle" ]
[free name="item_suuti" layer=2]
[iscript]



//ブッキング防止
for(i=1;i<7;i++){

	if(tyrano.plugin.kag.variable.tf.battle_item_no[i]>0){
   for(e=1;e<7;e++){
		if(i==e){
			tyrano.plugin.kag.variable.tf.battle_shori_no[i]=tyrano.plugin.kag.variable.tf.battle_item_no[i];
		     }else{
			
			
			if(tyrano.plugin.kag.variable.tf.battle_shori_no[e]>0){
				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;
			}
			
			tyrano.plugin.kag.variable.tf.battle_shori_no[e] = 0;		    
	         }
	     }
	 }
	   
}

for(i=1;i<7;i++){
tyrano.plugin.kag.variable.tf.battle_item_no[i]=0;
}

[endscript]

;ティラノ処理キーカーソル消去

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;-----------------------------------------------------------------------------------------------------

;-----------------------------------------------------------------------------------------------------
*item_explain

[iscript]
tyrano.plugin.kag.variable.tf.battle_item_explain_array= this.kag.stat.f["battle_item_list"].map(function(x) {return x.explain})
tyrano.plugin.kag.variable.tf.battle_number=0;
tyrano.plugin.kag.variable.tf.battle_trush_value=0;

;-----------------------------------------------------------------------------------------------------
;アイテム欄だけのクリック、アイテム説明


for(h=1;h<7;h++){
if(tyrano.plugin.kag.variable.tf.battle_shori_no[h]==1){
//先頭アイテムだった場合のフラグ
if(tyrano.plugin.kag.variable.tf.item_hyouji_confirm[0]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[1]==0){
tyrano.plugin.kag.variable.tf.sentou_item=1;
}

h-=1;
tyrano.plugin.kag.variable.tf.battle_number= tyrano.plugin.kag.variable.tf.battle_item_hyouji_number[h];
h+=1;

	tyrano.plugin.kag.variable.tf.free_name_key=1;
	if(h>27){
		h-=27; var big=1;
		}else if(h>18){
		h-=18; var big=2;	
		}else if(h>9){
		h-=9; var big=3;	
		}
	             h-=1;	             
     var o = h*45;		                    
	                        tyrano.plugin.kag.variable.tf.battle_key_y = tyrano.plugin.kag.variable.tf.battle_1_key_y + o;
	                        tyrano.plugin.kag.variable.tf.battle_item_y_trush = tyrano.plugin.kag.variable.tf.battle_key_y - 15;
	             h+=1;o=0;
	 if(big==3){
	 	h+=9; big=0;
	 	}else if(big==2){
	 	h+=18; big=0;	
	 	}else if(big==1){
	 	h+=27; big=0;	
	 	}

	tyrano.plugin.kag.variable.tf.battle_item_explain = tyrano.plugin.kag.variable.tf.battle_item_explain_array[tyrano.plugin.kag.variable.tf.battle_number];
	tyrano.plugin.kag.variable.tf.battle_trush_value = h;
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_battle_end =1;
    		

}
}
[endscript]

[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;アイテム欄
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.battle_1_key_x y=&tf.battle_key_y]

;ティラノアイテム説明
[ptext layer=2 page=fore visible=true text=&tf.battle_item_explain  face=antique name="item_suuti" size=&tf.font_size x=&tf.explain_x y=&tf.explain_y]



[button graphic="trush.png" fix=true storage="item_trush.ks" target=*battle_item_1_trush name="battle" x=&tf.battle_item_x_trush y=&tf.battle_item_y_trush]

[eval exp="tf.explain_true=0"]
;元シナリオへジャンプ
[jump storage="battle_item_hyouji.ks" target=*hyouji_end]
[endif]

[jump storage="battle_item_hyouji.ks" target=*item_hyouji2]
[s]
;-------------------------------------------------------------




