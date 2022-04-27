

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
[irain_attack_anime]

[iscript]
tf.irain_damage = Math.floor(tf.irain_damage) 
[endscript]


[eval exp="tf.irain_damage = tf.irain_attack/2 - tf.monster_guard/4"]
[iscript]
tf.irain_damage = Math.floor(tf.irain_damage) 
[endscript]

;ヒット数をダメージ変数で換算しておく
[eval exp="tf.damage=tf.irain_damage*tf.hit"]

[if exp="tf.damage<0"]
[eval exp="tf.damage='0'"]
[endif]


;わざ発動
[iscript]
tf.hissatu_irain = Math.floor( Math.random() * tf.hissatu) + 1
[endscript]

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
[jump target=*yokerareta]



[endif]




;ダメージ
;ダメージ計算

;戦うエフェクト
[irain_animation]


;必殺


*monster_sp
;ダメージより先に味方の攻撃による状態変化チェック
[call storage="mini_game/monster_sp.ks" target=*attack_single]



;ダメージ計算
[eval exp="tf.monster_hp=tf.monster_hp-tf.damage"]



;セリフ
;[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[cm]



;イレイン移動させたステータスを戻す
[irain_attack_anime_end]

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
[free name="click" layer=3]
[battle_moji_enemy_turn]
[eval exp="tf.battle_turn=0"]
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
[call storage="mini_game/battle_sp_kousin.ks"]






;イレインの与えるダメージを初期値に
[eval exp="tf.hit=0"]


*zenmetu
[if exp="tf.monster_number==0"]

[jump target=*death]
[endif]

*death

[if exp="tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
;----------------------------


[eval exp="tf.complete_x=tf.x_2-240"]
[eval exp="tf.complete_y=tf.y+10"]

[image layer=3 page=fore visible=true storage="youwin.png" name="complete" x=&tf.complete_x y=-10]

[anim name="complete" top="+=200" time=500]
[free layer=3 name="complete" time=1000]
[fadeoutbgm time=1000]
;イレイン慶
;;[live2d_motion name="irain" mtn="Battle_victory" no=0]
;;[live2d_mod name="irain" idle="Battle_victory" no=0]
[w][w]

[playse storage="battle_win1_onjin.ogg"]
[p]
;おめでとう！！[p]
;モンスター死亡フラグを初期化
[eval exp="tf.monster_1_death=0"]
[eval exp="tf.monster_2_death=0"]
[eval exp="tf.monster_3_death=0"]

;試験の場合フラグ
[if exp="f.event_main_3_days>8"]
[eval exp="f.siken_win=1"]
[endif]

[jump storage="mini_game/after_battle.ks"]



;------------------------------
[else]
[monster_attack_end]
;クリック連打対応
[click_ok]
;[name]のターン！[cm]
[battle_moji_your_turn]
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


[if exp="f.rans_tutrial==2"]

[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]


;[live2d_show name="baka0" x="0.5" y=-1.7 scale=4.3]
[chara_show name="rans" top=10 left=360]
[battle_message]
#ランスロット
「大丈夫か？だが、これくらいで倒れては困るぞ」[p]
;[baka_exp_normal_warai]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
「ダメージを受けると、ステータスの中のH Pが減っていく」[p]
「このH Pが０になると負けてしまうから気をつけるんだ」[p]
「アイテムで回復をしてみるか」[p]
#
「アイテム」のコマンドをクリックして、『キャラメル』を使用してみましょう[p]
キャラメルの欄を二回クリックすることで使用できます[p]
;[live2d_hide name="baka0"]
[chara_hide name="rans"]
;[message_kakusu_ad]
[eval exp="f.rans_tutrial=3"]

[free name="monster1" layer=3]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]



[elsif exp="f.rans_tutrial==3"]

[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]


;[live2d_show name="baka0" x="0.5" y=-1.7 scale=4.3]
[chara_show name="rans" top=10 left=360]

[battle_message]
#ランスロット
「時には身を守って、様子をみることも必要かもしれないな」[p]
;[baka_exp_normal_warai]
「防御のコマンドを選ぶと、攻撃はできないが受けるダメージは半減するぞ」[p]
#
「防御」のコマンドを使ってみましょう。コマンドをクリックしてみてください。[p]
;[live2d_hide name="baka0"]
[chara_hide_all]
;[message_kakusu_ad]
[eval exp="f.rans_tutrial=4"]

[free name="monster1" layer=3]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]


[elsif exp="f.rans_tutrial==4"]

[clearfix name="monster1"]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]

