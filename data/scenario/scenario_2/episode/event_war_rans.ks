;ノーマル・ヴァンディット・ランスロットルート

*rans
[config_false]
[chara_hide_all]

[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]


#団長
「ひるむな！今のうちだ！！弓兵！構えっっ！！！」[p]
#


;SE弓矢の音
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[image layer=2 page=fore storage="siro.jpg" name="siro" time=1000]
[wait time=1000]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]

[free name="monster_1" layer=1]
[free name="siro" layer=2]
[dancho_tatie_show_war]
#団長
「・・・ライオネス！！クライストに同行しろ」[p]
#

[chara_hide_all]
[config_true]
[lioness_tatie_show]
#ライオネス
「了解してます。[lioness_tatie_udekumi]クライスト、変な真似すんじゃねえぞ」[p]
#

[chara_show name="kra" top=20]
#クライスト
「監視役ってこと？[kra_tatie_komari]全く信用されてないなあ」[p]
#

[config_false]
[dancho_tatie_show_war]
#団長
「・・・すまんな。王宮からの命令でもある・・・。ルシアを倒してくれ、頼んだぞ、クライスト」[p]
#

[kra_tatie_yokome]
#クライスト
「・・・団長も、どうぞご武運を」[p]
#

[chara_hide name="kra"][playse storage="kusahasiru_onjin.ogg"]

[lioness_tatie_odoroki]
#ライオネス
「お、おいいくならいくっていえ！！つか、早え！！足速すぎだろあいつ！！」[p]
#
[chara_hide name="lion"][chara_hide name="dancho_war"]
[playse storage="uma_onjin.ogg"]
;SE馬の鳴き声　蹄
[wait time=2000]
[playse storage="umahasiru_onjin.ogg"]
#&f.name
（クライストさん、馬に乗らなくてもあんな速さで走れるの！！？？）[p]
#
[config_true]
[chara_show name="tris" height="603" width="420" top=50 storage="tris_tatie/tris_mayuhisome.png"]
#トリスタン
「・・・ほんとに人間なのかよ・・・あいつ・・・」[p]
#
[chara_hide_all]

[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]





[playse storage="igyou_nakigoe_onjin1.ogg"]
[wait time=2000]
[playse storage="igyou_nakigoe_onjin3.ogg"]
;異形、鳴き声、足音SE
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]


[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]

[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]

[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]

