
;イレインが攻撃するときのステータス移動
[macro name="irain_attack_anime"]


[anim name="status_irain" top="-=20" time=100]
[anim name="irain_name" top="-=20" time=100]
[anim name="irain_face" top="-=20" time=100]
[anim name="irain_hp" top="-=20" time=100]
[anim name="irain_tec" top="-=20" time=100]
[anim name="irain_brain" top="-=20" time=100]
[anim name="irain_charm" top="-=20" time=100]

[if exp="tf.irain_sp[0]==1"]
[anim name="doku_irain" top="-=20" time=100]
[endif]

[if exp="tf.irain_sp[1]==1"]
[anim name="mahi_irain" top="-=20" time=100]
[endif]

[if exp="tf.irain_sp[2]==1"]
[anim name="nemuri_irain" top="-=20" time=100]
[endif]

[if exp="tf.irain_sp[3]==1"]
[anim name="skill_irain" top="-=20" time=100]
[endif]


[if exp="tf.kra_baria>0"]
[anim name="kra_baria_b" top="-=20" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero" top="-=20" time=100]
[endif]



[endmacro]

;攻撃するときのステータス戻す

[macro name="irain_attack_anime_end"]

[anim name="status_irain" top="+=20" time=100]
[anim name="irain_name" top="+=20" time=100]
[anim name="irain_face" top="+=20" time=100]
[anim name="irain_hp" top="+=20" time=100]
[anim name="irain_tec" top="+=20" time=100]
[anim name="irain_brain" top="+=20" time=100]
[anim name="irain_charm" top="+=20" time=100]

[if exp="tf.irain_sp[0]==1"]
[anim name="doku_irain" top="+=20" time=100]
[endif]

[if exp="tf.irain_sp[1]==1"]
[anim name="mahi_irain" top="+=20" time=100]
[endif]

[if exp="tf.irain_sp[2]==1"]
[anim name="nemuri_irain" top="+=20" time=100]
[endif]
[if exp="tf.irain_sp[3]==1"]
[anim name="skill_irain" top="+=20" time=100]
[endif]
[if exp="tf.kra_baria>0"]
[anim name="kra_baria_b" top="+=20" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero" top="+=20" time=100]
[endif]

[w][w]

[free layer=3 name="irain_hp"]
[irain_hp_kousin]


[endmacro]

[macro name="irain_damage_swing"]

[eval exp="tf.damage_w = f.irain_hp_m*0.6"]

[if exp="tf.damage_w>tf.monster_damage"]

[anim name="status_irain" left="-=20" time=100]
[anim name="irain_name" left="-=20" time=100]
[anim name="irain_face" left="-=20" time=100]
[anim name="irain_hp" left="-=20" time=100]
[anim name="irain_tec" left="-=20" time=100]
[anim name="irain_brain" left="-=20" time=100]
[anim name="irain_charm" left="-=20" time=100]

[anim name="status_irain" left="+=40" time=100]
[anim name="irain_name" left="+=40" time=100]
[anim name="irain_face" left="+=40" time=100]
[anim name="irain_hp" left="+=40" time=100]
[anim name="irain_tec" left="+=40" time=100]
[anim name="irain_brain" left="+=40" time=100]
[anim name="irain_charm" left="+=40" time=100]

[anim name="status_irain" left="-=20" time=100]
[anim name="irain_name" left="-=20" time=100]
[anim name="irain_face" left="-=20" time=100]
[anim name="irain_hp" left="-=20" time=100]
[anim name="irain_tec" left="-=20" time=100]
[anim name="irain_brain" left="-=20" time=100]
[anim name="irain_charm" left="-=20" time=100]


[if exp="tf.irain_doku==1"]
[anim name="doku_irain" left="-=20" time=100]
[anim name="doku_irain" left="+=40" time=100]
[anim name="doku_irain" left="-=20" time=100]
[endif]

[if exp="tf.irain_mahi==1"]
[anim name="mahi_irain" left="-=20" time=100]
[anim name="mahi_irain" left="+=40" time=100]
[anim name="mahi_irain" left="-=20" time=100]
[endif]

[if exp="tf.irain_nemuri==1"]
[anim name="nemuri_irain" left="-=20" time=100]
[anim name="nemuri_irain" left="+=40" time=100]
[anim name="nemuri_irain" left="-=20" time=100]
[endif]

[elsif exp="tf.damage_w>tf.monster_damage"]

[anim name="status_irain" left="-=40" time=100]
[anim name="irain_name" left="-=40" time=100]
[anim name="irain_face" left="-=40" time=100]
[anim name="irain_hp" left="-=40" time=100]
[anim name="irain_tec" left="-=40" time=100]
[anim name="irain_brain" left="-=40" time=100]
[anim name="irain_charm" left="-=40" time=100]

[anim name="status_irain" left="+=80" time=100]
[anim name="irain_name" left="+=80" time=100]
[anim name="irain_face" left="+=80" time=100]
[anim name="irain_hp" left="+=80" time=100]
[anim name="irain_tec" left="+=80" time=100]
[anim name="irain_brain" left="+=80" time=100]
[anim name="irain_charm" left="+=80" time=100]

[anim name="status_irain" left="-=40" time=100]
[anim name="irain_name" left="-=40" time=100]
[anim name="irain_face" left="-=40" time=100]
[anim name="irain_hp" left="-=40" time=100]
[anim name="irain_tec" left="-=40" time=100]
[anim name="irain_brain" left="-=40" time=100]
[anim name="irain_charm" left="-=40" time=100]


[if exp="tf.irain_doku==1"]
[anim name="doku_irain" left="-=40" time=100]
[anim name="doku_irain" left="+=80" time=100]
[anim name="doku_irain" left="-=40" time=100]
[endif]

[if exp="tf.irain_mahi==1"]
[anim name="mahi_irain" left="-=40" time=100]
[anim name="mahi_irain" left="+=80" time=100]
[anim name="mahi_irain" left="-=40" time=100]
[endif]

[if exp="tf.irain_nemuri==1"]
[anim name="nemuri_irain" left="-=40" time=100]
[anim name="nemuri_irain" left="+=80" time=100]
[anim name="nemuri_irain" left="-=40" time=100]
[endif]



[endif]


[endmacro]



;仲間が攻撃するときのステータス移動
[macro name="friend_attack_anime"]


[anim name="status_friend" top="-=20" time=100]
[anim name="friend_name" top="-=20" time=100]
[anim name="friend_face" top="-=20" time=100]
[anim name="friend_hp" top="-=20" time=100]
[anim name="friend_attack" top="-=20" time=100]
[anim name="friend_guard" top="-=20" time=100]


[if exp="tf.friend_doku==1"]
[anim name="doku_friend" top="-=20" time=100]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" top="-=20" time=100]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" top="-=20" time=100]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" top="-=20" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero_f" top="-=20" time=100]
[endif]



[endmacro]


;仲間が攻撃するときのステータス移動戻る
[macro name="friend_attack_anime_end"]

[anim name="status_friend" top="+=20" time=100]
[anim name="friend_name" top="+=20" time=100]
[anim name="friend_face" top="+=20" time=100]
[anim name="friend_hp" top="+=20" time=100]
[anim name="friend_attack" top="+=20" time=100]
[anim name="friend_guard" top="+=20" time=100]

[if exp="tf.friend_doku==1"]
[anim name="doku_friend" top="+=20" time=100]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" top="+=20" time=100]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" top="+=20" time=100]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" top="+=20" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero_f" top="+=20" time=100]
[endif]

[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]

[wait time=300]

[endmacro]

[macro name="friend_damage_swing"]

[eval exp="tf.damage_w = tf.friend_hp_m*0.6"]

[if exp="tf.damage_w>tf.monster_damage_f"]

[anim name="status_friend" left="-=20" time=100]
[anim name="friend_name" left="-=20" time=100]
[anim name="friend_face" left="-=20" time=100]
[anim name="friend_hp" left="-=20" time=100]
[anim name="friend_attack" left="-=20" time=100]
[anim name="friend_guard" left="-=20" time=100]

[anim name="status_friend" left="+=40" time=100]
[anim name="friend_name" left="+=40" time=100]
[anim name="friend_face" left="+=40" time=100]
[anim name="friend_hp" left="+=40" time=100]
[anim name="friend_attack" left="+=40" time=100]
[anim name="friend_guard" left="+=40" time=100]

[anim name="status_friend" left="-=20" time=100]
[anim name="friend_name" left="-=20" time=100]
[anim name="friend_face" left="-=20" time=100]
[anim name="friend_hp" left="-=20" time=100]
[anim name="friend_attack" left="-=20" time=100]
[anim name="friend_guard" left="-=20" time=100]


[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="-=20" time=100]
[anim name="doku_friend" left="+=40" time=100]
[anim name="doku_friend" left="-=20" time=100]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="-=20" time=100]
[anim name="mahi_friend" left="+=40" time=100]
[anim name="mahi_friend" left="-=20" time=100]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="-=20" time=100]
[anim name="nemuri_friend" left="+=40" time=100]
[anim name="nemuri_friend" left="-=20" time=100]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" left="-=20" time=100]
[anim name="skill_friend" left="+=40" time=100]
[anim name="skill_friend" left="-=20" time=100]
[endif]

[elsif exp="tf.damage_w<tf.monster_damage_f"]

[anim name="status_friend" left="-=40" time=100]
[anim name="friend_name" left="-=40" time=100]
[anim name="friend_face" left="-=40" time=100]
[anim name="friend_hp" left="-=40" time=100]
[anim name="friend_attack" left="-=40" time=100]
[anim name="friend_guard" left="-=40" time=100]

[anim name="status_friend" left="+=80" time=100]
[anim name="friend_name" left="+=80" time=100]
[anim name="friend_face" left="+=80" time=100]
[anim name="friend_hp" left="+=80" time=100]
[anim name="friend_attack" left="+=80" time=100]
[anim name="friend_guard" left="+=80" time=100]

[anim name="status_friend" left="-=40" time=100]
[anim name="friend_name" left="-=40" time=100]
[anim name="friend_face" left="-=40" time=100]
[anim name="friend_hp" left="-=40" time=100]
[anim name="friend_attack" left="-=40" time=100]
[anim name="friend_guard" left="-=40" time=100]


[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="-=40" time=100]
[anim name="doku_friend" left="+=80" time=100]
[anim name="doku_friend" left="-=40" time=100]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="-=40" time=100]
[anim name="mahi_friend" left="+=80" time=100]
[anim name="mahi_friend" left="-=40" time=100]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="-=40" time=100]
[anim name="nemuri_friend" left="+=80" time=100]
[anim name="nemuri_friend" left="-=40" time=100]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" left="-=40" time=100]
[anim name="skill_friend" left="+=80" time=100]
[anim name="skill_friend" left="-=40" time=100]
[endif]

[endif]


[endmacro]


;アイテム欄を開くときのステータス移動

[macro name="item_window_open"]

[anim name="status_irain" left="-=600" time=200]
[anim name="irain_name" left="-=600" time=200]
[anim name="irain_face" left="-=600" time=200]
[anim name="irain_hp" left="-=600" time=200]
[anim name="irain_tec" left="-=600" time=200]
[anim name="irain_brain" left="-=600" time=200]
[anim name="irain_charm" left="-=600" time=200]
[if exp="tf.irain_sp[0]==1"]
[anim name="doku_irain" left="-=600" time=200]
[endif]

[if exp="tf.irain_sp[1]==1"]
[anim name="mahi_irain" left="-=600" time=200]
[endif]

[if exp="tf.irain_sp[2]==1"]
[anim name="nemuri_irain" left="-=600" time=200]
[endif]

[if exp="tf.irain_sp[3]==1"]
[anim name="skill_irain" left="-=600" time=200]
[endif]

[if exp="tf.kra_baria>0"]
[anim name="kra_baria_b" left="-=600" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero" left="-=600" time=100]
[endif]


[anim name="status_friend" left="+=600" time=200]
[anim name="friend_name" left="+=600" time=200]
[anim name="friend_face" left="+=600" time=200]
[anim name="friend_hp" left="+=600" time=200]
[anim name="friend_attack" left="+=600" time=200]
[anim name="friend_guard" left="+=600" time=200]
[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="+=600" time=200]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="+=600" time=200]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="+=600" time=200]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="+=600" time=200]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" left="+=600" time=200]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero_f" left="+=600" time=100]
[endif]

