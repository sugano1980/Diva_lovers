




*start
[refresh_hanyou]
*tougijou


[tougijou_event]
[cm]


[if exp="f.tougijou==1"]
[image layer=3 page=fore storage="tougijou_load.gif" name="load" width="175" height="98" x=250 y=200]
[image layer=3 page=fore storage="hagureinu_load.gif" name="load" width="350" height="196" x=260 y=140]
[endif]


[call storage="scenario_2/mini_game/monster_battle_add.ks"]
[call storage="scenario_2/mini_game/battle_bg.ks"]
[deffont size="21" face=antique bold=true][resetfont]
[call storage="scenario_2/mini_game/battle_animation.ks"]
[call storage="scenario_2/item/battle_item_data.ks"]
[call storage="scenario_2/mini_game/after_battle_macro.ks"]

;---
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
[preload storage="data/fgimage/monster/igyou_1_damage.png"]
[preload storage="data/image/monster/igyou_1.png"]
[preload storage="data/image/rusia_tatie/rusia_normal.png"]
[preload storage="data/fgimage/rusia_tatie/rusia_normal_damage.png"]
[preload storage="data/fgimage/vaeru_hontai.png"]

[preload storage="data/fgimage/battle_animation/glif/glif_skill_2.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_11.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_1.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_10.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_12.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_9.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_8.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_3.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_13.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_14.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_15.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_7.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_6.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_16.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_5.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_4.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_17.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_18.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_skill_0.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_4.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_5.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_3.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_6.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_7.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_2.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_8.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_1.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_0.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_9.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_10.png"]
[preload storage="data/fgimage/battle_animation/glif/glif_sword_11.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_3.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_2.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_1.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_4.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_5.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_7.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_6.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_8.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_0.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_9.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_5.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_4.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_6.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_3.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_2.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_7.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_1.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_0.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_8.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_10.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_6.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_7.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_8.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_5.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_4.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_3.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_2.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_1.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_10.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_0.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_9.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_9.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_6.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_8.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_0_9.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_7.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_10.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_6.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_5.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_8.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_7.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_11.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_4.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_3.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_11.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_13.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_2.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_12.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_0.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_1.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_3.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_5.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_4.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_2.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_1_14.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_1.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_13.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_12.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_11.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_skill_2_0.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_7.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_10.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_8.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_9.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_6.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_5.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_4.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_3.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_2.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_1.png"]
[preload storage="data/fgimage/battle_animation/kra/kra_sword_0.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_7.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_6.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_8.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_5.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_4.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_9.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_3.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_2.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_1.png"]
[preload storage="data/fgimage/battle_animation/kra_magic/kra_magic_0.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_12.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_3.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_20.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_4.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_13.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_5.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_14.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_21.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_15.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_11.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_2.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_22.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_6.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_23.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_19.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_7.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_16.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_10.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_1.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_24.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_18.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_4.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_3.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_5.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_6.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_0.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_9.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_2.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_1.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_7.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_17.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_0.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_8.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_8.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_9.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_1.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_2.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_0.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_8.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_3.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_9.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_4.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_7.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_5.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_skill_6.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_6.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_5.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_4.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_7.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_8.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_3.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_2.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_1.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_0.png"]
[preload storage="data/fgimage/battle_animation/rans/rans_sword_9.png"]
[preload storage="data/fgimage/battle_animation/rusia/vaeru_jimen.gif"]
[preload storage="data/fgimage/battle_animation/rusia/rusia_fire0.png"]
[preload storage="data/fgimage/battle_animation/rusia/rusia_fire1.png"]
[preload storage="data/fgimage/battle_animation/rusia/vaeru_jimen.png"]
[preload storage="data/fgimage/battle_animation/rusia/rusia_fire2.png"]
[preload storage="data/fgimage/battle_animation/rusia/rusia_sword.png"]

[battle_bgm_pre]



[font face="mincho"]
[resetfont]
[message_settei_ad]
;[l]
[battle_bg]
[cm]

;bgm

[battle_bgm]

*event_main_5
[layopt layer=3 visible=true]
;テストコード
;[eval exp="f.friend=1"]
;[eval exp="f.irain_tec=180"]
;[eval exp="f.monster_group_23=1"]
;[eval exp="f.kra_battle_kizuna=1"]
;[eval exp="f.krakonkando=90"]




