
[macro name="date_go"]

[if exp="f.date_now==1"]
[serihu_chara]
[place_id_confirm]
[endif]



;ここから実行
[message_settei_ad]

[live2d_fadeout time=1000]
[if exp="f.friend==1&&f.live2d_on!=1"]
[live2d_rans_touroku]
[live2d_rans_show_sekkin]
[elsif exp="f.friend==1&&f.live2d_on==1"]
[live2d_rans_mod_sekkin]
[elsif exp="f.friend==2&&f.live2d_on!=1"]
[live2d_lion_touroku]
[live2d_lion_show_sekkin]
[elsif exp="f.friend==2&&f.live2d_on==1"]
[live2d_lion_mod_sekkin]
[elsif exp="f.friend==3&&f.live2d_on!=1"]
[live2d_kra_touroku]
[live2d_kra_show_sekkin]
[elsif exp="f.friend==3&&f.live2d_on==1"]
[live2d_kra_mod_sekkin]
[endif]
[live2d_fadein time=1000]

[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/date/date_go_lib.ks"]
[loadjs storage="date_sel_serihu_data.js"]
[loadjs storage="date_sel_serihu_data_2.js"]
[call storage="scenario_2/date/date_sel_serihu_data.ks"]





*date_start
[eval exp="tf.place_return=0"]
[date_place]

;イレインの選択肢と返答
;-----
[sel_nyuryoku]
[kizuna_confirm]
[irain_answer_confirm]



[if exp="f.irain_move>0"]
[live2d_model_action]
;キャラの返答
[chara_sel_answer]
[elsif exp="f.irain_move==0"]
[live2d_model_action_p]
;キャラの返答
[chara_sel_answer_p]
[endif]


#&f.friend_n
「[emb exp=tf.date_zatudan]」[p]
#
[if exp="f.place_id==6&&f.friend==2||f.place_id==6&&f.friend==3"]
[jump target=*sel_end]
[endif]


;特別なデートの場合セリフ変更
[if exp="f.date_sp==1"]
[date_sp_zatudan]
[endif]









[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
[glink target=*sel_date_1 text=&tf.date_sel_1 size=17 width=600 x=65 y=260]

[if exp="f.ryouri_comp==1&&f.place_id==0||f.ryouri_comp==1&&f.place_id==15"]
[else]
[glink target=*sel_date_2 text=&tf.date_sel_2 size=17 width=600 x=65 y=320]
[endif]

[if exp="tf.date_sel_3!=0"]
[glink target=*sel_date_3 text=&tf.date_sel_3 size=17 width=600 x=65 y=380]
[endif]

;場所番号３、６、７の場合place_idを新規に入力
[s]

*sel_date_1

[free name="sentakusi" layer=0]
[cm][ka]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="tf.sel=1"]

[if exp="f.irain_move>0"]
[live2d_model_action_answer]
[elsif exp="f.irain_move==0"]
[live2d_model_action_answer_p]
[endif]

#&f.friend_n
「[emb exp=f.date_sel_1_a]」[p]
#

;０じゃない場合だけセリフ
[if exp="f.answer_sel_1_a!=0"]
#&f.name
「[emb exp=f.answer_sel_1_a]」[p]
#
[endif]

[koukando_confirm][koukando_act]
[place_id_result]
;場所移動の場合もう一回繰り返し
[if exp="tf.place_return>0"]
[jump target=*date_start]
[endif]

[jump target=*sel_end]


*sel_date_2
[free name="sentakusi" layer=0]
[cm][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="tf.sel=2"]

[if exp="f.irain_move>0"]
[live2d_model_action_answer]
[elsif exp="f.irain_move==0"]
[live2d_model_action_answer_p]
[endif]

#&f.friend_n
「[emb exp=f.date_sel_2_a]」[p]
#


;０じゃない場合だけセリフ
[if exp="f.answer_sel_2_a!=0"]
#&f.name
「[emb exp=f.answer_sel_2_a]」[p]
#
[endif]


[koukando_confirm][koukando_act]
[place_id_result]
;場所移動の場合もう一回繰り返し
[if exp="tf.place_return>0"]
[jump target=*date_start]
[endif]
[jump target=*sel_end]

*sel_date_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="tf.sel=3"]

[if exp="f.irain_move>0"]
[live2d_model_action_answer]
[elsif exp="f.irain_move==0"]
[live2d_model_action_answer_p]
[endif]

#&f.friend_n
「[emb exp=f.date_sel_3_a]」[p]
#
;０じゃない場合だけセリフ
[if exp="f.answer_sel_3_a!=0"]
#&f.name
「[emb exp=f.answer_sel_3_a]」[p]
#
[endif]
[koukando_confirm][koukando_act]
[place_id_result]
;場所移動の場合もう一回繰り返し
[if exp="tf.place_return>0"]
[jump target=*date_start]
[endif]
[jump target=*sel_end]

*sel_end

[eval exp="tf.sel=0"]
[live2d_fadeout time=1000]

[if exp="f.friend==3"]
[aho_face_normal_majime]
[elsif exp="f.friend==2"]
[lioness_face_normal]
[elsif exp="f.friend==1"]
[rans_exp_normal]
[endif]

[image storage="black.png" layer="3" page="fore" name="kuro" visible="true" x="0" y="0" time=1000]

[wait time=1500]
[free layer="3" name="kuro" time="3000"]

[endmacro]


[return]