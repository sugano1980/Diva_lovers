*igyou_attack


[free name="monster1" layer=3]



[iscript]
tf.mahou_type = Math.floor( Math.random() *2) +1
[endscript]
;[eval exp="tf.mahou_type=2"]
[eval exp="tf.zokusei_type=[]"]

[if exp="tf.mahou_type==3"]
;加護用のフラグ雷2
;[eval exp="tf.zokusei_type[2]=1"]
;[rusia_mahou_ikaduti]
[elsif exp="tf.mahou_type==1"]
;加護用のフラグ毒3
;[eval exp="tf.zokusei_type[3]=1"]
[igyou_gra_change_mahou]
[jump target=*magic]
[elsif exp="tf.mahou_type==2"]
;触手攻撃
;[free name="monster_1" layer=2]
[igyou_gra_change_attack]
;[image layer=2 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]

;ここから
;ガードボタンの数決める
[if exp="f.monster_l_size==1"]
[guard_button_gacha]
[elsif exp="f.monster_l_size!=1"]
[eval exp="tf.guard_mode=1"]
[endif]

[click_ok]



;-------------------

[eval exp="tf.attack_who=2"]
[if exp="f.friend>=1&&tf.friend_death!=1"]
;---
[iscript]
tf.attack_random = Math.floor( Math.random() * tf.attack_who) + 1
[endscript]
[else]
;仲間いない場合イレインのフラグ
[eval exp="tf.attack_random=2"]
[endif]


;-----
[if exp="tf.guard_no!=1"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.x_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2 y=&tf.click_y]
[monster_guard_anime_start]
[clearfix name="monster1"]

[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[igyou_attack_animation]
[monster_guard_anime_end]
[endif]
;--------


*guard
[igyou_attack]



[eval exp="tf.monster_graphic_1=tf.monster_gra_no_1"]
[free name="monster1" layer=3]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]

[if exp="tf.attack_random==1"]
;仲間ダメージへ
[jump storage="scenario_2/mini_game/monster_turn.ks" target=*igyou_attack_end]
[else]
;イレインダメージへ
[jump storage="scenario_2/mini_game/monster_turn.ks" target=*igyou_attack_end_irain]
[endif]




;[rusia_mahou_honoo]
*magic

;複数攻撃
[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
;--------

[igyou_magic]

;---------
[monster_attack_return_igyou]

[if exp="f.friend>=1&&tf.friend_death!=1"]
;ステータスのモンスター攻撃用レイヤー番号を変更
[friend_hp_layer_change_return]
[eval exp="tf.layer_change_friend=1"]
;ダメージ計算
[eval exp="tf.monster_damage_f=tf.monster_attack/2-tf.friend_guard/4"]
[iscript]
tf.monster_damage_f = Math.floor(tf.monster_damage_f) 
[endscript]

[eval exp="tf.monster_damage_b=tf.monster_damage_f-3"]

;ダメージ計算
[iscript]
tf.monster_damage_f = Math.floor( Math.random() *tf.monster_damage_f) + tf.monster_damage_b
[endscript]

[if exp="tf.monster_damage_f<0"]
[eval exp="tf.monster_damage_f=0"]
[endif]
[if exp="tf.guard_zero==1||f.friend==3"]
[eval exp="tf.monster_damage_f=0"]
[endif]

;------
[endif]





[iscript]
tf.calc_damage =  Math.floor(Math.random()*3)+1

if(tf.calc_damage==1){

tf.monster_damage*=0.8;

}else if(tf.calc_damage==2){

tf.monster_damage*=0.9;

}else if(tf.calc_damage==3){

tf.monster_damage*=1.0;

}

tf.monster_damage = Math.floor(tf.monster_damage)
[endscript]



;---




[if exp="f.friend>=1&&tf.friend_death!=1"]
[friend_damage_swing]
[eval exp="tf.friend_hp=tf.friend_hp-tf.monster_damage_f"]
;消去後再表示でHP減少表現
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]

[eval exp="tf.monster_damage_x=tf.friend_status_x+60"]
[eval exp="tf.monster_damage_y=tf.friend_status_y+90"]
[eval exp="tf.monster_damage_x_kigou=tf.friend_status_x+43"]

;ダメージアニメ
[ptext layer=3 page=fore visible=true name="monster_damage" text="-" color="red" size=30 x=&tf.monster_damage_x_kigou y=&tf.monster_damage_y]
[ptext layer=3 page=fore visible=true name="monster_damage" text="&tf.monster_damage_f" color="red" size=30 x=&tf.monster_damage_x y=&tf.monster_damage_y]
[loadcss file="./data/scenario/mini_game/item_css/damage.css"]
[anim name="monster_damage" top="-=100" time=100]
[anim name="monster_damage" top="+=80" time=80]
[anim name="monster_damage" top="-=20" time=100]
[anim name="monster_damage" top="+=20" time=70]
[anim name="monster_damage" top="-=20" time=50]
[wait time=400]
[free layer=3 name="monster_damage"]


;[emb exp="tf.friend_name"]は[emb exp="tf.monster_damage"]のダメージを受けた！[r][a]

;HPが０の場合再表示はしない
[if exp="tf.friend_hp<1&&tf.friend_death!=1"]
*friend_death
[eval exp="tf.friend_death=1"]
[emb exp="tf.friend_name"]は倒れた！[a]
[eval exp="tf.friend_battle=0"]
[jump target=*friend_end]
[endif]

[friend_hp_kousin]
*friend_end

[endif]

;イレイン
;HPのレイヤー番号を変更
[irain_hp_layer_change_return]
[eval exp="tf.layer_change=1"]


[eval exp="tf.monster_damage=tf.monster_attack/2-tf.irain_guard/4"]

[iscript]
tf.calc_damage =  Math.floor(Math.random()*3)+1

if(tf.calc_damage==1){

tf.monster_damage*=0.8;

}else if(tf.calc_damage==2){

tf.monster_damage*=0.9;

}else if(tf.calc_damage==3){

tf.monster_damage*=1.0;

}

tf.monster_damage = Math.floor(tf.monster_damage)
[endscript]

;防御していた場合半減
[if exp="tf.irain_guard==1"]
[eval exp="tf.monster_damage=tf.monster_damage/4"]
[endif]

[iscript]
tf.monster_damage = Math.floor(tf.monster_damage)
[endscript]

[if exp="tf.guard_zero==1||tf.monster_damage<1"]
[eval exp="tf.monster_damage=0"]
[endif]

[irain_damage_swing]
[eval exp="f.irain_hp=f.irain_hp-tf.monster_damage"]
;消去後再表示でHP減少表現
[free layer=3 name="irain_hp"]



[irain_damage_anime]
;[name]は[emb exp="tf.monster_damage"]のダメージを受けた！[r][a]

;[name]HP0の場合
[if exp="f.irain_hp<1&&tf.irain_death!=1"]
[jump storage="scenario_2/mini_game/battle2.ks" target=*irain_death]
[endif]

[irain_hp_kousin]


*return
[eval exp="tf.monster_graphic_1=tf.monster_gra_no_1"]
[free name="monster1" layer=3]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]

[jump storage="scenario_2/mini_game/monster_turn.ks" target=*return]



