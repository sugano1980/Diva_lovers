


;ここからはdual_skill.ks

;合体技を選択した後、モンスターへのダメージ量計算、アニメーションのちダメージ表示
*dual_skill


[clearfix name="escape"]
[free layer=2 name="escape"]
[free layer=3 name="escape"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]

[dual_idou]

[free name="click" layer=3]
[w]
[eval exp="tf.ouen_kaisuu=0"]
[eval exp="tf.d_gauge_amount=0"]
[free name="dual_gauge" layer=2]


;モンスターへのダメージ計算
[eval exp="tf.monster_damage =  tf.irain_attack + tf.friend_attack"]

[if exp="f.friend==1"]
[eval exp="tf.damage_konkando = f.ranskonkando"]
[elsif exp="f.friend==2"]
[eval exp="tf.damage_konkando = f.lionkonkando"]
[elsif exp="f.friend==3"]
[eval exp="tf.damage_konkando = f.krakonkando"]
[elsif exp="f.friend==5"]
[eval exp="tf.damage_konkando = f.glifkonkando"]
[endif]


[if exp="tf.damage_konkando<21"]
[eval exp="tf.damage_konkando=1"]
[elsif exp="tf.damage_konkando<41"]
[eval exp="tf.damage_konkando=2"]
[elsif exp="tf.damage_konkando<61"]
[eval exp="tf.damage_konkando=3"]
[elsif exp="tf.damage_konkando<81"]
[eval exp="tf.damage_konkando=4"]
[elsif exp="tf.damage_konkando>80"]
[eval exp="tf.damage_konkando=5"]
[endif]

[battle_gamen_idou]
;攻撃セリフ
[if exp="f.friend==1"]
[if exp="f.event_war_rans==1&&f.episode_flag==4"]
[rans_tatie_battle_dual_war]
[elsif exp="f.episode_flag!=4"]
[rans_tatie_battle_dual]
[endif]
#ランスロット
[font size=23 edge=0x000000]「さあ、息を合わせるぞ！」[w][cm]
#

[chara_hide_all]
[elsif exp="f.friend==2"]

