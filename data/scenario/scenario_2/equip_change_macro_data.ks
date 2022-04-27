;アイテム説明





[macro name="key_delete"]
[if exp="tf.free_name_key==1"]
[eval exp="tf.free_name_key=0"]
[free name="key" layer=2]
[endif]
[if exp="tf.item_suuti_delete==1"]
[eval exp="tf.item_suuti_delete=0"]
[free name=&tf.item_suuti_value layer=2]
[endif]

[endmacro]


[macro name="scenario_jump"]

[if exp="tf.jump_equip_end ==1&&f.equip_change==1"]
[eval exp="tf.jump_equip_end =0"]
[jump storage="scenario_2/equip_change.ks" target=*equip_button_return]
[elsif exp="f.equip_change==1"]
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[endif]


[if exp="tf.jump_equip_end ==1"]
[eval exp="tf.jump_equip_end =0"]
[jump storage="scenario_2/equip_change.ks" target=*equip_button_return]
[else]
[jump storage="scenario_2/status_macro.ks" target=*item_shokika]
[endif]
[endmacro]


[macro name="hair_array_confirm"]
[iscript]
//ヘアアイテムだけの配列//////////////
var equip_array = f.equip_item_list.length;
tf.hair_array =[];
for(i=1;i<equip_array;i++){
	if(f.equip_item_list[i].type==='hair'){
  tf.hair_array.push(f.equip_item_list[i]);
     }
}
tf.hair_len = tf.hair_array.length;
////////////////////////////////////////////////
[endscript]
[endmacro]

[macro name="equip_array_confirm"]
[iscript]
//装備アイテムだけの配列//////////////
var equip_array = f.equip_item_list.length;
tf.equip_array=[];
for(i=1;i<equip_array;i++){
	if(f.equip_item_list[i].type==='equip'){
  tf.equip_array.push(f.equip_item_list[i]);
     }
}

tf.equip_len = tf.equip_array.length;
////////////////////////////////////////////////
[endscript]
[endmacro]

[macro name="len_hantei"]
[hair_array_confirm]
[equip_array_confirm]
[iscript]
if(tf.equip_item_current_1_click>0){
 tf.soubi_len = tf.hair_len;
}else if(tf.equip_item_current_2_click>0){
 tf.soubi_len = tf.equip_len;
}
[endscript]
[endmacro]




[return]