;[live2d_show name="baka0" x="0.5" y=-1.7 scale=4.3]
[chara_show name="rans" top=10  left=360]

[battle_message]

#ランスロット
「時には退却の判断をすることも重要だ。[p]
どうあっても勝てそうにないとき、一時戦闘を取りやめたい時には有効だぞ」[p]
「ただ、時には逃げられない敵もいる。それだけは十分に注意するんだ」[p]
#
 通常の戦闘では、退却することができます。
 イベントなどの戦闘では、退却ができないこともありますので、注意しましょう[p]
 #ランスロット
「戦闘は、このように自分のターンでコマンドを選び、
相手のターンがきて、また自分のターンでコマンドを選択する、その繰り返しになる」[p]
「相手の強さと自分のH Pを確認しながらコマンドは慎重に選ぶようにな」[p]
;[baka_exp_normal_warai]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]

「さあ、あともう少しだ、頑張れ」[p]
#
[eval exp="f.rans_tutrial=5"]

[free name="monster1" layer=3]
[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]


;[live2d_hide name="baka0"]
[chara_hide name="rans"]
;[message_kakusu_ad]
[endif]


;主人公ねむり、まひの場合攻撃不可
[if exp="tf.irain_sp[1]==1||tf.irain_sp[2]==2"]
[jump target=*monster_turn]
[else]
;防御、アイテムなど各種ボタンの後のところに移動しました
[monster_hyouji_modosu]
[clearstack]

[endif]

;ステータス調整再表示
[status_again]
;ボタン表示


[if exp="f.rans_tutrial==3"]


[button graphic="button/toumei.png" name="item" fix=true storage="mini_game/battle_item.ks" target=*item_hyouji x=&tf.battle_command_x_3 y=&tf.battle_command_y_3]
[image layer=2 page=fore visible=true name="item" storage="button/battle_command.png" x=&tf.battle_command_window_x_3 y=&tf.battle_command_window_y_3]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_3" name="item" size=20 x=&tf.battle_command_moji_x_3 y=&tf.battle_command_moji_y_3]


[anim name="item" left="-=800" time=100]
[wait time=100]

[elsif exp="f.rans_tutrial==4"]

[button graphic="button/toumei.png" name="guard" fix=true storage="mini_game/battle2.ks" target=*guard x=&tf.battle_command_x_1 y=&tf.battle_command_y_1]
[image layer=2 page=fore visible=true name="guard" storage="button/battle_command.png" x=&tf.battle_command_window_x_1 y=&tf.battle_command_window_y_1]
[ptext layer=3 page=fore visible="true" text="&tf.battle_command_1" name="guard" size=20 x=&tf.battle_command_moji_x_1 y=&tf.battle_command_moji_y_1]


[anim name="guard" left="-=800" time=100]
[wait time=100]

[else]
[guard_escape_item_button]
[monster_hyouji_modosu]
[clearstack]
[endif]



[s]


[s]


*irain_death
[eval exp="tf.irain_death=1"]
[name]は倒れた！！[l][a]

[if exp="f.friend==0"]
[jump storage="mini_game/after_battle.ks"]
[endif]




[s]

*friend_death
[eval exp="tf.friend_death=1"]
;[emb exp="tf.friend_name"]は倒れた！[a]
[eval exp="tf.friend_battle=0"]

[if exp="tf.irain_death==1"]
[jump storage="mini_game/after_battle.ks"]
[endif]



[s]






;仲間ターン

*friend_flag




;モンスター全滅の場合、ターンエンドへ
[if exp="tf.monster_number==0&&tf.monster_1_death==1&&tf.monster_2_death==1&&tf.monster_3_death==1"]
[jump target=*turn_end1]
[endif]

;仲間がいるか確認、いないならモンスターのターンへ
[if exp="f.friend<1"]
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

[if exp="tf.battle_turn==1&&tf.friend_mahi!=1&&tf.friend_nemuri!=1&&f.friend>=1"]
[friend_attack_anime]
[cm][emb exp="tf.friend_name"]の攻撃！！[l]
;ダメージ計算
[eval exp="tf.friend_damage=tf.friend_hp*0.2"]
;小数点以下切り捨て
[eval exp="tf.damage = Math.floor(tf.friend_damage)"]




;技判定;技なら全体攻撃のシナリオへ
[iscript]
tf.skill_action = Math.floor( Math.random() * tf.friend_skill) + 1
[endscript]

