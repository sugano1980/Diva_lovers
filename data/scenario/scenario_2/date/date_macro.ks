
[macro name="serihu_chara"]
[if exp="f.friend>0"]

[if exp="f.friend==1"]
[eval exp="f.friend_n='ランスロット'"]
[elsif exp="f.friend==2"]
[eval exp="f.friend_n='ライオネス'"]
[elsif exp="f.friend==3"]
[eval exp="f.friend_n='クライスト'"]
[endif]

[elsif exp="f.friend==0"]

[if exp="f.place_chara[tf.place_num]==1"]
[eval exp="f.friend_n='ランスロット'"]
[eval exp="f.target_chara=1"]
[elsif exp="f.place_chara[tf.place_num]==2"]
[eval exp="f.friend_n='ライオネス'"]
[eval exp="f.target_chara=2"]
[elsif exp="f.place_chara[tf.place_num]==3"]
[eval exp="f.friend_n='クライスト'"]
[eval exp="f.target_chara=3"]
[endif]

[endif]

[endmacro]

[macro name="chara"]

[if exp="f.place_chara[tf.place_num]==1"]
[eval exp="f.friend_name='ランスロット'"]
[eval exp="f.target_chara=1"]
[elsif exp="f.place_chara[tf.place_num]==2"]
[eval exp="f.friend_name='ライオネス'"]
[eval exp="f.target_chara=2"]
[elsif exp="f.place_chara[tf.place_num]==3"]
[eval exp="f.friend_name='クライストさん'"]
[eval exp="f.target_chara=3"]
[endif]

[eval exp="f.target_place=tf.place_num"]

[emb exp=f.friend_name]
[endmacro]

[macro name="friend_hannou"]

;[call storage="scenario_2/date/date_sel_serihu_data_2.ks"]
[eval exp="tf.hello_serihu=0"]
[iscript]

if(f.s_wesuta===1){

if(f.target_chara===2){
tf.hello_serihu = tf.date_osasoi_w[1].lion_hello;
}else if(f.target_chara===3){
tf.hello_serihu = tf.date_osasoi_w[2].kra_hello;
}

}else{

if(f.target_chara===1){
tf.hello_serihu = tf.date_osasoi[0].rans_hello;
}else if(f.target_chara===2){
tf.hello_serihu = tf.date_osasoi[1].lion_hello;
}else if(f.target_chara===3){
tf.hello_serihu = tf.date_osasoi[2].kra_hello;
}
}

[endscript]
[if exp="f.target_chara==1"]
[rans_exp_mihiraki]
[w]
[live2d_fadeout time=1000]
[live2d_rans_mod_sekkin]
[rans_exp_normal]
[elsif exp="f.target_chara==2"]
[lioness_face_odoroki]
[w]
[live2d_fadeout time=1000]
[live2d_lion_mod_sekkin]
[lioness_face_normal]
[elsif exp="f.target_chara==3"]
[aho_face_mihiraki]
[w]
[live2d_fadeout time=1000]
[live2d_kra_mod_sekkin]
[aho_face_normal]
[endif]

[live2d_fadein time=1000]
[serihu_chara]

[if exp="f.event_epi5_rans_ok>0&&f.event_epi5_rans_ok<8||f.event_main_15_days>0&&f.event_rans_search_yes==-1"]




[if exp="f.target_chara==3"]
[aho_face_normal_majime]
#&f.friend_n
「・・・なんか、浮かない顔だね、大丈夫？」[p]
#
#&f.name
「だ、大丈夫だよ！」[p]
#
#&f.friend_n
「・・・・・・」[p]
#

#&f.name
（心配かけちゃいけないよね・・・）[p]
#
[endif]


[else]
#&f.friend_n
「[emb exp=tf.hello_serihu]」[p]
#
[endif]

[endmacro]



[macro name="friend_zatudan_serihu"]
[eval exp="tf.zatudan_serihu=0"]
[iscript]
if(f.target_chara===1){
tf.zatudan_serihu = tf.zatudan_list[f.target_place].rans_1;
tf.zatudan_serihu_2 = tf.zatudan_list[f.target_place].rans_1_2;
}else if(f.target_chara===2){
tf.zatudan_serihu = tf.zatudan_list[f.target_place].lion_1;
tf.zatudan_serihu_2 = tf.zatudan_list[f.target_place].lion_1_2;
}else if(f.target_chara===3){
tf.zatudan_serihu = tf.zatudan_list[f.target_place].kra_1;
tf.zatudan_serihu_2 = tf.zatudan_list[f.target_place].kra_1_2;
}
[endscript]

