


[message_settei_ad]

#お店のおじさん
「やあ、いらっしゃい[name]ちゃん！」[p]
#


#お店のおじさん
「金魚を捕まえるゲームだよ。説明はいるかい？」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【説明はいるかい？】

[glink target=*setumei_1 text="（いらない）" size=17 width=600 x=65 y=200]
[glink target=*setumei_2 text="（説明お願い）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*setumei_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#&f.name
「さあ、たくさん捕まえるよ！」[p]
#
[message_kakusu_ad]
[jump target=*game_start]



*setumei_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#お店のおじさん
「金魚がたくさん泳いでるからね、これを網ですくって捕まえるんだよ」[p]
#

#お店のおじさん
「時間内に何匹捕まえられるかな？捕まえた数によっては景品が貰えるよ！」[p]
#

#&f.name
「よーし、それじゃやってみようかな！」[p]
#
[message_kakusu_ad]


*game_start
;まずはボタン表示

[cm]
[playbgm storage="asanositaku_ontama.ogg"]
[bg storage="suimen.jpg"]
[eval exp="tf.game=0"]

[plugin name=timer]
[timer_set minuts=0 seconds=20 x=250 y=10 timeupstorage=scenario_2/mini_game/finish.ks]
[timer_start]
[cm]

[eval exp="tf.sakana1='mini_game/image4291.gif'"]
[eval exp="tf.sakana2='mini_game/image4292.gif'"]
[eval exp="tf.sakana3='mini_game/image4294.gif'"]
[eval exp="tf.sakana4='mini_game/image4295.gif'"]

[eval exp="tf.sakana1_catch='mini_game/image4291_catch.gif'"]
[eval exp="tf.sakana2_catch='mini_game/image4292_catch.gif'"]
[eval exp="tf.sakana3_catch='mini_game/image4294_catch.gif'"]
[eval exp="tf.sakana4_catch='mini_game/image4295_catch.gif'"]

[clearstack]
[button graphic=&tf.sakana1 name="a1" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka1 x=187 y=245]
[button graphic=&tf.sakana2 name="a2" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka2 x=37 y=345]
[button graphic=&tf.sakana3 name="a3" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka3 x=87 y=90]
[button graphic=&tf.sakana4 name="a4" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka4 x=587 y=303]
[button graphic=&tf.sakana1 name="a5" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka5 x=287 y=190]
[button graphic=&tf.sakana2 name="a6" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka6 x=387 y=224]
[button graphic=&tf.sakana3 name="a7" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka7 x=50 y=145]
[button graphic=&tf.sakana4 name="a8" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka8 x=150 y=300]
[button graphic=&tf.sakana1 name="a9" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka9 x=80 y=405]
[button graphic=&tf.sakana2 name="a10" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka10 x=290 y=302]
[button graphic=&tf.sakana3 name="a11" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka11 x=30 y=240]
[button graphic=&tf.sakana4 name="a12" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka12 x=75 y=345]
[button graphic=&tf.sakana1 name="a13" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka13 x=15 y=379]
[button graphic=&tf.sakana2 name="a14" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka14 x=235 y=142]
[button graphic=&tf.sakana3 name="a15" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka15 x=40 y=176]
[button graphic=&tf.sakana4 name="a16" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka16 x=138 y=469]
[button graphic=&tf.sakana1 name="a17" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka17 x=170 y=189]
[button graphic=&tf.sakana2 name="a18" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka18 x=59 y=230]
[button graphic=&tf.sakana3 name="a19" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka19 x=48 y=225]
[button graphic=&tf.sakana4 name="a20" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka20 x=68 y=365]
;[button graphic=&tf.sakana1 name="a21" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka21 x=40 y=154]
;[button graphic=&tf.sakana2 name="a22" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka22 x=327 y=370]
;[button graphic=&tf.sakana3 name="a23" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka23 x=50 y=147]
;[button graphic=&tf.sakana4 name="a24" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka24 x=89 y=380]
;[button graphic=&tf.sakana1 name="a25" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka25 x=160 y=256]
;[button graphic=&tf.sakana2 name="a26" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka26 x=390 y=379]
;[button graphic=&tf.sakana3 name="a27" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka27 x=490 y=360]
;[button graphic=&tf.sakana4 name="a28" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka28 x=600 y=270]
;[button graphic=&tf.sakana1 name="a29" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka29 x=580 y=390]
;[button graphic=&tf.sakana2 name="a30" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka30 x=722 y=360]




[button graphic=&tf.sakana1 name="b1" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b1 x=687 y=545]
[button graphic=&tf.sakana2 name="b2" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b2 x=637 y=345]
[button graphic=&tf.sakana3 name="b3" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b3 x=787 y=90]
[button graphic=&tf.sakana4 name="b4" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b4 x=587 y=303]
[button graphic=&tf.sakana1 name="b5" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b5 x=487 y=190]
[button graphic=&tf.sakana2 name="b6" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b6 x=287 y=224]
[button graphic=&tf.sakana3 name="b7" fix=true enterimg=&tf.sakana3_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b7 x=350 y=145]
[button graphic=&tf.sakana4 name="b8" fix=true enterimg=&tf.sakana4_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b8 x=650 y=300]
[button graphic=&tf.sakana1 name="b9" fix=true enterimg=&tf.sakana1_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b9 x=380 y=405]
[button graphic=&tf.sakana2 name="b10" fix=true enterimg=&tf.sakana2_catch storage="scenario_2/mini_game/button_kekka.ks" width="62" height="62" exp="tf.game=tf.game+1" target=*kekka_b10 x=590 y=302]


*nono1

[call storage="scenario_2/mini_game/anime.ks"]

*nono2
[l]
[clearstack]
[cm]

[jump target="*nono1"]



