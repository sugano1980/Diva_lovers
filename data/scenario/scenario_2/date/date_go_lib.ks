;※きずな２の時のあくしょんまだ

;イレインの選択肢

[macro name="sel_nyuryoku"]
[eval exp="f.irain_sel_len=0"]

[iscript]

f.irain_sel_len = tf.irain_sel_d.length;

for(i=0;i<f.irain_sel_len;i++){
	if(tf.irain_sel_d[i].id === f.place_id){

		if(f.irain_move>0){
		tf.date_sel_1 = tf.irain_sel_d[i].sel_1_a;
		tf.date_sel_2 = tf.irain_sel_d[i].sel_2_a;
		tf.date_sel_3 = tf.irain_sel_d[i].sel_3_a;
    }else if(f.irain_move===0){
		tf.date_sel_1 = tf.irain_sel_d[i].sel_1_p;
		tf.date_sel_2 = tf.irain_sel_d[i].sel_2_p;
		tf.date_sel_3 = tf.irain_sel_d[i].sel_3_p;
    }   


	}

}



[endscript]
[endmacro]

[macro name="irain_answer_confirm"]
[iscript]
var num = f.friend;
f.mono = f.irain_answer.length;
//f.mono = f.place_sel[4][0].id;
//場所ID、キャラ番号の　sel_1_aキー

  for(i=0;i<f.mono;i++){

	  var id = f.irain_answer[i][0].id;
	  

	  if(id===f.place_id){
		 
	

		  if(tf.kizuna!=1&&f.irain_move>0){
		  f.answer_sel_1_a = f.irain_answer[i][num].sel_1_a;
		  f.answer_sel_2_a = f.irain_answer[i][num].sel_2_a;
		  f.answer_sel_3_a = f.irain_answer[i][num].sel_3_a;
		
		 }else if(tf.kizuna===1&&f.irain_move>0){
         f.answer_sel_1_a = f.irain_answer[i][num].sel_1_a_t;
         f.answer_sel_2_a = f.irain_answer[i][num].sel_2_a_t;
         f.answer_sel_3_a = f.irain_answer[i][num].sel_3_a_t;

        }

		if(tf.kizuna!=1&&f.irain_move===0){
		  f.answer_sel_1_a = f.irain_answer[i][num].sel_1_p;
		  f.answer_sel_2_a = f.irain_answer[i][num].sel_2_p;
		  f.answer_sel_3_a = f.irain_answer[i][num].sel_3_p;
		
		 }else if(tf.kizuna===1&&f.irain_move===0){
         f.answer_sel_1_a = f.irain_answer[i][num].sel_1_p_t;
         f.answer_sel_2_a = f.irain_answer[i][num].sel_2_p_t;
         f.answer_sel_3_a = f.irain_answer[i][num].sel_3_p_t;

        }
    }


  }

[endscript]

[endmacro]


[macro name="kizuna_confirm"]
[if exp="f.friend==1"]

[if exp="f.ranskonkando>49||f.rans_flag==1"]
[eval exp="tf.kizuna=1"]
[endif]

[elsif exp="f.friend==2"]

[if exp="f.lionkonkando>49||f.lion_flag==1"]
[eval exp="tf.kizuna=1"]
[endif]

[elsif exp="f.friend==3"]

[if exp="f.krakonkando>49||f.kra_flag==1"]
[eval exp="tf.kizuna=1"]
[endif]

[endif]
[endmacro]


;男性キャラ返答
[macro name="chara_sel_answer"]
[kizuna_confirm]
[eval exp="f.mono=0"]
[eval exp="f.id=0"]
[eval exp="f.id_i=0"]
[iscript]

var num = f.friend;
f.mono = f.place_sel.length;
//f.mono = f.place_sel[4][0].id;
//場所ID、キャラ番号の　sel_1_aキー

  for(i=0;i<f.mono;i++){

	  var id = f.place_sel[i][0].id;
	  

	  if(id===f.place_id){
		 
	

		  if(tf.kizuna!=1){
		  f.date_sel_1_a = f.place_sel[i][num].sel_1_a;
		  f.date_sel_2_a = f.place_sel[i][num].sel_2_a;
		  f.date_sel_3_a = f.place_sel[i][num].sel_3_a;
		  //キャラセリフ
         tf.date_zatudan = f.place_sel[i][num].word_a;
		 }else if(tf.kizuna===1){
         f.date_sel_1_a = f.place_sel[i][num].sel_1_a_t;
         f.date_sel_2_a = f.place_sel[i][num].sel_2_a_t;
         f.date_sel_3_a = f.place_sel[i][num].sel_3_a_t;
         //キャラセリフ
         tf.date_zatudan = f.place_sel[i][num].word_a;
        }
    }


  }


//tf.place_4[0].id;
[endscript]



[endmacro]



[macro name="chara_sel_answer_p"]
[kizuna_confirm]
[iscript]
var num = f.friend;
var place_len = f.place_sel.length;
//場所ID、キャラ番号の　sel_1_aキー

  for(i=0;i<place_len;i++){

	  if(f.place_sel[i][0].id===f.place_id){

		  if(tf.kizuna!=1){
		  f.date_sel_1_a = f.place_sel[i][num].sel_1_p;
		  f.date_sel_2_a = f.place_sel[i][num].sel_2_p;
		  f.date_sel_3_a = f.place_sel[i][num].sel_3_p;
		  //キャラセリフ
         tf.date_zatudan = f.place_sel[i][num].word_p;
		 }else if(tf.kizuna===1){
         f.date_sel_1_a = f.place_sel[i][num].sel_1_p_t;
         f.date_sel_2_a = f.place_sel[i][num].sel_2_p_t;
         f.date_sel_3_a = f.place_sel[i][num].sel_3_p_t;
         //キャラセリフ
         tf.date_zatudan = f.place_sel[i][num].word_p;
        }
    }


  }


[endscript]

[endmacro]





[macro name="place_id_confirm"]
[eval exp="f.place_id=-1"]
;場所番号取得
[if exp="f.place_creru_oukyu==1"]
[eval exp="f.place_id =6"]
;[eval exp="f.place_id =60"]
;[eval exp="f.place_id =61"]
;[eval exp="f.place_id =62"]
[elsif exp="f.place_creru_hunsui==1"]
[eval exp="f.place_id =3"]
[elsif exp="f.place_creru_sakaba==1"]
[eval exp="f.place_id =1"]
[elsif exp="f.place_creru_gaia==1"]
[eval exp="f.place_id =2"]
[elsif exp="f.place_creru_honbu==1"]
[eval exp="f.place_id =0"]
;[eval exp="f.place_id =90"]
;[eval exp="f.place_id =91"]
[elsif exp="f.place_creru_uradoori==1"]
[eval exp="f.place_id =4"]
[elsif exp="f.place_creru_out==1"]
[eval exp="f.place_id =5"]
[elsif exp="f.place_outo==1"]
[eval exp="f.place_id =10"]
[elsif exp="f.place_keiko==1"]
[eval exp="f.place_id =8"]
[elsif exp="f.place_sharomu==1"]
[eval exp="f.place_id =7"]
;[eval exp="f.place_id =70"]
;[eval exp="f.place_id =71"]
[elsif exp="f.place_hune_shokudou==1"]
[eval exp="f.place_id =15"]
[elsif exp="f.place_hune_kanpan==1"]
[eval exp="f.place_id =16"]
[elsif exp="f.place_hune_rouka==1"]
[eval exp="f.place_id =17"]
[elsif exp="f.place_hune_nakama==1"]
[eval exp="f.place_id =18"]
[elsif exp="f.place_hune_jisitu==1"]
[eval exp="f.place_id =19"]
[elsif exp="f.place_w_toshokan==1"]
[eval exp="f.place_id =20"]
[elsif exp="f.place_w_honya==1"]
[eval exp="f.place_id =21"]
[elsif exp="f.place_w_kusuri==1"]
[eval exp="f.place_id =22"]
[elsif exp="f.place_w_yadoya==1"]
[eval exp="f.place_id =23"]
[elsif exp="f.place_w_kouen==1"]
[eval exp="f.place_id =24"]




[endif]

[endmacro]



[macro name="live2d_model_action"]

[if exp="f.place_id==0"]
[action_place_0]
[elsif exp="f.place_id==90"]
[action_place_90]
[elsif exp="f.place_id==91"]
[action_place_91]
[elsif exp="f.place_id==1"]
[action_place_1]
[elsif exp="f.place_id==2"]
[action_place_2]
[elsif exp="f.place_id==3"]
[action_place_3]
[elsif exp="f.place_id==4"]
[action_place_4]
[elsif exp="f.place_id==5"]
[action_place_5]
[elsif exp="f.place_id==6"]
[action_place_6]
[elsif exp="f.place_id==60"]
[action_place_60]
[elsif exp="f.place_id==61"]
[action_place_61]
[elsif exp="f.place_id==62"]
[action_place_62]
[elsif exp="f.place_id==7"]
[action_place_7]
[elsif exp="f.place_id==70"]
[action_place_70]
[elsif exp="f.place_id==71"]
[action_place_71]
[elsif exp="f.place_id==8"]
[action_place_8]
[elsif exp="f.place_id==15"]
[action_place_15]
[elsif exp="f.place_id==16"]
[action_place_16]
[elsif exp="f.place_id==17"]
[action_place_17]
[elsif exp="f.place_id==18"]
[action_place_18]
[elsif exp="f.place_id==19"]
[action_place_19]
[elsif exp="f.place_id==20"]
[action_place_20]
[elsif exp="f.place_id==21"]
[action_place_21]
[elsif exp="f.place_id==22"]
[action_place_22]
[elsif exp="f.place_id==23"]
[action_place_23]
[elsif exp="f.place_id==24"]
[action_place_24]
[endif]


[endmacro]

[macro name="live2d_model_action_p"]

