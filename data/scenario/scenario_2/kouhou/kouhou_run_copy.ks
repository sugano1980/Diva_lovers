;背景表示

*timeup
[if exp="tf.kisi_onaka==1"]
[timer_delete]
[onaka_delete]
[eval exp="tf.kisi_onaka=0"]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[free name="gauge" layer=0]

[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]

[elsif exp="tf.kisi_kega==1"]
[timer_delete]
[kega_delete]
[eval exp="tf.kisi_kega=0"]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[free name="gauge" layer=0]

[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]
[elsif exp="tf.kisi_busshi==1"]
[timer_delete]
[image layer=0 page=fore storage="kouhou/busshi.png" height=222 width=360 name="busshi" x=120 y=335]
[free name="gauge" layer=0]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]

[endif]



[bg storage="kouhou.png"]
[call storage="scenario_2/kouhou/kouhou_macro.ks"]
[call storage="scenario_2/kouhou/serihu_macro.ks"]
*koko
[playbgm storage="erumu_senjou.ogg"]
;ずっと表示
[eval exp="tf.gauge_size_w_e =600"]
[eval exp="tf.kouhou_end=0"]
[eval exp="tf.gauge_e_x=-30"]
[eval exp="tf.gauge_e_x_i=-30"]
[eval exp="tf.gauge_e_y=10"]
[image layer=2 page=fore storage="kouhou/gauge_e.png"  name="gauge_e" height= 24 width=600 x=&tf.gauge_e_x y=&tf.gauge_e_y]



;ボタンイメージ
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=10"]
[eval exp="tf.gauge_button_x_b =tf.gauge_button_x+47"]
[eval exp="tf.gauge_b_y=160"]
[eval exp="tf.gauge_button_y =tf.gauge_b_y+12"]

[eval exp="tf.gauge_hyouji=3"]

*gauge_hyouji_button
[if exp="tf.gauge_hyouji==3"]
[eval exp="tf.button_gra = 'kouhou/siki_button.png'"]
[eval exp="tf.text_b ='食事'"]
[eval exp="tf.target_b = '*siki'"]
[elsif exp="tf.gauge_hyouji==2"]
[eval exp="tf.button_gra = 'kouhou/jinin_button.png'"]
[eval exp="tf.text_b ='手当'"]
[eval exp="tf.target_b = '*jinin'"]
[elsif exp="tf.gauge_hyouji==1"]
[eval exp="tf.button_gra = 'kouhou/busshi_button.png'"]
[eval exp="tf.text_b ='補給'"]
[eval exp="tf.target_b = '*busshi'"]
[endif]

[ptext layer=0 page=fore text=&tf.text_b name="button" size="20" face="antique" edge=0xd3d3d3 color=black x=&tf.gauge_button_x_b y=&tf.gauge_button_y]
[image layer=0 page=fore storage=&tf.button_gra name="button" x=&tf.gauge_button_x y=&tf.gauge_b_y]


[if exp="tf.gauge_hyouji>1"]
[eval exp="tf.gauge_hyouji=tf.gauge_hyouji-1"]
[eval exp="tf.gauge_button_x =tf.gauge_button_x+130"]
[eval exp="tf.gauge_button_x_b =tf.gauge_button_x+47"]
[eval exp="tf.gauge_button_y =tf.gauge_b_y+12"]
[jump target=*gauge_hyouji_button]
[endif]



;ゲージ表示
[eval exp="tf.busshi_hyouji_0=0"]
[eval exp="tf.gauge_suuti =[100,100,100]"]
[eval exp="tf.kouhou_event=1"]
;物資表示
[eval exp="tf.busshi_x=70"]
[eval exp="tf.busshi_y=335"]
[image layer=0 page=fore storage="kouhou/busshi.png" height=222 width=360 name="busshi" x=&tf.busshi_x y=&tf.busshi_y]


*gauge_hyouji_0

[if exp="tf.gauge_suuti[0]>100"]
[eval exp="tf.gauge_suuti[0]=100"]
[elsif exp="tf.gauge_suuti[1]>100"]
[eval exp="tf.gauge_suuti[1]=100"]
[elsif exp="tf.gauge_suuti[2]>100"]
[eval exp="tf.gauge_suuti[2]=100"]
[endif]


[eval exp="tf.gauge_b_x=90"]
[eval exp="tf.gauge_b_y=54"]
[eval exp="tf.gauge_name_x=24"]
[eval exp="tf.gauge_name_y=tf.gauge_b_y+3"]
[eval exp="tf.gauge_huda_x=2"]
[eval exp="tf.gauge_number_x=tf.gauge_b_x+230"]
[eval exp="tf.gauge_button_x=tf.gauge_number_x+80"]
[eval exp="tf.gauge_hyouji=3"]

*gauge_hyouji

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





[eval exp="tf.kisi_hyouji=0"]

[if exp="tf.kouhou_setumei_end!=1"]
[kouhou_setumei]
[endif]
;騎士アニメ
*kisi_anime
[eval exp="tf.kouhou_end=tf.kouhou_end+1"]
;終了ゲージ
[eval exp="tf.gauge_how_e = tf.kouhou_end"]
[end_gauge_width]
[image layer=1 page=fore storage="kouhou/gauge_e_in.png"  name="gauge_e" height=24 width=&tf.gauge_size_w_e x=&tf.gauge_e_x_i y=&tf.gauge_e_y]



;終了条件確認;59
[if exp="tf.kouhou_end>59"]
[fadeoutbgm time=1000]
[kouhou_end]
;テストコード
;[if exp="f.erumu_test==1"]
;[jump storage="scenario_2/test_erumu.ks"]
;[endif]

[jump storage="scenario_2/episode/epi_flag_check.ks"]
[endif]

;前の騎士表示あった場合は削除
[if exp="tf.kisi_hyouji>1"]
[eval exp="tf.kisi_hyouji=0"]
[free name="kisi" layer=0]
[free name="kisi_t" layer=0]
[kouhou_random_keisan]
[elsif exp="tf.kisi_hyouji>0"]
[free name="kisi" layer=0]
[free name="kisi_t" layer=0]
[endif]




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
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*kisi_hyouji]
[endif]



;隊長騎士表示
[eval exp="tf.kisi_x_t=tf.kisi_x-350"]
[eval exp="tf.kisi_y_t=tf.kisi_y-50"]
[image layer=0 page=fore storage="kouhou/kisi_midori_g.gif" height="67" width="55" name="kisi_t" x=&tf.kisi_x_t y=&tf.kisi_y_t]

;アニメーションで出撃していく

[anim name="kisi" left="-=800" time=3000]
[anim name="kisi_t" left="-=800" time=3000]
[wait time=3000]
[free name="gauge_e" layer=1]
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*kisi_anime]



*end
[s]


セレ説明マクロ

数値変動ランダム計算

士気、物資、人員のうち
士気であれば士気-10士気フラグフラグオフにならない限り再計算を行わない
物資であれば物資-10士気フラグフラグオフにならない限り再計算を行わない
人員であれば人員-10士気フラグフラグオフにならない限り再計算を行わない




