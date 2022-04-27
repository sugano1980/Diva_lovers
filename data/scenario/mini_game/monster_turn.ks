

*monster_turn

;モンスターの攻撃
;何もしないときもあるのでモンスター設定によりランダム,何もしないときはjump

;イレインのステータスレイヤー番号を変更
[irain_hp_layer_change]

;まひのときはジャンプ
[if exp="tf.sp_mahi==1"]
[jump target=*return]
[endif]

[iscript]
tf.attack_random = Math.floor( Math.random() * tf.attack) + 1
[endscript]



[if exp="tf.attack_random!=1"]
;[emb exp="tf.monster_name"]は様子をみている[r][a]
[jump target=*return]
[endif]

[if exp="tf.nigeru==1"]
[iscript]
tf.nigeru_action = Math.floor( Math.random() * 3) + 1
[endscript]
[jump target=*nigeru1]
[endif]
*nigeru1
[if exp="tf.nigeru_action==1"]
;-------
[if exp="tf.target_monster=='monster1'"]
[eval exp="tf.monster_hp=0"]
[monster_death]
[elsif exp="tf.target_monster=='monster2'"]
[eval exp="tf.monster_hp=0"]
[monster_death]
[elsif exp="tf.target_monster=='monster3'"]
[eval exp="tf.monster_hp=0"]
[monster_death]
[endif]

;------
[endif]
;逃亡した場合ここでターン中断
[if exp="tf.monster_hp<1"]
[jump target=*return]
[endif]

[eval exp="tf.monster_damage=tf.monster_attack/2-tf.irain_guard/4"]

[if exp="tf.monster_damage<0"]
[eval exp="tf.monster_damage=0"]
[jump target=*kougeki]
[endif]

[iscript]
tf.monster_damage = Math.floor(tf.monster_damage) 
[endscript]


[eval exp="tf.monster_damage_b=tf.monster_damage-3"]

;ダメージ計算
[iscript]
tf.monster_damage = Math.floor( Math.random() *tf.monster_damage) + tf.monster_damage_b
[endscript]



;[emb exp="tf.monster_name"]の攻撃！[r][a]
*kougeki
[monster_voice]
[monster_attack_anime]


;[jump target=*irain]


*irain


;HPが半分以下で仲間がいた場合かばう

[kabau_anime]


;かわした場合
[iscript]
tf.irain_miss = Math.floor( Math.random() * tf.irain_avoid) + 1
[endscript]

;[if exp="tf.irain_miss==1"]
;;[live2d_motion name="irain" mtn="Jump" no=0]
;[w]

;[monster_attack_return]
;[clearfix name="guard"]
;[free name="guard" layer=3]
;[playse storage="yokeru_onjin.ogg"]
;[name]は攻撃をかわした！[r][a]

;[jump target="*return"]
;[endif]

[if exp="tf.irain_sp[0]==1"]
;[live2d_motion name="irain" mtn="Battle_poison_metoji" no=0]
[w]
[elsif exp="tf.irain_sp[1]==1"]
[else]
;[live2d_motion name="irain" mtn="Battle_damage" no=0]
[w]
[endif]

;ダメージ受ける前に状態変化チェック
[click_stop]
;ダメージ受けたときのアニメ
[damage_frash]
[monster_attack_return]
[clearfix name="guard"]
[if exp="tf.guard==1"]
[guard_success]
[else]
[playse storage="naguru_koukaonlabo.ogg"]
[endif]
[free name="guard" layer=3]