[iscript]
		var x = 800;
		var y = 600;


		// 表示位置
		if(this.kag.stat.f["monster_l_size_3"]==1){
        tf.x_2 = x/2-200	 
        tf.y_2 = y/2
		}else if(this.kag.stat.f["monster_l_size_2"]==1){
        tf.x_2 = x/2-128	 
        tf.y_2 = y/2
		}else if(this.kag.stat.f["monster_l_size"]==1){			
	    tf.x_2 = x/2-128	 
        tf.y_2 = y/2
        }else if(this.kag.stat.f["rusia_l_size"]==1){
	    tf.x_2 = x/2-130	 
        tf.y_2 = y/2	 
	    }else{
	    tf.x_2 = x/2-64
	    tf.y_2 = y/2
	    	
	    }
	    if(this.kag.stat.f["monster_l_size_3"]==1){
        tf.x_3 = x/3-64	 
        tf.y_3 = y/3-180
	    }else if(this.kag.stat.f["monster_l_size_2"]==1){
        tf.x_3 = x/3-64	 
        tf.y_3 = y/3-180
	    }else if(this.kag.stat.f["monster_l_size"]==1){
	    tf.x_3 = x/3-64
	    tf.y_3 = y/3-100
	    }else if(this.kag.stat.f["rusia_l_size"]==1){
	    tf.x_3 = x/3-64
	    tf.y_3 = y/3-217	
	    }else{
	    tf.x_3 = x/3-64
	    tf.y_3 = y/3+30
	    }
	    
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
[eval exp="tf.battle_command_x_4=tf.battle_command_x_3"]
[eval exp="tf.battle_command_y_4=228"]
;コマンドウィンドウの表示位置
[eval exp="tf.battle_command_window_x_1=tf.battle_command_x_1-5"]
[eval exp="tf.battle_command_window_x_2=tf.battle_command_x_2-5"]
[eval exp="tf.battle_command_window_x_3=tf.battle_command_x_3-5"]
[eval exp="tf.battle_command_window_x_4=tf.battle_command_x_4-5"]
[eval exp="tf.battle_command_window_y_1=tf.battle_command_y_1-15"]
[eval exp="tf.battle_command_window_y_2=tf.battle_command_y_2-15"]
[eval exp="tf.battle_command_window_y_3=tf.battle_command_y_3-15"]
[eval exp="tf.battle_command_window_y_4=tf.battle_command_y_4-15"]

;文字の表示位置
[eval exp="tf.battle_command_moji_x_1=tf.battle_command_x_1+50"]
[eval exp="tf.battle_command_moji_x_2=tf.battle_command_x_2+50"]
[eval exp="tf.battle_command_moji_x_3=tf.battle_command_x_3+35"]
[eval exp="tf.battle_command_moji_x_4=tf.battle_command_x_4+35"]

[eval exp="tf.battle_command_moji_y_1=tf.battle_command_y_1-4"]
[eval exp="tf.battle_command_moji_y_2=tf.battle_command_y_2-4"]
[eval exp="tf.battle_command_moji_y_3=tf.battle_command_y_3-5"]
[eval exp="tf.battle_command_moji_y_4=tf.battle_command_y_4-5"]

;コマンドの文字
[eval exp="tf.battle_command_1='防御'"]
[eval exp="tf.battle_command_2='退却'"]
[eval exp="tf.battle_command_3='アイテム'"]
[eval exp="tf.battle_command_ale='応援'"]

	
	
	
;モンスターHP,イレインHP、能力値、ダメージ変数、特殊状態変数,モンスターhpチェック用変数




;ターン回数用
[eval exp="tf.battle_turn_kaisuu=0"]
;応援回数用
[eval exp="tf.ouen_kaisuu=0"]
;行管理フラグ
[eval exp="tf.line=0"]


;どく、まひ、ねむりの順に配列。状態になっていると１がはいる
[eval exp="tf.irain_sp=[0,0,0,0]"]

;イレインの攻撃力の計算、HPの計算
[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]
[eval exp="tf.irain_attack=f.irain_tec"]
;バリア計算用
[eval exp="tf.irain_attack_m = f.irain_attack"]
;イレインの防御計算
[eval exp="tf.irain_guard=f.irain_tec+f.irain_brain"]
[eval exp="tf.irain_guard=tf.irain_guard/2"]
;イレインの攻撃回避率
[eval exp="tf.irain_avoid=1000/f.irain_tec"]
;小数点以下切り捨て
[eval exp="tf.irain_avoid = Math.floor(tf.irain_avoid)"]

