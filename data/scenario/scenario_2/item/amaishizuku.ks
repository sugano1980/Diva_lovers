*item


[item_explain]


[if exp="tf.item_explain==2"]

;アイテムスペース用のそれぞれのフラグをゼロに
[eval exp="tf.explain_no_1=0"]
[eval exp="tf.explain_no_2=0"]
[eval exp="tf.explain_no_3=0"]
[eval exp="tf.explain_no_4=0"]
[eval exp="tf.explain_no_5=0"]
[eval exp="tf.explain_no_6=0"]

;毒解除

[if exp="tf.irain_sp[0]==1"]
[eval exp="tf.irain_sp[0]=0"]
[free layer=3 name="doku"]
;[live2d_motion name="irain" mtn="Battle_kamae" no=0]
;[live2d_mod name="irain" idle="Battle_kamae" no=0]

[endif]


;まひ解除
[if exp="tf.irain_sp[1]==1"]
[eval exp="tf.irain_sp[1]=0"]
[free layer=3 name="mahi"]
;[live2d_motion name="irain" mtn="Battle_kamae" no=0]
;[live2d_mod name="irain" idle="Battle_kamae" no=0]

[endif]


;ねむり解除
[if exp="tf.irain_sp[2]==1"]
[eval exp="tf.irain_sp[2]=0"]
[free layer=3 name="nemuri"]
;[live2d_motion name="irain" mtn="Battle_kamae" no=0]
;[live2d_mod name="irain" idle="Battle_kamae" no=0]

[endif]


;味方の特殊状態解除
;毒解除
[eval exp="tf.friend_doku=0"]
[free layer=3 name="doku_friend"]


;まひ解除
[eval exp="tf.friend_mahi=0"]
[free layer=3 name="mahi_friend"]


;ねむり解除
[eval exp="tf.friend_nemuri=0"]
[free layer=3 name="nemuri_friend"]

[clearfix_item]
[eval exp="f.battle_item_stock[2]=f.battle_item_stock[2]-1"]

[eval exp="tf.status_height=175"]
[eval exp="tf.status_width=306"]


[eval exp="tf.anime_item_x=tf.status_x+tf.status_width/2"]
[eval exp="tf.anime_item_y=tf.status_y"]


;回復アニメーション

[playse storage="battle_se/amaishizuku_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_amaishizuku" time=100]



;仲間の場合

[eval exp="tf.anime_amaishizuku_friend_x=tf.friend_face_x]
[eval exp="tf.anime_amaishizuku_friend_y=tf.friend_face_y]


[if exp="tf.friend_death!=1&&tf.friend_battle==1"]

[playse storage="battle_se/amaishizuku_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_0.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_1.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_2.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_3.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_4.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_5.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_6.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]



[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_7.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]


[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_8.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]

[image layer=3 page=fore visible=true name="anime_amaishizuku" storage="battle_animation/amaishizuku/amaishizuku_9.png" x=&tf.anime_amaishizuku_friend_x y=&tf.anime_amaishizuku_friend_y]
[free layer=3 name="anime_amaishizuku" time=50]

[endif]



[eval exp="tf.item_explain=0"]
[eval exp="tf.item_hyouji=0"]

[clearstack]


[if exp="f.werumu_battle==1"]
[eval exp="f.irain_hp = f.irain_hp_m"]
[eval exp="f.irain_tec = f.irain_tec_c"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[irain_hp_kousin]

[if exp="f.friend>=1&&tf.friend_death!=1"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[eval exp="tf.friend_attack = tf.friend_attack_c"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]
[endif]
[jump storage="scenario_2/mini_game/battle2.ks" target=*irain_mahi]




[endif]

[return]