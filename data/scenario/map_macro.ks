
[macro name="creru_outo_map"]


[cm]
[call storage="map_event/map_event_sakaba_macro.ks"]
[call storage="map_event/map_event_hunsui_macro.ks"]
[call storage="map_event/map_event_oukyu_macro.ks"]
[call storage="map_event/map_event_gaia_macro.ks"]
[call storage="map_event/map_event_uradoori_macro.ks"]
[call storage="map_event/map_event_honbu_macro.ks"]
[call storage="map_event/map_event_out_macro.ks"]
[call storage="map_macro_irain_hyouji.ks"]
[call storage="kra_fashion_comment.ks"]
[call storage="rans_fashion_comment.ks"]
[call storage="lion_fashion_comment.ks"]



[bg storage="creru_outo.jpg" time=50]

[freeimage layer=3]
[showmenubutton][clearfix name="skip_button"]
@clearfix name="change_button"
;外出回数の確認
[heya_modoru]

;一度現在地を表示

;イレイン現在地表示

[map_irain_hyouji]
*irain_place
;マップ画面であることのフラグ
[eval exp="f.map=1"]
[clearstack]



[free name="event" layer=2]
[message_kakusu_ad]

[playbgm storage="guild_ontama.ogg" loop="true"]

[if exp="f.event_sakaba==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=580 y=200]
[endif]

[if exp="f.event_1_maigo==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=340 y=220]
[endif]

[if exp="f.event_main_1==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=570 y=310]
[endif]

[if exp="f.event_2_oyaji==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=340 y=220]
[endif]

[if exp="f.event_2_kra==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=200 y=180]
[endif]

[if exp="f.event_2_kra_meal==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=340 y=220]
[endif]

[if exp="f.event_2_lioness_meal==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=580 y=200]
[endif]


[if exp="f.event_2_gaia==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=40 y=300]
[endif]

[if exp="f.event_main_1!=1&&f.event_main_2!=1&&f.event_sakaba!=1"]
[ptext layer=2 page=fore text="※騎士団本部をクリックで部屋に戻ります" color="black" name="event" x=50 y=10]
[image layer=2 page=fore visible=true storage="home.png" name="event" x=700 y=400]
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

;特別に最初だけ時計の表示かえる
[if exp="f.event_main_1==1"]
[image layer=2 page=fore visible=true storage="tokei_11_30.png" name="event" x=620 y=30]


[elsif exp="f.event_2_kra_meal==1||f.event_2_lioness_meal==1"]
;-------------
[if exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="tokei_17_30.png" name="event" x=620 y=30]
[else]
[image layer=2 page=fore visible=true storage="tokei_11_30.png" name="event" x=620 y=30]
[endif]
;-------------

[elsif exp="f.irain_out==1&&f.irain_move<2"]
[image layer=2 page=fore visible=true storage="tokei_16.png" name="event" x=620 y=30]
[else]
[image layer=2 page=fore visible=true storage="tokei_10.png" name="event" x=620 y=30]
[endif]



;王宮へ
[locate x=350 y=20]
;[clickable width=100 height=130 border="solid:1px:gray" target=*oukyu]
[clickable width=100 height=130 mouseopacity=37 opacity=0 target=*oukyu]

;裏通り
[locate x=180 y=180]
[clickable width=90 height=100 mouseopacity=37 opacity=0 target=*uradoori]
;噴水
[locate x=330 y=220]
[clickable width=145 height=130 mouseopacity=37 opacity=0 target=*hunsui]

;酒場
[locate x=555 y=200]
[clickable width=165 height=140 mouseopacity=37 opacity=0 target=*sakaba]

;ガイアの森
[locate x=20 y=300]
[clickable width=155 height=140 mouseopacity=37 opacity=0 target=*gaia]

;騎士団本部
[locate x=560 y=300]
[clickable width=175 height=140 mouseopacity=37 opacity=0 target=*honbu]


;王都を出るへ
[locate x=320 y=430]
[clickable width=170 height=140 mouseopacity=37 opacity=0 target=*out]
[s]

*oukyu

;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_oukyu=1"]
[free name="icon" layer=3]
;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]
[free name="event" layer=2]
[map_event_oukyu_macro]



*hunsui

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[map_flag_delete][hidemenubutton]
[eval exp="f.map=0"]
[eval exp="f.place_creru_hunsui=1"]
[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]
[free name="event" layer=2]
[map_event_hunsui_macro]


*sakaba

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_sakaba=1"]
[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_sakaba_macro]


*gaia

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_gaia=1"]
[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_gaia_macro]

*honbu

[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_honbu=1"]
[free name="icon" layer=3]

;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_honbu_macro]


*uradoori

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_uradoori=1"]
[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_uradoori_macro]

*out

[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[map_flag_delete][hidemenubutton][eval exp="f.map=0"]
[eval exp="f.place_creru_out=1"]
[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_out_macro]



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




[endmacro]


[macro name="heya_modoru"]

[if exp="f.irain_out==1&&f.irain_move<1"]
[map_flag_delete]
[image layer=2 page=fore visible=true storage="map_screen_yoru.png" name="event" x=0 y=0]
[image layer=2 page=fore visible=true storage="tokei.png" name="event" x=620 y=30]
[image layer=2 page=fore visible=true storage="tokei_19.png" name="event" x=620 y=30]
[eval exp="f.irain_out=0"]
[eval exp="f.place_creru_honbu=0"]
;行動回数がない場合強制的に部屋へ戻る
[message_settei_ad]
#&f.name
「今日はもう遅いから部屋に戻らなくちゃ」[p]
#
[free name="event" layer=2]
[message_kakusu_ad][fadeoutbgm time=1000]
[bg storage="irainheya_yoru_tasogare.jpg"]
[eval exp="sf.chokki=1"]





[refresh_hanyou]
[status_hyouji]
[endif]

[endmacro]





[return]