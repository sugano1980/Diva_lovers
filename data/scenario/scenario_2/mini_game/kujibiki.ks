




*start


;[call storage="scenario_2/macro.ks"]

[message_settei_ad]


#くじ引きのおばさん
「いらっしゃい！くじ引きやってみる？１回30Gだよ！」[p]
#

*kujibiki_saisho
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【くじ引きをする？】

[glink target=*kuji_1 text="（くじ引き）" size=17 width=600 x=65 y=200]
[glink target=*kuji_2 text="（しない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*kuji_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[eval exp="tf.money_window_x=600"]
[eval exp="tf.money_window_y=175"]
[eval exp="tf.money_x_g=620"]
[eval exp="tf.money_y_g=185"]
[eval exp="tf.money_x=650"]
;お金
[image layer=1 page=fore visible=true  storage="okane.png" name="money" x=&tf.money_window_x y=&tf.money_window_y]
;お金数値
[ptext layer=2 page=fore visible=true  text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]
[ptext layer=2 page=fore visible=true  text="&f.money" face=antique name="money_kingaku" size=20 x=&tf.money_x y=&tf.money_y_g]


[if exp="f.other_item_stock[15]>0"]
#くじ引きのおばさん
「おや、くじ引き券があるのかい？それなら１枚につき一回無料だよ！」[p]
#
[if exp="f.money<30"]
[jump target=*game_hajimari]
[endif]

[elsif exp="f.money<30"]
#くじ引きのおばさん
「お金が足りないみたいだね」[p]
#
[jump target=*game_end]
[endif]


[image layer=1 page=fore visible=true storage="mokuhyou_suuji_big.png" name="ken_base" x=315 y=172]
[ptext layer=2 visible=true page=fore visible="true" text="枚" color=black face="antique" name="ken_base" size=30 x=380 y=180]
[message_settei_ad]
[if exp="f.other_item_stock[15]>0"]
「くじ引き券を追加で買う？」[p]
[else]
「くじ引き券を何枚買う？」[p]
[endif]
[eval exp="tf.ken=0"]
*ken
[free name="ken" layer=2]
[eval exp="tf.now_money=tf.ken*30"]

[if exp="f.money<tf.now_money"]
[eval exp="tf.ken=tf.ken-1"]
[endif]

[if exp="tf.ken>99"]
[eval exp="tf.ken=99"]
[endif]

[clearstack]

[ptext layer=2 visible=true page=fore visible="true" text="×30G" face="antique" color="black" name="ken" size=13 x=366 y=150]

[if exp="tf.ken==0"]
[ptext layer=2 visible=true page=fore visible="true" text="0" face="antique" name="ken" size=30 x=336 y=180]
[elsif exp="tf.ken<10]
[ptext layer=2 visible=true page=fore visible="true" text=&tf.ken face="antique" name="ken" size=30 x=336 y=180]
[else]
[ptext layer=2 visible=true page=fore visible="true" text=&tf.ken face="antique" name="ken" size=30 x=329 y=180]
[endif]

[eval exp="tf.now_money=tf.ken*30"]

[if exp="f.money>=tf.now_money"]
[button graphic="cursor_down.png" fix=true exp="tf.ken=tf.ken+1" clickse="tm2_switch001_macchi.ogg" name="cursor_up" target=*ken x=330 y=145]
[else]
[clearfix name="cursor_up"]
[endif]



[if exp="tf.ken>0"]
[button graphic="cursor.png" fix=true exp="tf.ken=tf.ken-1" clickse="tm2_switch001_macchi.ogg" name="cursor_down" target=*ken x=330 y=219]
[else]
[clearfix name="cursor_down"]
[endif]

[if exp="tf.ken>0"]
[glink target=*kuji_ok_1 text="OK" size=17 width=100 x=565 y=80]
[else]
[cm]
[endif]
[glink target=*kuji_ok_2 text="戻る" size=17 width=100 x=565 y=130]

[s]

*kuji_ok_2
[if exp="f.other_item_stock[15]>0"]
[jump target=*game_hajimari]
[endif]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[jump target=*kujibiki_saisho]

*kuji_ok_1




[if exp="f.money<tf.ken*30"]
#くじ引きのおばさん
「お金が足りないみたいだね」[p]
#
[jump target=*game_end]
[endif]

[eval exp="tf.money_minus=tf.ken*30"]
[eval exp="f.money=f.money-tf.money_minus"]
[eval exp="f.other_item_stock[15]=f.other_item_stock[15]+tf.ken"]
[free name="money_kingaku" layer=2]
[if exp="f.money==0"]
[ptext layer=2 page=fore visible=true  text="0" face=antique name="money_kingaku" size=20 x=&tf.money_x y=&tf.money_y_g]
[else]
[ptext layer=2 page=fore visible=true  text=&f.money face=antique name="money_kingaku" size=20 x=&tf.money_x y=&tf.money_y_g]
[endif]
[playse storage="okane_onjin.ogg"]
*game_hajimari
#くじ引きのおばさん
「さあ、運試しだ」[p]
#

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]



[jump target=*game_start]

*kuji_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]




