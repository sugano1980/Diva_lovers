




*start
[refresh_hanyou]
*tougijou



[tougijou_event]
[cm]


[image layer=3 page=fore storage="tougijou_load.gif" name="load" width="175" height="98" x=250 y=200]
[image layer=3 page=fore storage="hagureinu_load.gif" name="load" width="350" height="196" x=260 y=140]


[call storage="mini_game/monster_battle_add.ks"]
[deffont size="21" face=antique bold=true][resetfont]
[call storage="mini_game/battle_animation.ks"]
[call storage="item/item_data.ks"]

[preload storage="data/image/monster/yokuarukinoko.png"]
[preload storage="data/fgimage/monster/hagureinu_damage.png"]
[preload storage="data/image/monster/hagureinu.png"]
[preload storage="data/fgimage/monster/hebi_damage.png"]
[preload storage="data/image/monster/hebi.png"]
[preload storage="data/fgimage/monster/hyouryuudamasii_damage.png"]
[preload storage="data/image/monster/hyouryuudamasii.png"]
[preload storage="data/fgimage/monster/imomusikun_damage.png"]
[preload storage="data/image/monster/imomusikun.png"]
[preload storage="data/fgimage/monster/koumori_damage.png"]
[preload storage="data/image/monster/koumori.png"]
[preload storage="data/fgimage/monster/moguramusi_damage.png"]
[preload storage="data/image/monster/moguramusi.png"]
[preload storage="data/fgimage/monster/obake_damage.png"]
[preload storage="data/fgimage/monster/obake.png"]
[preload storage="data/image/monster/obake.png"]
[preload storage="data/fgimage/monster/obakehana_damage.png"]
[preload storage="data/image/monster/obakehana.png"]
[preload storage="data/fgimage/monster/ooku_damage.png"]
[preload storage="data/image/monster/ooku.png"]
[preload storage="data/fgimage/monster/suraimu_damage.png"]
[preload storage="data/image/monster/suraimu.png"]
[preload storage="data/fgimage/monster/yankidori_damage.png"]
[preload storage="data/image/monster/yankidori.png"]
[preload storage="data/fgimage/monster/yokuarukinoko_damage.png"]
[font face="mincho"]
[resetfont]



[cm]


[layopt layer=3 visible=true]



[iscript]
		var x = 800;
		var y = 600;


		// 表示位置
	    tf.x_2 = x/2-64
	    tf.y_2 = y/2
	    
	    tf.x_3 = x/3-64
	    tf.y_3 = y/3+30
	    
	    tf.x_4_n =x/4 
	    
	    tf.x_4 = x/4-64
	    tf.y_4 = y/4
	    
	    
	    tf.x = x
	    tf.y = y
	
	    	    

	[endscript]
	
;バトルコマンドの表示位置
[eval exp="tf.battle_command_x_1=1430"]
[eval exp="tf.battle_command_y_1=78"]
[eval exp="tf.battle_command_x_2=tf.battle_command_x_1"]
[eval exp="tf.battle_command_y_2=128"]
[eval exp="tf.battle_command_x_3=tf.battle_command_x_2"]
[eval exp="tf.battle_command_y_3=178"]
;コマンドウィンドウの表示位置
[eval exp="tf.battle_command_window_x_1=tf.battle_command_x_1-5"]
[eval exp="tf.battle_command_window_x_2=tf.battle_command_x_2-5"]
[eval exp="tf.battle_command_window_x_3=tf.battle_command_x_3-5"]
[eval exp="tf.battle_command_window_y_1=tf.battle_command_y_1-15"]
[eval exp="tf.battle_command_window_y_2=tf.battle_command_y_2-15"]
[eval exp="tf.battle_command_window_y_3=tf.battle_command_y_3-15"]

;文字の表示位置
[eval exp="tf.battle_command_moji_x_1=tf.battle_command_x_1+50"]
[eval exp="tf.battle_command_moji_x_2=tf.battle_command_x_2+50"]
[eval exp="tf.battle_command_moji_x_3=tf.battle_command_x_3+35"]

