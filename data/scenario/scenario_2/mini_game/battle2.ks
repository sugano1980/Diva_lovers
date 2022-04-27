

;１番、２番、３番の情報をひとつの処理ですむように共通の変数に代入
;防御、退却、アイテムのボタンを消去

*tatakau_monster1
[wait time=500]
[if exp="tf.item_hyouji==1"]
[clearfix_item]
[eval exp="tf.item_hyouji=0"]

[else]

[clearfix_menu]

[endif]




[monster1_irekae]


[jump target=*tatakau]


*tatakau_monster2
[wait time=500]

[if exp="tf.item_hyouji==1"]
[clearfix_item]
[eval exp="tf.item_hyouji=0"]

[else]

[clearfix_menu]

[endif]

[monster2_irekae]
  
[jump target=*tatakau]


*tatakau_monster3
[wait time=500]
[if exp="tf.item_hyouji==1"]
[clearfix_item]
[eval exp="tf.item_hyouji=0"]

[else]

[clearfix_menu]

[endif]

[monster3_irekae]
    
    
*tatakau
[click_stop]
;モンスターをイメージ状態に、イレインのステータスレイヤー番号を変更
[monster_attack_prepare]


	
	



[cm]



*battle_start



;テスト用
;[eval exp="tf.poison=1"]

;イレインのステータスを動かす

;イレイン表示
[if exp="tf.irain_sp[0]==1"]
;;[live2d_motion name="irain" mtn="Battle_attack1_poison" no=0]
[else]
;;[live2d_motion name="irain" mtn="Battle_attack1" no=0]
[endif]



[free name="click" layer=3]
[w]

;セリフ
;[name]の攻撃！！[a]
;応援のフラグおふ
[eval exp="tf.ouen_kaisuu=0"]
[irain_attack_anime]

[if exp="tf.gattai_skill_kra_hatudou==1"]
[eval exp="tf.irain_damage=tf.friend_attack+f.irain_tec"]

[eval exp="tf.irain_damage=tf.irain_damage*tf.damage_konkando"]
[eval exp="tf.paralysis=1"]

;ダメージ計算
[iscript]
tf.irain_damage = Math.floor(tf.irain_damage) 
[endscript]



[else]

[eval exp="tf.irain_damage = tf.irain_attack/2 - tf.monster_guard/4"]
[iscript]
tf.irain_damage = Math.floor(tf.irain_damage) 
[endscript]

[endif]


;ヒット数をダメージ変数で換算しておく
[eval exp="tf.damage=tf.irain_damage*tf.hit"]

[if exp="tf.damage<0"]
[eval exp="tf.damage=0"]
[endif]

;イレインが攻撃したフラグ（仲間のダメージ計算に使用
[eval exp="tf.irain_attack_sumi=1"]
;わざ発動
[iscript]
tf.hissatu_irain = Math.floor( Math.random() * tf.hissatu) + 1
[endscript]
;スキル取得まだの場合（カーニバル編イベント；もしくはわざ封じのばあい
[if exp="f.skill_yet==1||tf.skill_impossble==1"]
[jump target=*skill_jump]
[endif]

;---------------
;わざフラグか、スキルオンリーが１ならわざ
[if exp="tf.hissatu_irain==1"]

;ダメージ計算
[eval exp="tf.irain_damage = tf.irain_attack/2"]
[eval exp="tf.damage=tf.irain_damage*tf.hit"]
[iscript]
tf.damage = Math.floor(tf.damage) 
[endscript]

[if exp="tf.damage<0"]
[eval exp="tf.damage=0"]
[endif]


[jump storage="scenario_2/mini_game/battle_murtiple.ks" target=*tatakau_zentai]

[endif]

;--------------

[if exp="tf.skill_only==1"]

;ダメージ計算
[eval exp="tf.irain_damage = tf.irain_attack/2"]
[eval exp="tf.damage=tf.irain_damage*tf.hit"]
[iscript]
tf.damage = Math.floor(tf.damage) 
[endscript]

[if exp="tf.damage<0"]
[eval exp="tf.damage=0"]
[endif]

[jump storage="scenario_2/mini_game/battle_murtiple.ks" target=*tatakau_zentai]

[endif]

;-----------------

*skill_jump

;ミスの場合かわすエフェクト


