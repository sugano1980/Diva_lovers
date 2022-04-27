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
[eval exp="f.battle_item_4_stock=f.battle_item_4_stock-1"]


[eval exp="tf.skill_only=1"]


;回復アニメーション


[playse storage="battle_se/skill_only_koukaonlabo.ogg"]
[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_0.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_1.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_2.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_3.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]



[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_4.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_5.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_6.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]



[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_7.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_8.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_9.png" x=&tf.anime_item_x y=&tf.anime_item_y]
[free layer=3 name="anime_skill_only" time=50]

;仲間の場合

[eval exp="tf.anime_skill_only_friend_x=tf.friend_face_x]
[eval exp="tf.anime_skill_only_friend_y=tf.friend_face_y]


[if exp="tf.friend_death!=1&&tf.friend_battle==1&&f.friend>=1"]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_0.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_1.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_2.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_3.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]



[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_4.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_5.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_6.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]



[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_7.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]


[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_8.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]

[image layer=3 page=fore visible=true name="anime_skill_only" storage="battle_animation/skill_only/skill_only_9.png" x=&tf.anime_skill_only_friend_x y=&tf.anime_skill_only_friend_y]
[free layer=3 name="anime_skill_only" time=50]

[endif]




[eval exp="tf.item_explain=0"]
[eval exp="tf.item_hyouji=0"]
[clearstack]
[jump storage="mini_game/battle2.ks" target=*irain_mahi]




[endif]


[return]