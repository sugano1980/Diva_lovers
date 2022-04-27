
[macro name="hune_map"]


[cm]
[if exp="f.kaiwa_tuika_huda==1"]
[kaiwa_tuika_end]
[endif]

[eval exp="tf.map_2=0"]
;テストコード
;[eval exp="f.ranskonkando=50"]
;[eval exp="f.lionkonkando=50"]
;[eval exp="f.krakonkando=50"]
[call storage="scenario_2/episode/event_15_sub_story.ks"]
;[eval exp="f.friend=3"]
;[eval exp="f.lunch_pack=1"]

[call storage="scenario_2/map_event/map_flag_macro.ks"]
[call storage="scenario_2/map_macro_irain_hyouji.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]

[map_flag_confirm]
[if exp="f.disc_num>2"]
[call storage="scenario_2/map_event/map_disc_tuika.ks"]
[endif]

[bg storage="hune_map.jpg" time=50]
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
[heya_modoru_hune]

;一度現在地を表示
[eval exp="f.place_hune=1"]
;イレイン現在地表示
[map_irain_hyouji]

*irain_place
;マップ画面であることのフラグ
[eval exp="f.map=1"]

*return
[clearstack]



[free name="event" layer=2]
[message_kakusu_ad]
;音楽
[if exp="f.date_now==1"]
[fadeinbgm storage="wave1_koukaonlabo.ogg" loop="true" time=10000]
[elsif exp="f.bgm==1"]
[playbgm storage="wave1_koukaonlabo.ogg" loop="true"]
[elsif exp="f.bgm==0"]
[endif]





;食堂
[if exp="f.sub_event_shokudou==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=200 y=180]
[endif]
;お店アイコン;でーと中のみ
[if exp="f.disc_num>2&&f.friend>0&&f.date_now==1"]
[image layer=2 page=fore storage="icon_shokuji.png" name="event" x=200 y=180]
[image layer=2 page=fore storage="icon_cake.png" name="event" x=200 y=180]
[endif]




;甲板

[if exp="f.sub_event_kanpan==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=360 y=40]
[endif]



;廊下
[if exp="f.sub_event_rouka==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=340 y=220]

[endif]



;仲間の部屋
[if exp="f.sub_event_nakama==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=330 y=450]
[endif]



;マップ追加事項
[if exp="f.disc_num>2"]
[map_disc_tuika]
[endif]

;ランチ関係
[if exp="f.lunch_pack==1"]
[lunch_event]
[endif]



;--------------------------------------------------------

[ptext layer=2 page=fore text="※自室をクリックで部屋に戻ります" color="black" name="event" x=50 y=10]
[image layer=2 page=fore visible=true storage="home.png" name="event" x=700 y=400]


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


;甲板
[locate x=350 y=20]
[clickable width=100 height=130 mouseopacity=37 opacity=0 color=gray target=*kanpan]

;食堂
[locate x=190 y=180]
[clickable width=90 height=100 mouseopacity=37 opacity=0 color=gray target=*shokudou]

;廊下
[locate x=330 y=220]
[clickable width=145 height=130 mouseopacity=37 opacity=0 color=gray target=*rouka]


;自室
[locate x=560 y=300]
[clickable width=175 height=140 mouseopacity=37 opacity=0 color=gray target=*jisitu]

;仲間の部屋
[locate x=310 y=430]
[clickable width=170 height=140 mouseopacity=37 opacity=0 color=gray target=*nakama]


[s]


*kanpan
[map_flag_delete]
[eval exp="f.place_hune_kanpan=1"]

;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_kanpan_macro]


*rouka
[map_flag_delete]
[eval exp="f.place_hune_rouka=1"]

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton]
[eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_rouka_macro]


*nakama
[map_flag_delete]
[eval exp="f.place_hune_nakama=1"]
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_nakama_macro]


*jisitu
[map_flag_delete]
[eval exp="f.place_hune_jisitu=1"]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_jisitu_macro]


*shokudou
[map_flag_delete]
[eval exp="f.place_hune_shokudou=1"]
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_shokudou_macro]


[endmacro]


[macro name="map_flag_delete"]

[eval exp="f.place_hune_kanpan=0"]
[eval exp="=f.place_hune_jisitu=0"]
[eval exp="=f.place_hune_nakama=0"]
[eval exp="f.place_hune_rouka=0"]
[eval exp="f.place_hune_shokudou=0"]

[endmacro]


[macro name="heya_modoru_hune"]

[if exp="f.irain_out==1&&f.irain_move<1"]
[map_flag_delete]
[image layer=2 page=fore visible=true storage="map_screen_yoru.png" name="event" x=0 y=0]
[image layer=2 page=fore visible=true storage="tokei.png" name="event" x=620 y=30]
[image layer=2 page=fore visible=true storage="tokei_19.png" name="event" x=620 y=30]
[eval exp="f.irain_out=0"]
[eval exp="f.place_hune_jisitu=0"]
[eval exp="f.place_hune=0"]
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

[bg storage="hune_yoru_room.jpg"]

*date_kaeri
[eval exp="sf.chokki=1"]

[refresh_hanyou]
[status_hyouji]
[endif]



[endmacro]



[return]