[if exp="f.place_id==0"]
[action_place_0_p]
[elsif exp="f.place_id==90"]
[action_place_90_p]
[elsif exp="f.place_id==91"]
[action_place_91_p]
[elsif exp="f.place_id==1"]
[action_place_1_p]
[elsif exp="f.place_id==2"]
[action_place_2_p]
[elsif exp="f.place_id==3"]
[action_place_3_p]
[elsif exp="f.place_id==4"]
[action_place_4_p]
[elsif exp="f.place_id==5"]
[action_place_5_p]
[elsif exp="f.place_id==6"]
[action_place_6_p]
[elsif exp="f.place_id==60"]
[action_place_60_p]
[elsif exp="f.place_id==61"]
[action_place_61_p]
[elsif exp="f.place_id==62"]
[action_place_62_p]
[elsif exp="f.place_id==7"]
[action_place_7]
[elsif exp="f.place_id==70"]
[action_place_70]
[elsif exp="f.place_id==71"]
[action_place_71]
[elsif exp="f.place_id==8"]
[action_place_8_p]
[elsif exp="f.place_id==15"]
[action_place_15_p]
[elsif exp="f.place_id==16"]
[action_place_16_p]
[elsif exp="f.place_id==17"]
[action_place_17_p]
[elsif exp="f.place_id==18"]
[action_place_18_p]
[elsif exp="f.place_id==19"]
[action_place_19_p]
[elsif exp="f.place_id==20"]
[action_place_20_p]
[elsif exp="f.place_id==21"]
[action_place_21_p]
[elsif exp="f.place_id==22"]
[action_place_22_p]
[elsif exp="f.place_id==23"]
[action_place_23_p]
[elsif exp="f.place_id==24"]
[action_place_24_p]
[endif]


[endmacro]

[macro name="live2d_mode_act_answer"]
[if exp="f.irain_move>0"]
[live2d_model_action_answer]
[elsif exp="f.irain_move==0"]
[live2d_model_action_answer_p]
[endif]
[endmacro]



[macro name="live2d_model_action_answer"]
[if exp="f.place_id==0"]
[answer_place_0]
[elsif exp="f.place_id==90"]
[answer_place_90]
[elsif exp="f.place_id==91"]
[answer_place_91]
[elsif exp="f.place_id==1"]
[answer_place_1]
[elsif exp="f.place_id==2"]
[answer_place_2]
[elsif exp="f.place_id==3"]
[answer_place_3]
[elsif exp="f.place_id==4"]
[answer_place_4]
[elsif exp="f.place_id==5"]
[answer_place_5]
[elsif exp="f.place_id==6"]
[answer_place_6]
[elsif exp="f.place_id==60"]
[answer_place_60]
[elsif exp="f.place_id==61"]
[answer_place_61]
[elsif exp="f.place_id==62"]
[answer_place_62]
[elsif exp="f.place_id==7"]
[answer_place_7]
[elsif exp="f.place_id==70"]
[answer_place_70]
[elsif exp="f.place_id==71"]
[answer_place_71]
[elsif exp="f.place_id==8"]
[answer_place_8]
[elsif exp="f.place_id==15"]
[answer_place_15]
[elsif exp="f.place_id==16"]
[answer_place_16]
[elsif exp="f.place_id==17"]
[answer_place_17]
[elsif exp="f.place_id==18"]
[answer_place_18]
[elsif exp="f.place_id==19"]
[answer_place_19]
[elsif exp="f.place_id==20"]
[answer_place_20]
[elsif exp="f.place_id==21"]
[answer_place_21]
[elsif exp="f.place_id==22"]
[answer_place_22]
[elsif exp="f.place_id==23"]
[answer_place_23]
[elsif exp="f.place_id==24"]
[answer_place_24]

[endif]

[endmacro]


[macro name="live2d_model_action_answer_p"]
[if exp="f.place_id==0"]
[answer_place_0]
[elsif exp="f.place_id==90"]
[answer_place_90]
[elsif exp="f.place_id==91"]
[answer_place_91]
[elsif exp="f.place_id==1"]
[answer_place_1_p]
[elsif exp="f.place_id==2"]
[answer_place_2_p]
[elsif exp="f.place_id==3"]
[answer_place_3_p]
[elsif exp="f.place_id==4"]
[answer_place_4_p]
[elsif exp="f.place_id==5"]
[answer_place_5_p]
[elsif exp="f.place_id==6"]
[answer_place_6]
[elsif exp="f.place_id==60"]
[answer_place_60]
[elsif exp="f.place_id==61"]
[answer_place_61]
[elsif exp="f.place_id==62"]
[answer_place_62]
[elsif exp="f.place_id==7"]
[answer_place_7]
[elsif exp="f.place_id==70"]
[answer_place_70]
[elsif exp="f.place_id==71"]
[answer_place_71]
[elsif exp="f.place_id==8"]
[answer_place_8_p]
[elsif exp="f.place_id==15"]
[answer_place_15_p]
[elsif exp="f.place_id==16"]
[answer_place_16_p]
[elsif exp="f.place_id==17"]
[answer_place_17_p]
[elsif exp="f.place_id==18"]
[answer_place_18_p]
[elsif exp="f.place_id==19"]
[answer_place_19_p]
[elsif exp="f.place_id==20"]
[answer_place_20_p]
[elsif exp="f.place_id==21"]
[answer_place_21_p]
[elsif exp="f.place_id==22"]
[answer_place_22_p]
[elsif exp="f.place_id==23"]
[answer_place_23_p]
[elsif exp="f.place_id==24"]
[answer_place_24_p]
[endif]

[endmacro]







;live2d_action
[macro name="action_place_0"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_z]
[elsif exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_arms_udekumi]
[aho_face_yokome]
[endif]
[endmacro]

[macro name="action_place_90"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_face_otikomi]
[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_head_right_x]
[aho_head_left_x]
[aho_head_normal]
[endif]
[endmacro]

[macro name="action_place_91"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_x]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_eyes_right]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_head_right_z]
[aho_face_yokome_majime]
[endif]
[endmacro]


[macro name="action_place_1"]
[if exp="f.friend==1"]
[rans_body_right_z]
[rans_head_right_x]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_head_under_y]
[lioness_face_metoji]
[elsif exp="f.friend==3"]
[aho_head_right_x]
[aho_body_right_z]
[aho_eyes_right]
[endif]

[endmacro]
[macro name="action_place_2"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]

[lioness_head_under_y]
[lioness_face_nemunemu]

[elsif exp="f.friend==3"]

[aho_head_above_y]
[aho_head_left_x]


[endif]

[endmacro]
[macro name="action_place_3"]
[if exp="f.friend==1"]

[rans_head_right_x]
[rans_body_right_z]
[rans_exp_bisyo]

[elsif exp="f.friend==2"]

[lioness_eyes_right]
[lioness_eyes_left]
[lioness_eyes_normal]
[lioness_head_under_y]
[lioness_head_normal]

[elsif exp="f.friend==3"]

[aho_head_above_y]
[aho_head_right_x]
[aho_face_bisyou_youen]


[endif]

[endmacro]
;裏通り
[macro name="action_place_4"]

[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_x]
[rans_eyes_right]

[elsif exp="f.friend==2"]
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_head_normal]

[elsif exp="f.friend==3"]

[aho_head_above_y]
[aho_head_left_x]
[aho_head_left_z]
[aho_eyes_left]

[endif]

[endmacro]
[macro name="action_place_5"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]
[macro name="action_place_6"]
[if exp="f.friend==1"]
[rans_head_right_x]
[rans_head_right_z]
[rans_eyes_right]
[rans_eyes_normal]
[rans_head_normal]
[elsif exp="f.friend==2"]
;拒否
[lioness_face_otikomi]

[elsif exp="f.friend==3"]
;拒否
[aho_face_komari]

[endif]
[endmacro]

[macro name="action_place_60"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="action_place_61"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_x]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="action_place_62"]
[if exp="f.friend==1"]
[rans_head_left_z]
[rans_body_left_z]
[rans_arms_kosinite_right]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]

[macro name="action_place_7"]
[if exp="f.friend==1"]
[rans_exp_metoji]
[rans_exp_normal]
[elsif exp="f.friend==2"]
[lioness_head_left_x]
[lioness_head_right_x]
[lioness_head_normal]
[elsif exp="f.friend==3"]
[aho_head_left_x]
[aho_head_left_z]
[endif]
[endmacro]

[macro name="action_place_70"]
[if exp="f.friend==1"]
[rans_head_left_x]
[rans_head_above_y]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_face_normal_warai]
[elsif exp="f.friend==3"]
[aho_face_yokome_majime]
[endif]
[endmacro]

[macro name="action_place_71"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_exp_metoji_warai]
[elsif exp="f.friend==2"]
[lioness_head_under_y]
[lioness_face_nemunemu]
[elsif exp="f.friend==3"]
[aho_arms_udekumi]
[aho_face_yokome]
[endif]
[endmacro]


[macro name="action_place_8"]
[if exp="f.friend==1"]
[rans_head_right_z]
[elsif exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_yokome]

[endif]

[endmacro]

[macro name="action_place_15"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_yokome]

[endif]

[endmacro]

[macro name="action_place_16"]
[if exp="f.friend==2"]

[lioness_face_mehuse_dai]

[elsif exp="f.friend==3"]
[aho_head_above_y]
[aho_head_right_x]
[aho_body_right_z]
[aho_face_yokome]

[endif]

[endmacro]

[macro name="action_place_17"]
[if exp="f.friend==2"]
[lioness_face_ha]
[elsif exp="f.friend==3"]
[aho_face_mihiraki]
[aho_body_right_z]

[endif]

[endmacro]

[macro name="action_place_18"]
[if exp="f.friend==2"]
[lioness_face_mehuse_dai]
[elsif exp="f.friend==3"]
[aho_face_komari]
[aho_body_right_z]
[endif]

[endmacro]

[macro name="action_place_19"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_body_left_z]

[endif]

[endmacro]

;;;;;;ウェスタ
[macro name="action_place_20"]
[if exp="f.friend==2"]
[lioness_face_nemunemu]
[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_body_left_z]

[endif]

[endmacro]

[macro name="action_place_21"]
[if exp="f.friend==2"]
[lioness_face_nemunemu]
[elsif exp="f.friend==3"]
[aho_face_yokome]
[aho_body_left_z]

