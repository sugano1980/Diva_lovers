

;グリフ
;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]

[eval exp="f.glif_normal_warai='glif_tatie/glif_normal_warai.gif'"]
[eval exp="f.glif_mihirakii='glif_tatie/glif_mihiraki.gif'"]
[eval exp="f.glif_kamae='glif_tatie/glif_kamae.gif'"]
[eval exp="f.glif_mehuse='glif_tatie/glif_mehuse.gif'"]
[eval exp="f.glif_komari_warai='glif_tatie/glif_komari_warai.gif'"]
[eval exp="f.glif_normal='glif_tatie/glif_normal.gif'"]
[eval exp="f.glif_sinpai='glif_tatie/glif_sinpai.gif'"]

[eval exp="f.glif_rei_normal_warai='glif_tatie/glif_rei_normal_warai.gif'"]
[eval exp="f.glif_rei_mihiraki='glif_tatie/glif_rei_mihiraki.gif'"]
[eval exp="f.glif_rei_kamae='glif_tatie/glif_rei_kamae.gif'"]
[eval exp="f.glif_rei_mehuse='glif_tatie/glif_rei_mehuse.gif'"]
[eval exp="f.glif_rei_komari_warai='glif_tatie/glif_rei_komari_warai.gif'"]
[eval exp="f.glif_rei_normal='glif_tatie/glif_rei_normal.gif'"]
[eval exp="f.glif_rei_ketui='glif_tatie/glif_rei_ketui.gif'"]
[eval exp="f.glif_rei_sinpai='glif_tatie/glif_rei_sinpai.gif'"]



;[live2d_new name="glif_r" model_id="glif_r" lip=true jname="グリフ"]
;[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]

;[live2d_show name="glif_r" y=-4.0 x=0.0 scale=8.2]

;[live2d_show name="glif_r" y=-4.7 x=0.0 scale=9.4]

;[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]

[macro name="live2d_glif_touroku"]
[live2d_load][refresh_hanyou]
[live2d_new name="glif_r" model_id="glif_r" lip=true jname="グリフ"][live2d_load_off]
[endmacro]

[macro name="live2d_glif_rei_touroku"]
[live2d_load][refresh_hanyou]
[live2d_new name="glifrei" model_id="glifrei" lip=true jname="グリフ"][live2d_load_off]
[endmacro]

[macro name="live2d_glif_show"]
[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]
[endmacro]
[macro name="live2d_glif_rei_show"]
[live2d_show name="glifrei" y=-2.8 x=0.0 scale=6.2]
[endmacro]


;表情
[macro name="glif_mod_idle_hard"]
[live2d_mod name="glif_r" idle="Idle_hard" no=0]
[endmacro]

[macro name="glif_mod_idle_normal"]
[live2d_mod name="glif_r" idle="Idle" no=0]
[endmacro]

[macro name="glif_mod_idle_mehuse"]
[live2d_mod name="glif_r" idle="Idle_mehuse" no=0]
[endmacro]

[macro name="glif_mod_idle_mode_2"]
[live2d_mod name="glif_r" idle="Idle_mode_2" no=0]
[endmacro]

[macro name="glif_mod_idle_mode_3"]
[live2d_mod name="glif_r" idle="Idle_mode_3" no=0]
[endmacro]



[macro name="glif_exp_normal"]
[live2d_motion name="glif_r" mtn="Exp_normal"]
[endmacro]

[macro name="glif_exp_normal_warai"]
[live2d_motion name="glif_r" mtn="Exp_normal_warai"]
[endmacro]

[macro name="glif_exp_mehuse_muzukasii"]
[live2d_motion name="glif_r" mtn="Exp_mehuse_muzukasii"]
[endmacro]


[macro name="glif_exp_smile"]
[live2d_motion name="glif_r" mtn="Exp_smile"]
[endmacro]


[macro name="glif_exp_sinpai"]
[live2d_motion name="glif_r" mtn="Exp_sinpai"]
[endmacro]


[macro name="glif_exp_komari_warai"]
[live2d_motion name="glif_r" mtn="Exp_komari_warai"]
[endmacro]