;モンスターで特殊攻撃に入力があれば追加
[if exp="tf.attack_doku==1&&tf.irain_sp[0]!=1&&tf.guard!=1"]
[eval exp="tf.irain_sp[0]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]

;ステータス表示を変更

[playse storage="battle_se/poison_koukaonlabo.ogg"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_irain" x=&tf.irain_face_x y=&tf.irain_sp_y]
[name]はどくをうけた！[r][a]
;[live2d_motion name="irain" mtn="Battle_poison" no=0]
;[live2d_mod name="irain" idle="Battle_poison" no=0]

[endif]


[if exp="tf.attack_mahi==1&&tf.irain_sp[1]!=1&&tf.guard!=1"]
[eval exp="tf.irain_sp[1]=1"]
[eval exp="tf.irain_sp_y=tf.irain_face_y-20"]
[eval exp="tf.irain_mahi_x=tf.irain_face_x+100"]
;ステータス表示を変更
[playse storage="battle_se/mahi_onjin.ogg"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_irain" x=&tf.irain_mahi_x y=&tf.irain_sp_y]
[name]はまひした！[r][a]
;[live2d_motion name="irain" mtn="Battle_mahi" no=0]
;[live2d_mod name="irain" idle="Battle_mahi" no=0]

[endif]


[if exp="tf.attack_nemuri==1&&tf.irain_sp[2]!=1&&tf.guard!=1"]
[eval exp="tf.irain_sp[2]=1"]
[playse storage="battle_se/sleep_onjin.ogg"]
[name]はねむった！[r][a]
[eval exp="tf.irain_nemuri_x=tf.irain_face_x+50"]
;ステータス表示を変更
[image layer=3 page=fore visible="true" storage="nemuri.gif" name="nemuri_irain" x=&tf.irain_nemuri_x y=&tf.irain_sp_y]
[endif]

;ガードゼロの場合０に
[if exp="tf.guard_zero==1||tf.guard==1"]
[eval exp="tf.guard=0"]
[eval exp="tf.monster_damage=0"]
[endif]




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

;HPが０の場合再表示はしない
[if exp="f.irain_hp<1&&tf.irain_death!=1"]
[jump storage="mini_game/battle2.ks" target=*irain_death]
[endif]


[irain_hp_kousin]


[irain_damage_anime]



;[name]は[emb exp="tf.monster_damage"]のダメージを受けた！[r][a]

;[name]HP0の場合
[if exp="f.irain_hp<1&&tf.irain_death!=1"]
[jump storage="mini_game/battle2.ks" target=*irain_death]
[endif]







*return
[if exp="tf.layer_change!=1"]
;HPのレイヤー番号を変更
[irain_hp_layer_change_return]
[else]
[eval exp="tf.layer_change=0"]
[endif]

[return]





























;あまったやつ

*monster_attack
;モンスターの攻撃
;何もしないときもあるのでモンスター設定によりランダム,何もしないときはjump

;まひのときはジャンプ
[if exp="tf.sp_mahi==1"]
[jump target=*return]
[endif]

[iscript]
tf.attack_random = Math.floor( Math.random() * tf.attack) + 1
[endscript]



[if exp="tf.attack_random!=1"]
;[emb exp="tf.monster_name"]は様子をみている[r][a]
[jump target=*return]
[endif]

[if exp="tf.nigeru==1"]
[iscript]
tf.nigeru_action = Math.floor( Math.random() * 3) + 1
[endscript]
[jump target=*nigeru]
[endif]
*nigeru
[if exp="tf.nigeru_action==1"]
[jump target=*return]
[endif]

;[emb exp="tf.monster_name"]の攻撃！[r][a]




;[keyframe name="attack"]

;[frame p=100% scale="20" y="50"]
;[frame p=40% x="100" ]
;[frame p=100% y="-200" opacity=0 ]

;[endkeyframe]


;[kanim keyframe="attack" name="&tf.target_monster" time=700 mode=none]

[wa]
;フラッシュ
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]
[image layer=2 page=fore visible=true name="siro" storage="siro.jpg" time=70]
[free layer=2 name="siro" time=50]
[quake count=5 time=300 vmax=150]

;[name]、味方どちらに攻撃するかランダム
[iscript]
tf.attack_random = Math.floor( Math.random() * tf.attack) + 1
[endscript]

[if exp="tf.attack_random==1"]
[jump storage="mini_game/battle_friend_data.ks" target=*friend_damage]
[else]
[jump target=*irain1]
[endif]

*irain1
;ダメージ受ける
[eval exp="f.irain_hp=f.irain_hp-tf.monster_damage"]
;消去後再表示でHP減少表現
[free layer=3 name="irain_hp"]

;HPが０の場合再表示はしない
[if exp="f.irain_hp<1&&tf.irain_death!=1"]
[jump storage="mini_game/battle2.ks" target=*irain1_death]
[endif]

[ptext layer=3 page=fore visible="true" text="&f.irain_hp" name="irain_hp" size=30 x=15 y=15]
;[name]は[emb exp="tf.monster_damage"]のダメージを受けた！[a]

;[name]HP0の場合
[if exp="f.irain_hp==0"]
[jump storage="mini_game/battle2.ks" target=*irain1_death]
[endif]

;モンスターで特殊攻撃に入力があれば追加（現在は[name]のみの実装）
[if exp="tf.doku==1"]
[eval exp="tf.irain_sp[0]=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="どく" name="doku" size=30 x=15 y=15]

[elsif exp="tf.mahi==1"]
[eval exp="tf.irain_sp[1]=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="まひ" name="mahi" size=30 x=15 y=15]

[elsif exp="tf.nemuri==1"]
[eval exp="tf.irain_sp[2]=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="ねむり" name="nemuri" size=30 x=15 y=15]

[endif]
*friend_back
*turn_end

;２回目かどうか確認
[if exp="tf.except_monster>=1"]
[jump target=*except_monster]
[elsif exp="tf.except_monster==0"]
[eval exp="tf.except_monster=-1"]
[jump target=*turn_end1]
[else]
[call storage="mini_game/monster_attack_another.ks" target=*except_start]
[endif]




*except_monster
[if exp="tf.except_monster==1"]
[jump storage="mini_game/monster_attack_another.ks" target=*again_monster_1]
[elsif exp="tf.except_monster==2"]
[jump storage="mini_game/monster_attack_another.ks" target=*again_monster_2]
[elsif exp="tf.except_monster==3"]
[jump storage="mini_game/monster_attack_another.ks" target=*again_monster_3]
[else]
[endif]









*except_start



;一匹だった場合はそのまま終了
[if exp="tf.monster_number<=1"]
[jump target=*return]
[endif]

;攻撃してないモンスターの数を計算、一匹すでに攻撃しているのでマイナス１
[eval exp="tf.except_number=tf.monster_number-1"]






[if exp="tf.target_monster=='monster1'"]

[jump target=*except_monster1]

[elsif exp="tf.target_monster=='monster2'"]

[jump target=*except_monster2]

[elsif exp="tf.target_monster=='monster3'"]

[jump target=*except_monster3]

[endif]




*except_monster1


;ターゲットモンスターが１の場合,2,3が攻撃
[if exp="tf.monster_hp_2>=1&&tf.attack_mahi_2!=1"]
;一匹攻撃するのでマイナス１
[eval exp="tf.except_number=tf.except_number-1"]
;ターゲットを入れ替え
[monster2_irekae]
[monster_turn]
[endif]



;一度battle2.ksに戻ってしまうので、フラグを立てて戻す
*again_monster_1
[if exp="tf.monster_hp_3>=1&&tf.attack_mahi_3!=1"]
;モンスターのあまり数を計算
[eval exp="tf.except_number=tf.except_number-1"]
[eval exp="tf.except_monster=0"]
;ターゲットを入れ替え
[monster3_irekae]
[monster_turn]
[endif]

[jump target=*return]

*except_monster2
;ターゲットモンスターが２の場合
;モンスターの状態を確認、０または麻痺ではないか
[if exp="tf.monster_hp_1>=1&&tf.attack_mahi_1!=1"]
;攻撃するのでマイナス１
[eval exp="tf.except_number=tf.except_number-1"]
[eval exp="tf.except_monster=2"]
[monster1_irekae]
[monster_turn]
[endif]
;一度battle2.ksに戻ってしまうので、フラグを立てて戻す

*again_monster_2
[if exp="tf.monster_hp_3>=1&&tf.attack_mahi_3!=1"]
;モンスターのあまり数を計算、一匹すでに攻撃しているのでマイナス１
[eval exp="tf.except_number=tf.except_number-1"]
[eval exp="tf.except_monster=0"]
[monster3_irekae]
[monster_turn]
[endif]

[jump target=*return]

*except_monster3

;ターゲットモンスターが３の場合
[if exp="tf.monster_hp_1>=1&&tf.attack_mahi_1!=1"]
;モンスターのあまり数を計算、一匹すでに攻撃しているのでマイナス１
[eval exp="tf.except_number=tf.except_number-1"]
[eval exp="tf.except_monster=3"]
[monster1_irekae]
[monster_turn]
[endif]

*again_monster_3
[if exp="tf.monster_hp_2>=1&&tf.attack_mahi_2!=1"]
;モンスターのあまり数を計算、一匹すでに攻撃しているのでマイナス１
[eval exp="tf.except_number=tf.except_number-1"]
[eval exp="tf.except_monster=0"]
[monster2_irekae]
[monster_turn]
[endif]