[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[quake count=3 time=300]
[w]





#団長
「くるぞ！！全員戦闘準備！！」[p]
#



[playse storage="igyou_nakigoe_onjin7.ogg"]
[quake count=10 time=300]
[playse storage="igyou_nakigoe_onjin4.ogg"]

#&f.name
（思ったより速い・・・！！）[p]
#
;足音SE 鳴き声
[playse storage="igyou_nakigoe_onjin6.ogg"]
[wait time=2000]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_nakigoe_onjin7.ogg"]


#&f.name
（・・・クライストさんがルシアを倒すまで、ここで持ちこたえないと・・・！！）[p]
#

[playse storage="igyou_nakigoe_onjin6.ogg"]
#&f.name
（負けるわけには・・・いかないっ・・・！！！）[p]
#
[playse storage="igyou_nakigoe_onjin7.ogg"]
[message_kakusu_ad]
@camera zoom=5 x=0 y=-20 time=50
[image layer=3 page=fore storage="black.png" name="kuro" time=5]
[reset_camera]
;異形　鳴き声とともにアップ　すぐに暗転
[free name="monster_1" layer=1]
[anten]
[free name="kuro" layer=3]
[live2d_load][refresh_hanyou]
[live2d_new name="gra" model_id="grafficane-l" lip=true jname="クライスト"]
[live2d_load_off]

[jump storage="scenario_2/episode/epi4.ks" target=*novel]
*rans_main

[bg storage="sougen1_tatakai_tasogare.jpg"]
[message_settei_ad]
#&f.name
（・・・？あれ・・・）[p]
#

#&f.name
（そういえば・・・さっきから王宮騎士の人の姿が見えないけど・・・）[p]
#

#&f.name
（どうして・・・？さっき弓矢を射るときまでは、反対側の陣にいたはずなのに・・・）[p]
#

#&f.name
（どういう・・・こと・・・？みんなやられたの・・・？にしては、倒れている人はいないし・・・）[p]
#
#騎士
	「ちっくしょう・・・王宮のやろうども・・・っ・・・」[p]
#

#&f.name
「えっ・・・」[p]
#
[playse storage="walk-tussock1_koukaonlabo.ogg"][fadeoutse time=900]
#&f.name
「っ・・・だ、大丈夫っ！？[playse storage="kusahasiru_onjin.ogg"][fadeoutse time=800]今手当てを・・・」[p]
#

#&f.name
（・・・致命傷だ・・・こんな大量の出血じゃ・・・手当てしても・・・助からない・・・）[p]
#

#騎士
	「お・・・王宮騎士の奴ら・・・ここを俺らに押し付けて、自分らはさっさと王都に戻りやがったっっ！！！」[p]
#

#&f.name
（ええっ・・・）[p]
#

#騎士
	「あいつら最初から・・・俺らを囮に使うつもりだったんだ・・・貴族連中が・・・きたねえ真似しやが・・って・・」[p]
#
[playse storage="sirimoti_onjin.ogg"]

#&f.name
「！！しっかり・・・ねえっ！！しっかりして！！」[p]
#

#騎士
	「・・・・・・・・」[p]
#

#&f.name
（・・・返事がない・・・もう・・・）[p]
#

#&f.name
（・・・それにしても・・・彼の最後の言葉・・・）[p]
#
[playbgm storage="chinkou_ontama.ogg"]
#騎士
	『あいつら最初から・・・俺らを囮に使うつもりだったんだ！！』[p]
	#
	
#&f.name
（・・・嘘・・・だよね・・・だってあのとき、ランスロットが地方騎士団に被害が少ない作戦を考えるって・・・）[p]
#

#&f.name
（どういうことなの・・・）[p]
#

#&f.name
（まさか・・・ランスロットが・・・ホントに・・・）[p]
#

[stopbgm]
[playse storage="igyou_nakigoe_onjin4.ogg"]

#&f.name
（・・・！！異形たちがまた・・・）[p]
#

	
;異形のグラ、SE,振動、悲鳴、血飛沫

[fadeinbgm storage="erumu_senjou.ogg" time=5000]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[w]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[playse storage="igyou_nakigoe_onjin3.ogg"]
[w]
[playse storage="igyou_nakigoe_onjin5.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[w]
[playse storage="igyou_nakigoe_onjin7.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[w][w]
[playse storage="honeoru_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[w][w]
[playse storage="igyou_nakigoe_onjin7.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[w][w]
[playse storage="himei_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]

#&f.name
（・・・これからどんどん増えるの・・・！？クライストさんたちが戻るまで、これではもたない・・・！）[p]
#

[playse storage="igyou_asioto_onjin.ogg"][wait time=1000]
[playse storage="igyou_nakigoe_onjin4.ogg"]

;『グアォウッッ！！』
#&f.name
「！！！」[p]
#
[live2d_load][refresh_hanyou]
[live2d_new name="gra" model_id="grafficane-l" lip=true jname="クライスト"]
[live2d_load_off]
[free name="monster_1" layer=1 time=1000]
[playse storage="kusahasiru_onjin.ogg"][fadeoutse time=300]
;SE
#&f.name
「くっ・・・」[p]
#
[bg storage="siro.jpg" time=50]
[quake count=5 time=100 hmax=5 wmax=5]
[playse storage="bakuhatu_onjin.ogg"][w][w][w][w]
;[playse storage="kuzureru_onjin.ogg"][w][w][w][w][w][w]
[playse storage="gucha4_onjin.ogg"]
[bg storage="sougen1_tatakai_tasogare.jpg" time=50]

#&f.name
（異形・・・！！！）[p]
#
[live2d_show name="gra" y=-0.1 x=0.0 scale=1.5]
[playse storage="igyou_nakigoe_onjin4.ogg"]

;異形グラ
#&f.name
	（さっき攻撃してきたのは・・・この異形だ・・・）[p]
#

[live2d_motion name="gra" mtn="Shokushu"]
[live2d_mod name="gra" y=-0.8 scale=3.2 time=1500]
[live2d_motion name="gra" mtn="Shokushu_2"]
[playse storage="byun_onjin.ogg"]
[if exp="f.wait!=1"][wait time=120][endif]
[playse storage="byun_onjin.ogg"]
[if exp="f.wait!=1"][wait time=120][endif]
[playse storage="byun_onjin.ogg"]
[image layer=1 page=fore height="800" width="800" name="attack" storage="battle_animation/rusia/rusia_sword.png" x=-20 y=-120]
[quake count=5 time=100 hmax=5 wmax=5]
[free name="attack" layer=1 time=1000]
;SE
[playse storage="humikomi_koukaonlabo.ogg"]
[live2d_mod name="gra" y=-0.1 x=0.0 scale=1.5]
[anim name="gra" top="-=350" time=50]
[anim name="gra" top="+=390" time=200]
[anim name="gra" top="-=40" time=800]
#&f.name
「っ・・・」[p]
#

[live2d_motion name="gra" mtn="Normal"]
;SE,SE
#&f.name
（この攻撃を全部よけたら、反撃に転じられる・・・！！）[p]
#
[live2d_motion name="gra" mtn="Shokushu"]
[playse storage="igyou_nakigoe_onjin4.ogg"]
[live2d_motion name="gra" mtn="Normal"]
[wait time=1000]
[live2d_mod name="gra" y=-0.8 scale=3.2 time=1500]
[live2d_motion name="gra" mtn="Shokushu_2"]
[playse storage="byun_onjin.ogg"]
[if exp="f.wait!=1"][wait time=120][endif]
[playse storage="byun_onjin.ogg"]
#&f.name
（今！）[p]
#
[playse storage="kusahasiru_onjin.ogg"]
#&f.name
@camera zoom=5 x=0 y=160 time=300
[image layer=2 page=fore storage="siro.jpg" name="siro" time=5]「やああああああああっっ！！」

[p]
#
[reset_camera]
[live2d_fadeout time=5]
[playse storage="swing32_macchi.ogg"]
[w]
;異形の鳴き声　SE
[playse storage="igyou_nakigoe_onjin4.ogg"]
[w][w]
[playse storage="tukamu_koukaonlabo.ogg"]
#&f.name
「きゃあっっ！！」[p]
#
[live2d_fadein time=5]
[live2d_mod name="gra" y=-2.3 scale=4.9]
[free name="siro" layer=2]
#&f.name
（触手・・・？・・・が・・・体に・・・！）[p]
#
[playse storage="simeageru_koukaonlabo.ogg"]
#&f.name
「うっ・・・」[p]
#
[image layer=3 page=fore storage="aka.jpg" name="aka" time=300]
[free name="aka" layer=3 time=500]
[playse storage="simeageru_koukaonlabo.ogg"]
#&f.name
（巻き・・・ついて・・・）[p]
[image layer=3 page=fore storage="aka.jpg" name="aka" time=300]
[free name="aka" layer=3 time=500]
[playse storage="simeageru_koukaonlabo.ogg"]
#&f.name
「・・・っ・・・このっ・・・・・・[playse storage="simeageru_koukaonlabo.ogg"]っ・・・ぁあっっ！！」[p]
#

;締め付けSE
;双剣、落ちるSE
[playse storage="step14_macchi.ogg"]
[if exp="f.wait!=1"][wait time=500][endif]
[playse storage="kinzoku_macchi.ogg"]
#&f.name
（剣が・・・しまった・・・っっ・・・でも、体に力が・・・っ・・・）[p]
#
[playse storage="simeageru_koukaonlabo.ogg"]
;締め付けSE
[image layer=3 page=fore storage="aka.jpg" name="aka" time=300]
[free name="aka" layer=3 time=500]
#&f.name
（なんとかして・・・抜け出さないと・・・でも・・ああ・・・）[p]
#
[playse storage="simeageru_koukaonlabo.ogg"]
[image layer=3 page=fore storage="aka.jpg" name="aka" time=300]
[free name="aka" layer=3 time=500]
;締め付けSE
#&f.name
（・・・だ・・・[w]れか・・・・・・）[p]
#
[playse storage="simeageru_koukaonlabo.ogg"]
[image layer=3 page=fore storage="black.png" name="kuro" time=3000]
[anten]
[live2d_fadeout time=30]
[free name="kuro" layer=3]
[fadeoutbgm time=4000]
;暗転、斬撃SE、異形鳴き声
[bg storage="siro.jpg" time=50]
[bg storage="sougen1_tatakai_tasogare.jpg" time=50]
[playse storage="swing37_a_macchi.ogg"]
[playse storage="sword-slash4_koukaonlabo.ogg"]
[w]
[playse storage="igyou_nakigoe_onjin2.ogg"]
[live2d_show name="gra" y=-0.1 x=0.0 scale=1.5]
#&f.name
（え・・・誰かが触手を・・・？）[p]
#
[playse storage="dimension-stop_koukaonlabo.ogg"]
[live2d_fadeout time=1000]
[live2d_delete_all]
;どさり、SE
#&f.name
（・・・誰か・・・あ・・・）[p]
#
[wait time=700]

[if exp="f.event_war_glif==1"]
[jump storage="scenario_2/episode/event_war_glif.ks"]
[endif]
[call storage="scenario_2/live2d_rans_macro.ks"]
[live2d_rans_touroku]
[live2d_fadeout time=5]
[live2d_show name="rans2" y=-4.0 x=0.0 scale=8.0]
[live2d_motion name="rans2" mtn="Arms_kamae"]
[rans_body_yoroi]
[live2d_fadein time=4700]
[rans_exp_ketui]
#ランスロット
「[name]っっ！！大丈夫かっっ！！しっかりしろ、[name]！！」[p]
#
[rans_arms_normal]
[rans_head_right_z]
#&f.name
「・・・ら・・・ランスロット・・・」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_exp_sinpai]
[fadeinbgm storage="omoi_ontama.ogg" time=3000]
#ランスロット
「・・・よかった・・・。お前を見つけたときてっきりもう・・・」[p]
#

#&f.name
「・・・ランスロット・・・どうして・・・」[p]
#
[rans_head_normal]
[rans_exp_ketui]
[fadeoutbgm time=3000]
#ランスロット
「・・・話はあとだ。・・・立てるか？まずはこいつをなんとかしないことには・・・」[p]
#

#&f.name
（ランスロット・・・）[p]
#

#&f.name
「・・・はい！！」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
*rans_battle_start
;テストコード
;[eval exp="f.rans_battle_kizuna=1"]
;[eval exp="f.ranskonkando=100"]
[eval exp="f.friend=1"]
[eval exp="f.monster_l_size=1"]
[eval exp="f.monster_l_size_2=1"]
[eval exp="f.monster_group_24=1"]
[eval exp="f.event_war_rans=1"]

;異形戦闘
[battle_start]

*igyou_battle_end
[button_hyouji]
[message_settei_ad]
[bg storage="sougen1_tatakai_tasogare.jpg" time=50]
[live2d_rans_touroku]
[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]
[live2d_show name="rans2" y=-4.0 x=0.0 scale=8.0]
[rans_body_yoroi]
[live2d_rans_mod_sekkin]
[w]
[live2d_fadein time=3700]
[free name="kuro" layer=3 time=3700]
[rans_head_normal]
[rans_exp_normal]
#ランスロット
「・・・体は大丈夫か？他に、怪我はないのか」[p]
#

#&f.name
「・・・う、うん。ちょっとふらふらするけど・・・」[p]
#

[rans_head_under_y]
[rans_head_normal]
#ランスロット
「そうか。・・・ならばお前は無理をしなくてもいい。[rans_head_right_z][rans_head_right_x][rans_eyes_right]あとは我々に任せろ」[p]
#
[rans_head_normal]
[rans_eyes_normal]
#&f.name
「え・・・我々って・・・」[p]
#

[playse storage="uma_onjin.ogg"]
[wait time=2500]
[playse storage="zawameki_koukaonlabo.ogg"]
[wait time=2500]
;馬のいななき　ざわめき
#&f.name
（・・・どうして・・・？さっきは王宮騎士団がいなかったのに、今になって・・・）[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
#ランスロット
「・・・すまない、[name]」[p]
#
[stopse]
[rans_head_normal]
#&f.name
「ランスロット・・・？」[p]
#
[rans_eyes_right]
[fadeinbgm storage="chinkou_ontama.ogg" time=4000]
[rans_head_under_y]
#ランスロット
「・・・父上から、作戦の変更を命じられた」[p]
#

#&f.name
「作戦の変更・・・って・・・」[p]
#
[rans_eyes_normal]
[rans_head_normal]
[rans_head_left_z]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
#ランスロット
「途中から、我々は王都の警備に回り、こちらは地方騎士団に任せるようにと命令が出たんだ」[p]
#

[rans_body_normal]
[rans_head_normal]
#&f.name
「！」[p]
#

#&f.name
（・・・だから、王宮騎士が途中からいなくなったんだ・・・）[p]
#

#ランスロット
「地方騎士団だけで異形の対応などできるわけがないのは明らかだった」[p]
#
[rans_body_normal]
[rans_head_normal]
#&f.name
「・・・・・」[p]
#

[rans_head_under_y]
[rans_exp_kunou]
#ランスロット
「それでも、父上は地方騎士団に異形の数を減らさせ、[rans_exp_mehuse]残りを王都の前で対応するように・・・」[p]
#

#&f.name
（そんな・・・ウェルム団長が、そんなことを・・・どうして・・・。あれ？でも・・・）[p]
#

#&f.name
「ランスロットは・・・どうして？王都に、いなくていいの？」[p]
#

[rans_head_normal]
[rans_exp_mehuse]
[rans_mod_idle]
[rans_exp_normal]
#ランスロット
「・・・父上の命に背いた」[p]
#

#&f.name
「！！ええっ・・・？で、でも・・・大丈夫なの・・・」[p]
#

[rans_head_right_x]
[rans_head_under_y]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_ketui]
#ランスロット
「・・・お前たちを見殺しにするわけにはいかない。私の処罰など・・・命の重さに比べれば大したことはない」[p]
#

[rans_body_normal]
[rans_head_normal]
[rans_exp_normal]
#&f.name
（ランスロット・・・）[p]
#
[fadeoutbgm time=6000]
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット
「・・・そんな顔をするな。私は大丈夫だ。[rans_exp_bisyo]それよりも何よりも、お前が無事でよかった・・・」[p]
#
[rans_head_normal]
#&f.name
「ランスロット・・・」[p]
#

[rans_head_under_y]
[rans_head_left_z]
[rans_eyes_left]
[rans_exp_normal]
#ランスロット
「・・・だがまだ、安心するには早いな」[p]
#
[rans_head_normal]
#&f.name
「わかってる。[rans_eyes_normal]・・・クライストさんがルシアを倒して戻ってくるまで、持ちこたえないとね」[p]
#
[rans_head_above_y]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_ketui]
[rans_eyes_right]
#ランスロット
「・・・・・・あいつは何をのんびりやっているのか・・・」[p]
#

#&f.name
「きっと頑張ってくれてるよ。私も・・・しっかりしないと・・・」[p]
#
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal]
#ランスロット
「[name]・・・」[p]
#
[fadeinbgm storage="erumu_senjou.ogg" time=5000]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_ketui]
[rans_eyes_left]
#ランスロット
「・・・お前はまだ体力が十分じゃない。[rans_eyes_normal]私のそばから、離れるな」[p]
#

	
#&f.name
「・・・はい！」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal]
#ランスロット
「行くぞ」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all]
[live2d_off][button_hyouji]
[anten]
;ミニゲーム
[fadeoutbgm time=3000]
[wait time=3000]
[bg storage="erumusougen_tasogare.jpg"]


