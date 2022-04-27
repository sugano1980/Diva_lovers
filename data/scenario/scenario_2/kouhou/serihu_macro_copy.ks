[macro name="kouhou_setumei"]

;[jump storage="scenario_2/kouhou/serihu_macro.ks" target=*test]

[message_settei_ad]
[cera_tatie_touroku]
[cera_tatie_show]

#セレ
「私たちの仕事は、前線で戦う騎士たちの援護だ。援護の仕方次第で、前線での戦いは有利なものにも不利なものにもなる。心して携わってほしい」[p]
#

#&f.name
「は、はい！」[p]
#
[cera_tatie_udekumi]
#セレ
「さて、後方支援の仕事内容だが・・・説明はしなくても大丈夫か？」[p]
#

;説明をしてもらう;
;大丈夫
【説明をしてもらう？】

[glink target=*setumei_1 text="（説明をしてもらう）" size=17 width=600 x=65 y=300]
[glink target=*setumei_2 text="（大丈夫）" size=17 width=600 x=65 y=360]
[s]

*setumei_1


[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

*setumei
[chara_hide name="cera"][chara_off]
[image layer=3 page=fore storage="setumei_yajirusi.png"  name="yajirusi" x=390 y=44]

#セレ
「戦いで勝利するためには、士気、人員、物資の３つのポイントを抑えることが重要だ」[p]
#

[anim name="yajirusi" top="+=30" time=200]
[anim name="yajirusi" top="+=30" time=200]

#セレ
「この３つのゲージを常に高い状態に保っておくことで、前線の騎士たちに継続して支援を行うことができるんだ」[p]
#

[anim name="yajirusi" top="-=30" time=200]
[anim name="yajirusi" top="-=30" time=200]
#セレ
「士気を保つには食事が必要だ。

[anim name="yajirusi" left="+=200" time=200]
[anim name="yajirusi" top="+=400" time=200]

[kisi_onaka]
右下のテーブルに空腹の騎士が現れたら、
[message_kakusu_ad]
[wait time=500]
[anim name="yajirusi" top="-=290" time=200]
[anim name="yajirusi" left="-=500" time=200]
[message_settei_ad]
食事のボタンを押してやるといい」[p]
#

[anim name="yajirusi" top="-=80" time=200]
[anim name="yajirusi" left="+=280" time=200]
[free name="kisi_o" layer=0]

#セレ
「人員の数を保つには迅速な手当が重要だ。
[anim name="yajirusi" left="+=300" time=200]
[kisi_kega]
右上のベッドに負傷者が出たら、手当てのボタンを

[anim name="yajirusi" left="-=440" time=200]
[anim name="yajirusi" top="+=80" time=200]
押してやるといい」[p]
#
[free name="kisi_k" layer=0]

[anim name="yajirusi" left="+=140" time=200]
[anim name="yajirusi" top="-=55" time=200]
#セレ
「補給物資を維持するためには即座に補給を行うことが重要だ。
[anim name="yajirusi" top="+=250" time=200]
左下の荷物がなくなったら、
[anim name="yajirusi" top="-=190" time=200]
[anim name="yajirusi" left="-=10" time=200]
補給のボタンを押してやるといい」[p]
#

[busshi_delete]
[message_kakusu_ad]
[free name="gauge" layer=0]
[eval exp="tf.gauge_suuti[2]=95"]
[eval exp="tf.gauge_b_x=90"]
[eval exp="tf.gauge_b_y=54"]
[eval exp="tf.gauge_name_x=24"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]
[eval exp="tf.gauge_huda_x=2"]
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=tf.gauge_number_x+80"]

;ゲージの長さ計算
[eval exp="tf.gauge_in='kouhou/siki_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[0]"]
[eval exp="tf.gauge_name='士気'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[0]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/jinin_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[1]"]
[eval exp="tf.gauge_name='人員'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[1]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/busshi_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[2]"]
[eval exp="tf.gauge_name='物資'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[2]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]

[wait time=1000]


[image layer=0 page=fore storage="kouhou/busshi.png" height=222 width=360 name="busshi" x=70 y=-335]
[anim name="busshi" top="+=670" time=500]
[anim name="busshi" top="-=50" time=700]
[anim name="busshi" top="+=50" time=500]
[wait time=500]



[wait time=1000]
[free name="gauge" layer=0]
[free name="gauge_e" layer=1]
[eval exp="tf.gauge_suuti[2]=100"]
[free name="gauge" layer=0]
[eval exp="tf.gauge_b_x=90"]
[eval exp="tf.gauge_b_y=54"]
[eval exp="tf.gauge_name_x=24"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]
[eval exp="tf.gauge_huda_x=2"]
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=tf.gauge_number_x+80"]

;ゲージの長さ計算
[eval exp="tf.gauge_in='kouhou/siki_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[0]"]
[eval exp="tf.gauge_name='士気'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[0]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/jinin_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[1]"]
[eval exp="tf.gauge_name='人員'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[1]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/busshi_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[2]"]
[eval exp="tf.gauge_name='物資'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[2]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]


[message_settei_ad]
#セレ
「一定時間内にボタンを押せばゲージは回復するが、
[busshi_delete]
[anim name="yajirusi" left="-=130" time=200]
[eval exp="tf.gauge_suuti[2]=90"]
;ゲージの長さ計算
[free name="gauge" layer=0]

[eval exp="tf.gauge_b_x=90"]
[eval exp="tf.gauge_b_y=54"]
[eval exp="tf.gauge_name_x=24"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]
[eval exp="tf.gauge_huda_x=2"]
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=tf.gauge_number_x+80"]

[eval exp="tf.gauge_in='kouhou/siki_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[0]"]
[eval exp="tf.gauge_name='士気'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[0]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/jinin_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[1]"]
[eval exp="tf.gauge_name='人員'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[1]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/busshi_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[2]"]
[eval exp="tf.gauge_name='物資'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[2]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]

間違ったボタンを推したりするとゲージが余計に減ってしまう」[p]
#


[eval exp="tf.kisi_kaisuu=5"]
[eval exp="tf.kisi_x=800"]
*kisi_hyouji
[eval exp="tf.kisi_y=200"]

;出撃騎士表示
[eval exp="tf.kisi_hyouji=tf.kisi_hyouji+1"]
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[eval exp="tf.kisi_y=tf.kisi_y+50"]
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[eval exp="tf.kisi_y=tf.kisi_y+50"]
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[if exp="tf.kisi_kaisuu>0"]
[eval exp="tf.kisi_kaisuu=tf.kisi_kaisuu-1"]
[eval exp="tf.kisi_x=tf.kisi_x+50"]
[jump storage="scenario_2/kouhou/serihu_macro.ks" target=*kisi_hyouji]
[endif]



;隊長騎士表示
[eval exp="tf.kisi_x_t=tf.kisi_x-350"]
[eval exp="tf.kisi_y_t=tf.kisi_y-50"]
[image layer=0 page=fore storage="kouhou/kisi_midori_g.gif" height="67" width="55" name="kisi_t" x=&tf.kisi_x_t y=&tf.kisi_y_t]

;アニメーションで出撃していく

[anim name="kisi" left="-=800" time=3000]
[anim name="kisi_t" left="-=800" time=3000]

#セレ
「また、ボタンを押すのが遅れると、騎士たちが行動を始めるが、失ったゲージは二度と回復できない」[p]
#


[free name="kisi" layer=0]
[free name="kisi_t" layer=0]
#セレ
「くれぐれも気をつけて、迅速な行動を心がけることだ」[p]
#

[image layer=1 page=fore storage="kouhou/gauge_e_in.png"  name="gauge_e" height=24 width=&tf.gauge_size_w_e x=&tf.gauge_e_x_i y=&tf.gauge_e_y]

[anim name="yajirusi" top="-=160" time=200]
[anim name="yajirusi" left="+=280" time=200]
[skip_button_off]

#セレ
「また、一番上の長いゲージは、戦いが終了するまでの時間だから。適宜確認するように」[p]
#


[free name="gauge" layer=0]
[eval exp="tf.gauge_suuti[2]=100"]
[eval exp="tf.gauge_b_x=90"]
[eval exp="tf.gauge_b_y=54"]
[eval exp="tf.gauge_name_x=24"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]
[eval exp="tf.gauge_huda_x=2"]
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=tf.gauge_number_x+80"]

;ゲージの長さ計算
[eval exp="tf.gauge_in='kouhou/siki_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[0]"]
[eval exp="tf.gauge_name='士気'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[0]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/jinin_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[1]"]
[eval exp="tf.gauge_name='人員'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[1]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]




[eval exp="tf.gauge_b_y=tf.gauge_b_y+30"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]

[eval exp="tf.gauge_in='kouhou/busshi_gauge.png'"]
[eval exp="tf.gauge_num=tf.gauge_suuti[2]"]
[eval exp="tf.gauge_name='物資'"]
[eval exp="tf.gauge_how = tf.gauge_suuti[2]"]
;ゲージの長さ計算
[gauge_width]
[image layer=0 page=fore storage="equip_huda.png"  name="gauge" height="27" width="80" x=&tf.gauge_huda_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_name  name="gauge" size="18" face="antique" color="black" x=&tf.gauge_name_x y=&tf.gauge_name_y]

[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]


[cera_tatie_show]
[free name="yajirusi" layer=3]
[skip_button]
#セレ
「さあ、もう説明はいいか？」[p]
#

【説明をしてもらう？】

[glink target=*ok text="（説明をしてもらう）" size=17 width=600 x=65 y=300]
[glink target=*ng text="（大丈夫）" size=17 width=600 x=65 y=360]
[s]


;もう一度聞く
*ok

[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[jump storage="scenario_2/kouhou/serihu_macro.ks" target=*setumei]




*ng


[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;大丈夫

*setumei_2
[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
#セレ
「それでは、頼んだぞ。頑張ってくれ！」[p]
#

[free name="gauge_e" layer=1]
[message_kakusu_ad]
[chara_hide name="cera"][chara_off]
[eval exp="tf.kouhou_setumei_end=1"]
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*kisi_anime]

[endmacro]


;----------------------------------------------------------------------------------------------------------------------------------------------
[macro name="kouhou_end"]

[cm]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[playse storage="paredo_kansei_1.ogg"]
[message_settei_ad]
#&f.name
 「あれ？この声・・・」[p]
 #
 
 
[cera_tatie_touroku]
[cera_tatie_show]
 #セレ
 「[name]！」[p]
  #
 #&f.name
 「セレさん！」[p]
  #
[cera_tatie_smile]
   #セレ
 「頑張ったな、今、無事団長たちが戻ってきた。ルシアを倒したそうだ！！」[p]
  #
  
   #&f.name
 「本当！？よかった・・・よかったあ・・・」[p]
  #
  
  [chara_hide name="cera"]
 ;評価
 
 
 [bg storage="kisidanrouka_tasogare.jpg"]
 
 [dancho_tatie_touroku]
 [dancho_tatie_show]
 [dancho_tatie_warai]
  #団長
 「本当によくやってくれた、[name]」[p]
  #
 
;[eval exp="tf.kouhou_suuti = tf.gauge_suuti[0] + tf.gauge_suuti[1] + tf.gauge_suuti[2]"]
 
;[if exp="tf.kouhou_suuti>295"]
;[eval exp="f.kouhou_score =1"]
;[elsif exp="tf.kouhou_suuti>285"]
;[eval exp="f.kouhou_score =2"]
;[else]
;[eval exp="f.kouhou_score =3"]
;[endif]
 
[playbgm storage="shouri_ontama.ogg"]



[eval exp="tf.gauge_b_x=300"]
[eval exp="tf.gauge_b_y=230"]

[if exp="f.kouhou_score==1"]

;A
@camera zoom=10 x=0 y=0 time=5
[reset_camera]

[image layer=0 page=fore storage="complete.png" name="com" x=120 y=-900]
[anim name="com" top="+=1100" time=300]
[anim name="com" top="-=300" time=470]
[anim name="com" top="+=300" time=1000]
[free name="com" layer=0 time=1000]


[image layer=0 page=fore storage="kouhou/rank.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]
[eval exp="tf.gauge_b_x=tf.gauge_b_x+125"]
[eval exp="tf.gauge_b_y=tf.gauge_b_y-17"]
[image layer=0 page=fore storage="kouhou/score_a.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]



[eval exp="tf.gauge_b_x=tf.gauge_b_x-50"]
[eval exp="tf.gauge_b_y=tf.gauge_b_y-67"]
[image layer=0 page=fore storage="love_mode/love_mode_kirakira_1.gif" name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=100]

 #団長
 「お前の素早い対応のおかげで、戦いを有利に進めることができた。感謝する」[p]
  #

[elsif exp="f.kouhou_score==2"]
;B

@camera zoom=10 x=0 y=0 time=5
[reset_camera]

[image layer=0 page=fore storage="complete.png" name="com" x=120 y=-900]
[anim name="com" top="+=1100" time=300]
[anim name="com" top="-=300" time=470]
[anim name="com" top="+=300" time=1000]
[free name="com" layer=0 time=1000]


[image layer=0 page=fore storage="kouhou/rank.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]
[eval exp="tf.gauge_b_x=tf.gauge_b_x+125"]
[eval exp="tf.gauge_b_y=tf.gauge_b_y-17"]
[image layer=0 page=fore storage="kouhou/score_b.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]



[eval exp="tf.gauge_b_x=tf.gauge_b_x-50"]
[eval exp="tf.gauge_b_y=tf.gauge_b_y-67"]
[image layer=0 page=fore storage="love_mode/love_mode_kirakira_1.gif" name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=100]

#団長
 「多少後手に回ったところもあったが、まずまずの戦いだった。感謝する」[p]
#
  
  [elsif exp="f.kouhou_score==3"]
;C
@camera zoom=10 x=0 y=0 time=5
[reset_camera]

[image layer=0 page=fore storage="complete.png" name="com" x=120 y=-900]
[anim name="com" top="+=1100" time=300]
[anim name="com" top="-=300" time=470]
[anim name="com" top="+=300" time=1000]
[free name="com" layer=0 time=1000]


[image layer=0 page=fore storage="kouhou/rank.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]
[eval exp="tf.gauge_b_x=tf.gauge_b_x+125"]
[eval exp="tf.gauge_b_y=tf.gauge_b_y-17"]
[image layer=0 page=fore storage="kouhou/score_c.png"  name="score" x=&tf.gauge_b_x y=&tf.gauge_b_y time=1000]

#団長
 「人員が少ない中、頑張ってくれたな、かろうじてだが、戦いには勝つことができた。感謝する」[p]
#

[endif] 
 
 [chara_hide name="dancho"][chara_off]
 [free name="score" layer=0]
[fadeoutbgm time=1000] 
  [bg storage="irainheya_yoru_tasogare.jpg"]
  
  
#&f.name
 「はあ、疲れた・・・とりあえず、明日朝も早いし、眠ろう・・・」[p]
#


;----------------------------------------------------------------------------------------------------------------------------


 ;ランスの方が大きいとき
 [if exp="f.ranskonkando>f.lionkonkando"]
 ;----------------
 ;クラの方が大きいとき
 [if exp="f.krakonkando>f.ranskonkando"]
 ;クラに決定
 [eval exp="tf.kouhou_kra=1"]
 ;ランスの方が大きいとき
 [elsif exp="f.krakonkando<f.ranskonkando"]
 ;ランスに決定
  [eval exp="tf.kouhou_rans=1"]
 [endif]
 
 [endif]
 
 
 ;ライオネスの方が大きいとき（ランス否）
 [if exp="f.ranskonkando<f.lionkonkando"]
 
 
  ;クラの方が大きいとき
 [if exp="f.krakonkando>f.lionkonkando"]
 ;クラに決定
   [eval exp="tf.kouhou_kra=1"]
 ;ライの方が大きいとき
 [elsif exp="f.krakonkando<f.lionkonkando"]
 ;ライに決定
   [eval exp="tf.kouhou_lion=1"]
 [endif]

 

 ;---------------------
 [endif]
 
 
 
 [if exp="f.glif_battle_kizuna==1"]
 [eval exp="tf.kouhou_glif=1"]
 [endif]
 
 *test
;[message_settei_ad]
;[freeimage layer=0]
;[freeimage layer=1]
;[freeimage layer=2]
;[fadeoutbgm time=1000] 
;[bg storage="irainheya_yoru_tasogare.jpg"]
;[eval exp="tf.kouhou_glif=1"]
;[eval exp="f.kouhou_score=2"]

 ;-------------------------------------------------------------------------------
 
 [if exp="tf.kouhou_rans==1"]
 [playbgm storage="reina_ol_ontama.ogg"]
  [playse storage="nokku_tairakomori.ogg"]
 [if exp="f.kouhou_score==1"]
 [rans_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
 [rans_b_kouhou]
 [endif]
   [live2d_delete_all][live2d_off]
 [endif]
 
 
  [if exp="tf.kouhou_lion==1"]
  [playbgm storage="reina_ol_ontama.ogg"]
   [playse storage="nokku_tairakomori.ogg"]
  [if exp="f.kouhou_score==1"]
  [lion_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
   [lion_b_kouhou]
 [endif]
  [live2d_delete_all][live2d_off]
 [endif]
 
  [if exp="tf.kouhou_kra==1"]
  [playbgm storage="reina_ol_ontama.ogg"]
   [playse storage="nokku_tairakomori.ogg"]
  [if exp="f.kouhou_score==1"]
  [kra_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
  [kra_b_kouhou]
 [endif]
  [live2d_delete_all][live2d_off]
 [endif]
 
  [if exp="tf.kouhou_glif==1"]
  [playbgm storage="reina_ol_ontama.ogg"]
   [playse storage="nokku_tairakomori.ogg"]
  [if exp="f.kouhou_score==1"]
  [glif_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
  [glif_b_kouhou]

 [endif]
  [live2d_delete_all][live2d_off]
 [endif]
 
#&f.name
「よかった・・・みんな無事で。後方支援、頑張ってよかったな」[p]
  
 [endmacro]
 
 
 
 
 
 
 [macro name="kouhou_end_chara"]
 
 
 ;ランスの方が大きいとき
 [if exp="f.ranskonkando>f.lionkonkando"]
 ;----------------
 ;クラの方が大きいとき
 [if exp="f.krakonkando>f.ranskonkando"]
 ;クラに決定
 [eval exp="tf.kouhou_kra=1"]
 ;ランスの方が大きいとき
 [elsif exp="f.krakonkando<f.ranskonkando"]
 ;ランスに決定
  [eval exp="tf.kouhou_rans=1"]
 [endif]
 
 
 
 ;ライオネスの方が大きいとき（ランス否）
 [elsif exp="f.rans_konkando<f.lionkonkando"]
 
 
  ;クラの方が大きいとき
 [if exp="f.krakonkando>f.lionkonkando"]
 ;クラに決定
   [eval exp="tf.kouhou_kra=1"]
 ;ライの方が大きいとき
 [elsif exp="f.krakonkando<f.lionkonkando"]
 ;ライに決定
   [eval exp="tf.kouhou_lion=1"]
 [endif]

 
 

 
 
 ;---------------------
 [endif]
 
 
 
 [if exp="f.glif_konkando>10"]
 [eval exp="tf.kouhou_glif=1"]
 [endif]

 
 
 
  
 ;-------------------------------------------------------------------------------
 
 [if exp="tf.kouhou_rans==1||f.event_war_rans==1"]
 
 [if exp="f.kouhou_score==1"]
 [playse storage="nokku_tairakomori.ogg"]
 [rans_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
 [playse storage="nokku_tairakomori.ogg"]
 [rans_b_kouhou]
 [endif]
 
 [endif]
 
 
  [if exp="tf.kouhou_lion==1||f.event_war_lion==1"]
  
  [if exp="f.kouhou_score==1"]
  [playse storage="nokku_tairakomori.ogg"]
  [lion_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
 [playse storage="nokku_tairakomori.ogg"]
   [lion_b_kouhou]
 [endif]

 [endif]
 
  [if exp="tf.kouhou_kra==1||f.event_war_kra==1"]
  
  [if exp="f.kouhou_score==1"]
  [playse storage="nokku_tairakomori.ogg"]
  [kra_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
 [playse storage="nokku_tairakomori.ogg"]
  [kra_b_kouhou]
 [endif]

 [endif]
 
  [if exp="tf.kouhou_glif==1"]
  
  [if exp="f.kouhou_score==1"]
  [playse storage="nokku_tairakomori.ogg"]
  [glif_a_kouhou]
 [elsif exp="f.kouhou_score==2"]
 [playse storage="nokku_tairakomori.ogg"]
  [glif_b_kouhou]
 [endif]

 [endif]
 
 
 
 [endmacro]
 
 





[macro name="lion_a_kouhou"]

#&f.name	
「あれ、誰だろ」[p]
#

[live2d_lion_touroku]
[live2d_lion_show]
[lioness_body_houtai]
[live2d_fadeout time=1000]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[live2d_fadein time=1000]
#ライオネス	
「よう、起きてるか」[p]
#


#&f.name	
「ライオネス！無事だったんだね」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス	
「当たり前だろ、バーカ。俺があんなんでやられるかっての」[p]
#
#&f.name	
（よかった・・・あれでも・・・）[p]
#

#&f.name	
「腕に、包帯・・・」[p]
#

[lioness_eyes_right]
[lioness_head_above_y]
[lioness_head_right_z]
#ライオネス	

「ちょっとした擦り傷だ、問題ねえよ」[p]
#

#&f.name	

「・・・」[p]
#

[lioness_head_normal]
[lioness_face_warai]
#ライオネス	

「それよりお前、なんか大活躍だったんだって？みんな噂してんぞ」[p]
#

#&f.name	

「えっ・・・そ、そうなの？」[p]
#

[lioness_head_left_z]
[lioness_face_yokome_warai]
#ライオネス	

「手際良くて、前線もかなり助かってたってよ。やるじゃねえか」[p]
#

#&f.name	

「そ、そうかな・・・」[p]
#
[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス	

「食事もうまかったしな。男連中がお前の飯なら何杯でもって・・・」[p]
#

#&f.name	

「へっ！？」[p]
#

[lioness_head_under_y]
[lioness_face_yokome_otikomi]
#ライオネス	

「・・・気に入らねえけど」[p]
#

#&f.name	

「？？？」[p]
#
[lioness_head_normal]
[lioness_head_right_x]
[lioness_face_tere]
#ライオネス	

「ま、まあなんだ、そんだけ。その・・・疲れただろ、ちゃんと休めよ」[p]
#

#&f.name	

「う、うん・・・ライオネス こそ、怪我、大事にして」[p]
#

[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス	

「こんなんすぐ治る。心配すんな。
[lioness_head_right_z]
[lioness_face_warai]
・・・じゃあな」[p]
#

#&f.name	

「うん、おやすみなさい！」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	

「おやすみ」[p]
#

[live2d_fadeout time=1000]

[endmacro]

[macro name="rans_a_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#

[live2d_rans_touroku]
[live2d_rans_show]
[rans_exp_normal_warai]
#ランスロット	
「[name]！」[p]
#

[live2d_fadeout time=1000]
[live2d_mod name="rans2" y=-3.0 scale=6.5]
[live2d_fadein time=1000]
#&f.name	
「ランスロット！無事だったんだね」[p]
#

[rans_arms_kosinite_right]
[rans_body_right_z]
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット	
「当然だ。異形は多少手強かったがな・・・問題ない」[p]
#

#&f.name	
「よかったあ・・・」[p]
#

[rans_arms_normal]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	

「グレッグ団長がお前のことを褒めていたぞ。

[rans_head_right_z]
後方支援、頑張ったようだな」[p]
#

[rans_head_normal]
#&f.name	

「え、そ、そうかな」[p]
#


[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	

「ああ、私もお前の活躍が嬉しい。

[rans_head_normal]
[rans_exp_normal_warai]
お前のおかげで、前線もかなり助かったそうだ」[p]
#

#&f.name	
「そ、そうだったんだ・・・」[p]
#

[rans_head_left_z]
[rans_exp_yokome_warai]
#ランスロット	
「怪我の手当ても、手際がいいと評判だったぞ。
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
中にはお前のことを・・・その・・・」[p]
#

#&f.name	
「え？」[p]
#

[rans_head_normal]
[rans_head_right_x]
[rans_body_right_z]
[rans_eyes_right]
[rans_exp_normal]
#ランスロット	

「・・・いや、お前は気にしなくていい」[p]
#

[rans_body_normal]
[rans_head_normal]
#&f.name	
「は、はあ・・・」[p]
#

#&f.name	
（なんだろう・・・）[p]
#

[rans_head_right_x]
[rans_body_right_z]
[rans_eyes_right]
#ランスロット	
「最近、地方騎士団は傭兵の数も増やしていると聞く。

[rans_body_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]

色々と・・・気をつけろよ」[p]
#

#&f.name	
「は、はい・・・」[p]
#

#&f.name	
（何をだろう・・・）[p]
#
[rans_mod_idle]
[rans_eyes_normal]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	
「それじゃあな、私はまだ、事後処理が残っているから・・・」[p]
#

#&f.name	
（大変そうだな・・・）[p]
#


#&f.name	
「あの、ちゃんと休んでね？」[p]
#

[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「もちろんだ。お前もゆっくり休めよ」[p]
#

#&f.name	
「うん、おやすみなさい、ランスロット」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_head_left_z]
[rans_exp_bisyo]
[w]
[live2d_fadeout time=1000]

[endmacro]

[macro name="kra_a_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#

[live2d_kra_touroku]
[live2d_kra_show]
#クライスト	
「[name]ちゃん、起きてる？」[p]
#
[live2d_fadeout time=1000]
[live2d_mod name="aho" y=-2.8 scale=6.2]
[live2d_fadein time=1000]

#&f.name	
「クライストさん！無事だったんだね」[p]
#


[aho_face_normal]
[aho_head_above_y]
[aho_head_left_x]
[aho_head_left_z]
#クライスト	
「そりゃそうだよ、ルシアを倒したのは俺なんだし。やられてたら戦争も負けてるよ」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#&f.name	
「そ、そっか、でも・・・怪我もなさそうだし、元気そうだね？」[p]
#

[aho_head_under_y]
[aho_face_mehuse]
#クライスト	
「うんまあ流石に・・・ちょっと、疲れたけどね。ルシアもそう簡単な相手じゃなかったから」[p]
#

#&f.name	
（そうだよね・・・あのルシアに・・・すごいな、クライストさんて）[p]
#


[aho_head_normal]
[aho_face_normal]
#クライスト	
「それよりさ、今日大活躍だったんだって？[aho_eyes_left]なんかみんな噂してるよ」[p]
#

[aho_eyes_normal]
#&f.name	
「えっ、そ、そうなの？」[p]
#

[aho_body_under_y]
[aho_arms_udekumi]
[aho_body_normal]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
#クライスト	
「なんだかさ、手当ての手際がよかったとか、食事がおいしかったとか」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_body_left_z]
[aho_head_left_z]
[aho_face_yokome_warai]

#クライスト	
「あー俺も、手当てとか料理とかしてもらいたかったなー」[p]
#

#&f.name	
「そ、そんなに・・・？」[p]
#

[aho_body_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト	
「大人気だよ、男連中に。

[aho_body_right_z]
[aho_head_right_z]
[aho_face_bisyou_youen]
ああ、でも安心して、変なことは俺がさせないから」[p]
#

#&f.name	
（変なこと・・・？）[p]
#

[aho_arms_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_metoji]
#クライスト	
「・・・。
[aho_face_yokome_majime]
・・・さて、あんまり長話しても悪いから、そろそろお暇しようかな」[p]
#

[aho_body_right_z]
[aho_arms_left_setumei]
[aho_head_right_z]
[aho_face_komari]
#クライスト	
「これからさ、王宮に呼ばれてて、色々報告しなきゃなんだよ。はあ・・・」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_body_left_z]
[aho_arms_normal]
[aho_body_normal]
[aho_face_normal]
#&f.name	
（大変そうだなあ・・・）[p]
#
#&f.name	
「忙しそうだけど、ちゃんと休んでね、クライストさん」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん。ありがとう。
[aho_head_right_z]
[aho_face_bisyou_youen]
・・・それじゃあね、おやすみ」[p]
#
[live2d_fadeout time=1000]
[endmacro]

[macro name="glif_a_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#

[cera_tatie_touroku]
[cera_tatie_show]
#セレ	
「[name]、お前に会いたいと言う王宮騎士がきているが・・・知り合いか？」[p]
#
[call storage="scenario_2/live2d_glif_macro.ks"]
[chara_hide name="cera"]
[live2d_new name="glif_r" model_id="glif_r" lip=true jname="グリフ"]
[live2d_show name="glif_r" y=-1.8 x=0.0 scale=4.2]
#グリフ	
「今晩わ、[name]さん。今、いいですか？」[p]
#

#&f.name	
「グリフ！」[p]
#

[live2d_fadeout time=1000]
[cera_tatie_show]
#セレ	
「その様子なら大丈夫そうだな」[p]
#

[cera_tatie_smile]
#&f.name	
「うん、セレさん、ありがとう」[p]
#

[chara_hide name="cera"]

[live2d_fadein time=1000]
#グリフ	
「あなたの部屋がここだって、あの女性騎士の方に教えていただいたので・・・」[p]
#

[live2d_fadeout time=1000]
[live2d_mod name="glif_r" y=-2.8 x=0.0 scale=6.2]

[live2d_fadein time=1000]
[glif_head_right_x]
[glif_arms_atamanite]
[glif_head_under_y]
[glif_exp_komari_warai]
#グリフ	
「夜なので、女性の部屋にはと・・・思ったんですが、どうしても、一言言いたくて」[p]
#

#&f.name	
「グリフ、無事だったんだね。よかった」[p]
#
[glif_arms_normal]
[glif_head_normal]
[glif_exp_normal_warai]
#グリフ	
「ええ、流石に苦戦はしましたが、幸い、かすり傷くらいで大したことはないです」[p]
#

[glif_head_left_x]
[glif_head_under_y]
[glif_exp_komari_warai]
#グリフ	
「それより、地方騎士団では、あなたの噂で持ちきりですよ」[p]
#

#&f.name	
「え、どう言うこと？」[p]
#

[glif_head_normal]
[glif_exp_normal]
#グリフ	
「手当てや食事、それから物資の補給関係・・・手際が良くてみんな大助かりだったって」[p]
#

#&f.name	
「そ、そうなのかな・・・」[p]
#

[glif_head_under_y]
[glif_eyes_under]
[glif_exp_komari]
#グリフ	
「地方騎士団が、うらやましいです。僕もあなたに・・・」[p]
#

#&f.name	
「え？」[p]
#

[glif_eyes_normal]
[glif_head_normal]
[glif_exp_normal_warai]
#グリフ	
「い、いいえ、なんでも・・・。

[glif_head_under_y]
王宮騎士団の方にも、噂もちょっと届いてまして、それであなたに・・・」[p]
#

[glif_head_normal]
[glif_head_under_y]
[glif_head_left_x]
[glif_exp_mehuse]
#グリフ	
「僕は実は・・・初めての戦場だったんです」[p]
[glif_head_normal]
[glif_exp_normal_warai]
#グリフ	
「でも、こうやって帰ってこれて、あなたの顔が見れて・・・よかった」[p]
#


#&f.name	
（グリフ・・・）[p]
#

[glif_head_normal]
[glif_eyes_right]
#グリフ	
「すみません、疲れていますよね・・・
[glif_eyes_normal]
[glif_head_under_y]
[glif_head_normal]
そろそろ、いきますね」[p]
#

[glif_head_under_y]
[glif_eyes_under]
[glif_exp_normal]
#グリフ	
「少しだけ、あなたの顔が見たくて・・・迷惑かなと思ったんですが・・・
[glif_head_normal]
[glif_eyes_normal]
[glif_eyes_under]
[glif_head_under_y]
[glif_exp_mehuse]

どうしても、やっぱり、会いたくて」[p]
#

#&f.name	
「グリフ・・・。私も・・・グリフが元気そうでよかったよ」[p]
#

[glif_eyes_normal]
[glif_head_normal]
[glif_exp_normal_warai]
#グリフ	
「[name]さん・・・ありがとうございます」[p]
#

[glif_head_under_y]
[glif_head_normal]
#グリフ	
「それじゃあ、今日は、ゆっくり休んでくださいね」[p]
#

#&f.name	
「うん、グリフもね」[p]
#

#グリフ	
「[name]さん・・・。
[glif_head_under_y]
[glif_head_normal]
[glif_exp_bisyo]
はい」[p]
#

[live2d_fadeout time=1000]

[endmacro]


[macro name="lion_b_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#

[live2d_lion_touroku]
[live2d_lion_show]
#ライオネス	
「よう、お疲れ」[p]
#

[live2d_fadeout time=1000]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[live2d_fadein time=1000]
#&f.name	
「ライオネス！無事だったんだね」[p]
#

[lioness_head_left_z]
[lioness_face_yokome_warai]
#ライオネス	
「ああ、なんか今日お前頑張ってたんだって？団長が言ってたぜ」[p]
#

[lioness_head_normal]
[lioness_face_normal]
#&f.name	
「そ、そうかな」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス	
「ああ、まあそう言うの、お前の取り柄でもあるもんなあ」[p]
#

#ライオネス	
「でも、あんま根詰めすぎんなよ」[p]
#

#&f.name	
「ライオネス 、ありがとう」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	
「ああ、んじゃな、ゆっくり休めよ、おやすみ」[p]
#
[live2d_fadeout time=1000]
[endmacro]

[macro name="rans_b_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#

[live2d_rans_touroku]
[live2d_rans_show]
#ランスロット	
「[name]、いるか？」[p]
#
[live2d_fadeout time=1000]
[live2d_mod name="rans2" y=-3.0 scale=6.5]
[live2d_fadein time=1000]
[rans_exp_normal_warai]
#&f.name	
「あ、ランスロット！無事だったんだね」[p]
#

[rans_head_left_z]
[rans_eyes_left]
#ランスロット	
「ああ。グレッグ団長がお前のことを褒めていてな、私も一言言いにきた」[p]
#

#&f.name	
「グレッグ団長が？」[p]
#

[rans_eyes_normal]
[rans_head_normal]
#ランスロット	
「ああ、補給や食事、団員の傷の手当てなど、頑張ってくれたそうじゃないか」[p]
#

#&f.name	
「そ、そうかな」[p]
#

[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「ああ、師匠としては私も鼻が高いぞ」[p]
#

#&f.name	
「ランスロット・・・」[p]
#

#ランスロット	
「ともかく今日は疲れただろう、ゆっくり休むんだぞ」[p]
#

#&f.name	
「うん、ランスロットも、無理しないでね」[p]
#

[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「ああ、ありがとう。おやすみ」[p]
#
[live2d_fadeout time=1000]
[endmacro]

[macro name="kra_b_kouhou"]
#&f.name	
「あれ、誰だろう」[p]
#
[live2d_kra_touroku]
[live2d_kra_show]
[live2d_fadeout time=1000]

[live2d_mod name="aho" y=-2.8 scale=6.2]
[live2d_fadein time=1000]
[aho_face_normal]
#クライスト	
「[name]ちゃん、今、ちょっといい？」[p]
#

#&f.name	
「あ、クライストさん、無事だったんだね」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト	
「そりゃあルシアを倒したのは俺だからね、

[aho_head_left_z]
[aho_eyes_left]
まあちょっと、流石に疲れたけど」[p]
#

#&f.name	
「クライストさん・・・」[p]
#

[aho_head_normal]
[aho_eyes_normal]
#クライスト	
「それより、今日すごい頑張ってたんだって？団長が褒めてたよ」[p]
#

#&f.name	
「え、そうかな」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん。頑張ってる君もみたかったなあ、俺。
[aho_head_right_z]
[aho_face_bisyou_youen]
きっと可愛かったんだろうな」[p]
#

#&f.name	
「えっ・・・ええ・・・？」[p]
#

[aho_head_normal]
[aho_face_smile]
#クライスト	
「あはは、それじゃ、[aho_face_normal]

今日は疲れてるでしょ。ゆっくり休んでね」[p]
#

#&f.name	
「クライストさん・・・ありがとう」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん、それじゃね」[p]
#


[live2d_fadeout time=1000]
[endmacro]

[macro name="glif_b_kouhou"]
[call storage="scenario_2/live2d_glif_macro.ks"]
#&f.name	
「あれ、誰だろう」[p]
#

[cera_tatie_touroku]
[cera_tatie_show]
#セレ	
「[name]、お前に会いたいと言う王宮騎士がきているが・・・知り合いか？」[p]
#

[chara_hide name="cera"]
[live2d_new name="glif_r" model_id="glif_r" lip=true jname="グリフ"]
[live2d_show name="glif_r" y=-1.8 x=0.0 scale=4.2]

#グリフ	
「今晩わ、[name]さん。今、いいですか？」[p]
#

#&f.name	
「グリフ！」[p]
#

[live2d_fadeout time=1000]
[cera_tatie_show]
[cera_tatie_smile]

#セレ	
「その様子なら大丈夫そうだな」[p]
#

#&f.name	
「うん、セレさん、ありがとう」[p]
#

[chara_hide name="cera"]
[live2d_mod name="glif_r" y=-2.8 x=0.0 scale=6.2]
[live2d_fadein time=1000]
[glif_exp_normal_warai]

#グリフ	
「突然すみません、だけど地方騎士団で、あなたが凄く頑張ってたって話を聞いて、一言言いたくて」[p]
#

#&f.name	
「ううん、わざわざ、ありがとうグリフ。グリフは無事だったんだね」[p]
#

[glif_head_under_y]
[glif_head_normal]
#グリフ	
「はい。初めての戦場でしたが・・・なんとか乗り越えられた感じです」[p]
#

#グリフ	
「あの女性騎士の方も、[name]さんがすごく頑張ってくれたって言ってましたよ」[p]
#

#&f.name	
「セレさんが・・・」[p]
#

[glif_head_under_y]
[glif_head_normal]
#グリフ	
「はい。今日はとても・・・疲れてますよね。いきなりすみません。ゆっくり休んでください」[p]
#

#&f.name	
「うん。グリフもちゃんと休んでね」[p]
#

[glif_head_under_y]
[glif_head_normal]
[glif_exp_bisyo]
#グリフ	
「ありがとうございます。それじゃ、おやすみなさい」[p]
#
[live2d_fadeout time=1000]
[endmacro]










[return]
