*first

[plugin name=timer]
[timer_set minuts=0 seconds=10 x=250 y=-100 timeupstorage=scenario_2/kouhou/kouhou_run.ks]
[timer_start]
;ボタンオン
[clearstack]


[eval exp="tf.gauge_button_x=10"]
[eval exp="tf.gauge_b_y=160"]
[button graphic="button/toumei.png" name="button" fix="true" width=100 height=45 storage="scenario_2/kouhou/kouhou_command.ks" target=*siki x=&tf.gauge_button_x y=&tf.gauge_b_y]

[eval exp="tf.gauge_button_x =tf.gauge_button_x+130"]
[button graphic="button/toumei.png" name="button" fix="true" width=100 height=45 storage="scenario_2/kouhou/kouhou_command.ks" target=*jinin x=&tf.gauge_button_x y=&tf.gauge_b_y]

[eval exp="tf.gauge_button_x =tf.gauge_button_x+130"]
[button graphic="button/toumei.png" name="button" fix="true" width=100 height=45 storage="scenario_2/kouhou/kouhou_command.ks" target=*busshi x=&tf.gauge_button_x y=&tf.gauge_b_y]






;[if exp="tf.kouhou_event>1"]

*modo
[w][wait time=80]
[if exp="tf.kisi_onaka==1"]
[eval exp="tf.gauge_suuti[0]=tf.gauge_suuti[0]-1"]
[elsif exp="tf.kisi_kega==1"]
[eval exp="tf.gauge_suuti[1]=tf.gauge_suuti[1]-1"]
[elsif exp="tf.kisi_busshi==1"]
[eval exp="tf.gauge_suuti[2]=tf.gauge_suuti[2]-1"]
[endif]

;どれか一つでも０ならゲームオーバー
[if exp="tf.gauge_suuti[0]<1||tf.gauge_suuti[1]<1||tf.gauge_suuti[2]<1"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[clearfix]
[bg storage="black.png"]
[game_over]

[endif]

;ゲージ表示
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
[free name="gauge" layer=0]
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

[if exp="tf.gauge_in!=0"]
[image layer=0 page=fore storage=&tf.gauge_in  name="gauge" height=24 width=&tf.gauge_size_w x=&tf.gauge_b_x y=&tf.gauge_b_y]
[endif]
[image layer=0 page=fore storage="kouhou/kouhou_gauge.png"  name="gauge" x=&tf.gauge_b_x y=&tf.gauge_b_y]
[if exp="tf.gauge_num==0"]
[ptext layer=0 page=fore text="0" size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]

[else]
[ptext layer=0 page=fore text=&tf.gauge_num size="25" face="antique" name="gauge" x=&tf.gauge_number_x y=&tf.gauge_b_y]
[endif]



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

;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[jump target=*modo]

;[jump storage="scenario_2/kouhou/kouhou_command.ks" target=*gauge_hyouji_0]
;[endif]


;ゲージ表示ここまで


[s]



*siki
[clearstack]
[cm]
[timer_delete]
[if exp="tf.kisi_onaka!=1"]
[playse storage="hazure_koukaonlabo.ogg"]
[jump storage="scenario_2/kouhou/kouhou_command.ks" target=*first]
[endif]
[playse storage="load_complete.ogg"]
[image layer=0 page=fore storage="kouhou/shokuji.png" height=60 width=39 name="siki" x=710 y=-390]
[image layer=0 page=fore storage="kouhou/shokuji.png" height=60 width=39 name="siki" x=645 y=-390]
[image layer=0 page=fore storage="kouhou/shokuji.png" height=60 width=39 name="siki" x=580 y=-390]
[image layer=0 page=fore storage="kouhou/shokuji.png" height=60 width=39 name="siki" x=515 y=-390]





[anim name="siki" top="+=780" time=500]

[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=515 y=340 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=60 width=60 name="kira" x=595 y=390 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=80 width=80 name="kira" x=615 y=450 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=650 y=340 time=100]

[anim name="siki" top="-=30" time=700]
[anim name="siki" top="+=30" time=500]

[wait time=500]
[eval exp="tf.gauge_suuti[0]=tf.gauge_suuti[0]+1"]
[onaka_delete]
[eval exp="tf.kisi_onaka=0"]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[free name="gauge" layer=0]
[free name="gauge_e" layer=1]
[free name="kira" layer=0]
[free name="siki" layer=0]
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]



*jinin
[clearstack]
[cm]
[timer_delete]
[if exp="tf.kisi_kega!=1"]
[playse storage="hazure_koukaonlabo.ogg"]
[jump storage="scenario_2/kouhou/kouhou_command.ks" target=*first]
[endif]
[cm]
[playse storage="load_complete.ogg"]
[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate" x=708 y=-32]
[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate" x=613 y=-32]
[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate" x=516 y=-32]

[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate2" x=708 y=-135]
[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate2" x=613 y=-135]
[image layer=0 page=fore storage="kouhou/teate.png" height=53 width=40 name="teate2" x=516 y=-135]

[anim name="teate" top="+=64" time=500]
[anim name="teate" top="-=30" time=700]
[anim name="teate" top="+=30" time=500]

[anim name="teate2" top="+=270" time=500]
[anim name="teate2" top="-=30" time=700]
[anim name="teate2" top="+=30" time=500]

[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=485 y=35 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=60 width=60 name="kira" x=565 y=95 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=80 width=80 name="kira" x=645 y=135 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=620 y=35 time=100]
[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=700 y=55 time=100]



[wait time=500]
[eval exp="tf.gauge_suuti[1]=tf.gauge_suuti[1]+1"]
[kega_delete]
[eval exp="tf.kisi_kega=0"]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[free name="gauge" layer=0]
[free name="gauge_e" layer=1]
[free  name="teate" layer=0]
[free  name="teate2" layer=0]
[free  name="kira" layer=0]

[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]


*busshi
[clearstack]
[cm]
[timer_delete]
[if exp="tf.kisi_busshi!=1"]
[playse storage="taoreru_onjin.ogg"]
[jump storage="scenario_2/kouhou/kouhou_command.ks" target=*first]
[endif]
[playse storage="load_complete.ogg"]
;[playse storage="item_status_up_onjin.ogg"]
;[playse storage="kirakira_onjin.ogg"]
[eval exp="tf.gauge_suuti[2]=tf.gauge_suuti[2]+1"]
[image layer=0 page=fore storage="kouhou/busshi.png" height=222 width=360 name="busshi" x=70 y=-335]
[anim name="busshi" top="+=670" time=500]



;[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=50 ;y=365 time=100]
;[image layer=0 page=fore storage="kirakira_3.png" height=60 width=60 name="kira" x=170 y=455 time=100]
;[image layer=0 page=fore storage="kirakira_3.png" height=80 width=80 name="kira" x=250 y=465 time=100]
;[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=225 y=365 time=100]
;[image layer=0 page=fore storage="kirakira_3.png" height=100 width=100 name="kira" x=305 y=395 time=100]



[anim name="busshi" top="-=50" time=700]
[anim name="busshi" top="+=50" time=500]
[wait time=500]
[free name="gauge" layer=0]
[free name="gauge_e" layer=1]
[free name="kira" layer=0]
[eval exp="tf.kisi_hyouji=0"]
[eval exp="tf.kouhou_event=1"]
[jump storage="scenario_2/kouhou/kouhou_run.ks" target=*gauge_hyouji_0]