;ミス確率計算(命中確率）


[iscript]
tf.meichu = Math.floor( Math.random() * f.irain_tec) + 1
[endscript]




[if exp="tf.meichu==1&&tf.sp_mahi!=1"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]

[playse storage="yokeru_onjin.ogg"]
;セリフ
;[emb exp="tf.monster_name"]は攻撃をかわした！[cm]
[w]
[irain_attack_anime_end]
[jump target=*friend_battle]



[endif]




;ダメージ
;ダメージ計算

;主人公の場合
[if exp="tf.hawk_eye==1"]
[eval exp="tf.damage=tf.irain_damage*3"]
[endif]


;戦うエフェクト
[irain_animation]





;必殺


*monster_sp
;ダメージより先に味方の攻撃による状態変化チェック
[call storage="scenario_2/mini_game/monster_sp.ks" target=*attack_single]



;ダメージ計算
[eval exp="tf.monster_hp=tf.monster_hp-tf.damage"]



;セリフ
;[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[cm]



;イレイン移動させたステータスを戻す
[irain_attack_anime_end]

;魔剣状態の場合
[if exp="tf.gattai_skill_kra_hatudou==1"]
[kaihuku_animation]
[full_kaihuku]
[free layer=3 name="irain_hp"]
[irain_hp_kousin]

[if exp="f.friend>=1&&tf.friend_death!=1"]
[eval exp="tf.friend_hp = tf.friend_hp_m"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[friend_hp_kousin]
[endif]

[endif]

;モンスター死亡判定
[if exp="tf.monster_hp<1&&tf.monster_death!=1"]
[monster_death]
[endif]

;消去後再表示でHP減少表現
;[free layer=3 name="&tf.target_monster_hp"]
;HP０以下の場合再表示なし



;HP表示は場合わけ
[if exp="tf.target_monster=='monster1'"]

;真ん中

[monster_gauge_1]
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_2_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster2'"]
;左
[monster_gauge_2]
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster3'"]
;右
[monster_gauge_3]
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[else]
[endif]


;ここでモンスターの更新、ターゲット変数データを元データへ
[monster_current]


*friend_battle

[if exp="tf.friend_battle==1"]
[jump target=*friend_flag]
[else]
[jump target=*monster_turn]
[endif]


*yokerareta
*monster_turn
[if exp="tf.glif_turn>0"]
[free layer=3 name="turn"]
[eval exp="tf.glif_turn=tf.glif_turn-1"]
[eval exp="tf.battle_turn=0"]
[eval exp="tf.irain_attack_sumi=0"]
[ptext layer=3 page=fore name="turn" visible=ture size=20 text="優先先攻あと" x=400 y=10]
[ptext layer=3 page=fore name="turn" visible=ture size=20 text=&tf.glif_turn x=550 y=10]
[ptext layer=3 page=fore name="turn" visible=ture size=20 text="ターン" x=600 y=10]
[eval exp="tf.hit=0"]
[if exp="tf.glif_turn==0"]
[free layer=3 name="turn"]
[endif]

[gif_hyouji]
[jump target=*hajimari]
[endif]


[free name="click" layer=3]
[battle_moji_enemy_turn]
[eval exp="tf.hit=0"]
[eval exp="tf.battle_turn=0"]
[eval exp="tf.irain_attack_sumi=0"]
[monster_turn]





*turn_end1
;一応・・・
[monster_current]



;防御だった場合フラグオフ
[if exp="tf.irain_guard==1"]
[eval exp="tf.irain_guard=0"]
[free layer=3 name="guard_icon"]
[endif]

;イレイン、仲間、モンスター特殊状態の更新
[call storage="scenario_2/mini_game/battle_sp_kousin.ks"]






;イレインの与えるダメージを初期値に
[eval exp="tf.hit=0"]


*zenmetu
[if exp="tf.monster_number==0"]

[jump target=*death]
[endif]

*death


[if exp="tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
;----------------------------

[if exp="f.event_main_11!=1&&f.rusia_battle==1"]
[free name="vaeru" layer=3]
[endif]

[if exp="tf.kra_baria>0"]
[free name="kra_baria_b" layer=3]
[endif]

[if exp="f.rans_battle_kizuna==1||f.lion_battle_kizuna==1||f.kra_battle_kizuna==1||f.glif_battle_kizuna==1"]
[free name="dual_gauge" layer=2]
[free name="dual_gauge" layer=3]
[endif]

[eval exp="tf.complete_x=tf.x/2-280"]
[eval exp="tf.complete_y=tf.y+10"]

[image layer=3 page=fore visible=true storage="youwin.png" name="complete" x=&tf.complete_x y=-10]

[anim name="complete" top="+=200" time=500]
[free layer=3 name="complete" time=1000]

;応援されてた場合にHPを戻す
[eval exp="f.irain_hp = f.irain_tec + f.irain_brain + f.irain_charm"]
[free layer=3 name="irain_name"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_charm"]
[free layer=3 name="status_irain"]
[irain_hp_kousin]
;イレイン慶
;;[live2d_motion name="irain" mtn="Battle_victory" no=0]
;;[live2d_mod name="irain" idle="Battle_victory" no=0]
[w][w]
[if exp="f.event_main_5_1==1"]
[jump target=*jump_main_5]
[endif]
[fadeoutbgm time=1000]
[playse storage="battle_win1_onjin.ogg"]
[p]

;おめでとう！！[p]
;男性キャラから褒め言葉
[homekotoba]
*jump_main_5
;モンスター死亡フラグを初期化
[eval exp="tf.monster_1_death=0"]
[eval exp="tf.monster_2_death=0"]
[eval exp="tf.monster_3_death=0"]

;試験の場合フラグ
[if exp="f.event_main_3_days>8"]
[eval exp="f.siken_win=1"]
[endif]

[jump storage="scenario_2/mini_game/after_battle.ks"]



;------------------------------
[else]

[monster_attack_end]

;クリック連打対応
*hajimari
[click_ok]
;[name]のターン！[cm]
[battle_moji_your_turn][eval exp="tf.ouen_sumi=0"]
[eval exp="tf.battle_turn_kaisuu=tf.battle_turn_kaisuu+1"]
[wait time=500]
;-----------------------------
[endif]

*return

;毒
[if exp="tf.irain_sp[0]==1"]
;;[live2d_motion name="irain" mtn="Battle_poison" no=0]
;;[live2d_mod name="irain" idle="Battle_poison" no=0]

;麻痺
[elsif exp="tf.irain_sp[1]==1"]
;;[live2d_motion name="irain" mtn="Battle_mahi" no=0]
;;[live2d_mod name="irain" idle="Battle_mahi" no=0]

[elsif exp="f.irain_hp<f.irain_hp_m/3"]

;;[live2d_motion name="irain" mtn="Battle_kamae_hinsi" no=0]
;;[live2d_mod name="irain" idle="Battle_kamae_hinsi" no=0]



[else]

;;[live2d_motion name="irain" mtn="Battle_kamae" no=0]
;;[live2d_mod name="irain" idle="Battle_kamae" no=0]

[endif]




;主人公ねむり、まひの場合攻撃不可
[if exp="tf.irain_sp[1]==1||tf.irain_sp[2]==2"]

;----------
[if exp="tf.friend_battle==1"]
[jump target=*friend_flag]
[endif]

[jump target=*monster_turn]
[else]
;防御、アイテムなど各種ボタンの後のところに移動しました
[guard_escape_item_button]

[monster_hyouji_modosu]
[clearstack]

[endif]

;ステータス調整再表示
[status_again]

[if exp="tf.kra_baria>0"]

[free name="kra_baria_b" layer=3]
[if exp="tf.kra_baria==0"]
[eval exp="tf.baria_sumi=0"]
[elsif exp="tf.kra_baria==1"]
[image layer=3 page=fore visible=true name="kra_baria_b" storage="battle_animation/kra_magic/baria_kra_6_1.png" x=&tf.baria_x y=&tf.baria_y time=800]
[elsif exp="tf.kra_baria==2"]
[image layer=3 page=fore visible=true name="kra_baria_b" storage="battle_animation/kra_magic/baria_kra_6_0.png" x=&tf.baria_x y=&tf.baria_y time=800]
[endif]
[endif]


;ボタン表示





[s]


[s]


*irain_death
[eval exp="tf.irain_death=1"]
[name]は倒れた！！[l][a]

;[if exp="f.friend==0"]
[jump storage="scenario_2/mini_game/after_battle.ks"]
;[endif]




[s]

*friend_death
[eval exp="tf.friend_death=1"]
[emb exp="tf.friend_name"]は倒れた！[a]
[eval exp="tf.friend_battle=0"]

[if exp="tf.irain_death==1"]
[jump storage="scenario_2/mini_game/after_battle.ks"]
[endif]



[s]






;仲間ターン

*friend_flag




;モンスター全滅の場合、ターンエンドへ
[if exp="tf.monster_number==0&&tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
[jump target=*turn_end1]
[endif]

;仲間がいるか,戦闘可能か確認、いないならモンスターのターンへ
[if exp="f.friend<1||tf.friend_battle!=1"]
[jump target=*monster_turn]
[endif]

;イレインのターゲットがいなくなったとき、あるいはイレインが防御、動けないときモンスターのターゲットを設定
;*共通変数へと代入

[if exp="tf.irain_sp[1]==1||tf.irain_guard==1"]
[jump target=*irain_mahi]
[endif]


[if exp="tf.monster_hp<1&&tf.monster_death==1"]
[jump target=*irain_mahi]
[endif]

;下にあるirain_mahiで処理、戻ってきたら仲間のターン準備、すでに仲間のターンが終わっていればモンスターのターン
*irain_mahi_modoru
[if exp="tf.friend_battle>=1&&tf.battle_turn==0"]
[eval exp="tf.battle_turn=1"]
;オートなのでモンスターのボタン状態を切り替え
[monster_hyouji_kirikae]
[jump target=*battle_start_friend]
[elsif exp="tf.battle_turn==1"]
[jump target=*monster_turn]
[endif]


[cm]



*battle_start_friend


;ミス確率計算(命中確率）

;仲間の命中率１から１０、大きいほど命中率高い。ランダムで命中率を計算し、仲間の命中率より小さければヒット。
[if exp="tf.battle_turn==1"]
;-----
;特別なイベントがあればここで発動
[boss_sp_event]
;仲間からの応援がある場合ここで
[if exp="f.rans_battle_kizuna==1&&f.friend==1||f.lion_battle_kizuna==1&&f.friend==2||f.kra_battle_kizuna==1&&f.friend==3||f.glif_battle_kizuna==1&&f.friend==5"]
[if exp="f.irain_hp<f.irain_hp_m"]
[battle_kizuna_ouen]
[endif]
[endif]

[iscript]
tf.meichu = Math.floor( Math.random() * 100) + 1
[endscript]

[if exp="tf.meichu>tf.friend_meichu&&tf.ouen_sumi!=1"]
[eval exp="tf.meichu=1"]
[endif]


[endif]

[if exp="tf.battle_turn==1&&tf.friend_mahi!=1&&tf.friend_nemuri!=1&&f.friend>=1"]
[friend_attack_anime]
;[cm][emb exp="tf.friend_name"]の攻撃！！[l]

;------------------------------------------------------
;グリフの技効果中はグリフは技なし
[if exp="f.friend==5&&tf.glif_turn>0||f.rusia_l_size==1&&f.event_main_11==1"]
[jump target=*skip]
;エルム戦ライオンスキルオンリー
[elsif exp="f.friend==2&&f.event_war_lion==1&&f.episode_flag==4"]
[jump target=*skill_event]
[endif]
;----------------------------------------------------------
;技判定;技なら全体攻撃のシナリオへ
;スキル封じの場合ジャンプ
[if exp="tf.skill_f_impossble==1"]
[jump target=*skill_jump_f]
[endif]

[iscript]
tf.skill_action = Math.floor( Math.random() * tf.friend_skill) + 1
[endscript]

;skill_action=1で技発動かスキルオンリー、またはヴァンで、全体攻撃のシナリオへジャンプ
[if exp="tf.skill_action==1||tf.skill_only==1||tf.ouen_sumi==1"]
*skill_event
;ダメージ計算防御無視
[eval exp="tf.friend_damage = tf.friend_attack/2"]
;小数点以下切り捨て
[eval exp="tf.damage = Math.floor(tf.friend_damage)"]
;イレインのヒット数を追加
;-------
[if exp="tf.irain_attack_sumi==1"]
[eval exp="tf.damage=tf.damage*tf.hit"]
[endif]
;-----
[if exp="tf.damage<0"]
[eval exp="tf.damage=0"]
[endif]
;-----

[jump storage="scenario_2/mini_game/battle_murtiple.ks" target=*tatakau_zentai_friend]

[endif]
*skill_jump_f
;ダメージ計算
[eval exp="tf.friend_damage = tf.friend_attack/2 - tf.monster_guard/4"]
;小数点以下切り捨て
[eval exp="tf.damage = Math.floor(tf.friend_damage)"]
;イレインのヒット数を追加
;------
[if exp="tf.irain_attack_sumi==1"]
[eval exp="tf.damage=tf.damage*tf.hit"]
[endif]
;--------
[if exp="tf.damage<0"]
[eval exp="tf.damage=0"]
[endif]
;--------
;応援フラグ消去
[eval exp="tf.ouen_sumi=0"]

[else]

[jump target=*monster_turn]

[endif]









*skip
[if exp="tf.meichu==1&&tf.sp_mahi!=1"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]
[playse storage="yokeru_onjin.ogg"]
[emb exp="tf.monster_name"]は攻撃をかわした！[cm]
[eval exp="tf.meichu=0"]
;仲間のアタックステータスアニメを終了
[friend_attack_anime_end]
[jump target=*friend_turn_end]

[endif]



;戦うエフェクト


[if exp="f.friend==1"]
[rans_animation]
[elsif exp="f.friend==2"]
[lion_animation]
[elsif exp="f.friend==3"]
[kra_animation]
[elsif exp="f.friend==4"]
[van_animation]
[elsif exp="f.friend==5"]
[glif_animation]
[endif]






;ダメージ
;ダメージ計算

;必殺







*monster_sp_nakama
;ダメージより先に味方の攻撃による状態変化チェック
[call storage="scenario_2/mini_game/monster_sp.ks" target=*attack_single]



;ダメージ計算
[eval exp="tf.monster_hp=tf.monster_hp-tf.damage"]




;[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[l][cm]
;仲間の攻撃時ステータスアニメを終了
[friend_attack_anime_end]
*attack_end_flag
;モンスター死亡判定
[if exp="tf.monster_hp<1&&tf.monster_death!=1"]
[monster_death]
[endif]

;消去後再表示でHP減少表現
;[free layer=3 name="&tf.target_monster_hp"]
;HP０以下の場合再表示なし


[monster_current]

;HP表示は場合わけ
[if exp="tf.target_monster=='monster1'"]

;真ん中
[monster_gauge_1]

;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_2_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster2'"]
;左
[monster_gauge_2]
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster3'"]
;右
[monster_gauge_3]
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[else]
[endif]

*friend_turn_end
[jump target=*monster_turn]


;防御改め応援
*guard
[free name="click" layer=3]
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

[guard_idou]

[eval exp="tf.irain_guard_y=tf.irain_hp_y+15"]



[if exp="f.friend>0&&tf.friend_battle>0&&tf.guard_kakuritu==2&&f.rusia_l_size!=1"]

;仲間の応援効果
[friend_ouen][ouen_dual_gauge][dual_gauge_hyouji]

[elsif exp="f.friend>0&&tf.friend_battle>0&&tf.guard_kakuritu==2&&f.rusia_l_size==1&&f.event_main_11!=1"]

;仲間の応援効果
[friend_ouen][ouen_dual_gauge][dual_gauge_hyouji]


[else]
[image layer=3 page=fore visible=true storage="icon_guard.png" name="guard_icon" x=&tf.irain_hp_x y=&tf.irain_guard_y]
[name]は身を守っている！[cm]
[eval exp="tf.irain_guard=1"]
[endif]

[if exp="f.friend>=1"]
[jump target=*irain_mahi_modoru]
[else]
[jump target=*monster_turn]
[endif]

;逃げる
*escape
[jump storage="scenario_2/mini_game/escape_impossible.ks"]
*escape_yes
;応援されてた場合にHPを戻す
[eval exp="f.irain_hp = f.irain_tec + f.irain_brain + f.irain_charm"]
[free layer=3 name="irain_name"]
[free layer=3 name="irain_hp"]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_charm"]
[free layer=3 name="status_irain"]
[irain_hp_kousin]


;逃げたフラグ
[eval exp="tf.escape_flag=1"]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]

[if exp="tf.d_gauge_amount>99"]
[clearfix name="dual"]
[free layer=2 name="dual"]
[free layer=3 name="dual"]
[endif]

[escape_idou]

;モンスターに関係するフラグを全てゼロ


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

;行管理フラグ
[eval exp="tf.line=0"]
;どく、まひ、ねむりの順に配列。状態になっていると１がはいる
[eval exp="tf.irain_sp=[0,0,0]"]

[eval exp="tf.hissatu=0"]
[eval exp="tf.damage=0"]
[eval exp="tf.damage_1=0"]
[eval exp="tf.damage_2=0"]
[eval exp="tf.damage_3=0"]
[eval exp="tf.hit=0"]

;ターンフラグと生存フラグ
[eval exp="tf.battle_turn=0"]
[eval exp="tf.friend_battle=1"]
[eval exp="tf.friend_doku=0"]
[eval exp="tf.friend_mahi=0"]
[eval exp="tf.friend_nemuri=0"]
[eval exp="tf.friend_death=0"]

;戦闘に関する全てのフラグをオフ
[call storage="scenario_2/mini_game/escape.ks"]
[fadeoutbgm time=1000]


[jump storage="scenario_2/mini_game/after_battle.ks"]


[s]



*irain_mahi
[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
[monster1_irekae]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
[monster2_irekae]
[endif]

[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
[monster3_irekae]
[endif]

[jump target=*irain_mahi_modoru]

