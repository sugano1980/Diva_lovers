


;稽古の森
[macro name="map_event_keiko_macro"]
[if exp="f.irain_move==0"]
[bg storage="keiko_yuu_tasogare.jpg"]
[else]
[bg storage="keiko_tasogare.jpg"]
[endif]



[if exp="f.event_sakaba==1"]

;[elsif exp=""]

;[elsif exp=""]

[elsif exp="f.event_sub_14[5]==1&&f.friend==0&&f.event_main_14_days>0||f.event_sub_14[6]==1&&f.friend==3&&f.event_main_14_days>0"]
[call storage="scenario_2/map_event/erumu_keiko_event.ks"]
[skip_button]
[erumu_keiko_event]

[jump target=*map]

[else]

;ランチイベント------------------------
[if exp="f.lunch_pack==1"]
[lunch_event]
[place_end]
[jump target=*map]
[endif]

;デート内容
[if exp="f.date_now==1"]
[stopbgm]
[playbgm storage="raina_p_ontama.ogg"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[skip_button]
[date_go]
[place_end]
[fadeoutbgm time=2000]
[jump target=*map]
[endif]

;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[8]>0"]
[eval exp="tf.place_num=8"]

[date_osasoi]
[jump target=*map]
[endif]
[endif]
;---------------------------------------

[message_settei_ad]
#&f.name
「剣の稽古をしていこうかな？」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【稽古をしていく？】

[glink target=*keiko_f_1 text="（稽古する）" size=17 width=600 x=65 y=200]
[glink target=*keiko_f_2 text="（しない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]





[s]

*keiko_f_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.irain_tec=f.irain_tec+10"]
[playse storage="item_status_up_onjin.ogg"]
「技術が１０アップ！！」[p]

[jump target=*map]




*keiko_f_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]



[endif]
*map
[message_kakusu_ad]
[shuuhen_outo_map]







[endmacro]





[return]



