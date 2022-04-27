


;自室
[macro name="map_event_yadoya_macro"]

[eval exp="f.place_w_yadoya=1"]




[if exp="f.irain_move==2&&f.date_now!=1"]
;へやに戻るかのメッセージ
*modoru_message
[message_settei_ad]
#&f.name
「何もしないで戻ろうかな？」[p]
#
[glink target=*modoru1 text="（自室に戻る）" clickimg="kaiwa/kk1.jpg" size=17 height=15 width=600 x=65 y=200]


[glink target=*modoru2 text="（戻らない）" size=17 height=15 width=600 x=65 y=260]


[s]

*modoru2

@jump target=*map


*modoru1

;@jump target=*modoru_kekka




[endif]





;デート内容------------------------
[if exp="f.date_now==1"]
[call storage="scenario_2/date/date_go_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[eval exp="f.irain_move=f.irain_move-1"]
*date_time
[if exp="f.irain_move>0"]
[bg storage="wesuta_sakaba.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="wesuta_sakaba_yoru.jpg"]
[endif]
[skip_button]
[date_go]
*date_end
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
[if exp="f.place_chara[23]>0"]
[eval exp="tf.place_num=23"]
[if exp="f.irain_move>0"]
[bg storage="wesuta_sakaba.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="wesuta_sakaba_yoru.jpg"]
[endif]
[date_osasoi]
[jump target=*modoru_kekka]
[endif]
[endif]
;---------------------------


*modoru_kekka

[if exp="f.date_now==1"]
[jump target=*map]
[endif]
;[if exp="f.irain_move==0"]
;[bg storage="wesuta_yado_yuu.jpg" time=50]
;[else]
;[bg storage="wesuta_yado.jpg" time=50]
;[endif]


[fadeoutbgm time=1000]
[message_settei_ad]
;[honbu_back_event]



[if exp="f.irain_move==1"]
[bg storage="wesuta_yado_yuu.jpg" time=50]
[else]
[bg storage="wesuta_yado.jpg" time=50]
[endif]
[eval exp="f.irain_out=0"]

[refresh_hanyou]
[status_hyouji]






*map
[message_kakusu_ad]

[wesuta_map]






[endmacro]






[return]
