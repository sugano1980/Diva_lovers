

;甲板
[macro name="map_event_kanpan_macro"]

[map_flag_delete]
[eval exp="f.place_hune_kanpan=1"]

[if exp="f.irain_move==0"]
[bg storage="kanpan_yuu_tasogare.jpg"]
[else]
[bg storage="kanpan_tasogare.jpg"]
[endif]






;-------------通常イベント
[if exp="f.event_main_17_days==5&&f.event_sub_17_sumi[0]!=1&&f.date_now!=1&&f.friend==0"]
[skip_button]
[message_settei_ad]
;イベント内容
[eval exp="f.event_sub_17[0]=0"]
[eval exp="f.event_sub_17_sumi[0]=1"]
;モンスター襲撃
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*monster_battle]
*monster_battle_end

[elsif exp="f.event_main_17_days==3&&f.lion_flag==1&&f.date_now!=1&&f.friend==0"]
[skip_button]
[message_settei_ad]
[eval exp="f.event_sub_17[2]=0"]
[eval exp="f.event_sub_17_sumi[2]=1"]
;ライオネスとラプタ
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*lioness_raputa]
*lioness_raputa_end


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
[if exp="f.place_chara[16]>0"]
[eval exp="tf.place_num=16"]
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
