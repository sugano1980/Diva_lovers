;ランス

;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;[live2d_on][live2d_load]
;[live2d_new name="rans3" model_id="rans3" lip=true jname="ランスロット"]
;;[rans_para_kioku][live2d_show name="rans3" y=-1.9 x=0.0 scale=4.3]
;[live2d_mod name="rans3" y=-2.0 scale=4.5]
;[live2d_mod name="rans3" y=-3.0 scale=6.5]
;[live2d_show name="rans3" y=-4.0 x=0.0 scale=8.0]
;[live2d_load_off]



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





[macro name="live2d_rans_rei_touroku"]
[live2d_load]
[refresh_hanyou]
[live2d_new name="rans3" model_id="rans3" lip=true jname="ランスロット"]
[live2d_load_off]
[endmacro]

[macro name="live2d_rans_rei_show"]
[live2d_on][rans_para_kioku]
[live2d_show name="rans3" y=-3.0 x=0.0 scale=6.5]
[endmacro]

[macro name="live2d_rans_rei_show_sekkin"]
[live2d_on][rans_para_kioku]
[live2d_show name="rans3" y=-3.0 x=0.0 scale=6.5]
[endmacro]




[macro name="live2d_rans_rei_mod_sekkin"]
[live2d_on]
[live2d_mod name="rans3" y=-3.0 scale=6.5]
[endmacro]

[macro name="live2d_rans_rei_kakusu"]
[live2d_off]
[live2d_hide name="rans3"]
[endmacro]



;表情

[macro name="rans_rei_arms_udekumi"]
[live2d_motion name="rans3" mtn="Arms_udekumi"]
[endmacro]

[macro name="rans_rei_mod_idle"]
[live2d_mod name="rans3" idle="Idle" no=0]
[endmacro]

[macro name="rans_rei_mod_idle_no_move_metoji"]
[live2d_mod name="rans3" idle="Idle_no_move_metoji" no=0]
[endmacro]

[macro name="rans_rei_mod_idle_no_move_mehuse"]
[live2d_mod name="rans3" idle="Idle_no_move_mehuse" no=0]
[endmacro]

[macro name="rans_rei_mod_idle_no_move"]
[live2d_mod name="rans3" idle="Idle_no_move" no=0]
[endmacro]


[macro name="rans_rei_exp_normal"]
[live2d_motion name="rans3" mtn="Exp_normal"]
[endmacro]

[macro name="rans_rei_exp_normal_warai"]
[live2d_motion name="rans3" mtn="Exp_normal_warai"]
[endmacro]

[macro name="rans_rei_exp_bisyo"]
[live2d_motion name="rans3" mtn="Exp_bisyo"]
[endmacro]

[macro name="rans_rei_exp_mihiraki"]
[live2d_motion name="rans3" mtn="Exp_mihiraki"]
[endmacro]



[macro name="rans_rei_exp_ketui"]
[live2d_motion name="rans3" mtn="Exp_ketui"]
[endmacro]


[macro name="rans_rei_exp_komari_warai"]
[live2d_motion name="rans3" mtn="Exp_komari_warai"]
[endmacro]


[macro name="rans_rei_exp_mehuse_kutiake"]
[live2d_motion name="rans3" mtn="Exp_mehuse_kutiake"]
[endmacro]


[macro name="rans_rei_exp_mehuse_mousiwakenai"]
[live2d_motion name="rans3" mtn="Exp_mehuse_mousiwakenai"]
[endmacro]


[macro name="rans_rei_exp_mehuse_muzukasii"]
[live2d_motion name="rans3" mtn="Exp_mehuse_muzukasii"]
[endmacro]


[macro name="rans_rei_exp_mehuse_warai"]
[live2d_motion name="rans3" mtn="Exp_mehuse_warai"]
[endmacro]


[macro name="rans_rei_exp_mehuse"]
[live2d_motion name="rans3" mtn="Exp_mehuse"]
[endmacro]


[macro name="rans_rei_exp_metoji"]
[live2d_motion name="rans3" mtn="Exp_metoji"]
[endmacro]


