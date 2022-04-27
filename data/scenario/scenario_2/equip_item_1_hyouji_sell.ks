*equip_item_1

[clearstack]
[clearfix name="equip" ]
[free name="item_suuti" layer=2]
[free name="equip_moji" layer=2]
[iscript]



//ブッキング防止
for(i=1;i<35;i++){

	if(tyrano.plugin.kag.variable.tf.equip_item_no[i]>0){
   for(e=1;e<35;e++){
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

for(i=1;i<35;i++){
tyrano.plugin.kag.variable.tf.equip_item_no[i]=0;
}

[endscript]

;ティラノ処理キーカーソル消去

[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]


[iscript]
for(h=1;h<35;h++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[h]==2){
tyrano.plugin.kag.variable.tf.sell_jump=1;
tyrano.plugin.kag.variable.tf.sell_id = h;
}
}
[endscript]

[if exp="tf.sell_jump==1"]
;２回
[eval exp="tf.sell_jump=0"]
[jump storage="scenario_2/item_sell.ks" target=*equip_item_1_sell]
[endif]

;-----------------------------------------------------------------------------------------

*item_explain

[iscript]
tyrano.plugin.kag.variable.tf.equip_item_explain_array= this.kag.stat.f["equip_item_list"].map(function(x) {return x.explain})
tyrano.plugin.kag.variable.tf.equip_number=0;


;-----------------------------------------------------------------------------------------------------
;アイテム欄だけのクリック、アイテム説明


for(h=1;h<35;h++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[h]==1){


tyrano.plugin.kag.variable.tf.equip_number= tyrano.plugin.kag.variable.tf.equip_item_dis[h][0];


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
	                        tyrano.plugin.kag.variable.tf.equip_key_y = tyrano.plugin.kag.variable.tf.item1_key_y + o;

	             h+=1;o=0;
	     	 if(big==3){
	 	h+=9; big=0;
	 	}else if(big==2){
	 	h+=18; big=0;	
	 	}else if(big==1){
	 	h+=27; big=0;	
	 	}


	tyrano.plugin.kag.variable.tf.equip_item_explain = tyrano.plugin.kag.variable.tf.equip_item_explain_array[tyrano.plugin.kag.variable.tf.equip_number];
	tyrano.plugin.kag.variable.tf.explain_true =1;
    tyrano.plugin.kag.variable.tf.jump_equip_end =1;
    		

}
}
[endscript]



[key_delete]
;アイテム説明とティラノ処理、キーカーソル表示
[if exp="tf.explain_true==1"]

;ティラノアイテム説明
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item1_key_x y=&tf.equip_key_y]
;アイテム説明
[ptext layer=2 page=fore text=&tf.equip_item_explain face=antique name="item_suuti" size=&tf.item_font_size x=&tf.item_explain_x y=&tf.item_explain_y]
;売却値段
[iscript]

if(isNaN(tyrano.plugin.kag.variable.tf.equip_item_value_all[tyrano.plugin.kag.variable.tf.equip_number])){

	tyrano.plugin.kag.variable.tf.equip_item_value_half= tyrano.plugin.kag.variable.tf.equip_item_value_all[tyrano.plugin.kag.variable.tf.equip_number];
	
	
}else{


     tyrano.plugin.kag.variable.tf.equip_item_value_half= tyrano.plugin.kag.variable.tf.equip_item_value_all[tyrano.plugin.kag.variable.tf.equip_number]/2;

     tyrano.plugin.kag.variable.tf.equip_item_value_half = Math.floor( tyrano.plugin.kag.variable.tf.equip_item_value_half);
 }


[endscript]

;値段表示

[eval exp="tf.equip_key_y_price=tf.equip_key_y-3 "]
[ptext layer=2 page=fore text=&tf.equip_item_value_half face=antique name="item_suuti" size=20 x=&tf.equip_item_x_sell y=&tf.equip_key_y_price]

[ptext layer=2 page=fore text="G" face=antique name="item_suuti" size=20 x=&tf.equip_item_x_sell_price y=&tf.equip_key_y_price]






[eval exp="tf.explain_true=0"]
[endif]
;元シナリオへジャンプ
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji2]
[s]
;-------------------------------------------------------------



[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji2]





for(i=1;i<35;h++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1){

     tyrano.plugin.kag.variable.tf.equip_item_value_half= tyrano.plugin.kag.variable.tf.equip_item_value_all[tyrano.plugin.kag.variable.tf.equip_number]/2;

     tyrano.plugin.kag.variable.tf.equip_item_value_half = Math.floor( tyrano.plugin.kag.variable.tf.equip_item_value_half);

}
}














