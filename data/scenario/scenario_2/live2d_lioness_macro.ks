

;ライオネス
;表情に関しては他の動作の後、最後に加えること（瞬きの関係）

;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[lion_para_kioku][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
;[live2d_mod name="lioness" y=-2.6 scale=5.7]


;[if exp="f.live2d_on!=1"]
;[live2d_load]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
;[live2d_on][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
;[endif]

[eval exp="f.lion_chottoikari='lion_tatie/Idle_gif_chottoikari.gif'"]
[eval exp="f.lion_donari='lion_tatie/Idle_gif_donari.gif'"]
[eval exp="f.lion_kimazui='lion_tatie/Idle_gif_kimazui.gif'"]
[eval exp="f.lion_kosinite='lion_tatie/Idle_gif_kosinite.gif'"]
[eval exp="f.lion_yareyare='lion_tatie/Idle_gif_yareyare.gif'"]

[eval exp="f.lion_normal='lion_tatie/Idle_gif_normal.gif'"]
[eval exp="f.lion_normal_warai='lion_tatie/Idle_gif_normal_warai.gif'"]
[eval exp="f.lion_akireru='lion_tatie/Idle_gif_akireru.gif'"]
[eval exp="f.lion_odoroki='lion_tatie/Idle_gif_odoroki.gif'"]
[eval exp="f.lion_otikomi='lion_tatie/Idle_gif_otikomi.gif'"]
[eval exp="f.lion_udekumi='lion_tatie/Idle_gif_udekumi.gif'"]
[eval exp="f.lion_kamae='lion_tatie/Idle_gif_kamae.gif'"]
[eval exp="f.lion_nemunemu='lion_tatie/Idle_gif_nemunemu.gif'"]


[macro name="live2d_lion_touroku"]
[live2d_load]
[refresh_hanyou]
[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_load_off]
[endmacro]

[macro name="live2d_lion_show"]
[live2d_on]
[lion_para_kioku][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[endmacro]

[macro name="live2d_lion_show_sekkin"]
[live2d_on]
[lion_para_kioku][live2d_show name="lioness" y=-2.6 scale=5.7]
[endmacro]




[macro name="live2d_lion_kakusu"]
[live2d_hide name="lioness"][live2d_off]
[endmacro]

;表情
[macro name="lioness_mod_idle_hard"]
[live2d_mod name="lioness" idle="Idle_hard" no=0]
[endmacro]

[macro name="lioness_mod_idle"]
[live2d_mod name="lioness" idle="Idle" no=0]
[endmacro]

[macro name="lioness_mod_idle_no_move"]
[live2d_mod name="lioness" idle="Idle_no_move" no=0]
[endmacro]

[macro name="lioness_mod_idle_no_move_metoji"]
[live2d_mod name="lioness" idle="Idle_no_move_metoji" no=0]
[endmacro]


[macro name="lioness_mod_idle_mode_2"]
[live2d_mod name="lioness" idle="Idle_mode_2" no=0]
[endmacro]


[macro name="lioness_mod_idle_mode_3"]
[live2d_mod name="lioness" idle="Idle_mode_3" no=0]
[endmacro]

[macro name="live2d_lion_mod_sekkin"]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[endmacro]

[macro name="live2d_lion_mod_sekkin_2"]
[live2d_mod name="lioness" y=-3.7 scale=7.5]
[endmacro]



[macro name="lioness_face_normal"]
[live2d_motion name="lioness" mtn="Face_normal"]
[endmacro]

[macro name="lioness_face_normal_warai"]
[live2d_motion name="lioness" mtn="Face_normal_warai"]
[endmacro]

[macro name="lioness_face_chottoikari"]
[live2d_motion name="lioness" mtn="Face_chottoikari"]
[endmacro]


[macro name="lioness_face_naki"]
[live2d_motion name="lioness" mtn="Face_naki"]
[endmacro]

[macro name="lioness_face_nemunemu"]
[live2d_motion name="lioness" mtn="Face_nemunemu"]
[endmacro]


[macro name="lioness_face_nemunemu_akubi"]
[live2d_motion name="lioness" mtn="Face_nemunemu_akubi"]
[endmacro]


[macro name="lioness_face_odoroki_sekimen_kutiake"]
[live2d_motion name="lioness" mtn="Face_odoroki_sekimen_kutiake"]
[endmacro]


[macro name="lioness_face_ikari"]
[live2d_motion name="lioness" mtn="Face_ikari"]
[endmacro]

[macro name="lioness_face_komari_warai"]
[live2d_motion name="lioness" mtn="Face_komari_warai"]
[endmacro]


[macro name="lioness_face_otikomi"]
[live2d_motion name="lioness" mtn="Face_otikomi"]
[endmacro]


[macro name="lioness_face_sinnpai"]
[live2d_motion name="lioness" mtn="Face_sinnpai"]
[endmacro]


[macro name="lioness_face_gantobasi"]
[live2d_motion name="lioness" mtn="Face_gantobasi"]
[endmacro]


[macro name="lioness_face_metoji"]
[live2d_motion name="lioness" mtn="Face_metoji"]
[endmacro]


[macro name="lioness_face_akireru"]
[live2d_motion name="lioness" mtn="Face_akireru"]
[endmacro]


[macro name="lioness_face_odoroki"]
[live2d_motion name="lioness" mtn="Face_odoroki"]
[endmacro]


[macro name="lioness_face_bakawarai"]
[live2d_motion name="lioness" mtn="Face_bakawarai"]
[endmacro]


[macro name="lioness_face_aseri"]
[live2d_motion name="lioness" mtn="Face_aseri"]
[endmacro]


[macro name="lioness_face_odoroki_kutiake"]
[live2d_motion name="lioness" mtn="Face_odoroki_kutiake"]
[endmacro]


[macro name="lioness_face_gantobasi_warai"]
[live2d_motion name="lioness" mtn="Face_gantobasi_warai"]
[endmacro]



[macro name="lioness_face_odoroki_sekimen"]
[live2d_motion name="lioness" mtn="Face_odoroki_sekimen"]
[endmacro]



[macro name="lioness_face_donari"]
[live2d_motion name="lioness" mtn="Face_donari"]
[endmacro]

[macro name="lioness_face_mehuse_dai"]
[live2d_motion name="lioness" mtn="Face_mehuse_dai"]
[endmacro]


[macro name="lioness_face_yokome_warai"]
[live2d_motion name="lioness" mtn="Face_yokome_warai"]
[endmacro]


[macro name="lioness_face_metoji_warai"]
[live2d_motion name="lioness" mtn="Face_metoji_warai"]
[endmacro]


[macro name="lioness_face_wakewakaran"]
[live2d_motion name="lioness" mtn="Face_wakewakaran"]
[endmacro]


[macro name="lioness_face_tere"]
[live2d_motion name="lioness" mtn="Face_tere"]
[endmacro]

[macro name="lioness_face_tere_mehuse"]
[live2d_motion name="lioness" mtn="Face_tere_mehuse"]
[endmacro]


[macro name="lioness_face_warai"]
[live2d_motion name="lioness" mtn="Face_warai"]
[endmacro]


[macro name="lioness_face_kessin_warai"]
[live2d_motion name="lioness" mtn="Face_kessin_warai"]
[endmacro]


[macro name="lioness_face_muzukasii"]
[live2d_motion name="lioness" mtn="Face_muzukasii"]
[endmacro]


[macro name="lioness_face_ha"]
[live2d_motion name="lioness" mtn="Face_ha"]
[endmacro]


[macro name="lioness_face_yokome_otikomi"]
[live2d_motion name="lioness" mtn="Face_yokome_otikomi"]
[endmacro]

[macro name="lioness_face_yokome"]
[live2d_motion name="lioness" mtn="Face_yokome"]
[endmacro]


[macro name="lioness_face_yareyare"]
[live2d_motion name="lioness" mtn="Face_yareyare"]
[endmacro]



;目の動き

[macro name="lioness_eyes_normal"]
[live2d_motion name="lioness" mtn="Eyes_normal"]
[endmacro]
[macro name="lioness_eyes_left"]
[live2d_motion name="lioness" mtn="Eyes_left"]
[endmacro]

[macro name="lioness_eyes_left_under"]
[live2d_motion name="lioness" mtn="Eyes_left_under"]
[endmacro]

[macro name="lioness_eyes_left_above"]
[live2d_motion name="lioness" mtn="Eyes_left_above"]
[endmacro]

[macro name="lioness_eyes_right"]
[live2d_motion name="lioness" mtn="Eyes_right"]
[endmacro]

[macro name="lioness_eyes_right_under"]
[live2d_motion name="lioness" mtn="Eyes_right_under"]
[endmacro]

[macro name="lioness_eyes_right_above"]
[live2d_motion name="lioness" mtn="Eyes_right_above"]
[endmacro]

[macro name="lioness_eyes_left_close"]
[live2d_motion name="lioness" mtn="Eyes_left_close"]
[endmacro]

[macro name="lioness_eyes_right_close"]
[live2d_motion name="lioness" mtn="Eyes_right_close"]
[endmacro]

[macro name="lioness_eyes_under"]
[live2d_motion name="lioness" mtn="Eyes_under"]
[endmacro]

[macro name="lioness_eyes_above"]
[live2d_motion name="lioness" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="lioness_head_normal"]
[live2d_motion name="lioness" mtn="Head_normal"]
[endmacro]
[macro name="lioness_head_left_x"]
[live2d_motion name="lioness" mtn="Head_left_x"]
[endmacro]
[macro name="lioness_head_right_x"]
[live2d_motion name="lioness" mtn="Head_right_x"]
[endmacro]
[macro name="lioness_head_left_z"]
[live2d_motion name="lioness" mtn="Head_left_z"]
[endmacro]
[macro name="lioness_head_right_z"]
[live2d_motion name="lioness" mtn="Head_right_z"]
[endmacro]
[macro name="lioness_head_above_y"]
[live2d_motion name="lioness" mtn="Head_above_y"]
[endmacro]
[macro name="lioness_head_under_y"]
[live2d_motion name="lioness" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="lioness_body_normal"]
[live2d_motion name="lioness" mtn="Body_normal"]
[endmacro]
[macro name="lioness_body_right_x"]
[live2d_motion name="lioness" mtn="Body_right_x"]
[endmacro]
[macro name="lioness_body_left_x"]
[live2d_motion name="lioness" mtn="Body_left_x"]
[endmacro]
[macro name="lioness_body_right_z"]
[live2d_motion name="lioness" mtn="Body_right_z"]
[endmacro]
[macro name="lioness_body_left_z"]
[live2d_motion name="lioness" mtn="Body_left_z"]
[endmacro]
[macro name="lioness_body_above_y"]
[live2d_motion name="lioness" mtn="Body_above_y"]
[endmacro]
[macro name="lioness_body_under_y"]
[live2d_motion name="lioness" mtn="Body_under_y"]
[endmacro]
[macro name="lioness_body_houtai"]
[live2d_motion name="lioness" mtn="Body_houtai"]
[endmacro]


;腕の動き
[macro name="lioness_arms_kosinite_right"]
[live2d_motion name="lioness" mtn="Arms_kosinite_right"]
[endmacro]
[macro name="lioness_arms_kosinite_left"]
[live2d_motion name="lioness" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="lioness_arms_udekumi"]
[live2d_motion name="lioness" mtn="Arms_udekumi"]
[endmacro]

[macro name="lioness_arms_kamae"]
[live2d_motion name="lioness" mtn="Arms_kamae"]
[endmacro]

[macro name="lioness_arms_atamanite_right"]
[live2d_motion name="lioness" mtn="Arms_atamanite_right"]
[endmacro]

[macro name="lioness_arms_poripori"]
[live2d_motion name="lioness" mtn="Arms_poripori"]
[endmacro]

[macro name="lioness_arms_right_x"]
[live2d_motion name="lioness" mtn="Arms__right_x"]
[endmacro]

[macro name="lioness_arms_normal"]
[live2d_motion name="lioness" mtn="Arms_normal"]
[endmacro]


[macro name="lioness_arms_left_x"]
[live2d_motion name="lioness" mtn="Arms_left_x"]
[endmacro]

;装備はずし
[macro name="lioness_non_equip"]
[live2d_motion name="lioness" mtn="Non_equip"]
[endmacro]

;呼吸
[macro name="lioness_breath"]
[live2d_motion name="lioness" mtn="Breath"]
[endmacro]

[macro name="lioness_normal"]
[live2d_mod name="lioness" idle="Idle" no=0]
[endmacro]



;ライオネス立ち絵

[macro name="lioness_tatie_touroku"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[endmacro]

[macro name="lioness_tatie_show"]
[lion_para_kioku]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=0]
[endmacro]

[macro name="lioness_tatie_show_right"]
[lion_para_kioku]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=400]
[endmacro]

[macro name="lioness_tatie_show_left"]
[lion_para_kioku]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-40]
[endmacro]

[macro name="lioness_tatie_kosinite"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]
[endmacro]

[macro name="lioness_tatie_nemunemu"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_nemunemu.gif"]
[endmacro]

[macro name="lioness_tatie_normal"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[endmacro]

[macro name="lioness_tatie_donari"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_donari.gif"]
[endmacro]

[macro name="lioness_tatie_chottoikari"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"][endmacro]


[macro name="lioness_tatie_akireru"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
[endmacro]

[macro name="lioness_tatie_udekumi"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]
[endmacro]

[macro name="lioness_tatie_yareyare"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_yareyare.gif"]
[endmacro]


[macro name="lioness_tatie_odoroki"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]
[endmacro]

[macro name="lioness_tatie_kimazui"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kimazui.gif"]
[endmacro]

[macro name="lioness_tatie_otikomi"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_otikomi.gif"]
[endmacro]

[macro name="lioness_tatie_akireru"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
[endmacro]

[macro name="lioness_tatie_warai"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_normal_warai.gif"]
[endmacro]

[macro name="lioness_tatie_kamae"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kamae.gif"]
[endmacro]


[macro name="lioness_tatie_battle_serihu"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_serihu.png" top=-50 left=0]
[endmacro]

[macro name="lioness_tatie_battle_serihu_2"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_serihu_2.png" top=-35 left=0]
[endmacro]

[macro name="lioness_tatie_battle_home"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_home.gif" top=-35 left=0]
[endmacro]

[macro name="lioness_tatie_battle_home_houtai"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_home_houtai.png" top=-35 left=100]
[endmacro]

[macro name="lioness_tatie_battle_home_2_houtai"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_home_2_houtai.png" top=-35 left=100]
[endmacro]

[macro name="lioness_tatie_battle_home_2"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_home_2.gif" top=-35 left=0]
[endmacro]

[macro name="lioness_tatie_battle_dual"]
[chara_show name="lion" storage="lion_tatie/Idle_gif_battle_serihu_dual.png" top=-35 left=0]
[endmacro]

[macro name="chara_kakusu"]
[chara_hide_all]
[chara_off]
[endmacro]

[macro name="lioness_face_sekimen"]
[live2d_motion name="lioness" mtn="Sekimen"]
[endmacro]


;ライオネス正装


[macro name="live2d_lion2_touroku"]
[live2d_load]
[refresh_hanyou]
[live2d_new name="lioness2" model_id="lioness2" lip=true jname="ライオネス"]
[live2d_load_off]
[endmacro]

[macro name="live2d_lion2_show"]
[live2d_on]
[lion_para_kioku][live2d_show name="lioness2" y=-1.5 x=0.0 scale=3.9]
[endmacro]

[macro name="live2d_lion2_show_sekkin"]
[live2d_on]
[lion_para_kioku][live2d_show name="lioness2" y=-2.6 scale=5.7]
[endmacro]




[macro name="live2d_lion_kakusu"]
[live2d_hide name="lioness2"][live2d_off]
[endmacro]

;表情
[macro name="lioness2_mod_idle_hard"]
[live2d_mod name="lioness2" idle="Idle_hard" no=0]
[endmacro]

[macro name="lioness2_mod_idle"]
[live2d_mod name="lioness2" idle="Idle" no=0]
[endmacro]

[macro name="lioness2_mod_idle_no_move"]
[live2d_mod name="lioness2" idle="Idle_no_move" no=0]
[endmacro]


[macro name="lioness2_mod_idle_mode_2"]
[live2d_mod name="lioness2" idle="Idle_mode_2" no=0]
[endmacro]


[macro name="lioness2_mod_idle_mode_3"]
[live2d_mod name="lioness2" idle="Idle_mode_3" no=0]
[endmacro]

[macro name="live2d_lion2_mod_sekkin"]
[live2d_mod name="lioness2" y=-2.6 scale=5.7]
[endmacro]



[macro name="lioness2_face_normal"]
[live2d_motion name="lioness2" mtn="Face_normal"]
[endmacro]

[macro name="lioness2_face_normal_warai"]
[live2d_motion name="lioness2" mtn="Face_normal_warai"]
[endmacro]

[macro name="lioness2_face_chottoikari"]
[live2d_motion name="lioness2" mtn="Face_chottoikari"]
[endmacro]


[macro name="lioness2_face_nemunemu"]
[live2d_motion name="lioness2" mtn="Face_nemunemu"]
[endmacro]


[macro name="lioness2_face_nemunemu_akubi"]
[live2d_motion name="lioness2" mtn="Face_nemunemu_akubi"]
[endmacro]


[macro name="lioness2_face_odoroki_sekimen_kutiake"]
[live2d_motion name="lioness2" mtn="Face_odoroki_sekimen_kutiake"]
[endmacro]


[macro name="lioness2_face_ikari"]
[live2d_motion name="lioness2" mtn="Face_ikari"]
[endmacro]


[macro name="lioness2_face_otikomi"]
[live2d_motion name="lioness2" mtn="Face_otikomi"]
[endmacro]


[macro name="lioness2_face_sinnpai"]
[live2d_motion name="lioness2" mtn="Face_sinnpai"]
[endmacro]


[macro name="lioness2_face_gantobasi"]
[live2d_motion name="lioness2" mtn="Face_gantobasi"]
[endmacro]


[macro name="lioness2_face_metoji"]
[live2d_motion name="lioness2" mtn="Face_metoji"]
[endmacro]


[macro name="lioness2_face_akireru"]
[live2d_motion name="lioness2" mtn="Face_akireru"]
[endmacro]


[macro name="lioness2_face_odoroki"]
[live2d_motion name="lioness2" mtn="Face_odoroki"]
[endmacro]


[macro name="lioness2_face_bakawarai"]
[live2d_motion name="lioness2" mtn="Face_bakawarai"]
[endmacro]


[macro name="lioness2_face_aseri"]
[live2d_motion name="lioness2" mtn="Face_aseri"]
[endmacro]


[macro name="lioness2_face_odoroki_kutiake"]
[live2d_motion name="lioness2" mtn="Face_odoroki_kutiake"]
[endmacro]


[macro name="lioness2_face_gantobasi_warai"]
[live2d_motion name="lioness2" mtn="Face_gantobasi_warai"]
[endmacro]



[macro name="lioness2_face_odoroki_sekimen"]
[live2d_motion name="lioness2" mtn="Face_odoroki_sekimen"]
[endmacro]



[macro name="lioness2_face_donari"]
[live2d_motion name="lioness2" mtn="Face_donari"]
[endmacro]

[macro name="lioness2_face_mehuse_dai"]
[live2d_motion name="lioness2" mtn="Face_mehuse_dai"]
[endmacro]


[macro name="lioness2_face_yokome_warai"]
[live2d_motion name="lioness2" mtn="Face_yokome_warai"]
[endmacro]


[macro name="lioness2_face_metoji_warai"]
[live2d_motion name="lioness2" mtn="Face_metoji_warai"]
[endmacro]


[macro name="lioness2_face_wakewakaran"]
[live2d_motion name="lioness2" mtn="Face_wakewakaran"]
[endmacro]


[macro name="lioness2_face_tere"]
[live2d_motion name="lioness2" mtn="Face_tere"]
[endmacro]


[macro name="lioness2_face_warai"]
[live2d_motion name="lioness2" mtn="Face_warai"]
[endmacro]


[macro name="lioness2_face_kessin_warai"]
[live2d_motion name="lioness2" mtn="Face_kessin_warai"]
[endmacro]


[macro name="lioness2_face_muzukasii"]
[live2d_motion name="lioness2" mtn="Face_muzukasii"]
[endmacro]


[macro name="lioness2_face_ha"]
[live2d_motion name="lioness2" mtn="Face_ha"]
[endmacro]


[macro name="lioness2_face_yokome_otikomi"]
[live2d_motion name="lioness2" mtn="Face_yokome_otikomi"]
[endmacro]


[macro name="lioness2_face_yareyare"]
[live2d_motion name="lioness2" mtn="Face_yareyare"]
[endmacro]



;目の動き

[macro name="lioness2_eyes_normal"]
[live2d_motion name="lioness2" mtn="Eyes_normal"]
[endmacro]
[macro name="lioness2_eyes_left"]
[live2d_motion name="lioness2" mtn="Eyes_left"]
[endmacro]

[macro name="lioness2_eyes_left_under"]
[live2d_motion name="lioness2" mtn="Eyes_left_under"]
[endmacro]

[macro name="lioness2_eyes_left_above"]
[live2d_motion name="lioness2" mtn="Eyes_left_above"]
[endmacro]

[macro name="lioness2_eyes_right"]
[live2d_motion name="lioness2" mtn="Eyes_right"]
[endmacro]

[macro name="lioness2_eyes_right_under"]
[live2d_motion name="lioness2" mtn="Eyes_right_under"]
[endmacro]

[macro name="lioness2_eyes_right_above"]
[live2d_motion name="lioness2" mtn="Eyes_right_above"]
[endmacro]

[macro name="lioness2_eyes_left_close"]
[live2d_motion name="lioness2" mtn="Eyes_left_close"]
[endmacro]

[macro name="lioness2_eyes_right_close"]
[live2d_motion name="lioness2" mtn="Eyes_right_close"]
[endmacro]

[macro name="lioness2_eyes_under"]
[live2d_motion name="lioness2" mtn="Eyes_under"]
[endmacro]

[macro name="lioness2_eyes_above"]
[live2d_motion name="lioness2" mtn="Eyes_above"]
[endmacro]

;頭の動き
[macro name="lioness2_head_normal"]
[live2d_motion name="lioness2" mtn="Head_normal"]
[endmacro]
[macro name="lioness2_head_left_x"]
[live2d_motion name="lioness2" mtn="Head_left_x"]
[endmacro]
[macro name="lioness2_head_right_x"]
[live2d_motion name="lioness2" mtn="Head_right_x"]
[endmacro]
[macro name="lioness2_head_left_z"]
[live2d_motion name="lioness2" mtn="Head_left_z"]
[endmacro]
[macro name="lioness2_head_right_z"]
[live2d_motion name="lioness2" mtn="Head_right_z"]
[endmacro]
[macro name="lioness2_head_above_y"]
[live2d_motion name="lioness2" mtn="Head_above_y"]
[endmacro]
[macro name="lioness2_head_under_y"]
[live2d_motion name="lioness2" mtn="Head_under_y"]
[endmacro]

;体の動き
[macro name="lioness2_body_normal"]
[live2d_motion name="lioness2" mtn="Body_normal"]
[endmacro]
[macro name="lioness2_body_right_x"]
[live2d_motion name="lioness2" mtn="Body_right_x"]
[endmacro]
[macro name="lioness2_body_left_x"]
[live2d_motion name="lioness2" mtn="Body_left_x"]
[endmacro]
[macro name="lioness2_body_right_z"]
[live2d_motion name="lioness2" mtn="Body_right_z"]
[endmacro]
[macro name="lioness2_body_left_z"]
[live2d_motion name="lioness2" mtn="Body_left_z"]
[endmacro]
[macro name="lioness2_body_above_y"]
[live2d_motion name="lioness2" mtn="Body_above_y"]
[endmacro]
[macro name="lioness2_body_under_y"]
[live2d_motion name="lioness2" mtn="Body_under_y"]
[endmacro]
[macro name="lioness2_body_houtai"]
[live2d_motion name="lioness2" mtn="Body_houtai"]
[endmacro]


;腕の動き
[macro name="lioness2_arms_kosinite_right"]
[live2d_motion name="lioness2" mtn="Arms_kosinite_right"]
[endmacro]
[macro name="lioness2_arms_kosinite_left"]
[live2d_motion name="lioness2" mtn="Arms_kosinite_left"]
[endmacro]

[macro name="lioness2_arms_udekumi"]
[live2d_motion name="lioness2" mtn="Arms_udekumi"]
[endmacro]

[macro name="lioness2_arms_atamanite_right"]
[live2d_motion name="lioness2" mtn="Arms_atamanite_right"]
[endmacro]

[macro name="lioness2_arms_poripori"]
[live2d_motion name="lioness2" mtn="Arms_poripori"]
[endmacro]

[macro name="lioness2_arms_right_x"]
[live2d_motion name="lioness2" mtn="Arms__right_x"]
[endmacro]

[macro name="lioness2_arms_normal"]
[live2d_motion name="lioness2" mtn="Arms_normal"]
[endmacro]


[macro name="lioness2_arms_left_x"]
[live2d_motion name="lioness2" mtn="Arms_left_x"]
[endmacro]

;装備はずし
[macro name="lioness2_non_equip"]
[live2d_motion name="lioness2" mtn="Non_equip"]
[endmacro]

;呼吸
[macro name="lioness2_breath"]
[live2d_motion name="lioness2" mtn="Breath"]
[endmacro]

[macro name="lioness2_normal"]
[live2d_mod name="lioness2" idle="Idle" no=0]
[endmacro]













[return]