[endif]

[endmacro]

[macro name="action_place_22"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_body_left_z]

[endif]

[endmacro]

[macro name="action_place_23"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_arms_udekumi]
[aho_body_left_z]

[endif]

[endmacro]


[macro name="action_place_24"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_face_yareyare]


[endif]

[endmacro]


;live2d_action
[macro name="action_place_0_p"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_z]
[elsif exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_arms_udekumi]
[aho_face_yokome]
[endif]
[endmacro]

[macro name="action_place_90_p"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_face_otikomi]
[elsif exp="f.friend==3"]
[aho_head_right_x]
[aho_head_left_x]
[aho_head_normal]
[endif]
[endmacro]

[macro name="action_place_91_p"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_x]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_eyes_right]
[elsif exp="f.friend==3"]
[aho_head_under_y]
[aho_head_right_z]
[aho_face_yokome_majime]
[endif]
[endmacro]

[macro name="action_place_1_p"]
[if exp="f.friend==1"]
[rans_body_right_z]
[rans_head_right_x]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_head_under_y]
[lioness_face_metoji]
[elsif exp="f.friend==3"]
[aho_head_right_x]
[aho_body_right_z]
[aho_eyes_right]
[endif]

[endmacro]
[macro name="action_place_2_p"]
[if exp="f.friend==1"]

[rans_head_above_y]
[rans_head_right_x]
[rans_body_left_z]
[rans_arms_kosinite_right]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]

[lioness_head_under_y]
[lioness_face_mehuse_dai]


[elsif exp="f.friend==3"]

[aho_arms_udekumi]
[aho_head_left_z]
[aho_body_left_z]
[aho_face_bisyou_youen]

[endif]

[endmacro]
[macro name="action_place_3_p"]
[if exp="f.friend==1"]

[rans_head_right_x]
[rans_body_right_z]
[rans_exp_bisyo]

[elsif exp="f.friend==2"]

[lioness_eyes_right]
[lioness_eyes_left]
[lioness_eyes_normal]
[lioness_head_under_y]
[lioness_head_normal]

[elsif exp="f.friend==3"]

[aho_head_above_y]
[aho_head_right_x]
[aho_face_bisyou_youen]


[endif]

[endmacro]
;裏通り
[macro name="action_place_4_p"]
[if exp="f.friend==1"]
[rans_head_right_x]
[rans_head_left_x]
[rans_head_normal]
[rans_exp_normal]

[elsif exp="f.friend==2"]
[lioness_head_left_x]
[lioness_eyes_left]
[lioness_head_normal]

[elsif exp="f.friend==3"]

[aho_head_under_y]
[aho_head_normal]
[aho_face_yokome]
[endif]

[endmacro]
[macro name="action_place_5_p"]
[if exp="f.friend==1"]


[elsif exp="f.friend==2"]


[elsif exp="f.friend==3"]


[endif]

[endmacro]
[macro name="action_place_6_p"]
[if exp="f.friend==1"]
[rans_head_right_x]
[rans_head_right_z]
[elsif exp="f.friend==2"]
;拒否
[lioness_face_otikomi]

[elsif exp="f.friend==3"]
;拒否
[aho_face_komari]

[endif]

[endmacro]

[macro name="action_place_60_p"]
[if exp="f.friend==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[elsif exp="f.friend==2"]
;拒否
[elsif exp="f.friend==3"]
;拒否
[endif]

[endmacro]


[macro name="action_place_61_p"]
[if exp="f.friend==1"]
[rans_head_above_y]
[rans_head_right_x]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
;拒否
[elsif exp="f.friend==3"]
;拒否
[endif]

[endmacro]


[macro name="action_place_62_p"]
[if exp="f.friend==1"]
[rans_head_left_z]
[rans_body_left_z]
[rans_arms_kosinite_right]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
;拒否
[elsif exp="f.friend==3"]
;拒否
[endif]

[endmacro]

[macro name="action_place_7_p"]
[if exp="f.friend==1"]
[rans_exp_metoji]
[rans_exp_normal]
[elsif exp="f.friend==2"]
[lioness_head_left_x]
[lioness_head_right_x]
[lioness_head_normal]
[elsif exp="f.friend==3"]
[aho_head_left_x]
[aho_head_left_z]
[endif]
[endmacro]

[macro name="action_place_8_p"]
[if exp="f.friend==1"]
[rans_head_right_x]
[rans_head_right_z]
[elsif exp="f.friend==2"]
[lioness_face_ha]
[elsif exp="f.friend==3"]
[aho_arms_udekumi]
[aho_face_yokome_majime]
[endif]

[endmacro]

[macro name="action_place_15_p"]
[if exp="f.friend==2"]
[lioness_face_metoji]
[elsif exp="f.friend==3"]
[aho_face_metoji]
[endif]

[endmacro]

[macro name="action_place_16_p"]
[if exp="f.friend==2"]
[lioness_face_normal_warai]
[elsif exp="f.friend==3"]
[aho_arms_udekumi]
[aho_body_right_z]
[aho_face_bisyou_youen]
[endif]

[endmacro]

[macro name="action_place_17_p"]
[if exp="f.friend==2"]
[lioness_face_yokome]
[elsif exp="f.friend==3"]
[aho_face_yokome_majime]
[endif]

[endmacro]

[macro name="action_place_18_p"]
[if exp="f.friend==2"]
[lioness_face_mehuse_dai]
[elsif exp="f.friend==3"]
[aho_arms_udekumi]
[aho_face_mehuse]
[endif]

[endmacro]

[macro name="action_place_19_p"]
[if exp="f.friend==2"]
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_face_tere]
[elsif exp="f.friend==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[w]
[aho_eyes_normal]
[endif]

[endmacro]

;;;ウェスタ
[macro name="action_place_20_p"]
[if exp="f.friend==2"]
[lioness_face_nemunemu]
[elsif exp="f.friend==3"]
[aho_face_yokome]
[endif]

[endmacro]

[macro name="action_place_21_p"]
[if exp="f.friend==2"]
[lioness_face_nemunemu]
[elsif exp="f.friend==3"]
[aho_face_yokome_majime]
[aho_arms_udekumi]
[endif]

[endmacro]

[macro name="action_place_22_p"]
[if exp="f.friend==2"]
[lioness_face_normal]
[elsif exp="f.friend==3"]
[aho_face_yareyare]
[endif]

[endmacro]

[macro name="action_place_23_p"]
[if exp="f.friend==2"]
[lioness_arms_udekumi]
[elsif exp="f.friend==3"]
[aho_face_bisyou_youen]
[aho_arms_udekumi]
[endif]

[endmacro]

[macro name="action_place_24_p"]
[if exp="f.friend==2"]
[lioness_face_yokome]
[elsif exp="f.friend==3"]
[aho_face_mehuse_warai]
[endif]

[endmacro]






;アンサー午前
;live2d_action_answer----------------------------------------------------------------------------------------------
[macro name="answer_place_0"]

[if exp="f.friend==1"]

[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
[elsif exp="tf.sel==2"]
[rans_head_right_z]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3"]
[endif]

[elsif exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_eyes_right]
[elsif exp="tf.sel==2"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]

[if exp="tf.sel==1&&f.krakonkando>49"]
[aho_face_tomadoi]
[aho_arms_normal]
[w]
[aho_head_right_x]
[aho_face_yokome_ase]
[elsif exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_smile]

[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_right_x]
[aho_face_normal_majime]
[endif]

[endif]
[endmacro]


[macro name="answer_place_90"]
[if exp="f.friend==1"]

[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_head_right_z]
[rans_exp_bisyo]
[elsif exp="tf.sel==2"]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3&&f.ranskonkando>49"]
[rans_head_right_x]
[rans_exp_sekimen_yokome]
[elsif exp="tf.sel==3"]
[rans_exp_mihiraki]
[endif]



[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_head_under_y]
[lioness_face_otikomi]
[elsif exp="tf.sel==2"]
[lioness_head_under_y]
[lioness_head_normal]
[elsif exp="tf.sel==3"]

[if exp="f.lionkonkando>49"]
[lioness_face_tere]
[elsif exp="f.lionkonkando<50"]
[lioness_face_ha]
[endif]

[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3&&f.krakonkando>49"]
[aho_face_tomadoi]
[aho_head_right_x]
[aho_head_under_y]
[aho_face_mehuse]
[elsif exp="tf.sel==3"]
[aho_head_right_x]
[aho_face_mihiraki]
[endif]

[endif]
[endmacro]


[macro name="answer_place_91"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_above_y]
[rans_head_right_z]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3"]
[rans_head_under_y]
[rans_exp_mehuse]
[endif]
[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_mehuse_dai]
[elsif exp="tf.sel==2"]
[lioness_face_normal]
[lioness_head_above_y]
[lioness_head_left_x]
[elsif exp="tf.sel==3"]
[lioness_face_odoroki]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_under_y]
[aho_face_smile]
[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_face_hutuu_warai]
[endif]

[endif]
[endmacro]


[macro name="answer_place_1"]
[if exp="f.friend==1"]

[rans_arms_normal]
[rans_exp_normal]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]


[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_head_right_z]
[rans_body_right_z]

[elsif exp="tf.sel==2"]
[rans_exp_mihiraki]
[rans_head_under_y]
[rans_head_normal]
[rans_eyes_right]
[rans_exp_normal_warai]

[elsif exp="tf.sel==3"]
[rans_exp_metoji_warai]
[rans_head_under_y]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_bisyo]

[endif]



[elsif exp="f.friend==2"]

[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_eyes_normal]


[if exp="tf.sel==1"]
[lioness_arms_udekumi]
[lioness_face_ha]

[elsif exp="tf.sel==2"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]

[elsif exp="tf.sel==3"]
[lioness_head_right_z]
[lioness_body_right_z]
[lioness_face_normal_warai]

[endif]


[elsif exp="f.friend==3"]

[aho_arms_normal]
[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]


[if exp="tf.sel==1"]

