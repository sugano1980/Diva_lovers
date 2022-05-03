


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
[jump storage="scenario_2/mini_game/battle2.ks" target=*turn_end1]
[endif]



[if exp="tf.monster_attack_1==1"]
[monster1_irekae]
[call storage="scenario_2/mini_game/monster_turn.ks"]
[endif]


[if exp="tf.monster_attack_2==1"]
[monster2_irekae]
[call storage="scenario_2/mini_game/monster_turn.ks"]
[endif]


[if exp="tf.monster_attack_3==1"]
[monster3_irekae]
[call storage="scenario_2/mini_game/monster_turn.ks"]
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

[call storage="scenario_2/mini_game/exp.ks" target=*exp]
[else]
[eval exp="tf.nigeru_action=0"]
[endif]

;モンスター全滅のチェック
[if exp="tf.monster_number==0&&tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
[jump storage="scenario_2/mini_game/battle2.ks" target=*zenmetu]
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

[if exp="tf.friend_hp<1"]
[jump target=*kousin_nasi]
[endif]

;ステータス表示


[eval exp="tf.friend_name_x=tf.friend_status_x+20"]
[eval exp="tf.friend_name_y=tf.friend_status_y+10"]
;名前
[ptext layer=3 page=fore visible="true" text="&tf.friend_name" name="friend_name" size=25 x=&tf.friend_name_x y=&tf.friend_name_y]


;きずなある場合
[if exp="f.rans_battle_kizuna==1&&f.friend==1||f.lion_battle_kizuna==1&&f.friend==2||f.kra_battle_kizuna==1&&f.friend==3||f.glif_battle_kizuna==1&&f.friend==5"]
[image layer=3 page=fore storage="uranai/battle_kizuna.png" name="friend_face" x=&tf.friend_face_x y=&tf.friend_face_y]
[endif]




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
[ptext layer=3 page=fore visible="true" text="&tf.friend_attack" name="friend_attack" size=22 x=&tf.friend_attack_number_x y=&tf.friend_attack_number_y]



[eval exp="tf.friend_guard_number_y=tf.friend_attack_number_y+30"]


[ptext layer=3 page=fore visible="true" text="防御" name="friend_guard" size=20 x=&tf.friend_hp_x y=&tf.friend_guard_number_y]
[ptext layer=3 page=fore visible="true" text="&tf.friend_guard" name="friend_guard" size=22 x=&tf.friend_attack_number_x y=&tf.friend_guard_number_y]

*kousin_nasi

[endmacro]



;イレインHP更新
[macro name="irain_hp_kousin"]

[eval exp="f.irain_hp_m=f.irain_tec+f.irain_brain+f.irain_charm"]

[if exp="f.irain_hp_m>9998"]
[eval exp="f.irain_hp_m=9999"]
[endif]
[if exp="f.irain_hp>9998"]
[eval exp="f.irain_hp=9999"]
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

[iscript]
tf.guard_kakuritu = Math.floor( Math.random() * 2) + 1
[endscript]

;防御
[button graphic="button/toumei.png" name="guard" fix=true storage="scenario_2/mini_game/battle2.ks" target=*guard x=&tf.battle_command_x_1 y=&tf.battle_command_y_1]

[image layer=2 page=fore visible=true name="guard" storage="button/battle_command.png" x=&tf.battle_command_window_x_1 y=&tf.battle_command_window_y_1]

[if exp="f.event_main_11!=1&&f.friend>0&&tf.friend_battle>0&&tf.guard_kakuritu==2&&f.rusia_l_size==1"]

[ptext layer=3 page=fore visible="true" text="&tf.battle_command_ale" name="guard" size=20 x=&tf.battle_command_moji_x_1 y=&tf.battle_command_moji_y_1]

[elsif exp="f.friend>0&&tf.friend_battle>0&&tf.guard_kakuritu==2&&f.rusia_l_size!=1"]

[ptext layer=3 page=fore visible="true" text="&tf.battle_command_ale" name="guard" size=20 x=&tf.battle_command_moji_x_1 y=&tf.battle_command_moji_y_1]

[else]

[ptext layer=3 page=fore visible="true" text="&tf.battle_command_1" name="guard" size=20 x=&tf.battle_command_moji_x_1 y=&tf.battle_command_moji_y_1]

[endif]

;退却
[button graphic="button/toumei.png" name="escape" fix=true storage="scenario_2/mini_game/battle2.ks" target=*escape x=&tf.battle_command_x_2 y=&tf.battle_command_y_2]
[image layer=2 page=fore visible=true name="escape" storage="button/battle_command.png" x=&tf.battle_command_window_x_2 y=&tf.battle_command_window_y_2]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_2" name="escape" size=20 x=&tf.battle_command_moji_x_2 y=&tf.battle_command_moji_y_2]

;アイテム
[button graphic="button/toumei.png" name="item" fix=true storage="scenario_2/mini_game/battle_item.ks" target=*item_hyouji x=&tf.battle_command_x_3 y=&tf.battle_command_y_3]
[image layer=2 page=fore visible=true name="item" storage="button/battle_command.png" x=&tf.battle_command_window_x_3 y=&tf.battle_command_window_y_3]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_3" name="item" size=20 x=&tf.battle_command_moji_x_3 y=&tf.battle_command_moji_y_3]

;合体技ゲージ満タンの場合にコマンドに合体技を表示
[if exp="tf.d_gauge_amount>99"]

[eval exp="tf.battle_command_4 = 'デュアル'"]

[button graphic="button/toumei.png" name="dual" fix=true storage="scenario_2/mini_game/dual_skill.ks" target=*dual_skill x=&tf.battle_command_x_4 y=&tf.battle_command_y_4]
[image layer=2 page=fore visible=true name="dual" storage="button/battle_command.png" x=&tf.battle_command_window_x_4 y=&tf.battle_command_window_y_4]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_4" name="dual" size=20 x=&tf.battle_command_moji_x_4 y=&tf.battle_command_moji_y_4]

[anim name="dual" left="-=800" time=100]

[endif]



[anim name="guard" left="-=800" time=100]
[anim name="escape" left="-=800" time=100]
[anim name="item" left="-=800" time=100]
[wait time=300]

[endmacro]


[macro name="clearfix_item"]

[if exp="tf.cursor_down==0"]
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
[eval exp="tf.cursor=0"]
[clearfix name="cursor"]

[elsif exp="tf.cursor_down==1"]

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


[eval exp="tf.cursor=0"]
[clearfix name="cursor_down"]

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

[if exp="tf.d_gauge_amount>99"]
[clearfix name="dual"]
[free layer=2 name="dual"]
[free layer=3 name="dual"]
[endif]

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
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_2>=1"]
;1,2の場合
[free layer=3 name="monster1"]
[free layer=3 name="monster2"]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1&&tf.monster_hp_3>=1"]
;2,3の場合
[free layer=3 name="monster2"]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1&&tf.monster_hp_3>=1"]
;1,3の場合
[free layer=3 name="monster1"]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[elsif exp="tf.monster_hp_1>=1"]
;1の場合
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]

[elsif exp="tf.monster_hp_2>=1"]
;2の場合
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]

[elsif exp="tf.monster_hp_3>=1"]
;3の場合
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]


[endif]


[endmacro]





;-----------------------------モンスター攻撃アニメ
[macro name="monster_attack_anime"]

;ガードボタンの数決める
[if exp="f.monster_l_size==1"]
[guard_button_gacha]
[elsif exp="f.monster_l_size!=1"]
[eval exp="tf.guard_mode=1"]
[endif]

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

