
[macro name="battle_bg"]

[if exp="f.event_main_5_1==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka3_tasogare.jpg'"]

[elsif exp="f.event_main_10==1"]
[eval exp="tf.bgimage_battle_0='creru_gate_yoru_tasogare.jpg'"]

[elsif exp="f.event_main_11==1"]
[eval exp="tf.bgimage_battle_0='black.png'"]

[elsif exp="f.battle_event_14_ura==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='creru_uradoori.jpg'"]

[elsif exp="f.battle_event_14_ura==1&&f.irain_move==0"]
[eval exp="tf.bgimage_battle_0='creru_uradoori_yuu.jpg'"]

[elsif exp="f.battle_event_14_ryousi==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='kanpan_tasogare.jpg'"]

[elsif exp="f.battle_event_14_ryousi==1&&f.irain_move==0"]
[eval exp="tf.bgimage_battle_0='kanpan_yuu_tasogare.jpg'"]

[elsif exp="f.battle_event_14_keiko==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='keiko_tasogare.jpg'"]

[elsif exp="f.battle_event_14_keiko==1&&f.irain_move==0"]
[eval exp="tf.bgimage_battle_0='keiko_yuu_tasogare.jpg'"]


[elsif exp="f.event_war_kra==1&&f.rusia_battle==1"]
[eval exp="tf.bgimage_battle_0='black.png'"]

[elsif exp="f.event_war_kra==1"]
[eval exp="tf.bgimage_battle_0='sougen1_tatakai_tasogare.jpg'"]

[elsif exp="f.event_war_lion==1"]
[eval exp="tf.bgimage_battle_0='sougen1_tatakai_tasogare.jpg'"]

[elsif exp="f.event_war_rans==1||f.event_war_glif==1"]
[eval exp="tf.bgimage_battle_0='sougen1_tatakai_tasogare.jpg'"]

[elsif exp="f.monster_group_27==1"]
[eval exp="tf.bgimage_battle_0='mujintou1_tasogare.jpg'"]

[elsif exp="f.monster_group_28==1"]
[eval exp="tf.bgimage_battle_0='gyokuza_tasogare.jpg'"]

[elsif exp="f.makara_battle==1"]
[eval exp="tf.bgimage_battle_0='black.jpg'"]

[elsif exp="f.varius_battle==1"]
[eval exp="tf.bgimage_battle_0='ijigen.jpg'"]

[else]
[eval exp="tf.bgimage_battle_0='tougijou_ac.jpg'"]


[endif]


[if exp="f.event_main_8_days>0"]

;マップバトルイベント用
[if exp="f.skill_only==1"]
[eval exp="tf.skill_only=f.skill_only"]
[eval exp="tf.bgimage_battle_0='tougijou_ac.jpg'"]
[elsif exp="f.place_creru_hunsui==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka3_yuugata_tasogare.jpg'"]
[elsif exp="f.place_creru_hunsui==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka3_tasogare.jpg'"]
[elsif exp="f.place_creru_uradoori==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='creru_uradoori_yuu.jpg'"]
[elsif exp="f.place_creru_uradoori==1"]
[eval exp="tf.bgimage_battle_0='creru_uradoori.jpg'"]
[elsif exp="f.place_creru_sakaba==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka1_yuu_tasogare.jpg'"]
[elsif exp="f.place_creru_sakaba==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka1_tasogare.jpg'"]
[elsif exp="f.place_creru_gaia==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='gaiamori_yuu_tasogare.jpg'"]
[elsif exp="f.place_creru_gaia==1"]
[eval exp="tf.bgimage_battle_0='gaiamori_tasogare.jpg'"]
[elsif exp="f.place_creru_oukyu==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='oukyuu_yuu_tasogare.jpg'"]
[elsif exp="f.place_creru_oukyu==1"]
[eval exp="tf.bgimage_battle_0='oukyuu_tasogare.jpg'"]
[elsif exp="f.place_creru_iriguti==1&&f.irain_move==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka2_yuugata_tasogare.jpg'"]
[elsif exp="f.place_creru_out==1"]
[eval exp="tf.bgimage_battle_0='crerumatinaka2_tasogare.jpg'"]
[endif]

[endif]


[endmacro]

[macro name="battle_bgm_pre"]
[if exp="f.event_main_5_1==1"]
[preload storage="data/bgm/sentou_siken.ogg"]
[elsif exp="f.event_main_10==1"]
[preload storage="data/bgm/soudou.ogg"]
[elsif exp="f.rusia_battle==1"]
[preload storage="data/bgm/rusia_bgm.ogg"]
[else]
[preload storage="data/bgm/battle_bgm.ogg"]
[endif]

[endmacro]

[macro name="battle_bgm"]
[if exp="f.event_main_5_1==1"]
[playbgm storage="sentou_siken.ogg"]
[elsif exp="f.event_main_10==1"]
[playbgm storage="soudou.ogg"]
[elsif exp="f.rusia_battle==1"]
[playbgm storage="rusia_bgm.ogg"]
[elsif exp="f.battle_event_14_ura==1"]
[playbgm storage="battle_bgm.ogg"]
[elsif exp="f.battle_event_14_ryousi==1"]
[playbgm storage="sentou_siken.ogg"]
[elsif exp="f.battle_event_14_keiko==1"]
[playbgm storage="sentou_siken.ogg"]
[elsif exp="f.event_war_lion==1"]
[playbgm storage="soudou.ogg"]
[elsif exp="f.event_war_rans==1||f.event_war_glif==1"]
[playbgm storage="erumu_senjou.ogg"]
[elsif exp="f.event_war_kra==1"]
[playbgm storage="erumu_senjou.ogg"]
[elsif exp="f.monster_group_27==1"]
[playbgm storage="sentou_siken.ogg"]
[elsif exp="f.monster_group_28==1"]

[playbgm storage="rusia_bgm.ogg"]

[elsif exp="f.makara_battle==1"]
[playbgm storage="soudou.ogg"]

[elsif exp="f.varius_battle==1"]
[playbgm storage="variasu_battle.ogg"]
[else]
[playbgm storage="battle_bgm.ogg"]
[endif]

[endmacro]


[macro name="no_guard"]
;ガード不能フラグ
[if exp="f.event_main_11==1"]
[eval exp="tf.guard_no=1"]
[endif]

[endmacro]

;仲間入力
[macro name="friend_nyuryoku"]
;[eval exp="f.friend=0"]
[if exp="f.event_glif_1==1"]
[eval exp="f.friend=5"]
[endif]
[endmacro]



[return]