
[macro name="lovers_mode"]

[if exp="f.friend==1"]
[playbgm storage="omoi_ontama.ogg"]
[elsif exp="f.friend==2"]
[playbgm storage="rakuyou_ontama.ogg"]
[elsif exp="f.friend==3"]
[playbgm storage="odai07_ontama.ogg"]
[endif]


[if exp="f.friend==1&&f.live2d_on!=1"]
[live2d_rans_touroku]
[live2d_rans_show_sekkin]
[live2d_fadein time=1000]
[elsif exp="f.friend==2&&f.live2d_on!=1"]
[live2d_lion_touroku]
[live2d_lion_show_sekkin]
[live2d_fadein time=1000]
[elsif exp="f.friend==3&&f.live2d_on!=1"]
[live2d_kra_touroku]
[live2d_kra_show_sekkin]
;[live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]
[live2d_fadein time=1000]
[endif]

[message_settei_ad]

[if exp="f.koakuma!=1"]
#&f.name
（今日は楽しかったな・・・名残惜しいけど、帰らなくちゃだよね）[p]
#
[endif]

[if exp="f.friend==1"]
#ランスロット
「[name]」[p]
#
#&f.name
「？どうしたの・・・？」[p]
#
#&f.name
（ランスロット・・・？）[p]
#

[elsif exp="f.friend==2"]

#ライオネス
「その・・・お前、もうちょっと、こっちこい」[p]
#

#&f.name
「えっ」[p]
#

#&f.name
（ライオネス・・・？）[p]
#

[elsif exp="f.friend==3"]

#クライスト
「あのさ・・・」[p]
#

#&f.name
「えっ？」[p]
#

#&f.name
（クライストさん、どうしたんだろう・・・えーと・・・）[p]
#

[endif]

;初めの説明
[if exp="f.lovers_mode_explain_sumi!=1&&f.koakuma!=1"]
デート中、一定以上の回数好感度が上がると、帰り際にスキンシップを取れます。[p]
彼がその時喜ぶアプローチを選べば、好感度がアップ！[p]
さらにアップに成功すると、彼との距離が近くなって選べるアプローチが増えます。[p]
アプローチできる回数は好感度によります。[p]
好感度を上げて彼をドギマギさせましょう。[p]
[eval exp="f.lover_mode_explain_sumi=1"]
[endif]



[message_kakusu_ad]

;[refresh_hanyou]
;男性キャラ表示
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_glif_macro.ks"]



;[live2d_new name="glif_r" model_id="glif_r" lip=true jname="グリフ"]
;[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]

;[live2d_show name="glif_r" y=-4.0 x=0.0 scale=8.2]

;[live2d_show name="glif_r" y=-4.7 x=0.0 scale=9.4]

;[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]

;[live2d_fadein time=1000]


[if exp="f.friend==1"]
[eval exp="tf.mode_rans=1"]
[elsif exp="f.friend==2"]
[eval exp="tf.mode_lion=1"]
[elsif exp="f.friend==3"]
[eval exp="tf.mode_kra=1"]
[endif]
;[eval exp="tf.mode_glif=1"]

[eval exp="tf.approach_level=1"]
[call storage="scenario_2/love_mode/mode_react.ks"]
[call storage="scenario_2/love_mode/mode_act.ks"]
[call storage="scenario_2/love_mode/love_irain_act.ks"]


[message_love_mode]
[image layer=0 page=fore name="love_waku" storage="love_mode/love_mode_waku.png" x=0 y=0]

*love_mode_up

[eval exp="tf.atari_kaisuu=0"]

[if exp="tf.approach_level==2"]
[live2d_fadeout time=1000]
[chara_show_2]
[live2d_fadein time=1000]
[elsif exp="tf.approach_level==3"]
[live2d_fadeout time=1000]
[chara_show_3]
[live2d_fadein time=1000]
[endif]


;※アプローチ回数
[if exp="tf.mode_rans==1"]
[approach_kaisuu_rans]
[elsif exp="tf.mode_lion==1"]
[approach_kaisuu_lion]
[elsif exp="tf.mode_kra==1"]
[approach_kaisuu_kra]
[elsif exp="tf.mode_glif==1"]
[approach_kaisuu_glif]
[endif]






;※テンションゲージ
;げーじうぃんどう
[eval exp="tf.mode_x=620"]
[eval exp="tf.mode_y=20"]
[image layer=0 page=fore storage="love_mode/love_heart_window.png" name="mode" x=&tf.mode_x y=&tf.mode_y]