[wait time="200"]
[endmacro]


[macro name="item_window_close"]

[anim name="status_irain" left="+=600" time=200]
[anim name="irain_name" left="+=600" time=200]
[anim name="irain_face" left="+=600" time=200]
[anim name="irain_hp" left="+=600" time=200]
[anim name="irain_tec" left="+=600" time=200]
[anim name="irain_brain" left="+=600" time=200]
[anim name="irain_charm" left="+=600" time=200]
;状態ステータス
[if exp="tf.irain_sp[0]==1"]
[anim name="doku_irain" left="+=600" time=200]
[endif]

[if exp="tf.irain_sp[1]==1"]
[anim name="mahi_irain" left="+=600" time=200]
[endif]

[if exp="tf.irain_sp[2]==1"]
[anim name="nemuri_irain" left="+=600" time=200]
[endif]

[if exp="tf.irain_sp[3]==1"]
[anim name="skill_irain" left="+=600" time=200]
[endif]

[if exp="tf.kra_baria>0"]
[anim name="kra_baria_b" left="+=600" time=100]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero" left="+=600" time=100]
[endif]


[anim name="status_friend" left="-=600" time=200]
[anim name="friend_name" left="-=600" time=200]
[anim name="friend_face" left="-=600" time=200]
[anim name="friend_hp" left="-=600" time=200]
[anim name="friend_attack" left="-=600" time=200]
[anim name="friend_guard" left="-=600" time=200]
[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="-=600" time=200]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="-=600" time=200]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="-=600" time=200]
[endif]

[if exp="tf.friend_skill_no==1"]
[anim name="skill_friend" left="-=600" time=200]
[endif]

[if exp="tf.guard_zero>0"]
[anim name="guard_icon_zero_f" left="-=600" time=100]
[endif]

[wait time="200"]
[endmacro]



[macro name="guard_idou"]
[anim name="guard" left="+=200" time=500]
[wait time=500]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[endmacro]

[macro name="escape_idou"]
[anim name="escape" left="-=10" time=500]
[wait time=500]
[clearfix name="escape"]
[free layer=2 name="escape"]
[free layer=3 name="escape"]
[endmacro]

[macro name="item_idou"]
[anim name="item" top="-=18" ]
[anim name="item" left="-=200" time=500]
[wait time=500]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]
[endmacro]

[macro name="dual_idou"]
[anim name="dual" top="-=18" ]
[anim name="dual" left="-=200" time=500]
[wait time=500]
[clearfix name="dual"]
[free layer=2 name="dual"]
[free layer=3 name="dual"]
[endmacro]



;モンスターのHPゲージ変化
[macro name="monster_gauge_1"]

;-----
[free name="monster_hp_1" layer=3]
;モンスター１のゲージ
[if exp="tf.monster_hp<=tf.monster_hp_1_sample_10_1"]


[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_1.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_2"]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_2.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_3.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_4.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_5.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_6.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_7.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_8.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_1_sample_10_9"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_9.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp==tf.monster_hp_1_m"]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]
[else]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[endif]

;-----
[endmacro]

[macro name="monster_gauge_1_murti"]

;-----
;モンスター１のゲージ
[if exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_1"]


[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_1.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_2"]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_2.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_3.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_4.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_5.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_6.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_7.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_8.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1<=tf.monster_hp_1_sample_10_9"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_9.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_1==tf.monster_hp_1_m"]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]
[else]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]


[endif]

;-----
[endmacro]



[macro name="monster_gauge_2"]
;monster2
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4_70 y=&tf.y_3_90]

[free name="monster_hp_2" layer=3]
[if exp="tf.monster_hp<=tf.monster_hp_2_sample_10_1"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_1.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_2"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_2.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_3.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_4.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_5.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_6.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_7.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_8.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_2_sample_10_9"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_9.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp==tf.monster_hp_2_m"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[else]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[endif]

[endmacro]

[macro name="monster_gauge_2_murti"]
;monster2
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4_70 y=&tf.y_3_90]


[if exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_1"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_1.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_2"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_2.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_3.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_4.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_5.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_6.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_7.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_8.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_2<=tf.monster_hp_2_sample_10_9"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_9.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_2==tf.monster_hp_2_m"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[else]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

[endif]

[endmacro]




[macro name="monster_gauge_3"]
;monster3

;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]


;-----
;モンスター３のゲージ
[free name="monster_hp_3" layer=3]
[if exp="tf.monster_hp<=tf.monster_hp_3_sample_10_1"]



[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_1.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_2"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_2.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_3.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_4.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_5.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_6.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_7.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_8.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_9"]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_9.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp==tf.monster_hp_3_m"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]

[else]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]

[endif]

;-----
[endmacro]


[macro name="monster_gauge_3_murti"]
;monster3

;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]


;-----
;モンスター３のゲージ

[if exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_1"]



[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_1.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_2"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_2.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_3"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_3.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_4"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_4.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_5"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_5.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_6"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_6.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_7"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_7.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp<=tf.monster_hp_3_sample_10_8"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_8.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3<=tf.monster_hp_3_sample_10_9"]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_9.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_hp_3==tf.monster_hp_3_m"]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]

[else]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]

[endif]

;-----
[endmacro]









;イレインバトルアニメーション
[macro name="irain_animation"]


[if exp="tf.target_monster=='monster1'"]



;場所の計算

[clearfix name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_2 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]


;イレインのターンの場合ヒットアニメを出す

[hit_animation]

[if exp="f.rusia_battle==1"]
[eval exp="tf.anime_irain_x=tf.x_2"]
[eval exp="tf.anime_irain_y=tf.y_3+30"]
[elsif exp="f.rusia_battle!=1]
[eval exp="tf.anime_irain_x=tf.x_2-55"]
[eval exp="tf.anime_irain_y=tf.y_3-55"]
[endif]

[if exp="tf.gattai_skill_kra_hatudou==1"]
[irain_sword_d_animation]
[elsif exp="tf.gattai_skill_kra_hatudou!=1"]
[irain_sword_animation]
[endif]

;ホークアイで必殺
[if exp="tf.hawk_eye==1"]
[critical_animation]
[endif]


[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]



[elsif exp="tf.target_monster=='monster2'"]

;場所の計算

[clearfix name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]


[eval exp="tf.anime_irain_x=tf.x_4-55"]
[eval exp="tf.anime_irain_y=tf.y_3-55"]


[irain_sword_animation]

;ホークアイで必殺
[if exp="tf.hawk_eye==1"]
[critical_animation]
[endif]

[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


[elsif exp="tf.target_monster=='monster3'"]

[clearfix name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]


[eval exp="tf.anime_irain_x=tf.x_4bunno3-55"]
[eval exp="tf.anime_irain_y=tf.y_3-55"]


[irain_sword_animation]

;ホークアイで必殺
[if exp="tf.hawk_eye==1"]
[critical_animation]
[endif]

[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]



[endif]



[endmacro]





;ランスバトルアニメ〜ション

[macro name="rans_animation"]

[if exp="tf.target_monster=='monster1'"]


;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_2 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

[if exp="f.rusia_battle==1"]
[eval exp="tf.anime_rans_x=tf.x_2-125"]
[eval exp="tf.anime_rans_y=tf.y_3+50"]
[else]
[eval exp="tf.anime_rans_x=tf.x_2-125"]
[eval exp="tf.anime_rans_y=tf.y_3-135"]
[endif]

[rans_sword_animation]






[elsif exp="tf.target_monster=='monster2'"]

;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_rans_x=tf.x_4-125"]
[eval exp="tf.anime_rans_y=tf.y_3-135"]


[rans_sword_animation]






[elsif exp="tf.target_monster=='monster3'"]

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]




[eval exp="tf.anime_rans_x=tf.x_4bunno3-125"]
[eval exp="tf.anime_rans_y=tf.y_3-135"]


[rans_sword_animation]


[endif]



[endmacro]







;ライバトルアニメ〜ション

[macro name="lion_animation"]

[if exp="tf.target_monster=='monster1'"]


;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_2 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[if exp="f.rusia_battle==1"]
[eval exp="tf.anime_lion_x=tf.x_2-135"]
[eval exp="tf.anime_lion_y=tf.y_3+115"]
[elsif exp="f.monster_igyou==1"]
[eval exp="tf.anime_lion_x=tf.x/4"]
[eval exp="tf.anime_lion_y=tf.y/15"]
[else]
[eval exp="tf.anime_lion_x=tf.x_2-135"]
[eval exp="tf.anime_lion_y=tf.y_3-200"]
[endif]


[lion_sword_animation]






[elsif exp="tf.target_monster=='monster2'"]

;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_lion_x=tf.x_4-135"]
[eval exp="tf.anime_lion_y=tf.y_3-200"]


[lion_sword_animation]






[elsif exp="tf.target_monster=='monster3'"]

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]




[eval exp="tf.anime_lion_x=tf.x_4bunno3-135"]
[eval exp="tf.anime_lion_y=tf.y_3-200"]


[lion_sword_animation]



[endif]



[endmacro]



;クラバトルアニメ〜ション

[macro name="kra_animation"]

[if exp="tf.target_monster=='monster1'"]


;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_2 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_kra_x=tf.x_2-145"]
[eval exp="tf.anime_kra_y=tf.y_3-180"]

[if exp="f.rusia_battle==1"]
[eval exp="tf.anime_kra_x=tf.x_2-100"]
[eval exp="tf.anime_kra_y=tf.y_3+30"]
[elsif exp="f.monster_group_25==1"]
[eval exp="tf.anime_kra_x=tf.x_2"]
[eval exp="tf.anime_kra_y=tf.y_3+30"]


[endif]



[kra_sword_animation]






[elsif exp="tf.target_monster=='monster2'"]

;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_kra_x=tf.x_4-145"]
[eval exp="tf.anime_kra_y=tf.y_3-180"]

[kra_sword_animation]


[elsif exp="tf.target_monster=='monster3'"]

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_kra_x=tf.x_4bunno3-145"]
[eval exp="tf.anime_kra_y=tf.y_3-180"]


[kra_sword_animation]



[endif]



[endmacro]


;グリフバトルアニメ〜ション

[macro name="glif_animation"]

[if exp="tf.target_monster=='monster1'"]


;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_2 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

[if exp="f.monster_group_24==1"]
[eval exp="tf.anime_glif_x=tf.x_2-105"]
[eval exp="tf.anime_glif_y=tf.y_3-80"]
[else]
[eval exp="tf.anime_glif_x=tf.x_2-145"]
[eval exp="tf.anime_glif_y=tf.y_3-180"]
[endif]

[glif_sword_animation]






[elsif exp="tf.target_monster=='monster2'"]

;場所の計算

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]

[eval exp="tf.anime_glif_x=tf.x_4-145"]
[eval exp="tf.anime_glif_y=tf.y_3-180"]


[glif_sword_animation]


[elsif exp="tf.target_monster=='monster3'"]

;[clearfix name="&tf.target_monster"]
;[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]




[eval exp="tf.anime_glif_x=tf.x_4bunno3-145"]
[eval exp="tf.anime_glif_y=tf.y_3-180"]


[glif_sword_animation]


[endif]



[endmacro]





;イレイン剣戟
[macro name="irain_sword_animation"]




[if exp="tf.anime_irain==1"]
[loadcss file="./data/scenario/mini_game/battle_anime_delete.css"]
[eval exp="tf.anime_irain=0"]
[endif]

[jump target=*anime_irain]

*anime_irain_2

[loadcss file="./data/scenario/mini_game/battle_anime.css"]


*anime_irain




[playse storage="battle_se/irain_sword_0.ogg"]
[wait time=50]
[playse storage="katana1_tairakomori.ogg"]
[wait time=70]
[playse storage="katana1_tairakomori.ogg"]

;アニメの位置調整
[if exp="f.monster_igyou==1&&tf.chousei!=1"]
[eval exp="tf.chousei=1"]
;[eval exp="tf.anime_irain_x=tf.anime_irain_x+70"]
;[eval exp="tf.anime_irain_y=tf.anime_irain_y+50"]
[eval exp="tf.anime_irain_x=tf.x/2-150"]
[eval exp="tf.anime_irain_y=tf.y/5"]
[endif]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_0.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_1.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_2.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_3.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[free layer=3 name="anime"][wait time=30]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_4.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_5.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_6.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_7.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_8.png" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[if exp="tf.anime_irain!=1"]
[eval exp="tf.anime_irain=1"]
[jump target=*anime_irain_2]
[endif]