;イレインの最大HP,ステータス記憶
[eval exp="f.irain_hp_m=f.irain_hp"]
[eval exp="f.irain_hp_c=f.irain_hp"]
[eval exp="f.irain_tec_c=f.irain_tec"]
[eval exp="f.irain_brain_c=f.irain_brain"]
[eval exp="f.irain_charm_c=f.irain_charm"]
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


;ガード不能フラグ
[no_guard]


;背景イメージを変数に（必殺表示用
[battle_bg]



;モンスターグループを呼びにいき、グループを決定

[call storage="scenario_2/mini_game/monster_data.ks" target=*monster_group]

;その後データを参照しにいき、データtf.monster_hp tf.damage,特殊攻撃、tf.expを入力する

[jump storage="scenario_2/mini_game/monster_data.ks" target=*monster_data]
*modotta

;l特別なモンスターフラグ
[if exp="tf.monster_id_no_1=='31'||tf.monster_id_no_1=='32'"]
[eval exp="f.monster_igyou=1"]
[endif]



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
[position layer="message1" frame="button/toumei.png" margint="60" marginl="30" marginr="30" page="fore"]

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
;[emb exp="tf.monster_name_1"]が現れた！[a]

[else]                
;モンスターが現れた！[a]
[endif]
;闘技場の場合バトル回数記憶
[if exp="f.tougijou==1"]
[eval exp="f.tougijou_battle_time=f.tougijou_battle_time+1"]
[endif]
[battle_moji_start]

;ステータス表示
*status

[cm]


[call storage="scenario_2/macro.ks"]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[call storage="scenario_2/mini_game/monster_battle_add.ks"]
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


;仲間入力
[friend_nyuryoku]

;バトルの回数を記憶

[eval exp="f.battle_kaisuu=f.battle_kaisuu+1"]

;[eval exp="f.battle_kaisuu=60"]

;グリフターン初期化
[eval exp="tf.glif_turn=0"]
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
;------------------------------
[call storage="scenario_2/mini_game/battle_friend_data.ks"]

;マックスのデータを保存
[eval exp="tf.friend_attack_c = tf.friend_attack"]
[eval exp="tf.friend_guard_c = tf.friend_guard"]
[eval exp="tf.friend_hp_c = tf.friend_hp"]

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

;きずなある場合
[if exp="f.rans_battle_kizuna==1&&f.friend==1||f.lion_battle_kizuna==1&&f.friend==2||f.kra_battle_kizuna==1&&f.friend==3||f.glif_battle_kizuna==1&&f.friend==5"]
[image layer=3 page=fore storage="uranai/battle_kizuna.png" name="friend_face" x=&tf.friend_face_x y=&tf.friend_face_y]
[endif]



[friend_hp_kousin]


;合体技ゲージ用
[if exp="f.rans_battle_kizuna==1&&f.friend==1||f.lion_battle_kizuna==1&&f.friend==2||f.kra_battle_kizuna==1&&f.friend==3||f.glif_battle_kizuna==1&&f.friend==5"]
[eval exp="tf.d_gauge_x=tf.friend_face_x+30"]
[eval exp="tf.d_gauge_y=tf.friend_face_y-380"]
[eval exp="tf.d_gauge_amount=0"]
;テストコード
;[eval exp="tf.d_gauge_amount=100"]
;
[image layer=3 page=fore visible="true" storage="dual_gauge/dual_gauge.png" name="dual_gauge" x=&tf.d_gauge_x y=&tf.d_gauge_y]
[endif]

;仲間を応援した時のアップステータス計算

;ランス
[if exp="f.friend==1"]
;-------
;それぞれキャラの好感度を変数代入
[eval exp="tf.men_koukando = f.ranskonkando"]
[elsif exp="f.friend==2"]
;ライオネス
[eval exp="tf.men_koukando = f.lionkonkando"]
[elsif exp="f.friend==3"]
;くら
[eval exp="tf.men_koukando = f.krakonkando"]
[elsif exp="f.friend==5"]
;グリフ
[eval exp="tf.men_koukando = f.glifkonkando"]

[endif]

;好感度に合わせて応援した時の上昇量を決める
[if exp="tf.men_koukando<16"]

[eval exp="tf.up_hp=tf.friend_hp*0.1"]
[eval exp="tf.up_attack=tf.friend_attack*0.1"]
[eval exp="tf.up_guard=tf.friend_guard*0.1"]