*love_mode

;アプローチレベル表示
[eval exp="tf.approach_x =tf.mode_x-530 "]
[eval exp="tf.approach_y = tf.mode_y+70"]
[image layer=1 page=fore storage="love_mode/level_window.png"  name="mode" x=&tf.approach_x y=&tf.approach_y]
[eval exp="tf.approach_x =tf.approach_x+18"]
[eval exp="tf.approach_y = tf.approach_y+15"]

[if exp="tf.approach_level==1"]
[image layer=1 page=fore storage="love_mode/approach_1.png"  name="mode" x=&tf.approach_x y=&tf.approach_y]
[elsif exp="tf.approach_level==2"]
[image layer=1 page=fore storage="love_mode/approach_2.png"  name="mode" x=&tf.approach_x y=&tf.approach_y]
[elsif exp="tf.approach_level==3"]
[image layer=1 page=fore storage="love_mode/approach_3.png"  name="mode" x=&tf.approach_x y=&tf.approach_y]
[endif]

[eval exp="tf.approach_x =tf.approach_x-60"]
[eval exp="tf.approach_y = tf.approach_y+40"]
[image layer=1 page=fore storage="love_mode/star_kazari_2.png"  name="mode" x=&tf.approach_x y=&tf.approach_y]
[image layer=1 page=fore storage="love_mode/approach_level.png"  height=19 width=150 name="mode" x=&tf.approach_x y=&tf.approach_y]


;モーションを通常に戻す
[if exp="tf.mode_rans==1"]
[chara_motion_return_rans]
[elsif exp="tf.mode_lion==1"]
[chara_motion_return_lion]
[elsif exp="tf.mode_kra==1"]
[chara_motion_return_kra]
[elsif exp="tf.mode_glif==1"]
[chara_motion_return_glif]
[endif]



;ハートゲージ;テンションの大きさに合わせ場合わけ
[eval exp="tf.heart_height=112"]
[eval exp="tf.heart_width=200"]
[eval exp="tf.heart_mode_x=tf.mode_x-30"]

[if exp="tf.approach_level==1"]
[image layer=1 page=fore storage="love_mode/love_heart_1.gif" name="mode" height=&tf.heart_height width=&tf.heart_width x=&tf.heart_mode_x y=&tf.mode_y]
[elsif exp="tf.approach_level==2"]
[image layer=1 page=fore storage="love_mode/love_heart_2.gif" name="mode" height=&tf.heart_height width=&tf.heart_width x=&tf.heart_mode_x y=&tf.mode_y]
[elsif exp="tf.approach_level==3"]
[image layer=1 page=fore storage="love_mode/love_heart_3.gif" name="mode" height=&tf.heart_height width=&tf.heart_width x=&tf.heart_mode_x y=&tf.mode_y]
[image layer=1 page=fore storage="love_mode/love_mode_kirakira_1.gif"  name="mode" x=&tf.heart_mode_x y=&tf.mode_y]
[endif]



;アプローチコマンド;レベルアップ；レベル３の場合はラストアクション
[if exp="tf.atari_kaisuu>0"]
[image layer=1 page=fore storage="love_mode/levelup.png"  name="level_up" x=180 y=200 time=1000]
[image layer=1 page=fore storage="love_mode/mode_step.png"  height=600 width=800 name="level_up" x=0 y=0]
[eval exp="tf.approach_level=tf.approach_level+1"]
[wait time=700]
[free name="level_up" layer=1]
[freeimage layer=1]

[if exp="tf.act_turn==1"]
;[timer_delete]
[action_hyouji_delete]
[eval exp="tf.act_turn=0"]
[endif]

;--------
;レベルアップアクション；キャラごと
[if exp="tf.mode_rans==1"]
[level_up_action_rans]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_lion==1"]
[level_up_action_lion]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_glif==1"]
[level_up_action_glif]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_kra==1"]
[level_up_action_kra]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]


[endif]

