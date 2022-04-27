*start

[refresh_hanyou]
[button_clear]
[message_settei_ad]

#お店のおじさん
「やあ、いらっしゃい[name]ちゃん！」[p]
#


#お店のおじさん
「ここは箱の中にいるモンスターを当てるゲームだよ。説明はいるかい？」[p]
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
「さあ、頑張って見つけよう！」[p]
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
「たくさんの箱の中にモンスターが紛れ込んでるのがある。それを時間内に探してほしいんだ」[p]
#

#お店のおじさん
「もちろんみためじゃわからないからね、左上に笛があるだろ？それを鳴らせばモンスターがびっくりして跳ね上がる。はねた箱を見つけてモンスターを追い出してくれ！」[p]
#

#&f.name
「わ、わかりました！」[p]
#
[message_kakusu_ad]



*game_start
;まずはボタン表示

[cm]
[clearstack]
[playbgm storage="asanositaku_ontama.ogg"]
[bg storage="sibahu_ac.jpg"]
;ゲーム点数
[eval exp="tf.game=0"]
;モンスターのランダム処理
[eval exp="tf.hako_random=0"]
[iscript]
tf.hako_random = Math.floor( Math.random() * 2) + 1
[endscript]

;出てくるモンスタのランダム処理
[eval exp="tf.monster_random=0"]
[iscript]
tf.monster_random = Math.floor( Math.random() * 5) + 1
[endscript]

;モンスターランダムマクロ
[macro name="monster_random"]


[iscript]
		var x = Number(TYRANO.kag.stat.mp.x);
		var y = Number(TYRANO.kag.stat.mp.y);
		var a = TYRANO.kag.stat.mp.a;

	

		// モンスターの位置
		tf.monster_x = x - 7
		tf.monster_y = y
		//ボタンの数値
		tf.button_a = a
	

	[endscript]
	


[if exp="tf.monster_random==1"]
[button graphic="mini_game/pipo_monster1.gif" name="&tf.button_a" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=&tf.monster_x y=&tf.monster_y]
[elsif exp="tf.monster_random==2"]
[eval exp="tf.monster_x=tf.monster_x-2"]
[button graphic="mini_game/pipo_monster2.gif" name="&tf.button_a" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=&tf.monster_x y=&tf.monster_y]
[elsif exp="tf.monster_random==3"]
[eval exp="tf.monster_x=tf.monster_x-2"]
[button graphic="mini_game/pipo_monster4.gif" name="&tf.button_a" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=&tf.monster_x y=&tf.monster_y]
[elsif exp="tf.monster_random==4"]
[button graphic="mini_game/pipo_monster5.gif" name="&tf.button_a" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=&tf.monster_x y=&tf.monster_y]
[else]
[button graphic="mini_game/pipo_monster6.gif" name="&tf.button_a" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=&tf.monster_x y=&tf.monster_y]

[endif]

[endmacro]


*time
[plugin name=timer]
[timer_set minuts=0 seconds=20 x=250 y=10 timeupstorage=scenario_2/mini_game/finish_hako.ks]
[timer_start]
[cm]





[button graphic="mini_game/hako_pipoya.gif" name="a1" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka1 x=30 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a2" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka2 x=65 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a3" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka3 x=100 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a4" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka4 x=135 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a5" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka5 x=170 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a6" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka6 x=205 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a7" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka7 x=240 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a8" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka8 x=275 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a9" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka9 x=310 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a10" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka10 x=345 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a11" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka11 x=380 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a12" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka12 x=415 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a13" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka13 x=450 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a14" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka14 x=485 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a15" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka15 x=520 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a16" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka16 x=555 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a17" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka17 x=590 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a18" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka18 x=625 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a19" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka19 x=660 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a20" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka20 x=695 y=100]
[button graphic="mini_game/hako_pipoya.gif" name="a21" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka21 x=730 y=100]





[button graphic="mini_game/hako_pipoya.gif" name="b1" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b1 x=30 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b2" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b2 x=65 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b3" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b3 x=100 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b4" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b4 x=135 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b5" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b5 x=170 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b6" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b6 x=205 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b7" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b7 x=240 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b8" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b8 x=275 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b9" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b9 x=310 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b10" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b10 x=345 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b11" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b11 x=380 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b12" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b12 x=415 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b13" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b13 x=450 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b14" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b14 x=485 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b15" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b15 x=520 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b16" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b16 x=555 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b17" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b17 x=590 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b18" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b18 x=625 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b19" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b19 x=660 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b20" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b20 x=695 y=200]
[button graphic="mini_game/hako_pipoya.gif" name="b21" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_b21 x=730 y=200]





[button graphic="mini_game/hako_pipoya.gif" name="c1" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c1 x=30 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c2" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c2 x=65 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c3" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c3 x=100 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c4" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c4 x=135 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c5" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c5 x=170 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c6" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c6 x=205 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c7" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c7 x=240 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c8" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c8 x=275 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c9" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c9 x=310 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c10" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c10 x=345 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c11" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c11 x=380 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c12" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c12 x=415 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c13" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c13 x=450 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c14" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c14 x=485 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c15" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c15 x=520 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c16" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c16 x=555 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c17" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c17 x=590 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c18" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c18 x=625 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c19" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c19 x=660 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c20" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c20 x=695 y=300]
[button graphic="mini_game/hako_pipoya.gif" name="c21" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c21 x=730 y=300]


[button graphic="mini_game/hue_ac.gif" name="hako_button" fix=true storage="scenario_2/mini_game/button_kekka_hako.ks" target=*button x=50 y=30]










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
