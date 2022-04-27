
;酒場
[macro name="map_event_sakaba_macro"]
[call storage="scenario_2/live2d_lioness_macro.ks"]

[if exp="f.irain_move==0"]
[bg storage="crerumatinaka1_yuu_tasogare.jpg"]
[else]
[bg storage="crerumatinaka1_tasogare.jpg"]
[endif]


[if exp="f.event_sakaba==1"]

[jump storage="scenario_2/episode/epi1.ks" target=*sakaba]

[elsif exp="f.event_main_8_days>0"]

[message_settei_ad]
[sakaba_event]
[jump target=*map]

;[elsif exp=""]


[elsif exp="f.event_sub_14[0]==1&&f.date_now!=1&&f.friend==0&&f.irain_move>0&&f.event_main_14_days>0"]
[message_settei_ad]
[sakaba_event]
[jump target=*map]


[elsif exp="f.event_epi7_kra_ok==1&&f.friend==0"]
[skip_button]
[message_settei_ad]
[kra_epi_2]
[eval exp="f.event_epi7_kra_ok=2"]
[jump target=*map]
[else]


;--------------------
;デート内容
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[skip_button]
[date_go]
[place_end]
[jump target=*map]
[endif]

;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[1]>0"]
[eval exp="tf.place_num=1"]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;---------------------
[message_settei_ad]
[item_get]


[endif]

*map
[message_kakusu_ad]
[creru_outo_map]






[endmacro]




[return]
