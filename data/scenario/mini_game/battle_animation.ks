
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
[w][w]


[endmacro]


;仲間が攻撃するときのステータス移動
[macro name="friend_attack_anime"]


[anim name="status_friend" top="-=20"]
[anim name="friend_name" top="-=20"]
[anim name="friend_face" top="-=20"]
[anim name="friend_hp" top="-=20"]
[anim name="friend_attack" top="-=20"]
[anim name="friend_guard" top="-=20"]


[if exp="tf.friend_doku==1"]
[anim name="doku_friend" top="-=20"]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" top="-=20"]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" top="-=20"]
[endif]


[wait time=1000]

[endmacro]


;仲間が攻撃するときのステータス移動戻る
[macro name="friend_attack_anime_end"]

[anim name="status_friend" top="+=20"]
[anim name="friend_name" top="+=20"]
[anim name="friend_face" top="+=20"]
[anim name="friend_hp" top="+=20"]
[anim name="friend_attack" top="+=20"]
[anim name="friend_guard" top="+=20"]

[if exp="tf.friend_doku==1"]
[anim name="doku_friend" top="+=20"]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" top="+=20"]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" top="+=20"]
[endif]
[wait time=1000]

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


[elsif exp="ttf.monster_hp<=tf.monster_hp_3_sample_10_8"]

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


[eval exp="tf.anime_irain_x=tf.x_2-55"]
[eval exp="tf.anime_irain_y=tf.y_3-55"]


[irain_sword_animation]

;必殺ふらぐかホークアイで必殺
;[if exp="tf.hawk_eye==1"]
;[critical_animation]
;[endif]

[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]





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
;必殺ふらぐかホークアイで必殺
;[if exp="tf.hawk_eye==1"]
;[critical_animation]
;[endif]


;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.damage=tf.damage+tf.irain_damage" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]


[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]



[elsif exp="tf.target_monster=='monster3'"]

[clearfix name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.x_4bunno3 y=&tf.y_3]

[eval exp="tf.image_x=tf.x_4bunno3"]
[eval exp="tf.image_y=tf.y_3"]


[hit_animation]


[eval exp="tf.anime_irain_x=tf.x_4bunno3-55"]
[eval exp="tf.anime_irain_y=tf.y_3-55"]


[irain_sword_animation]
;必殺ふらぐかホークアイで必殺
;[if exp="tf.hawk_eye==1"]
;[critical_animation]
;[endif]



[free layer=2 name="&tf.target_monster"]
[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]





;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.damage=tf.damage+tf.irain_damage" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


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

[eval exp="tf.anime_rans_x=tf.x_2-125"]
[eval exp="tf.anime_rans_y=tf.y_3-135"]


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

[eval exp="tf.anime_lion_x=tf.x_2-135"]
[eval exp="tf.anime_lion_y=tf.y_3-200"]


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

[eval exp="tf.anime_glif_x=tf.x_2-145"]
[eval exp="tf.anime_glif_y=tf.y_3-180"]


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
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
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






;ランス剣戟
[macro name="rans_sword_animation"]



;双剣のため繰り返し処理用のフラグ
[if exp="tf.anime_rans==1"]
[loadcss file="./data/scenario/mini_game/battle_anime_delete.css"]
[eval exp="tf.anime_rans=0"]
[endif]

[jump target=*anime_rans]

*anime_rans_2

[loadcss file="./data/scenario/mini_game/battle_anime_rans.css"]


*anime_rans





[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_0.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_1.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_2.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_3.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_4.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]

[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_5.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
[free layer=3 name="rans_anime" ]


[image layer=3 page=fore visible=true name="rans_anime" storage="battle_animation/rans/rans_sword_6.png" x=&tf.anime_rans_x y=&tf.anime_rans_y]
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

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]



;ライ剣戟
[macro name="lion_sword_animation"]

*anime_lion


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_0.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="anime" ]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_1.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_2.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_3.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_4.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_5.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_6.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_7.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


[image layer=3 page=fore visible=true name="lion_anime" storage="battle_animation/lion/lion_sword_8.png" x=&tf.anime_lion_x y=&tf.anime_lion_y]
[free layer=3 name="lion_anime" ]


;モンスターダメージアニメ
[monster_damage_anime]
;ダメージアニメ
[damage_animation_friend]


[free layer=2 name="&tf.target_monster"]

;モンスターを選択できる状態に
;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]


;クラ剣戟
[macro name="kra_sword_animation"]

*anime_kra


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_0.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="anime" time=5]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_1.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_2.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_3.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_4.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_5.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_6.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


;モンスター戻す
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic" x=&tf.image_x y=&tf.image_y]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_7.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_8.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_9.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]


[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_10.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" time=5]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime" storage="battle_animation/kra/kra_sword_11.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[free layer=3 name="kra_anime" ]





;モンスターダメージアニメ
[monster_damage_anime]


;ダメージアニメ
[damage_animation_friend]



[free layer=2 name="&tf.target_monster"]

;モンスターを選択できる状態に
;[if exp="tf.target_monster=='monster1'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

;[endif]


[endmacro]



;グリフ剣戟
[macro name="glif_sword_animation"]

*anime_glif


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_0.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="anime" time=5]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_1.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_2.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_3.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]
;ここでモンスターしろに
[free layer=2 name="&tf.target_monster"]
[image layer=2 page=fore visible=true name="&tf.target_monster" storage="&tf.monster_graphic_damage" x=&tf.image_x y=&tf.image_y]