[config_true]
[chara_show name="kra" storage=&f.kra_smile top=50]
#クライスト	
「ただいま〜、[kra_tatie_mihiraki]あれ？」[p]
#

#&f.name	
「あ、クライストさん・・・！無事だったんだね」[p]
#

[kra_tatie_smile]
#クライスト	
「もちろん。ルシアもちゃんと退治してきたから安心して」[p]
#

#&f.name	
「そ、そうなんだ・・・ありがとう・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「うん。どういたしまして」[p]
#

#&f.name	
（そんなサラッと言ってるけど、本当に・・・？？）[p]
#
[config_false]
[chara_move name="kra" left=300]
[rans_tatie_touroku]
[chara_show name="rans_war" storage="rans_tatie/rans_normal_war.gif" width="585" height="762" top=1 left=-70]
#ランスロット	
「・・・お前の言うことが本当なら、これで危機は免れたわけだな。礼を言う」[p]
#

[kra_tatie_yokome]
#クライスト	
「あれ？なんだまだいたの」[p]
#

[playbgm storage="shuuen_musmus.ogg"]
#&f.name	
「えっ・・・」[p]
#

#&f.name	
（まだいたの・・・って・・・）[p]
#

#ランスロット	
「・・・・・・」[p]
#

[kra_tatie_akireru]
#クライスト	
「もう王都に帰ってなくちゃいけない時間じゃないの？」[p]
#