[eval exp="tf.battle_command_moji_y_1=tf.battle_command_y_1-4"]
[eval exp="tf.battle_command_moji_y_2=tf.battle_command_y_2-4"]
[eval exp="tf.battle_command_moji_y_3=tf.battle_command_y_3-5"]

;コマンドの文字
[eval exp="tf.battle_command_1='防御'"]
[eval exp="tf.battle_command_2='退却'"]
[eval exp="tf.battle_command_3='アイテム'"]

	
	
	
;モンスターHP,イレインHP、能力値、ダメージ変数、特殊状態変数,モンスターhpチェック用変数




;行管理フラグ
[eval exp="tf.line=0"]
;イレインの技術、頭脳、魅力数値
;[eval exp="f.irain_tec=30"]
;[eval exp="f.irain_brain=30"]
;[eval exp="f.irain_charm=30"]
;どく、まひ、ねむりの順に配列。状態になっていると１がはいる
[eval exp="tf.irain_sp=[0,0,0]"]

;イレインの与えるダメージの計算、HPの計算
[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]
[eval exp="tf.irain_attack=f.irain_tec"]
;イレインの防御計算
[eval exp="tf.irain_guard=f.irain_tec+f.irain_brain"]
[eval exp="tf.irain_guard=tf.irain_guard/2"]
;イレインの攻撃回避率
[eval exp="tf.irain_avoid=100/f.irain_tec"]
;小数点以下切り捨て
[eval exp="tf.irain_avoid = Math.floor(tf.irain_avoid)"]

;イレインの最大HP記憶
[eval exp="f.irain_hp_m=f.irain_hp"]
;イレインの必殺確率
[eval exp="tf.hissatu=3"]

;与えるダメージ用変数を定義
[eval exp="tf.damage=0"]
[eval exp="tf.damage_1=0"]
[eval exp="tf.damage_2=0"]
[eval exp="tf.damage_3=0"]
;イレインのヒット回数用変数
[eval exp="tf.hit=0"]

;経験値取得フラグ
[eval exp="tf.exp_yet_1=0"]
[eval exp="tf.exp_yet_2=0"]
[eval exp="tf.exp_yet_3=0"]

[if exp="f.rans_tutrial==1"]
[elsif exp="f.event_main_3_days==0"]
[endif]

;背景イメージを変数に（必殺表示用

[eval exp="tf.bgimage_battle_0='tougijou_ac.jpg'"]

;bgm

[if exp="f.event_main_3_days==0"]
[playbgm storage="sentou_siken.ogg"]
[else]
[playbgm storage="battle_bgm.ogg"]
[endif]




;モンスターグループを呼びにいき、グループを決定

[call storage="mini_game/monster_data.ks" target=*monster_group]

;その後データを参照しにいき、データtf.monster_hp tf.damage,特殊攻撃、tf.expを入力する

[jump storage="mini_game/monster_data.ks" target=*monster_data]
*modotta

;モンスターの数を別変数に記憶※経験値獲得計算のときに必要
[eval exp="tf.monster_number_first=tf.monster_number"]

;モンスターゲージ用、最大HPを変数に

[eval exp="tf.monster_hp_1_m=tf.monster_hp_1"]
[eval exp="tf.monster_hp_2_m=tf.monster_hp_2"]
[eval exp="tf.monster_hp_3_m=tf.monster_hp_3"]

;モンスター防御力計算
[if exp="tf.monster_id_no_1>10"]
[eval exp="tf.monster_guard_1=tf.monster_damage_1/2"]
[elsif exp="tf.monster_id_no_1<11"]
[eval exp="tf.monster_guard_1=tf.monster_damage_1/3"]
[endif]
[if exp="tf.monster_id_no_2>10"]
[eval exp="tf.monster_guard_2=tf.monster_damage_2/2"]
[elsif exp="tf.monster_id_no_2<11"]
[eval exp="tf.monster_guard_2=tf.monster_damage_2/3"]
[endif]
[if exp="tf.monster_id_no_3>10"]
[eval exp="tf.monster_guard_3=tf.monster_damage_3/2"]
[elsif exp="tf.monster_id_no_3<11"]
[eval exp="tf.monster_guard_3=tf.monster_damage_3/3"]
[endif]

