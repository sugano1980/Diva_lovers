

;廊下
[macro name="map_event_rouka_macro"]

[map_flag_delete]
[eval exp="f.place_hune_rouka=1"]

[if exp="f.irain_move==0"]
[bg storage="hune_yuu_rouka.jpg"]
[else]
[bg storage="hune_rouka.jpg"]
[endif]






;-------------通常イベント
[if exp="f.event_main_17_days==5&&f.lion_flag==1&&f.date_now!=1&&f.friend==0"]
[skip_button]
[message_settei_ad]
;イベント内容
[eval exp="f.event_sub_17[4]=0"]
[eval exp="f.event_sub_17_sumi[4]=1"]
;働かされるライオネス
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*lioness_work]
*lioness_work_end

[elsif exp="f.event_main_17_days==4&&f.lion_flag==1&&f.date_now!=1&&f.friend==0"]
[skip_button]
[message_settei_ad]
;[tosho_fair]
;[eval exp="tf.tuika_num = "]
;[eval exp="tf.kaiwa_num  = "]
;[kaiwa_tuika]
;[kaiwa_tuika_end_heya]
[eval exp="f.event_sub_17[5]=0"]
[eval exp="f.event_sub_17_sumi[5]=1"]
;ライオネス冷やかし
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*lioness_hiyakasi]
*lioness_hiyakasi_end


[else]


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
[if exp="f.place_chara[17]>0"]
[eval exp="tf.place_num=17"]
[date_osasoi]
[jump target=*end]
[endif]
[endif]
;------------------------------------------


[message_settei_ad]
[item_get]

*end

[endif]
*map
[message_kakusu_ad]

[hune_map]

[endmacro]







[return]
