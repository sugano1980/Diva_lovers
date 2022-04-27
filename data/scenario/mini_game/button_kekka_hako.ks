
;音ボタン表示
*button
[playse storage="hue_koukaonlabo.ogg"]

*call



[if exp="tf.hako_random==1"]
[anim name="a1" top="-=35" time=200]
[anim name="a1" top="+=35" time=50]

[anim name="a3" top="-=35" time=200]
[anim name="a3" top="+=35" time=50]

[anim name="a5" top="-=35" time=200]
[anim name="a5" top="+=35" time=50]

[anim name="a7" top="-=35" time=200]
[anim name="a7" top="+=35" time=50]

[anim name="a9" top="-=35" time=200]
[anim name="a9" top="+=35" time=50]

[anim name="a11" top="-=35" time=200]
[anim name="a11" top="+=35" time=50]

[anim name="a17" top="-=35" time=200]
[anim name="a17" top="+=35" time=50]

[anim name="a19" top="-=35" time=200]
[anim name="a19" top="+=35" time=50]

[anim name="a21" top="-=35" time=200]
[anim name="a21" top="+=35" time=50]

[anim name="b2" top="-=35" time=200]
[anim name="b2" top="+=35" time=50]

[anim name="b4" top="-=35" time=200]
[anim name="b4" top="+=35" time=50]

[anim name="b6" top="-=35" time=200]
[anim name="b6" top="+=35" time=50]

[anim name="b8" top="-=35" time=200]
[anim name="b8" top="+=35" time=50]

[anim name="b12" top="-=35" time=200]
[anim name="b12" top="+=35" time=50]

[anim name="b17" top="-=35" time=200]
[anim name="b17" top="+=35" time=50]

[anim name="c1" top="-=35" time=200]
[anim name="c1" top="+=35" time=50]

[anim name="c8" top="-=35" time=200]
[anim name="c8" top="+=35" time=50]

[anim name="c12" top="-=35" time=200]
[anim name="c12" top="+=35" time=50]


[else]


[anim name="a3" top="-=35" time=200]
[anim name="a3" top="+=35" time=50]

[anim name="a5" top="-=35" time=200]
[anim name="a5" top="+=35" time=50]

[anim name="a7" top="-=35" time=200]
[anim name="a7" top="+=35" time=50]

[anim name="a10" top="-=35" time=200]
[anim name="a10" top="+=35" time=50]

[anim name="a12" top="-=35" time=200]
[anim name="a12" top="+=35" time=50]

[anim name="a16" top="-=35" time=200]
[anim name="a16" top="+=35" time=50]

[anim name="a19" top="-=35" time=200]
[anim name="a19" top="+=35" time=50]

[anim name="a21" top="-=35" time=200]
[anim name="a21" top="+=35" time=50]

[anim name="b4" top="-=35" time=200]
[anim name="b4" top="+=35" time=50]

[anim name="b7" top="-=35" time=200]
[anim name="b7" top="+=35" time=50]

[anim name="b10" top="-=35" time=200]
[anim name="b10" top="+=35" time=50]

[anim name="b15" top="-=35" time=200]
[anim name="b15" top="+=35" time=50]

[anim name="c6" top="-=35" time=200]
[anim name="c6" top="+=35" time=50]

[anim name="c11" top="-=35" time=200]
[anim name="c11" top="+=35" time=50]

[anim name="c13" top="-=35" time=200]
[anim name="c13" top="+=35" time=50]

[anim name="c16" top="-=35" time=200]
[anim name="c16" top="+=35" time=50]

[anim name="c19" top="-=35" time=200]
[anim name="c19" top="+=35" time=50]

[anim name="c21" top="-=35" time=200]
[anim name="c21" top="+=35" time=50]




[endif]

[clearstack][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]




*kekka1
[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]

[clearstack]
[clearfix name="a1"]

[monster_random x=30 y=100 a=1]