[aho_head_right_z]
[aho_body_right_z]
[aho_face_smile]
[aho_arms_udekumi]

[elsif exp="tf.sel==2"]
[aho_head_left_z]
[aho_face_yokome_warai]

[elsif exp="tf.sel==3"]

[aho_head_under_y]
[aho_head_right_x]
[aho_face_normal_majime]
[aho_arms_udekumi]
[endif]



[endif]

[endmacro]
[macro name="answer_place_2"]
[if exp="f.friend==1"]

[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_left_x]
[rans_exp_mehuse_warai]

[elsif exp="tf.sel==2"]

[rans_head_left_z]
[rans_body_left_z]
[rans_exp_mehuse_muzukasii]

[elsif exp="tf.sel==3"]

[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[endif]


[elsif exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_nemunemu]
[elsif exp="tf.sel==2"]

[lioness_head_left_z]
[lioness_face_ha]

[elsif exp="tf.sel==3"]

[lioness_head_under_y]
[lioness_head_normal]
[lioness_head_above_y]
[lioness_head_right_x]

[endif]


[elsif exp="f.friend==3"]

[if exp="tf.sel==1"]

[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]

[elsif exp="tf.sel==2"]

[aho_head_right_z]
[aho_body_right_z]
[aho_face_smile_ase]

[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_face_mehuse_warai]

[endif]



[endif]

[endmacro]
[macro name="answer_place_3"]
[if exp="f.friend==1"]
[rans_exp_normal]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_arms_normal]

[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_normal_warai]

[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[elsif exp="tf.sel==3"]

[rans_head_left_x]
[rans_body_left_z]
[rans_eyes_left]

[endif]


[elsif exp="f.friend==2"]


[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_arms_normal]

[if exp="tf.sel==1"]

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]

[elsif exp="tf.sel==2"]

[lioness_head_left_x]
[lioness_head_under_y]
[lioness_eyes_right]
[lioness_eyes_normal]

[elsif exp="tf.sel==3"]
[lioness_face_odoroki]

[endif]


[elsif exp="f.friend==3"]
[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]
[aho_arms_normal]

[if exp="tf.sel==1"]
[aho_head_under_y]
[aho_head_normal]
[aho_eyes_right]

[elsif exp="tf.sel==2"]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_face_komari]
[endif]



[endif]

[endmacro]
[macro name="answer_place_4"]
[if exp="f.friend==1"]

[if exp="tf.sel==1"]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[rans_head_under_y]

[elsif exp="tf.sel==2"]
[rans_head_left_x]
[rans_head_left_z]
[rans_eyes_left]

[elsif exp="tf.sel==3"]

[rans_head_under_y]
[rans_head_normal]

[endif]


[elsif exp="f.friend==2"]

[if exp="tf.sel==1"]

[lioness_arms_kosinite_right]
[lioness_arms_kosinite_left]
[lioness_head_right_x]
[lioness_eyes_right]
[elsif exp="tf.sel==2"]

[lioness_head_left_z]
[lioness_eyes_left]

[elsif exp="tf.sel==3"]
[lioness_arms_udekumi]
[lioness_head_right_x]
[lioness_eyes_right]

[endif]


[elsif exp="f.friend==3"]

[if exp="tf.sel==1"]

[aho_eyes_left]
[aho_head_left_z]
[aho_eyes_normal]

[elsif exp="tf.sel==2"]

[aho_arms_udekumi]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]

[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_yokome]

[endif]

[endif]

[endmacro]
[macro name="answer_place_5"]
[if exp="f.friend==1"]


[elsif exp="f.friend==2"]


[elsif exp="f.friend==3"]


[endif]

[endmacro]
[macro name="answer_place_6"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_exp_mihiraki]
[rans_exp_normal]
[elsif exp="tf.sel==3"]
[rans_body_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]

[macro name="answer_place_60"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_head_normal]
[elsif exp="tf.sel==3"]
[rans_head_under_y]
[rans_exp_mehuse]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]

[macro name="answer_place_61"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_sinpai]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3"]
[rans_head_right_z]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]

[macro name="answer_place_62"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_bisyo]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
[elsif exp="tf.sel==3"]
[rans_head_left_z]
[rans_body_left_z]
[rans_arms_kosinite_right]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]
[macro name="answer_place_7"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_left_x]
[rans_arms_udekumi]
[elsif exp="tf.sel==3"]
[rans_exp_normal_warai]
[rans_eyes_right]
[endif]

[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]
[elsif exp="tf.sel==2"]
[lioness_face_yokome]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_face_bisyou_youen]
[endif]


[endif]

[endmacro]

[macro name="answer_place_70"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_normal]
[rans_exp_mihiraki]
[rans_exp_normal]
[elsif exp="tf.sel==2"]
[rans_head_left_x]
[rans_head_left_z]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3"]
[rans_head_right_z]
[rans_eyes_right]
[rans_exp_komari_warai]
[endif]

[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_ha]
[elsif exp="tf.sel==2"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]
[elsif exp="tf.sel==3"]
[lioness_arms_udekumi]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_smile_ase]
[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_yokome_warai]
[elsif exp="tf.sel==3"]
[aho_face_bisyou_youen]
[aho_arms_udekumi]
[aho_head_left_z]
[endif]

[endif]

[endmacro]


[macro name="answer_place_71"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_bisyo]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_exp_metoji]
[elsif exp="tf.sel==3"]
[rans_exp_mihiraki]
[endif]


[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_akireru]
[elsif exp="tf.sel==2"]
[lioness_face_nemunemu]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_smile_ase]
[elsif exp="tf.sel==2"]
[aho_face_yokome]
[aho_face_normal]
[aho_eyes_right]
[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_head_left_x]
[aho_face_hutuu_bisyou]
[endif]


[endif]

[endmacro]

[macro name="answer_place_8"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_right_z]
[rans_exp_normal_warai]
[rans_eyes_right]
[elsif exp="tf.sel==3"]
[rans_head_under_y]
[rans_exp_metoji]
[endif]


[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_ha]
[elsif exp="tf.sel==2"]
[lioness_face_mehuse_dai]
[elsif exp="tf.sel==3"]
[lioness_face_nemunemu]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_komari]
[elsif exp="tf.sel==2"]
[aho_arms_udekumi]
[aho_head_left_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_above_y]
[aho_head_right_x]
[aho_head_right_z]
[aho_eyes_normal]
[aho_face_hutuu_bisyou]
[endif]


[endif]

[endmacro]


[macro name="answer_place_15"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_warai]
[elsif exp="tf.sel==2"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==3"]
[lioness_face_normal_warai]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_right_x]
[aho_body_right_z]
[aho_face_normal]
[endif]


[endif]

[endmacro]

[macro name="answer_place_16"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_head_under_y]
[lioness_face_normal_warai]
[lioness_head_normal]
[elsif exp="tf.sel==2"]
[lioness_face_yareyare]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[lioness_face_warai]
[lioness_head_right_z]
[elsif exp="tf.sel==3"]
[lioness_face_akireru]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==2"]
[aho_head_right_z]
[aho_face_yareyare]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_face_mehuse_warai]
[aho_face_metoji_warai]
[aho_face_hutuu_warai]
[aho_head_right_z]
[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_face_smile_ase]
[aho_head_normal]
[endif]


[endif]

[endmacro]

[macro name="answer_place_17"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_ha]
[elsif exp="tf.sel==2"]
[lioness_face_normal_warai]
[lioness_arms_udekumi]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[lioness_face_odoroki]
[lioness_face_normal]
[lioness_face_muzukasii]
[elsif exp="tf.sel==3"]
[lioness_face_akireru]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_mihiraki]
[elsif exp="tf.sel==2"]
[aho_head_right_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_face_mihiraki]
[aho_arms_udekumi]
[aho_eyes_right]
[aho_face_komari_warai]
[elsif exp="tf.sel==3"]
[aho_eyes_right]
[aho_face_komari]
[endif]


[endif]

[endmacro]


[macro name="answer_place_18"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_yareyare]
[elsif exp="tf.sel==2"]
[lioness_arms_udekumi]
[elsif exp="tf.sel==3"]
[lioness_face_yokome]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_yareyare]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[aho_face_yokome]
[elsif exp="tf.sel==3"]
[aho_face_smile_ase]
[aho_arms_udekumi]
[aho_body_right_z]
[endif]


[endif]

[endmacro]

[macro name="answer_place_19"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_metoji]
[elsif exp="tf.sel==2"]
[lioness_face_yokome]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]
[lioness_face_mehuse_dai]
[lioness_face_normal]
[elsif exp="tf.sel==3"]
[lioness_face_odoroki_sekimen]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_komari_warai]
[aho_eyes_right]
[aho_head_right_z]
[elsif exp="tf.sel==2"]
[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_face_komari_warai]
[aho_eyes_right]
[aho_head_right_z]
[aho_face_bisyou_youen]
[aho_eyes_normal]
[aho_head_left_z]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[endif]


[endif]

[endmacro]





[macro name="answer_place_20"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_sinnpai]
[elsif exp="tf.sel==2"]
[lioness_face_otikomi]
[elsif exp="tf.sel==3"]
[lioness_face_otikomi]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==2"]
[aho_face_yareyare]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[endif]


[endif]

[endmacro]



[macro name="answer_place_21"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_mehuse]
[elsif exp="tf.sel==2"]
[lioness_face_yareyare]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==2"]
[aho_face_smile_ase]
[aho_arms_udekumi]
[aho_body_right_z]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[endif]


[endif]

[endmacro]


[macro name="answer_place_22"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_metoji]
[elsif exp="tf.sel==2"]
[lioness_face_yokome]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_komari_warai]
[aho_eyes_right]
[aho_head_right_z]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[endif]


[endif]

[endmacro]



[macro name="answer_place_23"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==2"]
[lioness_face_yokome]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[lioness_face_warai]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]

[elsif exp="tf.sel==3"]
[lioness_face_yokome]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]

[elsif exp="tf.sel==2"]
[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_head_right_z]
[aho_face_bisyou_youen]
[aho_eyes_normal]
[aho_arms_udekumi]
[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_head_normal]
[endif]