[rans_tatie_mehuse_war]
#ランスロット	
「確かに、父上たちは王都の警備に回った。我々は我々の意思でここに残っている」[p]
#

[kra_tatie_normal]
#クライスト	
「それって・・・いわゆる命令違反だよね？」[p]
#
[rans_tatie_normal_war]
#&f.name	
（ランスロット・・・！）[p]
#

[rans_tatie_mehuse_war]
#ランスロット	
「・・・そうだな。だが、地方騎士団だけで異形の対応は不可能だ」[p]
#

[rans_tatie_yokome_war]
#ランスロット	
「父上の話では残った異形を、王都前で王宮騎士団が対応すると言うことだったが・・・地方騎士団に多数の犠牲は避けられないだろう」[p]
#

[kra_tatie_metoji]
#クライスト	
「優しいことだね・・・」[p]
#

#&f.name	
「あ、あのクライストさん・・・さっき、まだいたのって・・・どう言う・・・」[p]
#

[rans_tatie_normal_war]
#ランスロット	
「お前は知っていたんだな。父上が・・・」[p]
#

[kra_tatie_akireru]
#クライスト	
「気付かない方がおかしいって。まあ面倒くさいことになりそうだから、何も言わなかっただけ」[p]
#
[kra_tatie_metoji]
#クライスト	
「要は俺がルシアをさっさと倒せばいいことだからね」[p]
#


