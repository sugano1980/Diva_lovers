;ランス

;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;[live2d_on][live2d_load]
;[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
;;[rans_para_kioku][live2d_show name="rans2" y=-1.9 x=0.0 scale=4.3]
;[live2d_mod name="rans2" y=-2.0 scale=4.5]
;[live2d_mod name="rans2" y=-3.0 scale=6.5]
;[live2d_show name="rans2" y=-4.0 x=0.0 scale=8.0]
;[live2d_load_off]


[eval exp="f.rans_ikari='rans_tatie/rans_ikari.gif'"]
[eval exp="f.rans_kunou='rans_tatie/rans_kunou.gif'"]
[eval exp="f.rans_mayuhisome='rans_tatie/rans_mayuhisome.gif'"]
[eval exp="f.rans_mehuse_warai='rans_tatie/rans_mehuse_warai.gif'"]
[eval exp="f.rans_mehuse='rans_tatie/rans_mehuse.gif'"]
[eval exp="f.rans_mihiraki='rans_tatie/rans_mihiraki.gif'"]

[eval exp="f.rans_normal='rans_tatie/rans_normal.gif'"]
[eval exp="f.rans_normal_warai='rans_tatie/rans_normal_warai.gif'"]
[eval exp="f.rans_sinkoku='rans_tatie/rans_sinkoku.gif'"]
[eval exp="f.rans_sinnpai='rans_tatie/rans_sinnpai.gif'"]
[eval exp="f.rans_yokome='rans_tatie/rans_yokome.gif'"]

[eval exp="f.rans_rei_ikari='rans_tatie/rans_rei_ikari.gif'"]
[eval exp="f.rans_rei_kunou='rans_tatie/rans_rei_kunou.gif'"]
[eval exp="f.rans_rei_mayuhisome='rans_tatie/rans_rei_mayuhisome.gif'"]
[eval exp="f.rans_rei_mehuse_warai='rans_tatie/rans_rei_mehuse_warai.gif'"]
[eval exp="f.rans_rei_mehuse='rans_tatie/rans_rei_mehuse.gif'"]

[eval exp="f.rans_rei_normal='rans_tatie/rans_rei_normal.gif'"]
[eval exp="f.rans_rei_normal_warai='rans_tatie/rans_rei_normal_warai.gif'"]
[eval exp="f.rans_rei_sinkoku='rans_tatie/rans_rei_sinkoku.gif'"]
[eval exp="f.rans_rei_sinnpai='rans_tatie/rans_rei_sinnpai.gif'"]
[eval exp="f.rans_rei_yokome='rans_tatie/rans_rei_yokome.gif'"]






[macro name="live2d_rans_touroku"]
[if exp="f.rans_rei==1"]
[live2d_load]
[refresh_hanyou]
[live2d_new name="rans3" model_id="rans3" lip=true jname="ランスロット"]
[live2d_load_off]
[else]
[live2d_load]
[refresh_hanyou]
[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_load_off]
[endif]
[endmacro]

[macro name="live2d_rans_show"]
[if exp="f.rans_rei==1"]
[live2d_on][rans_para_kioku]
[live2d_show name="rans3" y=-1.7 x=0.0 scale=4.3]
[else]
[live2d_on][rans_para_kioku]
[live2d_show name="rans2" y=-1.7 x=0.0 scale=4.3]
[endif]
[endmacro]

[macro name="live2d_rans_show_sekkin"]
[if exp="f.rans_rei==1"]
[live2d_on][rans_para_kioku]
[live2d_show name="rans3" y=-3.0 scale=6.5]
[else]
[live2d_on][rans_para_kioku]
[live2d_show name="rans2" y=-3.0 scale=6.5]
[endif]
[endmacro]




[macro name="live2d_rans_mod_sekkin"]
[if exp="f.rans_rei==1"]
[live2d_on]
[live2d_mod name="rans3" y=-3.0 scale=6.5]
[else]
[live2d_on]
[live2d_mod name="rans2" y=-3.0 scale=6.5]
[endif]
[endmacro]


[macro name="live2d_rans_mod_sekkin_2"]
[if exp="f.rans_rei==1"]
[live2d_on]
[live2d_mod name="rans3" y=-5.0 scale=9.9]
[else]
[live2d_on]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[endif]
[endmacro]

[macro name="live2d_rans_kakusu"]
[if exp="f.rans_rei==1"]
[live2d_off]
[live2d_hide name="rans3"]
[else]
[live2d_off]
[live2d_hide name="rans2"]
[endif]
[endmacro]



;表情

[macro name="rans_arms_udekumi"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_udekumi"]
[else]
[live2d_motion name="rans2" mtn="Arms_udekumi"]
[endif]
[endmacro]

[macro name="rans_mod_idle"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle" no=0]
[else]
[live2d_mod name="rans2" idle="Idle" no=0]
[endif]
[endmacro]


[macro name="rans_mod_idle_mode_2"]
[live2d_mod name="rans2" idle="Idle_mode_2" no=0]
[endmacro]

[macro name="rans_mod_idle_mode_3"]
[live2d_mod name="rans2" idle="Idle_mode_3" no=0]
[endmacro]


[macro name="rans_mod_idle_no_move_metoji"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle_no_move_metoji" no=0]
[else]
[live2d_mod name="rans2" idle="Idle_no_move_metoji" no=0]
[endif]
[endmacro]

[macro name="rans_mod_idle_no_move_mehuse"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle_no_move_mehuse" no=0]
[else]
[live2d_mod name="rans2" idle="Idle_no_move_mehuse" no=0]
[endif]
[endmacro]

[macro name="rans_mod_idle_no_move_mihiraki"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle_no_move_mihiraki" no=0]
[else]
[live2d_mod name="rans2" idle="Idle_no_move_mihiraki" no=0]
[endif]
[endmacro]

[macro name="rans_mod_idle_no_move_mehuse_2"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle_no_move_mehuse_2" no=0]
[else]
[live2d_mod name="rans2" idle="Idle_no_move_mehuse_2" no=0]
[endif]
[endmacro]

[macro name="rans_mod_idle_no_move"]
[if exp="f.rans_rei==1"]
[live2d_mod name="rans3" idle="Idle_no_move" no=0]
[else]
[live2d_mod name="rans2" idle="Idle_no_move" no=0]
[endif][endmacro]


[macro name="rans_exp_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_normal"]
[else]
[live2d_motion name="rans2" mtn="Exp_normal"]
[endif][endmacro]

[macro name="rans_exp_normal_warai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_normal_warai"]
[else]
[live2d_motion name="rans2" mtn="Exp_normal_warai"]
[endif][endmacro]

[macro name="rans_exp_bisyo"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_bisyo"]
[else]
[live2d_motion name="rans2" mtn="Exp_bisyo"]
[endif][endmacro]

[macro name="rans_exp_kunou"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_normal"]
[else]
[live2d_motion name="rans2" mtn="Exp_kunou"]
[endif][endmacro]

[macro name="rans_exp_mihiraki"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mihiraki"]
[else]
[live2d_motion name="rans2" mtn="Exp_mihiraki"]
[endif][endmacro]

[macro name="rans_exp_mihiraki_aseri"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mihiraki_aseri"]
[else]
[live2d_motion name="rans2" mtn="Exp_mihiraki_aseri"]
[endif][endmacro]



[macro name="rans_exp_ketui"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_ketui"]
[else]
[live2d_motion name="rans2" mtn="Exp_ketui"]
[endif]
[endmacro]

[macro name="rans_exp_ikari"]
[if exp="f.rans_rei==1"]
;[live2d_motion name="rans3" mtn="Exp_ketui"]
[else]
[live2d_motion name="rans2" mtn="Exp_ikari"]
[endif]
[endmacro]


[macro name="rans_exp_komari_warai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_komari_warai"]
[else]
[live2d_motion name="rans2" mtn="Exp_komari_warai"]
[endif][endmacro]

[macro name="rans_exp_komari"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_komari"]
[else]
[live2d_motion name="rans2" mtn="Exp_komari"]
[endif]
[endmacro]



[macro name="rans_exp_mehuse_kutiake"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mehuse_kutiake"]
[else]
[live2d_motion name="rans2" mtn="Exp_mehuse_kutiake"]
[endif]
[endmacro]


[macro name="rans_exp_mehuse_mousiwakenai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mehuse_mousiwakenai"]
[else]
[live2d_motion name="rans2" mtn="Exp_mehuse_mousiwakenai"]
[endif]
[endmacro]


[macro name="rans_exp_mehuse_muzukasii"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mehuse_muzukasii"]
[else]
[live2d_motion name="rans2" mtn="Exp_mehuse_muzukasii"]
[endif]
[endmacro]


[macro name="rans_exp_mehuse_warai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mehuse_warai"]
[else]
[live2d_motion name="rans2" mtn="Exp_mehuse_warai"]
[endif][endmacro]


[macro name="rans_exp_mehuse"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mehuse"]
[else]
[live2d_motion name="rans2" mtn="Exp_mehuse"]
[endif][endmacro]


[macro name="rans_exp_metoji"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_metoji"]
[else]
[live2d_motion name="rans2" mtn="Exp_metoji"]
[endif]
[endmacro]


[macro name="rans_exp_metoji_warai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_metoji_warai"]
[else]
[live2d_motion name="rans2" mtn="Exp_metoji_warai"]
[endif]
[endmacro]


[macro name="rans_exp_mousiwakenai_kutiake"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_mousiwakenai_kutiake"]
[else]
[live2d_motion name="rans2" mtn="Exp_mousiwakenai_kutiake"]
[endif][endmacro]


[macro name="rans_exp_sekimen_yokome"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_sekimen_yokome"]
[else]
[live2d_motion name="rans2" mtn="Exp_sekimen_yokome"]
[endif][endmacro]


[macro name="rans_exp_sinpai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_sinpai"]
[else]
[live2d_motion name="rans2" mtn="Exp_sinpai"]
[endif]
[endmacro]


[macro name="rans_exp_sitahuku_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_sitahuku_normal"]
[else]
[live2d_motion name="rans2" mtn="Exp_sitahuku_normal"]
[endif][endmacro]




[macro name="rans_exp_yokome_warai"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_yokome_warai"]
[else]
[live2d_motion name="rans2" mtn="Exp_yokome_warai"]
[endif][endmacro]


[macro name="rans_exp_bisyo_2"]
[if exp="f.rans_rei==1"]
;[live2d_motion name="rans3" mtn=""]
[else]
[live2d_motion name="rans2" mtn="Exp_bisyo_2"]
[endif][endmacro]


[macro name="rans_exp_yokome"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_yokome"]
[else]
[live2d_motion name="rans2" mtn="Exp_yokome"]
[endif][endmacro]


[macro name="rans_exp_naki"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_yokome"]
[else]
[live2d_motion name="rans2" mtn="Exp_naki"]
[endif][endmacro]


[macro name="rans_exp_naki_metoji"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Exp_yokome"]
[else]
[live2d_motion name="rans2" mtn="Exp_naki_metoji"]
[endif][endmacro]


;目の動き

[macro name="rans_eyes_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_normal"]
[else]
[live2d_motion name="rans2" mtn="Eyes_normal"]
[endif][endmacro]
[macro name="rans_eyes_left"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_left"]
[else]
[live2d_motion name="rans2" mtn="Eyes_left"]
[endif][endmacro]

[macro name="rans_eyes_left_under"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_left_under"]
[else]
[live2d_motion name="rans2" mtn="Eyes_left_under"]
[endif][endmacro]

[macro name="rans_eyes_left_above"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_left_above"]
[else]
[live2d_motion name="rans2" mtn="Eyes_left_above"]
[endif][endmacro]

[macro name="rans_eyes_right"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_right"]
[else]
[live2d_motion name="rans2" mtn="Eyes_right"]
[endif][endmacro]

[macro name="rans_eyes_right_under"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_right_under"]
[else]
[live2d_motion name="rans2" mtn="Eyes_right_under"]
[endif][endmacro]

[macro name="rans_eyes_right_above"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_right_above"]
[else]
[live2d_motion name="rans2" mtn="Eyes_right_above"]
[endif][endmacro]

[macro name="rans_eyes_left_close"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_left_close"]
[else]
[live2d_motion name="rans2" mtn="Eyes_left_close"]
[endif][endmacro]

[macro name="rans_eyes_right_close"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_right_close"]
[else]
[live2d_motion name="rans2" mtn="Eyes_right_close"]
[endif][endmacro]

[macro name="rans_eyes_under"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_under"]
[else]
[live2d_motion name="rans2" mtn="Eyes_under"]
[endif][endmacro]

[macro name="rans_eyes_above"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Eyes_above"]
[else]
[live2d_motion name="rans2" mtn="Eyes_above"]
[endif][endmacro]

;頭の動き
[macro name="rans_head_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_normal"]
[else]
[live2d_motion name="rans2" mtn="Head_normal"]
[endif][endmacro]

[macro name="rans_head_left_x"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_left_x"]
[else]
[live2d_motion name="rans2" mtn="Head_left_x"]
[endif][endmacro]

[macro name="rans_head_right_x"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_right_x"]
[else]
[live2d_motion name="rans2" mtn="Head_right_x"]
[endif][endmacro]
[macro name="rans_head_left_z"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_left_z"]
[else]
[live2d_motion name="rans2" mtn="Head_left_z"]
[endif][endmacro]
[macro name="rans_head_right_z"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_right_z"]
[else]
[live2d_motion name="rans2" mtn="Head_right_z"]
[endif][endmacro]
[macro name="rans_head_above_y"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_above_y"]
[else]
[live2d_motion name="rans2" mtn="Head_above_y"]
[endif][endmacro]
[macro name="rans_head_under_y"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Head_under_y"]
[else]
[live2d_motion name="rans2" mtn="Head_under_y"]
[endif][endmacro]

;体の動き
[macro name="rans_body_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_normal"]
[else]
[live2d_motion name="rans2" mtn="Body_normal"]
[endif][endmacro]

[macro name="rans_body_yoroi"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_normal"]
[else]
[live2d_motion name="rans2" mtn="Body_yoroi"]
[endif][endmacro]


[macro name="rans_body_right_x_half"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_right_x_half"]
[else]
[live2d_motion name="rans2" mtn="Body_right_x"]
[endif][endmacro]

[macro name="rans_body_left_x_half"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_left_x_half"]
[else]
[live2d_motion name="rans2" mtn="Body_left_x"]
[endif][endmacro]

[macro name="rans_body_right_x"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_right_x"]
[else]
[live2d_motion name="rans2" mtn="Body_right_x"]
[endif][endmacro]

[macro name="rans_body_left_x"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_left_x"]
[else]
[live2d_motion name="rans2" mtn="Body_left_x"]
[endif][endmacro]


[macro name="rans_body_right_z"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_right_z"]
[else]
[live2d_motion name="rans2" mtn="Body_right_z"]
[endif][endmacro]

[macro name="rans_body_left_z"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_left_z"]
[else]
[live2d_motion name="rans2" mtn="Body_left_z"]
[endif][endmacro]

[macro name="rans_body_right_z_half"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_right_z_half"]
[else]
[live2d_motion name="rans2" mtn="Body_right_z"]
[endif][endmacro]

[macro name="rans_body_left_z_half"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_left_z_half"]
[else]
[live2d_motion name="rans2" mtn="Body_left_z"]
[endif][endmacro]

[macro name="rans_body_above_y"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_above_y"]
[else]
[live2d_motion name="rans2" mtn="Body_above_y"]
[endif][endmacro]

[macro name="rans_body_under_y"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_under_y"]
[else]
[live2d_motion name="rans2" mtn="Body_under_y"]
[endif][endmacro]

[macro name="rans_body_sitahuku"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_sitahuku"]
[else]
[live2d_motion name="rans2" mtn="Body_sitahuku"]
[endif][endmacro]

[macro name="rans_body_no_manto"]
[if exp="f.rans_rei==1"]
;[live2d_motion name="rans3" mtn="Body_sitahuku"]
[else]
[live2d_motion name="rans2" mtn="Body_no_manto"]
[endif][endmacro]

[macro name="rans_body_kataage"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_kataage"]
[else]
[live2d_motion name="rans2" mtn="Body_kataage"]
[endif][endmacro]

[macro name="rans_body_katasage"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Body_katasage"]
[else]
[live2d_motion name="rans2" mtn="Body_katasage"]
[endif][endmacro]



;腕の動き
[macro name="rans_arms_kosinite_right"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_kosinite_right"]
[else]
[live2d_motion name="rans2" mtn="Arms_kosinite_right"]
[endif][endmacro]

[macro name="rans_arms_kosinite_right_sitahuku"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_kosinite_right_sitahuku"]
[else]
[live2d_motion name="rans2" mtn="Arms_kosinite_right_sitahuku"]
[endif][endmacro]

[macro name="rans_arms_kosinite_left"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_kosinite_left"]
[else]
[live2d_motion name="rans2" mtn="Arms_kosinite_left"]
[endif][endmacro]

[macro name="rans_arms_kosinite_left_sitahuku"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_kosinite_left_sitahuku"]
[else]
[live2d_motion name="rans2" mtn="Arms_kosinite_left_sitahuku"]
[endif][endmacro]


[macro name="rans_arms_udekumi"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_udekumi"]
[else]
[live2d_motion name="rans2" mtn="Arms_udekumi"]
[endif][endmacro]

[macro name="rans_arms_migite"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_migite"]
[else]
[live2d_motion name="rans2" mtn="Arms_migite"]
[endif][endmacro]

[macro name="rans_arms_agonite"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_agonite"]
[else]
[live2d_motion name="rans2" mtn="Arms_agonite"]
[endif][endmacro]

[macro name="rans_arms_right_x_left"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_right_x"]
[else]
[live2d_motion name="rans2" mtn="Arms_right_x"]
[endif][endmacro]

[macro name="rans_arms_right_x_right"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_right_x_right"]
[else]
[live2d_motion name="rans2" mtn="Arms_right_x_right"]
[endif][endmacro]

[macro name="rans_arms_normal"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_normal"]
[else]
[live2d_motion name="rans2" mtn="Arms_normal"]
[endif][endmacro]



[macro name="rans_arms_left_x_left"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_left_x_left"]
[else]
[live2d_motion name="rans2" mtn="Arms_left_x_left"]
[endif][endmacro]

[macro name="rans_arms_left_x_right"]
[if exp="f.rans_rei==1"]
[live2d_motion name="rans3" mtn="Arms_left_x_right"]
[else]
[live2d_motion name="rans2" mtn="Arms_left_x_right"]
[endif][endmacro]

[macro name="rans_arms_kamae"]
[if exp="f.rans_rei==1"]
;[live2d_motion name="rans3" mtn="Arms_left_x_right"]
[else]
[live2d_motion name="rans2" mtn="Arms_kamae"]
[endif][endmacro]

[macro name="rans_unaduki"]
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
[endmacro]





;ランス立ち絵

[macro name="rans_tatie_touroku"]
[chara_new name="rans" storage="rans_tatie/rans_normal.gif"]
[endmacro]

[macro name="rans_tatie_show"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=0]
[endmacro]

[macro name="rans_tatie_show_tall"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=1 left=0]
[endmacro]

[macro name="rans_tatie_show_left_tall"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=1 left=-70]
[endmacro]

[macro name="rans_tatie_show_right_tall"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=1 left=300]
[endmacro]



[macro name="rans_tatie_show_left"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=-70]
[endmacro]

[macro name="rans_tatie_show_right"]
[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=300]
[endmacro]

[macro name="rans_tatie_normal"]
[chara_mod name="rans" storage="rans_tatie/rans_normal.gif"]
[endmacro]


[macro name="rans_tatie_ikari"]
[chara_mod name="rans" storage="rans_tatie/rans_ikari.gif"]
[endmacro]


[macro name="rans_tatie_kunou"]
[chara_mod name="rans" storage="rans_tatie/rans_kunou.gif"]
[endmacro]


[macro name="rans_tatie_mayuhisome"]
[chara_mod name="rans" storage="rans_tatie/rans_mayuhisome.gif"]
[endmacro]


[macro name="rans_tatie_mehuse"]
[chara_mod name="rans" storage="rans_tatie/rans_mehuse.gif"]
[endmacro]

[macro name="rans_tatie_mehuse_warai"]
[chara_mod name="rans" storage="rans_tatie/rans_mehuse_warai.gif"]
[endmacro]


[macro name="rans_tatie_metoji"]
[chara_mod name="rans" storage="rans_tatie/rans_metoji.gif"]
[endmacro]


[macro name="rans_tatie_mihiraki"]
[chara_mod name="rans" storage="rans_tatie/rans_mihiraki.gif"]
[endmacro]


[macro name="rans_tatie_normal_warai"]
[chara_mod name="rans" storage="rans_tatie/rans_normal_warai.gif"]
[endmacro]

[macro name="rans_tatie_sinkoku"]
[chara_mod name="rans" storage="rans_tatie/rans_sinkoku.gif"]
[endmacro]

[macro name="rans_tatie_sinnpai"]
[chara_mod name="rans" storage="rans_tatie/rans_sinnpai.gif"]
[endmacro]

[macro name="rans_tatie_yokome"]
[chara_mod name="rans" storage="rans_tatie/rans_yokome.gif"]
[endmacro]

[macro name="rans_tatie_kamae"]
[chara_mod name="rans" storage="rans_tatie/rans_kamae.gif"]
[endmacro]
;戦争

[macro name="rans_tatie_touroku_war"]
[chara_on][chara_new name="rans_war" storage="rans_tatie/rans_normal_war.gif"]
[endmacro]

[macro name="rans_tatie_show_war"]
[rans_para_kioku]
[chara_on][chara_show name="rans_war" storage="rans_tatie/rans_normal_war.gif" top=20 left=0]
[endmacro]

[macro name="rans_tatie_normal_war"]
[chara_mod name="rans_war" storage="rans_tatie/rans_normal_war.gif"]
[endmacro]

[macro name="rans_tatie_mehuse_war"]
[chara_mod name="rans_war" storage="rans_tatie/rans_mehuse_war.gif"]
[endmacro]

[macro name="rans_tatie_ikari_war"]
[chara_mod name="rans_war" storage="rans_tatie/rans_ikari_war.gif"]
[endmacro]

[macro name="rans_tatie_mihiraki_war"]
[chara_mod name="rans_war" storage="rans_tatie/rans_mihiraki_war.gif"]
[endmacro]

[macro name="rans_tatie_yokome_war"]
[chara_mod name="rans_war" storage="rans_tatie/rans_yokome_war.gif"]
[endmacro]





[macro name="rans_tatie_battle_serihu"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_serihu.png" top=10]
[else]
[chara_show name="rans" storage="rans_tatie/rans_battle_serihu.png" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_serihu_war"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_serihu.png" top=10]
[else]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_serihu_war.png" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_serihu_2"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_serihu_2.png" top=10]
[else]
[chara_show name="rans" storage="rans_tatie/rans_battle_serihu_2.png" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_serihu_2_war"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_serihu_2.png" top=10]
[else]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_serihu_2_war.png" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_dual_war"]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_serihu_dual_war.png" top=10]
[endmacro]

[macro name="rans_tatie_battle_dual"]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_serihu_dual.png" top=10]
[endmacro]

[macro name="rans_tatie_battle_home"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_home.gif" top=10]
[else]
[chara_show name="rans" storage="rans_tatie/rans_battle_home.gif" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_home_war"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_home.gif" top=10]
[else]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_home_war.gif" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_home_2"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_home_2.gif" top=10]
[else]
[chara_show name="rans" storage="rans_tatie/rans_battle_home_2.gif" top=10]
[endif]
[endmacro]

[macro name="rans_tatie_battle_home_2_war"]
[if exp="f.rans_rei==1"]
[chara_show name="rans_rei" storage="rans_tatie/rans_rei_battle_home_2.gif" top=10]
[else]
[chara_show name="rans_war" storage="rans_tatie/rans_battle_home_2_war.gif" top=10]
[endif]
[endmacro]
















[return]