;味方スキルの追加効果無効判定
[if exp="tf.monster_sp_no_1==10||f.monster_sp_no_2==10||f.monster_sp_no_3==10"]
[eval exp="f.mukou=1"]
[endif]



[cm]
[bg storage=&tf.bgimage_battle_0 time=50]


[macro name="battle_message"]
;	メッセージウィンドウの設定
[position layer="message1" width="514" height="280" top="10" left="10"]
[position layer="message1" frame="toumei.png" margint="60" marginl="30" marginr="30" page="fore"]

;	名前枠の設定
[free name="chara_name_area" layer="message1"]
	[ptext name="chara_name_area" layer="message1" size="26" bold="bold" shadow="0x333333" x="9" y="50"]
	[chara_config ptext="chara_name_area"]
[eval exp="f.ad=1"]
[layopt layer=message1 visible=true]
[current layer="message1"]
[endmacro]

[battle_message]
;ロード用の画像消去
[free name="load" layer=3]


[if exp="tf.monster_number==1"]        
[emb exp="tf.monster_name_1"]が現れた！[a]

[else]                
モンスターが現れた！[a]
[endif]
;闘技場の場合バトル回数記憶
[if exp="f.tougijou==1"]
[eval exp="f.tougijou_battle_time=f.tougijou_battle_time+1"]
[endif]
[battle_moji_start]

;ステータス表示
*status

[cm]


[call storage="macro.ks"]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[call storage="mini_game/monster_battle_add.ks"]
[deffont size="21" face=antique bold=true][resetfont]



[eval exp="tf.message_width=514"]
[eval exp="tf.message_height=280"]
[eval exp="tf.message_top=360"]
[eval exp="tf.message_left=90"]









[clearfix name="kinou_button"]
[clearfix name="role_button"]
[free name="jump_off" layer=3]

[layopt layer=3 visible=true]







[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]

[free layer=3 name="siro" time=300]




;仲間のサンプル入力
[eval exp="f.friend=0"]
;仲間の顔イメージ変数入力
[if exp="f.friend==1"]
[eval exp="tf.chara_face='battle_face/ranslott_face.png'"]
[elsif exp="f.friend==2"]
[eval exp="tf.chara_face='battle_face/lioness_face.png'"]
[elsif exp="f.friend==3"]
[eval exp="tf.chara_face='battle_face/klaist_face.png'"]
[elsif exp="f.friend==5"]
[eval exp="tf.chara_face='battle_face/glif_face.png'"]
[endif]

;ステータス表示

*setumei_return
;仲間がいる場合といない場合でステータス位置のX座標は変化
[if exp="f.friend>=1"]
[eval exp="tf.status_x=tf.x_4-35"]
[else]
[eval exp="tf.status_x=tf.x_4+118"]
[endif]

[eval exp="tf.status_y=tf.y_2+100"]
[image layer=2 page=fore visible=true name="status_irain" storage="status.png" x=&tf.status_x y=&tf.status_y]
;イレイン顔表示



[eval exp="tf.irain_face_x=tf.status_x+140"]
[eval exp="tf.irain_face_y=tf.status_y+20"]

[image layer=3 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]

[irain_hp_kousin]




;同行者がいる場合は追加
[if exp="f.friend>=1"]
[call storage="mini_game/battle_friend_data.ks"]

;ターンフラグと生存フラグ
[eval exp="tf.battle_turn=0"]
[eval exp="tf.friend_battle=1"]
[eval exp="tf.friend_doku=0"]
[eval exp="tf.friend_mahi=0"]
[eval exp="tf.friend_nemuri=0"]
[eval exp="tf.friend_death=0"]

;仲間ステータス表示
[eval exp="tf.friend_status_x=tf.x/2+20"]
[eval exp="tf.friend_status_y=tf.y_2+100"]