[endif]

[endmacro]



[macro name="answer_place_24"]

[if exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_face_warai]
[elsif exp="tf.sel==2"]
[lioness_face_ha]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[lioness_face_tere_mehuse]
[lioness_face_tere]
[lioness_eyes_right]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==2"]
[aho_face_smile_ase]
[aho_arms_udekumi]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_face_hutuu_bisyou]
[aho_head_left_z]
[aho_body_left_z]
[elsif exp="tf.sel==3"]
[aho_face_mihiraki]
[endif]


[endif]

[endmacro]



;アンサー午後--------------------------------------------------------------------------------------------
[macro name="answer_place_0_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="answer_place_90_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]

[macro name="answer_place_91_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="answer_place_1_p"]
[if exp="f.friend==1"]

[rans_exp_normal]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_arms_normal]

[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_head_right_z]
[rans_body_right_z]

[elsif exp="tf.sel==2"]
[rans_exp_mihiraki]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[elsif exp="tf.sel==3"]


[endif]



[elsif exp="f.friend==2"]

[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_arms_normal]

[if exp="tf.sel==1"]
[lioness_head_right_z]
[lioness_face_yokome]

[elsif exp="tf.sel==2"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]

[elsif exp="tf.sel==3"]

[endif]


[elsif exp="f.friend==3"]


[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]
[aho_arms_normal]

[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_normal]

[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]

[elsif exp="tf.sel==3"]

[endif]



[endif]

[endmacro]
[macro name="answer_place_2_p"]
[if exp="f.friend==1"]

[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_left_x]
[rans_eyes_left]
[rans_exp_normal_warai]

[elsif exp="tf.sel==3"]
[rans_exp_normal]
[endif]


[elsif exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_head_under_y]
[lioness_face_nemunemu]
[elsif exp="tf.sel==2"]

[lioness_eyes_left]
[lioness_eyes_normal]
[lioness_face_normal_warai]

[elsif exp="tf.sel==3"]

[lioness_head_under_y]
[lioness_face_otikomi]

[endif]



[elsif exp="f.friend==3"]

[if exp="tf.sel==1"]
[aho_head_under_y]
[aho_face_mehuse_warai]
[elsif exp="tf.sel==2"]
[aho_head_left_z]
[aho_face_mihiraki]
[elsif exp="tf.sel==3"]

[aho_arms_udekumi]
[aho_head_left_z]
[aho_body_left_z]
[aho_face_smile_ase]
[endif]



[endif]

[endmacro]
[macro name="answer_place_3_p"]
[if exp="f.friend==1"]
[rans_exp_normal]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_arms_normal]

[if exp="tf.sel==1"]
[rans_exp_metoji]
[elsif exp="tf.sel==2"]

[rans_head_above_y]
[rans_head_right_x]
[rans_exp_bisyo]

[elsif exp="tf.sel==3&&f.ranskonkando>49"]
[rans_exp_mihiraki]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_bisyo]
[elsif exp="tf.sel==3"]
[rans_head_right_x]
[rans_exp_sinpai]
[endif]


[elsif exp="f.friend==2"]

[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_arms_normal]

[if exp="tf.sel==1"]
[lioness_face_odoroki]
[elsif exp="tf.sel==2"]
[lioness_head_right_x]
[lioness_face_warai]

[elsif exp="tf.sel==3&&f.lionkonkando>49"]
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_face_odoroki_sekimen]
[elsif exp="tf.sel==3"]
[lioness_head_above_y]
[lioness_head_left_x]
[lioness_face_yokome]

[endif]


[elsif exp="f.friend==3"]

[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]
[aho_arms_normal]

[if exp="tf.sel==1"]
[aho_arms_udekumi]
[aho_head_right_z]
[aho_face_smile]
[elsif exp="tf.sel==2"]
[aho_head_right_x]
[aho_face_mihiraki]
[aho_head_normal]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_hutuu_warai]

[endif]


[endif]

[endmacro]
[macro name="answer_place_4_p"]
[if exp="f.friend==1"]

[if exp="tf.sel==1"]

[rans_head_under_y]
[rans_exp_ketui]

[elsif exp="tf.sel==2"]

[rans_head_right_x]
[rans_head_left_x]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]

[elsif exp="tf.sel==3"]

[rans_exp_mihiraki]
[rans_head_left_z]
[rans_head_left_x]
[if exp="f.ranskonkando>49"]
[rans_exp_sekimen_yokome]
[endif]
[endif]

[elsif exp="f.friend==2"]

[if exp="tf.sel==1"]
[lioness_head_right_x]
[lioness_face_muzukasii]
[elsif exp="tf.sel==2"]
[lioness_head_above_y]
[lioness_head_right_x]
[lioness_face_yareyare]
[elsif exp="tf.sel==3"]
[lioness_arms_right_x]
[lioness_arms_left_x]
[lioness_head_right_x]
[lioness_head_left_x]

[if exp="f.lionkonkando>49"]
[lioness_face_odoroki_sekimen]
[elsif exp="f.lionkonkando<50"]
[lioness_face_sinnpai]
[endif]
[endif]



[elsif exp="f.friend==3"]

[if exp="tf.sel==1"]

[aho_head_right_x]
[aho_body_right_z]
[aho_face_smile_ase]

[elsif exp="tf.sel==2"]

[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_hutuu_warai]

[endif]


[endif]

[endmacro]
[macro name="answer_place_5_p"]
[if exp="f.friend==1"]


[elsif exp="f.friend==2"]


[elsif exp="f.friend==3"]


[endif]

[endmacro]

[macro name="answer_place_6_p"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[elsif exp="tf.sel==2"]
[elsif exp="tf.sel==3"]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]

[macro name="answer_place_60_p"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_normal_warai]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_head_normal]
[elsif exp="tf.sel==3"]
[rans_head_under_y]
[rans_exp_mehuse]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]


[macro name="answer_place_61_p"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_sinpai]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[elsif exp="tf.sel==3"]
[rans_head_right_z]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]




[macro name="answer_place_62_p"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_right_z]
[rans_exp_bisyo]
[elsif exp="tf.sel==2"]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
[elsif exp="tf.sel==3"]
[rans_head_left_z]
[rans_body_left_z]
[rans_arms_kosinite_right]
[endif]

[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]



[macro name="answer_place_7_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]

[endmacro]


[macro name="answer_place_70_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="answer_place_71_p"]
[if exp="f.friend==1"]
[elsif exp="f.friend==2"]
[elsif exp="f.friend==3"]
[endif]
[endmacro]


[macro name="answer_place_8_p"]
[if exp="f.friend==1"]
[if exp="tf.sel==1"]
[rans_head_under_y]
[rans_head_normal]
[elsif exp="tf.sel==2"]
[rans_head_right_x]
[rans_head_right_z]
[elsif exp="tf.sel==3"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]

[endif]

[elsif exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_eyes_left]
[elsif exp="tf.sel==2"]
[lioness_eyes_right]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]


[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_komari]
[elsif exp="tf.sel==2"]
[aho_eyes_normal]
[aho_face_normal]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_arms_udekumi]
[aho_face_smile_ase]

[endif]


[endif]

[endmacro]




[macro name="answer_place_15_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==2"]
[lioness_face_warai]
[elsif exp="tf.sel==3"]
[lioness_face_yokome]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]
[aho_body_right_z]
[elsif exp="tf.sel==2"]
[aho_face_smile_ase]
[aho_arms_udekumi]
[elsif exp="tf.sel==3"]
[aho_face_akireru]

[endif]


[endif]

[endmacro]

[macro name="answer_place_16_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_eyes_left]
[lioness_face_normal_warai]
[elsif exp="tf.sel==2"]
[lioness_eyes_right]
[lioness_face_normal_warai]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]
[lioness_face_warai]
[lioness_head_under_y]
[lioness_head_normal]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_hutuu_bisyou]
[aho_head_right_z]
[elsif exp="tf.sel==2"]
[aho_face_bisyou_youen]
[aho_face_mehuse_warai]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[aho_arms_normal]
[live2d_fadeout time=1000]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[aho_face_kunou_metoji]
[aho_face_naki_warai]
[aho_body_right_z]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_arms_udekumi]
[aho_face_smile_ase]

[endif]


[endif]

[endmacro]




[macro name="answer_place_17_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_yareyare]
[elsif exp="tf.sel==2"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]
[lioness_face_warai]
[lioness_head_right_z]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==2"]
[aho_eyes_normal]
[aho_face_normal]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[aho_body_right_z]
[aho_head_right_z]
[aho_face_hutuu_warai]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_head_right_z]

[endif]


[endif]

[endmacro]



[macro name="answer_place_18_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_tere]
[lioness_eyes_left]
[elsif exp="tf.sel==2"]
[lioness_face_mehuse_dai]
[lioness_eyes_right]
[elsif exp="tf.sel==3"]
[lioness_face_odoroki_sekimen]
[lioness_face_otikomi]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_akireru]
[aho_arms_udekumi]
[elsif exp="tf.sel==2"]
[aho_face_mehuse_warai]
[elsif exp="tf.sel==3"]
[aho_head_right_z]
[aho_arms_udekumi]
[aho_face_smile_ase]

[endif]


[endif]

[endmacro]

[macro name="answer_place_19_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_tere]
[lioness_eyes_right]
[lioness_eyes_left]
[elsif exp="tf.sel==2"]
[lioness_face_odoroki_sekimen]
[lioness_face_tere]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]
[lioness_face_yareyare]
[lioness_face_yokome]
[elsif exp="tf.sel==3"]
[lioness_face_odoroki_sekimen]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_komari_warai]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[aho_head_right_z]
[aho_face_smile_ase]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=1000]
[aho_face_mehuse]
[w]
[aho_head_left_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_body_right_z]
[aho_face_komari]

[endif]


[endif]

[endmacro]


