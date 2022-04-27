


;王都を出る
[macro name="map_event_out_macro"]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka2_tasogare.jpg"]
[endif]




[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]


[elsif exp="f.event_8_sharomu_tegami==1&&f.irain_move==1"]
[iriguti_event]
[jump target=*map]

[elsif exp="f.event_war_kra_sumi==1&&f.friend==0&&f.event_main_16_days>0&&f.event_epi7_kra_ok<1"]
;クライベント
[skip_button]
[message_settei_ad]
[kra_epi_1]
[eval exp="f.event_epi7_kra_ok=1"]
[jump target=*map]
;[elsif exp=""]

;[elsif exp=""]


[else]





[message_settei_ad]
#&f.name
「王都を出る？」[p]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【王都を出ますか？】

[glink target=*out_1 text="（王都を出る）" size=17 width=600 x=65 y=200]
[glink target=*out_2 text="（出ない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*out_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[message_kakusu_ad]
[eval exp="f.irain_move=f.irain_move+1"]
[eval exp="f.place_outo=1"]
[shuuhen_outo_map]



*out_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.irain_move=f.irain_move+1"]

[if exp="f.event_main_8_days>0"]
[message_settei_ad]
[iriguti_event]
;[jump target=*map]
[endif]




;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[5]>0"]
[eval exp="tf.place_num=5"]

[date_osasoi]
[eval exp="f.irain_move=f.irain_move-1"]
[jump target=*map]
[endif]
[endif]



[endif]

*map
[message_kakusu_ad]
[creru_outo_map]






[endmacro]





[return]



