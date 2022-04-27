
;エルムナード侵攻後
;各エピソード通過フラグ
;テストコード
;[eval exp="f.episode_flag=6"]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]

[if exp="f.episode_flag==4"]

[if exp="f.event_war_lion==1"]

;-----
[if exp="f.lion_battle_kizuna!=1&&f.kouhou!=1"]
[eval exp="f.lion_battle_kizuna=1"]
[message_settei_ad]
[playse storage="item_status_up_onjin.ogg"]
ライオネスとの「戦場の絆」を手に入れた！[p]
[endif]
;------

[eval exp="f.event_war_lion_sumi=1"]
[eval exp="f.event_war_lion=0"]
;会話追加
[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 13"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 21"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 22"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[elsif exp="f.event_war_rans==1"]

;-----
[if exp="f.rans_battle_kizuna!=1&&f.kouhou!=1"]
[eval exp="f.rans_battle_kizuna=1"]
[message_settei_ad]
[playse storage="item_status_up_onjin.ogg"]
ランスロットとの「戦場の絆」を手に入れた！[p]
[endif]
;------

[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[eval exp="f.event_war_rans_sumi=1"]
[eval exp="f.event_war_rans=0"]

[elsif exp="f.event_war_kra==1"]

;-----
[if exp="f.kra_battle_kizuna!=1&&f.kouhou!=1"]
[eval exp="f.kra_battle_kizuna=1"]
[message_settei_ad]
[playse storage="item_status_up_onjin.ogg"]
クライストとの「戦場の絆」を手に入れた！[p]
[endif]
;------

[call storage="scenario_2/episode/epi_7_kra_epi.ks"]
[eval exp="f.event_war_kra_sumi=1"]
;会話追加
[eval exp="tf.tuika_num = 2"]
[eval exp="tf.kaiwa_num  = 4"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="f.event_war_kra=0"]

[elsif exp="f.event_war_glif==1"]
[eval exp="f.event_war_glif_sumi=1"]
[eval exp="f.event_war_glif=0"]
[eval exp="f.event_war_battle_end=0"]
[endif]

;フラグ全て０
[eval exp="f.event_war_lion=0"]
[eval exp="f.event_war_rans=0"]
[eval exp="f.event_war_kra=0"]
[eval exp="f.event_war_glif=0"]
[eval exp="f.rusia_battle=0"]
[eval exp="f.friend=0"]
;[eval exp="tf.kouhou=0"]
[eval exp="f.episode_flag=5"]
[eval exp="f.mannar_zenjitu=1"]
;ここで一回目のノーマルエンド判定------------

[if exp="f.event_war_rans_sumi!=1&&f.event_sub_14_mother_kaiwa!=1&&f.event_war_kra_sumi!=1&&f.glif_battle_kizuna!=1"]
[jump storage="scenario_2/episode/epi_normalend.ks"]
[endif]
;--------------------------


[elsif exp="f.episode_flag==5"]

[eval exp="f.episode_flag=6"]

[elsif exp="f.episode_flag==6"]
[eval exp="f.dress_cute=0"]
[eval exp="f.dress_pure=0"]
[eval exp="f.dress_elegant=0"]
[eval exp="f.event_main_epi6_1=0"]
[eval exp="f.episode_flag=7"]
[endif]
;エピソードチョイスから
*episode_go
[call storage="scenario_2/episode/epi_flag_off.ks"]
[flag_off]
[if exp="f.episode_flag==3"]
[jump storage="scenario_2/episode/epi3.ks"]

[elsif exp="f.episode_flag==4&&f.kouhou==1"]
[button_clear]
[skip_button]
[jump storage="scenario_2/kouhou/kouhou_run.ks"]

[elsif exp="f.episode_flag==4"]
[jump storage="scenario_2/episode/epi4.ks"]
[elsif exp="f.episode_flag==5"]
[jump storage="scenario_2/episode/epi5.ks"]
[elsif exp="f.episode_flag==6"]
[jump storage="scenario_2/episode/epi6.ks"]
[elsif exp="f.episode_flag==7"]
[jump storage="scenario_2/episode/epi7.ks"]
[elsif exp="f.episode_flag==7.5"]
[button_hyouji]
[jump storage="scenario_2/episode/epi7.ks" target=*epi7_choice_scenario]
[elsif exp="f.episode_flag==8&&f.s_wesuta==1"]

[jump storage="scenario_2/episode/epi8_w.ks"]

[elsif exp="f.episode_flag==9&&f.s_wesuta==1"]

[jump storage="scenario_2/episode/epi10_w.ks"]

[elsif exp="f.episode_flag==8&&f.s_oukyu==1"]

[jump storage="scenario_2/episode/epi8_w.ks"]

[elsif exp="f.episode_flag==10&&f.s_wesuta==1"]
[button_hyouji]
[jump storage="scenario_2/episode/epi11_w.ks"]

[elsif exp="f.episode_flag==11&&f.s_wesuta==1"]
[button_hyouji]
[jump storage="scenario_2/episode/epi11_w.ks" target=*rem]

[endif]

*episode_free
;会話追加のフラグ消去
[eval exp="f.kaiwa_tuika_first_sumi=0"]

[if exp="f.episode_flag==3"]
[eval exp="f.rans_heart_kizuna=0"]
[eval exp="f.lion_heart_kizuna=0"]
[eval exp="f.kra_heart_kizuna=0"]
[eval exp="f.glif_heart_kizuna=0"]
[eval exp="f.event_main_12=0"]
[eval exp="f.event_main_13=0"]
[eval exp="f.event_main_14_days=10"]
[eval exp="f.event_days = f.event_main_14_days"]
[eval exp="f.event_lioness_hyouji_14=0"]
[eval exp="f.gales_score=0"]
[eval exp="f.glif_sasiire=0"]
[eval exp="f.tougijou_heisa=1"]
[eval exp="f.date_event_flag=1"]

[call storage="scenario_2/episode/event_14_sub_story.ks"]

[iscript]
f.event_sub_14=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
f.event_sub_14_sumi=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]

[elsif exp="f.mannar_zenjitu==1"]
[eval exp="f.event_main_14_days=-1"]
[eval exp="f.event_lioness_hyouji_14=-1"]
;特殊な自由行動ここから直で
[eval exp="f.friend=0"]
;選択ジャンプ用
[if exp="f.event_war_rans_sumi==1"]
[eval exp="f.choice_rans_find=1"]
[endif]
[message_settei_ad]
[button_clear]
[status_hyouji]

[elsif exp="f.episode_flag==5"]
[call storage="scenario_2/episode/event_15_sub_story.ks"]
[eval exp="f.event_main_15_days=7"]
[eval exp="f.event_days = f.event_main_15_days"]
[iscript]
var sub_len = f.event_sub_14.length;
for(i=0;i<sub_len;i++){
f.event_sub_14[i]=0;
}

f.event_sub_15 =[1,1];
f.event_sub_15_sumi =[0,0];
//if(f.event_war_rans_sumi===1){
//f.event_sub_15_rans=[1,1,1,1,1,1,1,1,1,1,1,1];
//f.event_sub_15_rans_sumi=[0,0,0,0,0,0,0,0,0,0,0,0]
//}


[endscript]

[elsif exp="f.episode_flag==7"]
[eval exp="f.event_main_15_days=-1"]
[eval exp="f.event_main_16_days=4"]
[eval exp="f.event_days = f.event_main_16_days"]
[iscript]
//var sub_len = f.event_sub_15_rans.length;
//for(i=0;i<sub_len;i++){
//f.event_sub_15_rans[i]=0;
//}
var sub_len = f.event_sub_15.length;
for(i=0;i<sub_len;i++){
f.event_sub_15[i]=0;
}
f.event_sub_16=[1,1,0,0,0,0];
f.event_sub_16_sumi=[0,0,0,0,0,0];
[endscript]

;ウェスタ編
[elsif exp="f.episode_flag==8"]
[eval exp="f.event_main_16_days=-1"]
[eval exp="f.event_main_17_days=5"]
[eval exp="f.event_days = f.event_main_17_days"]
[eval exp="f.letter_day=0"]
[iscript]
var sub_len = f.event_sub_16.length;
for(i=0;i<sub_len;i++){
f.event_sub_16[i]=0;
}
f.event_sub_17=[1,1,1,1,1,1,1,];
f.event_sub_17_sumi=[0,0,0,0,0,0,0];
[endscript]
;ウェスタ到着
[elsif exp="f.episode_flag==9"]
[eval exp="f.event_main_17_days=-1"]
[eval exp="f.event_main_18_days=2"]
[eval exp="f.event_days = f.event_main_18_days"]
;[eval exp="f.letter_day=0"]
[iscript]
var sub_len = f.event_sub_17.length;
for(i=0;i<sub_len;i++){
f.event_sub_17[i]=0;
}
f.event_sub_18=[1,1,1,1];
f.event_sub_18_sumi=[0,0,0,0];
[endscript]
;レムの洞窟へ
[elsif exp="f.episode_flag==10"]

[eval exp="f.event_main_18_days=-1"]
[eval exp="f.event_main_19_days=1"]
;[eval exp="f.letter_day=0"]
[iscript]
len_delete = function(sub_lend){
     var sub_len = sub_lend.length;
    for(i=0;i<sub_len;i++){
    sub_lend[i]=0;
    }
} 

len_delete(f.event_sub_18);
[endscript]



[endif]

;自由行動直前のイベント
[call storage="scenario_2/episode/free_before_event.ks"]
[message_settei_ad]
;自由行動になった時に自動で一日終わらないようにする
[eval exp="f.free_first=1"]
[eval exp="f.sub_event=1"]
[eval exp="f.kyuujitu=1"]
[eval exp="f.irain_move=2"]
[eval exp="f.friend=0"]
[message_settei_ad]
[button_clear]
[skip_button]
[free_before_event]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_yado.jpg" time=500]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_room.jpg" time=500]
[else]
[bg storage="irainheya_tasogare.jpg" time=500]
[endif]

