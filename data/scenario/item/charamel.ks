*item


;アイテム説明用のマクロ
[item_explain]


[if exp="tf.item_explain==2"]
[clearfix_item]
[eval exp="f.battle_item_1_stock=f.battle_item_1_stock-1"]


;[live2d_motion name="irain" mtn="Battle_item" no=0]



;アイテムスペース用のそれぞれのフラグをゼロに
[eval exp="tf.explain_no_1=0"]
[eval exp="tf.explain_no_2=0"]
[eval exp="tf.explain_no_3=0"]
[eval exp="tf.explain_no_4=0"]
[eval exp="tf.explain_no_5=0"]
[eval exp="tf.explain_no_6=0"]




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


[eval exp="tf.item_hyouji=0"]
[eval exp="tf.item_explain=0"]
[clearstack]



[eval exp="tf.status_height=175"]
[eval exp="tf.status_width=306"]


[eval exp="tf.anime_item_x=tf.irain_face_x"]
[eval exp="tf.anime_item_y=tf.irain_face_y"]

;回復アニメーション

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
[eval exp="tf.anime_charamel_friend_x=tf.friend_face_x]
[eval exp="tf.anime_charamel_friend_y=tf.friend_face_y]
[else]
[jump target=*no_friend]
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


*no_friend
[jump storage="mini_game/battle2.ks" target=*irain_mahi]
[endif]

[return]

