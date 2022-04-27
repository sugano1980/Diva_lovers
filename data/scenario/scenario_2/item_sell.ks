*sell



*equip_item_1_sell
[cm]
[item_1_sell]
[if exp="tf.no_sell==1"]

[no_sell_message]
[else]
[eval exp="f.money=f.money+tf.equip_item_value_half"]
[endif]

[jump target=*sell_end]



*cook_item_1_sell
[cm]
[item_1_sell]
[eval exp="f.money=f.money+tf.cook_item_value_half"]

[jump target=*sell_end]


*battle_item_1_sell
[cm]
[item_1_sell]
[eval exp="f.money=f.money+tf.battle_item_value_half"]

[jump target=*sell_end]

;------

*other_item_1_sell
[cm]
[item_1_sell]
[eval exp="f.money=f.money+tf.other_item_value_half"]
[jump target=*sell_end]


*sell_end

[if exp="tf.no_sell!=1"]
[playse storage="store_money_koukaonlabo.ogg"]
[endif]
[eval exp="tf.no_sell=0"]
[free name="key" layer=2][item_suuti_delete]
[free name="money" layer=2]

;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=&tf.money_x y=&tf.money_y_g]


[if exp="tf.item_battle_hyouji==1"]
[clearfix name="battle"]
[jump storage="scenario_2/battle_item_hyouji_sell.ks" target=*item_hyouji_trush]
[elsif exp="tf.item_equip_hyouji==1"]
[clearfix name="equip"]
[free name="equip_moji" layer=2]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji2_trush]
[elsif exp="tf.item_cook_hyouji==1"]
[clearfix name="cook"]
[free name="cook_moji" layer=2]
[jump storage="scenario_2/cook_item_hyouji_sell.ks" target=*item_hyouji2_trush]
[elsif exp="tf.item_other_hyouji==1"]
[clearfix name="other"]
[free name="other_moji" layer=2]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji2_trush]
[endif]



[return]



