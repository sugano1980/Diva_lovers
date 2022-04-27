
[macro name="free_end_event"]


[if exp="f.episode_flag==3"]


[eval exp="f.irain_heya=0"]
[bg storage="kisidanrouka_tasogare.jpg"]

[dancho_tatie_touroku]
[dancho_tatie_show]
[dancho_tatie_warai]
#団長
「よく頑張ったな、[name]」[p]
#


[if exp="f.irain_tec>199&&f.irain_brain>199"]

#団長
「剣の腕も座学も十分な成績だ。これならどちらでも活躍できそうだぞ」[p]
#
[elsif exp="f.irain_tec>199"]
#団長
「剣の腕は十分だ。これならば前線でも有利に戦えるだろう」[p]
#
[elsif exp="f.irain_brain>199"]
#団長
「その才能をぜひ騎士団の後方支援に生かしてもらいたい」[p]
#
[endif]


#団長
「活躍を期待しているぞ！」[p]
#

#&f.name
「は、はい！」[p]
#

[chara_hide_all][chara_off]
[if exp="f.irain_tec>199&&f.irain_brain>199"]

#&f.name
「前線も後方支援もどっちでも参加できるって事だよね・・・どうしよう？」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*main_event_14_last_day]

[elsif exp="f.irain_tec>199"]
#&f.name
（前線か・・・緊張するな。でも、実力が認められたって事だよね！気を引き締めて行こう！）[p]
#

[elsif exp="f.irain_brain>199"]
#&f.name
（よし、剣は振るえないけど、前線のみんなのためにも、頑張ろう！）[p]
#
*brain
[eval exp="f.kouhou=1"]
[jump target=*kouhou_p]
[endif]

;[chara_hide_all][chara_off]

[endif]
*free_end_return

;出撃前イベント
[call storage="scenario_2/episode/event_14_sub_story.ks"]
[if exp="f.event_sub_14[12]==1&&f.lionkonkando>20&&f.episode_flag==3&&f.event_war_lion==1"]


[anten]
[bg storage="kisidanrouka_tasogare.jpg"]
[eval exp="f.sub_event=1"][skip_button]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show]

[departure_lion]
[eval exp="f.event_sub_14[12]=0"]
[eval exp="f.event_sub_14_sumi[12]=1"]
[endif]


[if exp="f.event_sub_14[13]==1&&f.ranskonkando>20&&f.episode_flag==3&&f.event_war_rans==1"]
[eval exp="f.sub_event=1"][skip_button]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show]

[bg storage="bukiko_tasogare.jpg"]
[departure_rans]
[eval exp="f.event_sub_14[13]=0"]
[eval exp="f.event_sub_14_sumi[13]=1"]
[endif]

;テストコード
;[eval exp="f.krakonkando=50"]
[if exp="f.event_sub_14[14]==1&&f.krakonkando>20&&f.episode_flag==3&&f.event_war_kra==1"]
[eval exp="f.sub_event=1"][skip_button]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]

[departure_kra]
[eval exp="f.event_sub_14[14]=0"]
[eval exp="f.event_sub_14_sumi[14]=1"]
[endif]

[eval exp="f.sub_event=0"]
*kouhou_p
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*free_end_event]

[endmacro]
[return]