[image layer=2 page=fore visible=true name="status_friend" storage="status.png" x=&tf.friend_status_x y=&tf.friend_status_y]

;顔表示
[eval exp="tf.friend_face_x=tf.friend_status_x+140"]
[eval exp="tf.friend_face_y=tf.friend_status_y+20"]

[image layer=3 page=fore visible=true name="friend_face" storage="&tf.chara_face" x=&tf.friend_face_x y=&tf.friend_face_y]

[friend_hp_kousin]


[else]
[endif]














;[plugin name=timer]
;[timer_set minuts=0 seconds=2 timeupstorage=mini_game/battle_finish.ks]
;[timer_start]
[cm]




*guard_escape_item
;防御、退却、アイテムボタン表示

[if exp="f.rans_tutrial==1||f.event_main_3_days==0"]

[else]
;バトルスタート、モンスター攻撃可能に
[eval exp="tf.battle_start=1"]

[guard_escape_item_button]
[endif]
[battle_moji_your_turn]



;[plugin name=timer]
;[timer_set minuts=0 seconds=2 timeupstorage=mini_game/battle_finish.ks]
;[timer_start]
[cm]


[eval exp="tf.x_2_70=tf.x_2+70"]
;６４はモンスターグラの横幅半分
[eval exp="tf.x_2_64=tf.x_2+64"]
[eval exp="tf.x_2_84=tf.x_2+84"]
[eval exp="tf.x_2_20=tf.x_2+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]
[eval exp="tf.y_3_80=tf.y_3+90"]
[eval exp="tf.y_3__15=tf.y_3-15"]



;モンスターの数によっていないモンスターに死亡フラグ
[if exp="tf.monster_number==2"]
[eval exp="tf.monster_1_death=1"]
[elsif exp="tf.monster_number==1"]
[eval exp="tf.monster_2_death=1"]
[eval exp="tf.monster_3_death=1"]
[endif]

*monster_hyouji


;モンスター表示３匹の場合

[if exp="tf.monster_number==3"]



;戦闘スタート前の攻撃防止
[if exp="tf.battle_start==1"]
;真ん中
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]


;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" width=&tf.gauge_hp_length x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]




;左側１



[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4 y=&tf.click_y]

[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]

[eval exp="tf.x_4_70=tf.x_4+82"]
[eval exp="tf.x_4_20=tf.x_4+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]

[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" width=&tf.gauge_hp_length x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]

;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]




;右側１

[eval exp="tf.x_4bunno3=tf.x_4_n*3-64"]

[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4bunno3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]


[eval exp="tf.x_4bunno3_70=tf.x_4bunno3+82"]
[eval exp="tf.x_4bunno3_20=tf.x_4bunno3+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]


;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_3" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_3" name="monster_hp_3" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]




[elsif exp="tf.monster_number==2"]
;２匹の場合,モンスター１がいない

;左側



[if exp="tf.battle_start==1"]
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4 y=&tf.click_y]


[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]




[eval exp="tf.x_4_70=tf.x_4+82"]
[eval exp="tf.x_4_20=tf.x_4+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]


;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]




;右側

[eval exp="tf.x_4bunno3=tf.x_4_n*3-64"]


[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4bunno3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]

[eval exp="tf.x_4bunno3_70=tf.x_4bunno3+82"]
[eval exp="tf.x_4bunno3_20=tf.x_4bunno3+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]


;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_3" size=30 x=&tf.x_4bunno3_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_3" name="monster_hp_3" size=30 x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]

;表示されないモンスターは死亡フラグ
[eval exp="tf.monster_1_death=1"]


;------------
[elsif exp="tf.monster_number==2&&tf.monster_2_death==1"]

;２匹の場合,モンスター２がいない、３と１

;真ん中
[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]

[eval exp="tf.x_2_70=tf.x_2+70"]
[eval exp="tf.x_2_20=tf.x_2+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" width=&tf.gauge_hp_length x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]

;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
;表示されないモンスターは死亡フラグ
[eval exp="tf.monster_2_death=1"]


;右側１

[eval exp="tf.x_4bunno3=tf.x_4_n*3-64"]