[status_hyouji]


*free_end
[skip_button_off]
[eval exp="f.irain_heya=0"]
[eval exp="f.free_first=0"]
[eval exp="f.sub_event=0"]
[eval exp="f.kyuujitu=0"]
[call storage="scenario_2/episode/free_end_event.ks"]
;自由行動直後のイベント
[free_end_event]
*free_end_event
[if exp="f.episode_flag==3"]
[eval exp="f.event_main_14_days=-5"]
[eval exp="f.episode_flag=4"]
[iscript]
f.event_sub_14=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]
[elsif exp="f.episode_flag==5"]
[eval exp="f.event_main_15_days=-5"]
[eval exp="f.episode_flag=6"]
[iscript]
f.event_sub_15=[0,0,0,0,0,0,0,0,0];
[endscript]
[elsif exp="f.episode_flag==7"]
[eval exp="f.event_main_16_days=-5"]
[eval exp="f.episode_flag=7.5"]
[iscript]
f.event_sub_16=[0,0,0,0,0];
[endscript]
[elsif exp="f.episode_flag==8"]
[eval exp="f.event_main_17_days=-5"]
[eval exp="f.episode_flag=9"]
[iscript]
f.event_sub_17=[0,0,0,0,0,0,0];
[endscript]
[elsif exp="f.episode_flag==9"]
[eval exp="f.event_main_18_days=-5"]
[eval exp="f.episode_flag=10"]
[iscript]
f.event_sub_18=[0,0,0,0];
[endscript]

[elsif exp="f.episode_flag==10"]
[eval exp="f.event_main_19_days=-5"]
[eval exp="f.episode_flag=11"]
[iscript]
f.event_sub_19=[0,0,0,0];
[endscript]


[endif]

[jump target=*episode_go]


*last_scenario
[jump storage="scenario_2/episode/epi_topic.ks" target=*last_scenario]
*last_scenario_2

[if exp="f.s_wesuta==1"]
;-----
[if exp="f.episode_flag==11&&f.kra_flag==1"]

[jump storage="scenario_2/episode/epi_w_kra.ks"]

[elsif exp="f.episode_flag==11&&f.rans_flag==1"]
[jump storage="scenario_2/episode/epi_w_rans.ks"]
[elsif exp="f.episode_flag==11&&f.lion_flag==1"]
[jump storage="scenario_2/episode/epi_w_lion.ks"]

[endif]
;------
[endif]