;モンスターダメージアニメ
;[monster_damage_anime]
;ダメージアニメ
;[damage_animation]

[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[wait time=50]
[free layer=2 name="siro"]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[wait time=50]
[free layer=2 name="siro"]

[if exp="tf.damage<8"]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[elsif exp="tf.damage>7"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=50" time=100]
[anim name="&tf.target_monster" left="+=50" time=100]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=30" time=100]
[anim name="&tf.target_monster" left="+=30" time=100]
[endif]

[wait time=600]

;ダメージアニメ
;必殺ふらぐかホークアイで必殺
;[if exp="tf.hissatu_irain==1||tf.hawk_eye==1"]
;[eval exp="tf.damage=tf.damage*2"]
;[endif]

[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[elsif exp="f.rusia_battle==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[else]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[endif]

[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" color=#B22222 size=30 x=&tf.damage_x y=&tf.damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]
[eval exp="tf.chousei=0"]

[endmacro]


[macro name="irain_sword_d_animation"]




[if exp="tf.anime_irain==1"]
[loadcss file="./data/scenario/mini_game/battle_anime_delete.css"]
[eval exp="tf.anime_irain=0"]
[endif]

[jump target=*anime_irain_d]

*anime_irain_2_d

[loadcss file="./data/scenario/mini_game/battle_anime.css"]


*anime_irain_d




[playse storage="battle_se/irain_sword_0.ogg"]
[wait time=50]
[playse storage="battle_se/kra_sword_3.ogg"]
[wait time=70]
[playse storage="battle_se/kra_sword_3.ogg"]

;アニメの位置調整
[if exp="f.monster_igyou==1&&tf.chousei!=1"]
[eval exp="tf.chousei=1"]
;[eval exp="tf.anime_irain_x=tf.anime_irain_x+70"]
;[eval exp="tf.anime_irain_y=tf.anime_irain_y+50"]
[eval exp="tf.anime_irain_x=tf.x/2-150"]
[eval exp="tf.anime_irain_y=tf.y/5"]
[eval exp="tf.anime_irain_x=tf.anime_irain_x-300"]
[eval exp="tf.anime_irain_y=tf.anime_irain_y-300"]
[endif]

[if exp="tf.chousei!=1"]
[eval exp="tf.chousei=1"]
[eval exp="tf.anime_irain_x=tf.anime_irain_x-300"]
[eval exp="tf.anime_irain_y=tf.anime_irain_y-300"]
[endif]




[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_0.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_1.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_2.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_3.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[free layer=3 name="anime"][wait time=30]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_4.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_5.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_6.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime"]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_7.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]


[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_8.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_9.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_10.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_11.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_12.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="anime" storage="battle_animation/kra/kra_sword_13.png" height="800" width="800" x=&tf.anime_irain_x y=&tf.anime_irain_y]
[wait time=30]
[free layer=3 name="anime" ]

[playse storage="battle_se/kra_sword_2.ogg"]
[if exp="tf.anime_irain!=1"]
[eval exp="tf.anime_irain=1"]
[jump target=*anime_irain_2_d]
[endif]

;モンスターダメージアニメ
;[monster_damage_anime]
;ダメージアニメ
;[damage_animation]

[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=100]
[wait time=100]
[free layer=3 name="siro"]
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=100]
[wait time=100]
[free layer=3 name="siro"]

[if exp="tf.damage<8"]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[elsif exp="tf.damage>7"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=50" time=100]
[anim name="&tf.target_monster" left="+=50" time=100]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=30" time=100]
[anim name="&tf.target_monster" left="+=30" time=100]
[endif]

[wait time=600]

;ダメージアニメ
;必殺ふらぐかホークアイで必殺
;[if exp="tf.hissatu_irain==1||tf.hawk_eye==1"]
;[eval exp="tf.damage=tf.damage*2"]
;[endif]

[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[elsif exp="f.rusia_battle==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[else]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[endif]

[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" color=#B22222 size=30 x=&tf.damage_x y=&tf.damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]


[eval exp="tf.chousei=0"]

[endmacro]








;ランス剣戟
[macro name="rans_sword_animation"]


[playse storage="battle_se/rans_sword_0.ogg"]
[wait time=50]
[playse storage="battle_se/rans_sword_1.ogg"]
[wait time=70]
[playse storage="battle_se/rans_sword_1.ogg"]

;双剣のため繰り返し処理用のフラグ
[if exp="tf.anime_rans==1"]
[loadcss file="./data/scenario/mini_game/battle_anime_delete.css"]
[eval exp="tf.anime_rans=0"]
[endif]

[jump target=*anime_rans]

*anime_rans_2

[loadcss file="./data/scenario/mini_game/battle_anime_rans.css"]


*anime_rans

;アニメの位置調整
[if exp="f.monster_igyou==1&&tf.chousei_r!=1"]
[eval exp="tf.chousei_r=1"]
[eval exp="tf.anime_rans_x=tf.anime_rans_x+50"]
[eval exp="tf.anime_rans_y=tf.anime_rans_y+50"]
[endif]




[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_0.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_1.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_2.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_3.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_4.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]

[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_5.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_6.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[wait time=30]
[free layer=3 name="rans_anime" ]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_7.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_8.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]


[if exp="tf.anime_rans!=1"]
[eval exp="tf.anime_rans=1"]
[jump target=*anime_rans_2]
[endif]

;モンスターダメージアニメ
[monster_damage_anime]

;ダメージアニメ
[damage_animation_friend]

[free layer=2 name="&tf.target_monster"]


;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]
[eval exp="tf.chousei_r=0"]

[endmacro]



;ライ剣戟
[macro name="lion_sword_animation"]

*anime_lion

[playse storage="battle_se/lion_sword_0.ogg"]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_0.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_1.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_2.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_3.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_4.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_5.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_6.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_7.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=50]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_8.png" x=&tf.anime_lion_x y=&tf.anime_lion_y][wait time=30]
[free layer=3 name="lion_anime" ]


;モンスターダメージアニメ
[monster_damage_anime]
;ダメージアニメ
[damage_animation_friend]


[free layer=2 name="&tf.target_monster"]

;モンスターを選択できる状態に
;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]


;クラ剣戟
[macro name="kra_sword_animation"]

*anime_kra

[playse storage="battle_se/kra_sword_3.ogg"]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_0.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_1.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_2.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_3.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_4.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_5.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_6.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_7.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_8.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_9.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_10.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]
[wait time=5]
[playse storage="battle_se/kra_sword_2.ogg"]




;モンスターダメージアニメ
[monster_damage_anime]


;ダメージアニメ
[damage_animation_friend]



[free layer=2 name="&tf.target_monster"]

;モンスターを選択できる状態に
;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]



;グリフ剣戟
[macro name="glif_sword_animation"]

*anime_glif

[playse storage="battle_se/glif_sword_0.ogg"]
[wait time=500]
[playse storage="battle_se/glif_sword_1.ogg"]
[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_0.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_1.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_2.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_3.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_4.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_5.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_6.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[wait time=15]
[free layer=3 name="glif_anime"]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_7.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_8.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_9.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_10.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


;モンスターダメージアニメ
[monster_damage_anime]


;ダメージアニメ
[damage_animation_friend]


[free layer=2 name="&tf.target_monster"]

;モンスターを選択できる状態に
;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]




;イレイン技アニメ
[macro name="irain_skill_animation"]

[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro" time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]




;----------------技用にボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]

;-------
;全体攻撃の場合は全員にヒットアニメ
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1&&tf.monster_hp_2>=1&&tf.monster_2_death!=1&&tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]

;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]

;ヒットアニメを出す
[hit_animation_murti]

[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1&&tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]


;ヒットアニメを出す
[hit_animation_murti]


[elsif exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1&&tf.monster_hp_3>=1&&tf.monster_3_death!=1"]


;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]

;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]

;ヒットアニメを出す
[hit_animation_murti]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1&&tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]

;ヒットアニメを出す
[hit_animation_murti]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]


[elsif exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[eval exp="tf.image_x=tf.x_4"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]



[elsif exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]



[endif]





[playse storage="battle_se/sword-slash5_koukaonlabo.ogg"]
[wait time=250]
[playse storage="battle_se/katana-slash5_koukaonlabo.ogg"]
[wait time=240]
[playse storage="battle_se/sword-slash5_koukaonlabo.ogg"]
[wait time=250]
[playse storage="battle_se/katana-slash5_koukaonlabo.ogg"]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_0.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_1.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_2.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_3.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_4.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_5.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_6.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]
[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_7.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]

[image layer=3 page=fore visible=true name="anime_irain_skill" storage="battle_animation/irain/irain_skill_8.png" x=0 y=0 time=15]
[free layer=3 name="anime_irain_skill" time=25]



[playse storage="battle_se/sword-slash5_koukaonlabo.ogg"]
[wait time=80]
[playse storage="battle_se/katana-slash5_koukaonlabo.ogg"]
[wait time=80]
[playse storage="battle_se/sword-slash5_koukaonlabo.ogg"]


;-------------------------------------------------------------------------------------------------------------
[monster_damage_anime_murti]

;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]



[damage_animation_murti]

;回復
[if exp="f.battle_kaisuu<31"]
[kaihuku_100]
[elsif exp="f.battle_kaisuu<61"]
[kaihuku_300]
[elsif exp="f.battle_kaisuu<121"]
[kaihuku_500]
[else]
[kaihuku_500]
[endif]


;ここでモンスターをボタン状態に戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" ;target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" ;target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]


[endmacro]


;ランス技アニメ

[macro name="rans_skill_animation"]


;ランスの即死効果ランダム計算

[if exp="f.battle_kaisuu<31"]

[iscript]
tf.rans_death = Math.floor( Math.random() * 3) + 1
[endscript]

[elsif exp="f.battle_kaisuu<61"]

[iscript]
tf.rans_death = Math.floor( Math.random() * 2) + 1
[endscript]

[elsif exp="f.battle_kaisuu<121"]

[eval exp="tf.rans_death=1"]

[else]
[eval exp="tf.rans_death=1"]
[endif]

;スキル無効の場合０
[if exp="f.mukou==1"]
[eval exp="tf.rans_death=0"]
[endif]


;----------------技用にボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]




