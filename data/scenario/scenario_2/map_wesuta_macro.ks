
[macro name="wesuta_map"]


[cm]
[if exp="f.kaiwa_tuika_huda==1"]
[kaiwa_tuika_end]
[endif]

[eval exp="tf.map_2=0"]
;テストコード
;[eval exp="f.ranskonkando=50"]
;[eval exp="f.lionkonkando=50"]
;[eval exp="f.krakonkando=50"]
;[call storage="scenario_2/episode/event_15_sub_story.ks"]
;[eval exp="f.friend=3"]
;[eval exp="f.lunch_pack=1"]

[call storage="scenario_2/map_event/map_flag_macro_w.ks"]
[call storage="scenario_2/map_macro_irain_hyouji.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]

[call storage="scenario_2/map_event/map_event_w/map_event_toshokan_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_kusuri_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_yadoya_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_kouen_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_honya_macro.ks"]


[map_flag_confirm_w]
[if exp="f.disc_num>2"]
[call storage="scenario_2/map_event/map_disc_tuika.ks"]
[endif]

[bg storage="wesuta_map.jpg" time=50]
[free name="event" layer=2]
[freeimage layer=3]
[button_clear]
[showmenubutton][clearfix name="skip_button"][eval exp="f.skip_on=0"]
@clearfix name="change_button"

;テストよう
;[if exp="f.erumu_test==1&&f.test_yu==1"]
;[eval exp="f.irain_move=1"]
;[endif]
;外出回数の確認
[heya_modoru_wesuta]

;一度現在地を表示
[eval exp="f.place_wesuta=1"]
;イレイン現在地表示
[map_irain_hyouji]
[map_flag_delete]
*irain_place
;マップ画面であることのフラグ
[eval exp="f.map=1"]

*return
[clearstack]



[free name="event" layer=2]
[message_kakusu_ad]
;音楽
[if exp="f.date_now==1"]
[playbgm storage="wesuta_ontama.ogg" loop="true"]
[elsif exp="f.bgm==1"]
[playbgm storage="wesuta_ontama.ogg" loop="true"]
[elsif exp="f.bgm==0"]
[endif]




;お店アイコン;でーと中のみ
[if exp="f.disc_num>2&&f.friend>0&&f.date_now==1"]
[image layer=2 page=fore storage="icon_shokuji.png" name="event" x=560 y=270]
[endif]




;サブイベントなし


;マップ追加事項
[if exp="f.disc_num>2"]
[map_disc_tuika]
[endif]



;--------------------------------------------------------

[ptext layer=2 page=fore text="※自室をクリックで部屋に戻ります" color="black" name="event" x=50 y=10]
[image layer=2 page=fore visible=true storage="home.png" name="event" x=700 y=300]


;時計の表示、なしの場合はジャンプ
[if exp="f.tokei_no==1"]
[jump target=*tokei_no]
[endif]

;夕方のフィルターとマーク。それ以外は朝のマーク
[if exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="map_screen_yuu.png" name="event" x=0 y=0]
[image layer=2 page=fore visible=true storage="map_yuu.png" name="event" x=740 y=40]
[else]
[image layer=2 page=fore visible=true storage="map_asa.png" name="event" x=740 y=40]
[endif]

;時計の表示、通常は１０じと１６じと１９じ。食事のイベントありの時は１１３０、１７３０

[image layer=2 page=fore visible=true storage="tokei.png" name="event" x=620 y=30]

;時計の表示
[if exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="tokei_16.png" name="event" x=620 y=30]
[else]
[image layer=2 page=fore visible=true storage="tokei_10.png" name="event" x=620 y=30]
[endif]

*tokei_no


;本屋
[locate x=330 y=130]

[clickable width=120 height=130 mouseopacity=37 opacity=0 color=gray target=*honya]

;図書館
[locate x=90 y=50]
[clickable width=150 height=130 mouseopacity=37 opacity=0 color=gray target=*toshokan]

;薬や
[locate x=500 y=30]
[clickable width=145 height=160 mouseopacity=37 opacity=0 color=gray target=*kusuri]


;食堂宿屋
[locate x=560 y=270]
[clickable width=175 height=140 mouseopacity=37 opacity=0 color=gray target=*yadoya]

;公園
[locate x=340 y=350]
[clickable width=170 height=170 mouseopacity=37 opacity=0 color=gray target=*kouen]


[s]


*honya
[map_flag_delete]
[eval exp="f.place_w_honya=1"]

;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_honya_macro]


*kusuri
[map_flag_delete]
[eval exp="f.place_w_kusuri=1"]

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton]
[eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_kusuri_macro]


*kouen
[map_flag_delete]
[eval exp="f.place_w_kouen=1"]
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_kouen_macro]


*yadoya
[map_flag_delete]
[eval exp="f.place_w_yadoya=1"]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_yadoya_macro]


*toshokan
[map_flag_delete]
[eval exp="f.place_w_toshokan=1"]
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_toshokan_macro]


[endmacro]


[macro name="map_flag_delete"]

[eval exp="f.place_w_honya=0"]
[eval exp="f.place_w_yadoya=0"]
[eval exp="f.place_w_kouen=0"]
[eval exp="f.place_w_kusuri=0"]
[eval exp="f.place_w_toshokan=0"]

[endmacro]


[macro name="heya_modoru_wesuta"]

[if exp="f.irain_out==1&&f.irain_move<1"]
[map_flag_delete]
[image layer=2 page=fore visible=true storage="map_screen_yoru.png" name="event" x=0 y=0]
[image layer=2 page=fore visible=true storage="tokei.png" name="event" x=620 y=30]
[image layer=2 page=fore visible=true storage="tokei_19.png" name="event" x=620 y=30]
[eval exp="f.irain_out=0"]
[eval exp="f.place_w_yadoya=0"]
[eval exp="f.place_wesuta=0"]
;行動回数がない場合強制的に部屋へ戻る
[message_settei_ad]

#&f.name
「今日はもう遅いから部屋に戻らなくちゃ」[p]
#
[hidemenubutton]
[free name="event" layer=2]
[message_kakusu_ad][fadeoutbgm time=1000]

;デート中の場合
[if exp="f.date_now==1"]
[message_settei_ad]
[call storage="scenario_2/date/date_go_lib.ks"]
[date_home]
[jump target=*date_kaeri]
[endif]


;[honbu_back_event]

[bg storage="wesuta_yado_yuu.jpg" time=50]

*date_kaeri
[eval exp="sf.chokki=1"]

[refresh_hanyou]
[status_hyouji]
[endif]



[endmacro]



[return]