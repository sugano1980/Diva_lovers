
[macro name="shuuhen_outo_map"]


[cm]
[call storage="scenario_2/map_event/map_event_sharomu_macro.ks"]
[call storage="scenario_2/map_event/map_event_keiko_macro.ks"]
[call storage="scenario_2/map_event/map_event_outo_macro.ks"]

[call storage="scenario_2/map_event/map_flag_macro.ks"]
[call storage="scenario_2/map_macro_irain_hyouji.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[eval exp="tf.map_2=1"]

[map_flag_confirm]
;マップ追加事項
[if exp="f.disc_num>2"]
[map_disc_tuika]
[endif]


[bg storage="creru_shuuhen.jpg" time=50]
[free name="event" layer=2]
[freeimage layer=3]
[button_clear]
[showmenubutton][skip_button_off]
@clearfix name="change_button"
;外出回数の確認
[heya_modoru]

;一度現在地を表示
[eval exp="f.place_creru_out=0"]
[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

;イレイン現在地表示

[map_irain_hyouji]
*irain_place
;マップ画面であることのフラグ
[eval exp="f.map=1"]
*return
[clearstack]



[free name="event" layer=2]
[message_kakusu_ad]
[if exp="f.date_now==1"]
[fadeinbgm storage="gogonohizasi_ontama.ogg" loop="true" time=3000]
[elsif exp="f.bgm==1"]
[playbgm storage="guild_ontama.ogg" loop="true"]
[elsif exp="f.bgm==0"]
[endif]






*map0


[message_kakusu_ad]

;稽古
[if exp="f.main_event_keiko==1"]

[image layer=2 page=fore visible=true storage="event.gif" name="event" x=300 y=200]

[elsif exp="f.sub_event_keiko==1"]

[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=300 y=200]

[endif]



[if exp="f.main_event_outo==1"]

[image layer=2 page=fore visible=true storage="event.gif" name="event" x=80 y=52]

[elsif exp="f.sub_event_outo==1"]

[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=80 y=52]

[endif]




;シャローム

[if exp="f.main_event_sharomu==1"]
;
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=515 y=358]

[elsif exp="f.sub_event_sharomu==1"]

[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=515 y=358]

[endif]



;マップ追加事項
[if exp="f.disc_num>2"]
[map_disc_tuika]
[endif]

;------------------------------------------------
;時計の表示、なしの場合はジャンプ
[if exp="f.tokei_no==1"]
[jump target=*tokei_no]
[endif]

;夕方のフィルターとマーク。それ以外は朝のマーク
[if exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="map_yuu.png" name="event" x=740 y=40]
[else]
[image layer=2 page=fore visible=true storage="map_asa.png" name="event" x=740 y=40]
[endif]

;時計の表示、通常は１０じと１６じと１９じ。食事のイベントありの時は１１３０、１７３０

[image layer=2 page=fore visible=true storage="tokei.png" name="event" x=620 y=30]


;特別に最初だけ時計の表示かえる
[if exp="f.event_main_1==1"]
[image layer=2 page=fore visible=true storage="tokei_11_30.png" name="event" x=620 y=30]

;----
;[if exp="f.irain_out==1&&f.irain_move<2"]
;[image layer=2 page=fore visible=true storage="tokei_17_30.png" name="event" x=620 y=30]
;[else]
;[image layer=2 page=fore visible=true storage="tokei_11_30.png" name="event" x=620 y=30]
;[endif]
;-------------

[elsif exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="tokei_16.png" name="event" x=620 y=30]
[else]
[image layer=2 page=fore visible=true storage="tokei_10.png" name="event" x=620 y=30]
[endif]

*tokei_no

;稽古の森
[locate x=300 y=200]
[clickable width=250 height=120 mouseopacity=37 opacity=0 color=gray target=*keiko]

;王都
[locate x=80 y=52]
[clickable width=190 height=170 mouseopacity=37 opacity=0 color=gray target=*outo]

;シャローム
[locate x=515 y=358]
[clickable width=220 height=130 mouseopacity=37 opacity=0 color=gray target=*sharomu]
[s]



*keiko
[map_flag_delete]
[eval exp="f.place_keiko=1"]
[event_word]
*keiko_2
;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_keiko_macro]



*outo
[map_flag_delete]
[eval exp="f.place_outo=1"]
[event_word]
*outo_2
[if exp="f.irain_out==1"]
[endif]

[hidemenubutton]
[eval exp="f.map=0"]

[free name="icon" layer=3]
[free name="event" layer=2]
[map_event_outo_macro]


*sharomu
[map_flag_delete]
[eval exp="f.place_sharomu=1"]
[event_word]
*sharomu_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_sharomu_macro]
*map
[message_kakusu_ad]
[shuuhen_outo_map]



[endmacro]


[macro name="map_flag_delete"]


[eval exp="f.place_creru_sakaba=0"]
[eval exp="f.place_creru_out=0"]
[eval exp="f.place_creru_oukyu=0"]
[eval exp="f.place_creru_hunsui=0"]
[eval exp="f.place_creru_uradoori=0"]
[eval exp="f.place_creru_honbu=0"]
[eval exp="f.place_creru_gaia=0"]
[eval exp="f.place_keiko=0"]
[eval exp="f.place_outo=0"]
[eval exp="f.place_sharomu=0"]
[eval exp="f.place_hune_shokudou=0"]
[eval exp="f.place_hune_kanpan=0"]
[eval exp="f.place_hune_nakama=0"]
[eval exp="f.place_hune_jisitu=0"]
[eval exp="f.place_hune_rouka=0"]




[endmacro]








[return]