;終わりのフラグ
[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

;-----------

[jump target=*love_mode_up]
[endif]



[iscript]

if(tf.approach_level===1){

tf.command_array_num = tf.command_array_1.length-1;

}else if(tf.approach_level===2){

tf.command_array_num = tf.command_array_2.length-1;

}else if(tf.approach_level===3){

tf.command_array_num = tf.command_array_3.length-1;

}
[endscript]



;初期座標

[eval exp="tf.com_hyouji_x=5"]
[eval exp="tf.com_hyouji_y=420"]

;ボタンの位置座標
[eval exp="tf.com_hyouji_x=5"]
[eval exp="tf.com_hyouji_y_button=tf.com_hyouji_y+49"]

;ボタンの文字
[eval exp="tf.com_hyouji_y_moji=tf.com_hyouji_y+48"]
[eval exp="tf.com_hyouji_x_moji=tf.com_hyouji_x"]


;ボタン後ろの飾り
[eval exp="tf.com_hyouji_x_kazari=tf.com_hyouji_x"]
[eval exp="tf.com_hyouji_y_kazari=tf.com_hyouji_y+75"]
[eval exp="tf.kazari_kaisuu=5"]

*kazari_return
[image layer=1 page=fore storage="love_mode/star_kazari_2.png"  name="mode" x=&tf.com_hyouji_x_kazari y=&tf.com_hyouji_y_kazari]

[if exp="tf.kazari_kaisuu>0"]
[eval exp="tf.kazari_kaisuu=tf.kazari_kaisuu-1"]
[eval exp="tf.com_hyouji_x_kazari=tf.com_hyouji_x_kazari+153"]
[jump target=*kazari_return]
[endif]

;表示用ナンバー
[eval exp="tf.hyouji_num = 0"]
[eval exp="tf.hyouji_kaisuu = 0"]

;アクション

[if exp="tf.act_turn==1"]
[chara_action]
[endif]

*hyouji_return
[iscript]
if(tf.approach_level===1){
tf.command_name = tf.command_array_1[tf.hyouji_kaisuu].get("action")
}else if(tf.approach_level===2){
tf.command_name = tf.command_array_2[tf.hyouji_kaisuu].get("action")
}else if(tf.approach_level===3){
tf.command_name = tf.command_array_3[tf.hyouji_kaisuu].get("action")
}
[endscript]
;[glink target=&tf.action_target[tf.hyouji_kaisuu] text=&tf.command_name size=16 name=&tf.button_name[tf.hyouji_kaisuu] face="makinas" width=80 clickse="decision5_koukaonlabo.ogg" x=&tf.com_hyouji_x y=&tf.com_hyouji_y]
;透明ボタン
[button graphic="button/toumei_button_r.png" height="20" width="100" enterimg="lovers_moji_on.png" target=&tf.action_target[tf.hyouji_kaisuu] name=&tf.button_name[tf.hyouji_kaisuu] x="&tf.com_hyouji_x" y="&tf.com_hyouji_y_button" clickse="decision5_koukaonlabo.ogg" visible="true"]
;ボタンイメージ
[image storage="lovers_button.png" layer="1" page="fore" visible="true" x="&tf.com_hyouji_x" y="&tf.com_hyouji_y" name="&tf.button_name[tf.hyouji_kaisuu]"]

[html top=&tf.com_hyouji_y_moji left=&tf.com_hyouji_x_moji]
<html>
<head>
<style>
.p1{
width:100px;
height:20px;
color:white;
font-size:16px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.command_name"]
</div>
</div>
</body>
</html>
[endhtml]


;文字
;[ptext layer="1" page="fore" text=&tf.command_name x="&tf.com_hyouji_x_moji" y="&tf.com_hyouji_y_moji" size="16" face="makinas" color="white" name="&tf.button_name[tf.hyouji_kaisuu]"]

;[glink target=&tf.action_target[tf.hyouji_kaisuu] text=&tf.command_name size=16 name="command_0" face="makinas" width=80 x=&tf.com_hyouji_x y=&tf.com_hyouji_y]



[if exp="tf.hyouji_num<tf.command_array_num"]
[eval exp="tf.hyouji_kaisuu=tf.hyouji_kaisuu+1"]
[eval exp="tf.hyouji_num=tf.hyouji_num+1"]
[eval exp="tf.com_hyouji_x=tf.com_hyouji_x+160"]
[eval exp="tf.com_hyouji_x_moji=tf.com_hyouji_x_moji+160"]

[if exp="tf.hyouji_num==5"]
[eval exp="tf.com_hyouji_x=5"]
[eval exp="tf.com_hyouji_y=490"]
[eval exp="tf.com_hyouji_x_moji=tf.com_hyouji_x"]
[eval exp="tf.com_hyouji_y_moji=tf.com_hyouji_y+48"]
[eval exp="tf.com_hyouji_y_button=tf.com_hyouji_y+49"]
[endif]

[jump target=*hyouji_return]
[endif]



;[action_flag]

*star
;アクションスターくり返し処理
[eval exp="tf.star_x=20"]
[eval exp="tf.star_y=20"]
[eval exp="tf.star_y_kazari_1=tf.star_y-10"]
[eval exp="tf.star_x_kazari=tf.star_x+28"]
[eval exp="tf.star_y_kazari=tf.star_y+23"]
[eval exp="tf.star_x_kazari_2=tf.star_x_kazari+28"]
[image layer=1 page=fore storage="love_mode/action_star_kazari.png" height=30 width=200 x=&tf.star_x_kazari y=&tf.star_y_kazari]

[image layer=1 page=fore storage="love_mode/star_kazari_1.png" x=&tf.star_x_kazari y=&tf.star_y_kazari_1]
[image layer=1 page=fore storage="love_mode/star_kazari_2.png" x=&tf.star_x_kazari_2 y=&tf.star_y_kazari]

[eval exp="tf.star_hyouji=tf.approch"]

*star_return
[eval exp="tf.star_x=tf.star_x+35"]
[image layer=1 page=fore storage="love_mode/action_star.png" name="star" x=&tf.star_x y=&tf.star_y]
[eval exp="tf.star_hyouji=tf.star_hyouji-1"]
[if exp="tf.star_hyouji>0"]
[jump target=*star_return]
[endif]

*end


[if exp="tf.approch==0"]
[jump target=*love_end]
[endif]
[s]

*command_0
;見つめる
[if exp="tf.act_turn==1&&tf.act_num==1"]
;;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=0"]
[jump target=*react]
*command_1
;微笑む

[if exp="tf.act_turn==1&&tf.act_num==2"]
;[timer_delete]
[atari_shori]
[endif]

[eval exp="tf.irain_act=1"]
[jump target=*react]
*command_2
;上目遣い
[if exp="tf.act_turn==1&&tf.act_num==3"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=2"]
[jump target=*react]
*command_3
;首傾げる
[if exp="tf.act_turn==1&&tf.act_num==4"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=3"]
[jump target=*react]
*command_4
;そっぽを向く
[if exp="tf.act_turn==1&&tf.act_num==5"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=4"]
[jump target=*react]
*command_5
;触れる
[if exp="tf.act_turn==1&&tf.act_num==6"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=5"]
[jump target=*react]
*command_6
;手を繋ぐ
[if exp="tf.act_turn==1&&tf.act_num==7"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=6"]
[jump target=*react]

*command_7
;寄りかかる
[if exp="tf.act_turn==1&&tf.act_num==8"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=7"]
[jump target=*react]
*command_8
;腕ぎゅ
[if exp="tf.act_turn==1"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=8"]
[jump target=*react]
*command_9
;悪戯
[if exp="tf.act_turn==1"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=9"]
[jump target=*react]

*command_10
;？？？
[if exp="tf.act_turn==1"]
;[timer_delete]
[atari_shori]
[endif]
[eval exp="tf.irain_act=10"]
[jump target=*react]
*command_11

*react
[cm]
[if exp="tf.act_turn==1"]
[action_hyouji_delete]
[eval exp="tf.act_turn=0"]

[endif]

[if exp="tf.mode_rans==1"]
[men_react_rans]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_lion==1"]
[men_react_lion]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_kra==1"]
[men_react_kra]

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[elsif exp="tf.mode_glif==1"]
[men_react_glif]
[endif]

[eval exp="tf.act_turn=1"]
[free name="mode" layer=1]
[eval exp="tf.approch=tf.approch-1"]
[free name="star" layer=1]
[jump target=*love_mode]

*react_end_rans
*react_end_lion
*react_end_aho
*react_end_glif

[if exp="tf.love_last==1"]
[jump target=*love_end]
[endif]

[s]
*love_end
[cm]

[eval exp="tf.love_last=0"]
[live2d_fadeout time=1000]

[if exp="f.friend==1"]
[live2d_rans_mod_sekkin]
[chara_motion_return_rans]
[elsif exp="f.friend==2"]
[live2d_lion_mod_sekkin]
[chara_motion_return_lion]
[elsif exp="f.friend==3"]
[live2d_kra_mod_sekkin]
[chara_motion_return_kra]
[endif]

[live2d_fadein time=1000]
[message_settei_ad]

[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[free name="love_waku" layer=0]
[free name="mode" layer=0]
[fadeoutbgm time=1000]
[endmacro]