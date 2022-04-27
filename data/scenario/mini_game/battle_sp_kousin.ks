;毒の場合イレインに１ダメージ（他キャラは未実装）
[if exp="tf.irain_sp[0]==1"]
[eval exp="f.irain_hp=f.irain_hp-1"]
[free layer=3 name="irain_hp"]
[jump target=*irain_doku]
[else]
[jump target=*friend_doku]
[endif]
*irain_doku
[if exp="f.irain_hp>=1"]
[irain_hp_kousin]
[else]
[jump storage="mini_game/battle2.ks" target=*irain_death]
[endif]

;毒の場合仲間に１ダメージ

*friend_doku
[if exp="tf.friend_doku==1"]
[eval exp="tf.friend_hp=tf.friend_hp-1"]
[free layer=3 name="friend_hp"]
[free layer=3 name="friend_attack"]
[free layer=3 name="friend_guard"]
[jump target=*friend_doku1]
[else]
[jump target=*doku1]
[endif]
*friend_doku1
[if exp="tf.friend_hp>=1"]
[friend_hp_kousin]
[else]
[friend_death]
[endif]





*doku1
;毒の場合モンスターに１ダメージ,そうでなければ次の処理へ
[if exp="tf.sp_doku_1==1"]
[eval exp="tf.monster_hp_1=tf.monster_hp_1-1"]
[free layer=3 name="monster_hp_1"]
[jump target=*doku_damage_1]
[else]
[jump target=*doku2]
[endif]

*doku_damage_1
[if exp="tf.monster_hp_1>=1"]
;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
[monster_gauge]
;毒で死亡の場合、ターゲット変数にデータを更新、死亡処理はまとめて最後に
[elsif exp="tf.monster_1_death!=1"]
[input_monster_data]
[endif]

*doku2
[if exp="tf.sp_doku_2==1"]
[eval exp="tf.monster_hp_2=tf.monster_hp_2-1"]
[free layer=3 name="monster_hp_2"]
[jump target=*doku_damage_2]
[else]
[jump target=*doku3]
[endif]

*doku_damage_2
[if exp="tf.monster_hp_2>=1"]
[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
;毒で死亡の場合
[elsif exp="tf.monster_2_death!=1"]
[input_monster_data]
[endif]

*doku3
[if exp="tf.sp_doku_3==1"]
[eval exp="tf.monster_hp_3=tf.monster_hp_3-1"]
[free layer=3 name="monster_hp_3"]
[jump target=*doku_damage_3]
[else]
[jump target=*death_discrimination]
[endif]

*doku_damage_3
[if exp="tf.monster_hp_3>=1"]
[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_3" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_3" name="monster_hp_3" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]
;毒で死亡の場合
[elsif exp="tf.monster_3_death!=1"]
[input_monster_data]
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

;毒解除
;頭脳によって決まる
[if exp="f.irain_brain<16"]
[eval exp="tf.kakuritu=5"]
[elsif exp="f.irain_brain<36"]
[eval exp="tf.kakuritu=4"]
[elsif exp="f.irain_brain<46"]
[eval exp="tf.kakuritu=3"]
[elsif exp="f.irain_brain<66"]
[eval exp="tf.kakuritu=2"]
[elsif exp="f.irain_brain<86"]
[eval exp="tf.kakuritu=1"]
[else]
[eval exp="tf.kakuritu=1"]
[endif]

[iscript]
tf.kakuritu = Math.floor( Math.random() *tf.kakuritu) + 1
[endscript]

[if exp="tf.kakuritu==1"]
[eval exp="tf.irain_sp[0]=0"]
[free layer=3 name="doku_irain"]
[endif]


;まひ解除
[if exp="tf.kakuritu==1"]
[eval exp="tf.irain_sp[1]=0"]
[free layer=3 name="mahi_irain"]
[endif]

;ねむり解除
[eval exp="tf.irain_sp[2]=0"]
[free layer=3 name="nemuri_irain"]

;味方の特殊状態解除
;毒解除
;[eval exp="tf.friend_doku=0"]
;[free layer=3 name="doku_friend"]


;まひ解除
[eval exp="tf.friend_mahi=0"]
[free layer=3 name="mahi_friend"]


;ねむり解除
[eval exp="tf.friend_nemuri=0"]
[free layer=3 name="nemuri_friend"]


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






