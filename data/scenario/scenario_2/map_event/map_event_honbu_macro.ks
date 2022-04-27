


;騎士団本部
[macro name="map_event_honbu_macro"]

[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]

[elsif exp="f.event_main_1==1"]

[jump storage="scenario_2/episode/epi1.ks" target=*kyoutuu7]

;[elsif exp=""]

;[elsif exp=""]


[else]



;デート内容------------------------
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[eval exp="f.irain_move=f.irain_move-1"]
*date_time
[if exp="f.irain_move>0"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]
[endif]
[skip_button]
[date_go]
[place_end]
;料理すみ、まだ料理やってないのフラグを消去
[eval exp="f.ryouri_com=0"]
[eval exp="f.ryouri_stop=0"]
[fadeoutbgm time=1000]
[jump target=*map]
[endif]
;--------------------
;デートイベント;--------------------------
[if exp="f.date_event_flag==1&&f.friend==0"]
[if exp="f.place_chara[0]>0"]
[eval exp="tf.place_num=0"]
[if exp="f.irain_move>0"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]
[endif]
[date_osasoi]
[jump target=*map]
[endif]
[endif]
;---------------------------

[if exp="f.irain_move==2"]
;へやに戻るかのメッセージ
*modoru_message
[message_settei_ad]
#&f.name
「何もしないで戻ろうかな？」[p]
#
[glink target=*modoru1 text="（自室に戻る）" clickimg="kaiwa/kk1.jpg" size=17 height=15 width=600 x=65 y=200]


[glink target=*modoru2 text="（戻らない）" size=17 height=15 width=600 x=65 y=260]


[s]
*modoru1

@jump target=*modoru_kekka

*modoru2

@jump target=*map


[endif]


*modoru_kekka
[if exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]
[else]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[endif]


[fadeoutbgm time=1000]
[message_settei_ad]
[honbu_back_event]



[if exp="f.irain_move==1"]
[bg storage="irainheya_yuu_tasogare.jpg"]
[else]
[bg storage="irainheya_tasogare.jpg"]
[endif]
[eval exp="f.irain_out=0"]

[refresh_hanyou]
[status_hyouji]



[endif]
*map
[message_kakusu_ad]

[creru_outo_map]



[endmacro]






[return]