[macro name="rans_rei_exp_metoji_warai"]
[live2d_motion name="rans3" mtn="Exp_metoji_warai"]
[endmacro]


[macro name="rans_rei_exp_mousiwakenai_kutiake"]
[live2d_motion name="rans3" mtn="Exp_mousiwakenai_kutiake"]
[endmacro]


[macro name="rans_rei_exp_sekimen_yokome"]
[live2d_motion name="rans3" mtn="Exp_sekimen_yokome"]
[endmacro]


[macro name="rans_rei_exp_sinpai"]
[live2d_motion name="rans3" mtn="Exp_sinpai"]
[endmacro]


[macro name="rans_rei_exp_sitahuku_normal"]
[live2d_motion name="rans3" mtn="Exp_sitahuku_normal"]
[endmacro]




[macro name="rans_rei_exp_yokome_warai"]
[live2d_motion name="rans3" mtn="Exp_yokome_warai"]
[endmacro]



[macro name="rans_rei_exp_yokome"]
[live2d_motion name="rans3" mtn="Exp_yokome"]
[endmacro]


;目の動き

[macro name="rans_rei_eyes_normal"]
[live2d_motion name="rans3" mtn="Eyes_normal"]
[endmacro]
[macro name="rans_rei_eyes_left"]
[live2d_motion name="rans3" mtn="Eyes_left"]
[endmacro]

[macro name="rans_rei_eyes_left_under"]
[live2d_motion name="rans3" mtn="Eyes_left_under"]
[endmacro]

[macro name="rans_rei_eyes_left_above"]
[live2d_motion name="rans3" mtn="Eyes_left_above"]
[endmacro]

[macro name="rans_rei_eyes_right"]
[live2d_motion name="rans3" mtn="Eyes_right"]
[endmacro]

[macro name="rans_rei_eyes_right_under"]
[live2d_motion name="rans3" mtn="Eyes_right_under"]
[endmacro]

[macro name="rans_rei_eyes_right_above"]
[live2d_motion name="rans3" mtn="Eyes_right_above"]
[endmacro]

[macro name="rans_rei_eyes_left_close"]
[live2d_motion name="rans3" mtn="Eyes_left_close"]
[endmacro]

[macro name="rans_rei_eyes_right_close"]
[live2d_motion name="rans3" mtn="Eyes_right_close"]
[endmacro]

[macro name="rans_rei_eyes_under"]
[live2d_motion name="rans3" mtn="Eyes_under"]
[endmacro]

[macro name="rans_rei_eyes_above"]
[live2d_motion name="rans3" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="rans_rei_head_normal"]
[live2d_motion name="rans3" mtn="Head_normal"]
[endmacro]
[macro name="rans_rei_head_left_x"]
[live2d_motion name="rans3" mtn="Head_left_x"]
[endmacro]
[macro name="rans_rei_head_right_x"]
[live2d_motion name="rans3" mtn="Head_right_x"]
[endmacro]
[macro name="rans_rei_head_left_z"]
[live2d_motion name="rans3" mtn="Head_left_z"]
[endmacro]
[macro name="rans_rei_head_right_z"]
[live2d_motion name="rans3" mtn="Head_right_z"]
[endmacro]
[macro name="rans_rei_head_above_y"]
[live2d_motion name="rans3" mtn="Head_above_y"]
[endmacro]
[macro name="rans_rei_head_under_y"]
[live2d_motion name="rans3" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="rans_rei_body_normal"]
[live2d_motion name="rans3" mtn="Body_normal"]
[endmacro]
[macro name="rans_rei_body_right_x"]
[live2d_motion name="rans3" mtn="Body_right_x"]
[endmacro]
[macro name="rans_rei_body_left_x"]
[live2d_motion name="rans3" mtn="Body_left_x"]
[endmacro]
[macro name="rans_rei_body_right_z"]
[live2d_motion name="rans3" mtn="Body_right_z"]
[endmacro]
[macro name="rans_rei_body_left_z"]
[live2d_motion name="rans3" mtn="Body_left_z"]
[endmacro]
[macro name="rans_rei_body_above_y"]
[live2d_motion name="rans3" mtn="Body_above_y"]
[endmacro]
[macro name="rans_rei_body_under_y"]
[live2d_motion name="rans3" mtn="Body_under_y"]
[endmacro]
[macro name="rans_rei_body_sitahuku"]
[live2d_motion name="rans3" mtn="Body_sitahuku"]
[endmacro]