[macro name="answer_place_20_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_ha]
[elsif exp="tf.sel==2"]
[lioness_face_otikomi]
[elsif exp="tf.sel==3"]
[lioness_face_yokome_otikomi]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[aho_head_right_z]
[aho_face_smile_ase]
[elsif exp="tf.sel==3"]
[aho_face_yokome]
[aho_head_right_z]

[endif]


[endif]

[endmacro]


[macro name="answer_place_21_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_mod_idle_no_move_metoji]
[lioness_face_nemunemu]
[elsif exp="tf.sel==2"]
[lioness_mod_idle_no_move_metoji]
[lioness_face_nemunemu]
[elsif exp="tf.sel==3"]
[lioness_mod_idle_no_move_metoji]
[lioness_face_nemunemu]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_metoji_warai]
[elsif exp="tf.sel==2"]
[aho_face_smile_ase]
[elsif exp="tf.sel==3"]
[aho_face_komari_warai]
[aho_eyes_right]
[endif]


[endif]

[endmacro]


[macro name="answer_place_22_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_ha]
[elsif exp="tf.sel==2"]
[lioness_arms_udekumi]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_smile_ase]
[aho_arms_udekumi]
[aho_head_right_z]
[elsif exp="tf.sel==2"]
[aho_face_yokome_warai]
[aho_head_right_z]
[elsif exp="tf.sel==3"]
[aho_face_yareyare]

[endif]


[endif]

[endmacro]

[macro name="answer_place_23_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==2"]
[lioness_face_normal_warai]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[lioness_face_warai]
[lioness_body_right_z]
[live2d_fadein time=1000]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_head_right_z]
[aho_face_smile_ase]
[elsif exp="tf.sel==2"]
[aho_head_under_y]
[aho_head_normal]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=1000]
[aho_face_mehuse]
[w]
[aho_head_left_z]
[aho_arms_udekumi]
[aho_face_bisyou_youen]
[elsif exp="tf.sel==3"]
[aho_face_mihiraki]
[aho_face_normal]

[endif]


[endif]

[endmacro]

[macro name="answer_place_24_p"]
[if exp="f.friend==2"]
[if exp="tf.sel==1"]
[lioness_face_normal_warai]
[lioness_head_under_y]
[lioness_head_normal]
[elsif exp="tf.sel==2"]
[lioness_face_ha]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[lioness_eyes_normal]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=1000]
[lioness_head_right_z]
[lioness_face_warai]
[elsif exp="tf.sel==3"]
[lioness_face_ha]
[endif]

[elsif exp="f.friend==3"]
[if exp="tf.sel==1"]
[aho_face_mehuse_warai]
[elsif exp="tf.sel==2"]
[aho_face_mihiraki]
[aho_face_normal]
[elsif exp="tf.sel==3&&tf.kizuna==1"]
[live2d_fadeout time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=1000]
[aho_face_mehuse]
[w]
[aho_head_left_z]
[aho_face_naki_warai]
[aho_face_hutuu_warai]
[elsif exp="tf.sel==3"]
[aho_body_right_z]
[aho_face_smile_ase]

[endif]


[endif]

[endmacro]




[macro name="date_home"]
[live2d_fadeout time=1000]
[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_sakaba_yoru.jpg"]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_yuu_rouka.jpg"]
[else]
[bg storage="kisidaniriguti_tasogare.jpg"]
[endif]
[live2d_fadein time=1000]

[if exp="f.friend==1"]
[eval exp="tf.lover_konkando = f.ranskonkando"]
[elsif exp="f.friend==2"]
[eval exp="tf.lover_konkando = f.lionkonkando"]
[elsif exp="f.friend==3"]
[eval exp="tf.lover_konkando = f.krakonkando"]
[endif]

[if exp="f.friend==1&&f.event_epi5_rans_ok==10"]
[eval exp="tf.lover_kizuna = 1" ]
[elsif exp="f.friend==2&&f.event_sub_14_mother_kaiwa==1"]
[eval exp="tf.lover_kizuna = 1" ]
[elsif exp="f.friend==3&&f.event_epi7_kra_ok==7"]
[eval exp="tf.lover_kizuna = 1" ]
[endif]



;テストようにコメントにします
[if exp="tf.lover_konkando>49&&f.love_up>2||tf.lover_kizuna>0&&f.love_up>2"]
[call storage="scenario_2/love_mode/love_mode_run.ks"]

[lovers_mode]
;[clearstack]
[endif]


*lovemode_end
[if exp="f.friend==1&&f.ranskonkando>49"]

[rans_head_left_x]
[rans_head_under_y]
[rans_exp_yokome]
#ランスロット
「・・・その、もう少し、いいか？」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「・・・部屋まで送っていく」[p]
#
[live2d_fadeout time=1000]
[bg storage="irainheya_yoru_tasogare.jpg"]
[rans_home_love]

[elsif exp="f.friend==1"]

[rans_head_under_y]
[rans_head_normal]
#ランスロット
「夜もふけた。それじゃ、またな。ちゃんと寝るんだぞ」[p]
#
[live2d_fadeout time=1000]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endif]


;ライオネス
[if exp="f.friend==2&&f.lionkonkando>49"]

[lioness_face_normal]
[lioness_head_under_y]
#ライオネス
「・・・なんか、足りねえな・・・」[p]
#

[lioness_head_normal]
[lioness_eyes_right]
#ライオネス
「部屋まで、送らせろ」[p]
#
[live2d_fadeout time=1000]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_yado_yoru.jpg"]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_yoru_room.jpg"]
[elsif exp="f.s_wesuta!=1]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endif]

[lion_home_love]

[elsif exp="f.friend==2"]

[lioness_head_left_x]
#ライオネス
「そんじゃな」[p]
#
[live2d_fadeout time=1000]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_yado_yoru.jpg"]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_yoru_room.jpg"]
[elsif exp="f.s_wesuta!=1]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endif]

[endif]



;クライスト
[if exp="f.friend==3&&f.krakonkando>49"]

[aho_head_right_z]
[aho_head_under_y]
[aho_face_kunou]
#クライスト
「・・・あのさ、もう少し一緒に・・・」[p]
#
[aho_head_normal]
[aho_face_hutuu_bisyou]
#クライスト
「いい、かな・・・
[aho_head_under_y]
[aho_face_hutuu_warai]
部屋まで、送るよ」[p]
#
[live2d_fadeout time=1000]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_yado_yoru.jpg"]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_yoru_room.jpg"]
[elsif exp="f.s_wesuta!=1"]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endif]

[kra_home_love]
[elsif exp="f.friend==3"]

#クライスト
「もうこんな時間か。それじゃあね、[name]ちゃん」[p]
#
[live2d_fadeout time=1000]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[bg storage="wesuta_yado_yoru.jpg"]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_yoru_room.jpg"]
[elsif exp="f.s_wesuta!=1"]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endif]

[endif]

[live2d_off][live2d_delete_all]
*lovers_end
[endmacro]








[macro name="rans_home_love"]
[live2d_fadein time=1000]
[if exp="f.ranskonkando>49"]
[rans_head_normal]
[rans_exp_mehuse]
#ランスロット
「・・・・・・。それじゃあな」[p]
#
[live2d_fadeout time=1000]
[elsif exp="f.rans_heart_kizuna>0"]

[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「・・・今日はお前といられて、楽しかった」[p]
#
#&f.name
「ランスロット」[p]
#
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse]

#ランスロット
「・・・貴重なんだ。大切に思っている。お前も、お前との時間も」[p]
#

[rans_head_left_z]
[rans_exp_metoji]
#ランスロット
「願わくば、このまま・・・」[p]
#

[rans_head_normal]
[rans_exp_komari_warai]
#ランスロット
「いや・・・なんでもないんだ・・・」[p]
#

[rans_head_normal]
[rans_exp_normal]
#ランスロット
「・・・じゃあな、ゆっくり休め」[p]
#
[live2d_fadeout time=1000]

#&f.name
（なんだか、辛そう、だったな・・・）[p]
#

#&f.name
（ランスロット・・・）[p]
#
[endif]

[endmacro]



[macro name="lion_home_love"]
[live2d_fadein time=1000]
[if exp="f.lionkonkando>49"]

[lioness_head_normal]
[lioness_eyes_right]
#ライオネス
「そ・・・そんじゃな」[p]
#

#&f.name
「うん！」[p]
#
[live2d_fadeout time=1000]
[elsif exp="f.lion_heart_kizuna>0"]

[lioness_head_left_x]
[lioness_eyes_right]
#ライオネス
「お前よ・・・俺だけってこと、ねえよな？」[p]
#

[lioness_head_normal]
[lioness_face_normal]
#&f.name
「え？」[p]
#

[lioness_eyes_left]
[lioness_face_tere]
#ライオネス
「その・・・こういうふうに、誘うの・・・」[p]
#

#&f.name
「え・・・えーっと・・・」[p]
#

#ライオネス
「・・・・・・」[p]
#

#&f.name
「その・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]

#ライオネス
「いや・・・悪い。妙な期待ばっかしてんの、俺だけだよな、多分・・・」[p]
#
#&f.name
「ライオネス」[p]
#

[lioness_face_mehuse_dai]
#ライオネス
「ちっと・・・格好わりいな。忘れろ」[p]
#
#&f.name
「あの・・・」[p]
#

[lioness_face_metoji]
[lioness_face_warai]
#ライオネス
「おやすみ。また、明日な」[p]
#

[live2d_fadeout time=1000]
#&f.name
「・・・うん・・・」[p]
#
#&f.name
（ライオネス・・・）[p]
#

[endif]

[endmacro]


[macro name="kra_home_love"]
[live2d_fadein time=1000]
[if exp="f.krakonkando>49"]

[aho_head_right_z]
[aho_face_normal]
#クライスト
「それじゃね。おやすみ」[p]
#
[live2d_fadeout time=1000]


[elsif exp="f.kra_heart_kizuna>0"]

[aho_face_normal_majime]
#クライスト
「あのさ」[p]
#

#&f.name
「？」[p]
#

[aho_head_under_y]
[aho_face_mehuse]
#クライスト
「抱きしめてもいい？」[p]
#

#&f.name
「え・・・ええ！？」　[p]
#

[aho_head_normal]
[aho_face_normal_majime]
#クライスト
「・・・・・・」[p]
#

