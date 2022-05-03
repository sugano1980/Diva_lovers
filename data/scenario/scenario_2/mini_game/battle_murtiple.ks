;全体攻撃の場合


;主人公の全体攻撃処理
*tatakau_zentai


[cm]


;全体攻撃フラグ（ターゲットひとつに決めないので、current処理を避けるために必要）
[eval exp="tf.battle_murtiple=1"]
;わざ発動、クラとヴァンのわざは特殊効果あり
;[if exp="tf.friend_skill_number==3"]
;[eval exp="tf.poison=1"]
;[elsif exp="tf.friend_skill_number==4"]
;[eval exp="tf.paralysis=1"]
;[endif]


;ダメージ
;ダメージ計算

;必殺
[iscript]
tf.hissatu_irain = Math.floor( Math.random() * tf.hissatu) + 1
[endscript]


;ヒット数をダメージ変数で換算しておく
[eval exp="tf.damage=tf.irain_damage*tf.hit"]

;[if exp="tf.hissatu_irain==1"]
[eval exp="tf.damage=tf.damage*2"]
;[endif]


;スキルアニメーション
[irain_skill_animation]








*damage



;対象が複数と単数の場合で表示わけ
[if exp="tf.monster_number<2"]
;単数の場合
[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[cm][a]
[else]
モンスターたちに[emb exp="tf.damage"]のダメージ！[cm][a]
[endif]
;イレインの攻撃ステータスアニメ終了
[irain_attack_anime_end]


;単数の場合と複数の場合にわけてダメージ計算
;消去後再表示でHP減少表現

[if exp="tf.monster_number<2"]
[jump target=*monster_single]
[else]
[jump target=*monster_murtiple]
[endif]





*sp_check

;この時点でモンスター全滅なら戻る
[if exp="tf.monster_number==0"]
[jump storage="scenario_2/mini_game/battle2.ks" target=*turn_end1]
[endif]

;全体攻撃のフラグをオフ
;特殊状態付与あるかチェック
[eval exp="tf.battle_murtiple=0"]
[call storage="scenario_2/mini_game/monster_sp.ks" target=*attack_murtiple]


*attack_end

;イレインの全体攻撃なので次仲間がいた場合は、元の戦闘シナリオへ戻って仲間の攻撃処理、いなければモンスターのターンへ
[if exp="tf.friend_battle>=1&&tf.battle_turn!=1"]
[jump storage="scenario_2/mini_game/battle2.ks" target=*friend_flag]
[else]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]




;-------------------------------------------------------------------------------------------------------




;仲間の全体攻撃処理
*tatakau_zentai_friend

[cm]

;全体攻撃フラグ
[eval exp="tf.battle_murtiple=1"]
;わざ発動、クラとヴァンのわざは特殊効果あり
[if exp="tf.friend_skill_number==3"]
;[eval exp="tf.poison=1"]
[elsif exp="tf.friend_skill_number==4"]
;[eval exp="tf.paralysis=1"]
[endif]

;ダメージ計算

;
;[iscript]
;tf.hissatu_friend = Math.floor( Math.random() * tf.friend_skill) + 1
;[endscript]

;技なのでわざ用のダメージ計算
;[if exp="tf.hissatu_friend==1"]
[eval exp="tf.damage=tf.damage*3"]
;[endif]

;小数点以下切り捨て
;[eval exp="tf.damage = Math.floor(tf.friend_damage)"]


;スキルアニメーション
[if exp="f.friend==1"]
[rans_skill_animation]
[elsif exp="f.friend==2"]
;ライオネスはHP１の効果なのでフラグ立てておく
[eval exp="tf.lion_skill_damage=1"]
[lion_skill_animation]
[elsif exp="f.friend==3"]
;-----
[eval exp="tf.kra_skill=3"]
[iscript]
tf.kra_skill = Math.floor( Math.random() * tf.kra_skill) + 1
[endscript]

[if exp="tf.kra_skill==1"]
[kra_skill_animation]
[elsif exp="tf.kra_skill==2"]
[eval exp="tf.paralysis=1"]
[kra_skill_animation_2]
[else]
[kra_skill_animation_3]
[endif]


;-----
[elsif exp="f.friend==4"]
[van_animation]
[elsif exp="f.friend==5"]
[glif_skill_animation]
[endif]



*damage_friend
;ダメージ



;対象が複数と単数の場合で表示わけ


;ライオネスの技ではジャンプ
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
[jump target=*friend_attack_owari]
[endif]

