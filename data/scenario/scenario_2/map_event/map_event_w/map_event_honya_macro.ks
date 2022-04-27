

;本屋
[macro name="map_event_honya_macro"]

[map_flag_delete]
[eval exp="f.place_w_honya=1"]

[if exp="f.irain_move==0"]
[bg storage="wesuta_honya_yuu.jpg"]
[else]
[bg storage="wesuta_honya.jpg"]
[endif]



[if exp="f.date_now!=1"]
[message_settei_ad]

;品揃え本屋
[eval exp="f.item_other=1"]

[eval exp="f.store_season_7=1"]
[eval exp="f.store_season_5_cook=0"]
[eval exp="f.store_season_6=0"]


[refresh_hanyou]
[store_money]
*store_jump
;[jump target=*end]
[endif]

;-------------通常イベント

;デート内容---------------------------------
[if exp="f.date_now==1"]

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
[if exp="f.place_chara[21]>0"]
[eval exp="tf.place_num=21"]
[date_osasoi]
[jump target=*end]
[endif]
[endif]
;------------------------------------------




;[item_get]

*end


*map
[message_kakusu_ad]

[wesuta_map]

[endmacro]







[return]