#ランスロット	
「・・・・・・。[rans_tatie_mehuse_war]・・・そうだな。お前が何を言おうと、おそらくあの場では何も変わらなかっただろう」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・わかってるんじゃないか」[p]
#


#ランスロット	
「・・・・・・」[p]
#

#&f.name	
（ランスロット・・・）[p]
#
[fadeoutbgm time=2000]
[chara_hide_all]
[anten]
[bg storage="erumusougen_tasogare.jpg"]
;暗転
;馬のいななき
[playse storage="uma_onjin.ogg"]

[ector_tatie_touroku_war]
[ector_tatie_show_war]

#エクター	
「隊長！！」[p]
#
[live2d_rans_touroku]
[live2d_rans_show]
[rans_body_yoroi]
[live2d_fadein time=3000]
;[chara_show name="rans_war" storage="rans_tatie/rans_normal_war.gif" width="585" height="762" top=1 left=220]
[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「皆無事のようだな。何よりだ。[rans_eyes_left][rans_head_left_z][rans_head_left_x]王都に戻り父上と合流するぞ、急げ」[p]
#

#エクター	
「了解」[p]
#

[config_true]
[chara_hide name="ector_war"]

#&f.name	
「あの、ランスロット・・・[rans_head_normal][rans_eyes_normal][rans_exp_sinpai]ありがとう。でも・・・大丈夫なの、その、命令違反て・・・」[p]
#

[rans_body_right_z]
[rans_arms_kosinite_right]
[rans_head_right_z]
[rans_eyes_under]
[rans_exp_normal_warai]
#ランスロット	
「・・・何も心配するな。・・・[rans_body_normal][rans_head_normal][rans_head_right_x][rans_head_under_y][rans_eyes_under]
[rans_exp_mehuse_warai]グレッグ団長に、よろしく伝えて欲しい」[p]
#
[rans_exp_normal]
[rans_head_right_x]
[rans_head_above_y]
[rans_head_right_z]
[rans_eyes_right]
#ランスロット	
「全隊！！王都に帰還する！！」[p]
#
[playse storage="uma_onjin.ogg"]
[w]
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
[playse storage="umahasiru_onjin.ogg"]

;馬の蹄　馬のいななき
#&f.name	
「ランスロット・・・」[p]
#

[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「おい、[name]・・・今、命令違反って・・・」[p]
#
[stopse]
#&f.name	
「ライオネス」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「今の、兄貴だよな・・・どう言うことだ？・・・王宮騎士団の連中はどうした？」[p]
#

#&f.name	
「ウェルム団長は、ここを私たちに任せて、先に王都に戻ったんだよ。だけどランスロットは・・・」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「親父の野郎・・・。[lioness_tatie_otikomi]兄貴・・・カーニバルの時もそうだが、これで二回目だろ・・・。下手すりゃ・・・」[p]
#

#&f.name	
「えっ」[p]
#

[lioness_tatie_akireru]
#ライオネス	
「お前、知らないのかよ。[lioness_tatie_otikomi]騎士団内での命令違反は例外なく死刑だ」[p]
#

[playbgm storage="shuuen_musmus.ogg"]
#&f.name	
「っ・・・！で、でもカーニバルの時は・・・」[p]
#


[lioness_tatie_kosinite]	
#ライオネス	
「一回目くらいはもみ消すだろ。団長があの親父だからな。手違いだのなんだの、理由はいくらでも付けられる」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「ただ流石に今回はなあ・・・どうみたってあからさまだろ。他の王宮騎士の目もある。やべえかもしれねえな」[p]
#

#&f.name	
「・・・・・・」[p]
#
[fadeoutbgm time=3000]
[chara_hide_all]
[jump storage="scenario_2/episode/epi_flag_check.ks"]










;余った奴
[config_true]
[chara_show name="kra" storage=&f.kra_smile top=50]
#クライスト
「ただいま〜。待った？」[p]
#

[chara_show name="lion" storage=&f.lion_otikomi height="698" width="456" top=-35]
#ライオネス
「・・・・・・」[p]
#

#&f.name
（うわあ・・・平然としてるけど・・・本当にルシアを倒したの？そしてライオネス・・・今にも死にそうなんだけど・・・）[p]
#

[chara_hide name="lion"]
[kra_tatie_yokome]
#クライスト
「グレッグ団長とトリスタンにはそこで会ったよ。任務完了の報告は終わってる。早く帰ろう」[p]
#


[kra_tatie_bisyou_youen]
#クライスト
「ね、一緒に帰りながら残りの奴も片付けるよ」[p]
#

[playse storage="akushu_koukaonlabo.ogg"]
#&f.name
（ん・・・？手・・・）[p]
#


#&f.name
「あっ・・・あの・・・クライストさん・・・」[p]
#

[kra_tatie_mihiraki]
#クライスト
「なに？あ、怪我でもしてた？[kra_tatie_smile]すぐに治してあげる」[p]
#

#&f.name
「だ、大丈夫だけど・・・」[p]
#

[playbgm storage="korehaittai_ontama.ogg"]
[rans_tatie_touroku]
[chara_show name="rans" storage="rans_tatie/rans_ikari.gif" width="585" height="762" top=1]
#ランスロット
「おい、クライスト！！」[p]
#
[kra_tatie_normal]
[config_false]

[chara_move name="kra" left=300]
[chara_move name="rans" left=-70]
[kra_tatie_akireru]
#クライスト
「何だよ。ウェルム団長ならどうせ王都にいるんだろ。王宮への報告は彼にするよ」[p]
#

[rans_tatie_ikari]
#ランスロット
「そういうことではない。その手を放せ」[p]
#

[kra_tatie_metoji]
#クライスト
「嫌だね」[p]
#

#ランスロット
「貴様！！！」[p]
#
[chara_hide name="kra" time=50]
[chara_hide name="rans" time=50]
[config_true]

[lioness_tatie_show]
#ライオネス	
「お、おいおい兄貴・・・」[p]
#

[lioness_tatie_akireru]
#ライオネス	
「こいつのこういうところは前々からで・・・んなカッカすること・・・」[p]
#
[chara_hide name="lion" time=50]
[config_false]

;[chara_show name="rans"  storage=&f.rans_mayuhisome width="585" height="762" top=0.3 left=-70 time=300]
[chara_show name="rans" storage="rans_tatie/rans_mayuhisome.gif" width="585" height="762" top=1  left=-70 time=300]
[chara_show name="kra" storage=&f.kra_yokome left=300 top=50 time=300]
#ランスロット
「ライオネス、お前は黙っていろ」[p]
#
[chara_hide name="kra" time=50][chara_hide name="rans" time=50]

[config_true]
[chara_show name="lion" storage=&f.lion_odoroki height="698" width="456" top=-35]
#ライオネス	
「・・・・・・」[p]
#
[chara_hide name="lion" time=50]
[config_false]
[chara_show name="rans" storage="rans_tatie/rans_mayuhisome.gif"  width="585" height="762" top=1 left=-70 time=300]
[chara_show name="kra" storage=&f.kra_akireru left=300 top=50 time=300]

#クライスト
「見苦しい嫉妬だなあ」[p]
#

[rans_tatie_metoji]
#ランスロット
「嫉妬ではない。お前が危険なだけだ」[p]
#

[kra_tatie_metoji]
#クライスト
「はぁ・・・」[p]
#

#&f.name
（えーと、なんだか話が勝手に進んでるけど・・・）[p]
#

#&f.name
「クライストさん、[kra_tatie_normal]あ、あの、ルシアはちゃんと倒せたんだよね？」[p]
#

[kra_tatie_yokome]
#クライスト
「もちろん。倒せたよ。『ルシア』はね」[p]
#

#&f.name
「え・・・？」[p]
#

[chara_hide name="kra" time=50]
[chara_hide name="rans" time=50]
[config_true]
[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「・・・まあ、詳しいことはあとで話す。とりあえず、今はけが人の手当てと、遺体の回収とだな・・・」[p]
#

#&f.name
「そ、そうだね・・・怪我してる人もいるし、まだ助かる人もいるかもしれない・・・急ごう！」[p]
#
[chara_hide name="lion"]
[config_false]
[chara_show name="rans" storage="rans_tatie/rans_mayuhisome.gif"  width="585" height="762" top=1 left=-70 time=300]
[chara_show name="kra" storage=&f.kra_akireru left=300 top=50 time=300]

#ランスロット
「・・・」[p]
#

#クライスト
「・・・」[p]
#

#&f.name
「はぁ・・・」[p]
#

#&f.name
（ランスロットとクライストさん・・・どうしてこんなふうに仲が悪くなっちゃうんだろう・・・）[p]
#
[fadeoutbgm time=3000]
[chara_hide_all]
[chara_off]

[anten]

[jump storage="scenario_2/epi_flag_check.ks"]
	
	