[if exp="tf.monster_number<2"]
;単数の場合
;[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[cm][a]
[else]
;モンスターたちに[emb exp="tf.damage"]のダメージ！[cm][a]
[endif]


*friend_attack_owari
;仲間の攻撃ステータスアニメ終了

;ランスシナリオウェルムラスト
[if exp="tf.werumu_rans_last==1"]
[after_battle_lose]
[endif]

[friend_attack_anime_end]
;単数の場合と複数の場合にわけてダメージ計算
;消去後再表示でHP減少表現

[if exp="tf.monster_number<2"]
[jump target=*monster_single]
[else]
[jump target=*monster_murtiple]
[endif]




;単数の場合と複数の場合にわけてダメージ計算
;消去後再表示でHP減少表現

;モンスターへのダメージ処理、単数
*monster_single

;特殊状態付与あるかチェック
[call storage="scenario_2/mini_game/monster_sp.ks" target=*attack_murtiple]

;存在する"一匹"のモンスターを探し出してダメージマイナス、HP表示
;-----------------------------------------------------
[if exp="tf.monster_hp_1>=1"]
;--------
;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_1>1"]
[eval exp="tf.monster_hp_1=1"]
[else]
[eval exp="tf.monster_hp_1=0"]
[jump target=*damage_owari_1]
[endif]
;----
[jump target=*damage_owari_1]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_1=0"]
[jump target=*damage_owari_1]
[endif]
;---ランス



[if exp="tf.battle_turn!=1"]
[eval exp="tf.monster_hp_1=tf.monster_hp_1-tf.damage"]
[else]
[eval exp="tf.monster_hp_1=tf.monster_hp_1-tf.damage"]
[endif]
*damage_owari_1
[free layer=3 name="monster_hp_1"]
;０か確認
[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1"]
*sokusi_1
[monster_death]
[jump target=*attack_end]


[endif]


[monster_gauge_1_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
;-------

[endif]
;-------------------------------------------------------


;------------------------------------------------------
[if exp="tf.monster_hp_2>=1"]
;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_2>1"]
[eval exp="tf.monster_hp_2=1"]
[else]
[eval exp="tf.monster_hp_2=0"]
[jump target=*damage_owari_2]

[endif]
;----
[jump target=*damage_owari_2]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_2=0"]
[jump target=*damage_owari_2]
[endif]
;---ランス

[if exp="tf.battle_turn!=1"]
[eval exp="tf.monster_hp_2=tf.monster_hp_2-tf.damage"]
[else]
[eval exp="tf.monster_hp_2=tf.monster_hp_2-tf.damage"]
[endif]

*damage_owari_2
[free layer=3 name="monster_hp_2"]
;０か確認０なら次の処理へ
[if exp="tf.monster_hp_2<1&&tf.monster_2_death!=1"]
*sokusi_2
[monster_death]
[jump target=*attack_end]
[endif]


[monster_gauge_2_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
;------

[endif]
;------------------------------------------------------

;------------------------------------------------------
[if exp="tf.monster_hp_3>=1"]
;------

;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_3>1"]
[eval exp="tf.monster_hp_3=1"]
[else]
[eval exp="tf.monster_hp_3=0"]
[jump target=*damage_owari_3]

[endif]
;----
[jump target=*damage_owari_3]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_3=0"]
[jump target=*damage_owari_3]
[endif]
;---ランス

[if exp="tf.battle_turn!=1"]
[eval exp="tf.monster_hp_3=tf.monster_hp_3-tf.damage"]
[else]
[eval exp="tf.monster_hp_3=tf.monster_hp_3-tf.damage"]
[endif]

*damage_owari_3
[free layer=3 name="monster_hp_3"]
;０か確認０なら次のフラグへ
[if exp="tf.monster_hp_3<1&&tf.monster_3_death!=1"]
*sokusi_3
[monster_death]
[jump target=*attack_end]
[endif]

[monster_gauge_3_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_3" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_3" name="monster_hp_3" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]
;-----

[endif]
;---------------------------------------------------------

;全体攻撃フラグオフ
[eval exp="tf.battle_murtiple=0"]


;全体攻撃の結果をターゲットモンスターに入力
[if exp="tf.target_monster=='monster1'&&tf.monster_1_death!=1"]
[monster1_irekae]
[elsif exp="tf.target_monster=='monster2'&&tf.monster_2_death!=1"]
[monster2_irekae]
[elsif exp="tf.target_monster=='monster3'&&tf.monster_3_death!=1"]
[monster3_irekae]
[endif]


;イレインのターンだった場合特殊攻撃効果のチェックへ
[if exp="tf.battle_turn!=1"]
[jump target=*sp_check]
[endif]

[if exp="tf.battle_turn==1"]
[eval exp="tf.battle_turn=0"]
[endif]

[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]




;---------------------------------------------------------------------------------------------------------------------------
;モンスターへのダメージ処理、複数
*monster_murtiple





;-------------------------------
[if exp="tf.monster_hp_1>=1"]
;------

;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]

;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_1>1"]
[eval exp="tf.monster_hp_1=1"]
[else]
[eval exp="tf.monster_hp_1=0"]
[endif]
;----
[jump target=*monster_murtiple_2]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_1=0"]
[jump target=*monster_murtiple_2]
[endif]
;---ランス


[eval exp="tf.monster_hp_1=tf.monster_hp_1-tf.damage"]

;------
;０か確認

[endif]
;--------------------------------
*monster_murtiple_2
;------------------------------------------------------------
[if exp="tf.monster_hp_2>=1"]

;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_2>1"]
[eval exp="tf.monster_hp_2=1"]
[else]
[eval exp="tf.monster_hp_2=0"]
[endif]
;----
[jump target=*monster_murtiple_3]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_2=0"]
[jump target=*monster_murtiple_3]
[endif]
;---ランス

[eval exp="tf.monster_hp_2=tf.monster_hp_2-tf.damage"]


;------

[endif]
;----------------------------------
*monster_murtiple_3
;-------------------------------------------------------------
[if exp="tf.monster_hp_3>=1"]
;-----
;----ライオネス
[if exp="tf.lion_skill_damage==1&&f.mukou!=1"]
;---ライオネススキル瀕死に、１以下だった場合は即死
[if exp="tf.monster_hp_3>1"]
[eval exp="tf.monster_hp_3=1"]
[else]
[eval exp="tf.monster_hp_3=0"]
[endif]
;----
[jump target=*monster_murtiple_end]
[endif]
;---ライオネス
;---ランス
[if exp="tf.rans_death==1&&f.mukou!=1"]
[eval exp="tf.monster_hp_3=0"]
[jump target=*monster_murtiple_end]
[endif]
;---ランス


[eval exp="tf.monster_hp_3=tf.monster_hp_3-tf.damage"]


;-----

[endif]
;--------------------------------------------------------------
*monster_murtiple_end
;特殊状態付与あるかチェック

[call storage="scenario_2/mini_game/monster_sp.ks" target=*attack_murtiple]

;モンスター死亡確認複数、同時死亡の場合一気に処理
;１、２、３のモンスター死亡の場合
[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_2<1&&tf.monster_2_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]
[monster_death]


;１、２のモンスター死亡の場合
[elsif exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_2<1&&tf.monster_2_death!=1"]
[monster_death]

;２、３の場合
[elsif exp="tf.monster_hp_2<1&&tf.monster_2_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]
[monster_death]

;１、３の場合
[elsif exp="tf.monster_hp_1<1&&tf.monster_1_death!=1&&tf.monster_hp_3<1&&tf.monster_3_death!=1"]
[monster_death]

[endif]




;モンスターの死亡確認単数、生きていればHP更新
[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1"]
[free layer=3 name="monster_hp_1"]
[monster_death]

[elsif exp="tf.monster_1_death!=1"]

[free layer=3 name="monster_hp_1"]
[monster_gauge_1_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
[endif]


[if exp="tf.monster_hp_2<1&&tf.monster_2_death!=1"]
[free layer=3 name="monster_hp_2"]
[monster_death]
[elsif exp="tf.monster_2_death!=1"]

[free layer=3 name="monster_hp_2"]
[monster_gauge_2_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
[endif]


[if exp="tf.monster_hp_3<1&&tf.monster_3_death!=1"]
[free layer=3 name="monster_hp_3"]
[monster_death]
[elsif exp="tf.monster_3_death!=1"]

[free layer=3 name="monster_hp_3"]
[monster_gauge_3_murti]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_3" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_3" name="monster_hp_3" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[endif]


;全体攻撃フラグオフ

[eval exp="tf.battle_murtiple=0"]


;全体攻撃の結果をターゲットモンスターに入力
[if exp="tf.target_monster=='monster1'&&tf.monster_1_death!=1"]
[monster1_irekae]
[elsif exp="tf.target_monster=='monster2'&&tf.monster_2_death!=1"]
[monster2_irekae]
[elsif exp="tf.target_monster=='monster3'&&tf.monster_3_death!=1"]
[monster3_irekae]
[endif]


;イレインの場合ジャンプ
[if exp="tf.battle_turn!=1"]
[jump target=*sp_check]
[endif]






[eval exp="tf.lion_skill_damage=0"]
[eval exp="tf.battle_turn=0"]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]


[return]