[eval exp="tf.up_hp_irain=f.irain_hp*0.1"]
[eval exp="tf.up_tec_irain=f.irain_tec*0.1"]
[eval exp="tf.up_brain_irain=f.irain_brain*0.1"]
[eval exp="tf.up_charm_irain=f.irain_charm*0.1"]

[elsif exp="tf.men_koukando<31"]

[eval exp="tf.up_hp=tf.friend_hp*0.3"]
[eval exp="tf.up_attack=tf.friend_attack*0.3"]
[eval exp="tf.up_guard=tf.friend_guard*0.3"]

[eval exp="tf.up_hp_irain=f.irain_hp*0.3"]
[eval exp="tf.up_tec_irain=f.irain_tec*0.3"]
[eval exp="tf.up_brain_irain=f.irain_brain*0.3"]
[eval exp="tf.up_charm_irain=f.irain_charm*0.3"]

[elsif exp="tf.men_koukando>30"]
[eval exp="tf.up_hp=tf.friend_hp_m*0.5"]
[eval exp="tf.up_attack=tf.friend_attack*0.5"]
[eval exp="tf.up_guard=tf.friend_guard*0.5"]

[eval exp="tf.up_hp_irain=f.irain_hp*0.5"]
[eval exp="tf.up_tec_irain=f.irain_tec*0.5"]
[eval exp="tf.up_brain_irain=f.irain_brain*0.5"]
[eval exp="tf.up_charm_irain=f.irain_charm*0.5"]
[endif]


;------------------
[else]
[endif]














;[plugin name=timer]
;[timer_set minuts=0 seconds=2 timeupstorage=mini_game/battle_finish.ks]
;[timer_start]
[cm]




*guard_escape_item
;防御、退却、アイテムボタン表示


;バトルスタート、モンスター攻撃可能に
[eval exp="tf.battle_start=1"]

[guard_escape_item_button]
;戦場の絆ある場合ゲージ表示
[dual_gauge_hyouji]

[battle_moji_your_turn]



;[plugin name=timer]
;[timer_set minuts=0 seconds=2 timeupstorage=mini_game/battle_finish.ks]
;[timer_start]
[cm]


[eval exp="tf.x_2_70=tf.x_2+70"]
;６４はモンスターグラの横幅半分
[eval exp="tf.x_2_64=tf.x_2+64"]
;異形３ように変更
[if exp="f.monster_l_size_3==1"]
[eval exp="tf.x_2_84=tf.x_2+300"]
[elsif exp="f.monster_l_size==1||f.rusia_l_size==1"]
[eval exp="tf.x_2_84=tf.x_2+200"]
[else]
[eval exp="tf.x_2_84=tf.x_2+84"]
[endif]
[eval exp="tf.x_2_20=tf.x_2+20"]

[if exp="f.monster_l_size_3==1"]
[eval exp="tf.y_3_90=tf.y_3+340"]
[elsif exp="f.monster_l_size==1"]
[eval exp="tf.y_3_90=tf.y_3+240"]
[elsif exp="f.rusia_l_size==1"]
[eval exp="tf.y_3_90=tf.y_3+340"]

