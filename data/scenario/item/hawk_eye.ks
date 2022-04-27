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

[eval exp="tf.hawk_eye=1"]
[clearfix_item]
[eval exp="f.battle_item_6_stock=f.battle_item_6_stock-1"]



;回復アニメーション


[playse storage="battle_se/hawk_eye_koukaonlabo.ogg"]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]



[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]



[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_9.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_hawk_eye" time=50]

;仲間の場合

[eval exp="tf.anime_hawk_eye_friend_x=tf.friend_face_x]
[eval exp="tf.anime_hawk_eye_friend_y=tf.friend_face_y]


[if exp="tf.friend_death!=1&&tf.friend_battle==1&&f.friend>=1"]

[playse storage="battle_se/hawk_eye_koukaonlabo.ogg"]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_0.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_1.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_2.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_3.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]



[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_4.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_5.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_6.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]



[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_7.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]


[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_8.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]

[image layer=3 page=fore visible=true name="anime_hawk_eye" storage="battle_animation/hawk_eye/hawk_eye_9.png" x=&tf.anime_hawk_eye_friend_x y=&tf.anime_hawk_eye_friend_y]
[free layer=3 name="anime_hawk_eye" time=50]



[endif]



[eval exp="tf.item_explain=0"]
[eval exp="tf.item_hyouji=0"]
[clearstack]
[jump storage="mini_game/battle2.ks" target=*irain_mahi]

[endif]


[return]