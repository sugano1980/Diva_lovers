*timeup



[clearfix]
[fadeoutbgm time=3000]



[timer_delete]

[if exp="tf.game>=17"]

[ptext layer=2 page=fore visible=true text="Congraturation!!" name="con" size=50 x=50 y=300]
[message_settei_ad]
#店のおじさん
「おめでとう！！これ景品だよ！」[p]
#
[playse storage="item_status_up_onjin.ogg"]
キャラメル３個、キラキラエクステを手に入れた！[p]
[eval exp="f.battle_item_stock[1] =f.battle_item_stock[1]+3 "]
[eval exp="f.other_item_stock[16] =f.other_item_stock[16]+1 "]
[jump target=*keihin]

[elsif exp="tf.game>=10"]

[ptext layer=2 page=fore visible=true text="Congraturation!!" name="con" size=50 x=50 y=300]
[message_settei_ad]
#店のおじさん
「おめでとう！！これ景品だよ！」[p]
#
[playse storage="item_status_up_onjin.ogg"]
キャラメル３個、正しいモテ仕草の本を手に入れた！[p]
[eval exp="f.battle_item_stock[1] =f.battle_item_stock[1]+3 "]
[eval exp="f.other_item_stock[4] =f.other_item_stock[4]+1 "]
*keihin
[free name="con" layer=2]
[if exp="f.friend==1"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_normal_warai]
#ランスロット
「頑張ったな。私としても鼻が高い」[p]
#
[rans]
[koukando_up]
[chara_kakusu]
[elsif exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス 
「お前、結構やるじゃねーか」[p]
#
[lion]
[koukando_up]
[chara_kakusu]
[elsif exp="f.friend==3"]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_bisyou_youen]
#クライスト
「やるなあ。君ならできると思ってたよ」[p]
#
[kra]
[koukando_up]
[chara_kakusu]
[endif]

[else]

[ptext layer=2 page=fore visible=true text="残念!!" size=50 x=50 y=300]
[message_settei_ad]
#店のおじさん
「おしかったね、また遊びにおいで！！」[p]
#

[endif]

[eval exp="tf.game=0"]
[message_kakusu_ad]
[freeimage layer=2]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]


[l]