[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_4bunno3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]

[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_3" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4bunno3_70 y=&tf.y_3_90]


[elsif exp="tf.monster_number==2&&tf.monster_3_death==1"]
;２匹の場合,モンスター3がいない、1と2

;真ん中
[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]

[eval exp="tf.x_2_70=tf.x_2+70"]
[eval exp="tf.x_2_20=tf.x_2+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" width=&tf.gauge_hp_length x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]

;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]

;表示されないモンスターは死亡フラグ
[eval exp="tf.monster_3_death=1"]

[if exp="tf.battle_start==1"]
[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]




[eval exp="tf.x_4_70=tf.x_4+82"]
[eval exp="tf.x_4_20=tf.x_4+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]


;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]









[else]

;一匹の場合


[if exp="tf.battle_start==1"]
;真ん中
;アタッククリックの目印
[eval exp="tf.click_y=tf.y_3+10"]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]

[eval exp="tf.x_2_70=tf.x_2+70"]
[eval exp="tf.x_2_20=tf.x_2+20"]
[eval exp="tf.y_3_90=tf.y_3+90"]

[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_10.png" width=&tf.gauge_hp_length x=&tf.x_2_84 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_1" storage="battle_animation/monster_gauge_window.png" x=&tf.x_2_84 y=&tf.y_3_90]

;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_1" size=30 x=&tf.x_2_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_1" name="monster_hp_1" size=30 x=&tf.x_2_70 y=&tf.y_3_90]
;表示されないモンスターは死亡フラグ
[eval exp="tf.monster_2_death=1"]
[eval exp="tf.monster_3_death=1"]





[endif]

;モンスターH P計算
;10分割
;10分の1
[eval exp="tf.monster_hp_1_sample_10_1=tf.monster_hp_1_m/10"]
;10分の2
[eval exp="tf.monster_hp_1_sample_10_2=tf.monster_hp_1_sample_10_1*2"]
;10分の3
[eval exp="tf.monster_hp_1_sample_10_3=tf.monster_hp_1_sample_10_1*3"]
;10分の4
[eval exp="tf.monster_hp_1_sample_10_4=tf.monster_hp_1_sample_10_1*4"]
;10分の5
[eval exp="tf.monster_hp_1_sample_10_5=tf.monster_hp_1_sample_10_1*5"]
;10分の6
[eval exp="tf.monster_hp_1_sample_10_6=tf.monster_hp_1_sample_10_1*6"]
;10分の7
[eval exp="tf.monster_hp_1_sample_10_7=tf.monster_hp_1_sample_10_1*7"]
;10分の8
[eval exp="tf.monster_hp_1_sample_10_8=tf.monster_hp_1_sample_10_1*8"]
;10分の9
[eval exp="tf.monster_hp_1_sample_10_9=tf.monster_hp_1_sample_10_1*9"]

;モンスター２のゲージ
;10分の1
[eval exp="tf.monster_hp_2_sample_10_1=tf.monster_hp_2_m/10"]
;10分の2
[eval exp="tf.monster_hp_2_sample_10_2=tf.monster_hp_2_sample_10_1*2"]
;10分の3
[eval exp="tf.monster_hp_2_sample_10_3=tf.monster_hp_2_sample_10_1*3"]
;10分の4
[eval exp="tf.monster_hp_2_sample_10_4=tf.monster_hp_2_sample_10_1*4"]
;10分の5
[eval exp="tf.monster_hp_2_sample_10_5=tf.monster_hp_2_sample_10_1*5"]
;10分の6
[eval exp="tf.monster_hp_2_sample_10_6=tf.monster_hp_2_sample_10_1*6"]
;10分の7
[eval exp="tf.monster_hp_2_sample_10_7=tf.monster_hp_2_sample_10_1*7"]
;10分の8
[eval exp="tf.monster_hp_2_sample_10_8=tf.monster_hp_2_sample_10_1*8"]
;10分の9
[eval exp="tf.monster_hp_2_sample_10_9=tf.monster_hp_2_sample_10_1*9"]