[macro name="glif_exp_komari"]
[live2d_motion name="glif_r" mtn="Exp_komari"]
[endmacro]


[macro name="glif_exp_komari_sekimen"]
[live2d_motion name="glif_r" mtn="Exp_komari_sekimen"]
[endmacro]


[macro name="glif_exp_tere"]
[live2d_motion name="glif_r" mtn="Exp_tere"]
[endmacro]


[macro name="glif_exp_bisyo"]
[live2d_motion name="glif_r" mtn="Exp_bisyo"]
[endmacro]


[macro name="glif_exp_mousiwakenai"]
[live2d_motion name="glif_r" mtn="Exp_mousiwakenai"]
[endmacro]


[macro name="glif_exp_metoji_warai"]
[live2d_motion name="glif_r" mtn="Exp_metoji_warai"]
[endmacro]

[macro name="glif_exp_metoji"]
[live2d_motion name="glif_r" mtn="Exp_metoji"]
[endmacro]



[macro name="glif_exp_mehuse_warai"]
[live2d_motion name="glif_r" mtn="Exp_mehuse_warai"]
[endmacro]


[macro name="glif_exp_mehuse"]
[live2d_motion name="glif_r" mtn="Exp_mehuse"]
[endmacro]


[macro name="glif_exp_mihiraki"]
[live2d_motion name="glif_r" mtn="Exp_mihiraki"]
[endmacro]


[macro name="glif_exp_yokome_warai"]
[live2d_motion name="glif_r" mtn="Exp_yokome_warai"]
[endmacro]


[macro name="glif_exp_ketui"]
[live2d_motion name="glif_r" mtn="Exp_ketui"]
[endmacro]



;目の動き

[macro name="glif_eyes_normal"]
[live2d_motion name="glif_r" mtn="Eyes_normal"]
[endmacro]
[macro name="glif_eyes_left"]
[live2d_motion name="glif_r" mtn="Eyes_left"]
[endmacro]

[macro name="glif_eyes_left_under"]
[live2d_motion name="glif_r" mtn="Eyes_left_under"]
[endmacro]

[macro name="glif_eyes_left_above"]
[live2d_motion name="glif_r" mtn="Eyes_left_above"]
[endmacro]

[macro name="glif_eyes_right"]
[live2d_motion name="glif_r" mtn="Eyes_right"]
[endmacro]

[macro name="glif_eyes_right_under"]
[live2d_motion name="glif_r" mtn="Eyes_right_under"]
[endmacro]

[macro name="glif_eyes_right_above"]
[live2d_motion name="glif_r" mtn="Eyes_right_above"]
[endmacro]

[macro name="glif_eyes_under"]
[live2d_motion name="glif_r" mtn="Eyes_under"]
[endmacro]

[macro name="glif_eyes_above"]
[live2d_motion name="glif_r" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="glif_head_normal"]
[live2d_motion name="glif_r" mtn="Head_normal"]
[endmacro]
[macro name="glif_head_left_x"]
[live2d_motion name="glif_r" mtn="Head_left_x"]
[endmacro]
[macro name="glif_head_right_x"]
[live2d_motion name="glif_r" mtn="Head_right_x"]
[endmacro]
[macro name="glif_head_left_z"]
[live2d_motion name="glif_r" mtn="Head_left_z"]
[endmacro]
[macro name="glif_head_right_z"]
[live2d_motion name="glif_r" mtn="Head_right_z"]
[endmacro]
[macro name="glif_head_above_y"]
[live2d_motion name="glif_r" mtn="Head_above_y"]
[endmacro]
[macro name="glif_head_under_y"]
[live2d_motion name="glif_r" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="glif_body_normal"]
[live2d_motion name="glif_r" mtn="Body_normal"]
[endmacro]
[macro name="glif_body_yoroi"]
[live2d_motion name="glif_r" mtn="Body_normal_war"]
[endmacro]
[macro name="glif_body_right_x"]
[live2d_motion name="glif_r" mtn="Body_right_x"]
[endmacro]
[macro name="glif_body_left_x"]
[live2d_motion name="glif_r" mtn="Body_left_x"]
[endmacro]
[macro name="glif_body_right_z"]
[live2d_motion name="glif_r" mtn="Body_right_z"]
[endmacro]
[macro name="glif_body_left_z"]
[live2d_motion name="glif_r" mtn="Body_left_z"]
[endmacro]
[macro name="glif_body_above_y"]
[live2d_motion name="glif_r" mtn="Body_above_y"]
[endmacro]
[macro name="glif_body_under_y"]
[live2d_motion name="glif_r" mtn="Body_under_y"]
[endmacro]

