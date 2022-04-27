


;モンスターターン

[macro name="monster_turn"]



*monster_turn

[eval exp="tf.except_number=tf.monster_number"]


*attack_again
[if exp="tf.except_number>=1"]



[if exp="tf.monster_hp_1>=1&&tf.mahi_1!=1&&tf.monster_attack_1!=1"]
[eval exp="tf.monster_attack_1=1"]
[eval exp="tf.except_number=tf.except_number-1"]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.mahi_2!=1&&tf.monster_attack_2!=1"]
[eval exp="tf.monster_attack_2=1"]
[eval exp="tf.except_number=tf.except_number-1"]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.mahi_3!=1&&tf.monster_attack_3!=1"]
[eval exp="tf.monster_attack_3=1"]
[eval exp="tf.except_number=tf.except_number-1"]
[endif]



[else]
[jump storage="mini_game/battle2.ks" target=*turn_end1]
[endif]



[if exp="tf.monster_attack_1==1"]
[monster1_irekae]
[call storage="mini_game/monster_turn.ks"]
[endif]


[if exp="tf.monster_attack_2==1"]
[monster2_irekae]
[call storage="mini_game/monster_turn.ks"]
[endif]


[if exp="tf.monster_attack_3==1"]
[monster3_irekae]
[call storage="mini_game/monster_turn.ks"]
[endif]


;攻撃フラグをオフに
[if exp="tf.monster_attack_1==1"]
[eval exp="tf.monster_attack_1=0"]
[endif]

[if exp="tf.monster_attack_2==1"]
[eval exp="tf.monster_attack_2=0"]
[endif]

[if exp="tf.monster_attack_3==1"]
[eval exp="tf.monster_attack_3=0"]
[endif]

;ついでに行カウントフラグもオフ
[eval exp="tf.line=0"]


[endmacro]


;モンスター１の入れ替え
[macro name="monster1_irekae"]