[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[image layer=0 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_serihu_dual.png" name="lion" x=0 y=-50]
[image layer=1 page=fore visible="true" storage="lion_tatie/Idle_gif_battle_houtai.png" name="lion" x=5 y=-50]
[elsif exp="f.episode_flag!=4"]
[lioness_tatie_battle_dual]
[endif]
#ライオネス
[font size=23 edge=0x000000]「気合入れろ！行くぞ！！」[w]
#
[cm]

[if exp="f.event_war_lion==1&&f.episode_flag==4"]
[free name="lion" layer=0]
[free name="lion" layer=1]
[elsif exp="f.episode_flag!=4"]
[chara_hide_all]
[endif]


[elsif exp="f.friend==5"]
[if exp="f.event_war_glif==1&&f.episode_flag==4"]
[glif_tatie_battle_dual_war]
[elsif exp="f.episode_flag!=4"]
[endif]
#グリフレット
[font size=23 edge=0x000000]「・・・[name]さん、行きますよ！」[w][cm]
#

[chara_hide_all]
[endif]

;クラの場合は攻撃でないのでジャンプ
[if exp="f.friend==3"]

[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]
;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
[endif]

[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]


[jump target=*kra_kougeki]
[endif]


[eval exp="tf.damage = tf.monster_damage*tf.damage_konkando"]
;アタックアニメ
[irain_attack_anime][friend_attack_anime]

;攻撃アニメーション

;----------------技用にボタン状態のモンスターをイメージレイヤーに変更


[if exp="tf.monster_hp_1>=1&&tf.monster_1_death!=1"]

;真ん中
[clearfix name="monster1"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_1_damage" name="monster1" fix=true x=&tf.x_2 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_2>=1&&tf.monster_2_death!=1"]
;左側１
[clearfix name="monster2"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_2_damage" name="monster2" fix=true x=&tf.x_4 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_2_damage" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[endif]


[if exp="tf.monster_hp_3>=1&&tf.monster_3_death!=1"]
;右側１
[clearfix name="monster3"]
[image layer=3 page=fore visible=true storage="&tf.monster_graphic_3_damage" name="monster3" fix=true x=&tf.x_4bunno3 y=&tf.y_3]
;[button graphic="&tf.monster_graphic_3_damage" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]

[endif]

;攻撃アニメーション本体
;ここに挿入

[if exp="f.friend==1"]
[rans_skill_d_animation]
[elsif exp="f.friend==2"]
[lion_skill_d_animation]
[elsif exp="f.friend==5"]
[glif_skill_d_animation]
[elsif exp="f.friend==3"]
*kra_kougeki
[friend_attack_anime]
[eval exp="tf.gattai_skill_kra_hatudou=1"]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[free layer=2 name="status_irain"]
[image layer=2 page=fore visible=true name="status_irain" storage="status_d.png" x=&tf.status_x y=&tf.status_y]
[battle_gamen_idou]
[kra_tatie_battle_dual]
#クライスト
[font size=23 edge=0x000000]「さあ、君の、出番だよ」[p]
#
[playse storage="hikari_koukaonlabo.ogg"]
#&f.name
「えっ・・・」[p]
#
[image storage="ao.png" layer="3" page="fore" visible="true" x="0" y="0" name="ao"]
#&f.name
（何だろう、剣が・・・光って・・・）[p]
#
[free name="ao" layer=3 time=800]
[stopse]
[chara_hide name="kra"]
[friend_attack_anime_end]
双剣に魔剣の力が付与されました。[p]
この力は戦闘終了まで持続します。[p]
[battle_gamen_return]
[jump target=*dual_end]
[endif]
;------------------------------
[monster_damage_anime_murti]


;仲間の場合、hitアニメがないので主人公のダメージアニメで使えるようにx座標とy座標を入力
;真ん中
[eval exp="tf.image_x=tf.x_2"]
[eval exp="tf.image_y=tf.y_3"]
[eval exp="tf.hit_x=tf.image_x+20"]
[eval exp="tf.hit_y=tf.image_y+85"]

;左側１
[eval exp="tf.image_x_1=tf.x_4"]
[eval exp="tf.image_y_1=tf.y_3"]
[eval exp="tf.hit_x_1=tf.image_x_1+20"]
[eval exp="tf.hit_y_1=tf.image_y_1+85"]
;右側１
[eval exp="tf.image_x_2=tf.x_4bunno3"]
[eval exp="tf.image_y_2=tf.y_3"]
[eval exp="tf.hit_x_2=tf.image_x_2+20"]
[eval exp="tf.hit_y_2=tf.image_y_2+85"]

[damage_animation_murti]

;アタックアニメ終了
[if exp="f.friend!=3"]
[irain_attack_anime_end][friend_attack_anime_end]
[endif]
;ダメージ処理
;----------------------------------------------------------
*monster_murtiple
[eval exp="tf.battle_murtiple=1"]
;-------------------------------
[if exp="tf.monster_hp_1>=1"]
;------

[eval exp="tf.monster_hp_1=tf.monster_hp_1-tf.damage"]

;------
;０か確認

[endif]

;--------------------------------
*monster_murtiple_2
;------------------------------------------------------------
[if exp="tf.monster_hp_2>=1"]

[eval exp="tf.monster_hp_2=tf.monster_hp_2-tf.damage"]


;------

[endif]
;----------------------------------
*monster_murtiple_3
;-------------------------------------------------------------
[if exp="tf.monster_hp_3>=1"]
;-----


[eval exp="tf.monster_hp_3=tf.monster_hp_3-tf.damage"]


;-----

[endif]
;--------------------------------------------------------------
*monster_murtiple_end

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

*dual_end
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


[eval exp="tf.lion_skill_damage=0"]
[eval exp="tf.battle_turn=0"]


;----------ダメージ処理終了

[battle_gamen_return]

[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]


;dual_skill.ksここまで





[jump storage="scenario_2/mini_game/battle2.ks" target=*attack_end_flag]