;-------------------

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



[if exp="f.monster_l_size==1&&f.target_monster=='monster1'"]

;-----
[if exp="tf.guard_no!=1"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y]
[monster_guard_anime_start]

[anim name=monster1 top="+=100" time=200]

[wait time=200]

[monster_guard_anime_end]

[anim name=monster1 left="-=800" top="-=800" width=200% time=500]

[endif]
;--------

[elsif exp="tf.target_monster=='monster1'"]
;name属性を指定してアニメーション
;ガード不能の場合のフラグ
;-----
[if exp="tf.guard_no!=1"]

[monster_1_guard_button]
[monster_guard_anime_start]
[endif]

[anim name=monster1 top="-=100" time=200]

[wait time=200]

[if exp="tf.guard_no!=1"]
[monster_guard_anime_end]
[endif]

[anim name=monster1 left="-=800" top="-=700" width=200% time=500]



;-----


[elsif exp="tf.target_monster=='monster2'"]

[if exp="tf.guard_no!=1"]

[monster_2_guard_button]
[monster_guard_anime_start]
[endif]

[anim name=monster2 top="-=100" time=200]
[wait time=200]

[if exp="tf.guard_no!=1"]
[monster_guard_anime_end]
[endif]

[anim name=monster2 left="-=800" top="-=700" width=200% time=500]


[elsif exp="tf.target_monster=='monster3']

[if exp="tf.guard_no!=1"]
[monster_3_guard_button]
[monster_guard_anime_start]
[endif]

[anim name=monster3 top="-=100" time=200]
[wait time=200]

[if exp="tf.guard_no!=1"]
[monster_guard_anime_end]
[endif]

[anim name=monster3 left="-=800" top="-=700" width=200% time=500]



[endif]

*guard
[endmacro]


;モンスターガードアニメ
;モンスターによってガード難しくするのもアリかと
[macro name="monster_guard_anime_start"]
[if exp="f.monster_l_size==1"]
[anim name=guard top="-=100" time=50]
[elsif exp="f.monster_l_size!=1"]

[guard_anime_random]
;[anim name=guard top="-=100" time=200]



[endif]
[endmacro]

[macro name="guard_anime_random"]
;確率３割
[eval exp="tf.guard_ran=0"]
[iscript]
tf.guard_ran = Math.floor(Math.random() * 6) + 1
[endscript]

;[eval exp="tf.guard_ran=3"]
[if exp="tf.guard_ran==1"]
[anim name=guard top="-=100" time=200]
[elsif exp="tf.guard_ran==2"]
[anim name=guard top="+=200" time=400]
[anim name=guard left="+=400" time=400]
[elsif exp="tf.guard_ran==3"]
[anim name=guard left="-=300" time=400]
[anim name=guard left="+=500" time=450]
[elsif exp="tf.guard_ran==4"]
[anim name=guard left="+=300" time=500]
[anim name=guard left="-=100" time=250]
[anim name=guard left="+=600" time=550]
[elsif exp="tf.guard_ran==5"]
[anim name=guard left="-=300" time=500]
[anim name=guard left="+=500" time=450]
[anim name=guard left="-=300" time=500]
[anim name=guard left="+=500" time=450]
[anim name=guard left="-=300" time=600]
[anim name=guard left="+=500" time=450]
[elsif exp="tf.guard_ran==6"]
[anim name=guard top="-=300" time=500]
[anim name=guard top="+=500" time=550]
[endif]

[endmacro]


[macro name="monster_guard_anime_end"]
;[anim name=guard top="+=100" time=500]
[endmacro]

;モンスターガード成功
[macro name="guard_success"]

[if exp="tf.guard>0"]

[eval exp="tf.guard_success=1"]

[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.x_success=tf.click_x-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.x_success=tf.click_x_2-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[else]
[eval exp="tf.x_success=tf.click_x_3-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[endif]


[else]
[playse storage="naguru_koukaonlabo.ogg"]
[endif]

[endmacro]


[macro name="guard_success_2"]

[if exp="tf.guard>0&&tf.guard_2>0&&tf.guard_3>0&&tf.guard_mode==2"]
[eval exp="tf.guard_success=1"]


[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.x_success=tf.click_x-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.x_success=tf.click_x_2-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[else]
[eval exp="tf.x_success=tf.click_x_3-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[endif]


[else]
[playse storage="naguru_koukaonlabo.ogg"]
[endif]

[endmacro]


[macro name="guard_success_3"]

[if exp="tf.guard>0&&tf.guard_2>0&&tf.guard_3>0&&tf.guard_4>0&&tf.guard_5>0&&tf.guard_mode==3"]
[eval exp="tf.guard_success=1"]


[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.x_success=tf.click_x-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.x_success=tf.click_x_2-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[else]
[eval exp="tf.x_success=tf.click_x_3-30"]
[image layer=3 storage="guard_success.png" name="success" page=fore visible=true x=&tf.x_success y=&tf.click_y]
[anim name=success top="+=30" time=200]
[anim name=success top="-=30" time=210]
[wait time=300]
[free name="success" layer=3]
[endif]




[else]
[playse storage="naguru_koukaonlabo.ogg"]

[endif]

[endmacro]





;------------------------------モンスター攻撃アニメ：戻す
[macro name="monster_attack_return_igyou"]



[if exp="tf.target_monster=='monster1'"]

;name属性を指定してアニメーション：モンスターもどす
[if exp="f.monster_l_size==1"]
;[anim name=monster1 left="+=800" top="+=800" width=30% time=300]
;[anim name=monster1 top="-=100" time=200]
[endif]


;[anim name=monster1 left="-=800" top="-=800" width=200% time=500]

;モンスター同士の重なり防止戻す
[if exp="tf.monster_1_death!=1"]
[free name="monster1" layer=2]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true zindex=1 x=&tf.x_2 y=&tf.y_3]

[endif]

[eval exp="tf.target_moto_monster1=0"]
[wait time=500]
[endif]

[endmacro]


[macro name="monster_attack_return"]

[if exp="f.rusia_battle==1"]
[free name="monster1" layer=3]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[jump storage="scenario_2/mini_game/monster_battle_add.ks" target=*rusia_end]
[endif]



[if exp="tf.target_monster=='monster1'"]

;name属性を指定してアニメーション：モンスターもどす
[if exp="f.monster_l_size==1"]
[anim name=monster1 left="+=800" top="+=800" width=30% time=300]
;[anim name=monster1 top="-=100" time=200]
[elsif exp="f.monster_l_size!=1"]
[anim name=monster1 left="+=800" top="+=700" width=15% time=300]
[anim name=monster1 top="+=100" time=200]
[endif]


;[anim name=monster1 left="-=800" top="-=800" width=200% time=500]



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
*rusia_end
[wait time=500]

[endmacro]






;-----------------------------ダメージ受けたときのアニメ
[macro name="damage_frash"]

[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]

[endmacro]


;-------------------------仲間がかばったときのアニメ
[macro name="kabau_anime"]
;イレインのステータス表示のレイヤーを番号変更

[free layer=2 name="status_irain"]
[if exp="tf.gattai_skill_kra_hatudou==1"]
[image layer=1 page=fore visible=true name="status_irain" storage="status_d.png" x=&tf.status_x y=&tf.status_y]
[else]
[image layer=1 page=fore visible=true name="status_irain" storage="status.png" x=&tf.status_x y=&tf.status_y]
[endif]
[irain_hp_layer_change]

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
[if exp="tf.gattai_skill_kra_hatudou==1"]
[image layer=2 page=fore visible=true name="status_irain" storage="status_d.png" x=&tf.status_x y=&tf.status_y]
[else]
[image layer=2 page=fore visible=true name="status_irain" storage="status.png" x=&tf.status_x y=&tf.status_y]
[endif]
;メッセージ
[emb exp="tf.friend_name"]は[name]をかばった！[a]






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
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]
;-------------------------------------------------------------------------------------------------------------------
[endmacro]


[macro name="monster_attack_end"]

[click_stop]
;モンスターをボタン状態に戻す
;全体なので場合分け

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]
;アタッククリックの目印

[eval exp="tf.click_x=tf.x_2"]
[if exp="f.monster_l_size_3==1"]
[eval exp="tf.click_x=tf.x_2+170"]
[eval exp="tf.click_y=tf.y_3+30"]
[elsif exp="f.rusia_l_size==1"]
[eval exp="tf.click_y=tf.y_3+110"]
[eval exp="tf.x_2_vaeru=tf.x_2+2"]
[eval exp="tf.y_3_vaeru=tf.y_3+50"]
[elsif exp="f.zako_l_size!=1"]
[eval exp="tf.click_y=tf.y_3+10"]
[elsif exp="f.zako_l_size==1"]
[eval exp="tf.click_y=tf.y_3-30"]
[endif]

[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]
[endif]
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]
;アタッククリックの目印
[click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_2 y=&tf.click_y]
[endif]
;左側１
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]


[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]

;アタッククリックの目印
[click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_3 y=&tf.click_y]
[endif]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]




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
[elsif exp="tf.monster1==28"]
[playse storage="igyou_nakigoe_onjin.ogg"]
[elsif exp="tf.monster1==33"]
[playse storage="dog_koukaonlabo.ogg"]
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

