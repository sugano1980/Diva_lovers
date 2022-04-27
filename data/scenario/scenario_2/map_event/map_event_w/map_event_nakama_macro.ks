

;仲間
[macro name="map_event_nakama_macro"]

[map_flag_delete]
[eval exp="f.place_hune_nakama=1"]

[if exp="f.irain_move==0"]
[bg storage="hune_yoru_room.jpg"]
[else]
[bg storage="hune_room.jpg"]
[endif]








;-------------通常イベント

;デート内容---------------------------------
[if exp="f.date_now==1"]
[stopbgm]
[playse storage="wave1_koukaonlabo.ogg"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[skip_button]
[date_go]
[place_end]
[stopse]
[jump target=*map]
[endif]


;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[18]>0"]
[eval exp="tf.place_num=18"]
[date_osasoi]
[jump target=*end]
[endif]
[endif]
;------------------------------------------


[message_settei_ad]
[item_get]

*end


*map
[message_kakusu_ad]

[hune_map]

[endmacro]







[return]
