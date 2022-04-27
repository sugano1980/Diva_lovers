

;裏通り
[macro name="map_event_uradoori_macro"]

[if exp="f.irain_move==0"]
[bg storage="creru_uradoori_yuu.jpg"]
[else]
[bg storage="creru_uradoori.jpg"]
[endif]


[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]


[elsif exp="f.event_main_8_days>0"]
[message_settei_ad]
[uradoori_event]
[jump target=*map]
[elsif exp="f.event_sub_14[1]==1&&f.event_main_14_days>0"]
[message_settei_ad]
[uradoori_event]
;[jump target=*map]

[elsif exp="f.event_main_5==1"]
;-----------------------------------

;--------------------------------------

[message_settei_ad]

[jump storage="scenario_2/episode/epi2.ks" target=*event_main_5]

[elsif exp="f.event_epi5_rans_ok==1&&f.irain_move==0&&f.event_main_15_days==7"]
;ランスフラグイベント
[message_settei_ad]
[jump storage="scenario_2/map_event/erumu_uradoori_event.ks"]
*rans_end
;--------------------------------
[else]


;--------------------------
;デート内容
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[playse storage="zawameki_soto.ogg"]
[skip_button]
[date_go]
[place_end]
[stopse]
[jump target=*map]
[endif]
;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[4]>0"]
[eval exp="tf.place_num=4"]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;-------------------------------


[message_settei_ad]
[item_get]



[endif]

*map
[message_kakusu_ad]
[creru_outo_map]






[endmacro]





[return]