;10分の1
[eval exp="tf.monster_hp_3_sample_10_1=tf.monster_hp_3_m/10"]
;10分の2
[eval exp="tf.monster_hp_3_sample_10_2=tf.monster_hp_3_sample_10_1*2"]
;10分の3
[eval exp="tf.monster_hp_3_sample_10_3=tf.monster_hp_3_sample_10_1*3"]
;10分の4
[eval exp="tf.monster_hp_3_sample_10_4=tf.monster_hp_3_sample_10_1*4"]
;10分の5
[eval exp="tf.monster_hp_3_sample_10_5=tf.monster_hp_3_sample_10_1*5"]
;10分の6
[eval exp="tf.monster_hp_3_sample_10_6=tf.monster_hp_3_sample_10_1*6"]
;10分の7
[eval exp="tf.monster_hp_3_sample_10_7=tf.monster_hp_3_sample_10_1*7"]
;10分の8
[eval exp="tf.monster_hp_3_sample_10_8=tf.monster_hp_3_sample_10_1*8"]
;10分の9
[eval exp="tf.monster_hp_3_sample_10_9=tf.monster_hp_3_sample_10_1*9"]





;[monster_gauge]
[click_ok]
[if exp="f.rans_tutrial==1"]
;[live2d_show name="baka0" x="0.5" y=-1.7 scale=4.3]
[chara_show name="rans" storage="rans_tatie/rans_idle_gif_mehuse_mousiwakenai.gif" top=10 left=360]
[w]
;[baka_exp_mehuse_kutiake]
;[baka_eyes_right]
#ランスロット
「共に戦えなくて、すまない」[p]
;[baka_eyes_normal]
;[baka_exp_normal]

[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
「ただ今はお前の試練だ。頑張って欲しい」[p]
「いつまでも私が手助けするわけにはいかないからな」[p]
#

#ランスロット
「戦い方は説明しなくても大丈夫か？」[p]
#

*battle_tutrial
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【戦闘の説明をしてもらいますか？】

[glink target=*battle_t_1 text="（してもらう）" size=17 width=600 x=65 y=200]
[glink target=*battle_t_2 text="（大丈夫）" size=17 width=600 x=65 y=260]

[s]

*battle_t_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「よし、わかった」[p]
#

[jump target=*setumei]



*battle_t_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#ランスロット
「十分に気を付けろよ」[p]
#
;[live2d_hide name="baka0" time=1000]
[chara_hide_all]
[eval exp="f.rans_tutrial=6"]
[eval exp="tf.battle_start=1"]
[jump target=*status]


*setumei
#ランスロット
「敵に攻撃をする時には、直接カーソルを合わせて叩くんだ」[p]
「叩いた数によって、ダメージも変わってくるぞ。素早く連続で攻撃するのがコツだ」[p]
#
攻撃をしてみましょう。モンスターに直接カーソルを合わせてクリックします。[p]
;[live2d_hide name="baka0" time=1000]
[chara_hide_all]
[eval exp="f.rans_tutrial=2"]
[eval exp="tf.battle_start=1"]
[jump target=*setumei_return]



;[message_kakusu_ad]

[endif]


[if exp="f.event_main_3_days==0"]
[eval exp="f.event_main_3_days=9"]
;[live2d_show name="lioness" y=-1.5 x=0.5 scale=3.3]
;[lioness_arms_udekumi]
;[lioness_face_chottoikari]
[chara_show name="lion" height="698" width="456" top=-35 left=360]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]

#ライオネス
「いいか！！こんな犬っころに負けやがったら承知しねーかんな！」[p]
#
#&f.name
（が、頑張ろう！！）[p]
#
;[live2d_hide name="lioness"]
[chara_hide_all]
[jump target=*setumei_return]
[endif]

*battle_tutrial_end

[if exp="tf.battle_start==1"]
[clearstack]
[s]
[else]
[jump target=*status]
[endif]





[s]






*guard_escape_return_item



[clearfix_item]

[wait time=500]
[clearstack]
[jump storage="mini_game/battle2.ks" target=*return]












