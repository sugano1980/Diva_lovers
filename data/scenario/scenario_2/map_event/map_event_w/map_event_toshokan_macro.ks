

;図書館
[macro name="map_event_toshokan_macro"]

[map_flag_delete]
[eval exp="f.place_w_toshokan=1"]

[if exp="f.irain_move==0"]
[bg storage="toshokan_room1_tasogare.jpg"]
[else]
[bg storage="toshokan_room1_tasogare.jpg"]
[endif]




;デート内容---------------------------------
[if exp="f.date_now==1"]

[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
*date_time

[skip_button]
[date_go]
*date_end
[place_end]
[stopse]
[jump target=*map]
[endif]


;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[20]>0"]
[eval exp="tf.place_num=20"]
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

[wesuta_map]

[endmacro]







[return]
