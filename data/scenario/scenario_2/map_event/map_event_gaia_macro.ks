


;ガイアの森
[macro name="map_event_gaia_macro"]

[free name="event" layer=2]
[message_kakusu_ad]

[playbgm storage="gaia_musmus.ogg"]


[if exp="f.irain_move==0"]
[bg storage="gaiamori_yuu_tasogare.jpg"]
[else]
[bg storage="gaiamori_tasogare.jpg"]
[endif]
;[message_settei_ad]

;[jump storage="scenario_2/episode/epi_normalend.ks"]
;[jump storage="scenario_2/episode/epi6.ks"]
;[restaurant_choice]
;[menu_choice_cafe]
;[jump storage="scenario_2/mini_game/battle.ks"]
;[jump storage="scenario_2/love_mode/love_mode_run.ks"]
;[jump storage="scenario_2/ryouri/ryouri_run.ks"]
;何もなければ占いへ

;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump storage="scenario_2/uranai/uranai.ks"]
;[jump storage="scenario_2/mini_game/mini_game.ks"]
;[jump storage="scenario_2/mini_game/kujibiki.ks"]
;--------------------------------
;クラシナリオ


;ランチイベント
[if exp="f.lunch_pack==1"]
[lunch_event]
[jump target=*map]
[endif]

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
[if exp="f.place_chara[2]>0"]
[eval exp="tf.place_num=2"]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;-------------------------------------------------
[jump storage="scenario_2/uranai/uranai.ks"]




*map
[message_kakusu_ad]
[stopbgm]
[creru_outo_map]




[endmacro]






[return]
