[macro name="escape_event"]

[if exp="f.skill_only==1"]
[message_settei_ad]
[jump storage="scenario_2/map_event/oukyu_event_macro.ks" target=*renshu_end]
[elsif exp="f.event_main_8_days>0&&f.tougijou!=1"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[eval exp="tf.escape_flag=0"]
;;[live2d_delete_all]
[clearstack]

[anten]
[refresh_hanyou]

;----デート中の処置
[if exp="f.date_now==1"]
[if exp="f.friend==1"]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]

[elsif exp="f.friend==2"]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]

[elsif exp="f.friend==3"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]

[endif]
[endif]
;-------------------
[creru_outo_map]
[else]
[jump storage="scenario_2/mini_game/after_battle.ks" target=*escape_event_nasi]
[endif]
[endmacro]



[macro name="after_battle_lose"]
[eval exp="tf.irain_death=0"]
[eval exp="tf.irain_battle=0"]
[eval exp="tf.irain_doku=0"]
[eval exp="tf.irain_mahi=0"]
[eval exp="tf.irain_nemuri=0"]
[fadeoutbgm time=1000]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[chara_hide_all]
[clearstack]
[free name="chara_name_area" layer="message1"]
[message_settei_ad]
;[refresh_hanyou]

;ウェルム戦敗北
[if exp="tf.irain_target_w==1"]
[jump storage="scenario_2/episode/epi_w_lion.ks" target="*battle_end_w"]
[endif]

;ウェルム戦ランス
[if exp="tf.werumu_rans_last==1"]
[jump storage="scenario_2/episode/epi_w_rans.ks" target="*rans_battle_end"]
[endif]

;ルシア戦敗北
[if exp="f.event_main_11==1"]
[eval exp="tf.guard_no=0"]
[eval exp="f.mukou=0"]
;-------
[if exp="f.event_main_11_rans==1"]
[button_hyouji]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*rusia_battle_end]
[elsif exp="f.event_main_11_lion==1"]
[button_hyouji]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*rusia_battle_end]
[elsif exp="f.event_main_11_kra==1"]
[button_hyouji]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*rusia_battle_end]
[else]
[button_hyouji]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*rusia_battle_end]
[endif]
;--------
;カーニバル編モンスター事件；敗北
[elsif exp="f.event_main_5_1==1"]

[jump storage="scenario_2/episode/epi2.ks" target=*lose]

[elsif exp="f.skill_only==1"]

[message_settei_ad]

[jump storage="scenario_2/map_event/oukyu_event_macro.ks" target=*renshu_end]

[elsif exp="f.event_main_8_days>0&&f.tougijou!=1"]

[creru_outo_map]
[else]
[jump storage="scenario_2/mini_game/after_battle.ks" target=*event_nasi_lose]
[endif]



[game_over]
[endmacro]





[macro name="after_battle_win"]

;カーニバル編序盤;モンスター事件；勝利
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[chara_hide_all]
[clearstack]
[if exp="f.sub_event==1"]
[skip_button]
[endif]
[free name="chara_name_area" layer="message1"]

;イベント１４さぶ、裏通り
[if exp="f.battle_event_14_ura==1"]
[eval exp="f.battle_event_14_ura=0"]
[eval exp="f.monster_group_18=0"]

;----デート中の処置
[if exp="f.date_now==1"]
[if exp="f.friend==1"]
[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_rans_show_sekkin]
[live2d_fadeout time=50]
[elsif exp="f.friend==2"]
[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_lion_show_sekkin]
[live2d_fadeout time=50]
[elsif exp="f.friend==3"]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_kra_show_sekkin]
[live2d_fadeout time=50]
[endif]
[endif]
;-------------------
[jump storage="scenario_2/map_event/uradoori_event_macro.ks" target=*battle_event_14_uradoori_end]
[endif]
;イベント１４シャローむ漁師
[if exp="f.battle_event_14_ryousi==1"]
[eval exp="f.battle_event_14_ryousi=0"]
[eval exp="f.monster_group_18=0"]
[jump storage="scenario_2/map_event/erumu_sharomu_event.ks" target=*ryousi_battle_end]
[endif]
;イベント１４稽古場のバトル；薬草とり
[if exp="f.battle_event_14_keiko==1"]
[eval exp="f.battle_event_14_keiko=0"]
[eval exp="f.monster_group_18=0"]
[jump storage="scenario_2/map_event/erumu_keiko_event.ks" target=*keiko_battle_end]
[endif]




;イベントごと場合わけ

[if exp="f.lion_flag==1&&f.werumu_battle==1"]
[jump storage="scenario_2/episode/epi_w_lion.ks" target="*battle_end_w"]
[elsif exp="f.lion_flag==1"]
[jump storage="scenario_2/episode/epi_w_lion.ks" target="*battle_end"]
[elsif exp="f.kra_flag==1"]
[jump storage="scenario_2/episode/epi_w_kra.ks" target="*battle_end"]
[endif]

[if exp="f.event_war_rans==1"]
[eval exp="f.event_war_battle_end=1"]
[jump storage="scenario_2/episode/event_war_rans.ks" target=*igyou_battle_end]
[elsif exp="f.event_war_glif==1"]
[eval exp="f.event_war_battle_end=1"]
[jump storage="scenario_2/episode/event_war_glif.ks" target=*igyou_battle_end]
[elsif exp="f.event_war_lion==1"]
[eval exp="f.event_war_battle_end=1"]
[jump storage="scenario_2/episode/event_war_lion.ks" target=*igyou_battle_end]
[elsif exp="f.event_war_kra==1&&f.rusia_battle_end"]
[eval exp="f.event_war_battle_end=1"]
[jump storage="scenario_2/episode/event_war_kra.ks" target=*rusia_battle_end]
[elsif exp="f.event_war_kra==1"]
[jump storage="scenario_2/episode/event_war_kra.ks" target=*igyou_battle_end]
[endif]



