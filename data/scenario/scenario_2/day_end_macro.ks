
[macro name="day_end_system"]

;マナー講習前日
[if exp="f.mannar_zenjitu==1"]
[eval exp="f.mannar_zenjitu=0"]
[eval exp="f.kyuujitu=0"]
[eval exp="f.free_first=0"]
[eval exp="f.sub_event=0"]
[button_hyouji]
[jump storage="scenario_2/episode/epi5.ks" target=*mannar_day]
[endif]


[if exp="f.friend>0"]
[eval exp="f.friend=0"]
[endif]
[eval exp="f.love_up=0"]
[eval exp="f.event_8_lion_doukou=0"]
;エルムナード編
[eval exp="f.glif_sasiire=0"]
[eval exp="f.map=0"]
[eval exp="f.kioku_yet=0"]
[eval exp="tf.date_yomikomi=0"]
[eval exp="f.date_now=0"]
[eval exp="f.ryouri_comp=0"]

[if exp="f.event_main_8_days<5"]
[eval exp="f.event_8_oukyu=0"]
[endif]


[if exp="f.task_irai_simekiri==f.event_main_8_days"]
[eval exp="f.event_8_otukai=0"]
[endif]

[if exp="f.tougijou_heisa==1"]
[eval exp="f.ryouri_sumi=0"]
[endif]

;きゃら記憶ようの日付入力
[if exp="f.event_main_14_days>0"]
[eval exp="f.event_days = f.event_main_14_days"]
[elsif exp="f.event_main_15_days>0"]
[eval exp="f.event_days = f.event_main_15_days"]
[elsif exp="f.event_main_16_days>0"]
[eval exp="f.event_days = f.event_main_16_days"]
[elsif exp="f.event_main_17_days>0"]
[eval exp="f.event_days = f.event_main_17_days"]
[elsif exp="f.event_main_18_days>0"]
[eval exp="f.event_days = f.event_main_18_days"]
[elsif exp="f.event_main_19_days>0"]
[eval exp="f.event_days = f.event_main_19_days"]
[else]
[eval exp="f.event_days=0"]
[endif]

[endmacro]

[macro name="last_day_event"]
;最終日イベント用の処理

[if exp="f.event_main_8_days==0&&f.battle_event_uradoori==0&&f.battle_event_hunsui==0&&f.battle_event_sakaba==0&&f.battle_event_gaia==0&&f.battle_event_iriguti==0&&f.battle_event_oukyu==0"]





[eval exp="f.irain_move=0"]
;バグ対策のため終了したら999を入れておく
[eval exp="f.event_main_8_days=999"]
[jump storage="scenario_2/episode/curnival_bunki.ks"]



[elsif exp="f.event_main_8_days==0"]

[message_settei_ad]

[bg storage="irainheya_tasogare.jpg" time=50]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「街にモンスターがまだ出てるな・・・これじゃカーニバル開くのは無理だな」[p]

#&f.name
「ま、間に合わなかったの？」[p]

[lioness_tatie_otikomi]
#ライオネス 
「ああ、出てくるたびに退治してりゃあよかったんだろうが・・・」[p]

#&f.name
（そんな・・・）[p]

[chara_kakusu]
[anten]

[game_over]


[elsif exp="f.event_main_14_days==0&&f.irain_tec>199||f.event_main_14_days==0&&f.irain_brain>199"]

[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]

[elsif exp="f.event_main_14_days==0"]
 [bg storage="kisidanrouka_tasogare.jpg"]
 [dancho_tatie_touroku]
 [dancho_tatie_show]
 [dancho_tatie_metoji]
#団長 
「[name]、残念だがこの成績では前線に出ることも、後方で働くことも難しいな。今回は、本部で待機していてくれ」[p]
#
#&f.name
（そんな・・・ま、間に合わなかった・・・）[p]
#
[chara_hide_all][chara_off]
[anten]

[game_over]

[elsif exp="f.event_main_15_days==0&&f.irain_charm>199"]

[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]

[elsif exp="f.event_main_15_days==0"]

#&f.name
（う・・・と、とてもじゃないけどこんなんで祝賀会なんか出られないよ・・・）[p]
#

#&f.name
（もっと頑張っておけばよかった・・・）[p]
#

[chara_hide_all][chara_off]
[anten]

[game_over]

[elsif exp="f.event_main_16_days==0"]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]


[elsif exp="f.event_main_17_days==0"]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]

[elsif exp="f.event_main_18_days==1"]

[jump storage="scenario_2/episode/epi10_w.ks" target=*next_day]

[elsif exp="f.event_main_18_days==0"]

;ウェスタ編；ウェスタの酒場にて、ライオネス
[if exp="f.event_main_18_days==0"]
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*lioness_sakaba]
*lioness_kra_end
[eval exp="f.event_sub_18[3]=0"]
[eval exp="f.event_sub_18_sumi[3]=1"]
[endif]

[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]

[elsif exp="f.event_main_19_days==0"]

[if exp="f.write_on==1&&f.letter_day==3&&f.event_main_19_days==0"]
[message_settei_ad]
#&f.name
「・・・あ、ランスロットから手紙がきてる！」[p]
#
[letter_macro]
[endif]

[eval exp="f.letter_day = -1"]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end]

[endif]

[endmacro]






[return]