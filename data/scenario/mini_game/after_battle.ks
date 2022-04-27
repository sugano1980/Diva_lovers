*after_battle



[call storage="mini_game/escape.ks"]
[clearstack]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]


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
;[eval exp="f.irain_tec=0"]
;[eval exp="f.irain_brain=0"]
;[eval exp="f.irain_charm=0"]
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
[eval exp="tf.friend_battle=0"]
[eval exp="tf.friend_doku=0"]
[eval exp="tf.friend_mahi=0"]
[eval exp="tf.friend_nemuri=0"]
[eval exp="tf.friend_death=0"]

;モンスターグループのフラグおふ
[eval exp="f.monster_group_0=0"]
[eval exp="f.monster_group_1=0"]
[eval exp="f.monster_group_2=0"]
[eval exp="f.monster_group_3=0"]
[eval exp="f.monster_group_4=0"]
[eval exp="f.monster_group_5=0"]
[eval exp="f.monster_group_6=0"]
[eval exp="f.monster_group_7=0"]
[eval exp="f.monster_group_8=0"]
[eval exp="f.monster_group_9=0"]
[eval exp="f.monster_group_10=0"]
[eval exp="f.monster_group_11=0"]
[eval exp="f.monster_group_12=0"]
[eval exp="f.monster_group_13=0"]
[eval exp="f.monster_group_14=0"]
[eval exp="f.monster_group_15=0"]
[eval exp="f.monster_group_16=0"]
[eval exp="f.monster_group_17=0"]
[eval exp="f.monster_group_18=0"]
[eval exp="f.monster_group_19=0"]
[eval exp="f.monster_group_20=0"]




[if exp="tf.irain_death==1||tf.escape_flag==1"]

[eval exp="tf.irain_death=0"]
[eval exp="tf.irain_battle=0"]
[eval exp="tf.irain_doku=0"]
[eval exp="tf.irain_mahi=0"]
[eval exp="tf.irain_nemuri=0"]

[if exp="f.rans_tutrial>0"]
[eval exp="f.tutrial_lose=1"]
[jump target=*rans_tutrial_end]
[endif]



;逃げるの場合ジャンプ
[if exp="tf.escape_flag==1"]
[eval exp="tf.escape_flag=0"]
[jump target=*jump]
[endif]

[if exp="f.event_main_3_days>8"]
[eval exp="f.event_main_3_days=0"]
[jump target=*siken_result]
[endif]

[if exp="f.tougijou_level>0"]
[image layer=3 page=fore  name="lose" storage="game_over.png" x=150 y=-300]

[anim name="lose" top="+=500"]
[anim name="lose" top="-=100"]
[anim name="lose" top="+=100"]


[p]

[free name="lose" layer=3]

*jump
[fadeoutbgm time=6000]
[jump target=*tougijou_choice_death]
[endif]


[game_over]
[endif]

[eval exp="tf.irain_death=0"]
[eval exp="tf.irain_battle=0"]
[eval exp="tf.irain_doku=0"]
[eval exp="tf.irain_mahi=0"]
[eval exp="tf.irain_nemuri=0"]


;------------------------------------------
;戦闘終了後のシナリオ
*rans_tutrial_end
[if exp="f.rans_tutrial>0"]

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
;[live2d_delete_all]
[chara_hide_all]
[eval exp="f.rans_tutrial=5"]
[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
[bg storage="tougijou_ac.jpg" time=30]
[fadeoutbgm time=1000][refresh_hanyou]
[chara_on][chara_show name="rans" top=10]
[if exp="f.tutrial_lose==1"]
[eval exp="f.tutrial_lose=0"]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
#ランスロット
「・・・大丈夫か？あまり無理はするな」[p]
[endif]
[jump storage="episode/epi1.ks" target=*battle_end]

[endif]



;---------------------------------------
[if exp="f.tougijou==1&&tf.escape_flag!=1"]
;闘技場、どのレベルで勝利したか
[if exp="f.tougijou_level==1"]
[eval exp="f.tougijou_win_1=1"]
[elsif exp="f.tougijou_level==2"]
[eval exp="f.tougijou_win_2=1"]
[elsif exp="f.tougijou_level==3"]
[eval exp="f.tougijou_win_3=1"]
[elsif exp="f.tougijou_level==4"]
[eval exp="f.tougijou_win_4=1"]
[elsif exp="f.tougijou_level==5"]
[eval exp="f.tougijou_win_5=1"]
[elsif exp="f.tougijou_level==6"]
[eval exp="f.tougijou_win_6=1"]
[elsif exp="f.tougijou_level==7"]
[eval exp="f.tougijou_win_7=1"]
[elsif exp="f.tougijou_level==8"]
[eval exp="f.tougijou_win_8=1"]
[elsif exp="f.tougijou_level==9"]
[eval exp="f.tougijou_win_9=1"]
[elsif exp="f.tougijou_level==10"]
[eval exp="f.tougijou_win_10=1"]
[elsif exp="f.tougijou_level==11"]
[eval exp="f.tougijou_win_11=1"]
[elsif exp="f.tougijou_level==12"]
[eval exp="f.tougijou_win_12=1"]
[elsif exp="f.tougijou_level==13"]
[eval exp="f.tougijou_win_13=1"]
[endif]
[if exp="f.event_main_3_days>8"]
[jump target=*siken_result]
[endif]
[tougijou_kunshou]

*tougijou_choice_death
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[eval exp="tf.escape_flag=0"]
;;[live2d_delete_all]

[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
[anten]
[refresh_hanyou]

*tougijou_choice
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【もう一度挑戦する？】

[glink target=*tc_1 text="（する）" size=17 width=600 x=65 y=200]
[glink target=*tc_2 text="（しない）" size=17 width=600 x=65 y=260]

[s]

*tc_1
 [free name="sentakusi" layer=0]
[hidemenubutton]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[message_kakusu_ad]

[if exp="f.tougijou_level>0"]
[eval exp="f.tougijou_level=0"]
[jump storage="status_macro.ks" target=*choice_level]
[else]
@jump storage="mini_game/battle.ks"
[endif]


*tc_2
 [free name="sentakusi" layer=0]
[hidemenubutton]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[eval exp="f.tougijou=0"]
[eval exp="f.tougijou_level=0"]

[status_hyouji]

[endif]
;----------------------------------


*siken_result
;-----------------------------------
[if exp="f.siken_win==1"]

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
;[live2d_delete_all]
[chara_hide_all]
[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
[anten]
[refresh_hanyou]
[jump storage="episode/epi1.ks" target=*win]

[elsif exp="f.event_main_3_days>8"]

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
;[live2d_delete_all]
[chara_hide_all]
[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
[anten]
[refresh_hanyou]

[jump storage="episode/epi1.ks" target=*lose]

[endif]
;---------------------


*tougijou_end
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
;;[live2d_delete_all]

[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
[anten]

[status_hyouji]