[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro"]
[wait time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]

[playse storage="battle_se/rans_sword_0.ogg"]
[wait time=100]
[playse storage="battle_se/rans_skill_2.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]


[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_0.png" x=0 y=0]
[wait time=15]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_1.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_2.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_3.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_4.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_5.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_6.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_7.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_8.png" x=0 y=0]


[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_9.png" x=0 y=0]




[wait time=300]
[free layer=3 name="anime_rans_skill"]


[monster_damage_anime_murti]




;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]


;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]

;ランス合体技
[macro name="rans_skill_d_animation"]

;スキル無効の場合０
[if exp="f.mukou==1"]
[eval exp="tf.rans_death=0"]
[endif]

;----------------技用にボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]




[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro"]
[wait time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]

[playse storage="battle_se/rans_sword_0.ogg"]
[wait time=100]
[playse storage="kirikizamu_onjin.ogg"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_0.png" x=0 y=0]

[wait time=75]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_1.png" x=0 y=0]
;
[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_2.png" x=0 y=0]

[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_3.png" x=0 y=0]
;
[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_4.png" x=0 y=0]

[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_5.png" x=0 y=0]
;
[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_6.png" x=0 y=0]

[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_7.png" x=0 y=0]
;
[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_8.png" x=0 y=0]

[wait time=75]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_9.png" x=0 y=0]
;

[wait time=75]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_10.png" x=0 y=0]


[wait time=50]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_11.png" x=0 y=0]

[wait time=200]
[playse storage="bakuhatu_onjin.ogg"]
[free layer=3 name="anime_rans_skill"]
[wait time=75]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_11.png" x=0 y=0]
[wait time=75]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_12.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_13.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_14.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_15.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_16.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_17.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_18.png" x=0 y=0]
[wait time=70]
[free layer=3 name="anime_rans_skill"]
[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/dual/rans/rans_d_19.png" x=0 y=0]
[wait time=300]
[free layer=3 name="anime_rans_skill"]


[monster_damage_anime_murti]




;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]


;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]




;ヴァン攻撃アニメ
[macro name="van_animation"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]


[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_0.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_1.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_2.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_3.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_4.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_5.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_6.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_7.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_8.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_9.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_10.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_11.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_12.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_13.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_14.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_15.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_16.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_17.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_18.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_19.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_20.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]

[image layer=3 page=fore visible=true name="anime_van_sword" storage="battle_animation/van/van_sword_21.png" x=0 y=0 time=15]
[free layer=3 name="anime_van_sword" time=25]





[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]

[endmacro]


;ライ技アニメ


[macro name="lion_skill_animation"]


;ライのHP1効果ランダム計算

[if exp="f.battle_kaisuu<31"]

[iscript]
tf.lion_skill_damage = Math.floor( Math.random() * 3) + 1
[endscript]

[elsif exp="f.battle_kaisuu<61"]

[iscript]
tf.lion_skill_damage = Math.floor( Math.random() * 2) + 1
[endscript]

[elsif exp="f.battle_kaisuu<121"]

[eval exp="tf.lion_skill_damage=1"]

[else]
[eval exp="tf.lion_skill_damage=1"]
[endif]



;----------------技用にボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]


[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro" time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]




[bg storage="black.png" time=50]

[playse storage="battle_se/lion_sword_0.ogg"]
[wait time=25]
[playse storage="battle_se/lion_sword_0.ogg"]
[wait time=25]
[playse storage="battle_se/lion_skill.ogg"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_0.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_1.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_2.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_3.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_4.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_5.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_6.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_7.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_8.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_9.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_10.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_11.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_12.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_13.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_14.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_7.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_16.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_17.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_18.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_19.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_20.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_21.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_22.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_23.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_24.png" x=0 y=0 ]
[wait time=10]
[free layer=3 name="anime_lion_skill"]







[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;----------------
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]


[bg storage="&tf.bgimage_battle_0"]





[endmacro]

;ライ合体技
[macro name="lion_skill_d_animation"]

;----------------技用にボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]


[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro" time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]




[bg storage="black.png" time=50]

[playse storage="battle_se/irain_sword_0.ogg"]
[wait time=125]
;[playse storage="kirikizamu_onjin.ogg"]

[playse storage="katana1_tairakomori.ogg"]
[wait time=125]
[playse storage="katana1_tairakomori.ogg"]
[wait time=125]
[playse storage="katana1_tairakomori.ogg"]
[wait time=125]
[playse storage="katana1_tairakomori.ogg"]
[wait time=125]
[playse storage="battle_se/lion_sword_0.ogg"]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_0.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_1.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_2.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]
[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_3.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_4.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_5.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_6.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_7.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_8.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_9.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_10.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_11.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_12.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_13.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_14.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]
[wait time=100]
[playse storage="battle_se/lion_sword_0.ogg"]
[wait time=300]
[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_15.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_16.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_17.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_18.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_19.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_20.png" x=0 y=0 ]
[wait time=50]
[free layer=3 name="anime_lion_skill"]

[playse storage="enerugi_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_21.png" x=0 y=0 ]
[wait time=100]
[free layer=3 name="anime_lion_skill"]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_22.png" x=0 y=0 ]
[wait time=200]
[free layer=3 name="anime_lion_skill"]

[playse storage="bakuhatu_onjin.ogg"]
[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/dual/lion/lion_d_23.png" x=0 y=0 ]
[wait time=200]
[free layer=3 name="anime_lion_skill"]


[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;----------------
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]


[bg storage="&tf.bgimage_battle_0"]





[endmacro]




;クラ技アニメ


[macro name="kra_skill_animation"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

[playse storage="battle_se/kra_skill_1.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_0.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_1.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_2.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_3.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_4.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_5.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_6.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_7.png" x=0 y=-100 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_8.png" x=0 y=-70 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_9.png" x=0 y=-70 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=25]
[free layer=3 name="anime_kra_skill" time=100]


[bg storage=&tf.bgimage_battle_0 time=5]








[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]


;クラ技アニメ２
[macro name="kra_skill_animation_2"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

[playse storage="battle_se/kra_skill_2.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_0.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_1.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_2.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_3.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_4.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_5.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_11.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_12.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_13.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_14.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=25]
[free layer=3 name="anime_kra_skill" time=100]


[bg storage=&tf.bgimage_battle_0 time=5]








[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]

;クラ技アニメ3
[macro name="kra_skill_animation_3"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

[playse storage="battle_se/kra_skill_2.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_0.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_1.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_2.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_3.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_4.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_5.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_11.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_12.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_13.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_14.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=25]
[free layer=3 name="anime_kra_skill" time=100]


[bg storage=&tf.bgimage_battle_0 time=5]








[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]


;クラ技アニメ4
[macro name="kra_skill_animation_4"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

[playse storage="battle_se/kra_skill_3_1.ogg"]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_0.png" x=0 y=0 time=35]
[free layer=3 name="anime_kra_skill" time=30]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_1.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_2.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_3.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_4.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_5.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[playse storage="battle_se/kra_skill_3_1.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]
[playse storage="battle_se/kra_skill_3_2.ogg"]
[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_11.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]



[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=25]
[wait time=100]
[free layer=3 name="anime_kra_skill"]




[kaihuku_animation]
[full_kaihuku]

[bg storage=&tf.bgimage_battle_0 time=5]








[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]

;クラバリア
[macro name="kra_baria_anime"]
[eval exp="tf.baria_x=tf.irain_face_x-30"]
[eval exp="tf.baria_y=tf.irain_face_y-30"]

[playse storage="battle_se/guard_zero_koukaonlabo.ogg"]
[wait time=100]
[image layer=3 page=fore visible=true name="kra_baria" storage="battle_animation/kra_magic/baria_kra_0.png" x=&tf.baria_x y=&tf.baria_y]
[wait time=100]
[free name="kra_baria" layer=3]
[image layer=3 page=fore visible=true name="kra_baria" storage="battle_animation/kra_magic/baria_kra_1.png"  x=&tf.baria_x y=&tf.baria_y]
[wait time=100]
[free name="kra_baria" layer=3]
[image layer=3 page=fore visible=true name="kra_baria" storage="battle_animation/kra_magic/baria_kra_2.png"  x=&tf.baria_x y=&tf.baria_y]
[wait time=100]
[free name="kra_baria" layer=3]
[image layer=3 page=fore visible=true name="kra_baria" storage="battle_animation/kra_magic/baria_kra_3.png"  x=&tf.baria_x y=&tf.baria_y]
[wait time=100]
[free name="kra_baria" layer=3]
[image layer=3 page=fore visible=true name="kra_baria" storage="battle_animation/kra_magic/baria_kra_4.png"  x=&tf.baria_x y=&tf.baria_y]
[wait time=100]
[free name="kra_baria" layer=3]
[image layer=3 page=fore visible=true name="kra_baria_b" storage="battle_animation/kra_magic/baria_kra_5.png"  x=&tf.baria_x y=&tf.baria_y]
[anim name="kra_baria_b" opacity=125]
[endmacro]


;グリフ技アニメ
[macro name="glif_skill_animation"]
[glif_turn]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]
[playse storage="battle_se/glif_skill_0.ogg"]
[wait time=500]



[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_0.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_1.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_2.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_3.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_4.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_5.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_6.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_8.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_9.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_10.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_11.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_12.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_13.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_14.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_16.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_17.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_18.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]


[playse storage="battle_se/kra_skill_3_1.ogg"]


[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]


[bg storage=&tf.bgimage_battle_0 time=5]


[endmacro]



;グリフ技アニメ
[macro name="glif_skill_d_animation"]


;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]
[playse storage="battle_se/glif_skill_0.ogg"]
[wait time=500]



[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_0.png" x=0 y=0 time=77]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_1.png" x=0 y=0 time=77]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_2.png" x=0 y=0 time=77]
[free layer=3 name="anime_glif_skill" time=10]

[playse storage="kiru_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_3.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_4.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_5.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]

[playse storage="kiru_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_6.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_7.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_8.png" x=0 y=0 time=17]
[free layer=3 name="anime_glif_skill" time=10]


[playse storage="bakuhatu_onjin.ogg"]
[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_9.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_10.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_11.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_12.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_13.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_14.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_7.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/dual/glif/glif_d_16.png" x=0 y=0 time=57]
[free layer=3 name="anime_glif_skill" time=10]

[playse storage="battle_se/kra_skill_3_1.ogg"]


[monster_damage_anime_murti]

;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]



;ここでモンスターを戻す
;全体なので場合分け

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[free layer=3 name="monster1"]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]


[bg storage=&tf.bgimage_battle_0 time=5]


[endmacro]





;クリティカルアニメ

[macro name="critical_animation"]

[if exp="tf.target_monster=='monster1'"]

[if exp="f.monster_igyou==1"]
[eval exp="tf.cri_x=tf.x/2"]
[eval exp="tf.cri_y=tf.y/2"]
[elsif exp="f.monster_igyou!=1"]
[eval exp="tf.cri_x=tf.x_2"]
[eval exp="tf.cri_y=tf.y_3"]
[endif]


[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.cri_x y=&tf.cri_y]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=400]
[free layer=3 name="critical"]



[elsif exp="tf.target_monster=='monster2'"]

[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.x_4 y=&tf.y_3]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=400]
[free layer=3 name="critical"]


[elsif exp="tf.target_monster=='monster3'"]

[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.x_4bunno3 y=&tf.y_3]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=400]
[free layer=3 name="critical"]

[else]

[endif]





[endmacro]






;ヒットアニメ
[macro name="hit_animation"]


[wait time=400]

[if exp="f.monster_igyou==1"]
[eval exp="tf.hit_x=tf.x/2"]
[eval exp="tf.hit_y=tf.y/2"]
[else]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]
[endif]
[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x y=&tf.hit_y]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x y=&tf.hit_y]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
[anim name="hit" top="-=100" time=100]
[anim name="hit" top="+=80" time=80]
[anim name="hit" top="-=20" time=100]
[anim name="hit" top="+=20" time=70]
[anim name="hit" top="-=20" time=50]
[wait time=400]
[free layer=3 name="hit"]




[endmacro]


;ヒットアニメ〜ション複数
[macro name="hit_animation_murti"]

;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]

;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]

[if exp="f.monster_igyou==1"]
[eval exp="tf.hit_x=tf.x/2"]
[eval exp="tf.hit_y=tf.y/2"]
[else]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]
[endif]

[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]

[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]


[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
;真ん中

[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x y=&tf.hit_y]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x y=&tf.hit_y]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１

[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x_1 y=&tf.hit_y_1]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x_1 y=&tf.hit_y_1]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１

[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x_2 y=&tf.hit_y_2]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x_2 y=&tf.hit_y_2]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]


[anim name="hit" top="-=100" time=100]
[anim name="hit" top="+=80" time=80]
[anim name="hit" top="-=20" time=100]
[anim name="hit" top="+=20" time=70]
[anim name="hit" top="-=20" time=50]
[wait time=400]
[free layer=3 name="hit"]





[endmacro]



;ダメージ受けたときのモンスターアニメ
[macro name="monster_damage_anime"]


[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[wait time=50]
[free layer=2 name="siro"]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[wait time=50]
[free layer=2 name="siro"]

[if exp="tf.damage<8"]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[anim name="&tf.target_monster" top="-=10" time=50]
[anim name="&tf.target_monster" top="+=10" time=50]
[anim name="&tf.target_monster" left="-=10" time=100]
[anim name="&tf.target_monster" left="+=10" time=100]
[elsif exp="tf.damage>7"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=50" time=100]
[anim name="&tf.target_monster" left="+=50" time=100]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[anim name="&tf.target_monster" left="-=30" time=100]
[anim name="&tf.target_monster" left="+=30" time=100]
[endif]

[wait time=600]


[endmacro]


;モンスターへのダメージ数値アニメ
[macro name="damage_animation"]

;必殺ふらぐかホークアイで必殺
;[if exp="tf.hissatu_irain==1||tf.hawk_eye==1"]
;[eval exp="tf.damage=tf.damage*2"]
;[endif]

[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[elsif exp="f.rusia_battle==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2+200"]
[else]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[endif]

[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" color=#B22222 size=30 x=&tf.damage_x y=&tf.damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]


[endmacro]


;モンスターへのダメージ数値アニメ仲間
[macro name="damage_animation_friend"]

[if exp="tf.battle_turn==1"]

;仲間の場合


;必殺
[iscript]
tf.hissatu_friend = Math.floor( Math.random() * tf.friend_skill) + 1
[endscript]


;必殺ふらぐかホークアイで必殺
[if exp="tf.hissatu_friend==1||tf.hawk_eye==1"]
[critical_animation]
[eval exp="tf.damage=tf.damage*2"]
[endif]


[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[elsif exp="f.rusia_battle==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[else]
[eval exp="tf.damage_x=tf.image_x+50"]
[eval exp="tf.damage_y=tf.image_y+90"]
[endif]

[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" color=#B22222 size=30 x=&tf.damage_x y=&tf.damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]



[endif]


[endmacro]



;モンスターへのダメージ数値アニメ複数
[macro name="damage_animation_murti"]

[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[else]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[endif]

[eval exp="tf.damage_x_1=tf.hit_x_1+30"]
[eval exp="tf.damage_y_1=tf.hit_y_1+10"]

[eval exp="tf.damage_x_2=tf.hit_x_2+30"]
[eval exp="tf.damage_y_2=tf.hit_y_2+10"]


[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
;真ん中


[if exp="tf.lion_skill_damage==1&&f.mukou!=1&&tf.monster_hp_1==1||tf.rans_death==1"]
[elsif exp="tf.lion_skill_damage==1&&f.mukou!=1"]
[ptext layer=3 page=fore visible=true name="damage" text="HP:1" size=30 x=&tf.damage_x y=&tf.damage_y]
[else]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x y=&tf.damage_y]
[endif]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１

[if exp="tf.lion_skill_damage==1&&f.mukou!=1&&tf.monster_hp_2==1||tf.rans_death==1"]
[elsif exp="tf.lion_skill_damage==1&&f.mukou!=1"]
[ptext layer=3 page=fore visible=true name="damage" text="HP:1" size=30 x=&tf.damage_x_1 y=&tf.damage_y_1]
[else]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x_1 y=&tf.damage_y_1]
[endif]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１


[if exp="tf.lion_skill_damage==1&&f.mukou!=1&&tf.monster_hp_3==1||tf.rans_death==1"]
[elsif exp="tf.lion_skill_damage==1&&f.mukou!=1"]
[ptext layer=3 page=fore visible=true name="damage" text="HP:1" size=30 x=&tf.damage_x_2 y=&tf.damage_y_2]
[else]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x_2 y=&tf.damage_y_2]
[endif]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]

[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]

[endmacro]

;--------------------------------------------------------------------------------------------------------------------------------
;モンスターのダメージアニメ複数
[macro name="monster_damage_anime_murti"]

;戦うエフェクト
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=2 name="siro" time=50]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=2 name="siro" time=50]


;モンスター振動アニメ
;1,2,3
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1&&tf.monster_hp_2>=1&&tf.monster_2_death!=1"&&"tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

[free layer=3 name="monster1"]
[free layer=3 name="monster2"]
[free layer=3 name="monster3"]


[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

;左側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster1" fix=true x=&tf.x_4 y=&tf.y_3]

;右側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster1" fix=true x=&tf.x_4bunno3 y=&tf.y_3]


*monster_1_anime
[if exp="tf.damage<8"]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[else]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=50" time=100]
[anim name="monster1" left="+=50" time=100]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=30" time=100]
[anim name="monster1" left="+=30" time=100]
[endif]

[wait time=600]


[free layer=3 name="monster1"]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]

;1,2
;-------------------------------
[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1&&tf.monster_hp_2>=1&&tf.monster_2_death!=1"]

[free layer=3 name="monster1"]
[free layer=3 name="monster2"]


[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

;左側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster1" fix=true x=&tf.x_4 y=&tf.y_3]


*monster_1_anime2
[if exp="tf.damage<8"]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[else]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=50" time=100]
[anim name="monster1" left="+=50" time=100]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=30" time=100]
[anim name="monster1" left="+=30" time=100]
[endif]

[wait time=600]

[free layer=3 name="monster1"]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;2,3
;------------------------------------

[elsif exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1&&tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

[free layer=3 name="monster2"]
[free layer=3 name="monster3"]

;左側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster1" fix=true x=&tf.x_4 y=&tf.y_3]

;右側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster1" fix=true x=&tf.x_4bunno3 y=&tf.y_3]


*monster_1_anime3
[if exp="tf.damage<8"]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[else]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=50" time=100]
[anim name="monster1" left="+=50" time=100]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=30" time=100]
[anim name="monster1" left="+=30" time=100]
[endif]

[wait time=600]

[free layer=3 name="monster1"]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]

;1,3
;------------------------------------------------
[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"&&"tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

[free layer=3 name="monster1"]
[free layer=3 name="monster3"]


[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

;右側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster1" fix=true x=&tf.x_4bunno3 y=&tf.y_3]


*monster_1_anime4
[if exp="tf.damage<8"]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[else]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=50" time=100]
[anim name="monster1" left="+=50" time=100]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=30" time=100]
[anim name="monster1" left="+=30" time=100]
[endif]


[wait time=600]

[free layer=3 name="monster1"]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]

;--------------------------------------------------------
;１の場合
[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

[free layer=3 name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]

*monster_1_anime5
[if exp="tf.damage<8"]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[anim name="monster1" top="-=10" time=50]
[anim name="monster1" top="+=10" time=50]
[anim name="monster1" left="-=10" time=100]
[anim name="monster1" left="+=10" time=100]
[else]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=50" time=100]
[anim name="monster1" left="+=50" time=100]
[anim name="monster1" top="-=30" time=50]
[anim name="monster1" top="+=30" time=50]
[anim name="monster1" left="-=30" time=100]
[anim name="monster1" left="+=30" time=100]
[endif]

[wait time=600]

;---------------------------------------------２の場合
[elsif exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]

[free layer=3 name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]


[if exp="tf.damage<8"]
[anim name="monster2" top="-=10" time=50]
[anim name="monster2" top="+=10" time=50]
[anim name="monster2" left="-=10" time=100]
[anim name="monster2" left="+=10" time=100]
[anim name="monster2" top="-=10" time=50]
[anim name="monster2" top="+=10" time=50]
[anim name="monster2" left="-=10" time=100]
[anim name="monster2" left="+=10" time=100]
[else]
[anim name="monster2" top="-=30" time=50]
[anim name="monster2" top="+=30" time=50]
[anim name="monster2" left="-=50" time=100]
[anim name="monster2" left="+=50" time=100]
[anim name="monster2" top="-=30" time=50]
[anim name="monster2" top="+=30" time=50]
[anim name="monster2" left="-=30" time=100]
[anim name="monster2" left="+=30" time=100]
[endif]


[wait time=600]
;------------------------------------------------------
[elsif exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;３の場合
[free layer=3 name="monster3"]
;右側
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]



*monster_3_anime
[if exp="tf.damage<8"]
[anim name="monster3" top="-=10" time=50]
[anim name="monster3" top="+=10" time=50]
[anim name="monster3" left="-=10" time=100]
[anim name="monster3" left="+=10" time=100]
[anim name="monster3" top="-=10" time=50]
[anim name="monster3" top="+=10" time=50]
[anim name="monster3" left="-=10" time=100]
[anim name="monster3" left="+=10" time=100]
[else]
[anim name="monster3" top="-=30" time=50]
[anim name="monster3" top="+=30" time=50]
[anim name="monster3" left="-=50" time=100]
[anim name="monster3" left="+=50" time=100]
[anim name="monster3" top="-=30" time=50]
[anim name="monster3" top="+=30" time=50]
[anim name="monster3" left="-=30" time=100]
[anim name="monster3" left="+=30" time=100]
[endif]

[wait time=600]



[endif]


[endmacro]

;---------------------------------------------------------------------------------------
;イレインへのダメージ数値アニメ
[macro name="irain_damage_anime"]

[eval exp="tf.monster_damage_x=tf.status_x+60"]
[eval exp="tf.monster_damage_y=tf.status_y+90"]
[eval exp="tf.monster_damage_x_kigou=tf.status_x+43"]


[ptext layer=3 page=fore visible=true name="monster_damage" text="-" color="red" size=30 x=&tf.monster_damage_x_kigou y=&tf.monster_damage_y]
[ptext layer=3 page=fore visible=true name="monster_damage" text="&tf.monster_damage" color="red" size=30 x=&tf.monster_damage_x y=&tf.monster_damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="monster_damage" top="-=100" time=100]
[anim name="monster_damage" top="+=80" time=80]
[anim name="monster_damage" top="-=20" time=100]
[anim name="monster_damage" top="+=20" time=70]
[anim name="monster_damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="monster_damage"]






[endmacro]

;仲間のダメージ数値アニメ
[macro name="friend_damage_anime"]

[eval exp="tf.monster_damage_x=tf.friend_status_x+60"]
[eval exp="tf.monster_damage_y=tf.friend_status_y+90"]
[eval exp="tf.monster_damage_x_kigou=tf.friend_status_x+43"]


[ptext layer=3 page=fore visible=true name="monster_damage" text="-" color="red" size=30 x=&tf.monster_damage_x_kigou y=&tf.monster_damage_y]
[ptext layer=3 page=fore visible=true name="monster_damage" text="&tf.monster_damage" color="red" size=30 x=&tf.monster_damage_x y=&tf.monster_damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="monster_damage" top="-=100" time=100]
[anim name="monster_damage" top="+=80" time=80]
[anim name="monster_damage" top="-=20" time=100]
[anim name="monster_damage" top="+=20" time=70]
[anim name="monster_damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="monster_damage"]






[endmacro]


;仲間の回復数値アニメ
[macro name="friend_kaihuku_anime"]

[eval exp="tf.monster_damage_x=tf.friend_status_x+60"]
[eval exp="tf.monster_damage_y=tf.friend_status_y+90"]
[eval exp="tf.monster_damage_x_kigou=tf.friend_status_x+43"]


[ptext layer=3 page=fore visible=true name="kaihuku" text="+" color="lightgreen" size=30 x=&tf.monster_damage_x_kigou y=&tf.monster_damage_y]
[ptext layer=3 page=fore visible=true name="kaihuku" text="&tf.kaihuku" color="lightgreen" size=30 x=&tf.monster_damage_x y=&tf.monster_damage_y]

[anim name="kaihuku" top="-=100" time=100]
[anim name="kaihuku" top="+=80" time=80]
[anim name="kaihuku" top="-=20" time=100]
[anim name="kaihuku" top="+=20" time=70]
[anim name="kaihuku" top="-=20" time=50]
[wait time=400]
[free layer=3 name="kaihuku"]

[endmacro]


;イレインへの回復数値アニメ
[macro name="irain_kaihuku_anime"]

[eval exp="tf.monster_damage_x=tf.status_x+60"]
[eval exp="tf.monster_damage_y=tf.status_y+90"]
[eval exp="tf.monster_damage_x_kigou=tf.status_x+43"]


[ptext layer=3 page=fore visible=true name="kaihuku" text="+" color="lightgreen" size=30 x=&tf.monster_damage_x_kigou y=&tf.monster_damage_y]
[ptext layer=3 page=fore visible=true name="kaihuku" text="&tf.kaihuku" color="lightgreen" size=30 x=&tf.monster_damage_x y=&tf.monster_damage_y]

[anim name="kaihuku" top="-=100" time=100]
[anim name="kaihuku" top="+=80" time=80]
[anim name="kaihuku" top="-=20" time=100]
[anim name="kaihuku" top="+=20" time=70]
[anim name="kaihuku" top="-=20" time=50]
[wait time=400]
[free layer=3 name="kaihuku"]






[endmacro]



;回復アニメーション
[macro name="kaihuku_animation"]

;回復アニメーション

[eval exp="tf.anime_item_x=tf.irain_face_x+5"]
[eval exp="tf.anime_item_y=tf.irain_face_y"]


[playse storage="battle_se/charamel_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_9.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_charamel" time=100]



;仲間の場合

[if exp="f.friend>=1"]
[eval exp="tf.anime_charamel_friend_x=tf.friend_face_x+5]
[eval exp="tf.anime_charamel_friend_y=tf.friend_face_y]
[else]
[endif]

[if exp="tf.friend_death!=1&&tf.friend_battle==1"]

[playse storage="battle_se/charamel_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_0.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_1.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_2.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_3.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_4.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_5.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_6.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_7.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_8.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/charamel/charamel_9.png" x=&tf.anime_charamel_friend_x y=&tf.anime_charamel_friend_y]
[free layer=3 name="anime_charamel" time=50]




[endif]



[endmacro]


[macro name="full_kaihuku"]

[eval exp="f.irain_hp = f.irain_hp_m"]
;[free layer=3 name="irain_hp"]
;[irain_hp_kousin]

[if exp="f.friend>=1"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
;[free layer=3 name="friend_hp"]
;[free layer=3 name="friend_attack"]
;[free layer=3 name="friend_guard"]
;[friend_hp_kousin]
[endif]

[endmacro]


[macro name="kaihuku_100"]

[kaihuku_animation]

[eval exp="f.irain_hp = f.irain_hp+100"]

[eval exp="tf.kaihuku=100"]

[irain_kaihuku_anime]

[if exp="f.irain_hp>f.irain_hp_m"]
[eval exp="f.irain_hp = f.irain_hp_m"]
[endif]

;[free layer=3 name="irain_hp"]
;[irain_hp_kousin]

[if exp="f.friend>=1&&tf.friend_hp>=1&&tf.friend_death!=1"]
[eval exp="tf.friend_hp = tf.friend_hp+100"]

[eval exp="tf.kaihuku=100"]

[friend_kaihuku_anime]

[if exp="tf.friend_hp>tf.friend_hp_m"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[endif]

[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]


[endmacro]



[macro name="kaihuku_300"]

[kaihuku_animation]

[eval exp="f.irain_hp = f.irain_hp+300"]

[eval exp="tf.kaihuku=300"]

[irain_kaihuku_anime]

[if exp="f.irain_hp>f.irain_hp_m"]
[eval exp="f.irain_hp = f.irain_hp_m"]
[endif]



[if exp="f.friend>=1&&tf.friend_hp>=1&&tf.friend_death!=1"]
[eval exp="tf.friend_hp = tf.friend_hp+300"]

[eval exp="tf.kaihuku=300"]

[friend_kaihuku_anime]

[if exp="tf.friend_hp>tf.friend_hp_m"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[endif]

[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]


[endmacro]



[macro name="kaihuku_500"]

[kaihuku_animation]

[eval exp="f.irain_hp = f.irain_hp+500"]

[eval exp="tf.kaihuku=500"]

[irain_kaihuku_anime]

[if exp="f.irain_hp>f.irain_hp_m"]
[eval exp="f.irain_hp = f.irain_hp_m"]
[endif]

;[free layer=3 name="irain_hp"]
;[irain_hp_kousin]

[if exp="f.friend>=1&&tf.friend_hp>=1&&tf.friend_death!=1"]
[eval exp="tf.friend_hp = tf.friend_hp+500"]

[eval exp="tf.kaihuku=500"]

[friend_kaihuku_anime]

[if exp="tf.friend_hp>tf.friend_hp_m"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[endif]

[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]


[endmacro]



;グリフの技連続ターンの回数
[macro name="glif_turn"]

[if exp="f.battle_kaisuu<31"]

[eval exp="tf.glif_turn=3"]

[elsif exp="f.battle_kaisuu<61"]

[eval exp="tf.glif_turn=5"]

[elsif exp="f.battle_kaisuu<121"]

[eval exp="tf.glif_turn=10"]

[else]
[eval exp="tf.glif_turn=10"]
[endif]
[endmacro]


[macro name="rusia_mahou_honoo"]
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro"]
[bg storage="black.png" time=50]
[wait time=300]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.gif" height="637" width="1100" x=-130 y=-165]
[wait time=800]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]
[free layer=1 name="anime_rusia_skill"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire0.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire1.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire2.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire0.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire1.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire2.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=1000]
[wait time=3000]
[free layer=3 name="anime_rusia_skill"]
[free layer=3 name="siro"]


[endmacro]

[macro name="rusia_mahou_honoo"]
[eval exp="tf.attack_x=tf.irain_face_x-150"]
[eval exp="tf.attack_y=tf.irain_face_y-100"]
[bg storage="black.png" time=50]
[wait time=300]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.gif" height="637" width="1100" x=-130 y=-165]
[wait time=800]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]
[free layer=1 name="anime_rusia_skill"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]

[playse storage="battle_se/honoo_koukaonlabo.ogg"]

[eval exp="tf.battle_anime=7"]
[iscript]
tf.battle_honoo=[
'battle_animation/rusia/honoo_7.png',
'battle_animation/rusia/honoo_6.png',
'battle_animation/rusia/honoo_5.png',
'battle_animation/rusia/honoo_4.png',
'battle_animation/rusia/honoo_3.png',
'battle_animation/rusia/honoo_2.png',
'battle_animation/rusia/honoo_1.png',
'battle_animation/rusia/honoo_0.png',
];
[endscript]
*battle_honoo
[wait time=100]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=&tf.battle_honoo[tf.battle_anime] x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]

[if exp="tf.battle_anime>0"]
[eval exp="tf.battle_anime=tf.battle_anime-1"]
[jump target=*battle_honoo]
[endif]
[free layer=3 name="anime_rusia_skill"]
[free layer=1 name="anime_rusia_skill"]

[stopse]
[endmacro]

[macro name="rusia_mahou_doku"]
[eval exp="tf.attack_x=tf.irain_face_x-400"]
[eval exp="tf.attack_y=tf.irain_face_y-320"]
[eval exp="tf.attack_x_f=tf.friend_face_x-250"]
[eval exp="tf.attack_y_f=tf.friend_face_y-120"]
[eval exp="tf.attack_doku=1"]

[bg storage="black.png" time=50]
[wait time=300]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.gif" height="637" width="1100" x=-130 y=-165]
[wait time=800]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]
[free layer=1 name="anime_rusia_skill"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]

[playse storage="ikitumaru_koukaonlabo.ogg"]

[eval exp="tf.battle_anime=9"]
[iscript]
tf.battle_doku=[
'battle_animation/rusia/doku_9.png',
'battle_animation/rusia/doku_8.png',
'battle_animation/rusia/doku_7.png',
'battle_animation/rusia/doku_6.png',
'battle_animation/rusia/doku_5.png',
'battle_animation/rusia/doku_4.png',
'battle_animation/rusia/doku_3.png',
'battle_animation/rusia/doku_2.png',
'battle_animation/rusia/doku_1.png',
'battle_animation/rusia/doku_0.png',
];
[endscript]
*battle_doku
[wait time=70]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=&tf.battle_doku[tf.battle_anime] x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free layer=3 name="anime_rusia_skill"]

[if exp="tf.battle_anime>0"]
[eval exp="tf.battle_anime=tf.battle_anime-1"]
[jump target=*battle_doku]
[endif]
[free layer=3 name="anime_rusia_skill"]
[free layer=1 name="anime_rusia_skill"]
[stopse]
[endmacro]

[macro name="rusia_mahou_ikaduti"]
[eval exp="tf.attack_x=tf.irain_face_x-250"]
[eval exp="tf.attack_y=tf.irain_face_y-120"]
[eval exp="tf.attack_x_f=tf.friend_face_x-250"]
[eval exp="tf.attack_y_f=tf.friend_face_y-120"]


[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro"]
[bg storage="black.png" time=50]
[wait time=300]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.gif" height="637" width="1100" x=-130 y=-165]
[wait time=800]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]
[free layer=1 name="anime_rusia_skill"]
[image layer=1 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/vaeru_jimen.png" height="637" width="1100" x=-130 y=-170]

[playse storage="dengeki_onjin.ogg"]

[eval exp="tf.battle_anime=9"]
[iscript]
tf.battle_ikaduti=[
'battle_animation/rusia/ikaduti_9.png',
'battle_animation/rusia/ikaduti_8.png',
'battle_animation/rusia/ikaduti_7.png',
'battle_animation/rusia/ikaduti_6.png',
'battle_animation/rusia/ikaduti_5.png',
'battle_animation/rusia/ikaduti_4.png',
'battle_animation/rusia/ikaduti_3.png',
'battle_animation/rusia/ikaduti_2.png',
'battle_animation/rusia/ikaduti_1.png',
'battle_animation/rusia/ikaduti_0.png',
];
[endscript]
*battle_ikaduti
[wait time=100]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=&tf.battle_ikaduti[tf.battle_anime] x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=&tf.battle_ikaduti[tf.battle_anime] x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=100]
[free layer=3 name="anime_rusia_skill"]
[free layer=1 name="anime_rusia_skill"]
[if exp="tf.battle_anime>0"]
[eval exp="tf.battle_anime=tf.battle_anime-1"]
[jump target=*battle_ikaduti]
[endif]


[stopse]
[free layer=3 name="anime_rusia_skill"]

[endmacro]




[macro name="rusia_sword"]

[if exp="tf.attack_random==1"]
[eval exp="tf.attack_x=tf.friend_face_x-150"]
[eval exp="tf.attack_y=tf.friend_face_y-200"]
[elsif exp="tf.attack_random!=1"]
[eval exp="tf.attack_x=tf.irain_face_x-100"]
[eval exp="tf.attack_y=tf.irain_face_y-200"]
[endif]

[playse storage="battle_se/kra_sword_3.ogg"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword.png x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword.png x=&tf.attack_x y=&tf.attack_y]
[wait time=300]
[free layer=3 name="anime_rusia_skill"]
[playse storage="battle_se/kra_sword_2.ogg"]
[endmacro]



[macro name="igyou_2_magic"]

[eval exp="tf.attack_x_f=tf.friend_face_x-300"]
[eval exp="tf.attack_y_f=tf.friend_face_y-200"]
[eval exp="tf.attack_x=tf.irain_face_x-300"]
[eval exp="tf.attack_y=tf.irain_face_y-200"]


[playse storage="ikitumaru_koukaonlabo.ogg"]
[wait time=70]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_0.png" x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_0.png" x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_1.png"  x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_1.png"  x=&tf.attack_x_f y=&tf.attack_y_f]

[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_2.png"  x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_2.png"  x=&tf.attack_x_f y=&tf.attack_y_f]

[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_3.png"  x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_3.png"  x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_4.png" x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_4.png"  x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_5.png" x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_5.png"  x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
;[playse storage="hit_p10_macchi.ogg"]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_6.png" x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_6.png"  x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_7.png" x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/yami_7.png"  x=&tf.attack_x_f y=&tf.attack_y_f]
[wait time=70]
[free name="igyou_attack" layer=3]
[fadeoutse time=3000]

[endmacro]


[macro name="igyou_3_magic"]

[eval exp="tf.attack_x=tf.irain_face_x-160"]
[eval exp="tf.attack_y=tf.irain_face_y-100"]


[playse storage="bakuhatu_onjin.ogg"]
[wait time=70]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_0.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_1.png"  x=&tf.attack_x y=&tf.attack_y]

[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_2.png"  x=&tf.attack_x y=&tf.attack_y]

[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_3.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_4.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_5.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
;[playse storage="hit_p10_macchi.ogg"]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_6.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_7.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/mahou/bakuhatu_8.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=70]

[free name="igyou_attack" layer=3]
[fadeoutse time=3000]

[endmacro]

[macro name="igyou_2_attack"]
;1の場合仲間ダメージ
[if exp="tf.attack_random==1"]
;[eval exp="tf.attack_x=0"]
;[eval exp="tf.attack_y=0"]
[eval exp="tf.attack_x=tf.friend_face_x-350"]
[eval exp="tf.attack_y=tf.friend_face_y-250"]
[elsif exp="tf.attack_random!=1"]
;[eval exp="tf.attack_x=0"]
;[eval exp="tf.attack_y=0"]
[eval exp="tf.attack_x=tf.irain_face_x-350"]
[eval exp="tf.attack_y=tf.irain_face_y-250"]
[endif]

[playse storage="swing37_a_macchi.ogg"]
[wait time=100]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_0.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_1.png"  x=&tf.attack_x y=&tf.attack_y]
[playse storage="sword-slash4_koukaonlabo.ogg"]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_2.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_3.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_4.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_5.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_6.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_7.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_8.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/shokushu_9.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]




[endmacro]



[macro name="igyou_3_attack"]
;1の場合仲間ダメージ
[if exp="tf.attack_random==1"]
;[eval exp="tf.attack_x=0"]
;[eval exp="tf.attack_y=0"]
[eval exp="tf.attack_x=tf.friend_face_x-150"]
[eval exp="tf.attack_y=tf.friend_face_y-50"]
[elsif exp="tf.attack_random!=1"]
;[eval exp="tf.attack_x=0"]
;[eval exp="tf.attack_y=0"]
[eval exp="tf.attack_x=tf.irain_face_x-150"]
[eval exp="tf.attack_y=tf.irain_face_y-50"]
[endif]

[playse storage="swing37_a_macchi.ogg"]
[wait time=100]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/ono_0.png" x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/ono_1.png"  x=&tf.attack_x y=&tf.attack_y]
[playse storage="sword-slash4_koukaonlabo.ogg"]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/ono_2.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]
[image layer=3 page=fore visible=true name="igyou_attack" storage="battle_animation/attack/ono_3.png"  x=&tf.attack_x y=&tf.attack_y]
[wait time=100]
[free name="igyou_attack" layer=3]




[endmacro]




;ウェルム剣戟
[macro name="werumu_sword"]

[if exp="tf.attack_random==1"]
[eval exp="tf.attack_x=tf.friend_face_x-150"]
[eval exp="tf.attack_y=tf.friend_face_y-200"]
[elsif exp="tf.attack_random!=1"]
[eval exp="tf.attack_x=tf.irain_face_x-100"]
[eval exp="tf.attack_y=tf.irain_face_y-200"]
[endif]

[playse storage="battle_se/kra_sword_3.ogg"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword.png x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword.png x=&tf.attack_x y=&tf.attack_y]
[wait time=150]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword_h.png x=&tf.attack_x y=&tf.attack_y]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/rusia/rusia_sword_h.png x=&tf.attack_x y=&tf.attack_y]
[wait time=150]
[free layer=3 name="anime_rusia_skill"]
[playse storage="battle_se/kra_sword_2.ogg"]
[endmacro]


;攻撃力ダウン、毒、麻痺
[macro name="attack_down"]

[eval exp="f.irain_tec_f=f.irain_tec"]
[eval exp="f.friend_attack_f=f.friend_attack"]

[eval exp="tf.attack_down=1"]
[eval exp="tf.attack_doku=1"]
[eval exp="tf.attack_mahi=1"]


;アニメーション
[playse storage="battle_se/werumu_mahou.ogg"]
[image layer=3 page=fore visible=true name="anime_werumu_skill" storage=battle_animation/werumu/werumu_skill_0.png x=0 y=0 time=1000]
[wait time=100]
[wait time=300]
[free name="anime_werumu_skill" layer=3]
;攻撃力ダウンイレイン
[eval exp="tf.down=f.irain_tec-f.irain_tec/2"]
[iscript]
f.irain_tec = Math.floor(tf.down)
[endscript]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
;モンスターで特殊攻撃に入力があれば追加
[if exp="tf.attack_down==1&&tf.irain_sp[0]!=1&&tf.guard_success!=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down.png" name="down_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down_y.png" name="down_irain_2" x=&tf.irain_face_x y=&tf.irain_sp_y]
[anim name="down_irain_2" top="+=30"]
[w][w][w]
[free name="down_irain_2" layer=3]
[free name="down_irain" layer=3]


[free layer=2 name="irain_hp"]
[free layer=2 name="irain_tec"]
[irain_hp_kousin]

[playse storage="battle_se/werumu_mahou.ogg"]
[name]の攻撃力が下がった！[r][a]
[endif]


;攻撃ダウン仲間

[eval exp="tf.friend_d_attack=tf.friend_attack-tf.friend_attack/2"]

[iscript]
tf.friend_attack =  Math.floor(tf.friend_d_attack)
[endscript]


[eval exp="tf.friend_sp_y=tf.friend_face_y-20"]
;モンスターで特殊攻撃に入力があれば追加,仲間
[if exp="tf.attack_down==1&&tf.friend_death!=1&&tf.friend_doku!=1&&tf.guard_success!=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down.png" name="down_friend" x=&tf.friend_face_x y=&tf.friend_sp_y]
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down_y.png" name="down_friend_2" x=&tf.friend_face_x y=&tf.friend_sp_y]
[anim name="down_friend_2" top="+=30"]
[w][w][w]
[free name="down_friend_2" layer=3]
[free name="down_friend" layer=3]

[if exp="f.friend>=1&&tf.friend_death!=1"]
[free layer=2 name="friend_hp"]
[free layer=2 name="friend_attack"]
[free layer=2 name="friend_guard"]
[friend_hp_kousin]
[endif]

[playse storage="battle_se/werumu_mahou.ogg"]
[emb exp="tf.friend_name"]の攻撃力が下がった！[r][a]
[endif]


;イレインどく
[if exp="tf.attack_doku==1&&tf.irain_sp[0]!=1&&tf.guard_success!=1"]
[eval exp="tf.irain_sp[0]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]

;ステータス表示を変更

[playse storage="battle_se/poison_koukaonlabo.ogg"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[name]はどくをうけた！[r][a]
;毒解除確率
[eval exp="tf.kakuritu=2"]
;[live2d_motion name="irain" mtn="Battle_poison" no=0]
;[live2d_mod name="irain" idle="Battle_poison" no=0]

[endif]
;イレインまひ
[if exp="tf.attack_mahi==1&&tf.irain_sp[1]!=1&&tf.guard_success!=1"]
[eval exp="tf.irain_sp[1]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
[eval exp="tf.irain_mahi_x=tf.irain_face_x+100"]
;ステータス表示を変更
[playse storage="battle_se/mahi_onjin.ogg"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_irain" x=&tf.irain_mahi_x y=&tf.irain_sp_y]
[name]はまひした！[r][a]
;麻痺解除確率
[eval exp="tf.kakuritu=2"]
;[live2d_motion name="irain" mtn="Battle_mahi" no=0]
;[live2d_mod name="irain" idle="Battle_mahi" no=0]

[endif]



;仲間どく
[eval exp="tf.friend_sp_y=tf.friend_face_y-20"]

;モンスターで特殊攻撃に入力があれば追加,仲間
[if exp="tf.attack_doku==1&&tf.friend_death!=1&&tf.friend_doku!=1&&tf.guard_success!=1"]
[eval exp="tf.friend_doku=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_friend" x=&tf.friend_face_x y=&tf.friend_sp_y]
[playse storage="battle_se/poison_koukaonlabo.ogg"]
[emb exp="tf.friend_name"]はどくをうけた！[r][a]
;毒解除確率
[eval exp="tf.kakuritu=2"]
[endif]
;仲間まひ
[if exp="tf.attack_mahi==1&&tf.friend_death!=1&&tf.friend_mahi!=1&&tf.guard_success!=1"]
[eval exp="tf.friend_mahi=1"]
[playse storage="battle_se/mahi_onjin.ogg"]
[emb exp="tf.friend_name"]はまひした！[r][a]
;麻痺解除確率
[eval exp="tf.kakuritu=2"]
[eval exp="tf.friend_mahi_x=tf.friend_face_x+100"]

;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_friend" x=&tf.friend_mahi_x y=&tf.friend_sp_y]
[endif]

[eval exp="tf.attack_down=0"]
[eval exp="tf.attack_doku=0"]
[eval exp="tf.attack_mahi=0"]
[endmacro]


;滅多斬り
[macro name="many_sword"]
[eval exp="tf.metta=1"]
[eval exp="tf.many=0"]


[iscript]
tf.many = Math.floor( Math.random() * 3) + 1
[endscript]

;ここからウェルムのスキルアニメ
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[free layer=3 name="siro"]
[wait time=300]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[w][w]



[playse storage="battle_se/rans_sword_0.ogg"]
[wait time=100]
[playse storage="battle_se/rans_skill_2.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]
[wait time=15]
[playse storage="battle_se/rans_skill_1.ogg"]


[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_0.png" x=0 y=0]
[wait time=15]
[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_1.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_2.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_3.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_4.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_5.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_6.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_7.png" x=0 y=0]
[wait time=15]

[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_8.png" x=0 y=0]


[image layer=3 page=fore visible=true name="anime_werumu_skill" storage="battle_animation/werumu/werumu_sk_9.png" x=0 y=0]




[wait time=300]
[free layer=3 name="anime_werumu_skill"]


;即死効果
[if exp="tf.many==1&&tf.guard_zero!=1"]
[eval exp="f.irain_hp=0"]
[eval exp="f.friend_hp=0"]
[elsif exp="tf.many==1&&tf.guard_zero==1"]
ガードゼロの効果が消えた！[r][a]
[eval exp="tf.guard_zero=0"]
[free name="guard_icon_zero_f" layer=2]
[free name="guard_icon_zero" layer=2]
[endif]
[endmacro]




;ヴァリアス回復-------------------------------------------
[macro name="varius_heal"]
;回復
[eval exp="tf.monster_hp_1 = tf.monster_hp_1+5000"]
[playse storage="battle_se/charamel_koukaonlabo.ogg"]
;回復アニメーション
[if exp="f.monster_igyou==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2"]
[elsif exp="f.rusia_battle==1"]
[eval exp="tf.damage_x=tf.x/2"]
[eval exp="tf.damage_y=tf.y/2+200"]
[else]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[endif]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_0.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_1.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_2.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_3.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_4.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_5.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_6.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]



[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_7.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]


[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_8.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]

[image layer=3 page=fore visible=true name="anime_charamel" storage="battle_animation/kra_magic/kra_magic_9.png" x=&tf.damage_x y=&tf.damage_y]
[free layer=3 name="anime_charamel" time=100]


;回復数値アニメ
[eval exp="tf.plus = tf.damage_x-20"]
[ptext layer=3 page=fore visible=true name="damage" text="+" color=lightgreen size=30 x=&tf.plus y=&tf.damage_y]
[ptext layer=3 page=fore visible=true name="damage" text="5000" color=lightgreen size=30 x=&tf.damage_x y=&tf.damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="damage" top="-=100" time=100]
[anim name="damage" top="+=80" time=80]
[anim name="damage" top="-=20" time=100]
[anim name="damage" top="+=20" time=70]
[anim name="damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="damage"]
[endmacro]


;アイテム、応援効果無効-------------------------------------------------------------------------------------------
[macro name="kouka_mukou"]
[eval exp="tf.guard_zero=0"]
[eval exp="tf.skill_only=0"]
[eval exp="tf.hawk_eye=0"]
[eval exp="tf.height=600"]
[eval exp="tf.width=800"]


;アニメーション
[playse storage="kouka_mukou.ogg"]

[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_0.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]

[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_1.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]


[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_2.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]


[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_3.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]



[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_4.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]

[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_5.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]


[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_6.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]



[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_7.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]


[image layer=3 page=fore visible=true name="anime_amaishizuku" height="&tf.height" width="&tf.width" storage="battle_animation/varius/kouka_nasi_8.png" x=0 y=0]
[free layer=3 name="anime_amaishizuku" time=200]


[if exp="f.irain_hp_m>f.irain_hp_c"]
[eval exp="f.irain_hp_m=f.irain_hp_c"]
[endif]

[if exp="f.irain_tec>f.irain_tec_c"]
[eval exp="f.irain_tec=f.irain_tec_c"]
[endif]

[eval exp="f.irain_brain=f.irain_brain_c"]
[eval exp="f.irain_charm=f.irain_charm_c"]
[free layer=2 name="irain_hp"]
[free layer=2 name="irain_tec"]
[free layer=2 name="irain_brain"]
[free layer=2 name="irain_charm"]
[irain_hp_kousin]

[if exp="f.friend>=1&&tf.friend_death!=1"]

[if exp="tf.friend_hp_m>tf.friend_hp_c"]
[eval exp="tf.friend_hp_m=tf.friend_hp_c"]
[endif]

[if exp="tf.friend_attack>tf.friend_attack_c"]
[eval exp="tf.friend_attack=tf.friend_attack_c"]
[endif]

[eval exp="tf.friend_guard=tf.friend_guard_c"]
[free layer=2 name="friend_hp"]
[free layer=2 name="friend_attack"]
[free layer=2 name="friend_guard"]
[friend_hp_kousin]
[endif]
[free name="guard_icon_zero" layer=2]
[free name="guard_icon_zero_f" layer=2]
;メッセージ
アイテム、応援による補助効果が打ち消された！[r][a]
[endmacro]



;全体魔法^^^^^^^^^^^^^^^^^^^^^^^----------------------------------------------------------------------------------------
[macro name="varius_mahou"]

;アニメーション
[image layer=3 page=fore storage="siro.png" name="siro"]
[free name="siro" layer=3]
[image layer=3 page=fore storage="siro.png" name="siro"]
[free name="siro" layer=3 time=500]
[playse storage="klaistkougeki_koukaonlabo.ogg"]

;[playse storage="battle_se/kra_skill_3_1.ogg"]
[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_0.png" x=0 y=0 time=35]
[free layer=3 name="anime_kra_skill" time=30]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_1.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_2.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_3.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_4.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_5.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

;[playse storage="battle_se/kra_skill_3_1.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_6.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_7.png" x=0 y=0 time=55]
[wait time=300]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_8.png" x=0 y=0 time=55]
[wait time=300]

[playse storage="dogon_koukaonlabo.ogg"]
[image layer=3 page=fore storage="siro.jpg" name="siro" time=1000]
[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_9.png" x=0 y=0 time=55]
[wait time=300]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_10.png" x=0 y=0 time=55]
[wait time=300]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/varius/varius_skill_11.png" x=0 y=0 time=55]
[wait time=300]



;[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=55]
[wait time=3500]
[free name="anime_kra_skill" layer=1]
[free layer=3 name="anime_kra_skill" ]
[free name="siro" layer=3]

[endmacro]




;能力値ダウン--------------------
[macro name="attack_down_v"]

[eval exp="f.irain_tec_f=f.irain_tec"]
[eval exp="f.friend_attack_f=f.friend_attack"]

[eval exp="tf.attack_down=1"]
[eval exp="tf.attack_doku=1"]
[eval exp="tf.attack_mahi=1"]


;アニメーション
[playse storage="battle_se/werumu_mahou.ogg"]
[image layer=3 page=fore visible=true name="anime_werumu_skill" storage=battle_animation/werumu/werumu_skill_0.png x=0 y=0 time=1000]
[wait time=100]
[wait time=300]
[free name="anime_werumu_skill" layer=3]
;攻撃力ダウンイレイン
[eval exp="tf.down=f.irain_tec-f.irain_tec/2"]
[iscript]
f.irain_tec = Math.floor(tf.down)
[endscript]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
;モンスターで特殊攻撃に入力があれば追加
[if exp="tf.attack_down==1&&tf.irain_sp[0]!=1&&tf.guard_success!=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down.png" name="down_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down_y.png" name="down_irain_2" x=&tf.irain_face_x y=&tf.irain_sp_y]
[anim name="down_irain_2" top="+=30"]
[w][w][w]
[free name="down_irain_2" layer=3]
[free name="down_irain" layer=3]


[free layer=2 name="irain_hp"]
[free layer=2 name="irain_tec"]

;再表示
[irain_hp_kousin]

[playse storage="battle_se/werumu_mahou.ogg"]
[name]の攻撃力が下がった！[r][a]
[endif]



;-----------------
;攻撃ダウン仲間

[eval exp="tf.friend_d_attack=tf.friend_attack-tf.friend_attack/2"]

[iscript]
tf.friend_attack =  Math.floor(tf.friend_d_attack)
[endscript]


[eval exp="tf.friend_sp_y=tf.friend_face_y-20"]
;モンスターで特殊攻撃に入力があれば追加,仲間
[if exp="tf.attack_down==1&&tf.friend_death!=1&&tf.friend_doku!=1&&tf.guard_success!=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down.png" name="down_friend" x=&tf.friend_face_x y=&tf.friend_sp_y]
[image layer=3 page=fore visible="true" storage="battle_animation/tec_down_y.png" name="down_friend_2" x=&tf.friend_face_x y=&tf.friend_sp_y]
[anim name="down_friend_2" top="+=30"]
[w][w][w]
[free name="down_friend_2" layer=3]
[free name="down_friend" layer=3]

[if exp="f.friend>=1&&tf.friend_death!=1"]
[free layer=2 name="friend_hp"]
[free layer=2 name="friend_attack"]
[free layer=2 name="friend_guard"]

[friend_hp_kousin]
[endif]

[playse storage="battle_se/werumu_mahou.ogg"]
[emb exp="tf.friend_name"]の攻撃力が下がった！[r][a]
[endif]
[eval exp="tf.attack_down=0"]
[endmacro]

;--------------


[macro name="skill_huuji"]
;スキル封じ
;アニメーション
[eval exp="tf.anime_item_x=tf.irain_face_x-50"]
[eval exp="tf.anime_item_y=tf.irain_face_y-50"]

[playse storage="suitoru_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/varius/skill_no_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=150]


;仲間の場合

[eval exp="tf.anime_amaishizuku_friend_x=tf.friend_face_x-50]
[eval exp="tf.anime_amaishizuku_friend_y=tf.friend_face_y-50]


[if exp="tf.friend_death!=1&&tf.friend_battle==1"]

[playse storage="suitoru_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_0.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_1.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_2.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_3.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_4.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_5.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_6.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_7.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_8.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/skill_no_9.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=150]

[endif]



;イレイン
[if exp="tf.irain_sp[3]!=1&&tf.guard_success!=1"]
[eval exp="tf.irain_sp[3]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
[eval exp="tf.irain_skill_x=tf.irain_face_x+100"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_irain" x=&tf.irain_skill_x y=&tf.irain_sp_y]
[name]は技がつかえなくなった！[r][a]
;解除確率
[eval exp="tf.kakuritu=3"]
;スキルなしフラグ
[eval exp="tf.skill_impossble=1"]
;[live2d_motion name="irain" mtn="Battle_poison" no=0]
;[live2d_mod name="irain" idle="Battle_poison" no=0]
[endif]


;仲間
[eval exp="tf.friend_sp_y=tf.friend_face_y-20"]
[eval exp="tf.friend_skill_x=tf.friend_face_x+0"]

;モンスターで特殊攻撃に入力があれば追加,仲間
[if exp="tf.friend_death!=1&&tf.friend_skill!=1&&tf.guard_success!=1"]
[eval exp="tf.friend_skill_no=1"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_friend" x=&tf.friend_skill_x y=&tf.friend_sp_y]
[emb exp="tf.friend_name"]は技がつかえなくなった！[r][a]
[eval exp="tf.skill_f_impossble=1"]
[endif]
[endmacro]





[macro name="varius_sword"]
[if exp="tf.attack_random==1"]
[eval exp="tf.attack_x=tf.friend_face_x-150"]
[eval exp="tf.attack_y=tf.friend_face_y-200"]
[elsif exp="tf.attack_random!=1"]
[eval exp="tf.attack_x=tf.irain_face_x-100"]
[eval exp="tf.attack_y=tf.irain_face_y-200"]
[endif]

[playse storage="battle_se/kra_sword_3.ogg"]
[image layer=3 page=fore visible=true name="anime_rusia_skill" storage=battle_animation/varius/varius_sword.png x=&tf.attack_x y=&tf.attack_y]
[wait time=300]
[free layer=3 name="anime_rusia_skill"]
[playse storage="battle_se/kra_sword_2.ogg"]
[endmacro]


[macro name="varius_hp_1"]
;HP1
[eval exp="tf.v_hp1=1"]

[eval exp="tf.anime_item_x=tf.irain_face_x-50"]
[eval exp="tf.anime_item_y=tf.irain_face_y-50"]

;アニメーション

[playse storage="dark_attack.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[w]
[free layer=3 name="anime_amaishizuku" time=180]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=180]






;仲間の場合

[eval exp="tf.anime_amaishizuku_friend_x=tf.friend_face_x-50]
[eval exp="tf.anime_amaishizuku_friend_y=tf.friend_face_y-50]


[if exp="tf.friend_death!=1&&tf.friend_battle==1"]

[playse storage="dark_attack.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_0.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_1.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_2.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_3.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_4.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[w]
[free layer=3 name="anime_amaishizuku" time=180]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_5.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_6.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/varius/hp1_7.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=180]



[endif]

[endmacro]



[macro name="makara_mahou_anime"]

[eval exp="tf.mahou_anime=[]"]

[iscript]
tf.mahou_anime=[
"battle_animation/makara/aqua_8.png",
"battle_animation/makara/aqua_7.png",
"battle_animation/makara/aqua_6.png",
"battle_animation/makara/aqua_5.png",
"battle_animation/makara/aqua_4.png",
"battle_animation/makara/aqua_3.png",
"battle_animation/makara/aqua_2.png",
"battle_animation/makara/aqua_1.png",
"battle_animation/makara/aqua_0.png",
];

[endscript]
[eval exp="tf.mahou_kaisu=8"]

[playse storage="makara_aqua.ogg"]
*anime_return
[image storage=&tf.mahou_anime[tf.mahou_kaisu] layer="3" page="fore" visible="true" x="0" y="280" name="mahou_anime"]
[free name="mahou_anime"  layer=3 time=180]

[if exp="tf.mahou_kaisu>0"]
[eval exp="tf.mahou_kaisu = tf.mahou_kaisu-1"]
[jump target=*anime_return]
[endif]
[endmacro]



[macro name="makara_attack"]
[anim name="monster1" top="-=400" time=300]
[wait time=200]
;[anim name=monster1 top="-=700" width=200% time=500]
[anim name="monster1" top="+=800" width=200% time=500]
[endmacro]

[macro name="makara_attack_end"]
[anim name=monster1 left="+=800" top="+=800" width=30% time=300]
[endmacro]

[macro name="makara_otakebi"]

[playse storage="makara_otakebi.ogg"]
[eval exp="tf.mahou_anime=[]"]

[iscript]
tf.mahou_anime=[
"battle_animation/makara/makara_otakebi_7.png",
"battle_animation/makara/makara_otakebi_6.png",
"battle_animation/makara/makara_otakebi_5.png",
"battle_animation/makara/makara_otakebi_4.png",
"battle_animation/makara/makara_otakebi_3.png",
"battle_animation/makara/makara_otakebi_2.png",
"battle_animation/makara/makara_otakebi_1.png",
"battle_animation/makara/makara_otakebi_0.png",
];

[endscript]
[eval exp="tf.mahou_kaisu=7"]

[playse storage="makara_otakebi.ogg"]
*anime_return_o
[image storage="&tf.mahou_anime[tf.mahou_kaisu]" layer="3" page="fore" visible="true" x="0" y="310" name="mahou_anime"]
[free name="mahou_anime" layer=3 time=350]

[if exp="tf.mahou_kaisu>0"]
[eval exp="tf.mahou_kaisu = tf.mahou_kaisu-1"]
[jump target=*anime_return_o]
[endif]

;イレインまひ
[if exp="tf.irain_sp[1]!=1&&tf.guard_success!=1"]
[eval exp="tf.irain_sp[1]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
[eval exp="tf.irain_mahi_x=tf.irain_face_x+100"]
;ステータス表示を変更
[playse storage="battle_se/mahi_onjin.ogg"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_irain" x=&tf.irain_mahi_x y=&tf.irain_sp_y]
[name]はまひした！[r][a]
;麻痺解除確率
[eval exp="tf.kakuritu=2"]
;[live2d_motion name="irain" mtn="Battle_mahi" no=0]
;[live2d_mod name="irain" idle="Battle_mahi" no=0]

[endif]



;仲間どく
[eval exp="tf.friend_sp_y=tf.friend_face_y-20"]

;モンスターで特殊攻撃に入力があれば追加,仲間
;仲間まひ
[if exp="tf.friend_death!=1&&tf.friend_mahi!=1&&tf.guard_success!=1"]
[eval exp="tf.friend_mahi=1"]
[playse storage="battle_se/mahi_onjin.ogg"]
[emb exp="tf.friend_name"]はまひした！[r][a]
;麻痺解除確率
[eval exp="tf.kakuritu=2"]
[eval exp="tf.friend_mahi_x=tf.friend_face_x+100"]

;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_friend" x=&tf.friend_mahi_x y=&tf.friend_sp_y]
[endif]


[endmacro]




[return]







