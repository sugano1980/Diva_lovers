*attack_single

;味方キャラ、毒、まひの変数に１があればモンスターに状態変化なにもなければモンスターのターンにジャンプ
;[iscript]
;tf.sp_action = Math.floor( Math.random() * tf.sp) + 1
;[endscript]

;状態変化に１はいればかかる、はいらなかったらジャンプ
;[if exp="tf.sp_action!=1"]
;[jump target=*monster_turn]
;[endif]

[if exp="tf.poison==1&&tf.monster_death!=1"]
[eval exp="tf.sp_doku=1"]
[jump target=*sp_monster_hyouji_doku]
[elsif exp="tf.paralysis==1&&tf.monster_death!=1"]
[eval exp="tf.sp_mahi=1"]
[jump target=*sp_monster_hyouji_mahi]
[else]
[jump target=*monster_turn]
[endif]

*sp_monster_hyouji_doku
;表示はそれぞれ違うので場合わけ
;毒の場合
;状態変化表示の座標（yのみでおけ）
[eval exp="tf.doku_y=tf.y_3_90-110"]
[if exp="tf.target_monster=='monster1'"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_1" x=&tf.x_2_20 y=&tf.doku_y]
[eval exp="tf.sp_doku=1"]

[elsif exp="tf.target_monster=='monster2'"]

[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_2" x=&tf.x_4_20 y=&tf.doku_y]
[eval exp="tf.sp_doku=1"]

[elsif exp="tf.target_monster=='monster3'"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_3" x=&tf.x_4bunno3_20 y=&tf.doku_y]
[eval exp="tf.sp_doku=1"]

[endif]
;まひにフラグなければジャンプ
[if exp="tf.paralysis!=1&&tf.monster_death!=1"]
[jump target=*doku_only]
[endif]


*sp_monster_hyouji_mahi
;まひの場合
[eval exp="tf.mahi_y=tf.y_3_90-110"]

[if exp="tf.target_monster=='monster1'"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_1" x=&tf.x_2_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi=1"]

[elsif exp="tf.target_monster=='monster2'"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_2" x=&tf.x_4_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi=1"]

[elsif exp="tf.target_monster=='monster3'"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_3" x=&tf.x_4bunno3_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi=1"]
[endif]

*doku_only
[monster_current]

[return]

;-------------------------------------------------------------------------------------------------------------------
*attack_murtiple


;味方キャラに特殊効果の変数に１あった場合ランダムでつける
;いないモンスターにつけてもバトル最後で０にするので問題ない
;味方キャラ、毒、まひの変数に１があればモンスターに状態変化なにもなければモンスターのターンにジャンプ
;[iscript]
;tf.sp_action_1 = Math.floor( Math.random() * tf.sp_1) + 1
;[endscript]
;[iscript]
;tf.sp_action_2 = Math.floor( Math.random() * tf.sp_2) + 1
;[endscript]
;[iscript]
;tf.sp_action_3 = Math.floor( Math.random() * tf.sp_3) + 1
;[endscript]

;状態変化に１はいればかかる、はいらなかったらジャンプ
;[if exp="tf.sp_action!=1"]
;[jump target=*monster_turn]
;[endif]


*doku
[if exp="tf.poison==1&&tf.monster_1_death!=1"]
[eval exp="tf.sp_doku_1=1"]
[else]
[jump target=*doku1]
[endif]
*doku1
[if exp="tf.poison==1&&tf.monster_2_death!=1"]
[eval exp="tf.sp_doku_2=1"]
[else]
[jump target=*doku2]
[endif]
*doku2
[if exp="tf.poison==1&&tf.monster_3_death!=1"]
[eval exp="tf.sp_doku_3=1"]
[else]
*doku3
[jump target=*mahi]
[endif]





*hyouji_doku
[jump target=*sp_monster_hyouji_doku_murti]

*sp_monster_hyouji_doku_murti
;表示はそれぞれ違うので場合わけ
;毒の場合
;状態変化表示の座標（yのみでおけ）
[eval exp="tf.doku_y=tf.y_3_90-110"]

[if exp="tf.monster_hp_1>=1"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_1" x=&tf.x_2_20 y=&tf.doku_y]
[eval exp="tf.sp_doku_1=1"]
[endif]

[if exp="tf.monster_hp_2>=1"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_2" x=&tf.x_4_20 y=&tf.doku_y]
[eval exp="tf.sp_doku_2=1"]
[endif]

[if exp="tf.monster_hp_3>=1"]
[image layer=3 page=fore visible="true" storage="doku.gif" name="doku_monster_3" x=&tf.x_4bunno3_20 y=&tf.doku_y]
[eval exp="tf.sp_doku_3=1"]
[endif]


*doku3
[jump target=*mahi]

*mahi
[if exp="tf.paralysis==1&&tf.monster_1_death!=1"]
[eval exp="tf.sp_mahi_1=1"]
[else]
[jump target=*mahi1]
[endif]
*mahi1
[if exp="tf.paralysis==1&&tf.monster_2_death!=1"]
[eval exp="tf.sp_mahi_2=1"]
[else]
[jump target=*mahi2]
[endif]
*mahi2
[if exp="tf.paralysis==1&&tf.monster_3_death!=1"]
[eval exp="tf.sp_mahi_3=1"]
[else]
[jump target=*mahi3]
[endif]







[jump target=*sp_monster_hyouji_mahi_murti]




*sp_monster_hyouji_mahi_murti
;まひの場合
[eval exp="tf.mahi_y=tf.y_3_90-110"]

[if exp="tf.monster_hp_1>=1"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_1" x=&tf.x_2_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi_1=1"]
[endif]

[if exp="tf.monster_hp_2>=1"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_2" x=&tf.x_4_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi_2=1"]
[endif]

[if exp="tf.monster_hp_3>=1"]
[image layer=3 page=fore visible="true" storage="mahi.gif" name="mahi_monster_3" x=&tf.x_4bunno3_70 y=&tf.mahi_y]
[eval exp="tf.sp_mahi_3=1"]
[endif]



*mahi3
[jump target=*monster_turn]
*monster_turn
*特殊効果のフラグ消去
;[eval exp="tf.poison=0"]
;[eval exp="tf.paralysis=0"]





[return]
























