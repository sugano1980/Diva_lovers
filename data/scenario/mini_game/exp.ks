*exp

;獲得経験値とアニメーション

[iscript]


var irain_tec_increase=0;
var irain_brain_increase=0;
var irain_charm_increase=0;




function exp(){


		irain_tec_increase += tf.exp_tec_value;
		irain_brain_increase += tf.exp_brain_value;
		irain_charm_increase += tf.exp_charm_value;
		
  	   tf.irain_tec_increase = irain_tec_increase;
       tf.irain_brain_increase = irain_brain_increase;
       tf.irain_charm_increase = irain_charm_increase;
	
};




if(tf.monster_number_first==3){


if(tf.monster_1_death==1&&tf.exp_yet_1==0){

	tf.exp = tf.monster_id_no_1;
	tf.exp_tec_value = tf.monster_exp_tec_no_1;
	tf.exp_brain_value = tf.monster_exp_brain_no_1;
	tf.exp_charm_value = tf.monster_exp_charm_no_1;
	exp();
	tf.exp_yet_1 = 1;
}; 


if(tf.monster_2_death==1&&tf.exp_yet_2==0){

	tf.exp = tf.monster_id_no_2;
	tf.exp_tec_value = tf.monster_exp_tec_no_2;
	tf.exp_brain_value = tf.monster_exp_brain_no_2;
	tf.exp_charm_value = tf.monster_exp_charm_no_2;
	exp();
	tf.exp_yet_2 = 1;

}; 

if(tf.monster_3_death==1&&tf.exp_yet_3==0){

	tf.exp = tf.monster_id_no_3;
	tf.exp_tec_value = tf.monster_exp_tec_no_3;
	tf.exp_brain_value = tf.monster_exp_brain_no_3;
	tf.exp_charm_value = tf.monster_exp_charm_no_3;
	exp();
	tf.exp_yet_3 = 1;

};

};

if(tf.monster_number_first==2){



if(tf.monster_2_death==1&&tf.exp_yet_2==0){

	
    tf.exp_value = tf.monster_exp_no_2;
    tf.exp_tec_value = tf.monster_exp_tec_no_2;
	tf.exp_brain_value = tf.monster_exp_brain_no_2;
	tf.exp_charm_value = tf.monster_exp_charm_no_2;

	exp();
	tf.exp_yet_2 = 1;

}; 

if(tf.monster_3_death==1&&tf.exp_yet_3==0){

	tf.exp_value = tf.monster_exp_no_3;
	tf.exp_tec_value = tf.monster_exp_tec_no_3;
	tf.exp_brain_value = tf.monster_exp_brain_no_3;
	tf.exp_charm_value = tf.monster_exp_charm_no_3;
	exp();
	tf.exp_yet_3 = 1;

};

};	


if(tf.monster_number_first==1){


if(tf.monster_1_death==1&&tf.exp_yet_1==0){

	tf.exp_value = tf.monster_exp_no_1;
	tf.exp_tec_value = tf.monster_exp_tec_no_1;
	tf.exp_brain_value = tf.monster_exp_brain_no_1;
	tf.exp_charm_value = tf.monster_exp_charm_no_1;
	exp();
	tf.exp_yet_1 = 1;
}; 

};	



	


[endscript]

;経験値プラス
[eval exp="f.irain_tec=f.irain_tec+tf.irain_tec_increase"]
[eval exp="f.irain_brain=f.irain_brain+tf.irain_brain_increase"]
[eval exp="f.irain_charm=f.irain_charm+tf.irain_charm_increase"]



;経験値アップアニメーション



[eval exp="tf.irain_tec_exp_x1=tf.irain_tec_number_x+40"]
[eval exp="tf.irain_tec_exp_x2=tf.irain_tec_exp_x1+10"]
[eval exp="tf.irain_brain_y=tf.irain_tec_y+30"]
[eval exp="tf.irain_charm_y=tf.irain_brain_y+30"]

;顔イラストと重なるためレイヤー番号変更

[free layer=3 name="irain_face"]
[image layer=2 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]


[if exp="tf.irain_tec_increase>=1"]
[ptext layer=3 page=fore visible="true" text="&tf.irain_tec_increase" name="irain_tec_increase" size=20 x=&tf.irain_tec_exp_x1 y=&tf.irain_tec_y]
[image layer=3 page=fore visible="true" name="irain_tec_increase" storage="exp_up.gif" x=&tf.irain_tec_exp_x2 y=&tf.irain_tec_y]
[free layer=3 name="irain_tec"]
[free layer=3 name="irain_hp"]

[irain_hp_kousin]
[endif]





[if exp="tf.irain_brain_increase>=1"]
[free layer=3 name="irain_face"]
[image layer=2 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]

[ptext layer=3 page=fore visible="true" text="&tf.irain_brain_increase" name="irain_brain_increase" size=20 x=&tf.irain_tec_exp_x1 y=&tf.irain_brain_y]
[image layer=3 page=fore visible="true" name="irain_brain_increase" storage="exp_up.gif" x=&tf.irain_tec_exp_x2 y=&tf.irain_brain_y]
[free layer=3 name="irain_brain"]
[free layer=3 name="irain_hp"]

[irain_hp_kousin]
[endif]



[if exp="tf.irain_charm_increase>=1"]
[free layer=3 name="irain_face"]
[image layer=2 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]

[ptext layer=3 page=fore visible="true" text="&tf.irain_charm_increase" name="irain_charm_increase" size=20 x=&tf.irain_tec_exp_x1 y=&tf.irain_charm_y]
[image layer=3 page=fore visible="true" name="irain_charm_increase" storage="exp_up.gif" x=&tf.irain_tec_exp_x2 y=&tf.irain_charm_y]
[free layer=3 name="irain_charm"]
[free layer=3 name="irain_hp"]

[irain_hp_kousin]
[endif]




[free layer=3 name="irain_tec_increase" time=600]
[free layer=3 name="irain_brain_increase" time=600]
[free layer=3 name="irain_charm_increase" time=600]

[free layer=2 name="irain_face"]
[image layer=3 page=fore visible=true name="irain_face" storage="battle_face/irain_face.png" x=&tf.irain_face_x y=&tf.irain_face_y]



[emb exp="tf.irain_tec_increase"]ポイントの技術経験値を獲得！[a][r]




[return]