[if exp="f.event_main_10==1"]
[eval exp="f.cur_battle=2"][eval exp="f.mukou=0"]
[fadeoutbgm time=1000]
[message_settei_ad]
[anten]
[bg storage="creru_gate_yoru_tasogare.jpg" time=50]
[refresh_hanyou]
;----
[button_hyouji]
[if exp="f.event_main_10_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*igyou_battle_end]
[elsif exp="f.event_main_10_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*igyou_battle_end]
[elsif exp="f.event_main_10_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*igyou_battle_end]
[elsif exp="f.osasoi_else==1&&f.glif_yes==1"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*igyou_battle_end]
[elsif exp="f.osasoi_else!=1"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*igyou_battle_end_no]
[endif]

[endif]
;-----------------------------------------------------------
;-----------------------------------------------------------
[if exp="f.event_main_5_1==1&&f.battle_main_5!=0"]
;------------------------------------------
[eval exp="f.battle_main_5=f.battle_main_5-1"]
[message_kakusu_ad]
[message_settei_ad]
[iscript]
f.battle_main_serihu_1='「どうしてこんなに・・・モンスターが・・・っ！！」';
f.battle_main_serihu_2='「まだまだくる・・・！！！」';
[endscript]
[endif]

[if exp="f.event_main_5_1==1&&f.battle_main_5==2"]
#&f.name
[emb exp="f.battle_main_serihu_2"][p]
#
[message_kakusu_ad]
[jump storage="scenario_2/mini_game/battle.ks" target=*event_main_5]
[endif]

[if exp="f.event_main_5_1==1&&f.battle_main_5==1"]
#&f.name
[emb exp="f.battle_main_serihu_1"][p]
#
[message_kakusu_ad]
[jump storage="scenario_2/mini_game/battle.ks" target=*event_main_5]
[endif]

;-----------------------------------------------------------
;-----------------------------------------------------------
[if exp="f.event_main_5_1==1&&f.event_glif_1==1"]
[fadeoutbgm time=1000]
[message_settei_ad]
[jump storage="scenario_2/episode/epi2.ks" target=*glif_battle_end]
[elsif exp="f.event_main_5_1==1&&f.event_glif_1!=1"]
[fadeoutbgm time=300]
[message_settei_ad]
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_5_battle]
[endif]
;-----------------------------------------------------------
;-----------------------------------------------------------
[if exp="f.skill_only==1"]
[message_settei_ad]
[jump storage="scenario_2/map_event/oukyu_event_macro.ks" target=*renshu_end]
[endif]
;-----------------------------------------------------------
;-----------------------------------------------------------
;カーニバル準備期間、モンスター一掃作戦；フラグマイナス
[if exp="f.battle_event_iriguti==1||f.battle_event_hunsui==1||f.battle_event_uradoori==1||f.battle_event_oukyu==1||f.battle_event_sakaba==1||f.battle_event_gaia==1"]
[iscript]
var battle_place_flag=[
this.kag.stat.f["place_creru_sakaba"],
this.kag.stat.f["place_creru_hunsui"],
this.kag.stat.f["place_creru_out"],
this.kag.stat.f["place_creru_oukyu"],
this.kag.stat.f["place_creru_uradoori"],
this.kag.stat.f["place_creru_gaia"]
];

var battle_event_place =[
this.kag.stat.f["battle_event_8_sakaba"],
this.kag.stat.f["battle_event_8_hunsui"],
this.kag.stat.f["battle_event_8_iriguti"],
this.kag.stat.f["battle_event_8_oukyu"],
this.kag.stat.f["battle_event_8_uradoori"],
this.kag.stat.f["battle_event_8_gaia"]
];

var battle_event_place_flag =[
this.kag.stat.f["battle_event_sakaba"],
this.kag.stat.f["battle_event_hunsui"],
this.kag.stat.f["battle_event_iriguti"],
this.kag.stat.f["battle_event_oukyu"],
this.kag.stat.f["battle_event_uradoori"],
this.kag.stat.f["battle_event_gaia"]
];


for(var i=0;i<6;i++){

	if(battle_place_flag[i]>0){
		
		battle_event_place[i]-=1;
		
		if(battle_event_place[i]==0){
			
			battle_event_place_flag[i] = 0;
			
		}
			
	}

}

//フラグ値戻す
this.kag.stat.f["battle_event_8_sakaba"]=  battle_event_place[0];
this.kag.stat.f["battle_event_8_hunsui"]=   battle_event_place[1];
this.kag.stat.f["battle_event_8_iriguti"]=     battle_event_place[2];
this.kag.stat.f["battle_event_8_oukyu"]=    battle_event_place[3];
this.kag.stat.f["battle_event_8_uradoori"]=battle_event_place[4];
this.kag.stat.f["battle_event_8_gaia"]=      battle_event_place[5];

	
this.kag.stat.f["battle_event_sakaba"]=	battle_event_place_flag[0];
this.kag.stat.f["battle_event_hunsui"]=    battle_event_place_flag[1]; 
this.kag.stat.f["battle_event_iriguti"]=	    battle_event_place_flag[2];
this.kag.stat.f["battle_event_oukyu"]= 	battle_event_place_flag[3];
this.kag.stat.f["battle_event_uradoori"]=	battle_event_place_flag[4];
this.kag.stat.f["battle_event_gaia"]=	    battle_event_place_flag[5];
	


[endscript]




[creru_outo_map]
[else]
[jump storage="scenario_2/mini_game/after_battle.ks" target=*event_nasi]
[endif]

[endmacro]


[return]
