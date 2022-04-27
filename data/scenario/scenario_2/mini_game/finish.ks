*timeup



[clearfix]
[fadeoutbgm time=3000]



[timer_delete]
[message_settei_ad]
[if exp="tf.game>=20"]
[ptext layer=2 page=fore visible=true text="Congraturation!!" name="con" size=50 x=50 y=300]


#店のおじさん
「[emb exp="tf.game"]匹だね！！素晴らしい！！これ景品だよ！」[p]
#
[playse storage="item_status_up_onjin.ogg"]
キャラメル３個、サバイバル読本を手に入れた！[p]
[eval exp="f.battle_item_stock[1] =f.battle_item_stock[1]+3 "]
[eval exp="f.other_item_stock[9] =f.other_item_stock[9]+1 "]


[elsif exp="tf.game>=15"]
#店のおじさん
「[emb exp="tf.game"]匹だね！！なかなかやるじゃないか！！」[p]
#
[playse storage="item_status_up_onjin.ogg"]
キャラメル１個を手に入れた！[p]
[eval exp="f.battle_item_stock[1] =f.battle_item_stock[1]+1 "]

[else]
#店のおじさん
「[emb exp="tf.game"]匹かあ・・・。また挑戦しておくれ！」[p]
#
[endif]

[free name="con" layer=2]




[if exp="f.friend==1&&tf.game>=15"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_normal_warai]
#ランスロット
「よくやったな。なかなかの腕前だ」[p]
#
[rans]
[koukando_up]
[chara_kakusu]
[elsif exp="f.friend==2&&tf.game>=15"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス 
「お前こんなちっちゃい魚よく捕まえられんなあ」[p]
#
[lion]
[koukando_up]
[chara_kakusu]

[elsif exp="f.friend==3&&tf.game>=15"]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_bisyou_youen]
#クライスト
「すごいね、捕まえるの大変だと思うのに」[p]
#
[kra]
[koukando_up]
[chara_kakusu]

[else]

[endif]




[message_kakusu_ad]
[eval exp="tf.game=0"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]


[l]







[s]



