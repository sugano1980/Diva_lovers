

*first


[eval exp="tf.iii=3"]
[eval exp="tf.aho=0"]
[eval exp="tf.hoho=0"]

[iscript]
tf.hoho='hohohoho';
[endscript]




[button graphic="button/recollection.png" target=&tf.hoho fix="true" name="equip_moji" x=490 y=90]



[s]

[if exp="tf.iii<0"]
[eval exp="tf.iii=tf.iii-1"]
[jump target=*first]
[endif]


*tf.hoho

[playbgm storage="gaia_musmus.ogg"]

[s]
*momomo

;[stopbgm]
;[bg storage="black.png" time=500]
;[call storage="scenario_2/macro.ks"]
;[call storage="scenario_2/map_macro.ks"]
;[call storage="scenario_2/map_event/map_flag_macro.ks"]
;[call storage="scenario_2/status_macro_macro.ks"]
;[call storage="scenario_2/item_hyouji_macro.ks"]
;[call storage="scenario_2/map_macro.ks"]
;[call storage="scenario_2/store_macro.ks"]
;[call storage="scenario_2/store_macro_add.ks"]
;[call storage="scenario_2/equip_change_macro_data.ks"]
;[call storage="scenario_2/store_macro_kioku.ks"]
;[call storage="scenario_2/rans_fashion_comment.ks"]
;[call storage="scenario_2/lion_fashion_comment.ks"]
;[call storage="scenario_2/kra_fashion_comment.ks"]
;[call storage="scenario_2/status_macro.ks"]
;[call storage="scenario_2/chara_para_kioku.ks"]
;[call storage="scenario_2/menu_kioku_hikitugi.ks"]
;[plugin name="live2d"]
;[call storage="scenario_2/live2d_aho_macro.ks"]
;[call storage="scenario_2/live2d_lioness_macro.ks"]
;[call storage="scenario_2/live2d_rans_macro.ks"]
;[call storage="scenario_2/live2d_glif_macro.ks"]
;[call storage="scenario_2/live2d_sub_macro.ks"]



;[eval exp="f.live2d_on=1"]

;[layopt layer="0" page="fore" visible="true"]
;[layopt layer="1" page="fore" visible="true"]
;[layopt layer="2" page="fore" visible="true"]
;[layopt layer="3" page="fore" visible="true"]

;[eval exp="f.ranskonkando=20"]
;[eval exp="f.lionkonkando=20"]
;[eval exp="f.krakonkando=20"]
;[eval exp="f.glifkonkando=20"]
;[eval exp="f.ransrenailevel=1"]
;[eval exp="f.lionrenailevel=1"]
;[eval exp="f.krarenailevel=1"]


;f.disc_3==1&&tf.map_2!=1&&f.date_now!=1&&f.friend==0



;[eval exp="f.test_yu=0"]
;[eval exp="f.erumu_test=1"]
;[eval exp="f.ryouri_test=0"]
;[eval exp="f.irain_move=100"]
;[eval exp="f.kyuujitu=1"]
;[eval exp="f.place_creru_honbu=1"]
;外出フラグ（イベント以外である証明）
;[eval exp="f.irain_out=1"]
;[eval exp="f.irain_heya=0"]
;[eval exp="f.sub_event=1"]
;[eval exp="f.name = 'おばあ'"]

;[eval exp="f.disc_2=0"]
;[eval exp="f.disc_3=1"]
;[eval exp="f.disc_num=3"]
;[eval exp="f.friend=0"]
;[eval exp="f.event_main_15_days=10"]
;[eval exp="f.date_event_flag=1"]
;[eval exp="f.equip_item_current=3"]
;[eval exp="f.equip_item_current_2=2"]
;------------------
;[message_settei_ad]


;;[jump storage="scenario_2/episode/epi_normalend.ks"]
;;[jump storage="scenario_2/episode/epi6.ks"]
;;[restaurant_choice]
;;[menu_choice_cafe]
;;[jump storage="scenario_2/mini_game/battle.ks"]
;;[jump storage="scenario_2/love_mode/love_mode_run.ks"]

