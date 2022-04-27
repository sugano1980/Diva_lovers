

;食堂
[macro name="map_event_shokudo_macro"]

[map_flag_delete]
[eval exp="f.place_hune_shokudou=1"]

[if exp="f.irain_move==0"]
[bg storage="hune_shokudou.jpg"]
[else]
[bg storage="hune_shokudou.jpg"]
[endif]






;-------------通常イベント
[if exp="f.event_main_17_days==2&&f.event_sub_17_sumi[3]!=1&&f.date_now!=1&&f.friend==0"]
[skip_button]
[message_settei_ad]
;イベント内容
[eval exp="f.event_sub_17[3]=0"]
[eval exp="f.event_sub_17_sumi[3]=1"]
;
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*chuubou_tetudai]
*tetudai_end

;[elsif exp="f.event_main_17_days==4&&f.irain_move<2&&f.kra_flag==1"]
;[skip_button]
;[message_settei_ad]

;[eval exp="f.event_sub_17[1]=0"]
;[eval exp="f.event_sub_17_sumi[1]=1"]
;クライストと船長
;[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*sencho_kra]




[else]


;デート内容---------------------------------
[if exp="f.date_now==1"]
[stopbgm]
[playse storage="wave1_koukaonlabo.ogg"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
*date_time
[if exp="f.irain_move>0"]
[bg storage="hune_shokudou.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="hune_shokudou.jpg"]
[endif]
[skip_button]
[date_go]
*date_end
[place_end]
[stopse]
[jump target=*map]
[endif]


;デートイベント
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[15]>0"]
[eval exp="tf.place_num=15"]
[date_osasoi]
[jump target=*end]
[endif]
[endif]
;------------------------------------------



;-----店
[message_settei_ad]
[playbgm storage="zawameki_tairakomori.ogg"]

[if exp="f.wesuta_mise_f!=1"]
#店長
「やあいらっしゃい、[name]ちゃん！」[p]
#
#店長
「ボロンゴから聞いたが、料理が上手なんだってね、よかったら
料理の食材を分けようか？」[p]
#
#&f.name
「え、ほんとうですか？」[p]
#
#店長
「もちろん、ただってわけにはいかないが、色々あるからよかったらみていってくれ！」[p]
#
#&f.name
「ありがとう！」[p]
#
[eval exp="f.wesuta_mise_f=1"]
[endif]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【食材を見ていく？】


[glink target=*omise_j_2 text="（見ていく）" size=17 width=600 x=65 y=260]
[glink target=*omise_2 text="（見ない）" size=17 width=600 x=65 y=320]
[s]
*omise_j_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;品揃え料理
[eval exp="f.item_cook=1"]
[if exp="f.event_main_17_days>0||f.event_main_19_days>0"]

[eval exp="f.store_season_4_cook=0"]
[eval exp="f.store_season_5_cook=1"]

[endif]
[refresh_hanyou]
[store_money]
*store_jump
[jump target=*shop_end]

*omise_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]


*shop_end
[stopbgm]









*end

[endif]
*map
[message_kakusu_ad]

[hune_map]

[endmacro]







[return]