[if exp="tf.battle_murtiple!=1"]
[eval exp="tf.target_monster='monster1'"]
[eval exp="tf.target_monster_hp='monster_hp_1'"]
[eval exp="tf.monster_hp=tf.monster_hp_1"]
[eval exp="tf.monster_name=tf.monster_name_1"]
[eval exp="tf.monster_graphic=tf.monster_graphic_1"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_1_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_1"]
[eval exp="tf.monster_attack=tf.monster_damage_1"]
[eval exp="tf.sp=tf.sp_1"]
[eval exp="tf.sp_doku=tf.sp_doku_1"]
[eval exp="tf.sp_mahi=tf.sp_mahi_1"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_1"]
[eval exp="tf.nigeru=tf.nigeru_1"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.monster_guard=tf.monster_guard_1"]
[eval exp="tf.exp=tf.exp_1]
[eval exp="tf.attack=tf.attack_1"]
[eval exp="tf.attack_doku=tf.attack_doku_1"]
[eval exp="tf.attack_mahi=tf.attack_mahi_1"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_1"]
[eval exp="tf.monster_death=tf.monster_1_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_1"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_1"]
[endif]

[endmacro]

;モンスター２の入れ替え
[macro name="monster2_irekae"]

[if exp="tf.battle_murtiple!=1"]
[eval exp="tf.target_monster='monster2'"]
[eval exp="tf.target_monster_hp='monster_hp_2'"]
[eval exp="tf.monster_hp=tf.monster_hp_2"]
[eval exp="tf.monster_name=tf.monster_name_2"]
[eval exp="tf.monster_graphic=tf.monster_graphic_2"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_2_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_2"]
[eval exp="tf.monster_attack=tf.monster_damage_2"]
[eval exp="tf.sp=tf.sp_2"]
[eval exp="tf.sp_doku=tf.sp_doku_2"]
[eval exp="tf.sp_mahi=tf.sp_mahi_2"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_2"]
[eval exp="tf.nigeru=tf.nigeru_2"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.monster_guard=tf.monster_guard_2"]
[eval exp="tf.exp=tf.exp_2]
[eval exp="tf.attack=tf.attack_2"]
[eval exp="tf.attack_doku=tf.attack_doku_2"]
[eval exp="tf.attack_mahi=tf.attack_mahi_2"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_2"]
[eval exp="tf.monster_death=tf.monster_2_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_2"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_2"]
[endif]

[endmacro]


;モンスター３の入れ替え

[macro name="monster3_irekae"]

[if exp="tf.battle_murtiple!=1"]
[eval exp="tf.target_monster='monster3'"]
[eval exp="tf.target_monster_hp='monster_hp_3'"]
[eval exp="tf.monster_hp=tf.monster_hp_3"]
[eval exp="tf.monster_name=tf.monster_name_3"]
[eval exp="tf.monster_graphic=tf.monster_graphic_3"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_3_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_3"]
[eval exp="tf.monster_attack=tf.monster_damage_3"]
[eval exp="tf.sp=tf.sp_3"]
[eval exp="tf.sp_doku=tf.sp_doku_3"]
[eval exp="tf.sp_mahi=tf.sp_mahi_3"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_3"]
[eval exp="tf.nigeru=tf.nigeru_3"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.monster_guard=tf.monster_guard_3"]
[eval exp="tf.exp=tf.exp_3]
[eval exp="tf.attack=tf.attack_3"]
[eval exp="tf.attack_doku=tf.attack_doku_3"]
[eval exp="tf.attack_mahi=tf.attack_mahi_3"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_3"]
[eval exp="tf.monster_death=tf.monster_3_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_3"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_3"]
[endif]

[endmacro]



;ターゲットを決めない攻撃、状態変化によるダメージなどの場合、ターゲット変数ではなく、元データに直接代入するため、元データからターゲット変数へ更新

 [macro name="input_monster_data"]

[if exp="tf.target_monster=='monster1'&&tf.monster_1_death!=1"]
[monster1_irekae]
[elsif exp="tf.target_monster=='monster2'&&tf.monster_2_death!=1"]
[monster2_irekae]
[elsif exp="tf.target_monster=='monster3'&&tf.monster_3_death!=1"]
[monster3_irekae]
[endif]

[endmacro]



;モンスター状態更新
[macro name="monster_current"]
;モンスターのhpダメージ,状態更新、もとのデータに戻してやる、全体攻撃の場合はなし


 
 
 
[if exp="tf.battle_murtiple!=1"]


[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.monster_hp_1=tf.monster_hp"]
[eval exp="tf.sp_mahi_1=tf.sp_mahi"]
[eval exp="tf.sp_doku_1=tf.sp_doku"]


[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.monster_hp_2=tf.monster_hp"]
[eval exp="tf.sp_mahi_2=tf.sp_mahi"]
[eval exp="tf.sp_doku_2=tf.sp_doku"]


[elsif exp="tf.target_monster=='monster3'"]
[eval exp="tf.monster_hp_3=tf.monster_hp"]
[eval exp="tf.sp_mahi_3=tf.sp_mahi"]
[eval exp="tf.sp_doku_3=tf.sp_doku"]

[endif]


[endif]



[endmacro]




;---------
;モンスターHP0処理

[macro name="monster_death"]

;モンスターいなくなる、逃亡の場合はexpなし

[monster_current]

;複数やられた場合の処理
;１、２、３の処理
[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_2<1&&tf.monster_2_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]

;モンスター数を減らす
[eval exp="tf.monster_number=tf.monster_number-3"]

;モンスター１の処理
[free layer=3 name="monster_hp_1" time=50]
;毒表示消去
[if exp="tf.sp_doku_1==1]
[free layer=3 name="doku_monster_1"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_1==1"]
[free layer=3 name="mahi_monster_1"]
[endif]

;モンスター２の処理
[free layer=3 name="monster_hp_2" time=50]
;毒表示消去
[if exp="tf.sp_doku_2==1]
[free layer=3 name="doku_monster_2"]
[endif]
;まひ表示消去
[if exp="tf.sp_mahi_2==1"]
[free layer=3 name="mahi_monster_2"]
[endif]
;モンスター３の処理
[free layer=3 name="monster_hp_3" time=50]
;毒表示消去
[if exp="tf.sp_doku_3==1]
[free layer=3 name="doku_monster_3"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_3==1"]
[free layer=3 name="mahi_monster_3"]
[endif]


[anim name="monster1" opacity=0 time=800]
[anim name="monster2" opacity=0 time=800]
[anim name="monster3" opacity=0 time=800]
[wait time=2400]
[clearfix name="monster1"]
[clearfix name="monster2"]
[clearfix name="monster3"]


[if exp="tf.nigeru_action==1]
[playse storage="battle_se/monster_nigeru.ogg"]
[emb exp="tf.monster_name_1"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]
[endif]

[eval exp="tf.sp_doku_1=0"]
[eval exp="tf.sp_mahi_1=0"]

[eval exp="tf.monster_1_death=1"]


[eval exp="tf.sp_doku_2=0"]
[eval exp="tf.sp_mahi_2=0"]

[if exp="tf.nigeru_action==1]
[playse storage="battle_se/monster_nigeru.ogg"]

[emb exp="tf.monster_name_2"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]

[endif]

[eval exp="tf.monster_2_death=1"]


[eval exp="tf.sp_doku_3=0"]
[eval exp="tf.sp_mahi_3=0"]

[if exp="tf.nigeru_action==1]
[playse storage="battle_se/monster_nigeru.ogg"]

[emb exp="tf.monster_name_3"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]

[endif]

[eval exp="tf.monster_3_death=1"]


;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]


;１、２の場合
[elsif exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_2<1&&tf.monster_2_death!=1"]

;モンスター数を減らす
[eval exp="tf.monster_number=tf.monster_number-2"]

;それぞれのモンスターの処理
;モンスター１の処理
[free layer=3 name="monster_hp_1" time=50]
;毒表示消去
[if exp="tf.sp_doku_1==1]
[free layer=3 name="doku_monster_1"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_1==1"]
[free layer=3 name="mahi_monster_1"]
[endif]

;モンスター２の処理
[free layer=3 name="monster_hp_2" time=50]
;毒表示消去
[if exp="tf.sp_doku_2==1]
[free layer=3 name="doku_monster_2"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_2==1"]
[free layer=3 name="mahi_monster_2"]
[endif]


[anim name="monster1" opacity=0 time=800]
[anim name="monster2" opacity=0 time=800]
[wait time=1600]
[clearfix name="monster1"]
[clearfix name="monster2"]



[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_1"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_1=0"]
[eval exp="tf.sp_mahi_1=0"]

[eval exp="tf.monster_1_death=1"]

[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_2"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_2=0"]
[eval exp="tf.sp_mahi_2=0"]

[eval exp="tf.monster_2_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]



;２、３の場合
[elsif exp="tf.monster_hp_2<1&&tf.monster_2_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]

;モンスター数を減らす
[eval exp="tf.monster_number=tf.monster_number-2"]

;それぞれのモンスターの処理

;モンスター２の処理
[free layer=3 name="monster_hp_2" time=50]
;毒表示消去
[if exp="tf.sp_doku_2==1]
[free layer=3 name="doku_monster_2"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_2==1"]
[free layer=3 name="mahi_monster_2"]
[endif]

;モンスター３の処理
[free layer=3 name="monster_hp_3" time=50]
;毒表示消去
[if exp="tf.sp_doku_3==1]
[free layer=3 name="doku_monster_3"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_3==1"]
[free layer=3 name="mahi_monster_3"]
[endif]


[anim name="monster2" opacity=0 time=800]
[anim name="monster3" opacity=0 time=500]
[wait time=1300]
[clearfix name="monster2"]
[clearfix name="monster3"]


[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_2"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_2=0"]
[eval exp="tf.sp_mahi_2=0"]


[eval exp="tf.monster_2_death=1"]


[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_3"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_3=0"]
[eval exp="tf.sp_mahi_3=0"]


[eval exp="tf.monster_3_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]

;１、３の場合
[elsif exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]

;モンスター数を減らす
[eval exp="tf.monster_number=tf.monster_number-2"]

;それぞれのモンスターの処理

;モンスター１の処理
[free layer=3 name="monster_hp_1" time=50]
;毒表示消去
[if exp="tf.sp_doku_1==1]
[free layer=3 name="doku_monster_1"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_1==1"]
[free layer=3 name="mahi_monster_1"]
[endif]

;モンスター３の処理
[free layer=3 name="monster_hp_3" time=50]
;毒表示消去
[if exp="tf.sp_doku_3==1]
[free layer=3 name="doku_monster_3"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_3==1"]
[free layer=3 name="mahi_monster_3"]
[endif]

[anim name="monster1" opacity=0 time=800]
[anim name="monster3" opacity=0 time=800]
[wait time=1600]
[clearfix name="monster1"]
[clearfix name="monster3"]


[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_1"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_1=0"]
[eval exp="tf.sp_mahi_1=0"]

[eval exp="tf.monster_1_death=1"]


[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_3"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_3=0"]
[eval exp="tf.sp_mahi_3=0"]


[eval exp="tf.monster_3_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]

[endif]

;ここからは単数の処理
;------------------------------------------------------------------

[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1"]

[eval exp="tf.monster_number=tf.monster_number-1"]

;毒表示消去
[if exp="tf.sp_doku_1==1]
[free layer=3 name="doku_monster_1"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_1==1"]
[free layer=3 name="mahi_monster_1"]
[endif]

[if exp="tf.nigeru_action==1]
[eval exp="tf.mahi_y=tf.y_3_90-110"]
[image layer=3 page=fore visible="true" storage="nigeru.gif" name="nigeru_monster_1" x=&tf.x_2_70 y=&tf.mahi_y]
[endif]

[anim name="monster1" opacity=0 time=800]
[clearfix name="monster1"]
[free layer=3 name="monster_hp_1" time=50]
[free layer=3 name="nigeru_monster_1" time=2000]
[wait time=800]

[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_1"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]

[eval exp="tf.sp_doku_1=0"]
[eval exp="tf.sp_mahi_1=0"]

[eval exp="tf.monster_1_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]

[endif]




;-----------------------------------------------
[if exp="tf.monster_hp_2<1&&tf.monster_2_death!=1"]


[eval exp="tf.monster_number=tf.monster_number-1"]

[free layer=3 name="monster_hp_2" time=50]
;毒表示消去
[if exp="tf.sp_doku_2==1]
[free layer=3 name="doku_monster_2"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_2==1"]
[free layer=3 name="mahi_monster_2"]
[endif]

[if exp="tf.nigeru_action==1]
[eval exp="tf.mahi_y=tf.y_3_90-110"]
[image layer=3 page=fore visible="true" storage="nigeru.gif" name="nigeru_monster_2" x=&tf.x_4_70 y=&tf.mahi_y]
[endif]

[anim name="monster2" opacity=0 time=800]
[wait time=800]
[clearfix name="monster2"]
[free layer=3 name="nigeru_monster_2" time=2000]
[eval exp="tf.sp_doku_2=0"]
[eval exp="tf.sp_mahi_2=0"]

[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_2"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]


[eval exp="tf.monster_2_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]
[endif]
;---------------------------------------------------
[if exp="tf.monster_hp_3<1&&tf.monster_3_death!=1"]


[eval exp="tf.monster_number=tf.monster_number-1"]

[free layer=3 name="monster_hp_3" time=50]
;毒表示消去
[if exp="tf.sp_doku_3==1]
[free layer=3 name="doku_monster_3"]
[endif]

;まひ表示消去
[if exp="tf.sp_mahi_3==1"]
[free layer=3 name="mahi_monster_3"]
[endif]

[if exp="tf.nigeru_action==1]
[eval exp="tf.mahi_y=tf.y_3_90-110"]
[image layer=3 page=fore visible="true" storage="nigeru.gif" name="nigeru_monster_3" x=&tf.x_4bunno3_70 y=&tf.mahi_y]
[endif]


[anim name="monster3" opacity=0 time=500]
[wait time=500]
[clearfix name="monster3"]
[free layer=3 name="nigeru_monster_3" time=2000]
[eval exp="tf.sp_doku_3=0"]
[eval exp="tf.sp_mahi_3=0"]

[if exp="tf.nigeru_action==1]
[emb exp="tf.monster_name_3"]は逃げ出した！[a]
[else]
[playse storage="battle_se/monster_taosu.ogg"]


[endif]


[eval exp="tf.monster_3_death=1"]

;0のモンスターをフラグづけ
[monster_death_flag]
[jump target=*end]
[endif]



*end



;いなくなったモンスターを存在するモンスターと入れ替え
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

[eval exp="tf.target_monster='monster1'"]
[eval exp="tf.target_monster_hp='monster_hp_1'"]
[eval exp="tf.monster_hp=tf.monster_hp_1"]
[eval exp="tf.monster_name=tf.monster_name_1"]
[eval exp="tf.monster_graphic=tf.monster_graphic_1"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_1_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_1"]
[eval exp="tf.sp=tf.sp_1"]
[eval exp="tf.sp_doku=tf.sp_doku_1"]
[eval exp="tf.sp_mahi=tf.sp_mahi_1"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_1"]
[eval exp="tf.nigeru=tf.nigeru_1"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.exp=tf.exp_1]
[eval exp="tf.attack=tf.attack_1"]
[eval exp="tf.attack_doku=tf.attack_doku_1"]
[eval exp="tf.attack_mahi=tf.attack_mahi_1"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_1"]
[eval exp="tf.monster_death=tf.monster_1_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_1"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_1"]

[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]

[eval exp="tf.target_monster='monster2'"]
[eval exp="tf.target_monster_hp='monster_hp_2'"]
[eval exp="tf.monster_hp=tf.monster_hp_2"]
[eval exp="tf.monster_name=tf.monster_name_2"]
[eval exp="tf.monster_graphic=tf.monster_graphic_2"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_2_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_2"]
[eval exp="tf.sp=tf.sp_2"]
[eval exp="tf.sp_doku=tf.sp_doku_2"]
[eval exp="tf.sp_mahi=tf.sp_mahi_2"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_2"]
[eval exp="tf.nigeru=tf.nigeru_2"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.exp=tf.exp_2]
[eval exp="tf.attack=tf.attack_2"]
[eval exp="tf.attack_doku=tf.attack_doku_2"]
[eval exp="tf.attack_mahi=tf.attack_mahi_2"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_2"]
[eval exp="tf.monster_death=tf.monster_2_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_2"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_2"]

[endif]

[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]

[eval exp="tf.target_monster='monster3'"]
[eval exp="tf.target_monster_hp='monster_hp_3'"]
[eval exp="tf.monster_hp=tf.monster_hp_3"]
[eval exp="tf.monster_name=tf.monster_name_3"]
[eval exp="tf.monster_graphic=tf.monster_graphic_3"]
[eval exp="tf.monster_graphic_damage=tf.monster_graphic_3_damage"]
[eval exp="tf.monster_damage=tf.monster_damage_3"]
[eval exp="tf.sp=tf.sp_3"]
[eval exp="tf.sp_doku=tf.sp_doku_3"]
[eval exp="tf.sp_mahi=tf.sp_mahi_3"]
[eval exp="tf.sp_nemuri_1=0"]
[eval exp="tf.sp_nemuri=tf.sp_nemuri_3"]
[eval exp="tf.nigeru=tf.nigeru_3"]
[eval exp="tf.damage_monster=tf.damage"]
[eval exp="tf.exp=tf.exp_3]
[eval exp="tf.attack=tf.attack_3"]
[eval exp="tf.attack_doku=tf.attack_doku_3"]
[eval exp="tf.attack_mahi=tf.attack_mahi_3"]
[eval exp="tf.attack_nemuri=tf.attack_nemuri_3"]
[eval exp="tf.monster_death=tf.monster_3_death"]
[eval exp="tf.sp_doku_monster=tf.sp_doku_monster_3"]
[eval exp="tf.sp_mahi_monster=tf.sp_mahi_monster_3"]

[endif]

;逃亡の場合とわけて経験値獲得
[if exp="tf.nigeru_action!=1"]
;経験値獲得
;経験値データとアニメーションを呼びにいく

[call storage="mini_game/exp.ks" target=*exp]
[else]
[eval exp="tf.nigeru_action=0"]
[endif]

;モンスター全滅のチェック
[if exp="tf.monster_number==0&&tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
[jump storage="mini_game/battle2.ks" target=*zenmetu]
[endif]


[endmacro]








;モンスター死亡フラグ
[macro name="monster_death_flag"]

[if exp="tf.monster_hp_1<1&&tf.monster_1_death==1"]

[iscript]
tf.target_monster='';
tf.target_monster_hp='';
tf.monster_damage_1='';
tf.sp_1='';
tf.doku_1='';
tf.mahi_1='';
tf.nemuri='';
tf.nemuri_1='';
tf.nigeru_1='';
tf.exp_1='';
tf.attack_1='';
tf.sp_doku_1='';
tf.sp_mahi_1='';
 tf.monster_name_1='';
 tf.monster_hp_1='';
 
[endscript]
[endif]

[if exp="tf.monster_hp_2<1&&tf.monster_2_death==1"]
[iscript]
 tf.target_monster='';
tf.target_monster_hp='';
tf.monster_damage_2='';
tf.sp_2='';
tf.doku_2='';
tf.mahi_2='';
tf.nemuri='';
tf.nemuri_2='';
tf.nigeru_2='';
tf.exp_2='';
tf.attack_2='';
tf.sp_doku_2='';
tf.sp_mahi_2='';
 tf.monster_name_2='';
 tf.monster_hp_2='';
 
[endscript]
[endif]

[if exp="tf.monster_hp_3<1&&tf.monster_3_death==1"]
[iscript]
 tf.target_monster='';
tf.target_monster_hp='';
tf.monster_damage_3='';
tf.sp_3='';
tf.doku_3='';
tf.mahi_3='';
tf.nemuri='';
tf.nemuri_3='';
tf.nigeru_3='';
tf.exp_3='';
tf.attack_3='';
tf.sp_doku_3='';
tf.sp_mahi_3='';
 tf.monster_name_3='';
 tf.monster_hp_3='';
 
[endscript]
[endif]

[endmacro]

;仲間HP更新
[macro name="friend_hp_kousin"]
;計算
[eval exp="tf.friend_attack=tf.friend_hp*0.2"]
;小数点以下切り捨て
[iscript]
Math.floor(tf.friend_attack);
[endscript]

;計算
[eval exp="tf.friend_guard=tf.friend_hp*0.1"]
;小数点以下切り捨て
[iscript]
Math.floor(tf.friend_guard);
[endscript]


;ステータス表示


[eval exp="tf.friend_name_x=tf.friend_status_x+20"]
[eval exp="tf.friend_name_y=tf.friend_status_y+10"]
;名前
[ptext layer=3 page=fore visible="true" text="&tf.friend_name" name="friend_name" size=25 x=&tf.friend_name_x y=&tf.friend_name_y]





[eval exp="tf.friend_hp_x=tf.friend_name_x"]
[eval exp="tf.friend_hp_y=tf.friend_face_y+18"]

[ptext layer=3 page=fore visible="true" text="HP:" name="friend_hp" size=15 x=&tf.friend_hp_x y=&tf.friend_hp_y]


[iscript]
var friend_hp = tf.friend_hp;
var friend_hp_m = tf.friend_hp_m;

var friend_hp_hyouji;


friend_hp_hyouji = friend_hp + '/' + friend_hp_m;


tf.friend_hp_hyouji = friend_hp_hyouji


[endscript]



[eval exp="tf.friend_hp_number_x=tf.friend_hp_x+30"]
[eval exp="tf.friend_hp_number_y=tf.friend_hp_y"]

[ptext layer=3 page=fore visible="true" text="&tf.friend_hp_hyouji" name="friend_hp" size=25 x=&tf.friend_hp_number_x y=&tf.friend_hp_number_y]

;攻撃と防御



[eval exp="tf.friend_attack = Math.floor(tf.friend_attack)"]
[eval exp="tf.friend_guard = Math.floor(tf.friend_guard)"]

[eval exp="tf.friend_attack_number_x=tf.friend_hp_x+60"]
[eval exp="tf.friend_attack_number_y=tf.friend_hp_number_y+40"]

[ptext layer=3 page=fore visible="true" text="攻撃" name="friend_attack" size=20 x=&tf.friend_hp_x y=&tf.friend_attack_number_y]
[ptext layer=3 page=fore visible="true" text="&tf.friend_attack" name="friend_attack" size=20 x=&tf.friend_attack_number_x y=&tf.friend_attack_number_y]



[eval exp="tf.friend_guard_number_y=tf.friend_attack_number_y+30"]


[ptext layer=3 page=fore visible="true" text="防御" name="friend_guard" size=20 x=&tf.friend_hp_x y=&tf.friend_guard_number_y]
[ptext layer=3 page=fore visible="true" text="&tf.friend_guard" name="friend_guard" size=20 x=&tf.friend_attack_number_x y=&tf.friend_guard_number_y]
[endmacro]



;イレインHP更新
[macro name="irain_hp_kousin"]




[eval exp="f.irain_hp_m=f.irain_tec+f.irain_brain+f.irain_charm"]

[if exp="f.irain_hp_m>998"]
[eval exp="f.irain_hp_m=999"]
[endif]
[if exp="f.irain_hp>998"]
[eval exp="f.irain_hp=999"]
[endif]

[if exp="f.irain_brain>998"]
[eval exp="f.irain_brain=999"]
[endif]

[if exp="f.irain_tec>998"]
[eval exp="f.irain_tec=999"]
[endif]

[if exp="f.irain_charm>998"]
[eval exp="f.irain_charm=999"]
[endif]





[eval exp="tf.irain_status_x=tf.status_x+20"]
[eval exp="tf.irain_status_y=tf.status_y+10"]




;名前
[ptext layer=3 page=fore visible="true" text="&f.name" name="irain_name" size=25 x="&tf.irain_status_x" y="&tf.irain_status_y"]

[eval exp="tf.irain_hp_x=tf.irain_status_x-5"]
[eval exp="tf.irain_hp_y=tf.irain_status_y+30"]

[ptext layer=3 page=fore visible="true" text="HP:" name="irain_hp" size=15 x=&tf.irain_hp_x y=&tf.irain_hp_y]



[iscript]
var irain_hp = f.irain_hp;
var irain_hp_m = f.irain_hp_m;

var irain_hp_hyouji;


irain_hp_hyouji = irain_hp + '/' + irain_hp_m;


tf.irain_hp_hyouji = irain_hp_hyouji


[endscript]

[eval exp="tf.irain_hp_number=tf.irain_hp_x+30"]
[ptext layer=3 page=fore visible="true" text="&tf.irain_hp_hyouji" name="irain_hp" size=25 x=&tf.irain_hp_number y=&tf.irain_hp_y]




;[eval exp="tf.irain_hp_numper_m=tf.irain_hp_number+60"]
;[ptext layer=3 page=fore visible="true" text="&f.irain_hp_m" name="irain_hp" size=30 x=&tf.irain_hp_number_m y=&tf.irain_hp_y]


;技術、頭脳、魅力はhpと同じX
[eval exp="tf.irain_tec_y=tf.irain_hp_y+40"]
[eval exp="tf.irain_tec_x=tf.irain_hp_x-5"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_x+60"]


[ptext layer=3 page=fore visible="true" text="技術" name="irain_tec" size=20 x=&tf.irain_hp_x y=&tf.irain_tec_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_tec" name="irain_tec" size=22 x=&tf.irain_tec_number_x y=&tf.irain_tec_y]


[eval exp="tf.irain_brain_y=tf.irain_tec_y+22"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_x+60"]


[ptext layer=3 page=fore visible="true" text="頭脳" name="irain_brain" size=20 x=&tf.irain_hp_x y=&tf.irain_brain_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_brain" name="irain_brain" size=22 x=&tf.irain_tec_number_x y=&tf.irain_brain_y]

[eval exp="tf.irain_charm_y=tf.irain_brain_y+22"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_x+60"]

[ptext layer=3 page=fore visible="true" text="魅力" name="irain_charm" size=20 x=&tf.irain_hp_x y=&tf.irain_charm_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_charm" name="irain_charm" size=22 x=&tf.irain_tec_number_x y=&tf.irain_charm_y]

[endmacro]






;-------lineカウント

[macro name="a"]

[eval exp="tf.line=tf.line+1"]
[if exp="tf.line==1"]
[cm]
[eval exp="tf.line=0"]
[endif]

[endmacro]




[macro name="guard_escape_item_button"]

;防御、退却、アイテムボタン表示



[button graphic="button/toumei.png" name="guard" fix=true storage="mini_game/battle2.ks" target=*guard x=&tf.battle_command_x_1 y=&tf.battle_command_y_1]
[image layer=2 page=fore visible=true name="guard" storage="button/battle_command.png" x=&tf.battle_command_window_x_1 y=&tf.battle_command_window_y_1]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_1" name="guard" size=20 x=&tf.battle_command_moji_x_1 y=&tf.battle_command_moji_y_1]

[button graphic="button/toumei.png" name="escape" fix=true storage="mini_game/battle2.ks" target=*escape x=&tf.battle_command_x_2 y=&tf.battle_command_y_2]
[image layer=2 page=fore visible=true name="escape" storage="button/battle_command.png" x=&tf.battle_command_window_x_2 y=&tf.battle_command_window_y_2]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_2" name="escape" size=20 x=&tf.battle_command_moji_x_2 y=&tf.battle_command_moji_y_2]

[button graphic="button/toumei.png" name="item" fix=true storage="mini_game/battle_item.ks" target=*item_hyouji x=&tf.battle_command_x_3 y=&tf.battle_command_y_3]
[image layer=2 page=fore visible=true name="item" storage="button/battle_command.png" x=&tf.battle_command_window_x_3 y=&tf.battle_command_window_y_3]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_3" name="item" size=20 x=&tf.battle_command_moji_x_3 y=&tf.battle_command_moji_y_3]


[anim name="guard" left="-=800" time=100]
[anim name="escape" left="-=800" time=100]
[anim name="item" left="-=800" time=100]
[wait time=300]

[endmacro]


[macro name="clearfix_item"]

[if exp="tf.cursor==0"]
[clearfix name="item_no_1"]
[free layer=3 name="item_no_1"]
[free layer=3 name="item_no_1_name"]
[free layer=2 name="item_no_1_explain"]
[free layer=3 name="item_no_1_explain_moji"]
[clearfix name="item_no_2"]
[free layer=3 name="item_no_2"]
[free layer=3 name="item_no_2_name"]
[free layer=2 name="item_no_2_explain"]
[free layer=3 name="item_no_2_explain_moji"]
[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]

[clearfix name="cursor"]

[elsif exp="tf.cursor==1"]

[clearfix name="item_no_2"]
[free layer=3 name="item_no_2"]
[free layer=3 name="item_no_2_name"]
[free layer=2 name="item_no_2_explain"]
[free layer=3 name="item_no_2_explain_moji"]
[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]
[clearfix name="item_no_4"]
[free layer=3 name="item_no_4"]
[free layer=3 name="item_no_4_name"]
[free layer=2 name="item_no_4_explain"]
[free layer=3 name="item_no_4_explain_moji"]

[clearfix name="cursor"]

[elsif exp="tf.cursor==2"]

[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]
[clearfix name="item_no_4"]
[free layer=3 name="item_no_4"]
[free layer=3 name="item_no_4_name"]
[free layer=2 name="item_no_4_explain"]
[free layer=3 name="item_no_4_explain_moji"]
[clearfix name="item_no_5"]
[free layer=3 name="item_no_5"]
[free layer=3 name="item_no_5_name"]
[free layer=2 name="item_no_5_explain"]
[free layer=3 name="item_no_5_explain_moji"]

[clearfix name="cursor"]

[elsif exp="tf.cursor==4&&tf.cursor_down==0"]

[clearfix name="item_no_4"]
[free layer=3 name="item_no_4"]
[free layer=3 name="item_no_4_name"]
[free layer=2 name="item_no_4_explain"]
[free layer=3 name="item_no_4_explain_moji"]
[clearfix name="item_no_5"]
[free layer=3 name="item_no_5"]
[free layer=3 name="item_no_5_name"]
[free layer=2 name="item_no_5_explain"]
[free layer=3 name="item_no_5_explain_moji"]
[clearfix name="item_no_6"]
[free layer=3 name="item_no_6"]
[free layer=3 name="item_no_6_name"]
[free layer=2 name="item_no_6_explain"]
[free layer=3 name="item_no_6_explain_moji"]

[clearfix name="cursor_down"]

[elsif exp="tf.cursor_down==1"]

[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]
[clearfix name="item_no_4"]
[free layer=3 name="item_no_4"]
[free layer=3 name="item_no_4_name"]
[free layer=2 name="item_no_4_explain"]
[free layer=3 name="item_no_4_explain_moji"]
[clearfix name="item_no_5"]
[free layer=3 name="item_no_5"]
[free layer=3 name="item_no_5_name"]
[free layer=2 name="item_no_5_explain"]
[free layer=3 name="item_no_5_explain_moji"]

[clearfix name="cursor_down"]

[elsif exp="tf.cursor_down==2"]

[clearfix name="item_no_2"]
[free layer=3 name="item_no_2"]
[free layer=3 name="item_no_2_name"]
[free layer=2 name="item_no_2_explain"]
[free layer=3 name="item_no_2_explain_moji"]
[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]
[clearfix name="item_no_4"]
[free layer=3 name="item_no_4"]
[free layer=3 name="item_no_4_name"]
[free layer=2 name="item_no_4_explain"]
[free layer=3 name="item_no_4_explain_moji"]

[clearfix name="cursor_down"]

[elsif exp="tf.cursor==0&&tf.cursor_down==4"]

[clearfix name="item_no_1"]
[free layer=3 name="item_no_1"]
[free layer=3 name="item_no_1_name"]
[free layer=2 name="item_no_1_explain"]
[free layer=3 name="item_no_1_explain_moji"]
[clearfix name="item_no_2"]
[free layer=3 name="item_no_2"]
[free layer=3 name="item_no_2_name"]
[free layer=2 name="item_no_2_explain"]
[free layer=3 name="item_no_2_explain_moji"]
[clearfix name="item_no_3"]
[free layer=3 name="item_no_3"]
[free layer=3 name="item_no_3_name"]
[free layer=2 name="item_no_3_explain"]
[free layer=3 name="item_no_3_explain_moji"]

[clearfix name="cursor"]

[endif]



[clearfix name="modoru"]
[item_window_close]
;[anim layer="message1" left="-=800" time=100] 
;[wa]
[free layer=2 name="item_window"]

[if exp="tf.explain_no_1>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]
;今までの説明を消す
[elsif exp="tf.explain_no_2>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]

[elsif exp="tf.explain_no_3>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_4>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_5>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_6>=1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

[eval exp="tf.cursor=0"]
[eval exp="tf.cursor_down=0"]

;アイテム説明のフラグオフ
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]

;アイテム表示のフラグをオフ
[eval exp="tf.battle_item_1_hyouji=0"]
[eval exp="tf.battle_item_2_hyouji=0"]
[eval exp="tf.battle_item_3_hyouji=0"]
[eval exp="tf.battle_item_4_hyouji=0"]
[eval exp="tf.battle_item_5_hyouji=0"]
[eval exp="tf.battle_item_6_hyouji=0"]


[endmacro]


[macro name="clearfix_menu"]

[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[clearfix name="escape"]
[free layer=2 name="escape"]
[free layer=3 name="escape"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]

[endmacro]





[macro name="irain_death"]
*irain_death
[eval exp="tf.irain_death=1"]
[name]は倒れた！！[l][a]
[s]
[endmacro]



[macro name="friend_death"]
*friend_death
[eval exp="tf.friend_death=1"]
[emb exp="tf.friend_name"]は倒れた！[a]
[eval exp="tf.friend_battle=0"]
[endmacro]


;アイテム説明用のマクロ
[macro name="item_explain"]


[if exp="tf.explain_no_1==1"]

;今までの説明を消す
[if exp="tf.explain_no_2==1&&tf.explain_hyouji_2==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"][free layer=2 name="item_no_2_explain"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]

[elsif exp="tf.explain_no_3==1&&tf.explain_hyouji_3==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"][free layer=2 name="item_no_3_explain"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_4==1&&tf.explain_hyouji_4==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"][free layer=2 name="item_no_4_explain"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_5==1&&tf.explain_hyouji_5==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"][free layer=2 name="item_no_5_explain"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_6==1&&tf.explain_hyouji_6==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"][free layer=2 name="item_no_6_explain"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]
[loadcss file="./data/scenario/mini_game/item_css/item_no_0.css"]

[loadcss file="./data/scenario/mini_game/item_css/item_no_1.css"]

;説明表示

[image layer=2 page=fore visible=true name="item_no_1_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_1_explain_moji" text="&tf.battle_item_explain_1" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]

;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_1=1"]

[endif]


;--------------

[if exp="tf.explain_no_2==1"]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]


;今までの説明を消す
[if exp="tf.explain_no_1==1&&tf.explain_hyouji_1==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"][free layer=2 name="item_no_1_explain"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]

[elsif exp="tf.explain_no_3==1&&tf.explain_hyouji_3==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"][free layer=2 name="item_no_3_explain"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_4==1&&tf.explain_hyouji_4==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"][free layer=2 name="item_no_4_explain"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_5==1&&tf.explain_hyouji_5==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"][free layer=2 name="item_no_5_explain"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_6==1&&tf.explain_hyouji_6==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"][free layer=2 name="item_no_6_explain"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

[loadcss file="./data/scenario/mini_game/item_css/item_no_2.css"]


[image layer=2 page=fore visible=true name="item_no_2_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_2_explain_moji" text="&tf.battle_item_explain_2" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]
;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_2=1"]


[endif]


[if exp="tf.explain_no_3==1"]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]

;今までの説明を消す
[if exp="tf.explain_no_1==1&&tf.explain_hyouji_1==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"][free layer=2 name="item_no_1_explain"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]

[elsif exp="tf.explain_no_2==1&&tf.explain_hyouji_2==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"][free layer=2 name="item_no_2_explain"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]

[elsif exp="tf.explain_no_4==1&&tf.explain_hyouji_4==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"][free layer=2 name="item_no_4_explain"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_5==1&&tf.explain_hyouji_5==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"][free layer=2 name="item_no_5_explain"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_6==1&&tf.explain_hyouji_6==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"][free layer=2 name="item_no_6_explain"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

;アイテム文字に対するマーキング
[loadcss file="./data/scenario/mini_game/item_css/item_no_3.css"]


;説明表示
[image layer=2 page=fore visible=true name="item_no_3_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_3_explain_moji" text="&tf.battle_item_explain_3" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]
;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_3=1"]


[endif]
;-------

[if exp="tf.explain_no_4==1"]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]


;今までの説明を消す
[if exp="tf.explain_no_2==1&&tf.explain_hyouji_2==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"][free layer=2 name="item_no_2_explain"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]

[elsif exp="tf.explain_no_3==1&&tf.explain_hyouji_3==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"][free layer=2 name="item_no_3_explain"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_1==1&&tf.explain_hyouji_1==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"][free layer=2 name="item_no_1_explain"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]

[elsif exp="tf.explain_no_5==1&&tf.explain_hyouji_5==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"][free layer=2 name="item_no_5_explain"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_6==1&&tf.explain_hyouji_6==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"][free layer=2 name="item_no_6_explain"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

;アイテム文字に対するマーキング

[loadcss file="./data/scenario/mini_game/item_css/item_no_4.css"]


;説明表示

[image layer=2 page=fore visible=true name="item_no_4_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_4_explain_moji" text="&tf.battle_item_explain_4" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]
;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_4=1"]


[endif]
;----------

[if exp="tf.explain_no_5==1"]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]


;今までの説明を消す
[if exp="tf.explain_no_2==1&&tf.explain_hyouji_2==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"][free layer=2 name="item_no_2_explain"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]

[elsif exp="tf.explain_no_3==1&&tf.explain_hyouji_3==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"][free layer=2 name="item_no_3_explain"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_4==1&&tf.explain_hyouji_4==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"][free layer=2 name="item_no_4_explain"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_1==1&&tf.explain_hyouji_1==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"][free layer=2 name="item_no_1_explain"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]

[elsif exp="tf.explain_no_6==1&&tf.explain_hyouji_6==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_6_explain_moji"][free layer=2 name="item_no_6_explain"]
[eval exp="tf.explain_no_6=0"][eval exp="tf.explain_hyouji_6=0"]
[endif]

[loadcss file="./data/scenario/mini_game/item_css/item_no_5.css"]

;説明表示

[image layer=2 page=fore visible=true name="item_no_5_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_5_explain_moji" text="&tf.battle_item_explain_5" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]
;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_5=1"]



[endif]
;--------

[if exp="tf.explain_no_6==1"]

;x座標はメッセージ画面と同じ位置
[eval exp="tf.item_explain_x=tf.message_width-tf.item_gamen_width"]
[eval exp="tf.item_explain_x=tf.message_left+tf.item_explain_x/2"]
[eval exp="tf.item_explain_x_moji=tf.item_explain_x+30"]
[eval exp="tf.item_explain_y=tf.y-tf.y/10"]
[eval exp="tf.item_explain_base_y=tf.item_explain_y-15"]



;今までの説明を消す
[if exp="tf.explain_no_2==1&&tf.explain_hyouji_2==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_2_explain_moji"][free layer=2 name="item_no_2_explain"]
[eval exp="tf.explain_no_2=0"][eval exp="tf.explain_hyouji_2=0"]



[elsif exp="tf.explain_no_3==1&&tf.explain_hyouji_3==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_3_explain_moji"][free layer=2 name="item_no_3_explain"]
[eval exp="tf.explain_no_3=0"][eval exp="tf.explain_hyouji_3=0"]

[elsif exp="tf.explain_no_4==1&&tf.explain_hyouji_4==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_4_explain_moji"][free layer=2 name="item_no_4_explain"]
[eval exp="tf.explain_no_4=0"][eval exp="tf.explain_hyouji_4=0"]

[elsif exp="tf.explain_no_5==1&&tf.explain_hyouji_5==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_5_explain_moji"][free layer=2 name="item_no_5_explain"]
[eval exp="tf.explain_no_5=0"][eval exp="tf.explain_hyouji_5=0"]

[elsif exp="tf.explain_no_1==1&&tf.explain_hyouji_1==1"]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[free layer=3 name="item_no_1_explain_moji"][free layer=2 name="item_no_1_explain"]
[eval exp="tf.explain_no_1=0"][eval exp="tf.explain_hyouji_1=0"]
[endif]

;アイテム文字に対するマーキング

[loadcss file="./data/scenario/mini_game/item_css/item_no_6.css"]

;説明表示

[image layer=2 page=fore visible=true name="item_no_6_explain" storage="item_explain.png" x=&tf.item_explain_x y=&tf.item_explain_base_y]
[ptext layer=3 page=fore visible=true name="item_no_6_explain_moji" text="&tf.battle_item_explain_6" size=20 x=&tf.item_explain_x_moji y=&tf.item_explain_y]
;すでに表示したのフラグ
[eval exp="tf.explain_hyouji_6=1"]


[endif]


[if exp="tf.explain_no_1>0"]
[eval exp="tf.item_explain=tf.explain_no_1"]
[elsif exp="tf.explain_no_2>0"]
[eval exp="tf.item_explain=tf.explain_no_2"]
[elsif exp="tf.explain_no_3>0"]
[eval exp="tf.item_explain=tf.explain_no_3"]
[elsif exp="tf.explain_no_4>0"]
[eval exp="tf.item_explain=tf.explain_no_4"]
[elsif exp="tf.explain_no_5>0"]
[eval exp="tf.item_explain=tf.explain_no_5"]
[elsif exp="tf.explain_no_6>0"]
[eval exp="tf.item_explain=tf.explain_no_6"]
[endif]

[endmacro]


;ステータス再表示


[macro name="status_again"]


[free layer=3 name="irain_name"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_charm"]
[free layer=3 name="status_irain"]
[free layer=3 name="irain_face"]

[image layer=3 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]
[irain_hp_kousin]


[if exp="f.friend>=1"]
[free layer=3 name="friend_name"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[free layer=3 name="status_friend"]
[free layer=3 name="friend_face"]
[image layer=3 page=fore visible=true name="friend_face" storage="&tf.chara_face" x=&tf.friend_face_x y=&tf.friend_face_y]
[friend_hp_kousin]
[endif]


[endmacro]



[macro name="monster_hyouji_kirikae"]

;モンスター表示３匹の場合

[if exp="tf.monster_hp_1>=1&&tf.monster_hp_2>=1&&tf.monster_hp_3>=1"]

[clearfix name="monster1"]
[clearfix name="monster2"]
[clearfix name="monster3"]

[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_2>=1"]
;1,2の場合
[clearfix name="monster1"]
[clearfix name="monster2"]

[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1&&tf.monster_hp_3>=1"]
;2,3の場合
[clearfix name="monster2"]
[clearfix name="monster3"]

[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_3>=1"]
;1,3の場合
[clearfix name="monster1"]
[clearfix name="monster3"]

[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1"]
[clearfix name="monster1"]
;1の場合
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1"]
[clearfix name="monster2"]
;2の場合
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true  x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_3>=1"]

[clearfix name="monster3"]
;3の場合
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]


[endif]


[endmacro]


;------------------------------------------------
[macro name="monster_hyouji_modosu"]

;モンスター表示３匹の場合

[if exp="tf.monster_hp_1>=1&&tf.monster_hp_2>=1&&tf.monster_hp_3>=1"]

[free layer=3 name="monster1"]
[free layer=3 name="monster2"]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_2>=1"]
;1,2の場合
[free layer=3 name="monster1"]
[free layer=3 name="monster2"]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1&&tf.monster_hp_3>=1"]
;2,3の場合
[free layer=3 name="monster2"]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_3>=1"]
;1,3の場合
[free layer=3 name="monster1"]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1"]
;1の場合
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1"]
;2の場合
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_3>=1"]
;3の場合
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[endif]


[endmacro]

;-----------------------------モンスター攻撃アニメ
[macro name="monster_attack_anime"]

[click_ok]
[if exp="tf.monster_1_death!=1"]
[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_2_death!=1"]
[clearfix name="monster2"]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]

[if exp="tf.monster_3_death!=1"]
[clearfix name="monster3"]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]

[if exp="tf.target_monster=='monster1'"]

;モンスター同士の重なり防止
[if exp="tf.monster_2_death!=1"]
[free name="monster2" layer=3]
[image layer=2 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]

[if exp="tf.monster_3_death!=1"]
[free name="monster3" layer=3]
[image layer=2 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]


[endif]

;--------------------------

[if exp="tf.target_monster=='monster2'"]

;モンスター同士の重なり防止
[if exp="tf.monster_1_death!=1"]
[free name="monster1" layer=3]
[image layer=2 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[eval exp="tf.target_moto_monster1=1"]
[endif]

[endif]
;--------------------

[if exp="tf.target_monster=='monster3'&&tf.target_moto_monster1!=1"]

;モンスター同士の重なり防止
[if exp="tf.monster_1_death!=1"]
[free name="monster1" layer=3]
[image layer=2 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[endif]

[endif]




[if exp="tf.target_monster=='monster1'"]
;name属性を指定してアニメーション
[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.x_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2 y=&tf.click_y]
[monster_guard_anime_start]
[anim name=monster1 top="-=100" time=200]
[wait time=200]
[monster_guard_anime_end]
[anim name=monster1 left="-=800" top="-=700" width=200% time=500]


[elsif exp="tf.target_monster=='monster2'"]
[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard x=&tf.x_4 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4 y=&tf.click_y]
[monster_guard_anime_start]
[anim name=monster2 top="-=100" time=200]
[wait time=200]
[monster_guard_anime_end]
[anim name=monster2 left="-=800" top="-=700" width=200% time=500]


[elsif exp="tf.target_monster=='monster3']
[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard x=&tf.x_4bunno3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3 y=&tf.click_y]
[monster_guard_anime_start]
[anim name=monster3 top="-=100" time=200]
[wait time=200]
[monster_guard_anime_end]
[anim name=monster3 left="-=800" top="-=700" width=200% time=500]

[endif]

*guard
[endmacro]


;モンスターガードアニメ
;モンスターによってガード難しくするのもアリかと
[macro name="monster_guard_anime_start"]
[anim name=guard top="-=100" time=200]
[endmacro]
[macro name="monster_guard_anime_end"]
[anim name=guard top="+=100" time=500]
[endmacro]

;モンスターガード成功
[macro name="guard_success"]

[if exp="tf.guard>0"]



[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.x_success=tf.x_2-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.x_success=tf.x_4-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[else]
[eval exp="tf.x_success=tf.x_4bunno3-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[endif]



[endif]

[endmacro]


;------------------------------モンスター攻撃アニメ：戻す
[macro name="monster_attack_return"]

[if exp="tf.target_monster=='monster1'"]

;name属性を指定してアニメーション：モンスターもどす
[anim name=monster1 left="+=800" top="+=700" width=15% time=300]
[anim name=monster1 top="+=100" time=200]

;モンスター同士の重なり防止戻す
[if exp="tf.monster_2_death!=1"]
[free name="monster2" layer=2]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]

[if exp="tf.monster_3_death!=1"]
[free name="monster3" layer=2]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]




[elsif exp="tf.target_monster=='monster2'"]
[anim name=monster2 left="+=800" top="+=700" width=15% time=300]
[anim name=monster2 top="+=100" time=200]

;モンスター同士の重なり防止戻す
[if exp="tf.monster_1_death!=1"]
[free name="monster1" layer=2]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]

[endif]


[elsif exp="tf.target_monster=='monster3'"]
[anim name=monster3 left="+=800" top="+=700" width=15% time=300]
[anim name=monster3 top="+=100" time=200]

;モンスター同士の重なり防止戻す
[if exp="tf.monster_1_death!=1&&tf.target_moto_monster1!=1"]
[free name="monster1" layer=2]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]
[endif]



[endif]
[eval exp="tf.target_moto_monster1=0"]
[wait time=500]

[endmacro]





;-----------------------------ダメージ受けたときのアニメ
[macro name="damage_frash"]

;[l]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]
;[quake count=5 time=300 vmax=0 hmax=20]
[endmacro]


;-------------------------仲間がかばったときのアニメ
[macro name="kabau_anime"]

[if exp="f.irain_hp<=f.irain_hp_m/2&&f.friend>0&&tf.friend_death!=1"]

;イレインのステータス表示のレイヤーを番号変更

[free layer=2 name="status_irain"]
[free layer=3 name="irain_name"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_charm"]
[if exp="tf.irain_sp[0]==1"]
[free layer=3 name="doku_irain"]
[endif]

[if exp="tf.irain_sp[1]==1"]
[free layer=3 name="mahi_irain"]
[endif]

[if exp="tf.irain_sp[2]==1"]
[free layer=3 name="nemuri_irain"]
[endif]




[image layer=1 page=fore visible=true name="status_irain" storage="status.png" x=&tf.status_x y=&tf.status_y]
;名前
[ptext layer=2 page=fore visible="true" text="&f.name" name="irain_name" size=25 x="&tf.irain_status_x" y="&tf.irain_status_y"]
;HP
[ptext layer=2 page=fore visible="true" text="HP:" name="irain_hp" size=15 x=&tf.irain_hp_x y=&tf.irain_hp_y]
[ptext layer=2 page=fore visible="true" text="&tf.irain_hp_hyouji" name="irain_hp" size=25 x=&tf.irain_hp_number y=&tf.irain_hp_y]
;技術頭脳魅力
[ptext layer=2 page=fore visible="true" text="技術" name="irain_tec" size=20 x=&tf.irain_hp_x y=&tf.irain_tec_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_tec" name="irain_tec" size=22 x=&tf.irain_tec_number_x y=&tf.irain_tec_y]
[ptext layer=2 page=fore visible="true" text="頭脳" name="irain_brain" size=20 x=&tf.irain_hp_x y=&tf.irain_brain_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_brain" name="irain_brain" size=22 x=&tf.irain_tec_number_x y=&tf.irain_brain_y]
[ptext layer=2 page=fore visible="true" text="魅力" name="irain_charm" size=20 x=&tf.irain_hp_x y=&tf.irain_charm_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_charm" name="irain_charm" size=22 x=&tf.irain_tec_number_x y=&tf.irain_charm_y]

;状態ステータス
[if exp="tf.irain_sp[0]==1"]
[image layer=2 page=fore visible="true" storage="doku.gif" name="doku_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.irain_sp[1]==1"]
[image layer=2 page=fore visible="true" storage="mahi.gif" name="mahi_irain" x=&tf.irain_mahi_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.irain_sp[2]==1"]
[image layer=2 page=fore visible="true" storage="nemuri.gif" name="nemuri_irain" x=&tf.irain_nemuri_x y=&tf.irain_sp_y]
[endif]


;仲間のステータスを右に移動、のち戻す。かばうアクション
[anim name="status_friend" left="-=100" time=200]
[anim name="friend_name" left="-=100" time=200]
[anim name="friend_face" left="-=100" time=200]
[anim name="friend_hp" left="-=100" time=200]
[anim name="friend_attack" left="-=100" time=200]
[anim name="friend_guard" left="-=100" time=200]
[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="-=100" time=200]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="-=100" time=200]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="-=100" time=200]
[endif]


[anim name="status_friend" left="+=100" time=200]
[anim name="friend_name" left="+=100" time=200]
[anim name="friend_face" left="+=100" time=200]
[anim name="friend_hp" left="+=100" time=200]
[anim name="friend_attack" left="+=100" time=200]
[anim name="friend_guard" left="+=100" time=200]

[if exp="tf.friend_doku==1"]
[anim name="doku_friend" left="+=100" time=200]
[endif]

[if exp="tf.friend_mahi==1"]
[anim name="mahi_friend" left="+=100" time=200]
[endif]

[if exp="tf.friend_nemuri==1"]
[anim name="nemuri_friend" left="+=100" time=200]
[endif]

[wait time=200]
;イレインのレイヤー番号を元に戻す
[free layer=1 name="status_irain"]
[free layer=2 name="irain_name"]
[free layer=2 name="irain_hp"]
[free layer=2 name="irain_tec"]
[free layer=2 name="irain_brain"]
[free layer=2 name="irain_charm"]
[if exp="tf.irain_sp[0]==1"]
[free layer=2 name="doku_irain"]
[endif]

[if exp="tf.irain_sp[1]==1"]
[free layer=2 name="mahi_irain"]
[endif]

[if exp="tf.irain_sp[2]==1"]
[free layer=2 name="nemuri_irain"]
[endif]


[image layer=2 page=fore visible=true name="status_irain" storage="status.png" x=&tf.status_x y=&tf.status_y]
;名前
[ptext layer=3 page=fore visible="true" text="&f.name" name="irain_name" size=25 x="&tf.irain_status_x" y="&tf.irain_status_y"]
;HP
[ptext layer=3 page=fore visible="true" text="HP:" name="irain_hp" size=15 x=&tf.irain_hp_x y=&tf.irain_hp_y]
[ptext layer=3 page=fore visible="true" text="&tf.irain_hp_hyouji" name="irain_hp" size=25 x=&tf.irain_hp_number y=&tf.irain_hp_y]
;技術頭脳魅力
[ptext layer=3 page=fore visible="true" text="技術" name="irain_tec" size=20 x=&tf.irain_hp_x y=&tf.irain_tec_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_tec" name="irain_tec" size=22 x=&tf.irain_tec_number_x y=&tf.irain_tec_y]
[ptext layer=3 page=fore visible="true" text="頭脳" name="irain_brain" size=20 x=&tf.irain_hp_x y=&tf.irain_brain_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_brain" name="irain_brain" size=22 x=&tf.irain_tec_number_x y=&tf.irain_brain_y]
[ptext layer=3 page=fore visible="true" text="魅力" name="irain_charm" size=20 x=&tf.irain_hp_x y=&tf.irain_charm_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_charm" name="irain_charm" size=22 x=&tf.irain_tec_number_x y=&tf.irain_charm_y]

;状態ステータス
[if exp="tf.irain_sp[0]==1"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.irain_sp[1]==1"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_irain" x=&tf.irain_mahi_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.irain_sp[2]==1"]
[image layer=3 page=fore visible="true" storage="nemuri.gif" name="nemuri_irain" x=&tf.irain_nemuri_x y=&tf.irain_sp_y]
[endif]


;メッセージ
[emb exp="tf.friend_name"]は[name]をかばった！[a]
[jump target=*friend_damage]

[endif]



[endmacro]



[macro name="monster_attack_prepare"]



;----------------ボタン状態のモンスターをイメージレイヤーに変更
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]
;-------------------------------------------------------------------------------------------------------------------
[endmacro]


[macro name="monster_attack_end"]

[click_stop]
;モンスターをボタン状態に戻す
;全体なので場合分け

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_2 y=&tf.click_y]
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4 y=&tf.click_y]
;左側１
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]


[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[eval exp="tf.click_y=tf.y_3+10"]
;アタッククリックの目印
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4bunno3 y=&tf.click_y]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]




[endif]





[endmacro]


;モンスターの声出しマクロ
[macro name="monster_voice"]

[if exp="tf.target_monster=='monster1'"]

[if exp="tf.monster1==1"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster1==2"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster1==3"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==4"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==5"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==6"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster1==7"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster1==8"]
[playse storage="koumori_koukaonlabo.ogg"]
[elsif exp="tf.monster1==9"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster1==10"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster1==11"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster1==12"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster1==13"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster1==14"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster1==15"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster1==16"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster1==17"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster1==18"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster1==19"]
[playse storage="tori_koukaonlabo.ogg"]
[elsif exp="tf.monster1==20"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster1==21"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster1==22"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==23"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==24"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==25"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster1==26"]
[playse storage="hyouryuutamasii_onjin.ogg"]
[elsif exp="tf.monster1==27"]
[playse storage="dragon_onjin.ogg"]
[endif]




[elsif exp="tf.target_monster=='monster2'"]


[if exp="tf.monster2==1"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster2==2"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster2==3"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==4"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==5"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==6"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster2==7"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster2==8"]
[playse storage="koumori_koukaonlabo.ogg"]
[elsif exp="tf.monster2==9"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster2==10"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster2==11"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster2==12"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster2==13"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster2==14"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster2==15"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster2==16"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster2==17"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster2==18"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster2==19"]
[playse storage="tori_koukaonlabo.ogg"]
[elsif exp="tf.monster2==20"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster2==21"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster2==22"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==23"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==24"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==25"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster2==26"]
[playse storage="hyouryuutamasii_onjin.ogg"]
[elsif exp="tf.monster2==27"]
[playse storage="dragon_onjin.ogg"]
[endif]


[elsif exp="tf.target_monster=='monster3'"]


[if exp="tf.monster3==1"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster3==2"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster3==3"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==4"]
[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==5"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==6"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster3==7"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster3==8"]
[playse storage="koumori_koukaonlabo.ogg"]
[elsif exp="tf.monster3==9"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster3==10"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster3==11"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster3==12"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster3==13"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster3==14"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster3==15"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster3==16"]
[playse storage="shokubutu_koukaonlabo.ogg"]
[elsif exp="tf.monster3==17"]
[playse storage="ooku_koukaonlabo.ogg"]
[elsif exp="tf.monster3==18"]
[playse storage="obake_onjin.ogg"]
[elsif exp="tf.monster3==19"]
[playse storage="tori_koukaonlabo.ogg"]
[elsif exp="tf.monster3==20"]
[playse storage="dog_koukaonlabo.ogg"]
[elsif exp="tf.monster3==21"]
[playse storage="hebi_onjin.ogg"]
[elsif exp="tf.monster3==22"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==23"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==24"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==25"]
;[playse storage="suraimu_onjin.ogg"]
[elsif exp="tf.monster3==26"]
[playse storage="hyouryuutamasii_onjin.ogg"]
[elsif exp="tf.monster3==27"]
[playse storage="dragon_onjin.ogg"]
[endif]


[endif]


[endmacro]



[macro name="irain_hp_layer_change"]

[free name="irain_name" layer=3]
[free name="irain_hp" layer=3]
[free name="irain_tec" layer=3]
[free name="irain_brain" layer=3]
[free name="irain_charm" layer=3]

;名前
[ptext layer=2 page=fore visible="true" text="&f.name" name="irain_name" size=25 x="&tf.irain_status_x" y="&tf.irain_status_y"]

[ptext layer=2 page=fore visible="true" text="HP:" name="irain_hp" size=15 x=&tf.irain_hp_x y=&tf.irain_hp_y]

[ptext layer=2 page=fore visible="true" text="&tf.irain_hp_hyouji" name="irain_hp" size=25 x=&tf.irain_hp_number y=&tf.irain_hp_y]


[ptext layer=2 page=fore visible="true" text="技術" name="irain_tec" size=20 x=&tf.irain_hp_x y=&tf.irain_tec_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_tec" name="irain_tec" size=22 x=&tf.irain_tec_number_x y=&tf.irain_tec_y]

[ptext layer=2 page=fore visible="true" text="頭脳" name="irain_brain" size=20 x=&tf.irain_hp_x y=&tf.irain_brain_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_brain" name="irain_brain" size=22 x=&tf.irain_tec_number_x y=&tf.irain_brain_y]

[ptext layer=2 page=fore visible="true" text="魅力" name="irain_charm" size=20 x=&tf.irain_hp_x y=&tf.irain_charm_y]
[ptext layer=2 page=fore visible="true" text="&f.irain_charm" name="irain_charm" size=22 x=&tf.irain_tec_number_x y=&tf.irain_charm_y]




[endmacro]




[macro name="irain_hp_layer_change_return"]



[free name="irain_name" layer=2]
[free name="irain_hp" layer=2]
[free name="irain_tec" layer=2]
[free name="irain_brain" layer=2]
[free name="irain_charm" layer=2]

;名前
[ptext layer=3 page=fore visible="true" text="&f.name" name="irain_name" size=25 x="&tf.irain_status_x" y="&tf.irain_status_y"]

[ptext layer=3 page=fore visible="true" text="HP:" name="irain_hp" size=15 x=&tf.irain_hp_x y=&tf.irain_hp_y]

[ptext layer=3 page=fore visible="true" text="&tf.irain_hp_hyouji" name="irain_hp" size=25 x=&tf.irain_hp_number y=&tf.irain_hp_y]


[ptext layer=3 page=fore visible="true" text="技術" name="irain_tec" size=20 x=&tf.irain_hp_x y=&tf.irain_tec_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_tec" name="irain_tec" size=22 x=&tf.irain_tec_number_x y=&tf.irain_tec_y]

[ptext layer=3 page=fore visible="true" text="頭脳" name="irain_brain" size=20 x=&tf.irain_hp_x y=&tf.irain_brain_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_brain" name="irain_brain" size=22 x=&tf.irain_tec_number_x y=&tf.irain_brain_y]

[ptext layer=3 page=fore visible="true" text="魅力" name="irain_charm" size=20 x=&tf.irain_hp_x y=&tf.irain_charm_y]
[ptext layer=3 page=fore visible="true" text="&f.irain_charm" name="irain_charm" size=22 x=&tf.irain_tec_number_x y=&tf.irain_charm_y]




[endmacro]


[macro name="battle_moji_your_turn"]
[image layer=2 page=fore visible=true storage="yourturn.png" name="moji" x=900 y=350]
[anim name="moji" left="-=800" time=500]
[wait time=500]
[anim name="moji" left="-=800" time=500]
[free name="moji" layer=2]
[endmacro]

[macro name="battle_moji_enemy_turn"]
[image layer=2 page=fore visible=true storage="enemyturn.png" name="moji" x=900 y=350]
[anim name="moji" left="-=800" time=500]
[wait time=500]
[anim name="moji" left="-=800" time=500]
[free name="moji" layer=2]


[endmacro]

[macro name="battle_moji_start"]
[image layer=2 page=fore visible=true storage="battlestart.png" name="moji" x=900 y=350]
[anim name="moji" left="-=800" time=500]
[wait time=500]
[anim name="moji" left="-=800" time=500]
[free name="moji" layer=2]


[endmacro]




[return]








