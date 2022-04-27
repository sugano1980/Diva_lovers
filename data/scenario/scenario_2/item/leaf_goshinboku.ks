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
[clearfix_item]
[eval exp="f.battle_item_stock[3]=f.battle_item_stock[3]-1"]
;毒解除
[eval exp="tf.irain_sp[0]=0"]
[free layer=3 name="doku"]


;まひ解除
[eval exp="tf.irain_sp[1]=0"]
[free layer=3 name="mahi"]


;ねむり解除
[eval exp="tf.irain_sp[2]=0"]
[free layer=3 name="nemuri"]

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


[eval exp="f.irain_hp = f.irain_hp_m"]

[eval exp="tf.friend_hp = tf.friend_hp_m"]
[free layer=3 name="irain_hp"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]

;仲間の戦闘不能解除
[eval exp="tf.friend_death=0"]
[eval exp="tf.friend_battle=1"]


[eval exp="f.irain_hp = f.irain_hp_m"]
[free layer=3 name="irain_hp"]
[irain_hp_kousin]

[if exp="f.friend>=1"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]

[eval exp="tf.anime_item_x=tf.irain_face_x+7"]
[eval exp="tf.anime_item_y=tf.irain_face_y"]



;回復アニメーション


[playse storage="battle_se/leaf_goshinboku_koukaonlabo.ogg"]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]



[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]



[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_9.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

;仲間の場合

[if exp="f.friend>=1"]

[eval exp="tf.anime_leaf_goshinboku_friend_x=tf.friend_face_x+6]
[eval exp="tf.anime_leaf_goshinboku_friend_y=tf.friend_face_y]


[if exp="tf.friend_death!=1&&tf.friend_battle==1"]

[playse storage="battle_se/leaf_goshinboku_koukaonlabo.ogg"]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_0.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_1.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_2.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_3.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]



[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_4.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_5.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_6.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]



[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_7.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]


[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_8.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[image layer=3 page=fore visible=true name="anime_leaf_goshinboku" storage="battle_animation/leaf_goshinboku/leaf_goshinboku_9.png" x=&tf.anime_leaf_goshinboku_friend_x y=&tf.anime_leaf_goshinboku_friend_y]
[free layer=3 name="anime_leaf_goshinboku" time=100]

[endif]

[endif]


[eval exp="tf.item_explain=0"]
[eval exp="tf.item_hyouji=0"]
[clearstack]
[jump storage="scenario_2/mini_game/battle2.ks" target=*irain_mahi]

[endif]


[return]