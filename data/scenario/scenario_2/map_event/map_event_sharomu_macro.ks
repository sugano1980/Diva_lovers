


;シャローム
[macro name="map_event_sharomu_macro"]

[skip_button]
[if exp="f.irain_move==0"]
[bg storage="sharomu_yuu_tasogare.jpg"]
[else]
[bg storage="sharomu_tasogare.jpg"]
[endif]





[if exp="f.event_sakaba==1"]


[message_kakusu_ad]


[jump target=*map]

[elsif exp="f.event_main_8_days>0"]
[sharomu_bgm]
[message_settei_ad]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【何をする？】

[glink target=*town_1 text="（街を出る）" size=17 width=600 x=65 y=200]

[if exp="f.irain_move!=0"]
[glink target=*town_2 text="（食事をしていく）" size=17 width=600 x=65 y=260]
[endif]
[glink target=*town_3 text="（街の散策）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*town_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[fadeoutbgm time=1000]
[shuuhen_outo_map]





*town_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


[fadeoutbgm time=1000]
[eval exp="f.r_ika=1"]

[if exp="f.friend>0"]

[if exp="f.friend==1"]
[live2d_rans_touroku]
[live2d_fadeout time=1000]
[live2d_rans_show]
[shokuji_rans]
[eval exp="f.friend=1"]
[elsif exp="f.friend==2"]

[shokuji_lion]
[eval exp="f.friend=2"]
[elsif exp="f.friend==3"]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show]
[shokuji_kra]
[eval exp="f.friend=3"]
[endif]


[else]
[restaurant_haikei]
[menu_choice]
[bg storage="&f.shokuji_haikei"]
[onaka_ippai]


[endif]

[eval exp="f.r_ika=0"]
[message_settei_ad]
[jump target=*end]



*town_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]



;桟橋
[fadeoutbgm time=1000]
[if exp="f.irain_move==0"]
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]
[else]
[bg storage="sharomusanbasi_tasogare.jpg"]
[endif]
[sharomu_bgm]

[item_get]



[jump target=*map]
;エルムナード編
[elsif exp="f.event_sub_14[3]==1&&f.irain_move>0&&f.event_main_14_days>0"]

[jump storage="scenario_2/map_event/erumu_sharomu_event.ks"]
*erumu_end
[eval exp="f.event_sub_14[3]=0"]
[eval exp="f.event_sub_14_sumi[3]=1"]

[elsif exp="f.event_sub_14[4]==1&&f.friend==0&&f.event_main_14_days>0"]

[jump storage="scenario_2/map_event/erumu_sharomu_event.ks"]
*erumu_end2
[eval exp="f.event_sub_14[4]=0"]
[eval exp="f.event_sub_14_sumi[4]=1"]

;エルムナード編以降
[elsif exp="f.disc_num>2&&f.date_now!=1"]
[sharomu_bgm]
[message_settei_ad]



;--------------------

;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[7]>0"]
[eval exp="tf.place_num=7"]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;-------------------



[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【何をする？】

[glink target=*town_1 text="（街を出る）" size=17 width=600 x=65 y=200]

[if exp="f.irain_move!=0"]
[glink target=*town_2 text="（食事をしていく）" size=17 width=600 x=65 y=260]
[endif]
[glink target=*town_3 text="（街の散策）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*town_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[fadeoutbgm time=1000]
[shuuhen_outo_map]





*town_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


[fadeoutbgm time=1000]
[eval exp="f.r_ika=1"]

[if exp="f.friend>0"]

[if exp="f.friend==1"]
[live2d_rans_touroku]
[live2d_fadeout time=1000]
[live2d_rans_show]
[shokuji_rans]
[eval exp="f.friend=1"]
[elsif exp="f.friend==2"]

[shokuji_lion]
[eval exp="f.friend=2"]
[elsif exp="f.friend==3"]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show]
[shokuji_kra]
[eval exp="f.friend=3"]
[endif]


[elsif exp="f.friend==0"]
[restaurant_haikei]
[menu_choice]
[bg storage="&f.shokuji_haikei"]
[onaka_ippai]


[endif]

[eval exp="f.r_ika=0"]
[message_settei_ad]
[jump target=*end]



*town_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]



;桟橋
[fadeoutbgm time=1000]
[if exp="f.irain_move==0"]
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]
[elsif exp="f.irain_move>0"]
[bg storage="sharomusanbasi_tasogare.jpg"]
[endif]
[sharomu_bgm]

[item_get]



[jump target=*map]


[else]


;デート内容
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[skip_button]
[date_go]
[place_end]
[jump target=*map]
[endif]



[message_settei_ad]
#&f.name
「特に今は何もないみたい」[p]


[message_kakusu_ad]
[shuuhen_outo_map]


[endif]

*map
*end
[message_kakusu_ad]
[shuuhen_outo_map]





[endmacro]





[return]



