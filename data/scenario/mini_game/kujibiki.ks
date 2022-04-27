*start


[call storage="macro.ks"]

[message_settei_ad]



[iscript]
		var x = 800;
		var y = 600;


		// 表示位置
	    tf.x_2 = x/2
	    tf.y_2 = y/2
	    
	    tf.x_3 = x/3
	    tf.y_3 = y/3
	    
	    tf.x_4 = x/4
	    tf.y_4 = y/4
	    
	    	    

	[endscript]

;まずはボタン表示
;くじ回数を入力
[cm]
[playbgm storage="asanositaku_ontama.ogg"]
[bg storage="yam_ac.jpg"]

;くじ引き券の枚数をくじ回数に
[eval exp="f.item_16=10"]
[eval exp="tf.kuji_kaisu=f.item_16"]

[eval exp="tf.y_3=tf.y_3-50"]

[button graphic="mini_game/kuji_yutope.png" name="kuji" fix=true storage=kujibiki_kekka.ks target=*kekka x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.y_4=tf.y_4-50"]
[eval exp="tf.x_4=tf.x_4-100"]
[ptext layer=3 page=fore visible="true" text="&tf.kuji_kaisu" name="kaisu" size=30 x=&tf.x_4 y=&tf.y_4]




*start1






;ゲーム点数
[eval exp="tf.game=0"]
;くじびきアイテムのランダム処理
[eval exp="tf.kuji_random=5"]
[iscript]
tf.kuji_random = Math.floor( Math.random() * 10) + 1
[endscript]

[s]








[button graphic="mini_game/hako_pipoya.gif" name="c4" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c4 x=135 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c5" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c5 x=170 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c6" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c6 x=205 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c7" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c7 x=240 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c8" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c8 x=275 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c9" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c9 x=310 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c10" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c10 x=345 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c11" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c11 x=380 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c12" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c12 x=415 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c13" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c13 x=450 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c14" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c14 x=485 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c15" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c15 x=520 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c16" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c16 x=555 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c17" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c17 x=590 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c18" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c18 x=625 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c19" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c19 x=660 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c20" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c20 x=695 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c21" fix=true  storage="mini_game/button_kekka_hako.ks" target=*kekka_c21 x=730 y=300]


[button graphic="mini_game/hue_ac.gif" name="hako_button" fix=true storage="mini_game/button_kekka_hako.ks" target=*button x=50 y=30]










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



*nono1
;出てくるモンスタのランダム処理
[eval exp="tf.monster_random=0"]
[iscript]
tf.monster_random = Math.floor( Math.random() * 5) + 1
[endscript]

*nono2
[s]
[clearstack]
[cm]

[jump target="*nono1"]
