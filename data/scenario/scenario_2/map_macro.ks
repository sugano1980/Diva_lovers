
[macro name="creru_outo_map"]


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
[call storage="scenario_2/map_macro_2.ks"]
[call storage="scenario_2/map_event/map_event_sakaba_macro.ks"]
[call storage="scenario_2/map_event/map_event_hunsui_macro.ks"]
[call storage="scenario_2/map_event/map_event_oukyu_macro.ks"]

[call storage="scenario_2/map_event/hunsui_event_macro.ks"]
[call storage="scenario_2/map_event/uradoori_event_macro.ks"]
[call storage="scenario_2/map_event/sakaba_event_macro.ks"]
[call storage="scenario_2/map_event/oukyu_event_macro.ks"]
[call storage="scenario_2/map_event/iriguti_event.ks"]

[call storage="scenario_2/map_event/map_event_gaia_macro.ks"]
[call storage="scenario_2/map_event/map_event_uradoori_macro.ks"]

[call storage="scenario_2/map_event/map_event_honbu_macro.ks"]
[call storage="scenario_2/map_event/map_event_out_macro.ks"]


[call storage="scenario_2/map_event/map_flag_macro.ks"]
[call storage="scenario_2/map_macro_irain_hyouji.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]

[if exp="f.event_war_kra_sumi==1&&f.event_epi7_kra_flag!=1"]
[eval exp="f.event_epi7_kra_ok=0"]
[eval exp="f.event_epi7_kra_flag=1"]
[call storage="scenario_2/episode/epi_7_kra_epi.ks"]
[endif]

[map_flag_confirm]
[if exp="f.disc_num>2"]
[call storage="scenario_2/map_event/map_disc_tuika.ks"]
[endif]



[bg storage="creru_outo.jpg" time=50]
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
[heya_modoru]

;一度現在地を表示
[eval exp="f.place_outo=0"]
;イレイン現在地表示
[map_irain_hyouji]
[if exp="f.event_main_8_days>0&&f.snowfall!=1"]
[snowfall]
[endif]
*irain_place
;マップ画面であることのフラグ
[eval exp="f.map=1"]

*return
[clearstack]



[free name="event" layer=2]
[message_kakusu_ad]
[if exp="f.date_now==1"]
[fadeinbgm storage="gogonohizasi_ontama.ogg" loop="true" time=10000]
[elsif exp="f.bgm==1"]
[playbgm storage="guild_ontama.ogg" loop="true"]
[elsif exp="f.bgm==0"]
[endif]





[if exp="f.main_event_honbu==1"]
;本部0
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=570 y=310]
[elsif exp="f.sub_event_honbu==1&&f.event_chara==1"]
[eval exp="tf.flag_x=570"]
[eval exp="tf.flag_y=310"]
[event_flag]
[elsif exp="f.sub_event_honbu==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=570 y=310]
[endif]




;酒場1
[if exp="f.battle_event_sakaba==1"]
[image layer=2 page=fore visible=true storage="inu.gif" width="100" height="102" name="event" x=580 y=200]
[endif]

[if exp="f.main_event_sakaba==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=580 y=200]
[elsif exp="f.sub_event_sakaba==1&&f.event_chara==1"]
[eval exp="tf.flag_x=580"]
[eval exp="tf.flag_y=200"]
[event_flag]
[elsif exp="f.sub_event_sakaba==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=580 y=200]
[endif]
;お店アイコン;でーと中のみ
[if exp="f.disc_num>2&&f.friend>0&&f.date_now==1"]
[image layer=2 page=fore storage="icon_shokuji.png" name="event" x=620 y=170]
[image layer=2 page=fore storage="icon_cake.png" name="event" x=650 y=170]
[endif]


;ガイアの森2

[if exp="f.battle_event_gaia==1"]
[image layer=2 page=fore visible=true storage="inu.gif" width="100" height="102" name="event" x=40 y=300]
[endif]

[if exp="f.main_event_gaia==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=40 y=300]
[elsif exp="f.sub_event_gaia==1&&f.event_chara==1"]
[eval exp="tf.flag_x=40"]
[eval exp="tf.flag_y=300"]
[event_flag]
[elsif exp="f.sub_event_gaia==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=40 y=300]

[endif]



;カーニバル編
;噴水通り3
[if exp="f.battle_event_hunsui==1"]
[image layer=2 page=fore visible=true storage="inu.gif"  width="100" height="102" name="event" x=340 y=220]
[endif]

[if exp="f.main_event_hunsui==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=340 y=220]
[elsif exp="f.sub_event_hunsui==1&&f.event_chara==1"]
[eval exp="tf.flag_x=340"]
[eval exp="tf.flag_y=220"]
[event_flag]
[elsif exp="f.sub_event_hunsui==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=340 y=220]
[endif]
;お店アイコン
[if exp="f.friend==0&&f.event_main_5!=1&&f.event_main_5_1!=1"]
[image layer=2 page=fore storage="event_equip.png" name="event" x=380 y=220]
[endif]
[if exp="f.disc_num>2&&f.friend==0"]
[image layer=2 page=fore storage="event_cook.png" name="event" x=410 y=220]
[endif]


;裏通り4

[if exp="f.battle_event_uradoori==1"]
[image layer=2 page=fore visible=true storage="inu.gif" width="100" height="102" name="event" x=200 y=180]
[endif]

[if exp="f.main_event_uradoori==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=200 y=180]
[elsif exp="f.sub_event_uradoori==1&&f.event_epi5_rans_ok==1&&f.event_chara==1"]
[eval exp="tf.flag_x=200"]
[eval exp="tf.flag_y=180"]
[event_flag]
[elsif exp="f.sub_event_uradoori==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=200 y=180]
[endif]




;王都入り口5

[if exp="f.battle_event_iriguti==1"]
[image layer=2 page=fore visible=true storage="inu.gif" width="100" height="102" name="event" x=330 y=450]
[endif]

[if exp="f.main_event_iriguti==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=330 y=450]
[elsif exp="f.sub_event_iriguti==1&&f.event_chara==1"]
[eval exp="tf.flag_x=330"]
[eval exp="tf.flag_y=450"]
[event_flag]

[elsif exp="f.sub_event_iriguti==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=330 y=450]
[endif]




;王宮6

[if exp="f.battle_event_oukyu==1"]
[image layer=2 page=fore visible=true storage="inu.gif"  width="100" height="102" name="event" x=360 y=40]
[endif]

[if exp="f.main_event_oukyu==1"]
[image layer=2 page=fore visible=true storage="event.gif" name="event" x=360 y=40]
[elsif exp="f.sub_event_oukyu==1&&f.event_chara==1"]
[eval exp="tf.flag_x=360"]
[eval exp="tf.flag_y=40"]
[event_flag]
[elsif exp="f.sub_event_oukyu==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=360 y=40]
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
[if exp="f.event_main_1!=1&&f.event_main_2!=1&&f.event_sakaba!=1"]
[ptext layer=2 page=fore text="※騎士団本部をクリックで部屋に戻ります" color="black" name="event" x=50 y=10]
[image layer=2 page=fore visible=true storage="home.png" name="event" x=700 y=400]
[endif]

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


;王宮へ
[locate x=350 y=20]
;[clickable width=100 height=130 border="solid:1px:gray" target=*oukyu]
[clickable width=100 height=130 mouseopacity=37 opacity=0 color=gray target=*oukyu]

;裏通り
[locate x=190 y=180]
[clickable width=90 height=100 mouseopacity=37 opacity=0 color=gray target=*uradoori]
;噴水

[locate x=330 y=220]
[clickable width=145 height=130 mouseopacity=37 opacity=0 color=gray target=*hunsui]

;酒場
[locate x=550 y=150]
[clickable width=165 height=140 mouseopacity=37 opacity=0 color=gray target=*sakaba]

;ガイアの森
[locate x=20 y=300]
[clickable width=155 height=140 mouseopacity=37 opacity=0 color=gray target=*gaia]

;騎士団本部
[locate x=560 y=300]
[clickable width=175 height=140 mouseopacity=37 opacity=0 color=gray target=*honbu]


;王都を出るへ
[locate x=310 y=430]
[clickable width=170 height=140 mouseopacity=37 opacity=0 color=gray target=*out]

;ライオネスの家
[if exp="f.event_main_15_days>0&&f.date_now!=1"]
[button graphic="lion_jikka.png" target="*lion_jikka" name="" x="150" y="250" exp="" visible="true"]
[image layer=2 page=fore visible=true storage="mannar_icon.png" name="event" x=127 y=303]
[if exp="f.sub_event_lioness==1"]
[image layer=2 page=fore visible=true storage="event_sub.gif" name="event" x=150 y=240]
[endif]

[endif]

;仕立て屋
[if exp="f.event_main_15_days>0&&f.dress_cute!=1&&f.dress_pure!=1&&f.dress_elegant!=1"]
[button graphic="sitateya.png" target="*sitateya" name="" x="450" y="200" exp="" visible="true"]
[image layer=2 page=fore visible=true storage="sitateya_icon.png" name="event" x=450 y=280]
[endif]


[s]

*lion_jikka
[cm]
[map_flag_delete]
;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[eval exp="f.lioness_house=1"]
[mannar_lesson]

*sitateya
[cm]
[map_flag_delete]
;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]
[hidemenubutton][eval exp="f.map=0"]
[free name="icon" layer=3]
[free name="event" layer=2]
[eval exp="f.sitateya=1"]
[sitateya]

*oukyu
[map_flag_delete]
[eval exp="f.place_creru_oukyu=1"]
[event_word]
*oukyu_2
;行動回数を減少
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]
;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]
[free name="event" layer=2]
[map_event_oukyu_macro]



*hunsui
[map_flag_delete]
[eval exp="f.place_creru_hunsui=1"]
[event_word]
*hunsui_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]

[hidemenubutton]
[eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]
[free name="event" layer=2]
[map_event_hunsui_macro]


*sakaba
[map_flag_delete]
[eval exp="f.place_creru_sakaba=1"]
[event_word]
*sakaba_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_sakaba_macro]


*gaia
[map_flag_delete]
[eval exp="f.place_creru_gaia=1"]
[event_word]
*gaia_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_gaia_macro]

*honbu
[map_flag_delete]
[eval exp="f.place_creru_honbu=1"]
[event_word]
*honbu_2
[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_honbu_macro]


*uradoori
[map_flag_delete]
[eval exp="f.place_creru_uradoori=1"]
[event_word]
*uradoori_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[hidemenubutton][eval exp="f.map=0"]

[free name="icon" layer=3]

;[live2d_hide name="irain"]
;[live2d_off];[live2d_delete_all]

[free name="event" layer=2]
[map_event_uradoori_macro]

*out
[map_flag_delete]
[eval exp="f.place_creru_out=1"]
[event_word]
*out_2
[if exp="f.irain_out==1"]
[eval exp="f.irain_move=f.irain_move-1"]
[endif]


[hidemenubutton][eval exp="f.map=0"]

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
[eval exp="f.lioness_house=0"]
[eval exp="f.sitateya=0"]
[eval exp="f.place_hune_shokudou=0"]
[eval exp="f.place_hune_kanpan=0"]
[eval exp="f.place_hune_nakama=0"]
[eval exp="f.place_hune_jisitu=0"]
[eval exp="f.place_hune_rouka=0"]



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
[hidemenubutton]
;お弁当あり
[if exp="f.lunch_pack==1"]
[message_settei_ad]
[lunch_event]
[message_kakusu_ad]
[eval exp="f.lunch_pack=0"]
[endif]

[if exp="f.snowfall==1"]
[snowfall_0]
[endif]
[free name="event" layer=2]
[message_kakusu_ad][fadeoutbgm time=1000]

;デート中の場合
[if exp="f.date_now==1"]
[message_settei_ad]
[call storage="scenario_2/date/date_go_lib.ks"]
[date_home]
[jump target=*date_kaeri]
[endif]



[if exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]
[else]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[endif]


[honbu_back_event]

[bg storage="irainheya_yoru_tasogare.jpg"]

*date_kaeri
[eval exp="sf.chokki=1"]

[refresh_hanyou]
[status_hyouji]
[endif]



[endmacro]



[return]