[macro name="rans_rei_body_kataage"]
[live2d_motion name="rans3" mtn="Body_kataage"]
[endmacro]

[macro name="rans_rei_body_katasage"]
[live2d_motion name="rans3" mtn="Body_katasage"]
[endmacro]



;腕の動き
[macro name="rans_rei_arms_kosinite_right"]
[live2d_motion name="rans3" mtn="Arms_kosinite_right"]
[endmacro]

[macro name="rans_rei_arms_kosinite_right_sitahuku"]
[live2d_motion name="rans3" mtn="Arms_kosinite_right_sitahuku"]
[endmacro]

[macro name="rans_rei_arms_kosinite_left"]
[live2d_motion name="rans3" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="rans_rei_arms_kosinite_left_sitahuku"]
[live2d_motion name="rans3" mtn="Arms_kosinite_left_sitahuku"]
[endmacro]


[macro name="rans_rei_arms_udekumi"]
[live2d_motion name="rans3" mtn="Arms_udekumi"]
[endmacro]

[macro name="rans_rei_arms_migite"]
[live2d_motion name="rans3" mtn="Arms_migite"]
[endmacro]

[macro name="rans_rei_arms_agonite"]
[live2d_motion name="rans3" mtn="Arms_agonite"]
[endmacro]

[macro name="rans_rei_arms_right_x_left"]
[live2d_motion name="rans3" mtn="Arms_right_x"]
[endmacro]

[macro name="rans_rei_arms_right_x_right"]
[live2d_motion name="rans3" mtn="Arms_right_x_right"]
[endmacro]

[macro name="rans_rei_arms_normal"]
[live2d_motion name="rans3" mtn="Arms_normal"]
[endmacro]



[macro name="rans_rei_arms_left_x_left"]
[live2d_motion name="rans3" mtn="Arms_left_x_left"]
[endmacro]

[macro name="rans_rei_arms_left_x_right"]
[live2d_motion name="rans3" mtn="Arms_left_x_right"]
[endmacro]



;ランス立ち絵

[macro name="rans_tatie_rei_touroku"]
[chara_new name="rans_rei" storage="rans_tatie/rans_rei_normal.gif"]
[endmacro]

[macro name="rans_tatie_rei_show"]
[rans_para_kioku]
[chara_on][chara_show name="rans_rei" storage="rans_tatie/rans_rei_normal.gif" top=0.5 left=0]
[endmacro]

[macro name="rans_tatie_rei_normal"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_normal.gif"]
[endmacro]


[macro name="rans_tatie_rei_ikari"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_ikari.gif"]
[endmacro]


[macro name="rans_tatie_rei_kunou"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_kunou.gif"]
[endmacro]


[macro name="rans_tatie_rei_mayuhisome"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_mayuhisome.gif"]
[endmacro]


[macro name="rans_tatie_rei_mehuse"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_mehuse.gif"]
[endmacro]

[macro name="rans_tatie_rei_mehuse_warai"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_mehuse_warai.gif"]
[endmacro]


[macro name="rans_tatie_rei_metoji"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_metoji.gif"]
[endmacro]


[macro name="rans_tatie_rei_mihiraki"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_mihiraki.gif"]
[endmacro]


[macro name="rans_tatie_rei_normal_warai"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_normal_warai.gif"]
[endmacro]

[macro name="rans_tatie_rei_sinkoku"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_sinkoku.gif"]
[endmacro]

[macro name="rans_tatie_rei_sinnpai"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_sinnpai.gif"]
[endmacro]

[macro name="rans_tatie_rei_yokome"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_yokome.gif"]
[endmacro]

[macro name="rans_tatie_rei_kamae"]
[chara_mod name="rans_rei" storage="rans_tatie/rans_rei_kamae.gif"]
[endmacro]



[macro name="chara_kakusu"]
[chara_hide_all]
[endmacro]
















[return]