[if exp="f.target_chara==1"]
[rans_eyes_right]
[rans_head_right_x]
[rans_body_right_z]
[elsif exp="f.target_chara==2"]
[lioness_eyes_right]
[lioness_head_right_x]
[lioness_body_right_z]
[elsif exp="f.target_chara==3"]
[aho_eyes_right]
[aho_head_right_x]
[aho_body_right_z]
[endif]

#&f.friend_n
[emb exp="tf.zatudan_serihu"][p]

[if exp="f.target_chara==1"]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[elsif exp="f.target_chara==2"]
[lioness_body_normal]
[lioness_head_normal]
[lioness_eyes_normal]
[elsif exp="f.target_chara==3"]
[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]
[endif]
#&f.friend_n
[emb exp="tf.zatudan_serihu_2"][p]

[endmacro]

[macro name="friend_sasoi_kekka"]

[eval exp="tf.sasoi_no=0"]

[if exp="f.target_chara==1"]
[eval exp="tf.sasoi_k = f.ranskonkando"]
[elsif exp="f.target_chara==2"]
[eval exp="tf.sasoi_k = f.lionkonkando"]
[elsif exp="f.target_chara==3"]
[eval exp="tf.sasoi_k = f.krakonkando"]
[endif]


[if exp="tf.sasoi_k>49"]
[jump target=*sasoi_ok]
[elsif exp="tf.sasoi_k>19&&f.irain_charm>99"]
[jump target=*sasoi_ok]
[elsif exp="tf.sasoi_k<20&&f.irain_charm>199"]
[jump target=*sasoi_ok]
[elsif exp="tf.sasoi_k<50"]
[eval exp="tf.sasoi_k_a=0"]
[iscript]
tf.sasoi_k_a = Math.floor( Math.random() * 10) + 1
[endscript]

[if exp="tf.sasoi_k_a>4&&tf.sasoi_k<50"]
[jump target=*sasoi_ok]
[endif]

[endif]
;お誘いNG
[eval exp="tf.sasoi_no=1"]



;お誘いOK
*sasoi_ok
[iscript]

if(f.s_wesuta===1){

if(f.target_chara===1&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi_w[0].rans_yes;
}else if(f.target_chara===1){
tf.answer_serihu = tf.date_osasoi_w[0].rans_no;
}else if(f.target_chara===2&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi_w[1].lion_yes;
}else if(f.target_chara===2){
tf.answer_serihu = tf.date_osasoi_w[1].lion_no;
}else if(f.target_chara===3&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi_w[2].kra_yes;
}else if(f.target_chara===3){
tf.answer_serihu = tf.date_osasoi_w[2].kra_no;
}

}else{

if(f.target_chara===1&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi[0].rans_yes;
}else if(f.target_chara===1){
tf.answer_serihu = tf.date_osasoi[0].rans_no;
}else if(f.target_chara===2&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi[1].lion_yes;
}else if(f.target_chara===2){
tf.answer_serihu = tf.date_osasoi[1].lion_no;
}else if(f.target_chara===3&&tf.sasoi_no===0){
tf.answer_serihu = tf.date_osasoi[2].kra_yes;
}else if(f.target_chara===3){
tf.answer_serihu = tf.date_osasoi[2].kra_no;
}
}

f.place_chara =[];

[endscript]

[if exp="tf.sasoi_no==1"]
[jump target=*sasoi_no]
[endif]

;仲間フラグと好感度アップ
[if exp="f.target_chara==1"]
[eval exp="f.friend = 1"]
[koukando1_rans]
[elsif exp="f.target_chara==2"]
[eval exp="f.friend = 2"]
[koukando1_lion]
[elsif exp="f.target_chara==3"]
[eval exp="f.friend = 3"]
[koukando1_kra]
[endif]
;デート中のフラグ
[eval exp="f.date_now = 1"]
[eval exp="f.irain_move=f.irain_move+1"]

[if exp="f.target_chara==1"]
[rans_exp_normal_warai]
[w]
[rans_exp_normal]
[elsif exp="f.target_chara==2"]
[lioness_face_normal_warai]
[w]
[lioness_face_normal]
[elsif exp="f.target_chara==3"]
[aho_face_normal]
[endif]

*sasoi_no
#&f.friend_n
「[emb exp="tf.answer_serihu"]」[p]

[if exp="tf.sasoi_no==1"]
[live2d_delete_all][live2d_off]
[else]
[live2d_fadeout time=1000]
[endif]









[endmacro]


[macro name="chara_date_live2d"]
[if exp="f.place_chara[tf.place_num]==1"]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show]
[live2d_fadein time=1000]
[elsif exp="f.place_chara[tf.place_num]==2"]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show]
[live2d_fadein time=1000]
[elsif exp="f.place_chara[tf.place_num]==3"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show]
[live2d_fadein time=1000]
[endif]
[endmacro]


[return]

