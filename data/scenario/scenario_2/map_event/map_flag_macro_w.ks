;フラグ代入



[macro name="map_flag_confirm_w"]

;テストコード
;[eval exp="f.disc_2=0"]
;[eval exp="f.disc_3=1"]
;[eval exp="f.disc_num=3"]
;[if exp="f.test!=1"]
;[eval exp="f.friend=0"]
;[eval exp="f.test=1"]
;[endif]
;[eval exp="f.event_main_14_days=10"]
;------------------

[eval exp="f.sub_event_shokudou=0"]
[eval exp="f.sub_event_kanpan=0"]
[eval exp="f.sub_event_rouka=0"]
[eval exp="f.sub_event_nakama=0"]

[eval exp="f.sub_event_toshokan=0"]
[eval exp="f.sub_event_kouen=0"]
[eval exp="f.sub_event_honya=0"]
[eval exp="f.sub_event_yadoya=0"]
[eval exp="f.sub_event_kusuri=0"]


;デートイベント
[if exp="f.disc_4==1&&f.date_event_flag==1&&tf.date_yomikomi!=1"]

;[call storage="scenario_2/date/date_sel_serihu_data_2.ks"]
[loadjs storage="date_sel_serihu_data.js"]
[loadjs storage="date_sel_serihu_data_2.js"]
[call storage="scenario_2/date/date_sel_serihu_data.ks"]
[call storage="scenario_2/date/date_macro.ks"]
[call storage="scenario_2/date/date_sel_macro.ks"]
[eval exp="tf.date_yomikomi=1"]
;[eval exp="f.date_event_flag =1"]
[endif]



;BGM用
[eval exp="f.bgm=1"]


;ウェスタ編;ウェスタ滞在
[if exp="f.disc_4==1&&f.date_now!=1&&f.friend==0&&f.event_main_18_days>0"]


;各キャラ居場所表示

;図書館20本屋21薬や22公園24食堂23

[iscript]

f.place_chara =[
0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,
0,0,0];
tf.map_friend = Math.floor( Math.random() * 3) + 1

if(tf.map_friend===3){

f.place_chara[20]=3;
f.place_chara[24]=2;


}else if(tf.map_friend===2){

f.place_chara[21]=3;
f.place_chara[24]=2;



}else if(tf.map_friend===1){


f.place_chara[23]=2;
f.place_chara[20]=3;

}

//if(f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5){

//for(i=15;i<19;i++){
//f.place_chara[i]=0;			
//	}
//f.place_chara[17]=2;
//f.place_chara[18]=3;
//}





//イベント中のキャラクター表示制御
//クライスト


//ライオネス
//if(f.lion_flag==1&&f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[4]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[5]!=1&&f.event_main_17_days==4||f.lion_flag==1&&f.event_sub_17_sumi[2]!=1&&f.event_main_17_days==3){

//for(i=15;i<19;i++){
//if(f.place_chara[i]===2){
//f.place_chara[i]=0;
//		}	
//	}
//}



[endscript]

;図書館


[endif]
;イベント表示処理

;-------------------------------------------------------



;甲板
;[if exp="f.event_sub_17[0]==1&&f.friend==0&&f.event_main_17_days==5"]
;[eval exp="f.sub_event_kanpan=1"]
;[elsif exp="f.event_sub_17[2]==1&&f.friend==0&&f.event_main_17_days==3&&f.lion_flag==1"]
;[eval exp="f.sub_event_kanpan=1"]
;[eval exp="f.event_mark='kra'"]
;[eval exp="f.event_chara=1"]
;[endif]

;ろうか
;[if exp="f.event_sub_17[5]==1&&f.friend==0&&f.event_main_17_days==4&&f.lion_flag==1"]
;[eval exp="f.sub_event_rouka=1"]
;[elsif exp="f.event_sub_17[4]==1&&f.friend==0&&f.event_main_17_days==5&&f.lion_flag==1"]
;[eval exp="f.sub_event_rouka=1"]
;[endif]

;;仲間の部屋