;[button graphic="mini_game/pipo_monster1.gif" name="a1" fix=true storage="mini_game/button_kekka_hako.ks" target=*kekka1 x=30 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="1" top="-=35" time=200]
[anim name="1" top="+=20" time=50]
[wa]
[clearfix name="1"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[endif]



*kekka2
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka3

[if exp="tf.hako_random==1||tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a3"]


[monster_random x=100 y=100 a=3]
;[button graphic="mini_game/pipo_monster.gif" name="a3" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka3 x=100 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="3" top="-=35" time=200]
[anim name="3" top="+=20" time=50]
[wa]
[clearfix name="3"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[endif]

*kekka4
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka5

[if exp="tf.hako_random==1"||tf.hako_random==2]
[eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a5"]
[monster_random x=170 y=100 a=5]
;[button graphic="mini_game/pipo_monster2.gif" name="5" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka5 x=170 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="5" top="-=35" time=200]
[anim name="5" top="+=20" time=50]
[wa]
[clearfix name="5"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[endif]

*kekka6
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka7

[if exp="tf.hako_random==1||tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a7"]
[button graphic="mini_game/pipo_monster3.gif" name="a7" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka7 x=230 y=85]
[playse storage="hyoko_onjin.ogg"]
[anim name="a7" top="-=35" time=200]
[anim name="a7" top="+=20" time=50]
[wa]
[clearfix name="a7"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]


*kekka8
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka9

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a9"]

[monster_random x=310 y=100 a="9"]

;[button graphic="mini_game/pipo_monster.gif" name="a9" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka9 x=310 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="9" top="-=35" time=200]
[anim name="9" top="+=20" time=50]
[wa]
[clearfix name="9"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka10

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a10"]

[monster_random x=345 y=100 a="10"]

;[button graphic="mini_game/pipo_monster4.gif" name="a10" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka10 x=345 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="10" top="-=35" time=200]
[anim name="10" top="+=20" time=50]
[wa]
[clearfix name="10"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]


*kekka11

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a11"]

[monster_random x=380 y=100 a=11]

;[button graphic="mini_game/pipo_monster.gif" name="a11" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka11 x=380 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="11" top="-=35" time=200]
[anim name="11" top="+=20" time=50]
[wa]
[clearfix name="11"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka12
[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a12"]

[monster_random x=415 y=100 a="12"]

;[button graphic="mini_game/pipo_monster5.gif" name="a12" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka12 x=415 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="12" top="-=35" time=200]
[anim name="12" top="+=20" time=50]
[wa]
[clearfix name="12"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka13

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka14

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka15

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka16

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a16"]
[monster_random x=555 y=100 a="16"]

;[button graphic="mini_game/pipo_monster.gif" name="16" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka16 x=555 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="16" top="-=35" time=200]
[anim name="16" top="+=20" time=50]
[wa]
[clearfix name="16"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka17
[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[playse storage="hyoko_onjin.ogg"]
[clearstack]
[clearfix name="a17"]

[monster_random x=590 y=100 a="17"]
;[button graphic="mini_game/pipo_monster6.gif" name="a17" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka17 x=590 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="17" top="-=35" time=200]
[anim name="17" top="+=20" time=50]
[wa]
[clearfix name="17"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka18
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka19

[if exp="tf.hako_random==1||tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a19"]

[monster_random x=660 y=100 a="19"]
;[button graphic="mini_game/pipo_monster.gif" name="19" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekk19 x=660 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="19" top="-=35" time=200]
[anim name="19" top="+=20" time=50]
[wa]
[clearfix name="19"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka20
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka21
[if exp="tf.hako_random==1||tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="a21"]
[monster_random x=730 y=100 a="21"]
;[button graphic="mini_game/pipo_monster1.gif" name="21" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekk21 x=730 y=100]
[playse storage="hyoko_onjin.ogg"]
[anim name="21" top="-=35" time=200]
[anim name="21" top="+=20" time=50]
[wa]
[clearfix name="21"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]





*kekka_b1
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b2

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b2"]

[monster_random x=65 y=200 a="2"]
;[button graphic="mini_game/pipo_monster2.gif" name="2" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_2 x=65 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="2" top="-=35" time=200]
[anim name="2" top="+=20" time=50]
[wa]
[clearfix name="2"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b3
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b4

[if exp="tf.hako_random==1||tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b4"]

[monster_random x=135 y=200 a="4"]
;[button graphic="mini_game/pipo_monster5.gif" name="4" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_4 x=135 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="4" top="-=35" time=200]
[anim name="4" top="+=20" time=50]
[wa]
[clearfix name="4"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b5
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b6

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b6"]

[monster_random x=205 y=200 a="6"]
;[button graphic="mini_game/pipo_monster4.gif" name="6" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_6 x=205 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="6" top="-=35" time=200]
[anim name="6" top="+=20" time=50]
[wa]
[clearfix name="6"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b7

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b7"]
[button graphic="mini_game/pipo_monster3.gif" name="b7" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_b7 x=230 y=185]
[playse storage="hyoko_onjin.ogg"]
[anim name="b7" top="-=35" time=200]
[anim name="b7" top="+=20" time=50]
[wa]
[clearfix name="b7"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b8

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b8"]

[monster_random x=275 y=200 a="8"]
;[button graphic="mini_game/pipo_monster2.gif" name="8" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_8 x=275 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="8" top="-=35" time=200]
[anim name="8" top="+=20" time=50]
[wa]
[clearfix name="8"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b9

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b10

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b10"]

[monster_random x=345 y=200 a="10"]
;[button graphic="mini_game/pipo_monster.gif" name="10" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_10 x=345 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="10" top="-=35" time=200]
[anim name="10" top="+=20" time=50]
[wa]
[clearfix name="10"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]



*kekka_b11

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b12

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b12"]

[monster_random x=415 y=200 a="12"]
;[button graphic="mini_game/pipo_monster1.gif" name="12" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_12 x=415 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="12" top="-=35" time=200]
[anim name="12" top="+=20" time=50]
[wa]
[clearfix name="12"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b13
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b14
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b15
[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b15"]

[monster_random x=520 y=200 a="15"]
;[button graphic="mini_game/pipo_monster.gif" name="15" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_15 x=520 y=200]
[playse storage="hyoko_onjin.ogg"]
[anim name="15" top="-=35" time=200]
[anim name="15" top="+=20" time=50]
[wa]
[clearfix name="15"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b16
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b17

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="b17"]
[button graphic="mini_game/pipo_monster3.gif" name="b17" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_b17 x=580 y=185]
[playse storage="hyoko_onjin.ogg"]
[anim name="b17" top="-=35" time=200]
[anim name="b17" top="+=20" time=50]
[wa]
[clearfix name="b17"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_b18
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b19
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b20

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_b21

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]





*kekka_c1

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c1"]

[monster_random x=30 y=300 a="1"]
;[button graphic="mini_game/pipo_monster2.gif" name="1" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_1 x=30 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="1" top="-=35" time=200]
[anim name="1" top="+=20" time=50]
[wa]
[clearfix name="1"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c2
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c3
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c4
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c5
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c6

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c6"]

[monster_random x=205 y=300 a="6"]
;[button graphic="mini_game/pipo_monster.gif" name="6" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_6 x=205 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="6" top="-=35" time=200]
[anim name="6" top="+=20" time=50]
[wa]
[clearfix name="6"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c7
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c8

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c8"]

[monster_random x=275 y=300 a="8"]
;[button graphic="mini_game/pipo_monster1.gif" name="8" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_8 x=275 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="8" top="-=35" time=200]
[anim name="8" top="+=20" time=50]
[wa]
[clearfix name="8"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c9

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c10
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c11

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c11"]

[monster_random x=380 y=300 a="11"]
;[button graphic="mini_game/pipo_monster.gif" name="11" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_11 x=380 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="11" top="-=35" time=200]
[anim name="11" top="+=20" time=50]
[wa]
[clearfix name="11"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c12

[if exp="tf.hako_random==1"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c12"]

[monster_random x=415 y=300 a="12"]
;[button graphic="mini_game/pipo_monster2.gif" name="12" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_12 x=415 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="12" top="-=35" time=200]
[anim name="12" top="+=20" time=50]
[wa]
[clearfix name="12"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c13

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c13"]

[monster_random x=450 y=300 a="13"]
;[button graphic="mini_game/pipo_monster.gif" name="13" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_13 x=450 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="13" top="-=35" time=200]
[anim name="13" top="+=20" time=50]
[wa]
[clearfix name="13"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c14
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c15
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c16

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c16"]
[button graphic="mini_game/pipo_monster3.gif" name="c16" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c16 x=545 y=285]
[playse storage="hyoko_onjin.ogg"]
[anim name="c16" top="-=35" time=200]
[anim name="c16" top="+=20" time=50]
[wa]
[clearfix name="c16"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c17
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c18
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c19

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c19"]

[monster_random x=660 y=300 a="19"]
;[button graphic="mini_game/pipo_monster2.gif" name="19" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_19 x=660 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="19" top="-=35" time=200]
[anim name="19" top="+=20" time=50]
[wa]
[clearfix name="19"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]

*kekka_c20
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]

*kekka_c21

[if exp="tf.hako_random==2"][eval exp="tf.game=tf.game+1"]
[clearstack]
[clearfix name="c21"]

[monster_random x=730 y=300 a="21"]
;[button graphic="mini_game/pipo_monster6.gif" name="21" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_21 x=730 y=300]
[playse storage="hyoko_onjin.ogg"]
[anim name="21" top="-=35" time=200]
[anim name="21" top="+=20" time=50]
[wa]
[clearfix name="21"]
[cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[else][clearstack]
[playse storage="hazure_koukaonlabo.ogg"][cm]
[jump storage=mini_game/hako_game.ks target=*nono1]
[endif]



















































