

[iscript]

tf.command_array_1 =[
tf.irain_action_0,
tf.irain_action_1,
tf.irain_action_2,
tf.irain_action_3,
tf.irain_action_4
];


tf.command_array_2 =[
tf.irain_action_0,
tf.irain_action_1,
tf.irain_action_2,
tf.irain_action_3,
tf.irain_action_4,
tf.irain_action_5,
tf.irain_action_6,
];

tf.command_array_3 =[
tf.irain_action_0,
tf.irain_action_1,
tf.irain_action_2,
tf.irain_action_3,
tf.irain_action_4,
tf.irain_action_5,
tf.irain_action_6,
tf.irain_action_7,
tf.irain_action_8,
tf.irain_action_9
];


tf.action_target = [
'*command_0',
'*command_1',
'*command_2',
'*command_3',
'*command_4',
'*command_5',
'*command_6',
'*command_7',
'*command_8',
'*command_9',
'*command_10',

];

tf.button_name=[
'command_0',
'command_1',
'command_2',
'command_3',
'command_4',
'command_5',
'command_6',
'command_7',
'command_8',
'command_9',
'command_10',
'command_11',


];

[endscript]


;イレインアクション対応マクロ;ランス
[macro name="men_react_rans"]

[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
[rans_arms_normal]
[rans_exp_normal]
[rans_mod_idle_no_move]


[if exp="tf.irain_act==0"]
[rans_react_0]
[elsif exp="tf.irain_act==1"]
[rans_react_1]
[elsif exp="tf.irain_act==2"]
[rans_react_2]
[elsif exp="tf.irain_act==3"]
[rans_react_3]
[elsif exp="tf.irain_act==4"]
[rans_react_4]
[elsif exp="tf.irain_act==5"]
[rans_react_5]
[elsif exp="tf.irain_act==6"]
[rans_react_6]
[elsif exp="tf.irain_act==7"]
[rans_react_7]
[elsif exp="tf.irain_act==8"]
[rans_react_8]
[elsif exp="tf.irain_act==9"]
[rans_react_9]
[elsif exp="tf.irain_act==10"]
[rans_react_10]
;ラストまで行ったフラグ
[eval exp="tf.love_last=1"]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#

[glink target=*sel_1 text="（立場？）" size=17 width=600 x=65 y=260]
[glink target=*sel_2 text="（立場なんか関係ないよ）" size=17 width=600 x=65 y=320]
[s]

*sel_1
[free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[reset_camera]
[rans_head_left_z]
[rans_head_under_y]
[rans_eyes_left]
#ランスロット
「・・・いや、なんでもないんだ。気にするな」[p]
#
[rans_exp_mehuse]
#&f.name
（ランスロット？）[p]
#
[jump target=*rans_last]
;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_rans]


*sel_2

[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[rans_exp_mehuse]
#ランスロット
「・・・そういうわけには、いかないだろう」[p]
#
[rans_head_above_y]
[rans_head_left_x]
[rans_eyes_left]
[rans_eyes_under]
[rans_mod_idle_no_move_mehuse]
[rans_exp_komari]
#ランスロット
「・・・お前は本当に、真っ直ぐで困るな・・・」[p]
#

[rans_exp_kunou]

#ランスロット
「だが、これ以上は・・・」[p]
#

[rans_eyes_under]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
[rans_head_right_x]
[rans_head_under_y]

#ランスロット
「後が辛いんだ。わかってくれ、[name]」[p]
#
[rans_mod_idle]
[rans_exp_sinpai]
[rans_eyes_left]
[reset_camera]
;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_rans]
[endif]
*rans_last
[endmacro]

;アクションランス
[macro name="rans_action"]

[iscript]
if(tf.approach_level===1){
tf.act_num = tf.rans_act.length;
}else if(tf.approach_level===2){
tf.act_num = tf.rans_act_1.length;
}else if(tf.approach_level===3){
tf.act_num = tf.rans_act_2.length;
}

tf.act_num = Math.floor( Math.random() *tf.act_num ) + 1
[endscript]


[if exp="tf.act_num==1"]
[rans_react_11]
[elsif exp="tf.act_num==2"]
[rans_react_12]
[elsif exp="tf.act_num==3"]
[rans_react_13]
[elsif exp="tf.act_num==4"]
[rans_react_14]
[elsif exp="tf.act_num==5"]
[rans_react_15]
[elsif exp="tf.act_num==6"]
[rans_react_16]
[elsif exp="tf.act_num==7"]
[rans_react_17]
[endif]

[endmacro]


;アクションライオネス
[macro name="lion_action"]

[iscript]
if(tf.approach_level===1){
tf.act_num = tf.lion_act.length;
}else if(tf.approach_level===2){
tf.act_num = tf.lion_act_1.length;
}else if(tf.approach_level===3){
tf.act_num = tf.lion_act_2.length;
}

tf.act_num = Math.floor( Math.random() *tf.act_num ) + 1
[endscript]


[if exp="tf.act_num==1"]
[lion_react_11]
[elsif exp="tf.act_num==2"]
[lion_react_12]
[elsif exp="tf.act_num==3"]
[lion_react_13]
[elsif exp="tf.act_num==4"]
[lion_react_14]
[elsif exp="tf.act_num==5"]
[lion_react_15]
[elsif exp="tf.act_num==6"]
[lion_react_16]
[elsif exp="tf.act_num==7"]
[lion_react_17]
[endif]

[endmacro]


;アクションクライスト
[macro name="kra_action"]

[iscript]
if(tf.approach_level===1){
tf.act_num = tf.kra_act.length;
}else if(tf.approach_level===2){
tf.act_num = tf.kra_act_1.length;
}else if(tf.approach_level===3){
tf.act_num = tf.kra_act_2.length;
}

tf.act_num = Math.floor( Math.random() *tf.act_num ) + 1
[endscript]


[if exp="tf.act_num==1"]
[kra_react_11]
[elsif exp="tf.act_num==2"]
[kra_react_12]
[elsif exp="tf.act_num==3"]
[kra_react_13]
[elsif exp="tf.act_num==4"]
[kra_react_14]
[elsif exp="tf.act_num==5"]
[kra_react_15]
[elsif exp="tf.act_num==6"]
[kra_react_16]
[elsif exp="tf.act_num==7"]
[kra_react_17]
[endif]

[endmacro]


;アクショングリフ
[macro name="glif_action"]

[iscript]
if(tf.approach_level===1){
tf.act_num = tf.glif_act.length;
}else if(tf.approach_level===2){
tf.act_num = tf.glif_act_1.length;
}else if(tf.approach_level===3){
tf.act_num = tf.glif_act_2.length;
}

tf.act_num = Math.floor( Math.random() *tf.act_num ) + 1
[endscript]


[if exp="tf.act_num==1"]
[glif_react_11]
[elsif exp="tf.act_num==2"]
[glif_react_12]
[elsif exp="tf.act_num==3"]
[glif_react_13]
[elsif exp="tf.act_num==4"]
[glif_react_14]
[elsif exp="tf.act_num==5"]
[glif_react_15]
[elsif exp="tf.act_num==6"]
[glif_react_16]
[elsif exp="tf.act_num==7"]
[glif_react_17]
[endif]

[endmacro]





;ライオネス反応
;イレインアクション対応マクロ;ライオネス
[macro name="men_react_lion"]

[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_normal]
[lioness_arms_normal]
[lioness_face_normal]
[lioness_mod_idle]


[if exp="tf.irain_act==0"]
[lion_react_0]
[elsif exp="tf.irain_act==1"]
[lion_react_1]
[elsif exp="tf.irain_act==2"]
[lion_react_2]
[elsif exp="tf.irain_act==3"]
[lion_react_3]
[elsif exp="tf.irain_act==4"]
[lion_react_4]
[elsif exp="tf.irain_act==5"]
[lion_react_5]
[elsif exp="tf.irain_act==6"]
[lion_react_6]
[elsif exp="tf.irain_act==7"]
[lion_react_7]
[elsif exp="tf.irain_act==8"]
[lion_react_8]
[elsif exp="tf.irain_act==9"]
[lion_react_9]
[elsif exp="tf.irain_act==10"]
[lion_react_10]
;ラストまで行ったフラグ
[eval exp="tf.love_last=1"]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#

[glink target=*sel_lion_1 text="（本気って？）" size=17 width=600 x=65 y=260]
[glink target=*sel_lion_2 text="（本気に、していいよ？）" size=17 width=600 x=65 y=320]
[s]

*sel_lion_1
[free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[reset_camera]
[lioness_head_left_x]
[lioness_head_under_y]
[lioness_eyes_left]
#ライオネス
「・・・いや、なんでもね、やっぱ、気にすんな」[p]
#
[lioness_face_mehuse_dai]
#&f.name
（ライオネス？）[p]
#
[jump target=*lion_last]

;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_lion]


*sel_lion_2

[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[lioness_face_tere]
[lioness_face_mehuse_dai]
#ライオネス
「馬鹿お前・・・俺の気持ちも知らねえで・・・」[p]
#
[lioness_head_above_y]
[lioness_eyes_under]
[lioness_face_metoji]
#ライオネス
「・・・俺がどんだけ・・・我慢してると・・・」[p]
#

[lioness_head_right_x]
[lioness_eyes_right]
[lioness_face_tere]
#ライオネス
「いや、なんでもねえ」[p]
#

[lioness_mod_idle]
[reset_camera]
;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_lion]
[endif]
*lion_last
[endmacro]



;クライスト反応
;イレインアクション対応マクロ;クライスト
[macro name="men_react_kra"]

[aho_head_normal]
[aho_body_normal]
[aho_eyes_normal]
[aho_arms_normal]
[aho_face_normal]
[aho_mod_idle_normal]


[if exp="tf.irain_act==0"]
[kra_react_0]
[elsif exp="tf.irain_act==1"]
[kra_react_1]
[elsif exp="tf.irain_act==2"]
[kra_react_2]
[elsif exp="tf.irain_act==3"]
[kra_react_3]
[elsif exp="tf.irain_act==4"]
[kra_react_4]
[elsif exp="tf.irain_act==5"]
[kra_react_5]
[elsif exp="tf.irain_act==6"]
[kra_react_6]
[elsif exp="tf.irain_act==7"]
[kra_react_7]
[elsif exp="tf.irain_act==8"]
[kra_react_8]
[elsif exp="tf.irain_act==9"]
[kra_react_9]
[elsif exp="tf.irain_act==10"]
[kra_react_10]
;ラストまで行ったフラグ
[eval exp="tf.love_last=1"]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#

[glink target=*sel_aho_1 text="（えーっと・・・？）" size=17 width=600 x=65 y=260]
[glink target=*sel_aho_2 text="（いいよ）" size=17 width=600 x=65 y=320]
[s]

*sel_aho_1
[free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[reset_camera]
[aho_head_under_y]
[aho_head_normal]
[aho_face_mehuse]
#クライスト
「・・・ごめん」[p]
#
[aho_head_right_z]
[aho_face_komari_warai]
#クライスト
「・・・ああ、うん・・・何でもないよ。気にしないで」[p]
#
#&f.name
（クライストさん？）[p]
#

[jump target=*kra_last]
;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_aho]


*sel_aho_2

[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[aho_face_komari]
#クライスト
「・・・[name]。君がかわいい」[p]
#

[aho_eyes_right]
[aho_head_right_x]
[aho_head_under_y]
[aho_face_kunou]
#クライスト
「全部・・・かわいい」[p]
#

[aho_head_normal]
[aho_head_left_z]
[aho_face_hutuu_warai]
#クライスト
「でもね、すごく大事なんだ。だから・・・」[p]
#

[aho_head_right_x]
[aho_eyes_right]
[aho_face_mehuse]
#クライスト
「ごめんね」[p]
#

[aho_mod_idle_normal_mehuse]
[reset_camera]
;[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_aho]
[endif]
*kra_last
[endmacro]




;グリフ反応
;イレインアクション対応マクロ;グリフ
[macro name="men_react_glif"]

[glif_head_normal]
[glif_body_normal]
[glif_eyes_normal]
[glif_arms_normal]
[glif_exp_normal]
[glif_mod_idle_normal]


[if exp="tf.irain_act==0"]
[glif_react_0]
[elsif exp="tf.irain_act==1"]
[glif_react_1]
[elsif exp="tf.irain_act==2"]
[glif_react_2]
[elsif exp="tf.irain_act==3"]
[glif_react_3]
[elsif exp="tf.irain_act==4"]
[glif_react_4]
[elsif exp="tf.irain_act==5"]
[glif_react_5]
[elsif exp="tf.irain_act==6"]
[glif_react_6]
[elsif exp="tf.irain_act==7"]
[glif_react_7]
[elsif exp="tf.irain_act==8"]
[glif_react_8]
[elsif exp="tf.irain_act==9"]
[glif_react_9]
[elsif exp="tf.irain_act==10"]
[glif_react_10]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#

[glink target=*sel_glif_1 text="（期待？）" size=17 width=600 x=65 y=260]
[glink target=*sel_glif_2 text="（何を？）" size=17 width=600 x=65 y=320]
[s]

*sel_glif_1
[free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[reset_camera]

[glif_exp_mehuse_muzukasii]
#グリフ
「・・・すみません」[p]
#
[glif_head_right_x]
[glif_exp_komari_warai]
#グリフ
「・・・大丈夫です、その・・・すみません、いきなり・・・気にしないでください」[p]
#
#&f.name
（グリフ？）[p]
#

[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_glif]


*sel_glif_2

[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]


[glif_head_right_z]
#グリフ
「・・・許してくれますか？僕から・・・貴女に触れること」[p]
#

[glif_head_right_x]
[glif_head_under_y]
[glif_exp_mehuse]
#グリフ
「もっと、貴女を知ろうとすること・・・」[p]
#

[glif_head_normal]
[glif_exp_ketui]
#グリフ
「僕は・・・貴女が・・・許してくれるって、思ってもいいんでしょうか」[p]
#

#&f.name
「グリフ・・・？どうしたの？」[p]
#
[glif_exp_mihiraki]
[glif_head_right_x]
[glif_eyes_right]
[glif_exp_mousiwakenai]
#グリフ
「あっ・・・ああ・・・い、いいんです・・・」[p]
#
[glif_head_normal]
[glif_eyes_normal]
[glif_mod_idle_mehuse]
[glif_exp_mehuse_warai]
#グリフ
「大丈夫です。すみません、僕、少しどうかしてました・・・」[p]
#

[reset_camera]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react_end_glif]
[endif]

[endmacro]






[macro name="action_flag"]

[if exp="tf.act_num==1"]
[anim name="command_0" top="-=30" time=300]
[anim name="command_0" top="+=30" time=350]
[elsif exp="tf.act_num==2"]
[anim name="command_1" top="-=30" time=300]
[anim name="command_1" top="+=30" time=350]
[elsif exp="tf.act_num==3"]
[anim name="command_2" top="-=30" time=300]
[anim name="command_2" top="+=30" time=350]
[elsif exp="tf.act_num==4"]
[anim name="command_3" top="-=30" time=300]
[anim name="command_3" top="+=30" time=350]
[elsif exp="tf.act_num==5"]
[anim name="command_4" top="-=30" time=300]
[anim name="command_4" top="+=30" time=350]
[elsif exp="tf.act_num==6"]
[anim name="command_5" top="-=30" time=300]
[anim name="command_5" top="+=30" time=350]
[elsif exp="tf.act_num==7"]
[anim name="command_6" top="-=30" time=300]
[anim name="command_6" top="+=30" time=350]
[endif]

[endmacro]


[macro name="chara_show_2"]

[if exp="tf.mode_rans==1"]
[live2d_mod name="rans2" y=-4.2 scale=8.5]
[elsif exp="tf.mode_lion==1"]
[live2d_mod name="lioness" y=-3.7 scale=7.5]
[elsif exp="tf.mode_kra==1"]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[elsif exp="tf.mode_glif==1"]
[live2d_mod name="glif_r" y=-4.0 x=0.0 scale=8.2]
[endif]


[endmacro]

[macro name="chara_show_3"]

[if exp="tf.mode_rans==1"]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[elsif exp="tf.mode_lion==1"]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[elsif exp="tf.mode_kra==1"]
[live2d_mod name="aho" y=-4.7 scale=9.4]
[elsif exp="tf.mode_glif==1"]
[live2d_mod name="glif_r" y=-4.7 x=0.0 scale=9.4]
[endif]


[endmacro]


[macro name="approach_kaisuu_rans"]
[if exp="f.ranskonkando<11"]
[eval exp="tf.approch = 1"]
[elsif exp="f.ranskonkando<21"]
[eval exp="tf.approch = 2"]
[elsif exp="f.ranskonkando<41"]
[eval exp="tf.approch = 3"]
[elsif exp="f.ranskonkando<61"]
[eval exp="tf.approch = 4"]
[elsif exp="f.ranskonkando>60"]
[eval exp="tf.approch = 5"]
[endif]

[endmacro]

[macro name="approach_kaisuu_lion"]
[if exp="f.lionkonkando<11"]
[eval exp="tf.approch = 1"]
[elsif exp="f.lionkonkando<21"]
[eval exp="tf.approch = 2"]
[elsif exp="f.lionkonkando<41"]
[eval exp="tf.approch = 3"]
[elsif exp="f.lionkonkando<61"]
[eval exp="tf.approch = 4"]
[elsif exp="f.lionkonkando>60"]
[eval exp="tf.approch = 5"]
[endif]

[endmacro]


[macro name="approach_kaisuu_kra"]
[if exp="f.krakonkando<11"]
[eval exp="tf.approch = 1"]
[elsif exp="f.krakonkando<21"]
[eval exp="tf.approch = 2"]
[elsif exp="f.krakonkando<41"]
[eval exp="tf.approch = 3"]
[elsif exp="f.krakonkando<61"]
[eval exp="tf.approch = 4"]
[elsif exp="f.krakonkando>60"]
[eval exp="tf.approch = 5"]
[endif]

[endmacro]


[macro name="approach_kaisuu_glif"]
[if exp="f.glifkonkando<11"]
[eval exp="tf.approch = 1"]
[elsif exp="f.glifkonkando<21"]
[eval exp="tf.approch = 2"]
[elsif exp="f.glifkonkando<41"]
[eval exp="tf.approch = 3"]
[elsif exp="f.glifkonkando<61"]
[eval exp="tf.approch = 4"]
[elsif exp="f.glifkonkando<81"]
[eval exp="tf.approch = 5"]
[endif]

[endmacro]




[macro name="chara_motion_return_rans"]
[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
[rans_arms_normal]
[rans_exp_normal]
[if exp="tf.approach_level==1"]
[rans_mod_idle]
[elsif exp="tf.approach_level==2"]
[rans_mod_idle_mode_2]
[elsif exp="tf.approach_level==3"]
[rans_mod_idle_mode_3]
[endif]
[endmacro]

[macro name="chara_motion_return_lion"]
[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_normal]
[lioness_arms_normal]
[lioness_face_normal]
[if exp="tf.approach_level==1"]
[lioness_mod_idle]
[elsif exp="tf.approach_level==2"]
[lioness_mod_idle_mode_2]
[elsif exp="tf.approach_level==3"]
[lioness_mod_idle_mode_3]
[endif]
[endmacro]

[macro name="chara_motion_return_kra"]
[aho_head_normal]
[aho_body_normal]
[aho_eyes_normal]
[aho_arms_normal]
[aho_face_normal]
[if exp="tf.approach_level==1"]
[aho_mod_idle_normal]
[elsif exp="tf.approach_level==2"]
[aho_mod_idle_mode_2]
[elsif exp="tf.approach_level==3"]
[aho_mod_idle_mode_3]
[endif]
[endmacro]

[macro name="chara_motion_return_glif"]
[glif_head_normal]
[glif_body_normal]
[glif_eyes_normal]
[glif_arms_normal]
[glif_exp_normal]
[if exp="tf.approach_level==1"]
[glif_mod_idle_normal]
[elsif exp="tf.approach_level==2"]
[glif_mod_idle_mode_2]
[elsif exp="tf.approach_level==3"]
[glif_mod_idle_mode_3]
[endif]
[endmacro]




;レベルあっぷアクションランス
[macro name="level_up_action_rans"]
[if exp="tf.mode_rans==1&&tf.approach_level==4"]
[eval exp="tf.irain_act=10"]
[men_react_rans]
[eval exp="tf.irain_act=0"]
[eval exp="tf.level_action=0"]
;[s]
;[jump storage=""]

[elsif exp="tf.mode_rans==1&&tf.level_action!=1"]
[rans_head_right_x]
[rans_eyes_right]
#ランスロット
「・・・・・・」[p]
#
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_bisyo]

[eval exp="tf.level_action=1"]
[elsif exp="tf.mode_rans==1&&tf.level_action==1"]
[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット
「・・・・・・[name]」[p]
#
[rans_mod_idle_no_move]
[rans_head_normal]
[rans_exp_normal]
[endif]


[endmacro]

;レベルアップアクションライオネス
[macro name="level_up_action_lion"]
[if exp="tf.mode_lion==1&&tf.approach_level==4"]
[eval exp="tf.irain_act=10"]
[men_react_lion]
[eval exp="tf.irain_act=0"]
[eval exp="tf.level_action=0"]
;[s]
;[jump storage=""]

[elsif exp="tf.mode_lion==1&&tf.level_action!=1"]
[lioness_head_right_x]
[lioness_eyes_right]
[lioness_head_under_y]
#ライオネス
「・・・まだ、遠いな・・・」[p]
#
#&f.name
「えっ」[p]
#
[lioness_face_tere]
[lioness_head_normal]
[lioness_face_normal]

[eval exp="tf.level_action=1"]
[elsif exp="tf.mode_lion==1&&tf.level_action==1"]
#ライオネス
「・・・[name]・・・俺」[p]
#
#&f.name
（ライオネス・・・？）[p]
#
[lioness_head_under_y]
[lioness_face_mehuse_dai]
[lioness_head_normal]
[lioness_face_warai]
[endif]


[endmacro]



;レベルアップアクションクライスト
[macro name="level_up_action_kra"]
[if exp="tf.mode_kra==1&&tf.approach_level==4"]
[eval exp="tf.irain_act=10"]
[men_react_kra]
[eval exp="tf.irain_act=0"]
[eval exp="tf.level_action=0"]
;[s]
;[jump storage=""]

[elsif exp="tf.mode_kra==1&&tf.level_action!=1"]
[aho_face_mehuse]
[aho_head_right_x]
[aho_eyes_right]
[aho_head_under_y]
#クライスト
「・・・・・・」[p]
#
#&f.name
（・・・クライスト、さん・・・？）[p]
#
[aho_face_normal_majime]
[aho_eyes_right]
[aho_head_normal]
[aho_face_normal]

[eval exp="tf.level_action=1"]
[elsif exp="tf.mode_kra==1&&tf.level_action==1"]
#クライスト
「・・・困ったなぁ・・・」[p]
#
#&f.name
「えっ・・・？」[p]
#
[aho_head_normal]
[aho_face_komari_warai]
[aho_face_normal_majime]
[aho_eyes_normal]
[endif]


[endmacro]


;レベルアップアクショングリフ
[macro name="level_up_action_glif"]
[if exp="tf.mode_glif==1&&tf.approach_level==4"]
[eval exp="tf.irain_act=10"]
[men_react_glif]
[eval exp="tf.irain_act=0"]
[eval exp="tf.level_action=0"]
[s]
[jump storage=""]

[elsif exp="tf.mode_glif==1&&tf.level_action!=1"]
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
[glif_head_under_y]
#グリフ
「・・・・・・」
[glif_mod_idle_normal]
[glif_head_normal]
[glif_exp_normal]
[p]
#

[eval exp="tf.level_action=1"]
[elsif exp="tf.mode_glif==1&&tf.level_action==1"]

[glif_eyes_right]
[glif_exp_komari_sekimen]
[glif_head_right_x]
[glif_head_under_y]

[endif]


[endmacro]



[macro name="chara_action"]
[if exp="tf.mode_rans==1"]
[rans_mod_idle]
[rans_action]
[elsif exp="tf.mode_lion==1"]
[lioness_mod_idle]
[lion_action]
[elsif exp="tf.mode_kra==1"]
[aho_mod_idle_normal]
[kra_action]
[elsif exp="tf.mode_glif==1"]
[glif_mod_idle_normal]
[glif_action]
[endif]

[endmacro]

;メッセージ画面表示
[macro name="message_love_mode"]
[layopt layer=message0 visible=false]
;	メッセージウィンドウの設定
	[position layer="message1" width="514" height="280" top="290" left="210"]
	[position layer="message1" frame="message_love.png" margint="60" marginl="30" marginr="30" page="fore"]

;	名前枠の設定
    [free name="chara_name_area" layer="message1"]
	[ptext name="chara_name_area" layer="message1" size="26" bold="bold" shadow="0x333333" x="220" y="290"]
	[chara_config ptext="chara_name_area"]
[eval exp="f.ad=1"]
[layopt layer=message1 visible=true]
[current layer="message1"]
[endmacro]

;アクションの表示
[macro name="action_hyouji"]
;[w][w][w]
;[eval exp="tf.action_x=tf.mode_x-280"]
;[eval exp="tf.action_y=tf.mode_y+220"]
;[image layer=1 page=fore storage="love_mode/action.png"  name="action_hyouji" x= &tf.action_x y=&tf.action_y]

[endmacro]

[macro name="action_hyouji_delete"]
;[free name="action_hyouji" layer=1]
[clearfix]
[free name="button_name" layer=1]
[endmacro]


;アップになった時のモデルの大きさリターン
[macro name="model_return"]

[if exp="tf.mode_rans==1&&tf.approach_level==2"]
[live2d_mod name="rans2" y=-4.2 scale=8.5]
[elsif exp="tf.mode_lion==1&&tf.approach_level==2""]
[live2d_mod name="lioness" y=-3.7 scale=7.5]
[elsif exp="tf.mode_kra==1&&tf.approach_level==2""]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[elsif exp="tf.mode_glif==1&&tf.approach_level==2""]
[live2d_mod name="glif_r" y=-4.0 x=0.0 scale=8.2]
[elsif exp="tf.mode_rans==1&&tf.approach_level==3"]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[elsif exp="tf.mode_lion==1&&tf.approach_level==3"]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[elsif exp="tf.mode_kra==1&&tf.approach_level==3"]
[live2d_mod name="aho" y=-4.7 scale=9.4]
[elsif exp="tf.mode_glif==1&&tf.approach_level==3"]
[live2d_mod name="glif_r" y=-4.7 x=0.0 scale=9.4]
[endif]


[endmacro]


;当たった時の処理
[macro name="atari_shori"]
;[action_hyouji_delete]
[if exp="tf.mode_rans==1"]
[rans]
[koukando_up]
[elsif exp="tf.mode_lion==1"]
[lion]
[koukando_up]
[elsif exp="tf.mode_kra==1"]
[kra]
[koukando_up]
[elsif exp="tf.mode_glif==1"]
[glif]
[koukando_up]
[endif]
[eval exp="tf.atari_kaisuu=tf.atari_kaisuu+1"]
[eval exp="tf.act_turn=0"][eval exp="tf.act_num=0"]

[endmacro]









[return]