[if exp="f.disc_4==1&&f.date_now!=1&&f.friend==0&&f.event_main_17_days>0||f.disc_4==1&&f.date_now!=1&&f.friend==0&&f.event_main_19_days>0"]


;各キャラ居場所表示

;食堂15甲板16ろうか17仲間の部屋18

[iscript]

f.place_chara =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tf.map_friend = Math.floor( Math.random() * 3) + 1

if(tf.map_friend===3){

f.place_chara[16]=3;
f.place_chara[17]=2;


}else if(tf.map_friend===2){

f.place_chara[16]=3;
f.place_chara[18]=2;



}else if(tf.map_friend===1){


f.place_chara[17]=2;
f.place_chara[18]=3;

}

if(f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5){

for(i=15;i<19;i++){
f.place_chara[i]=0;			
	}
f.place_chara[17]=2;
f.place_chara[18]=3;
}





//イベント中のキャラクター表示制御
//クライスト
if(f.kra_flag==1&&f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5){

for(i=15;i<19;i++){
if(f.place_chara[i]===3){
f.place_chara[i]=0;
		}	
	}
}

//ライオネス
if(f.lion_flag==1&&f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[4]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[5]!=1&&f.event_main_17_days==4||f.lion_flag==1&&f.event_sub_17_sumi[2]!=1&&f.event_main_17_days==3){

for(i=15;i<19;i++){
if(f.place_chara[i]===2){
f.place_chara[i]=0;
		}	
	}
}



[endscript]


[endif]
;イベント表示処理

;-------------------------------------------------------

;食堂
[if exp="f.event_sub_17[3]==1&&f.friend==0&&f.event_main_17_days==2"]
[eval exp="f.sub_event_shokudou=1"]
[endif]

;甲板
[if exp="f.event_sub_17[0]==1&&f.friend==0&&f.event_main_17_days==5"]
[eval exp="f.sub_event_kanpan=1"]
[elsif exp="f.event_sub_17[2]==1&&f.friend==0&&f.event_main_17_days==3&&f.lion_flag==1"]
[eval exp="f.sub_event_kanpan=1"]
;[eval exp="f.event_mark='kra'"]
;[eval exp="f.event_chara=1"]
[endif]

;ろうか
[if exp="f.event_sub_17[5]==1&&f.friend==0&&f.event_main_17_days==4&&f.lion_flag==1"]
[eval exp="f.sub_event_rouka=1"]
[elsif exp="f.event_sub_17[4]==1&&f.friend==0&&f.event_main_17_days==5&&f.lion_flag==1"]
[eval exp="f.sub_event_rouka=1"]
[endif]

;;仲間の部屋

------
*event


[endmacro]

;------------------------------------

;キャラ表示判定
[macro name="chara_image_hantei_w"]
[if exp="f.place_chara[tf.place_num]>0"]
[eval exp="tf.chara_num=f.place_chara[tf.place_num]"]
[iscript]
if(f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0){
	if(tf.chara_num===1){
	f.chara_image ='battle_face/ranslott_face.png';
	}else if(tf.chara_num===2){
	 f.chara_image ='battle_face/lioness_face.png';
	 }else if(tf.chara_num===3){
   	 f.chara_image ='battle_face/klaist_face.png' ;     				
	}
}
[endscript]
[image layer=2 page=fore visible=true storage=&f.chara_image name="event" height=75 width=75 x=&tf.map_x y=&tf.map_y]
[endif]
[endmacro]

;フラグよう
[macro name="event_flag"]
[if exp="f.event_mark=='sub'"]
[elsif exp="f.event_mark=='rans'"]
[eval exp="f.event_mark='event_flag/event_rans.gif'"]
[elsif exp="f.event_mark=='lion'"]
[eval exp="f.event_mark='event_flag/event_lion.gif'"]
[elsif exp="f.event_mark=='kra'"]
[eval exp="f.event_mark='event_flag/event_kra.gif'"]
[endif]
[image layer=2 page=fore visible=true storage="&f.event_mark" name="event" x=&tf.flag_x y=&tf.flag_y]
[endmacro]




[return]