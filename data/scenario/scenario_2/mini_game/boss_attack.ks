
;ウェルムバトル

[if exp="f.werumu_battle==1"]
;攻撃力ダウン、滅多斬り、通常攻撃のいずれ
[iscript]
tf.w_attack = Math.floor( Math.random() * 3) + 1
[endscript]
;[eval exp="tf.w_attack=1"]

[if exp="tf.w_attack==1&&tf.irain_sp[0]!=1||tf.w_attack==1&&tf.irain_sp[1]!=1"]
[attack_down]
[jump target=*boss_end]
[elsif exp="tf.w_attack===2"]
[jump target=*single_attack]
[elsif exp="tf.w_attack==3"]
[many_sword]
[jump target=*murti_attack]
[endif]

[endif]


;-------------------------
;ルシアバトル
[if exp="f.rusia_battle==1"]
;----------------------------------------
;---------------------------------------------------------------------------------
[free name="monster1" layer=3]
[image layer=3 storage="rusia_tatie/rusia_kamae.png" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]

;カーニバル初戦
[if exp="f.event_main_11==1"]
[rusia_mahou_honoo]
[attack_murti]
[jump storage="scenario_2/mini_game/monster_turn.ks" target=*return]
[endif]

;エルムナード戦
[if exp="f.event_main_11!=1"]

;----------------------------

[if exp="tf.kra_baria>0"]
[eval exp="tf.kra_baria=tf.kra_baria-1"]
[free name="kra_baria_b" layer=3]
[if exp="tf.kra_baria==0"]
[eval exp="tf.baria_sumi=0"]
[elsif exp="tf.kra_baria==1"]
[image layer=3 page=fore visible=true name="kra_baria_b" storage="battle_animation/kra_magic/baria_kra_6_1.png" x=&tf.baria_x y=&tf.baria_y time=800]
[elsif exp="tf.kra_baria==2"]
[image layer=3 page=fore visible=true name="kra_baria_b" storage="battle_animation/kra_magic/baria_kra_6_0.png" x=&tf.baria_x y=&tf.baria_y time=800]
[endif]
[endif]

;--------------------------------
[iscript]
tf.mahou_type = Math.floor( Math.random() *4) +1
[endscript]


[eval exp="tf.zokusei_type=[]"]
;テストコード
;[eval exp="tf.mahou_type=4"]

[if exp="tf.mahou_type==1"]
;加護用のフラグ雷2
;[eval exp="tf.zokusei_type[2]=1"]
[jump target=*magic_rusia]
[elsif exp="tf.mahou_type==2"]
;加護用のフラグ毒3
;[eval exp="tf.zokusei_type[3]=1"]
[jump target=*magic_rusia]
[elsif exp="tf.mahou_type==3"]
[jump target=*magic_rusia]
[elsif exp="tf.mahou_type==4"]
[endif]

;---------
[endif]

;----------------------------------------------------------------------------------------------------------------
[endif]
;--------------------------
*single_attack
;ここから
;ガードボタンの数決める
[guard_button_gacha]


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

[if exp="f.rusia_battle!=1&&f.werumu_battle!=1"]
[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[endif]

[igyou_attack_animation]
[monster_guard_anime_end]
[endif]
;--------


*guard

[if exp="f.rusia_battle==1"]
[rusia_sword]
[elsif exp="f.werumu_battle==1"]
[werumu_sword]
[endif]

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




*magic_rusia

;複数攻撃

;--------
[if exp="tf.mahou_type==3"]
[rusia_mahou_honoo]
[elsif exp="tf.mahou_type==2"]
[rusia_mahou_doku]
[elsif exp="tf.mahou_type==1"]
[rusia_mahou_ikaduti]
[endif]

;[igyou_magic]

*murti_attack
;---------

[eval exp="tf.target_moto_monster1=0"]
[wait time=500]

;--------

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

if(f.werumu_battle===1&&tf.metta===1){

if(tf.calc_damage==1){

tf.monster_damage*=4.8;

}else if(tf.calc_damage==2){

tf.monster_damage*=4.9;

}else if(tf.calc_damage==3){

tf.monster_damage*=5.0;

}else if(tf.calc_damage==1){

tf.monster_damage*=0.8;

}else if(tf.calc_damage==2){

tf.monster_damage*=0.9;

}else if(tf.calc_damage==3){

tf.monster_damage*=1.0;

}
}
tf.metta=0;

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

if(f.werumu_battle===1&&tf.metta===1){

if(tf.calc_damage==1){

tf.monster_damage*=4.8;

}else if(tf.calc_damage==2){

tf.monster_damage*=4.9;

}else if(tf.calc_damage==3){

tf.monster_damage*=5.0;

}

}else if(tf.calc_damage==1){

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
;毒魔法は大ダメージ
[if exp="tf.mahou_type==2"]
[eval exp="tf.monster_damage=f.irain_hp_m*0.9"]
[endif]

[iscript]
tf.monster_damage = Math.floor(tf.monster_damage)

[endscript]

;毒-------------
;[eval exp="tf.attack_doku=1"]
;[if exp="tf.attack_doku==1&&tf.irain_sp[0]!=1&&f.magic_kago[3]!=1&&tf.guard_success!=1"]
;[eval exp="tf.irain_sp[0]=1"]
;[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]

;ステータス表示を変更

;[playse storage="battle_se/poison_koukaonlabo.ogg"]
;[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
;[name]はどくをうけた！[r][a]
;毒解除確率
;[eval exp="tf.kakuritu=2"]
;[live2d_motion name="irain" mtn="Battle_poison" no=0]
;[live2d_mod name="irain" idle="Battle_poison" no=0]

;[endif]
;---------------

[if exp="tf.guard_zero==1||tf.monster_damage<1||tf.kra_baria>0"]
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

;-----------------




*boss_attack_friend

[rusia_sword]

*boss_end