;[iscript]
;f.cusine =;[0,1,1,0,0,0,1,1,0,0,1,0,0,1,0,0];
;f.toast =;[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
;f.cake =;[0,1,1,0,0,0,0,0,0,0];
;f.cook_item_stock =;[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
;[endscript]


;;[glink color="" font_color="" storage="" target="" name="" text="" font_color="" x="" y="" width="" height="" preexp="" exp="" size="" face="" graphic="" enterimg="" clickse="" enterse="" leavese="" cm=""]
;[glink color="black" text="料理ランス" size=13 width="100" target="*ryouri_rans" name="" x=0 y=0]
;[glink color="black" text="料理ライオネス"  size=13 width="100"  target="*ryouri_lion" name="" x=0 y=60]
;[glink color="black" text="料理クライスト"  size=13 width="100"  target="*ryouri_kra" name="" x=0 y=120]


;[glink color="black" text="後方ランスA"  size=13 width="100"  target="*kouhou_rans_a" name="" x=0 y=180]
;[glink color="black" text="後方ライオネスA"  size=13 width="100"  target="*kouhou_lion_a" name="" x=0 y=240]
;[glink color="black" text="後方クライストA"  size=13 width="100"  target="*kouhou_kra_a" name="" x=0 y=300]
;[glink color="black" text="後方グリフA"  size=13 width="100"  target="*kouhou_glif_a" name="" x=0 y=360]

;[glink color="black" text="後方ランスB"  size=13 width="100"  target="*kouhou_rans_b" name="" x=0 y=420]
;[glink color="black" text="後方ライオネスB"  size=13 width="100"  target="*kouhou_lion_b" name="" x=0 y=480]
;[glink color="black" text="後方クライストB"  size=13 width="100"  target="*kouhou_kra_b" name="" x=0 y=540]
;[glink color="black" text="後方グリフB"  size=13 width="100"  target="*kouhou_glif_b" name="" x=150 y=0]

;[glink color="black" text="デートランス"  size=13 width="100"  target="*date_rans" name="" x=150 y=60]
;[glink color="black" text="デートライオネス"  size=13 width="100"  target="*date_lion" name="" x=150 y=120]
;[glink color="black" text="デートクラ"  size=13 width="100"  target="*date_kra" name="" x=150 y=180]
;[glink color="black" text="お誘い魅力低い"  size=13 width="100"  target="*osasoi" name="" x=150 y=240]
;[glink color="black" text="お誘い魅力高い"  size=13 width="100"  target="*osasoi_2" name="" x=150 y=300]

;[glink color="black" text="デートランス夕方"  size=13 width="100"  target="*date_rans_yu" name="" x=150 y=360]
;[glink color="black" text="デートライ夕方"  size=13 width="100"  target="*date_lion_yu" name="" x=150 y=420]
;[glink color="black" text="デートクラ夕方"  size=13 width="100"  target="*date_kra_yu" name="" x=150 y=480]

;[glink color="black" text="デートランスsp"  size=13 width="100"  target="*date_rans_sp" name="" x=150 y=540]
;[glink color="black" text="デートライsp"  size=13 width="100"  target="*date_lion_sp" name="" x=300 y=0]
;[glink color="black" text="デートクラsp"  size=13 width="100"  target="*date_kra_sp" name="" x=300 y=60]

;[glink color="black" text="デートランス夕方sp"  size=13 width="100"  target="*date_rans_sp_yu" name="" x=300 y=120]
;[glink color="black" text="デートライ夕方sp"  size=13 width="100"  target="*date_lion_sp_yu" name="" x=300 y=180]
;[glink color="black" text="デートクラ夕方sp"  size=13 width="100"  target="*date_kra_sp_yu" name="" x=300 y=240]


;[s]

;何もなければ占いへ


;;[jump storage="scenario_2/uranai/uranai.ks"]
;;[jump storage="scenario_2/mini_game/mini_game.ks"]
;;[jump storage="scenario_2/mini_game/kujibiki.ks"]


*ryouri_rans


;[live2d_rans_touroku]
;[live2d_fadeout time=50]
;[live2d_rans_show_sekkin]
;[eval exp="f.friend=1"]
;[eval exp="f.ryouri_test=1"]
;[jump storage="scenario_2/ryouri/ryouri_run.ks"]
*ryouri_lion


;[live2d_lion_touroku]
;[live2d_fadeout time=50]
;[live2d_lion_show_sekkin]
;[eval exp="f.friend=2"]
;[eval exp="f.ryouri_test=1"]
;[eval exp="f.lionrenailevel=6"]
;[jump storage="scenario_2/ryouri/ryouri_run.ks"]

*ryouri_kra

;[live2d_kra_touroku]
;[live2d_fadeout time=50]
;[live2d_kra_show_sekkin]
;[eval exp="f.friend=3"]
;[eval exp="f.ryouri_test=1"]
;[jump storage="scenario_2/ryouri/ryouri_run.ks"]





*kouhou_rans_a
;[eval exp="tf.kouhou_rans=1"]
;[eval exp="f.kouhou_score=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_lion_a
;[eval exp="tf.kouhou_lion=1"]
;[eval exp="f.kouhou_score=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_kra_a
;[eval exp="tf.kouhou_kra=1"]
;[eval exp="f.kouhou_score=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_glif_a

;[eval exp="f.glif_battle_kizuna=1"]
;[eval exp="f.kouhou_score=1"]
;[eval exp="f.kouhou_glif=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]

;[jump target=*first]
*kouhou_rans_c
;[eval exp="tf.kouhou_rans=1"]
;[eval exp="f.kouhou_score=3"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_lion_c
;[eval exp="tf.kouhou_lion=1"]
;[eval exp="f.kouhou_score=3"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_kra_c
;[eval exp="tf.kouhou_kra=1"]
;[eval exp="f.kouhou_score=3"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_glif_c

;[eval exp="f.glif_battle_kizuna=1"]
;[eval exp="f.kouhou_score=3"]
;[eval exp="f.kouhou_glif=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]

;[jump target=*first]
*kouhou_rans_b
;[eval exp="tf.kouhou_rans=1"]
;[eval exp="f.kouhou_score=2"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_lion_b
;[eval exp="tf.kouhou_lion=1"]
;[eval exp="f.kouhou_score=2"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_kra_b
;[eval exp="tf.kouhou_kra=1"]
;[eval exp="f.kouhou_score=2"]
;[eval exp="f.kouhou_kra=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]
;[jump target=*first]
*kouhou_glif_b

;[eval exp="f.glif_battle_kizuna=1"]
;[eval exp="f.kouhou_score=2"]
;[eval exp="f.kouhou_glif=1"]
;[call storage="scenario_2/kouhou/kouhou_macro_copy.ks"]
;[call storage="scenario_2/kouhou/serihu_macro_copy.ks"]
;[kouhou_end]
;;[jump storage="scenario_2/kouhou/kouhou_run.ks"]

;[jump target=*first]

*osasoi
;[creru_outo_map]
;[eval exp="f.irain_tec=10"]
;[eval exp="f.irain_brain=10"]
;[eval exp="f.irain_charm=10"]
;[jump target=*first]

*osasoi_2
;[creru_outo_map]
;[eval exp="f.irain_tec=200"]
;[eval exp="f.irain_brain=200"]
;[eval exp="f.irain_charm=200"]
;[jump target=*first]


*date_rans
;[live2d_rans_touroku]
;[live2d_fadeout time=50]
;[live2d_rans_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=1"]

;[creru_outo_map]
;[jump target=*first]
*date_lion
;[live2d_lion_touroku]
;[live2d_fadeout time=50]
;[live2d_lion_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=2"]
;[creru_outo_map]
;[jump target=*first]
*date_kra
;[live2d_kra_touroku]
;[live2d_fadeout time=50]
;[live2d_kra_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=3"]
;[creru_outo_map]
;[jump target=*first]

*date_rans_sp
;[live2d_rans_touroku]
;[live2d_fadeout time=50]
;[live2d_rans_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=1"]
;[eval exp="f.ranskonkando=100"]

;[creru_outo_map]
;[jump target=*first]
*date_lion_sp
;[live2d_lion_touroku]
;[live2d_fadeout time=50]
;[live2d_lion_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=2"]
;[eval exp="f.lionkonkando=100"]
;[creru_outo_map]
;[jump target=*first]
*date_kra_sp
;[live2d_kra_touroku]
;[live2d_fadeout time=50]
;[live2d_kra_show_sekkin]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=3"]
;[eval exp="f.krakonkando=100"]
;[creru_outo_map]
;[jump target=*first]




*date_rans_sp_yu
;[live2d_rans_touroku]
;[live2d_fadeout time=50]
;[live2d_rans_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=1"]
;[eval exp="f.ranskonkando=100"]

;[creru_outo_map]
;[jump target=*first]
*date_lion_sp_yu
;[live2d_lion_touroku]
;[live2d_fadeout time=50]
;[live2d_lion_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=2"]
;[eval exp="f.lionkonkando=100"]
;[creru_outo_map]
;[jump target=*first]
*date_kra_sp_yu
;[live2d_kra_touroku]
;[live2d_fadeout time=50]
;[live2d_kra_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=3"]
;[eval exp="f.krakonkando=100"]
;[creru_outo_map]
;[jump target=*first]



*date_rans_yu
;[live2d_rans_touroku]
;[live2d_fadeout time=50]
;[live2d_rans_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=1"]
;[eval exp="f.irain_move=1"]
;[creru_outo_map]
;[jump target=*first]
*date_lion_yu
;[live2d_lion_touroku]
;[live2d_fadeout time=50]
;[live2d_lion_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=2"]
;[eval exp="f.irain_move=1"]
;[creru_outo_map]
;[jump target=*first]
*date_kra_yu
;[live2d_kra_touroku]
;[live2d_fadeout time=50]
;[live2d_kra_show_sekkin]
;[eval exp="f.test_yu=1"]
;[eval exp="f.date_now=1"]
;[eval exp="f.friend=3"]
;[eval exp="f.irain_move=1"]
;[creru_outo_map]
;[jump target=*first]