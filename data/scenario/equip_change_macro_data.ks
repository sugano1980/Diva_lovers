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
[jump storage="equip_change.ks" target=*equip_button_return]
[elsif exp="f.equip_change==1"]
[jump storage="equip_change.ks" target=*item_shokika]
[endif]


[if exp="tf.jump_equip_end ==1"]
[eval exp="tf.jump_equip_end =0"]
[jump storage="status_macro.ks" target=*equip_button_return]
[else]
[jump storage="status_macro.ks" target=*item_shokika]
[endif]
[endmacro]



[return]