[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_4.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]

[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_5.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


[image layer=3 page=fore visible=true name="glif_anime" storage="battle_animation/glif/glif_sword_6.png" x=&tf.anime_glif_x y=&tf.anime_glif_y]
[free layer=3 name="glif_anime" time=5]


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

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster2'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.image_x y=&tf.image_y]


;[elsif exp="tf.target_monster=='monster3'"]

;[button graphic="&tf.monster_graphic" name="&tf.target_monster" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.image_x y=&tf.image_y]

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
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

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

[damage_animation_murti]


;ここでモンスターをボタン状態に戻す
;全体なので場合分け

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
[endif]


[endmacro]


;ランス技アニメ

[macro name="rans_skill_animation"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]


[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_0.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_1.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_2.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_3.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_4.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_5.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_6.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_7.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_8.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_9.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_10.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_11.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_12.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_13.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_14.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_15.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_16.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_17.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_18.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_19.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_20.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]

[image layer=3 page=fore visible=true name="anime_rans_skill" storage="battle_animation/rans/rans_skill_21.png" x=0 y=0 time=15]
[free layer=3 name="anime_rans_skill" time=25]





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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
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
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]

[endmacro]


;ライ技アニメ


[macro name="lion_skill_animation"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_0.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_1.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_2.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_3.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_4.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_5.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_6.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_8.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_9.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_10.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_11.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_12.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_13.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_14.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_16.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_17.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_18.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_19.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_20.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_21.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]

[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_22.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_23.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]


[image layer=3 page=fore visible=true name="anime_lion_skill" storage="battle_animation/lion/lion_skill_24.png" x=0 y=0 time=7]
[free layer=3 name="anime_lion_skill" time=10]







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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





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
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
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
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]


;クラ技アニメ３
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
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]

[bg storage="black.jpg" time=5]

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


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_11.png" x=0 y=0 time=25]
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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]


;グリフ技アニメ
[macro name="glif_skill_animation"]

;[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;[clearfix name="monster1"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[clearfix name="monster2"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[clearfix name="monster3"]
;[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

;[endif]


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
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
;[endif]

;[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
;[free layer=3 name="monster2"]
;[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
;[endif]


;[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
;[free layer=3 name="monster3"]
;[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
;[endif]





[endmacro]





;クリティカルアニメ

[macro name="critical_animation"]

[if exp="tf.target_monster=='monster1'"]

[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.x_2 y=&tf.y_3]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=1400]
[free layer=3 name="critical"]



[elsif exp="tf.target_monster=='monster2'"]

[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.x_4 y=&tf.y_3]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=1400]
[free layer=3 name="critical"]


[elsif exp="tf.target_monster=='monster3'"]

[image layer=3 page=fore visible=true storage="critical.png" name="critical" x=&tf.x_4bunno3 y=&tf.y_3]
[anim name="critical" top="-=100" time=100]
[anim name="critical" top="+=80" time=80]
[anim name="critical" top="-=20" time=100]
[anim name="critical" top="+=20" time=70]
[anim name="critical" top="-=20" time=50]
[anim name="critical" opacity=0 time=1000]
[wait time=1400]
[free layer=3 name="critical"]

[else]

[endif]





[endmacro]






;ヒットアニメ
[macro name="hit_animation"]


[wait time=400]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]
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


[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
;真ん中
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]
[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x y=&tf.hit_y]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x y=&tf.hit_y]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
[ptext layer=3 page=fore visible=true name="hit" text="&tf.hit" size=30 x=&tf.hit_x_1 y=&tf.hit_y_1]
[image layer=3 page=fore visible=true name="hit" storage="battle_animation/hit.png" x=&tf.hit_x_1 y=&tf.hit_y_1]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]
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
[eval exp="tf.damage=tf.damage*2"]
;[endif]
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
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

[eval exp="tf.damage_x=tf.image_x+50"]
[eval exp="tf.damage_y=tf.image_y+90"]
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

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
;真ん中
[eval exp="tf.damage_x=tf.hit_x+30"]
[eval exp="tf.damage_y=tf.hit_y+10"]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x y=&tf.damage_y]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[eval exp="tf.damage_x_1=tf.hit_x_1+30"]
[eval exp="tf.damage_y_1=tf.hit_y_1+10"]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x_1 y=&tf.damage_y_1]

;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[eval exp="tf.damage_x_2=tf.hit_x_2+30"]
[eval exp="tf.damage_y_2=tf.hit_y_2+10"]
[ptext layer=3 page=fore visible=true name="damage" text="&tf.damage" size=30 x=&tf.damage_x_2 y=&tf.damage_y_2]

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

[elsif exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]


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

;---------------------------------------------
[elsif exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]



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





[return]