[aho_face_mehuse_warai]
#クライスト
「ごめん。冗談だよ」[p]
#

[aho_head_right_z]
[aho_face_hutuu_bisyou]
#クライスト
「急にそんなことされたら・・・嫌だよね」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#&f.name
「あの、クライストさん・・・」[p]
#

[aho_face_yokome]
#クライスト
「・・・ごめんね。俺、ちょっとどうかしてる」[p]
#

[aho_head_left_x]
[aho_head_under_y]
[aho_face_kunou]
#クライスト
「こんな・・・気持ち・・・」[p]
#

#&f.name
「え・・・」[p]
#

[aho_face_metoji]
[aho_head_normal]
[aho_face_normal]
#クライスト
「気にしなくていいよ。おやすみ。

[aho_head_right_z]
[aho_face_hutuu_warai]
・・・明日も俺に、笑って？」[p]
#

[aho_head_under_y]
[aho_face_mehuse]
#&f.name
「・・・クライストさん？」[p]
#

[aho_face_metoji_warai]
#クライスト
「はは、ホントに、どうかしてるな・・・。
[aho_head_under_y]
[aho_head_right_x]
[aho_face_mehuse_warai]
それじゃあね」[p]
#
[live2d_fadeout time=1000]
#&f.name
（・・・クライストさん・・・）[p]
#


[endif]

[endmacro]


[macro name="place_id_result"]

[if exp="f.place_id==0"]

[if exp="tf.sel==1"]
[eval exp="f.place_id=90"]
[eval exp="tf.place_return=1"]
[elsif exp="tf.sel==2"]
[live2d_fadeout time=1000]
[jump storage="scenario_2/ryouri/ryouri_run.ks"]
[elsif exp="tf.sel==3"]
[eval exp="f.place_id=91"]
[eval exp="tf.place_return=1"]
[endif]
;---------------


[elsif exp="f.place_id==1"]

[if exp="tf.sel==1"]
[eval exp="f.sweet_choice=1"]
[shokuji_date]
[elsif exp="tf.sel==2"]
[shokuji_date]
[elsif exp="tf.sel==3"]
[eval exp="f.lunch_choice=1"]
[shokuji_date]
[endif]

[elsif exp="f.place_id==6"]


[if exp="tf.sel==1"]
[eval exp="f.place_id=60"]
[eval exp="tf.place_return=1"]
[elsif exp="tf.sel==2"]
[eval exp="f.place_id=61"]
[eval exp="tf.place_return=1"]
[elsif exp="tf.sel==3"]
[eval exp="f.place_id=62"]
[eval exp="tf.place_return=1"]
[endif]

[elsif exp="f.place_id==7"]


[if exp="tf.sel==1"]
[eval exp="f.r_ika=1"]
[shokuji_date]
[elsif exp="tf.sel==2"]
[eval exp="f.place_id=70"]
[eval exp="tf.place_return=1"]
[elsif exp="tf.sel==3"]
[eval exp="f.place_id=71"]
[eval exp="tf.place_return=1"]
[endif]

;[elsif exp=""]

[elsif exp="f.place_id==8"]


[if exp="tf.sel==1"]

[if exp="f.friend!=3&&f.irain_move>0"]
[live2d_fadeout time=1000]
[image storage="black.png" layer=3 page="fore" name="kuro" visible="0" x="0" y="0"]
[status_up_tec_20]
[free name="kuro" layer=3 time=1000]
[endif]

[elsif exp="tf.sel==2"]
[elsif exp="tf.sel==3"]
[endif]


[elsif exp="f.place_id==23"]
;ふくろうてい
[if exp="tf.sel==1"]
[eval exp="f.r_hukurou=1"]
[shokuji_date]
[elsif exp="tf.sel==2"]
[live2d_fadeout time=1000]
[jump storage="scenario_2/ryouri/ryouri_run.ks"]
[endif]

[elsif exp="f.place_id==15"]
;海鳴り亭

[if exp="tf.sel==1"]
[eval exp="f.r_uminari=1"]
[shokuji_date]
[elsif exp="tf.sel==2"]
[live2d_fadeout time=1000]
[jump storage="scenario_2/ryouri/ryouri_run.ks"]
[endif]

[elsif exp="f.place_id==17&&f.irain_move==0"]
;廊下
;[elsif exp="f.place_id=="]
[if exp="tf.sel==2"]
[eval exp="f.r_uminari=1"]
[shokuji_date]
[endif]



[endif]

[endmacro]


[macro name="shokuji_date"]
[if exp="f.r_ika==1"]
[jump target=*ikatei]
[elsif exp="f.r_uminari==1"]
[jump target=*uminari]
[elsif exp="f.r_hukurou==1"]
[jump target=*hukurou]
[endif]

[restaurant_choice]

[if exp="f.lunch_choice==1"]
[eval exp="f.lunch_choice=0"]
[jump target=*lunch_end]
[endif]

;ランス好きな店
[if exp="f.friend==1"]

[if exp="f.r_kajikaji==1||f.r_hirayama==1||f.r_oikawa==1"]

[live2d_fadein time=1000]
[rans_exp_normal_warai]
#ランスロット
「お前は魚料理が好きだな。私も好きだ」[p]
#
[rans]
[koukando_up]
[live2d_fadeout time=1000]
[endif]

[endif]

;ライ好きな店
[if exp="f.friend==2"]

[if exp="f.r_romana==1||f.r_beruzoku==1||f.r_moon==1"]
[live2d_fadein time=1000]
[lioness_face_normal_warai]

#ライオネス
「やっぱ肉だよな！」[p]
#
[lion]
[koukando_up]
[live2d_fadeout time=1000]

[endif]
[endif]


[if exp="f.friend==3"]

[if exp="f.r_moon==1"]

[live2d_fadein time=1000]
[aho_face_bisyou_youen]
#クライスト
「このお店美味しいよね、俺も好きだな」[p]
#
[kra]
[koukando_up]

[live2d_fadeout time=1000]

[endif]
[endif]



*ikatei
*uminari
*hukurou

[restaurant_haikei]


[live2d_fadeout time=1000]

[if exp="f.sweet_choice!=1"]
[menu_choice]
[elsif exp="f.sweet_choice==1"]
[menu_choice_cafe]
[endif]
[bg storage="&f.shokuji_haikei"]


[if exp="f.friend==1"]
[rans_para_word]
[rans_para_current_kioku]
;あったときにチェックしてる場合なしに。そのうち分岐させる
[rans_fashion_check]
[elsif exp="f.friend==2"]
[lion_para_word]
[lion_para_current_kioku]
[lion_fashion_check]
[elsif exp="f.friend==3"]
[kra_para_word]
[kra_para_current_kioku]
[kra_fashion_check]
[endif]



;会話イベント
[if exp="f.friend==1"]
[call storage="scenario_2/kaiwa/ranskaiwa_new.ks"]
[ranskaiwa]
[rans_arms_normal]
[rans_body_normal]
[rans_head_normal]
[rans_exp_normal]
[rans_mod_idle]
[elsif exp="f.friend==2"]
[call storage="scenario_2/kaiwa/lionkaiwa_new.ks"]
[lionkaiwa]
[lioness_arms_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_face_normal]
[lioness_mod_idle]
[elsif exp="f.friend==3"]
[call storage="scenario_2/kaiwa/krakaiwa_new.ks"]
[krakaiwa]
[aho_arms_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_normal]
[aho_mod_idle_normal]
[endif]

[onaka_ippai]
[message_settei_ad]
*lunch_end
[eval exp="f.r_hukurou=0"]
[eval exp="f.r_uminari=0"]
[eval exp="f.r_ika=0"]
[eval exp="f.r_moon=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_romana=0"]
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]
[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]
[eval exp="f.sweet_choice=0"]
[eval exp="f.lunch_choice=0"]
[eval exp="f.r_sweetvalue=0"]
[eval exp="f.r_creammania=0"]

[endmacro]

[macro name="date_sp_zatudan"]

;[if exp="f.event_main_15_date_rans==1&&f.place_id==8"]
;[rans_exp_bisyo]
;[rans_head_under_y]
;[rans_head_normal]
;#ランスロット
;「ここなら二人きりでゆっくりできそうだな」;[p]
;#	
;[rans]
;[koukando_up]
;[elsif exp="f.event_main_15_date_lion==1&&f.place_id==1"]	
;[lioness_head_right_x]
;[lioness_face_normal_warai]
;[lioness_head_normal]
;#ライオネス
;「あー・・・飯食いたくなってきたぜ。食ってくか？」;[p]
;#	
;[lion]
;[koukando_up]
;;[elsif exp="f.event_main_15_date_kra==1&&f.place_id==2"]	
;;[aho_face_mihiraki]
;#クライスト
;「もしかしてわざとここ、選んだの？
;;[aho_head_under_y]
;;[aho_head_normal]
;;[aho_face_bisyou_youen]
;俺この場所好きなんだよね」;;[p]
;;#	
;;[kra]
;;[koukando_up]
;;[endif]
;;[eval exp="f.date_sp=0"]
[endmacro]


[macro name="place_end"]

[fero_mode]

[if exp="f.friend==1"]
[live2d_rans_mod_sekkin]
[rans_mod_idle]
[rans_head_normal]
[rans_body_normal]
[rans_arms_normal]
[rans_exp_normal]
[live2d_fadein time=1000]
[rans_exp_normal_warai]
#ランスロット
「そろそろ、行くか」[p]
#

#&f.name	
「あ、うん」[p]
#

[elsif exp="f.friend==2&&f.place_id!=6"]
[live2d_lion_mod_sekkin]
[lioness_mod_idle]
[lioness_arms_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_face_normal]
[live2d_fadein time=1000]

#ライオネス
「そろそろ移動しねえか？」[p]
#

#&f.name
「そうだね、どこいこう？」[p]
#



[elsif exp="f.friend==3&&f.place_id!=6"]
[live2d_kra_mod_sekkin]
[aho_mod_idle_normal]
[aho_arms_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_normal]
[live2d_fadein time=1000]

