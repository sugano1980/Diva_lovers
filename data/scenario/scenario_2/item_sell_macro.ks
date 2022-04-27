

[macro name="item_1_sell"]

[eval exp="tf.stock = 0"]

[iscript]

var stock_num =0;

if(tf.item_equip_hyouji===1){

tf.stock = f.equip_item_stock; 

}else if(tf.item_other_hyouji===1){

tf.stock = f.other_item_stock;

}else if(tf.item_cook_hyouji===1){

tf.stock = f.cook_item_stock;

}else if(tf.item_battle_hyouji===1){

tf.stock  = f.battle_item_stock;

}

var item_stock = tf.process_item_hyouji_stock;

//装備アイテムの１番目は売却不可
if(tf.item_equip_hyouji===1&&tf.process_item_number[tf.sell_id]===1){

tyrano.plugin.kag.variable.tf.no_sell=1;

}else{

var stock_num = tf.process_item_number[tf.sell_id];

tf.stock[stock_num] -= 1; 
}


[endscript]

[endmacro]





[macro name="no_sell_message"]


[if exp="tf.item_equip_hyouji==1"]
[eval exp="tf.equip_item_y_no=tf.equip_key_y_price"]
[ptext layer=2 page=fore text="売却不可" face=antique name="no_sell" size=17 x=&tf.equip_item_x_sell y=&tf.equip_item_y_no]
[free name="equip_moji" layer=2]
[elsif exp="tf.item_other_hyouji==1"]
[eval exp="tf.other_item_y_no=tf.other_key_y_price"]
[ptext layer=2 page=fore text="売却不可" face=antique name="no_sell" size=17 x=&tf.other_item_x_sell y=&tf.other_item_y_no]
[free name="other_moji" layer=2]
[elsif exp="tf.item_cook_hyouji==1"]
[eval exp="tf.cook_item_y_no=tf.cook_key_y_price"]
[ptext layer=2 page=fore text="売却不可" face=antique name="no_sell" size=17 x=&tf.cook_item_x_sell y=&tf.cook_item_y_no]
[free name="cook_moji" layer=2]
[endif]


[wait time=300]
[free name="no_sell" layer=2]

[endmacro]



[return]