*game_start
;まずはボタン表示
;くじ回数を入力
[cm]
[playbgm storage="asanositaku_ontama.ogg"]
[bg storage="sibahu_ac.jpg"]


*start1
;くじ引き券の枚数をくじ回数に
[eval exp="f.item_15=f.other_item_stock[15]"]
[eval exp="tf.kuji_kaisu=f.item_15"]




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

[eval exp="tf.y_3=tf.y_3-50"]





[live2d_new name="garapon" model_id="garapon"]
[live2d_show name="garapon" y=-0.01 x=0.03 scale=1.0]


[image layer=2 page=fore name="under" storage="garapon_under.png" x=0 y=190]


[clearstack]
[button graphic="button/toumei.png" name="kuji" fix=true storage="scenario_2/mini_game/kujibiki_kekka.ks" target=*kekka x=490 y=270]

[layopt layer=3 visible=true]
[eval exp="tf.y_4=tf.y_4-50"]
[if exp="tf.kuji_kaisu>9"]
[eval exp="tf.x_4=tf.x_4-110"]
[eval exp="tf.moji_x =tf.x_4-30"]
[else]
[eval exp="tf.x_4=tf.x_4-100"]
[eval exp="tf.moji_x =tf.x_4-40"]
[endif]
[eval exp="tf.moji_x_2=tf.x_4+30"]


[ptext layer=3 visible=true page=fore visible="true" text="後" face=antique name="kaisu" size=30 x=&tf.moji_x y=&tf.y_4]
[ptext layer=3 visible=true page=fore visible="true" text="&tf.kuji_kaisu" face=antique name="kaisu" size=30 x=&tf.x_4 y=&tf.y_4]
[ptext layer=3 visible=true page=fore visible="true" text="回" face=antique name="kaisu" size=30 x=&tf.moji_x_2 y=&tf.y_4]










;ゲーム点数
[eval exp="tf.game=0"]
;くじびきアイテムのランダム処理
[eval exp="tf.kuji_random=5"]
[iscript]
tf.kuji_random = Math.floor( Math.random() * 10) + 1
[endscript]


[glink target=*kuji_end text="やめる" size=17 width=100 x=565 y=130]

[s]




*kuji_end
[cm]
[jump target=*game_end]

*game_end
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[message_settei_ad]
[eval exp="f.other_item_stock[15]=tf.kuji_kaisu"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]







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
[button graphic="mini_game/hako_pipoya.gif" name="c15" fix=true  storage="scenario_2/mini_game/button_kekka_hako.ks" target=*kekka_c15 x=555 y=300]
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

[anim name="a15" top="-=35" time=200]
[anim name="a15" top="+=35" time=50]

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

[anim name="c15" top="-=35" time=200]
[anim name="c15" top="+=35" time=50]

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
