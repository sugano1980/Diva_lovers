;毒の場合イレインに１ダメージ（他キャラは未実装）
[if exp="tf.irain_sp[0]==1"]
[eval exp="f.irain_hp=f.irain_hp-1"]
[free layer=3 name="irain_hp"]
[endif]
*irain_doku
[if exp="f.irain_hp>=1"]
[irain_hp_kousin]
[else]
[jump storage="scenario_2/mini_game/battle2.ks" target=*irain_death]
[endif]




*death_discrimination
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


;モンスターの死亡確認単数
[if exp="tf.monster_hp_1<1&&tf.monster_1_death!=1"]
[free layer=3 name="monster_hp_1"]
[monster_death]
[endif]


[if exp="tf.monster_hp_2<1&&tf.monster_2_death!=1"]
[free layer=3 name="monster_hp_2"]
[monster_death]
[endif]


[if exp="tf.monster_hp_3<1&&tf.monster_3_death!=1"]
[free layer=3 name="monster_hp_3"]
[monster_death]
[endif]










*target_input

;毒などの効果をターゲットモンスターにも入力


[if exp="tf.target_monster=='monster1'&&tf.monster_1_death!=1"]
[monster1_irekae]
[elsif exp="tf.target_monster=='monster2'&&tf.monster_2_death!=1"]
[monster2_irekae]
[elsif exp="tf.target_monster=='monster3'&&tf.monster_3_death!=1"]
[monster3_irekae]
[endif]





*tokushu_kaijo
;特殊状態を解除するかどうか（現在は場合わけ未実装）

[iscript]
tf.kakuritu = tf.kakuritu-1
[endscript]


;毒解除
;頭脳によって決まる
[if exp="f.irain_brain<100"]
[eval exp="tf.kakuritu=8"]
[elsif exp="f.irain_brain<200"]
[eval exp="tf.kakuritu=7"]
[elsif exp="f.irain_brain<300"]
[eval exp="tf.kakuritu=6"]
[elsif exp="f.irain_brain<400"]
[eval exp="tf.kakuritu=5"]
[elsif exp="f.irain_brain<500"]
[eval exp="tf.kakuritu=4"]
[elsif exp="f.irain_brain<600"]
[eval exp="tf.kakuritu=3"]
[elsif exp="f.irain_brain<701"]
[eval exp="tf.kakuritu=2"]
[endif]

;[elsif exp="f.irain_brain<86"]
;[eval exp="tf.kakuritu=1"]
;[else]
;[eval exp="tf.kakuritu=1"]
;[endif]

[iscript]
tf.kakuritu= Math.floor(Math.random() * tf.kakuritu) + 1
[endscript]


;毒解除
[if exp="tf.kakuritu==1"]
[eval exp="tf.irain_sp[0]=0"]
[eval exp="tf.irain_doku=0"]
[free layer=3 name="doku_irain"]
[endif]

;まひ解除
[if exp="tf.kakuritu==1"]
[eval exp="tf.irain_sp[1]=0"]
[eval exp="tf.irain_mahi=0"]
[free layer=3 name="mahi_irain"]
[endif]

;スキル封じ解除
[if exp="tf.kakuritu==1"]
[eval exp="tf.irain_sp[3]=0"]
[eval exp="tf.skill_impossble=0"]
[free layer=3 name="skill_irain"]
[endif]

;ねむり解除
[eval exp="tf.irain_sp[2]=0"]
[free layer=3 name="nemuri_irain"]


;味方の特殊状態解除


[if exp="tf.friend_guard<100"]
[eval exp="tf.kakuritu_f=10"]
[elsif exp="tf.friend_guard<200"]
[eval exp="tf.kakuritu_f=9"]
[elsif exp="tf.friend_guard<300"]
[eval exp="tf.kakuritu_f=8"]
[elsif exp="tf.friend_guard<400"]
[eval exp="tf.kakuritu_f=7"]
[elsif exp="tf.friend_guard<500"]
[eval exp="tf.kakuritu_f=6"]
[elsif exp="tf.friend_guard<600"]
[eval exp="tf.kakuritu_f=5"]
[elsif exp="tf.friend_guard<701"]
[eval exp="tf.kakuritu_f=4"]
[else]
[eval exp="tf.kakuritu_f=1"]
[endif]

[iscript]
tf.kakuritu_f= Math.floor(Math.random() * tf.kakuritu_f) + 1
[endscript]


;毒解除
[if exp="tf.kakuritu_f==1"]
[eval exp="tf.friend_doku=0"]
[free layer=3 name="doku_friend"]
[endif]

;まひ解除
[if exp="tf.kakuritu_f==1"]
[eval exp="tf.friend_mahi=0"]
[free layer=3 name="mahi_friend"]
[endif]

;ねむり解除
[if exp="tf.kakuritu_f==1"]
[eval exp="tf.friend_nemuri=0"]
[free layer=3 name="nemuri_friend"]
[endif]


;スキル封じ解除
[if exp="tf.kakuritu_f==1"]
[eval exp="tf.friend_skill_no=0"]
[eval exp="tf.skill_f_impossble=0"]
[free layer=3 name="skill_friend"]
[endif]

;スキル封じ解除

;モンスターの毒、まひ解除するかどうか（現在は場合分け未実装）

[free layer=3 name="nemuri"]
;[free layer=3 name="doku_monster_1"]
;[eval exp="tf.sp_doku_1=0"]
;[free layer=3 name="doku_monster_2"]
;[eval exp="tf.sp_doku_2=0"]
;[free layer=3 name="doku_monster_3"]
;[eval exp="tf.sp_doku_3=0"]
[free layer=3 name="mahi_monster_1"]
[eval exp="tf.sp_mahi_1=0"]
[free layer=3 name="mahi_monster_2"]
[eval exp="tf.sp_mahi_2=0"]
[free layer=3 name="mahi_monster_3"]
[eval exp="tf.sp_mahi_3=0"]



[return]






