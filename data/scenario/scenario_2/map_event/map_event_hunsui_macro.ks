

;噴水
[macro name="map_event_hunsui_macro"]

[map_flag_delete]
[eval exp="f.place_creru_hunsui=1"]


[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]






;-------------通常イベント
[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]



;カーニバル編


[elsif exp="f.event_main_5_1==1"]

[message_settei_ad]
#&f.name
「いた・・・！モンスター！！」[p]
#
[stopbgm]
[jump storage="scenario_2/episode/epi2.ks" target=*event_main_5_1]

[endif]

;お店選択
[if exp="f.friend==0"]
[message_settei_ad]
#&f.name
「お店を見に行ってみようかな？」[p]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どのお店をみようかな】

[glink target=*omise_j_1 text="（装備のお店）" size=17 width=600 x=65 y=200]
[if exp="f.disc_num>2"]
[glink target=*omise_j_2 text="（食材のお店）" size=17 width=600 x=65 y=260]
[endif]

[glink target=*omise_j_3 text="（見ない）" size=17 width=600 x=65 y=320]
[s]

*omise_j_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*omise_1]

*omise_j_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;品揃え料理
[eval exp="f.store_season_1=0"]
[eval exp="f.store_season_2=0"]
[eval exp="f.store_season_3=0"]
[eval exp="f.store_season_4=0"]
[eval exp="f.store_season_2_cook=0"]
[eval exp="f.item_cook=1"]

[if exp="f.event_main_8_days>0"]
[eval exp="f.store_first=0"]
[eval exp="f.store_season_1=1"]
[elsif exp="f.event_main_14_days>0"]
[eval exp="f.store_first=0"]
[eval exp="f.store_season_1=0"]
[eval exp="f.store_season_2=0"]
[eval exp="f.store_season_2_cook=1"]

[elsif exp="f.event_main_15_days>0"]

[eval exp="f.store_season_2=0"]
[eval exp="f.store_season_3=0"]
[eval exp="f.store_season_2_cook=0"]
[eval exp="f.store_season_3_cook=1"]

[elsif exp="f.event_main_16_days>0"]

[eval exp="f.store_season_3=0"]
[eval exp="f.store_season_4=0"]
[eval exp="f.store_season_2_cook=0"]
[eval exp="f.store_season_3_cook=0"]
[eval exp="f.store_season_4_cook=1"]

[endif]
[refresh_hanyou]
[store_money]
*store_jump
[jump target=*end]





*omise_j_3
[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*omise_2]




*omise_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;品揃え
[eval exp="f.store_season_1=0"]
[eval exp="f.store_season_2=0"]
[eval exp="f.store_season_3=0"]
[eval exp="f.store_season_4=0"]
[eval exp="f.store_season_1_cook=0"]
[eval exp="f.store_season_2_cook=0"]
[eval exp="f.store_season_3_cook=0"]
[eval exp="f.store_season_4_cook=0"]
[eval exp="f.item_cook=0"]


[if exp="f.event_main_8_days>0"]
[eval exp="f.store_first=0"]
[eval exp="f.store_season_1=1"]
[elsif exp="f.event_main_14_days>0"]
[eval exp="f.store_first=0"]
[eval exp="f.store_season_1=0"]
[eval exp="f.store_season_2=1"]
[elsif exp="f.event_main_15_days>0"]
[eval exp="f.store_season_2=0"]
[eval exp="f.store_season_3=1"]
[elsif exp="f.event_main_16_days>0"]
[eval exp="f.store_season_3=0"]
[eval exp="f.store_season_4=1"]
[endif]
[refresh_hanyou]
[store_money]
*store_jump
[jump target=*end]
*omise_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[endif]



[if exp="f.event_main_8_days>0"]
[message_settei_ad]
[hunsui_event]

[jump target=*map]




[elsif exp="f.event_sub_14[2]==1&&f.friend==0&&f.event_main_14_days>0"]

[message_settei_ad]
[hunsui_event]






;[jump target=*end]

[elsif exp="f.event_sub_14[8]==1&&f.event_main_14_days>0"]

[message_settei_ad]
[hunsui_event]





[eval exp="f.event_sub_14[8]=0"]
[eval exp="f.event_sub_14_sumi[8]=1"]


[elsif exp="f.event_sub_15[0]==1&&f.friend==0&&f.krakonkando>30&&f.event_main_15_days>0"]
[skip_button]
[message_settei_ad]
[tosho_fair]
[eval exp="tf.tuika_num = 2"]
[eval exp="tf.kaiwa_num  = 23"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="f.event_sub_15[0]=0"]
[eval exp="f.event_sub_15_sumi[0]=1"]

[elsif exp="f.event_epi7_kra_ok==4"]
;クラフラグあり
[skip_button]
[message_settei_ad]
[kra_epi_5]
[eval exp="f.event_epi7_kra_ok=5"]
[else]


;デート内容---------------------------------
[if exp="f.date_now==1"]
[stopbgm]
[playse storage="zawameki_soto.ogg"]
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
[if exp="f.place_chara[3]>0"]
[eval exp="tf.place_num=3"]
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

[creru_outo_map]

[endmacro]







[return]
