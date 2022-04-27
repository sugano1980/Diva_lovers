

;王宮
[macro name="map_event_oukyu_macro"]

;テストコード
[call storage="scenario_2/episode/event_14_sub_story.ks"]
[if exp="f.irain_move==0"]
[bg storage="oukyuu_yuu_tasogare.jpg"]
[else]
[bg storage="oukyuu_tasogare.jpg"]
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
[skip_button]
[oukyu_event]

[jump target=*map]


[elsif exp="f.event_sub_14[15]==1&&f.friend==0&&f.event_main_14_days>8&&f.event_main_14_days>8"]
[skip_button]
[oukyu_mae_rans_kra]
[message_kakusu_ad]
[eval exp="f.event_sub_14[15]=0"]
[eval exp="f.event_sub_14_sumi[15]=1"]
;[eval exp="f.irain_move=0"]
[creru_outo_map]
;[elsif exp=""]

;[elsif exp=""]


[else]


;------------------------
;デート内容
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[playbgm storage="koucha_ontama.ogg"]
[skip_button]
[date_go]
[place_end]
[stopbgm]
[jump target=*map]
[endif]
;--------------------

;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[6]>0"]
[eval exp="tf.place_num=6"]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;----------------------


[message_settei_ad]
#&f.name
「王宮へはまだ行けないよ」[p]
#


[endif]
*map
[message_kakusu_ad]
[creru_outo_map]

[endmacro]




[return]