[else]
[eval exp="tf.y_3_90=tf.y_3+90"]
[endif]
[eval exp="tf.y_3_80=tf.y_3+90"]
[eval exp="tf.y_3_15=tf.y_3-15"]



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
[eval exp="tf.click_x=tf.x_2"][click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
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
[eval exp="tf.click_x_2=tf.x_4"][click_zahyou]

[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
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
[eval exp="tf.click_x_3=tf.x_4bunno3"][click_zahyou]

[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
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

[eval exp="tf.click_x_2=tf.x_4"][click_zahyou]

[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_2 y=&tf.click_y]


[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_2" name="monster2" page=fore visible=true x=&tf.x_4 y=&tf.y_3]
[endif]




[eval exp="tf.x_4_70=tf.x_4+82"]
[eval exp="tf.x_4_20=tf.x_4+20"]
;雑魚モンスター座標調整
[if exp="f.zako_l_size==1&&tf.monster_id_no_2==17&&tf.monster_id_no_3==17"]
[eval exp="tf.y_3_90=tf.y_3+120"]
[else]
[eval exp="tf.y_3_90=tf.y_3+90"]
[endif]

;[ptext layer=3 page=fore visible="true" text="HP:" name="monster_hp_2" size=30 x=&tf.x_4_20 y=&tf.y_3_90]
;[ptext layer=3 page=fore visible="true" text="&tf.monster_hp_2" name="monster_hp_2" size=30 x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_10.png" x=&tf.x_4_70 y=&tf.y_3_90]
[image layer=3 page=fore visible="true" name="monster_hp_2" storage="battle_animation/monster_gauge_window.png" x=&tf.x_4_70 y=&tf.y_3_90]




;右側

[eval exp="tf.x_4bunno3=tf.x_4_n*3-64"]


[if exp="tf.battle_start==1"]
;アタッククリックの目印
[eval exp="tf.click_x_3=tf.x_4bunno3"][click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
[else]
[image layer=3 storage="&tf.monster_graphic_3" name="monster3" page=fore visible=true x=&tf.x_4bunno3 y=&tf.y_3]
[endif]

[eval exp="tf.x_4bunno3_70=tf.x_4bunno3+82"]
[eval exp="tf.x_4bunno3_20=tf.x_4bunno3+20"]
;雑魚モンスター座標調整
[if exp="f.zako_l_size==1&&tf.monster_id_no_2==17&&tf.monster_id_no_3==17"]
[eval exp="tf.y_3_90=tf.y_3+120"]
[else]
[eval exp="tf.y_3_90=tf.y_3+90"]
[endif]


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
[eval exp="tf.click_x=tf.x_2"][click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
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
[eval exp="tf.click_x_3=tf.x_4bunno3"][click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_3 y=&tf.click_y]

[button graphic="&tf.monster_graphic_3" name="monster3" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster3 x=&tf.x_4bunno3 y=&tf.y_3]
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
[eval exp="tf.click_x=tf.x_2"][click_zahyou]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]
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

[eval exp="tf.click_x_2=tf.x_4"][click_zahyou]

[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x_2 y=&tf.click_y]

[button graphic="&tf.monster_graphic_2" name="monster2" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster2 x=&tf.x_4 y=&tf.y_3]
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

[eval exp="tf.click_x=tf.x_2"]
[click_zahyou_center]
[image layer=3 page=fore storage="click.gif" visible=true name="click" x=&tf.click_x y=&tf.click_y]

[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]

[else]
[image layer=3 storage="&tf.monster_graphic_1" name="monster1" page=fore visible=true x=&tf.x_2 y=&tf.y_3]
[endif]

[eval exp="tf.x_2_70=tf.x_2+70"]
[eval exp="tf.x_2_20=tf.x_2+20"]
[if exp="f.monster_l_size_3==1"]
[eval exp="tf.y_3_90=tf.y_3+330"]
[elsif exp="f.monster_l_size==1"]
[eval exp="tf.y_3_90=tf.y_3+240"]
[elsif exp="f.rusia_l_size==1"]
[eval exp="tf.y_3_90=tf.y_3+340"]
[else]
[eval exp="tf.y_3_90=tf.y_3+90"]
[endif]

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

*battle_tutrial_end

[if exp="tf.battle_start==1"]

[if exp="f.rans_battle_kizuna==1&&f.friend==1||f.lion_battle_kizuna==1&&f.friend==2||f.kra_battle_kizuna==1&&f.friend==3||f.glif_battle_kizuna==1&&f.friend==5"]

[if exp="f.kizuna_setumei!=1"]
[battle_gamen_idou]
[anim name="click" top="-=800" time=300]
[skipstop]
戦場の絆がある場合、仲間から応援されることがあります。[p]
応援されると、HPが全回復＋一時的に増加！[p]
また、応援して右上にあるデュアルゲージをためると・・・[p]
二人の合体技を出すことができます。[p]
応援して一度にたまるゲージの量は好感度によって決まります。[p]
二人で協力して戦いましょう！[p]
※HPが本来の最大値よりも大きい状態で回復アイテムを使うと
本来の値に戻ってしまいます。増加状態を維持したい場合は注意しましょう[p]

[battle_gamen_return]
[anim name="click" top="+=800" time=300]
[eval exp="f.kizuna_setumei=1"]
[endif]

[clearstack]
[s]

[else]

[clearstack]
[s]

[endif]

[jump target=*status]
[endif]





[s]






*guard_escape_return_item



[clearfix_item]
[clearfix name="cursor"]
[wait time=500]
[clearstack]
[jump storage="scenario_2/mini_game/battle2.ks" target=*return]