#クライスト
「じゃあ、次、どこ行こっか？」	[p]
#

[endif]
[live2d_fadeout time=1000]
[stopse]
[stopbgm]
[endmacro]

[macro name="date_place"]

[if exp="f.place_id==60"]
;庭園

[if exp="f.irain_move>0"]
[bg storage="oukyu_teien.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="oukyu_teien_yuu.jpg"]
[endif]


[elsif exp="f.place_id==61"]
;屋上

[if exp="f.irain_move>0"]
[bg storage="oukyu_okujou.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="oukyu_okujou_yuu.jpg"]
[endif]

[elsif exp="f.place_id==62"]
;部屋
[bg storage="ransheya_tasogare.jpg"]
[elsif exp="f.place_id==71||f.place_id==70"]
[playse storage="umineko_onjin.ogg"]
;桟橋,港
[if exp="f.irain_move>0"]
[bg storage="sharomusanbasi_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]
[endif]

[elsif exp="f.place_id==90"]
;部屋
[playbgm storage="reina_ol_ontama.ogg"]

[if exp="f.irain_move>0"]
[bg storage="irainheya_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="irainheya_yuu_tasogare.jpg"]
[endif]

[elsif exp="f.place_id==91"]
;裏庭

[if exp="f.irain_move>0"]
[bg storage="kisidanuraniwa_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidanuraniwa_hiru_tasogare.jpg"]
[endif]

[elsif exp="f.place_id==4"]
[if exp="f.irain_move>0"]
[stopbgm]
[elsif exp="f.irain_move==0"]
[stopbgm]
[playse storage="zawameki_soto.ogg"]
[endif]

[elsif exp="f.place_id==7"]
[playbgm storage="sharomu_musmus.ogg"]



[endif]

[endmacro]


;男性の返答に対するイレイン反応マクロ

[macro name="koukando_confirm"]
[kizuna_confirm]
[eval exp="tf.koukando_up=0"]
[eval exp="tf.len=0"]
[eval exp="tf.place_effect_id=0"]
[eval exp="tf.up_array=[]"]
[iscript]

//現在の場所にあうID取得
for(i=0;i<tf.place_effect.length;i++){

if(tf.place_effect[i].id === f.place_id){

    tf.place_effect_id = i;

}
}


//好感度高い午前中
if(tf.sel===1&&f.irain_move>0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_1_t_up;
}else if(tf.sel===2&&f.irain_move>0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_2_t_up;
}else if(tf.sel===3&&f.irain_move>0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_3_t_up;
}else if(tf.sel===1&&f.irain_move>0){//好感度普通午前中
tf.up_array = tf.place_effect[tf.place_effect_id].sel_1_up;
}else if(tf.sel===2&&f.irain_move>0){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_2_up;
}else if(tf.sel===3&&f.irain_move>0){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_3_up;
}

//好感高い午後
if(tf.sel===1&&f.irain_move===0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_1_t_p_up;
}else if(tf.sel===2&&f.irain_move===0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_2_t_p_up;
}else if(tf.sel===3&&f.irain_move===0&&tf.kizuna===1){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_3_t_p_up;
}else if(tf.sel===1&&f.irain_move===0){//好感度普通午後
tf.up_array = tf.place_effect[tf.place_effect_id].sel_1_p_up;
}else if(tf.sel===2&&f.irain_move===0){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_2_p_up;
}else if(tf.sel===3&&f.irain_move===0){
tf.up_array = tf.place_effect[tf.place_effect_id].sel_3_p_up;
}





tf.len = tf.up_array.length;
	var num = f.friend-1;

	for(i=0;i<tf.len;i++){

		if(tf.up_array[i]>0){

			if(i===num){

				tf.koukando_up = 1;


			}


		}



	}


[endscript][endmacro]

[macro name="koukando_act"]

	[if exp="tf.koukando_up==1&&f.friend==1"]
	[rans]
	[koukando_up]
	[endif]
	[if exp="tf.koukando_up==1&&f.friend==2"]
	[lion]
	[koukando_up]
	[endif]
	[if exp="tf.koukando_up==1&&f.friend==3"]
	[kra]
	[koukando_up]
	[endif]
	
[endmacro]




;小悪魔フェロモン
[macro name="fero_mode"]

[eval exp="tf.akuma=1"]
[iscript]
//tf.akuma = Math.floor( Math.random() * 3) + 1

[endscript]

[if exp="f.other_item_stock[35]>0&&tf.akuma==1"]

[eval exp="f.koakuma=1"]
[call storage="scenario_2/love_mode/love_mode_run.ks"]

[if exp="f.friend==1"]
[live2d_rans_mod_sekkin]
[elsif exp="f.friend==2"]
[live2d_lion_mod_sekkin]
[elsif exp="f.friend==3"]
[live2d_kra_mod_sekkin]
[endif]
[live2d_fadein time=1000]
[lovers_mode]


[if exp="f.friend==1"]
[rans_exp_komari]
[rans_head_right_x]
#ランスロット
「あ、いやその・・・すまない」[p]
#
[live2d_fadeout time=1000]
[rans_exp_normal]
[rans_head_normal]
[elsif exp="f.friend==2"]
[lioness_face_mehuse_dai]
#ライオネス
「・・・・・・わりい」[p]
#
[live2d_fadeout time=1000]
[lioness_face_normal]
[lioness_head_normal]
[elsif exp="f.friend==3"]
[aho_head_right_x]
[aho_face_mehuse]
#クライスト
「・・・っ・・・ご、ごめん」[p]
#
[live2d_fadeout time=1000]
[aho_head_normal]
[aho_face_normal]
[endif]


[eval exp="f.koakuma=0"]

[endif]
[endmacro]

[macro name="osasoi"]

[if exp="f.lion_flag==1"]
[eval exp="f.sasoi=1"]
[hidemenubutton]
[playse storage="nokku_tairakomori.ogg"]

#&f.name
「あれ、誰だろ」[p]
#

[live2d_lion_touroku]
[live2d_fadeout time=1000]
[live2d_lion_show_sekkin]
[live2d_fadein time=1000]
#ライオネス
「・・・よう」[p]
#

#&f.name
「ライオネス？どうしたの？」[p]
#

[lioness_face_odoroki]
#ライオネス
「いや・・・
[lioness_face_normal]
[lioness_face_tere]
[lioness_head_right_x]
[w]
[lioness_head_left_x]
その、なんつうか・・・」[p]
#

[lioness_head_normal]
#&f.name
「？？」[p]
#

[lioness_eyes_right]
#ライオネス
「め、めし食いにいかねえか？」[p]
#

#&f.name
「お腹すいてるの？」
[lioness_eyes_normal]
[lioness_head_under_y]
[p]
#

[lioness_face_yokome_otikomi]
#ライオネス
「ま、まあ・・・ど、どうだ？」[p]
#

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスと一緒に・・・】

[glink target=*lion_go text="（出かける）" size=17 width=600 x=65 y=200]
[glink target=*lion_no text="（いかない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[else]
[endif]
[s]


*lion_go

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「よし、じゃいくか」[p]
#
[eval exp="f.target_chara=2"]
[eval exp="f.irain_out=1"]
[eval exp="f.irain_heya=0"]
[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[eval exp="f.place_w_yadoya=1"]
[elsif exp="f.s_wesuta==1"]
[eval exp="f.place_hune_jisitu=1"]
[endif]
[approach_kekka]
[live2d_fadeout time=1000]
[message_kakusu_ad]
[stopbgm]
[clearstack]
[jump storage="scenario_2/status_macro.ks" target=*status_osasoi]



*lion_no
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[live2d_fadein time=1000]
[lioness_eyes_normal]
[lioness_face_otikomi]

#ライオネス
「そ、そうかよ・・・
[lioness_face_normal]
いきなり悪かった。じゃな」[p]
#

[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]
*lion_osasoi_end
[clearstack]
[jump storage="scenario_2/status_macro.ks" target=*first]

;---------------------------------------
[elsif exp="f.kra_flag==1"]
[eval exp="f.sasoi=1"]
[hidemenubutton]
[playse storage="nokku_tairakomori.ogg"]

[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]

[live2d_fadein time=1000]
#クライスト
「[name]」[p]
#
#&f.name
「クライストさん？どうしたの？」[p]
#

[aho_face_komari_warai]
[aho_eyes_right]
[aho_head_right_z]
[aho_body_right_z]
#クライスト
「えーっと・・・」[p]
#

#&f.name
「？？？」[p]
#

[aho_face_normal]
[aho_head_normal]
[aho_body_normal]
#クライスト
「天気もいいしさ、

[if exp="f.event_main_18_days>0"]
どこか出かけない？」[p]
[elsif exp="f.s_wesuta==1"]
甲板に出てみない？」[p]
[endif]
#

[aho_face_bisyou_youen]
[aho_arms_udekumi]
#クライスト
「狭い部屋にいるのも、つまらないでしょ？」
[aho_head_left_z]
[p]
#

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【クライストさんと一緒に・・・】

[glink target=*kra_go text="（出かける）" size=17 width=600 x=65 y=200]
[glink target=*kra_no text="（いかない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[else]
[endif]
[s]

*kra_go

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[live2d_fadein time=1000]
[aho_face_hutuu_warai]
[aho_arms_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト
「うん、じゃ、行こう？」[p]
#
[eval exp="f.target_chara=3"]
[eval exp="f.irain_out=1"]
[eval exp="f.irain_heya=0"]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[eval exp="f.place_w_yadoya=1"]
[elsif exp="f.s_wesuta==1"]
[eval exp="f.place_hune_jisitu=1"]
[endif]


[approach_kekka]
[live2d_fadeout time=1000]
[message_kakusu_ad]
[stopbgm]
[clearstack]
[jump storage="scenario_2/status_macro.ks" target=*status_osasoi]



*kra_no

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[live2d_fadein time=1000]
#クライスト
「そっか。いきなりごめんね、じゃまた」[p]
#
[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]

*kra_osasoi_end
[clearstack]
[jump storage="scenario_2/status_macro.ks" target=*first]
[endif]








[endmacro]









[return]

