


;クライスト
;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;[live2d_on][live2d_load]
;[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[kra_para_kioku][live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
;[live2d_load_off]
;[live2d_show name="aho" y=-2.8 scale=6.2]
;[live2d_mod name="aho" y=-4.0 scale=8.2]


[eval exp="f.kra_bisyo_youen='kra_tatie/Idle_gif_bisyou_youen.gif'"]
[eval exp="f.kra_komari_warai='kra_tatie/Idle_gif_komari_warai.gif'"]
[eval exp="f.kra_komari='kra_tatie/Idle_gif_komari.gif'"]
[eval exp="f.kra_smile='kra_tatie/Idle_gif_smile.gif'"]
[eval exp="f.kra_yareyare='kra_tatie/Idle_gif_yareyare.gif'"]

[eval exp="f.kra_normal='kra_tatie/Idle_gif_normal.gif'"]
[eval exp="f.kra_agonite='kra_tatie/Idle_gif_agonite.gif'"]
[eval exp="f.kra_akireru='kra_tatie/Idle_gif_akireru.gif'"]
[eval exp="f.kra_metoji='kra_tatie/Idle_gif_metoji.gif'"]
[eval exp="f.kra_mihiraki='kra_tatie/Idle_gif_mihiraki.gif'"]
[eval exp="f.kra_yokome='kra_tatie/Idle_gif_yokome.gif'"]
[eval exp="f.kra_mehuse='kra_tatie/Idle_gif_mehuse.gif'"]




[macro name="live2d_kra_touroku"]
[live2d_load][refresh_hanyou]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]
[endmacro]


[macro name="live2d_kra_show"]
[live2d_on][kra_para_kioku]
[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
[endmacro]

[macro name="live2d_kra_show_1"]
[live2d_on][kra_para_kioku]
[live2d_show name="aho" y=-1.8 x=0.0 scale=4.2]
[endmacro]


[macro name="live2d_kra_show_sekkin"][kra_para_kioku]
[live2d_on][live2d_show name="aho" y=-2.8 scale=6.2]
[endmacro]

[macro name="live2d_kra_mod_sekkin"]
[live2d_mod name="aho" y=-2.8 scale=6.2]
[endmacro]


[macro name="live2d_kra_show_sekkin_2"][kra_para_kioku]
[live2d_on][live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_kra_mod_sekkin_2"]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_kra_kakusu"]
[live2d_off][live2d_hide name="aho"]
[endmacro]


;表情
[macro name="aho_mod_idle_coat"]
[live2d_mod name="aho" idle="Idle" no=0]
[endmacro]

[macro name="aho_mod_idle_hard"]
[live2d_mod name="aho" idle="Idle_hard" no=0]
[endmacro]

[macro name="aho_mod_idle_mode_2"]
[live2d_mod name="aho" idle="Idle_mode_2" no=0]
[endmacro]

[macro name="aho_mod_idle_mode_3"]
[live2d_mod name="aho" idle="Idle_mode_3" no=0]
[endmacro]


[macro name="aho_mod_idle_normal"]
[live2d_mod name="aho" idle="Idle_normal" no=0]
[endmacro]


[macro name="aho_mod_idle_normal_short"]
[live2d_mod name="aho" idle="Idle_normal_short" no=0]
[endmacro]

[macro name="aho_mod_idle_normal_mehuse"]
[live2d_mod name="aho" idle="Idle_normal_mehuse" no=0]
[endmacro]
[macro name="aho_mod_idle_normal_metoji"]
[live2d_mod name="aho" idle="Idle_normal_metoji" no=0]
[endmacro]

[macro name="aho_mod_idle_kurusimu"]
[live2d_mod name="aho" idle="Idle_kurusimu" no=0]
[endmacro]

[macro name="aho_mod_idle_kokyu_only"]
[live2d_mod name="aho" idle="Idle_kokyu_only" no=0]
[endmacro]

[macro name="aho_mod_idle_kokyu_only_op"]
[live2d_mod name="aho" idle="Idle_kokyu_only_op" no=0]
[endmacro]

[macro name="aho_mod_idle_mihiraki"]
[live2d_mod name="aho" idle="Idle_mihiraki" no=0]
[endmacro]

[macro name="aho_mod_idle_no_coat_arm_tuika"]
[live2d_mod name="aho" idle="Idle_no_coat_arm_tuika" no=0]
[endmacro]

[macro name="aho_face_normal"]
[live2d_motion name="aho" mtn="Face_normal"]
[endmacro]

[macro name="aho_face_naki_warai"]
[live2d_motion name="aho" mtn="Face_naki_warai"]
[endmacro]

[macro name="aho_face_normal_majime"]
[live2d_motion name="aho" mtn="Face_normal_majime"]
[endmacro]


[macro name="aho_face_gantobasi"]
[live2d_motion name="aho" mtn="Face_gantobasi"]
[endmacro]

[macro name="aho_face_ikari"]
[live2d_motion name="aho" mtn="Face_ikari"]
[endmacro]

[macro name="aho_face_mihiraki"]
[live2d_motion name="aho" mtn="Face_mihiraki"]
[endmacro]

[macro name="aho_face_mihiraki_n"]
[live2d_motion name="aho" mtn="Face_mihiraki_n"]
[endmacro]


[macro name="aho_face_mehuse"]
[live2d_motion name="aho" mtn="Face_mehuse"]
[endmacro]


[macro name="aho_face_metoji"]
[live2d_motion name="aho" mtn="Face_metoji"]
[endmacro]


[macro name="aho_face_kunou"]
[live2d_motion name="aho" mtn="Face_kunou"]
[endmacro]

[macro name="aho_face_kunou_2"]
[live2d_motion name="aho" mtn="Face_kunou_2"]
[endmacro]

[macro name="aho_face_kunou_metoji"]
[live2d_motion name="aho" mtn="Face_kunou_metoji"]
[endmacro]


[macro name="aho_face_yokome_aseri"]
[live2d_motion name="aho" mtn="Face_yokome_aseri"]
[endmacro]


[macro name="aho_face_akireru"]
[live2d_motion name="aho" mtn="Face_akireru"]
[endmacro]


[macro name="aho_face_odoroki"]
[live2d_motion name="aho" mtn="Face_odoroki"]
[endmacro]


[macro name="aho_face_komari_warai"]
[live2d_motion name="aho" mtn="Face_komari_warai"]
[endmacro]


[macro name="aho_face_yokome_ase"]
[live2d_motion name="aho" mtn="Face_yokome_ase"]
[endmacro]

[macro name="aho_face_yokome"]
[live2d_motion name="aho" mtn="Face_yokome_majime"]
[endmacro]


[macro name="aho_face_aseri"]
[live2d_motion name="aho" mtn="Face_aseri"]
[endmacro]


[macro name="aho_face_gantobasi_warai"]
[live2d_motion name="aho" mtn="Face_gantobasi_warai"]
[endmacro]


[macro name="aho_face_bisyou_metoji_warai"]
[live2d_motion name="aho" mtn="Face_bisyou_metoji_warai"]
[endmacro]


[macro name="aho_face_yokome_warai"]
[live2d_motion name="aho" mtn="Face_yokome_warai"]
[endmacro]


[macro name="aho_face_metoji_warai"]
[live2d_motion name="aho" mtn="Face_metoji_warai"]
[endmacro]


[macro name="aho_face_mehuse_warai"]
[live2d_motion name="aho" mtn="Face_mehuse_warai"]
[endmacro]



[macro name="aho_face_komari"]
[live2d_motion name="aho" mtn="Face_komari"]
[endmacro]

[macro name="aho_face_tomadoi"]
[live2d_motion name="aho" mtn="Face_tomadoi"]
[endmacro]



[macro name="aho_face_yokome_majime"]
[live2d_motion name="aho" mtn="Face_yokome_majime"]
[endmacro]

[macro name="aho_face_hutuu_bisyou"]
[live2d_motion name="aho" mtn="Face_hutuu_bisyou"]
[endmacro]

[macro name="aho_face_hutuu_warai"]
[live2d_motion name="aho" mtn="Face_hutuu_warai"]
[endmacro]


[macro name="aho_face_smile_ase"]
[live2d_motion name="aho" mtn="Face_smile_ase"]
[endmacro]

[macro name="aho_face_smile"]
[live2d_motion name="aho" mtn="Face_smile_ase"]
[endmacro]


[macro name="aho_face_bisyou_youen"]
[live2d_motion name="aho" mtn="Face_bisyou_youen"]
[endmacro]


[macro name="aho_face_yareyare"]
[live2d_motion name="aho" mtn="Face_yareyare"]
[endmacro]

[macro name="aho_face_jichou"]
[live2d_motion name="aho" mtn="Face_jichou"]
[endmacro]



;目の動き

[macro name="aho_eyes_normal"]
[live2d_motion name="aho" mtn="Eyes_normal"]
[endmacro]




[macro name="aho_eyes_left"]
[live2d_motion name="aho" mtn="Eyes_left"]
[endmacro]

[macro name="aho_eyes_left_under"]
[live2d_motion name="aho" mtn="Eyes_left_under"]
[endmacro]

[macro name="aho_eyes_left_above"]
[live2d_motion name="aho" mtn="Eyes_left_above"]
[endmacro]

[macro name="aho_eyes_right"]
[live2d_motion name="aho" mtn="Eyes_right"]
[endmacro]

[macro name="aho_eyes_right_under"]
[live2d_motion name="aho" mtn="Eyes_right_under"]
[endmacro]

[macro name="aho_eyes_right_above"]
[live2d_motion name="aho" mtn="Eyes_right_above"]
[endmacro]

[macro name="aho_eyes_left_close"]
[live2d_motion name="aho" mtn="Eyes_left_close"]
[endmacro]

[macro name="aho_eyes_right_close"]
[live2d_motion name="aho" mtn="Eyes_right_close"]
[endmacro]

[macro name="aho_mabataki"]
[live2d_motion name="aho" mtn="Eyes_left_close"]
[live2d_motion name="aho" mtn="Eyes_right_close"]
[live2d_motion name="aho" mtn="Eyes_normal"]
[endmacro]



[macro name="aho_eyes_under"]
[live2d_motion name="aho" mtn="Eyes_under"]
[endmacro]

[macro name="aho_eyes_above"]
[live2d_motion name="aho" mtn="Eyes_above"]
[endmacro]

[macro name="aho_eyes_mihiraki"]
[live2d_motion name="aho" mtn="Eyes_mihiraki"]
[endmacro]

[macro name="aho_eyes_mehuse"]
[live2d_motion name="aho" mtn="Eyes_mehuse"]
[endmacro]

[macro name="aho_eyes_agureasu"]
[live2d_motion name="aho" mtn="Eyes_agureasu"]
[endmacro]

[macro name="aho_eyes_agureasu_re"]
[live2d_motion name="aho" mtn="Eyes_agureasu_re"]
[endmacro]




;頭の動き
[macro name="aho_head_normal"]
[live2d_motion name="aho" mtn="Head_normal"]
[endmacro]
[macro name="aho_head_left_x"]
[live2d_motion name="aho" mtn="Head_left_x"]
[endmacro]
[macro name="aho_head_right_x"]
[live2d_motion name="aho" mtn="Head_right_x"]
[endmacro]
[macro name="aho_head_left_z"]
[live2d_motion name="aho" mtn="Head_left_z"]
[endmacro]
[macro name="aho_head_right_z"]
[live2d_motion name="aho" mtn="Head_right_z"]
[endmacro]
[macro name="aho_head_above_y"]
[live2d_motion name="aho" mtn="Head_above_y"]
[endmacro]
[macro name="aho_head_under_y"]
[live2d_motion name="aho" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="aho_body_normal"]
[live2d_motion name="aho" mtn="Body_normal"]
[endmacro]
[macro name="aho_body_right_x"]
[live2d_motion name="aho" mtn="Body_right_x"]
[endmacro]
[macro name="aho_body_left_x"]
[live2d_motion name="aho" mtn="Body_left_x"]
[endmacro]
[macro name="aho_body_right_z"]
[live2d_motion name="aho" mtn="Body_right_z"]
[endmacro]
[macro name="aho_body_left_z"]
[live2d_motion name="aho" mtn="Body_left_z"]
[endmacro]
[macro name="aho_body_above_y"]
[live2d_motion name="aho" mtn="Body_above_y"]
[endmacro]
[macro name="aho_body_under_y"]
[live2d_motion name="aho" mtn="Body_under_y"]
[endmacro]

[macro name="aho_body_kataageru"]
[live2d_motion name="aho" mtn="Body_kataageru"]
[endmacro]

[macro name="aho_body_monshou"]
[live2d_motion name="aho" mtn="Body_monshou"]
[endmacro]

[macro name="aho_body_monshou_re"]
[live2d_motion name="aho" mtn="Body_monshou_re"]
[endmacro]

[macro name="aho_body_toumei"]
[live2d_motion name="aho" mtn="Body_toumei"]
[endmacro]

[macro name="aho_body_v_normal"]
[live2d_motion name="aho" mtn="Body_normal_v"]
[endmacro]

[macro name="aho_body_hanra"]
[live2d_motion name="aho" mtn="Body_hanra"]
[endmacro]

[macro name="aho_body_normal_hanra"]
[live2d_motion name="aho" mtn="Body_hanra_normal"]
[endmacro]




;腕の動き

[macro name="aho_arms_kamae"]
[live2d_motion name="aho" mtn="Arms_kamae"]
[endmacro]


[macro name="aho_arms_agonite"]
[live2d_motion name="aho" mtn="Arms_agonite"]
[endmacro]
[macro name="aho_arms_normal"]
[live2d_motion name="aho" mtn="Arms_normal"]
[endmacro]

[macro name="aho_arms_normal_move"]
[live2d_motion name="aho" mtn="Arms_normal_move"]
[endmacro]


[macro name="aho_arms_udekumi"]
[live2d_motion name="aho" mtn="Arms_udekumi"]
[endmacro]

[macro name="aho_arms_right_setumei"]
[live2d_motion name="aho" mtn="Arms_right_setumei"]
[endmacro]

[macro name="aho_arms_right_setumei_modosu"]
[live2d_motion name="aho" mtn="Arms_right_setumei_modosu"]
[endmacro]



[macro name="aho_arms_kurusimu_modosu"]
[live2d_motion name="aho" mtn="Arms_kurusimu_modosu"]
[endmacro]


[macro name="aho_arms_left_setumei"]
[live2d_motion name="aho" mtn="Arms_left_setumei"]
[endmacro]

[macro name="aho_arms_udekumi"]
[live2d_motion name="aho" mtn="Arms_udekumi"]
[endmacro]

[macro name="aho_arms_kurusimu"]
[live2d_motion name="aho" mtn="Arms_kurusimu"]
[endmacro]

[macro name="aho_arms_temae"]
[live2d_motion name="aho" mtn="Arms_temae"]
[endmacro]


[macro name="aho_arms_right_x_open"]
[live2d_motion name="aho" mtn="Arms_arms_right_x_open"]
[endmacro]
[macro name="aho_arms_right_x_close"]
[live2d_motion name="aho" mtn="Arms_arms_right_x_open"]
[endmacro]


[macro name="aho_arms_left_x_open"]
[live2d_motion name="aho" mtn="Arms_arms_left_x_close"]
[endmacro]
[macro name="aho_arms_left_x_close"]
[live2d_motion name="aho" mtn="Arms_arms_left_x_close"]
[endmacro]


;コートなし
[macro name="aho_no_coat"]
[live2d_motion name="aho" mtn="Non_coat"]
[endmacro]

;コート
[macro name="coat"]
[live2d_motion name="aho" mtn="Coat"]
[endmacro]



;クラ立ち絵

[macro name="kra_tatie_touroku"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[endmacro]

[macro name="kra_tatie_show"]
[kra_para_kioku]
[chara_on][chara_show name="kra" top=50]
[endmacro]

[macro name="kra_tatie_show_tall"]
[kra_para_kioku]
[chara_on][chara_show name="kra" top=0 left=130]
[endmacro]

[macro name="kra_tatie_show_right"]
[kra_para_kioku]
[chara_on][chara_show name="kra" top=0 left=320]
[endmacro]

[macro name="kra_tatie_show_left"]
[kra_para_kioku]
[chara_on][chara_show name="kra" top=0 left=-70]
[endmacro]

[macro name="kra_tatie_show_rans_left"]
[chara_show name="kra" top=25 left=-70]
[endmacro]

[macro name="kra_tatie_show_rans_right"]
[chara_show name="kra" top=25 left=320]
[endmacro]



[macro name="kra_tatie_metoji"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
[endmacro]

[macro name="kra_tatie_yokome"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_yokome.gif"]
[endmacro]



[macro name="kra_tatie_mihiraki"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_mihiraki.gif"]
[endmacro]

[macro name="kra_tatie_akireru"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
[endmacro]

[macro name="kra_tatie_komari"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_komari.gif"]
[endmacro]

[macro name="kra_tatie_yareyare"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_yareyare.gif"]
[endmacro]

[macro name="kra_tatie_komari_warai"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_komari_warai.gif"]
[endmacro]

[macro name="kra_tatie_smile"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_smile.gif"]
[endmacro]

[macro name="kra_tatie_bisyou_youen"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_bisyou_youen.gif"]
[endmacro]

[macro name="kra_tatie_normal"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[endmacro]
[macro name="kra_tatie_mehuse"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_mehuse.gif"]
[endmacro]

[macro name="kra_tatie_battle_serihu"]
[chara_show name="kra" storage="kra_tatie/Idle_gif_battle_serihu.png" top=-50 left=-250]
[endmacro]

[macro name="kra_tatie_battle_serihu_2"]
[chara_show name="kra" storage="kra_tatie/Idle_gif_battle_serihu_2.png" top=-50 left=-250]
[endmacro]

[macro name="kra_tatie_battle_dual"]
[chara_show name="kra" storage="kra_tatie/Idle_jumon_battle.png" top=-50 left=-250]
;[chara_show name="kra" storage="kra_tatie/Idle_gif_jumon_1.png" left=-220]
[endmacro]

[macro name="kra_tatie_battle_home"]
[chara_show name="kra" storage="kra_tatie/Idle_gif_battle_home.gif" top=-50]
[endmacro]

[macro name="kra_tatie_battle_home_2"]
[chara_show name="kra" storage="kra_tatie/Idle_gif_battle_home_2.gif" top=-50]
[endmacro]


;クラ正装

[macro name="live2d_kra2_touroku"]
[live2d_load][refresh_hanyou]
[live2d_new name="aho_sei" model_id="aho_sei" lip=true jname="クライスト"]
[live2d_load_off]
[endmacro]


[macro name="live2d_kra2_show"]
[live2d_on][kra_para_kioku]
[live2d_show name="aho_sei" y=-1.9 x=0.0 scale=4.5]
[endmacro]


[macro name="live2d_kra2_show_sekkin"][kra_para_kioku]
[live2d_on][live2d_show name="aho_sei" y=-2.8 scale=6.2]
[endmacro]

[macro name="live2d_kra2_mod_sekkin"]
[live2d_mod name="aho_sei" y=-2.8 scale=6.2]
[endmacro]


[macro name="live2d_kra2_show_sekkin_2"][kra_para_kioku]
[live2d_on][live2d_show name="aho_sei" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_kra2_mod_sekkin_2"]
[live2d_mod name="aho_sei" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_kra2_kakusu"]
[live2d_off][live2d_hide name="aho_sei"]
[endmacro]


;表情
[macro name="aho_sei_mod_idle_coat"]
[live2d_mod name="aho_sei" idle="Idle" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_hard"]
[live2d_mod name="aho_sei" idle="Idle_hard" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_mode_2"]
[live2d_mod name="aho_sei" idle="Idle_mode_2" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_mode_3"]
[live2d_mod name="aho_sei" idle="Idle_mode_3" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_dance"]
[live2d_mod name="aho_sei" idle="Idle_dance" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_normal"]
[live2d_mod name="aho_sei" idle="Idle_normal" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_normal_short"]
[live2d_mod name="aho_sei" idle="Idle_normal_short" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_normal_mehuse"]
[live2d_mod name="aho_sei" idle="Idle_normal_mehuse" no=0]
[endmacro]
[macro name="aho_sei_mod_idle_normal_metoji"]
[live2d_mod name="aho_sei" idle="Idle_normal_metoji" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_kurusimu"]
[live2d_mod name="aho_sei" idle="Idle_kurusimu" no=0]
[endmacro]

[macro name="aho_sei_mod_idle_kokyu_only"]
[live2d_mod name="aho_sei" idle="Idle_kokyu_only" no=0]
[endmacro]






[macro name="aho_sei_mod_idle_no_coat_arm_tuika"]
[live2d_mod name="aho_sei" idle="Idle_no_coat_arm_tuika" no=0]
[endmacro]

[macro name="aho_sei_face_normal"]
[live2d_motion name="aho_sei" mtn="Face_normal"]
[endmacro]

[macro name="aho_sei_face_normal_majime"]
[live2d_motion name="aho_sei" mtn="Face_normal_majime"]
[endmacro]


[macro name="aho_sei_face_gantobasi"]
[live2d_motion name="aho_sei" mtn="Face_gantobasi"]
[endmacro]

[macro name="aho_sei_face_mihiraki"]
[live2d_motion name="aho_sei" mtn="Face_mihiraki"]
[endmacro]


[macro name="aho_sei_face_mehuse"]
[live2d_motion name="aho_sei" mtn="Face_mehuse"]
[endmacro]


[macro name="aho_sei_face_metoji"]
[live2d_motion name="aho_sei" mtn="Face_metoji"]
[endmacro]


[macro name="aho_sei_face_kunou"]
[live2d_motion name="aho_sei" mtn="Face_kunou"]
[endmacro]

[macro name="aho_sei_face_kunou_metoji"]
[live2d_motion name="aho_sei" mtn="Face_kunou_metoji"]
[endmacro]


[macro name="aho_sei_face_yokome_aseri"]
[live2d_motion name="aho_sei" mtn="Face_yokome_aseri"]
[endmacro]


[macro name="aho_sei_face_akireru"]
[live2d_motion name="aho_sei" mtn="Face_akireru"]
[endmacro]


[macro name="aho_sei_face_odoroki"]
[live2d_motion name="aho_sei" mtn="Face_odoroki"]
[endmacro]


[macro name="aho_sei_face_komari_warai"]
[live2d_motion name="aho_sei" mtn="Face_komari_warai"]
[endmacro]


[macro name="aho_sei_face_yokome_ase"]
[live2d_motion name="aho_sei" mtn="Face_metoji"]
[endmacro]


[macro name="aho_sei_face_aseri"]
[live2d_motion name="aho_sei" mtn="Face_aseri"]
[endmacro]


[macro name="aho_sei_face_gantobasi_warai"]
[live2d_motion name="aho_sei" mtn="Face_gantobasi_warai"]
[endmacro]


[macro name="aho_sei_face_bisyou_metoji_warai"]
[live2d_motion name="aho_sei" mtn="Face_bisyou_metoji_warai"]
[endmacro]


[macro name="aho_sei_face_yokome_warai"]
[live2d_motion name="aho_sei" mtn="Face_yokome_warai"]
[endmacro]


[macro name="aho_sei_face_metoji_warai"]
[live2d_motion name="aho_sei" mtn="Face_metoji_warai"]
[endmacro]


[macro name="aho_sei_face_mehuse_warai"]
[live2d_motion name="aho_sei" mtn="Face_mehuse_warai"]
[endmacro]



[macro name="aho_sei_face_komari"]
[live2d_motion name="aho_sei" mtn="Face_komari"]
[endmacro]

[macro name="aho_sei_face_tomadoi"]
[live2d_motion name="aho_sei" mtn="Face_tomadoi"]
[endmacro]



[macro name="aho_sei_face_yokome_majime"]
[live2d_motion name="aho_sei" mtn="Face_yokome_majime"]
[endmacro]

[macro name="aho_sei_face_hutuu_bisyou"]
[live2d_motion name="aho_sei" mtn="Face_hutuu_bisyou"]
[endmacro]

[macro name="aho_sei_face_hutuu_warai"]
[live2d_motion name="aho_sei" mtn="Face_hutuu_warai"]
[endmacro]


[macro name="aho_sei_face_smile_ase"]
[live2d_motion name="aho_sei" mtn="Face_smile_ase"]
[endmacro]

[macro name="aho_sei_face_smile"]
[live2d_motion name="aho_sei" mtn="Face_smile_ase"]
[endmacro]


[macro name="aho_sei_face_bisyou_youen"]
[live2d_motion name="aho_sei" mtn="Face_bisyou_youen"]
[endmacro]


[macro name="aho_sei_face_yareyare"]
[live2d_motion name="aho_sei" mtn="Face_yareyare"]
[endmacro]



;目の動き

[macro name="aho_sei_eyes_normal"]
[live2d_motion name="aho_sei" mtn="Eyes_normal"]
[endmacro]




[macro name="aho_sei_eyes_left"]
[live2d_motion name="aho_sei" mtn="Eyes_left"]
[endmacro]

[macro name="aho_sei_eyes_left_under"]
[live2d_motion name="aho_sei" mtn="Eyes_left_under"]
[endmacro]

[macro name="aho_sei_eyes_left_above"]
[live2d_motion name="aho_sei" mtn="Eyes_left_above"]
[endmacro]

[macro name="aho_sei_eyes_right"]
[live2d_motion name="aho_sei" mtn="Eyes_right"]
[endmacro]

[macro name="aho_sei_eyes_right_under"]
[live2d_motion name="aho_sei" mtn="Eyes_right_under"]
[endmacro]

[macro name="aho_sei_eyes_right_above"]
[live2d_motion name="aho_sei" mtn="Eyes_right_above"]
[endmacro]

[macro name="aho_sei_eyes_left_close"]
[live2d_motion name="aho_sei" mtn="Eyes_left_close"]
[endmacro]

[macro name="aho_sei_eyes_right_close"]
[live2d_motion name="aho_sei" mtn="Eyes_right_close"]
[endmacro]

[macro name="aho_sei_mabataki"]
[live2d_motion name="aho_sei" mtn="Eyes_left_close"]
[live2d_motion name="aho_sei" mtn="Eyes_right_close"]
[live2d_motion name="aho_sei" mtn="Eyes_normal"]
[endmacro]



[macro name="aho_sei_eyes_under"]
[live2d_motion name="aho_sei" mtn="Eyes_under"]
[endmacro]

[macro name="aho_sei_eyes_above"]
[live2d_motion name="aho_sei" mtn="Eyes_above"]
[endmacro]

[macro name="aho_sei_eyes_mihiraki"]
[live2d_motion name="aho_sei" mtn="Eyes_mihiraki"]
[endmacro]

[macro name="aho_sei_eyes_mehuse"]
[live2d_motion name="aho_sei" mtn="Eyes_mehuse"]
[endmacro]

[macro name="aho_sei_eyes_agureasu"]
[live2d_motion name="aho_sei" mtn="Eyes_agureasu"]
[endmacro]

[macro name="aho_sei_eyes_agureasu_re"]
[live2d_motion name="aho_sei" mtn="Eyes_agureasu_re"]
[endmacro]




;頭の動き
[macro name="aho_sei_head_normal"]
[live2d_motion name="aho_sei" mtn="Head_normal"]
[endmacro]
[macro name="aho_sei_head_left_x"]
[live2d_motion name="aho_sei" mtn="Head_left_x"]
[endmacro]
[macro name="aho_sei_head_right_x"]
[live2d_motion name="aho_sei" mtn="Head_right_x"]
[endmacro]
[macro name="aho_sei_head_left_z"]
[live2d_motion name="aho_sei" mtn="Head_left_z"]
[endmacro]
[macro name="aho_sei_head_right_z"]
[live2d_motion name="aho_sei" mtn="Head_right_z"]
[endmacro]
[macro name="aho_sei_head_above_y"]
[live2d_motion name="aho_sei" mtn="Head_above_y"]
[endmacro]
[macro name="aho_sei_head_under_y"]
[live2d_motion name="aho_sei" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="aho_sei_body_normal"]
[live2d_motion name="aho_sei" mtn="Body_normal"]
[endmacro]
[macro name="aho_sei_body_right_x"]
[live2d_motion name="aho_sei" mtn="Body_right_x"]
[endmacro]
[macro name="aho_sei_body_left_x"]
[live2d_motion name="aho_sei" mtn="Body_left_x"]
[endmacro]
[macro name="aho_sei_body_right_z"]
[live2d_motion name="aho_sei" mtn="Body_right_z"]
[endmacro]
[macro name="aho_sei_body_left_z"]
[live2d_motion name="aho_sei" mtn="Body_left_z"]
[endmacro]
[macro name="aho_sei_body_above_y"]
[live2d_motion name="aho_sei" mtn="Body_above_y"]
[endmacro]
[macro name="aho_sei_body_under_y"]
[live2d_motion name="aho_sei" mtn="Body_under_y"]
[endmacro]

[macro name="aho_sei_body_kataageru"]
[live2d_motion name="aho_sei" mtn="Body_kataageru"]
[endmacro]

[macro name="aho_sei_body_monshou"]
[live2d_motion name="aho_sei" mtn="Body_monshou"]
[endmacro]

[macro name="aho_sei_body_monshou_re"]
[live2d_motion name="aho_sei" mtn="Body_monshou_re"]
[endmacro]




;腕の動き

[macro name="aho_sei_arms_kamae"]
[live2d_motion name="aho_sei" mtn="Arms_kamae"]
[endmacro]


[macro name="aho_sei_arms_agonite"]
[live2d_motion name="aho_sei" mtn="Arms_agonite"]
[endmacro]
[macro name="aho_sei_arms_normal"]
[live2d_motion name="aho_sei" mtn="Arms_normal"]
[endmacro]

[macro name="aho_sei_arms_normal_move"]
[live2d_motion name="aho_sei" mtn="Arms_normal_move"]
[endmacro]


[macro name="aho_sei_arms_udekumi"]
[live2d_motion name="aho_sei" mtn="Arms_udekumi"]
[endmacro]

[macro name="aho_sei_arms_right_setumei"]
[live2d_motion name="aho_sei" mtn="Arms_right_setumei"]
[endmacro]

[macro name="aho_sei_arms_right_setumei_modosu"]
[live2d_motion name="aho_sei" mtn="Arms_right_setumei_modosu"]
[endmacro]



[macro name="aho_sei_arms_kurusimu_modosu"]
[live2d_motion name="aho_sei" mtn="Arms_kurusimu_modosu"]
[endmacro]


[macro name="aho_sei_arms_left_setumei"]
[live2d_motion name="aho_sei" mtn="Arms_left_setumei"]
[endmacro]

[macro name="aho_sei_arms_udekumi"]
[live2d_motion name="aho_sei" mtn="Arms_udekumi"]
[endmacro]

[macro name="aho_sei_arms_kurusimu"]
[live2d_motion name="aho_sei" mtn="Arms_kurusimu"]
[endmacro]

[macro name="aho_sei_arms_temae"]
[live2d_motion name="aho_sei" mtn="Arms_temae"]
[endmacro]


[macro name="aho_sei_arms_right_x_open"]
[live2d_motion name="aho_sei" mtn="Arms_arms_right_x_open"]
[endmacro]
[macro name="aho_sei_arms_right_x_close"]
[live2d_motion name="aho_sei" mtn="Arms_arms_right_x_open"]
[endmacro]


[macro name="aho_sei_arms_left_x_open"]
[live2d_motion name="aho_sei" mtn="Arms_arms_left_x_close"]
[endmacro]
[macro name="aho_sei_arms_left_x_close"]
[live2d_motion name="aho_sei" mtn="Arms_arms_left_x_close"]
[endmacro]


;コートなし
[macro name="aho_sei_no_coat"]
[live2d_motion name="aho_sei" mtn="Non_coat"]
[endmacro]

;コート
[macro name="coat"]
[live2d_motion name="aho_sei" mtn="Coat"]
[endmacro]


;ヴァリアス



[macro name="live2d_krav_touroku"]
[live2d_load][refresh_hanyou]
[live2d_new name="aho" model_id="ahov" lip=true jname="ヴァリアス"]
[live2d_load_off]
[endmacro]

[macro name="live2d_krav_show"]
[live2d_on][kra_para_kioku]
[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
[endmacro]

[macro name="live2d_krav_show_1"]
[live2d_on][kra_para_kioku]
[live2d_show name="aho" y=-1.8 x=0.0 scale=4.2]
[endmacro]


[macro name="live2d_krav_show_sekkin"][kra_para_kioku]
[live2d_on][live2d_show name="aho" y=-2.8 scale=6.2]
[endmacro]

[macro name="live2d_krav_mod_sekkin"]
[live2d_mod name="aho" y=-2.8 scale=6.2]
[endmacro]


[macro name="live2d_krav_show_sekkin_2"][kra_para_kioku]
[live2d_on][live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_krav_mod_sekkin_2"]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[endmacro]

[macro name="live2d_krav_kakusu"]
[live2d_off][live2d_hide name="aho"]
[endmacro]












[return]