[if exp="tf.irain_sp[0]==1"]
[free layer=3 name="doku_irain"]
[endif]

[if exp="tf.irain_sp[1]==1"]
[free layer=3 name="mahi_irain"]
[endif]

[if exp="tf.irain_sp[2]==1"]
[free layer=3 name="nemuri_irain"]
[endif]

[if exp="tf.irain_sp[3]==1"]
[free layer=3 name="skill_irain"]
[endif]

[if exp="tf.guard_zero==1"]
[free layer=3 name="guard_icon_zero"]
[endif]


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

[if exp="tf.irain_sp[3]==1"]
[image layer=2 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_irain" x=&tf.irain_skill_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.guard_zero==1"]
[image layer=2 page=fore visible=true storage="guard_zero_icon.png" name="guard_icon_zero" x=&tf.irain_hp_x y=&tf.irain_guard_y]
[endif]




[endmacro]

[macro name="friend_hp_layer_change"]

[free name="friend_name" layer=3]
[free name="friend_hp" layer=3]
[free name="friend_attack" layer=3]
[free name="friend_guard" layer=3]

[if exp="tf.friend_doku==1"]
[free name="doku_friend" layer=3]
[endif]

[if exp="tf.friend_mahi==1"]
[free name="mahi_friend" layer=3]
[endif]

[if exp="tf.friend_nemuri==1"]
[free name="nemuri_friend" layer=3]
[endif]


[if exp="tf.friend_skill_no==1"]
[free name="skill_friend" layer=3]
[endif]

[if exp="tf.guard_zero==1"]
[free layer=3 name="guard_icon_zero_f"]
[endif]


;名前
[ptext layer=2 page=fore visible="true" text="&tf.friend_name" name="friend_name" size=25 x=&tf.friend_name_x y=&tf.friend_name_y]



[ptext layer=2 page=fore visible="true" text="HP:" name="friend_hp" size=15 x=&tf.friend_hp_x y=&tf.friend_hp_y]


[ptext layer=2 page=fore visible="true" text="&tf.friend_hp_hyouji" name="friend_hp" size=25 x=&tf.friend_hp_number_x y=&tf.friend_hp_number_y]

;攻撃と防御


[ptext layer=2 page=fore visible="true" text="攻撃" name="friend_attack" size=20 x=&tf.friend_hp_x y=&tf.friend_attack_number_y]
[ptext layer=2 page=fore visible="true" text="&tf.friend_attack" name="friend_attack" size=22 x=&tf.friend_attack_number_x y=&tf.friend_attack_number_y]

[ptext layer=2 page=fore visible="true" text="防御" name="friend_guard" size=20 x=&tf.friend_hp_x y=&tf.friend_guard_number_y]
[ptext layer=2 page=fore visible="true" text="&tf.friend_guard" name="friend_guard" size=22 x=&tf.friend_attack_number_x y=&tf.friend_guard_number_y]

