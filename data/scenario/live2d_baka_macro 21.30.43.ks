;ランス

;[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]

;[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]



[macro name="live2d_rans_touroku"]
[live2d_load]
[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
[live2d_load_off]
[endmacro]

[macro name="live2d_rans_show"]
[live2d_on]
[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[endmacro]

[macro name="live2d_rans_show_sekkin"]

[endmacro]

[macro name="live2d_rans_show"]
[live2d_on]
[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[endmacro]

[macro name="live2d_rans_show_sekkin"]
[live2d_on]
[live2d_show name="baka0" y=-3.0 scale=6.5]
[endmacro]

[macro name="live2d_rans_mod_sekkin"]
[live2d_on]
[live2d_mod name="baka0" y=-3.0 scale=6.5]
[endmacro]



;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;表情

[macro name="baka_arms_udekumi"]
[live2d_motion name="baka0" mtn="Arms_udekumi"]
[endmacro]

[macro name="baka_mod_idle"]
[live2d_mod name="baka0" idle="Idle" no=0]
[endmacro]

[macro name="baka_mod_idle_no_move"]
[live2d_mod name="baka0" idle="Idle_no_move" no=0]
[endmacro]

[macro name="baka_mod_idle_no_move_mehuse"]
[live2d_mod name="baka0" idle="Idle_no_move_mehuse" no=0]
[endmacro]


[macro name="baka_mod_idle_no_move_metoji"]
[live2d_mod name="baka0" idle="Idle_no_move_metoji" no=0]
[endmacro]



[macro name="baka_exp_normal"]
[live2d_motion name="baka0" mtn="Exp_normal"]
[endmacro]

[macro name="baka_exp_normal_warai"]
[live2d_motion name="baka0" mtn="Exp_normal_warai"]
[endmacro]

[macro name="baka_exp_bisyo"]
[live2d_motion name="baka0" mtn="Exp_bisyo"]
[endmacro]

[macro name="baka_exp_mihiraki"]
[live2d_motion name="baka0" mtn="Exp_mihiraki"]
[endmacro]



[macro name="baka_exp_ketui"]
[live2d_motion name="baka0" mtn="Exp_ketui"]
[endmacro]


[macro name="baka_exp_komari_warai"]
[live2d_motion name="baka0" mtn="Exp_komari_warai"]
[endmacro]


[macro name="baka_exp_mehuse_kutiake"]
[live2d_motion name="baka0" mtn="Exp_mehuse_kutiake"]
[endmacro]


[macro name="baka_exp_mehuse_mousiwakenai"]
[live2d_motion name="baka0" mtn="Exp_mehuse_mousiwakenai"]
[endmacro]


[macro name="baka_exp_mehuse_muzukasii"]
[live2d_motion name="baka0" mtn="Exp_mehuse_muzukasii"]
[endmacro]


[macro name="baka_exp_mehuse_warai"]
[live2d_motion name="baka0" mtn="Exp_mehuse_warai"]
[endmacro]


[macro name="baka_exp_mehuse"]
[live2d_motion name="baka0" mtn="Exp_mehuse"]
[endmacro]


[macro name="baka_exp_metoji"]
[live2d_motion name="baka0" mtn="Exp_metoji"]
[endmacro]


[macro name="baka_exp_metoji_warai"]
[live2d_motion name="baka0" mtn="Exp_metoji_warai"]
[endmacro]


[macro name="baka_exp_mousiwakenai_kutiake"]
[live2d_motion name="baka0" mtn="Exp_mousiwakenai_kutiake"]
[endmacro]


[macro name="baka_exp_sekimen_yokome"]
[live2d_motion name="baka0" mtn="Exp_sekimen_yokome"]
[endmacro]


[macro name="baka_exp_sinpai"]
[live2d_motion name="baka0" mtn="Exp_sinpai"]
[endmacro]

[macro name="baka_exp_smile"]
[live2d_motion name="baka0" mtn="Exp_smile"]
[endmacro]



[macro name="baka_exp_sitahuku_normal"]
[live2d_motion name="baka0" mtn="Exp_sitahuku_normal"]
[endmacro]




[macro name="baka_exp_yokome_warai"]
[live2d_motion name="baka0" mtn="Exp_yokome_warai"]
[endmacro]



[macro name="baka_exp_yokome"]
[live2d_motion name="baka0" mtn="Exp_yokome"]
[endmacro]


;目の動き

[macro name="baka_eyes_normal"]
[live2d_motion name="baka0" mtn="Eyes_normal"]
[endmacro]
[macro name="baka_eyes_left"]
[live2d_motion name="baka0" mtn="Eyes_left"]
[endmacro]

[macro name="baka_eyes_left_under"]
[live2d_motion name="baka0" mtn="Eyes_left_under"]
[endmacro]

[macro name="baka_eyes_left_above"]
[live2d_motion name="baka0" mtn="Eyes_left_above"]
[endmacro]

[macro name="baka_eyes_right"]
[live2d_motion name="baka0" mtn="Eyes_right"]
[endmacro]

[macro name="baka_eyes_right_under"]
[live2d_motion name="baka0" mtn="Eyes_right_under"]
[endmacro]

[macro name="baka_eyes_right_above"]
[live2d_motion name="baka0" mtn="Eyes_right_above"]
[endmacro]

[macro name="baka_eyes_left_close"]
[live2d_motion name="baka0" mtn="Eyes_left_close"]
[endmacro]

[macro name="baka_eyes_right_close"]
[live2d_motion name="baka0" mtn="Eyes_right_close"]
[endmacro]

[macro name="baka_eyes_under"]
[live2d_motion name="baka0" mtn="Eyes_under"]
[endmacro]

[macro name="baka_eyes_above"]
[live2d_motion name="baka0" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="baka_head_normal"]
[live2d_motion name="baka0" mtn="Head_normal"]
[endmacro]
[macro name="baka_head_left_x"]
[live2d_motion name="baka0" mtn="Head_left_x"]
[endmacro]
[macro name="baka_head_right_x"]
[live2d_motion name="baka0" mtn="Head_right_x"]
[endmacro]
[macro name="baka_head_left_z"]
[live2d_motion name="baka0" mtn="Head_left_z"]
[endmacro]
[macro name="baka_head_right_z"]
[live2d_motion name="baka0" mtn="Head_right_z"]
[endmacro]
[macro name="baka_head_above_y"]
[live2d_motion name="baka0" mtn="Head_above_y"]
[endmacro]
[macro name="baka_head_under_y"]
[live2d_motion name="baka0" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="baka_body_normal"]
[live2d_motion name="baka0" mtn="Body_normal"]
[endmacro]
[macro name="baka_body_right_x"]
[live2d_motion name="baka0" mtn="Body_right_x"]
[endmacro]
[macro name="baka_body_left_x"]
[live2d_motion name="baka0" mtn="Body_left_x"]
[endmacro]
[macro name="baka_body_right_z"]
[live2d_motion name="baka0" mtn="Body_right_z"]
[endmacro]
[macro name="baka_body_left_z"]
[live2d_motion name="baka0" mtn="Body_left_z"]
[endmacro]
[macro name="baka_body_above_y"]
[live2d_motion name="baka0" mtn="Body_above_y"]
[endmacro]
[macro name="baka_body_under_y"]
[live2d_motion name="baka0" mtn="Body_under_y"]
[endmacro]
[macro name="baka_body_sitahuku"]
[live2d_motion name="baka0" mtn="Body_sitahuku"]
[endmacro]

[macro name="baka_body_kataage"]
[live2d_motion name="baka0" mtn="Body_kataage"]
[endmacro]

[macro name="baka_body_katasage"]
[live2d_motion name="baka0" mtn="Body_katasage"]
[endmacro]



;腕の動き
[macro name="baka_arms_kosinite_right"]
[live2d_motion name="baka0" mtn="Arms_kosinite_right"]
[endmacro]

[macro name="baka_arms_kosinite_right_sitahuku"]
[live2d_motion name="baka0" mtn="Arms_kosinite_right_sitahuku"]
[endmacro]

[macro name="baka_arms_kosinite_right_sitahuku_modosu"]
[live2d_motion name="baka0" mtn="Arms_kosinite_right_sitahuku_modosu"]
[endmacro]


[macro name="baka_arms_kosinite_left"]
[live2d_motion name="baka0" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="baka_arms_kosinite_left_sitahuku"]
[live2d_motion name="baka0" mtn="Arms_kosinite_left_sitahuku"]
[endmacro]

[macro name="baka_arms_kosinite_left_sitahuku_modosu"]
[live2d_motion name="baka0" mtn="Arms_kosinite_left_sitahuku_modosu"]
[endmacro]




[macro name="baka_arms_udekumi"]
[live2d_motion name="baka0" mtn="Arms_udekumi"]
[endmacro]

[macro name="baka_arms_migite"]
[live2d_motion name="baka0" mtn="Arms_migite"]
[endmacro]

[macro name="baka_arms_agonite"]
[live2d_motion name="baka0" mtn="Arms_agonite"]
[endmacro]

[macro name="baka_arms_right_x_left"]
[live2d_motion name="baka0" mtn="Arms_right_x"]
[endmacro]

[macro name="baka_arms_right_x_right"]
[live2d_motion name="baka0" mtn="Arms_right_x_right"]
[endmacro]

[macro name="baka_arms_normal"]
[live2d_motion name="baka0" mtn="Arms_normal"]
[endmacro]



[macro name="baka_arms_left_x_left"]
[live2d_motion name="baka0" mtn="Arms_left_x_left"]
[endmacro]

[macro name="baka_arms_left_x_right"]
[live2d_motion name="baka0" mtn="Arms_left_x_right"]
[endmacro]

;制服
[macro name="seihuku"]
[live2d_motion name="baka0" mtn="Seihuku"]
[endmacro]

;呼吸
[macro name="baka_breath"]
[live2d_motion name="baka0" mtn="Breath"]
[endmacro]



[macro name="baka_mod_idle_short"]
[live2d_mod name="baka0" idle="Idle_short" no=0]
[endmacro]










[return]