;腕の動き

[macro name="glif_arms_kamae"]
[live2d_motion name="glif_r" mtn="Arms_kamae"]
[endmacro]

[macro name="glif_arms_kamae_2"]
[live2d_motion name="glif_r" mtn="Arms_kamae_2"]
[endmacro]


[macro name="glif_arms_kosinite_right"]
[live2d_motion name="glif_r" mtn="Arms_kosinite_right"]
[endmacro]
[macro name="glif_arms_kosinite_left"]
[live2d_motion name="glif_r" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="glif_arms_udekumi"]
[live2d_motion name="glif_r" mtn="Arms_udekumi"]
[endmacro]

[macro name="glif_arms_atamanite"]
[live2d_motion name="glif_r" mtn="Arms_atamanite]
[endmacro]

[macro name="glif_arms_poripori"]
[live2d_motion name="glif_r" mtn="Arms_poripori"]
[endmacro]

[macro name="glif_arms_right_x"]
[live2d_motion name="glif_r" mtn="Arms__right_x"]
[endmacro]

[macro name="glif_arms_normal"]
[live2d_motion name="glif_r" mtn="Arms_normal"]
[endmacro]


[macro name="glif_arms_left_x"]
[live2d_motion name="glif_r" mtn="Arms_left_x"]
[endmacro]

;装備はずし
[macro name="glif_non_equip"]
[live2d_motion name="glif_r" mtn="Non_equip"]
[endmacro]

;呼吸
[macro name="glif_breath"]
[live2d_motion name="glif_r" mtn="Breath"]
[endmacro]

[macro name="glif_normal"]
[live2d_mod name="glif_r" idle="Normal" no=0]
[endmacro]



;グリフ礼服-------------------------------------------------
;表情
[macro name="glif_rei_mod_idle_hard"]
[live2d_mod name="glifrei" idle="Idle_hard" no=0]
[endmacro]

[macro name="glif_rei_mod_idle_normal"]
[live2d_mod name="glifrei" idle="Idle" no=0]
[endmacro]

[macro name="glif_rei_mod_idle_mehuse"]
[live2d_mod name="glifrei" idle="Idle_mehuse" no=0]
[endmacro]

[macro name="glif_rei_mod_idle_mode_2"]
[live2d_mod name="glifrei" idle="Idle_mode_2" no=0]
[endmacro]

[macro name="glif_rei_mod_idle_mode_3"]
[live2d_mod name="glifrei" idle="Idle_mode_3" no=0]
[endmacro]



[macro name="glif_rei_exp_normal"]
[live2d_motion name="glifrei" mtn="Exp_normal"]
[endmacro]

[macro name="glif_rei_exp_normal_warai"]
[live2d_motion name="glifrei" mtn="Exp_normal_warai"]
[endmacro]

[macro name="glif_rei_exp_mehuse_muzukasii"]
[live2d_motion name="glifrei" mtn="Exp_mehuse_muzukasii"]
[endmacro]


[macro name="glif_rei_exp_smile"]
[live2d_motion name="glifrei" mtn="Exp_smile"]
[endmacro]


[macro name="glif_rei_exp_sinpai"]
[live2d_motion name="glifrei" mtn="Exp_sinpai"]
[endmacro]


[macro name="glif_rei_exp_komari_warai"]
[live2d_motion name="glifrei" mtn="Exp_komari_warai"]
[endmacro]

[macro name="glif_rei_exp_komari"]
[live2d_motion name="glifrei" mtn="Exp_komari"]
[endmacro]


[macro name="glif_rei_exp_komari_sekimen"]
[live2d_motion name="glifrei" mtn="Exp_komari_sekimen"]
[endmacro]


[macro name="glif_rei_exp_tere"]
[live2d_motion name="glifrei" mtn="Exp_tere"]
[endmacro]


[macro name="glif_rei_exp_bisyo"]
[live2d_motion name="glifrei" mtn="Exp_bisyo"]
[endmacro]


[macro name="glif_rei_exp_mousiwakenai"]
[live2d_motion name="glifrei" mtn="Exp_mousiwakenai"]
[endmacro]


[macro name="glif_rei_exp_metoji_warai"]
[live2d_motion name="glifrei" mtn="Exp_metoji_warai"]
[endmacro]

[macro name="glif_rei_exp_metoji"]
[live2d_motion name="glifrei" mtn="Exp_metoji"]
[endmacro]



[macro name="glif_rei_exp_mehuse_warai"]
[live2d_motion name="glifrei" mtn="Exp_mehuse_warai"]
[endmacro]


[macro name="glif_rei_exp_mehuse"]
[live2d_motion name="glifrei" mtn="Exp_mehuse"]
[endmacro]


[macro name="glif_rei_exp_mihiraki"]
[live2d_motion name="glifrei" mtn="Exp_mihiraki"]
[endmacro]


[macro name="glif_rei_exp_yokome_warai"]
[live2d_motion name="glifrei" mtn="Exp_yokome_warai"]
[endmacro]


[macro name="glif_rei_exp_ketui"]
[live2d_motion name="glifrei" mtn="Exp_ketui"]
[endmacro]



;目の動き

[macro name="glif_rei_eyes_normal"]
[live2d_motion name="glifrei" mtn="Eyes_normal"]
[endmacro]
[macro name="glif_rei_eyes_left"]
[live2d_motion name="glifrei" mtn="Eyes_left"]
[endmacro]

[macro name="glif_rei_eyes_left_under"]
[live2d_motion name="glifrei" mtn="Eyes_left_under"]
[endmacro]

[macro name="glif_rei_eyes_left_above"]
[live2d_motion name="glifrei" mtn="Eyes_left_above"]
[endmacro]

[macro name="glif_rei_eyes_right"]
[live2d_motion name="glifrei" mtn="Eyes_right"]
[endmacro]

[macro name="glif_rei_eyes_right_under"]
[live2d_motion name="glifrei" mtn="Eyes_right_under"]
[endmacro]

[macro name="glif_rei_eyes_right_above"]
[live2d_motion name="glifrei" mtn="Eyes_right_above"]
[endmacro]

[macro name="glif_rei_eyes_under"]
[live2d_motion name="glifrei" mtn="Eyes_under"]
[endmacro]

[macro name="glif_rei_eyes_above"]
[live2d_motion name="glifrei" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="glif_rei_head_normal"]
[live2d_motion name="glifrei" mtn="Head_normal"]
[endmacro]
[macro name="glif_rei_head_left_x"]
[live2d_motion name="glifrei" mtn="Head_left_x"]
[endmacro]
[macro name="glif_rei_head_right_x"]
[live2d_motion name="glifrei" mtn="Head_right_x"]
[endmacro]
[macro name="glif_rei_head_left_z"]
[live2d_motion name="glifrei" mtn="Head_left_z"]
[endmacro]
[macro name="glif_rei_head_right_z"]
[live2d_motion name="glifrei" mtn="Head_right_z"]
[endmacro]
[macro name="glif_rei_head_above_y"]
[live2d_motion name="glifrei" mtn="Head_above_y"]
[endmacro]
[macro name="glif_rei_head_under_y"]
[live2d_motion name="glifrei" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="glif_rei_body_normal"]
[live2d_motion name="glifrei" mtn="Body_normal"]
[endmacro]
[macro name="glif_rei_body_yoroi"]
[live2d_motion name="glifrei" mtn="Body_normal_war"]
[endmacro]
[macro name="glif_rei_body_right_x"]
[live2d_motion name="glifrei" mtn="Body_right_x"]
[endmacro]
[macro name="glif_rei_body_left_x"]
[live2d_motion name="glifrei" mtn="Body_left_x"]
[endmacro]
[macro name="glif_rei_body_right_z"]
[live2d_motion name="glifrei" mtn="Body_right_z"]
[endmacro]
[macro name="glif_rei_body_left_z"]
[live2d_motion name="glifrei" mtn="Body_left_z"]
[endmacro]
[macro name="glif_rei_body_above_y"]
[live2d_motion name="glifrei" mtn="Body_above_y"]
[endmacro]
[macro name="glif_rei_body_under_y"]
[live2d_motion name="glifrei" mtn="Body_under_y"]
[endmacro]

;腕の動き

[macro name="glif_rei_arms_kamae"]
[live2d_motion name="glifrei" mtn="Arms_kamae"]
[endmacro]

[macro name="glif_rei_arms_kamae_2"]
[live2d_motion name="glifrei" mtn="Arms_kamae_2"]
[endmacro]


[macro name="glif_rei_arms_kosinite_right"]
[live2d_motion name="glifrei" mtn="Arms_kosinite_right"]
[endmacro]
[macro name="glif_rei_arms_kosinite_left"]
[live2d_motion name="glifrei" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="glif_rei_arms_udekumi"]
[live2d_motion name="glifrei" mtn="Arms_udekumi"]
[endmacro]

[macro name="glif_rei_arms_atamanite"]
[live2d_motion name="glifrei" mtn="Arms_atamanite]
[endmacro]

[macro name="glif_rei_arms_poripori"]
[live2d_motion name="glifrei" mtn="Arms_poripori"]
[endmacro]

[macro name="glif_rei_arms_right_x"]
[live2d_motion name="glifrei" mtn="Arms_right_x"]
[endmacro]

[macro name="glif_rei_arms_udehiroge_left"]
[live2d_motion name="glifrei" mtn="Arms_left_udehiroge"]
[endmacro]

[macro name="glif_rei_arms_normal"]
[live2d_motion name="glifrei" mtn="Arms_normal"]
[endmacro]


[macro name="glif_rei_arms_left_x"]
[live2d_motion name="glifrei" mtn="Arms_left_x"]
[endmacro]

;装備はずし
[macro name="glif_rei_non_equip"]
[live2d_motion name="glifrei" mtn="Non_equip"]
[endmacro]

;呼吸
[macro name="glif_rei_breath"]
[live2d_motion name="glifrei" mtn="Breath"]
[endmacro]

[macro name="glif_rei_normal"]
[live2d_mod name="glifrei" idle="Normal" no=0]
[endmacro]




;グリフ立ち絵

[macro name="glif_tatie_touroku"]
[chara_new name="glif" storage="glif_tatie/glif_normal.gif"]
[endmacro]

[macro name="glif_tatie_show"]
[chara_on][chara_show name="glif" width="570" height="743" top=10][endmacro]

[macro name="glif_tatie_normal"]
[chara_mod name="glif" storage="glif_tatie/glif_normal.gif"]
[endmacro]

[macro name="glif_tatie_normal_warai"]
[chara_mod name="glif" storage="glif_tatie/glif_normal_warai.gif"]
[endmacro]

[macro name="glif_tatie_mihiraki"]
[chara_mod name="glif" storage="glif_tatie/glif_mihiraki.gif"][endmacro]


[macro name="glif_tatie_kamae"]
[chara_mod name="glif" storage="glif_tatie/glif_kamae.gif"]
[endmacro]

[macro name="glif_tatie_mehuse"]
[chara_mod name="glif" storage="glif_tatie/glif_mehuse.gif"]
[endmacro]

[macro name="glif_tatie_komari_warai"]
[chara_mod name="glif" storage="glif_tatie/glif_komari_warai.gif"]
[endmacro]

[macro name="glif_tatie_sinpai"]
[chara_mod name="glif" storage="glif_tatie/glif_sinpai.gif"]
[endmacro]

[macro name="glif_tatie_ketui"]
[chara_mod name="glif" storage="glif_tatie/glif_ketui.gif"]
[endmacro]




[macro name="glif_tatie_rei_touroku"]
[chara_new name="glif_rei" storage="glif_tatie/glif_rei_normal.gif"]
[endmacro]

[macro name="glif_tatie_rei_show"]
[chara_on][chara_show name="glif_rei" width="570" height="743" top=10][endmacro]

[macro name="glif_tatie_rei_normal"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_normal.gif"]
[endmacro]

[macro name="glif_tatie_rei_normal_warai"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_normal_warai.gif"]
[endmacro]

[macro name="glif_tatie_rei_mihiraki"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_mihiraki.gif"][endmacro]


[macro name="glif_tatie_rei_kamae"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_kamae.gif"]
[endmacro]

[macro name="glif_tatie_rei_mehuse"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_mehuse.gif"]
[endmacro]

[macro name="glif_tatie_rei_komari_warai"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_komari_warai.gif"]
[endmacro]

[macro name="glif_tatie_rei_sinpai"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_sinpai.gif"]
[endmacro]

[macro name="glif_tatie_rei_ketui"]
[chara_mod name="glif_rei" storage="glif_tatie/glif_rei_ketui.gif"]
[endmacro]


[macro name="glif_tatie_touroku_war"]
[chara_new name="glif_war" storage="glif_tatie/glif_normal_war.gif"]
[endmacro]

[macro name="glif_tatie_show_war"]
[chara_on][chara_show name="glif_war" width="570" height="743" top=10][endmacro]

[macro name="glif_tatie_mehuse_war"]
[chara_mod name="glif_war" storage="glif_tatie/glif_mehuse_war.gif"]
[endmacro]

[macro name="glif_tatie_normal_war"]
[chara_mod name="glif_war" storage="glif_tatie/glif_normal_war.gif"]
[endmacro]






[macro name="glif_tatie_battle_home0"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home_00.png" top=-50]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_home_00.png" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home1"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home_01.png" top=-50]
[else]
[chara_mod name="glif" storage="glif_tatie/glif_battle_home_01.png" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home0_war"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home_00.png" top=-50]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_home_00_war.png" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home1_war"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home_01.png" top=-50]
[else]
[chara_mod name="glif" storage="glif_tatie/glif_battle_home_01_war.png" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home_mod"]
[if exp="f.glif_rei==1"]
[chara_mod name="glif" storage="glif_tatie/glif_rei_battle_home.gif" top=-50]
[else]
[chara_mod name="glif" storage="glif_tatie/glif_battle_home.gif" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home.gif" top=-50]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_home.gif" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home_war"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home.gif" top=-50]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_home_war.gif" top=-50]
[endif]
[endmacro]

[macro name="glif_tatie_battle_home_mod_war"]
[if exp="f.glif_rei==1"]
[chara_mod name="glif" storage="glif_tatie/glif_rei_battle_home.gif" top=-50]
[else]
[chara_mod name="glif" storage="glif_tatie/glif_battle_home_war.gif" top=-50]
[endif]
[endmacro]


[macro name="glif_tatie_battle_home_2"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_home_2.gif" top=-100]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_home_2.gif" top=-100]
[endif]
[endmacro]

[macro name="glif_tatie_battle_dual_war"]
[chara_show name="glif" storage="glif_tatie/glif_battle_serihu_dual_war.png" top=-100]
[endmacro]

[macro name="glif_tatie_battle_serihu"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_serihu.png" top=-35]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_serihu.png" top=-35]
[endif]
[endmacro]

[macro name="glif_tatie_battle_serihu_war"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_serihu.png" top=-35]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_serihu_war.png" top=-35]
[endif]
[endmacro]

[macro name="glif_tatie_battle_serihu_2_war"]
[if exp="f.glif_rei==1"]
[chara_show name="glif" storage="glif_tatie/glif_rei_battle_serihu_2.png" top=-35]
[else]
[chara_show name="glif" storage="glif_tatie/glif_battle_serihu_2_war.png" top=-35]
[endif]
[endmacro]








[macro name="chara_kakusu"]
[chara_hide_all]
[chara_off]
[endmacro]











[return]