[if exp="tf.friend_mahi==1"]
[image layer=2 page=fore visible="true" storage="mahi.gif" name="mahi_friend" x=&tf.friend_mahi_x y=&tf.friend_sp_y]
[endif]
[if exp="tf.friend_doku==1"]
[image layer=2 page=fore visible="true" storage="doku.gif" name="doku_friend" x=&tf.friend_face_x y=&tf.friend_sp_y]
[endif]
[if exp="tf.friend_skill_no==1"]
[image layer=2 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_friend" x=&tf.friend_skill_x y=&tf.friend_sp_y]
[endif]
[if exp="tf.guard_zero==1"]
[image layer=2 page=fore visible=true storage="guard_zero_icon.png" name="guard_icon_zero_f" x=&tf.friend_hp_x y=&tf.irain_guard_f_y]
[endif]


[endmacro]





[macro name="irain_hp_layer_change_return"]

[free name="irain_name" layer=2]
[free name="irain_hp" layer=2]
[free name="irain_tec" layer=2]
[free name="irain_brain" layer=2]
[free name="irain_charm" layer=2]
[if exp="tf.irain_sp[0]==1"]
[free layer=2 name="doku_irain"]
[endif]

[if exp="tf.irain_sp[1]==1"]
[free layer=2 name="mahi_irain"]
[endif]

[if exp="tf.irain_sp[2]==1"]
[free layer=2 name="nemuri_irain"]
[endif]

[if exp="tf.irain_sp[3]==1"]
[free layer=2 name="skill_irain"]
[endif]

[if exp="tf.guard_zero==1"]
[free layer=2 name="guard_icon_zero"]
[endif]


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

[if exp="tf.irain_sp[3]==1"]
[image layer=3 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_irain" x=&tf.irain_skill_x y=&tf.irain_sp_y]
[endif]

[if exp="tf.guard_zero==1"]
[image layer=3 page=fore visible=true storage="guard_zero_icon.png" name="guard_icon_zero" x=&tf.irain_hp_x y=&tf.irain_guard_y]
[endif]



[endmacro]

[macro name="friend_hp_layer_change_return"]

[free name="friend_name" layer=2]
[free name="friend_hp" layer=2]
[free name="friend_attack" layer=2]
[free name="friend_guard" layer=2]

[if exp="tf.friend_mahi==1"]
[free name="mahi_friend" layer=2]
[endif]

[if exp="tf.friend_doku==1"]
[free name="doku_friend" layer=2]
[endif]


[if exp="tf.friend_skill_no==1"]
[free name="skill_friend" layer=2]
[endif]

[if exp="tf.guard_zero==1"]
[free layer=2 name="guard_icon_zero_f"]
[endif]


;名前
[ptext layer=3 page=fore visible="true" text="&tf.friend_name" name="friend_name" size=25 x=&tf.friend_name_x y=&tf.friend_name_y]


[ptext layer=3 page=fore visible="true" text="HP:" name="friend_hp" size=15 x=&tf.friend_hp_x y=&tf.friend_hp_y]


[ptext layer=3 page=fore visible="true" text="&tf.friend_hp_hyouji" name="friend_hp" size=25 x=&tf.friend_hp_number_x y=&tf.friend_hp_number_y]

;攻撃と防御


[ptext layer=3 page=fore visible="true" text="攻撃" name="friend_attack" size=20 x=&tf.friend_hp_x y=&tf.friend_attack_number_y]
[ptext layer=3 page=fore visible="true" text="&tf.friend_attack" name="friend_attack" size=22 x=&tf.friend_attack_number_x y=&tf.friend_attack_number_y]

[ptext layer=3 page=fore visible="true" text="防御" name="friend_guard" size=20 x=&tf.friend_hp_x y=&tf.friend_guard_number_y]
[ptext layer=3 page=fore visible="true" text="&tf.friend_guard" name="friend_guard" size=22 x=&tf.friend_attack_number_x y=&tf.friend_guard_number_y]

[if exp="tf.friend_mahi==1"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_friend" x=&tf.friend_mahi_x y=&tf.friend_sp_y]
[endif]
[if exp="tf.friend_doku==1"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_friend" x=&tf.friend_face_x y=&tf.friend_sp_y]
[endif]


[if exp="tf.friend_skill_no==1"]
[image layer=3 page=fore visible="true" storage="battle_animation/skill_nasi.gif" name="skill_friend" x=&tf.friend_skill_x y=&tf.friend_sp_y]
[endif]

[if exp="tf.guard_zero==1"]
[image layer=3 page=fore visible=true storage="guard_zero_icon.png" name="guard_icon_zero_f" x=&tf.friend_hp_x y=&tf.irain_guard_f_y]
[endif]


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



[macro name="gif_hyouji"]

;全体なので場合分け

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]
;アタッククリックの目印
[click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]
[endif]
[free layer=3 name="monster1"]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]
;アタッククリックの目印
[click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_2 y=&tf.click_y]
[endif]
;左側１
[free layer=3 name="monster2"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]


[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[if exp="tf.irain_sp[1]!=1&&tf.irain_sp[2]!=2"]
;アタッククリックの目印
[click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_3 y=&tf.click_y]
[endif]
[free layer=3 name="monster3"]
[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]




[endif]





[endmacro]


;男キャラ応援した時のステータスアップ
[macro name="friend_ouen"]

;応援回数かぞえる３回めで文句言われる
[eval exp="tf.ouen_kaisuu=tf.ouen_kaisuu+1"]

[battle_gamen_idou]
[if exp="tf.ouen_kaisuu>2"]
;-------------
;ランス
[if exp="f.friend==1"]
;-------
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_serihu_2_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_serihu_2]
[endif]

「応援は嬉しいのだが・・・お前のその剣はなんのためにあるんだ？」[w][cm]
[chara_kakusu]
[elsif exp="f.friend==2"]


[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[image layer=0 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_serihu_2.png" name="lion" x=0 y=-50]
[image layer=1 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_houtai.png" name="lion" x=5 y=-50]
[w]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_serihu_2]
[endif]
「てめえも少しは戦えよ！」[w][cm]

[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[w][w]
[free layer=0 name="lion"]
[free layer=1 name="lion"]
[elsif exp="f.episode_flag!=4"]
[chara_kakusu]
[endif]

[elsif exp="f.friend==3"]

[kra_tatie_battle_serihu_2]
;くら
「君は戦わないの？まあ、それでもいいけどさ」[w][cm]
[chara_kakusu]
[elsif exp="f.friend==5"]

[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_serihu_2_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_serihu_2]
[endif]

;グリフ
「ありがとうございます。ただその、もう少し手伝っていただけたら助かるのですが・・・」[w][cm]
[chara_kakusu]

[else]

[endif]

;-------------------
[jump target=*owari]
[endif]

;ランス
[if exp="f.friend==1"]
;-------
;それぞれキャラの好感度を変数代入
[if exp="f.tougijou!=1"]
[rans]
[endif]

[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_serihu_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_serihu]
[endif]

[font size=23 edge=0x000000]「ありがとう、[name]。お前のその声は・・・いつも私を勇気づけてくれる」[w][cm]
[chara_kakusu]
[eval exp="tf.men_koukando = f.ranskonkando"]
[elsif exp="f.friend==2"]
;ライオネス
[if exp="f.tougijou!=1"]
[lion]
[endif]

[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[image layer=0 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_serihu.png" name="lion" x=0 y=-50]
[image layer=1 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_houtai.png" name="lion" x=5 y=-50]
[w]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_serihu]
[endif]

[font size=23 edge=0x000000]「おう！！さっさと終わらせようぜ！」[cm]
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[w][w]
[free layer=0 name="lion"]
[free layer=1 name="lion"]
[elsif exp="f.episode_flag!=4"]
[chara_kakusu]
[endif]

[eval exp="tf.men_koukando = f.lionkonkando"]
[elsif exp="f.friend==3"]
;くら
[if exp="f.tougijou!=1"]
[kra]
[endif]
[kra_tatie_battle_serihu]
[font size=23 edge=0x000000]「うん。もちろん、頑張るよ。・・・君のためにね」[w][cm]
[chara_kakusu]
[eval exp="tf.men_koukando = f.krakonkando"]
[elsif exp="f.friend==5"]
;グリフ
[if exp="f.tougijou!=1"]
[glif]
[endif]

[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_serihu_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_serihu]
[endif]


[glif_tatie_battle_serihu]
[font size=23 edge=0x000000]「ありがとうございます。不思議ですね・・・あなたの声を聞くだけで、こんなにも勇気が湧いてくる」[w][cm]
#
[chara_kakusu]
[eval exp="tf.men_koukando = f.glifkonkando"]
[else]

[endif]



[eval exp="tf.friend_hp_m = tf.friend_hp_m+tf.up_hp"]
[eval exp="tf.friend_attack = tf.friend_attack+tf.up_attack"]
[eval exp="tf.friend_guard = tf.friend_guard+tf.up_guard"]



[eval exp="tf.friend_hp_m = Math.floor(tf.friend_hp_m)"]
[eval exp="tf.friend_attack = Math.floor(tf.friend_attack)"]
[eval exp="tf.friend_guard = Math.floor(tf.friend_guard)"]

[if exp="f.tougijou!=1"]
[koukando_up]
[endif]

[if exp="tf.friend_hp_m>9998"]
[eval exp="tf.friend_hp_m=9999"]
[endif]

[if exp="tf.friend_attack>999"]
;[eval exp="tf.friend_attack=999"]
[endif]

[if exp="tf.friend_guard>999"]
;[eval exp="tf.friend_guard=999"]
[endif]

[eval exp="tf.friend_hp = tf.friend_hp_m"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]


*owari

[eval exp="tf.ouen_sumi=1"]
[battle_gamen_return]
[endmacro]






[macro name="rans_homekotoba"]

[eval exp="tf.homekotoba_rans_1='「素晴らしい戦いだった。・・・次も期待している」'"]
[eval exp="tf.homekotoba_rans_3='「もう少し上手く立ち回れたな・・・。すまない。より良いサポートができるよう、私も努力する」'"]
[eval exp="tf.homekotoba_rans_2='「なんとか勝てたな。大丈夫か」'"]
[if exp="f.tougijou!=1"]
[koukando1_rans][p]
[endif]
[if exp="tf.battle_turn_kaisuu<4"]
;-------------
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_home_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_home]
[endif]
;--------------
[emb exp="tf.homekotoba_rans_1"][p]
[chara_kakusu]

[elsif exp="tf.battle_turn_kaisuu<16"]

;-------------
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_home_2_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_home_2]
[endif]
;--------------


[emb exp="tf.homekotoba_rans_2"][p]
[chara_kakusu]

[elsif exp="tf.battle_turn_kaisuu>15||f.irain_hp<30"]

;-------------
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_home_2_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_home_2]
[endif]
;--------------

[emb exp="tf.homekotoba_rans_3"][p]
[chara_kakusu]

[else]

[endif]
[endmacro]


[macro name="lion_homekotoba"]

[eval exp="tf.homekotoba_lion_1='楽勝だったな！お前のおかげだな！！'"]
[eval exp="tf.homekotoba_lion_3='もうちょっと早く終わらせたかったな・・・俺も色々考えるから、お前ももちょっと頼れよ'"]
[eval exp="tf.homekotoba_lion_2='疲れたか？あんま、無理すんなよ'"]
[if exp="f.tougijou!=1"]
[koukando1_lion][p]
[endif]
[if exp="tf.battle_turn_kaisuu<4"]
;------------
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[lioness_tatie_battle_home_houtai]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_home]
[endif]
;-----------
[emb exp="tf.homekotoba_lion_1"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu<16"]
;------------
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[lioness_tatie_battle_home_houtai]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_home]
[endif]
;------------
[emb exp="tf.homekotoba_lion_2"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu>15||f.irain_hp<30"]
;------------
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[lioness_tatie_battle_home_2_houtai]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_home_2]
[endif]
;-----------
[emb exp="tf.homekotoba_lion_3"][p]
[chara_kakusu]
[else]

[endif]
[endmacro]


[macro name="kra_homekotoba"]

[eval exp="tf.homekotoba_kra_1='じゃ、ご飯食べにいこっか'"]
[eval exp="tf.homekotoba_kra_2='大丈夫？怪我ない？'"]
[eval exp="tf.homekotoba_kra_3='うーん・・・ごめん、俺ももうちょっと気を利かせればよかったね'"]
[if exp="f.tougijou!=1"]
[koukando1_kra][p]
[endif]
[if exp="tf.battle_turn_kaisuu<4"]

[kra_tatie_battle_home]
[emb exp="tf.homekotoba_kra_1"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu<16"]

[kra_tatie_battle_home]
[emb exp="tf.homekotoba_kra_2"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu>15||f.irain_hp<30"]

[kra_tatie_battle_home_2]
[emb exp="tf.homekotoba_kra_3"][p]
[chara_kakusu]
[else]

[endif]
[endmacro]


[macro name="glif_homekotoba"]

[eval exp="tf.homekotoba_glif_1_0='・・・・・・。あ、いえ・・・'"]
[eval exp="tf.homekotoba_glif_1_1='すみませんその、思わず、剣技に見惚れてしまって・・・'"]
[eval exp="tf.homekotoba_glif_1_2='素晴らしい戦いぶりでした。僕ももっと頑張りますね'"]
[eval exp="tf.homekotoba_glif_2='お疲れ様です。少し、休みましょうか？'"]
[eval exp="tf.homekotoba_glif_3='怪我はありませんか。すみません、僕がもっとしっかりしていれば・・・'"]
[if exp="f.tougijou!=1"]
[koukando1_glif][p]
[endif]

[if exp="tf.battle_turn_kaisuu<4"]

[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_home0_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_home0]
[endif]
[emb exp="tf.homekotoba_glif_1_0"][p]

[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_home1_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_home1]
[endif]

[emb exp="tf.homekotoba_glif_1_1"][p]

;-------
[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_home_mod_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_home_mod]
[endif]
;--------

[emb exp="tf.homekotoba_glif_1_2"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu<16"]
;-------
[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_home_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_home]
[endif]
;--------
[emb exp="tf.homekotoba_glif_2"][p]
[chara_kakusu]
[elsif exp="tf.battle_turn_kaisuu>15||f.irain_hp<30"]
;-------
[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_home_2_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_home_2]
[endif]
;------

[emb exp="tf.homekotoba_glif_3"][p]
[chara_kakusu]
[else]

[endif]
[endmacro]


[macro name="homekotoba"]

[if exp="f.friend==1"]
[rans_homekotoba]
[elsif exp="f.friend==2"]
[lion_homekotoba]
[elsif exp="f.friend==3"]
[kra_homekotoba]
[elsif exp="f.friend==5"]
[glif_homekotoba]
[else]
[endif]
[endmacro]




;パーティ全体に攻撃
[macro name="attack_murti"]

[if exp="f.friend>=1&&tf.friend_death!=1"]
[monster_attack_return]

;ステータスのモンスター攻撃用レイヤー番号を変更
[friend_hp_layer_change_return]
[eval exp="tf.layer_change_friend=1"]


[eval exp="tf.friend_hp=tf.friend_hp-tf.monster_damage"]
;消去後再表示でHP減少表現
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]

[friend_damage_anime]
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

;防御していた場合半減
[if exp="tf.irain_guard==1"]
[eval exp="tf.monster_damage=tf.monster_damage/2"]
[endif]

[iscript]
tf.monster_damage = Math.floor(tf.monster_damage)
[endscript]

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
[endmacro]

[macro name="battle_gamen_idou"]

[anim name="guard" top="+=800" time=200]
[anim name="escape" top="+=800" time=200]
[anim name="item" top="+=800" time=200]

[anim name="monster1" top="-=800" time=200]
[anim name="monster2" top="-=800" time=200]
[anim name="monster3" top="-=800" time=200]

[anim name="monster_hp_1" top="-=800" time=200]
[anim name="monster_hp_2" top="-=800" time=200]
[anim name="monster_hp_3" top="-=800" time=200]

[anim name="click" top="-=800" time=200]

[if exp="f.rusia_battle==1"]
[anim name="vaeru" top="-=800" time=200]
[endif]

[endmacro]

[macro name="battle_gamen_return"]



[anim name="guard" top="-=800" time=200]
[anim name="escape" top="-=800" time=200]
[anim name="item" top="-=800" time=200]

[anim name="monster1" top="+=800" time=200]
[anim name="monster2" top="+=800" time=200]
[anim name="monster3" top="+=800" time=200]

[anim name="monster_hp_1" top="+=800" time=200]
[anim name="monster_hp_2" top="+=800" time=200]
[anim name="monster_hp_3" top="+=800" time=200]

[anim name="click" top="+=800" time=200]

[if exp="f.rusia_battle==1"]
[anim name="vaeru" top="+=800" time=200]
[endif]

[wait time=300]
[endmacro]


[macro name="guard_button_gacha"]

[iscript]
tf.guard_number = Math.floor( Math.random() * 2) + 1

if(tf.guard_number==1){

tf.guard_mode=1;

}else if(tf.guard_number==2){

tf.guard_mode=2;

}else if(tf.guard_number==3){

tf.guard_mode=3;

}

[endscript]

[endmacro]




[macro name="monster_1_guard_button"]

[if exp="tf.guard_mode==1"]


;モンスタ１
[eval exp="tf.x_2_guard_2=tf.click_x+90"]
[eval exp="tf.x_2_guard_3=tf.click_x-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y]



[elsif exp="tf.guard_mode==2"]
;三つ
;モンスタ１
[eval exp="tf.x_2_guard_2=tf.click_x+90"]
[eval exp="tf.x_2_guard_3=tf.click_x-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.x_2_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.x_2_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2_guard_3 y=&tf.click_y]



[elsif exp="tf.guard_mode==3"]
;いつつ
;モンスタ１
[eval exp="tf.x_2_guard_2=tf.click_x+90"]
[eval exp="tf.x_2_guard_3=tf.click_x-90"]
[eval exp="tf.click_y_guard_2=tf.click_y+90"]
[eval exp="tf.click_y_guard_3=tf.click_y-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.x_2_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.x_2_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_2_guard_3 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_4=1" target=*guard  x=&tf.click_x y=&tf.click_y_guard_2]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y_guard_2]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_5=1" target=*guard  x=&tf.click_x y=&tf.click_y_guard_3]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x y=&tf.click_y_guard_3]

[endif]

[endmacro]




[macro name="monster_2_guard_button"]

[if exp="tf.guard_mode==1"]
;ひとつ
;モンスタ２
;モンスタ２
[eval exp="tf.x_4_guard_2=tf.click_x_2+90"]
[eval exp="tf.x_4_guard_3=tf.click_x_2-90"]


[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_2 y=&tf.click_y]




;三つ

[elsif exp="tf.guard_mode==2"]
;モンスタ２
[eval exp="tf.x_4_guard_2=tf.click_x_2+90"]
[eval exp="tf.x_4_guard_3=tf.click_x_2-90"]


[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.x_4_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.x_4_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4_guard_3 y=&tf.click_y]


;5つ

[elsif exp="tf.guard_mode==3"]
;モンスタ2５
[eval exp="tf.x_4_guard_2=tf.click_x_2+90"]
[eval exp="tf.x_4_guard_3=tf.click_x_2-90"]
[eval exp="tf.click_y_guard_2=tf.click_y+90"]
[eval exp="tf.click_y_guard_3=tf.click_y-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y_guard_2]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y_guard_2]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y_guard_3]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y_guard_3]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_4=1" target=*guard  x=&tf.x_4bunno3_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_5=1" target=*guard  x=&tf.x_4bunno3_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_3 y=&tf.click_y]

[endif]

[endmacro]



[macro name="monster_3_guard_button"]


[if exp="tf.guard_mode==1"]

;モンスタ３３
[eval exp="tf.x_4bunno3_guard_2=tf.click_x_3+90"]
[eval exp="tf.x_4bunno3_guard_3=tf.click_x_3-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard x=&tf.click_x_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y]




[elsif exp="tf.guard_mode==2"]
;モンスタ３３
[eval exp="tf.x_4bunno3_guard_2=tf.click_x_3+90"]
[eval exp="tf.x_4bunno3_guard_3=tf.click_x_3-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard x=&tf.click_x_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.x_4_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.x_4_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_3 y=&tf.click_y]


[elsif exp="tf.guard_mode==3"]
;モンスタ３５
[eval exp="tf.x_4bunno3_guard_2=tf.click_x_3+90"]
[eval exp="tf.x_4bunno3_guard_3=tf.click_x_3-90"]
[eval exp="tf.click_y_guard_2=tf.click_y+90"]
[eval exp="tf.click_y_guard_3=tf.click_y-90"]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_2=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y_guard_2]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y_guard_2]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_3=1" target=*guard  x=&tf.click_x_3 y=&tf.click_y_guard_3]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.click_x_3 y=&tf.click_y_guard_3]


[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_4=1" target=*guard  x=&tf.x_4bunno3_guard_2 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_2 y=&tf.click_y]

[button graphic="guard_button.png" name="guard" fix=true exp="tf.guard_5=1" target=*guard  x=&tf.x_4bunno3_guard_3 y=&tf.click_y]
[image layer=3 storage="guard.gif" name="guard" page=fore visible=true x=&tf.x_4bunno3_guard_3 y=&tf.click_y]

[endif]


[endmacro]


[macro name="click_zahyou"]

[if exp="f.zako_l_size!=1"]
[eval exp="tf.click_y=tf.y_3+10"]
[elsif exp="f.zako_l_size==1"]
[eval exp="tf.click_y=tf.y_3-30"]
[endif]
[endmacro]

[macro name="click_zahyou_center"]
[eval exp="tf.click_x=tf.x_2"]
[if exp="f.monster_l_size_3==1"]
[eval exp="tf.click_x=tf.x_2+170"]
[eval exp="tf.click_y=tf.y_3+30"]
[elsif exp="f.rusia_l_size==1"]
[eval exp="tf.click_y=tf.y_3+110"]
[eval exp="tf.x_2_vaeru=tf.x_2+2"]
[eval exp="tf.y_3_vaeru=tf.y_3+50"]
[image layer=3 page=fore storage="vaeru_hontai.png" name="vaeru" visible=true x=&tf.x_2_vaeru y=&tf.y_3_vaeru]
[elsif exp="f.zako_l_size!=1"]
[eval exp="tf.click_y=tf.y_3+10"]
[elsif exp="f.zako_l_size==1"]
[eval exp="tf.click_y=tf.y_3-30"]
[endif]

[endmacro]


[macro name="igyou_attack"]

[if exp="tf.monster_id_no_1=='31'"]
[igyou_2_attack]
[elsif exp="tf.monster_id_no_1=='32'"]
[igyou_3_attack]
[endif]

[endmacro]

[macro name="igyou_magic"]
[if exp="tf.monster_id_no_1=='31'"]
[igyou_2_magic]
[elsif exp="tf.monster_id_no_1=='32'"]
[igyou_3_magic]
[endif]
[endmacro]

[macro name="igyou_attack_animation"]
[if exp="tf.monster_id_no_1=='31'"]
[anim name=monster1 top="-=70" time=800]
[wait time=700]
[anim name=monster1 top="-=800" time=100]
[anim name=monster1 top="+=870" left="-=210" width=80% time=300]
[elsif exp="tf.monster_id_no_1=='32'"]
[anim name=monster1 top="-=70" time=800]
[wait time=700]
[anim name=monster1 top="-=400" time=700]
[anim name=monster1 top="+=870" left="-=210" width=80% time=500]
[endif]
[endmacro]

[macro name="igyou_gra_change_mahou"]
[if exp="tf.monster_id_no_1=='31'"]
[eval exp="tf.monster_graphic_1='monster/igyou_2/igyou_2_mahou.png'"]
[elsif exp="tf.monster_id_no_1=='32'"]
[eval exp="tf.monster_graphic_1='monster/igyou_3/igyou_3_mahou.png'"]
[endif]
[endmacro]

[macro name="igyou_gra_change_attack"]
[if exp="tf.monster_id_no_1=='31'"]
[eval exp="tf.monster_graphic_1='monster/igyou_2/igyou_2_attack.png'"]
[elsif exp="tf.monster_id_no_1=='32'"]
[eval exp="tf.monster_graphic_1='monster/igyou_3/igyou_3_attack.png'"]
[endif]
[endmacro]

[macro name="boss_sp_event"]

[if exp="f.rusia_battle==1&&f.event_main_11!=1&&tf.baria_sumi!=1"]
[friend_attack_anime]
[eval exp="tf.kra_baria=3"]
[eval exp="tf.baria_sumi=1"]
[kra_baria_anime]

[if exp="tf.baria_setumei!=1"]
[anim name="vaeru" top="-=800" time=200]
[battle_gamen_idou][kra_tatie_battle_serihu]
#クライスト
「さあ、これで心置きなく戦えるよね」[p]
#
[chara_kakusu]
ルシアの魔法に対する青いバリアが有効なうちは、魔法の攻撃を無効にできます。[p]
ただし、バリアは時間が経つと効果が薄れ、消えてしまいます。[p]
クライストが再度バリアを使ってくれるまでの間、魔法の大ダメージには注意しましょう。[p]
[eval exp="tf.baria_setumei=1"]
[anim name="vaeru" top="+=800" time=200]
[battle_gamen_return]
[endif]
[friend_attack_anime_end]
[endif]



[endmacro]


[macro name="dual_gauge_hyouji"]
;戦場の絆ある場合、合体技ゲージを表示中身はゲージ量に合わせて画像を表示
;合体技ゲージ表示
[if exp="f.rans_battle_kizuna==1||f.lion_battle_kizuna==1||f.kra_battle_kizuna==1||f.glif_battle_kizuna==1"]
;--------------
[if exp="tf.d_gauge_amount==0"]
[elsif exp="tf.d_gauge_amount<11"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge_1.png'"]
[elsif exp="tf.d_gauge_amount<31"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge_2.png'"]
[elsif exp="tf.d_gauge_amount<51"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge_3.png'"]
[elsif exp="tf.d_gauge_amount<71"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge_4.png'"]
[elsif exp="tf.d_gauge_amount<91"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge_5.png'"]
[elsif exp="tf.d_gauge_amount>90"]
[eval exp="tf.dual_gauge_a='dual_gauge/dual_gauge.gif'"]
[endif]
[image layer=2 page=fore visible="true" storage=&tf.dual_gauge_a name="dual_gauge" x=&tf.d_gauge_x y=&tf.d_gauge_y]

[endif]

[endmacro]



[macro name="ouen_dual_gauge"]


;応援した時
;好感度に合わせて増加基本量１０に好感度に合わせて倍にする
[if exp="f.friend==1"]
[eval exp="f.koukando_ga = f.ranskonkando"]
[elsif exp="f.friend==2"]
[eval exp="f.koukando_ga = f.lionkonkando"]
[elsif exp="f.friend==3"]
[eval exp="f.koukando_ga = f.krakonkando"]
[elsif exp="f.friend==5"]
[eval exp="f.koukando_ga = f.glifkonkando"]
[endif]


[eval exp="tf.d_gauge_amount_inc=10"]
[if exp="f.koukando_ga<21"]
[elsif exp="f.koukando_ga<41"]
[eval exp="tf.d_gauge_amount_inc = tf.d_gauge_amount_inc*2"]
[elsif exp="f.koukando_ga<61"]
[eval exp="tf.d_gauge_amount_inc = tf.d_gauge_amount_inc*3"]
[elsif exp="f.koukando_ga<81"]
[eval exp="tf.d_gauge_amount_inc = tf.d_gauge_amount_inc*4"]
[elsif exp="f.koukando_ga>80"]
[eval exp="tf.d_gauge_amount_inc = tf.d_gauge_amount_inc*5"]
[endif]

[eval exp="tf.d_gauge_amount=tf.d_gauge_amount+tf.d_gauge_amount_inc"]

[endmacro]


[macro name="battle_kizuna_ouen"]

[eval exp="tf.irain_hp_p=f.irain_hp_m/2"]
[if exp="f.irain_hp>tf.irain_hp_p"]
[iscript]
tf.o_kakuritu = Math.floor( Math.random() * 3) + 1
[endscript]
[if exp="tf.o_kakuritu!=1"]
[jump target=*f_ouen_no]
[endif]
[endif]

[battle_gamen_idou]
;ランス
[if exp="f.friend==1"]
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_serihu_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_serihu]
[endif]
[font size=23 edge=0x000000]「大丈夫か、[name]。二人で乗り切るぞ」[w][cm]
[chara_hide_all]
[elsif exp="f.friend==2"]
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[image layer=0 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_serihu.png" name="lion" x=0 y=-50]
[image layer=1 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_houtai.png" name="lion" x=5 y=-50]
[w]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_serihu]
[endif]
;ライ
[font size=23 edge=0x000000]「大丈夫だ、俺がついてる！負けるわけにいかねえよな！」[w][cm]
[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[w][w]
[free layer=0 name="lion"]
[free layer=1 name="lion"]
[elsif exp="f.episode_flag!=4"]
[chara_kakusu]
[endif]


[elsif exp="f.friend==3"]
[kra_tatie_battle_serihu]
;クラ
[font size=23 edge=0x000000]「俺がついてるから、心配しなくていいよ。早く終わらせて、二人で楽しもう？」[w][cm]


[chara_hide_all]
[elsif exp="f.friend==5"]
[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_serihu_war]
[elsif exp="f.episode_flag!=4"]
[glif_tatie_battle_serihu]
[endif]

;グリフ
[font size=23 edge=0x000000]「二人で力を合わせましょう。僕たちならできます！」[p]
[chara_hide_all]

[endif]


[eval exp="f.irain_hp_m = f.irain_hp_m+tf.up_hp_irain"]
 [eval exp="f.irain_hp_m = Math.floor(f.irain_hp_m)"]
[eval exp="f.irain_hp= f.irain_hp_m"]

;キラキラ
[playse storage="battle_se/amaishizuku_koukaonlabo.ogg"]
[image layer=3 page=fore storage="kirakira_g.png" name="kirakira_0" height="175" width="306" x=&tf.status_x y=&tf.status_y]
[eval exp="tf.status_y_k=tf.status_y+170"]
[image layer=3 page=fore storage="kirakira_3_g.png" name="kirakira" height="200" width="200" x=&tf.status_x y=&tf.status_y_k]
[eval exp="tf.status_x_k=tf.status_x+50"]
[image layer=3 page=fore storage="kirakira_3_g.png" name="kirakira" height="200" width="200" x=&tf.status_x _k y=&tf.status_y_k]
[w]
[anim name="kirakira_0" top="-=140" time=350]
[anim name="kirakira" top="-=140" time=380]
[anim name="kirakira_0" opacity=0 time=750]
[anim name="kirakira" opacity=0 time=880]
[wait time=700]
[free name="kirakira_0" layer=3]
[free name="kirakira" layer=3]

[if exp="f.irain_hp_m>9998"]
[eval exp="f.irain_hp_m=9999"]
[endif]

[if exp="f.irain_tec>999"]
[eval exp="f.irain_tec=999"]
[endif]

[if exp="f.irain_brain>999"]
[eval exp="f.irain_brain=999"]
[endif]

[if exp="f.irain_charm>999"]
[eval exp="f.irain_charm=999"]
[endif]

[eval exp="f.irain_hp = f.irain_hp_m"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_charm"]
[irain_hp_kousin]


*ouenowari

;[eval exp="tf.ouen_sumi=1"]
[battle_gamen_return]
*f_ouen_no

[endmacro]



[macro name="werumu_last"]
[if exp="f.werumu_battle==1&&f.friend==2"]

;瀕死のとき、そしてライオネスシナリオでイベント
[if exp="tf.monster_hp_1<tf.monster_hp_1_m*0.3"]
;もんぐらとステータス画面を一時的にむーぶ

[item_window_open]
[battle_gamen_idou]

[if exp="tf.irain_sp[1]==1"]
[eval exp="tf.irain_sp[1]=0"]
[eval exp="tf.irain_mahi=0"]
[free name="irain_mahi" layer=2]
[endif]

[werumu_v_tatie_touroku]
[werumu_tatie_vaeru]
#ウェルム
[font size=23 edge=0x000000]「・・・っくっ・・・」[l][cm]

#&f.name
[font size=23 edge=0x000000]（動きが鈍ってきた・・・あともう少し・・・！）[l][cm]

[chara_hide_all]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]
[config_false]
[werumu_tatie_vaeru]
#ライオネス
[font size=23 edge=0x000000]「・・・・・・」[l][cm]

#&f.name
[font size=23 edge=0x000000]（ライオネス・・・）[l][cm]

[werumu_tatie_v_mehuse]
#ウェルム
[font size=23 edge=0x000000]「・・・このっ・・・小娘が・・・っ
[werumu_tatie_v_ikari]
・・・こざかしいわっ！！！！！」[l][cm]

#&f.name
[font size=23 edge=0x000000]「・・・！！！」[l][cm]

[lioness_tatie_odoroki]
#ライオネス
[font size=23 edge=0x000000]「・・・！！！[name]！！！！！」[l][cm]
#
[l][cm]
[chara_hide_all][chara_off]
[battle_gamen_return]
[item_window_close]
[eval exp="tf.irain_target_w=1"]
[eval exp="tf.guard_zero=0"]
[jump storage="scenario_2/mini_game/boss_attack.ks" target=*single_attack]
[endif]
[endif]





[endmacro]

;

[macro name="werumu_last_rans"]

[if exp="f.friend==1"]
;瀕死のとき、そしてイベント
[if exp="tf.monster_hp_1<tf.monster_hp_1_m*0.3"]

[item_window_open]
[battle_gamen_idou]

[werumu_v_tatie_touroku]
[werumu_tatie_vaeru]

[werumu_tatie_v_mehuse]
[fadeoutbgm time=2000]
#ウェルム
[font size=23 edge=0x000000]「っ・・・」[p]


#ウェルム
[font size=23 edge=0x000000]「・・どこで・・・どう・・・歯車が狂った？ランスロット・・・」[p]
#

#ウェルム
[font size=23 edge=0x000000]「お前ほどの切れる男が、わしの考えを理解できぬとは・・・本当に残念だ」[p]
#


[chara_hide_all]
[rans_tatie_touroku]
[rans_tatie_show]
#ランスロット
[font size=23 edge=0x000000]「・・・父上・・・」[p]
#
[config_false]
[werumu_tatie_vaeru]
#ウェルム
[font size=23 edge=0x000000]「なぜだ？誰よりも強くなって、わしのために剣をふるうと・・・お前は言っていたではないか！」[p]
#


[rans_tatie_mehuse]
#ランスロット
[font size=23 edge=0x000000]「・・・見つけたからです」[p]
#


[werumu_tatie_v_odoroki]
#ウェルム
[font size=23 edge=0x000000]「・・・なに？」[p]
#

[rans_tatie_metoji]
#ランスロット
[font size=23 edge=0x000000]「戦う理由を」[p]
#

[werumu_tatie_v_yokome]
#ウェルム
[font size=23 edge=0x000000]「・・理由だと？この国のために命をささげるのが、クレールの騎士というものではないのか」[p]
#

[rans_tatie_mehuse]
#ランスロット
[font size=23 edge=0x000000]「・・・否定はしません。
[rans_tatie_normal]
ですが、それ以上に心から守りたいものがある」[p]
#

#&f.name
[font size=23 edge=0x000000]（ランスロット・・・）[p]
#

[werumu_tatie_v_mehuse]
#ウェルム
[font size=23 edge=0x000000]「・・・なるほどな」[p]
#

[werumu_tatie_v_ikari]
#ウェルム
[font size=23 edge=0x000000]「・・・まったく、いまいましい小娘だ・・・」[p]
#

[rans_tatie_mihiraki][w][w][w]
#ランスロット
[font size=23 edge=0x000000]「！！」[p]
#

#ランスロット
[font size=23 edge=0x000000]「[name]っ！！！！」[p]
#
[chara_hide_all time=50]
#&f.name
[font size=23 edge=0x000000]「！！！！」[p]
#


[anten]
[playse storage="kiru_koukaonlabo.ogg"]
[quake count="3" time="100" hmax="100" vmax="300"]
[image storage="vaerukengeki.png" layer="2" page="fore" visible="true" name="kengeki1" x="0" y="0"]
[camera time="200" x="0" y="-50" zoom="5.2"]
[free name="kengeki1" layer=2]
[playse storage="kiru_koukaonlabo.ogg"]
[image storage="vaerukengeki_h.png" layer="2" page="fore" visible="true" name="kengeki2" x="0" y="0"]
[camera time="50" x="0" y="-50" zoom="5.2"]
[image storage="aka.jpg" layer="3" page="fore" visible="true" x="0" y="0" name="aka" time="1000"]
;血飛沫
[free name="kengeki2" layer=2 time=800]
[w]
[free name="aka" layer=3 time=2000]
[reset_camera]
[runisi]
[live2d_rans_touroku]
[live2d_rans_show_sekkin]
[rans_exp_mihiraki_aseri]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[live2d_fadein time=1000]
[stopse]
#ランスロット
[font size=23 edge=0x000000]「[name]！！[name]！！」[p]
#

[playbgm storage="chinkou_ontama.ogg"]
#&f.name
[font size=23 edge=0x000000]（あ・・・と・・・すこし・・・で・・・そんな・・・）[p]
#


#&f.name
[font size=23 edge=0x000000]（ランス・・・ロット・・・私・・・）[p]
#
[live2d_fadeout time=3000]
[image storage="black.png" page=fore visible=true name="kuro" layer="3" x="0" y="0" time=3000]

#ランスロット
[font size=23 edge=0x000000]「[name]！！」[p]
#

#&f.name
[font size=23 edge=0x000000]（伝えたいことが・・・で・・・も・・・どんどん、暗くなって・・・）[p]
#
[wait time=3000]
[anten]
[free name="kuro" layer=3]
[bg storage="gyokuza_tasogare.jpg"]
[rans_exp_mihiraki_aseri]
[live2d_fadein time=50]

#ランスロット
[font size=23 edge=0x000000]「[name]！！！！！」[p]
#
[rans_mod_idle_no_move_mehuse_2]
[rans_exp_naki]


[fadeoutbgm time=1000]
[config_false]
[werumu_tatie_vaeru]
#ウェルム
[font size=23 edge=0x000000]「・・ふん。
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
たいした娘だ。双剣を使いこなすだけでなく、師匠までもをその虜にするとは」[p]


[werumu_tatie_v_mehuse]
#ウェルム
[font size=23 edge=0x000000]「まあ・・・殺すには惜しかったかもしれんがな・・・寝所のなぐさめくらいにはなったか・・・」[p]

[rans_exp_kunou]
#ランスロット
[font size=23 edge=0x000000]「・・・ち・・・ち・・・うえ・・・」[p]
#

[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
[rans_head_under_y]
#ランスロット
[font size=23 edge=0x000000]「っ・・・」[p]
[rans_mod_idle]
[rans_head_normal]
[rans_exp_ikari]
#
[w][w]
;ランス怒り
[live2d_fadeout time=50]

[werumu_tatie_v_odoroki]
#ウェルム
[font size=23 edge=0x000000]「なっ・・・らんす、ろっと・・・！！！」[p]
#
[chara_hide_all]
[battle_gamen_return]

;即死ようのフラグ
[eval exp="tf.werumu_rans_last=1"]
[jump storage="scenario_2/mini_game/battle_murtiple.ks" target=*tatakau_zentai_friend]
;ランスウェルムに必殺技一撃。ウェルム即死

[endif]
[endif]



[endmacro]











[return]