;skill_action=1で技発動かスキルオンリー、またはヴァンで、全体攻撃のシナリオへジャンプ
[if exp="tf.skill_action==1||tf.skill_only==1||f.friend==4"]
[jump storage="mini_game/battle_murtiple.ks" target=*tatakau_zentai_friend]
[endif]


[else]

[jump target=*monster_turn]

[endif]




;ミスの場合かわすエフェクト


;ミス確率計算(命中確率）

;仲間の命中率１から１０、大きいほど命中率高い。ランダムで命中率を計算し、仲間の命中率より小さければヒット。
[if exp="tf.battle_turn==1"]
;-----
[eval exp="tf.friend_attack=tf.friend_hp*0.1"]


[iscript]
tf.meichu = Math.floor( Math.random() * 100) + 1


switch(tf.friend_meichu){
	case 1:
	if(tf.meichu <= 10){
	tf.meichu=1;
	};
	
	break;
	
	case 2:
	if(tf.meichu <= 20){
	tf.meichu=1;
	};
	
	break;
	
	case 3:
	if(tf.meichu <= 30){
	tf.meichu=1;
	};
	
	break;
	
	case 4:
	if(tf.meichu <= 40){
	tf.meichu=1;
	};
	
	break;
	
	case 5:
	if(tf.meichu <= 50){
	tf.meichu=1;
	};
	
	break;
	
	case 6:
	if(tf.meichu <= 60){
	tf.meichu=1;
	};
	
	break;
	
	case 7:
	if(tf.meichu <= 70){
	tf.meichu=1;
	};
	
	break;
	
	case 8:
	if(tf.meichu <= 80){
	tf.meichu=1;
	};
	
	break;
	
	case 9:
	if(tf.meichu <= 90){
	tf.meichu=1;
	};
	
	break;
	
	case 10:
	if(tf.meichu <= 100){
	tf.meichu=1;
	};
	
	break;
}
	
[endscript]

[endif]


[if exp="tf.meichu!=1&&tf.sp_mahi!=1"]
[anim name="&tf.target_monster" top="-=30" time=50]
[anim name="&tf.target_monster" top="+=30" time=50]

[emb exp="tf.monster_name"]は攻撃をかわした！[cm][l]

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
[call storage="mini_game/monster_sp.ks" target=*attack_single]



;ダメージ計算
[eval exp="tf.monster_hp=tf.monster_hp-tf.damage"]




[emb exp="tf.monster_name"]に[emb exp="tf.damage"]のダメージ！[l][cm]
;仲間の攻撃時ステータスアニメを終了
[friend_attack_anime_end]
;モンスター死亡判定
[if exp="tf.monster_hp<1&&tf.monster_death!=1"]
[monster_death]
[endif]

;消去後再表示でHP減少表現
[free layer=3 name="&tf.target_monster_hp"]
;HP０以下の場合再表示なし


[monster_current]

;HP表示は場合わけ
[if exp="tf.target_monster=='monster1'"]

;真ん中
;[monster_gauge]

;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_2_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster2'"]
;左
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4_70 y=&tf.y_3_90]


[elsif exp="tf.target_monster=='monster3'"]
;右
;[ptext layer=3 page=fore visible="true" text="HP:" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp" name="&tf.target_monster_hp" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[else]
[endif]

*friend_turn_end
[jump target=*monster_turn]


;防御
*guard
[free name="click" layer=3]
[clearfix name="escape"]
[free layer=2 name="escape"]
[free layer=3 name="escape"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]

[guard_idou]

[eval exp="tf.irain_guard_y=tf.irain_hp_y+15"]


;;[live2d_motion name="irain" mtn="Battle_guard" no=0]
;;[live2d_mod name="irain" idle="Battle_guard" no=0]

[image layer=3 page=fore visible=true storage="icon_guard.png" name="guard_icon" x=&tf.irain_hp_x y=&tf.irain_guard_y]
[name]は身を守っている！[cm]

[eval exp="tf.irain_guard=1"]
[if exp="f.friend>=1"]
[jump target=*friend_battle]
[else]
[jump target=*monster_turn]
[endif]



;逃げる
*escape

[if exp="f.event_main_3_days>8"]
逃げられない！[p]
[clearfix_menu]
[jump target=*monster_turn]
[endif]
;逃げたフラグ
[eval exp="tf.escape_flag=1"]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[clearfix name="item"]
[free layer=2 name="item"]
[free layer=3 name="item"]

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
[call storage="mini_game/escape.ks"]
[fadeoutbgm time=1000]


[jump storage="mini_game/after_battle.ks"]


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

