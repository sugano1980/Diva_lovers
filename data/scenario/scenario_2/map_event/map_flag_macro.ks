;フラグ代入



[macro name="map_flag_confirm"]

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

[eval exp="f.sub_event_oukyu=0"]
[eval exp="f.sub_event_hunsui=0"]
[eval exp="f.sub_event_sakaba=0"]
[eval exp="f.sub_event_gaia=0"]
[eval exp="f.sub_event_iriguti=0"]
[eval exp="f.sub_event_honbu=0"]
[eval exp="f.sub_event_uradoori=0"]
[eval exp="f.sub_event_keiko=0"]
[eval exp="f.sub_event_outo=0"]
[eval exp="f.sub_event_sharomu=0"]
[eval exp="f.sub_event_lioness=0"]


;デートイベント
[if exp="f.disc_3==1&&f.date_event_flag==1&&tf.date_yomikomi!=1"]

[loadjs storage="date_sel_serihu_data.js"]
[loadjs storage="date_sel_serihu_data_2.js"]
[call storage="scenario_2/date/date_sel_serihu_data.ks"]
[call storage="scenario_2/date/date_macro.ks"]
[call storage="scenario_2/date/date_sel_macro.ks"]
[eval exp="tf.date_yomikomi=1"]
;[eval exp="f.date_event_flag =1"]
[endif]



;BGM用
[if exp="f.event_main_5==1||f.event_main_5_1==1"]
[eval exp="f.bgm=0"]
[else]
[eval exp="f.bgm=1"]
[endif]

;エルムナード編
[if exp="f.disc_3==1&&tf.map_2!=1&&f.date_now!=1&&f.friend==0"]


;各キャラ居場所表示

;本部０酒場１ガイア2噴水3裏通り4門5王宮6シャローム7けいこ8

[iscript]

f.place_chara =[0,0,0,0,0,0,0,0,0];
tf.map_friend = Math.floor( Math.random() * 3) + 1

if(tf.map_friend===3){

f.place_chara[6]=1;
f.place_chara[1]=2;
f.place_chara[4]=3;

}else if(tf.map_friend===2){

f.place_chara[3]=1;
f.place_chara[1]=2;



}else if(tf.map_friend===1){


f.place_chara[5]=2;
f.place_chara[2]=3;

}

if(tf.map_friend===3){

}else if(tf.map_friend===2){

f.place_chara[7]=3;


}else if(tf.map_friend===1){

f.place_chara[8]=1;

}


//王宮にてのイベント、２日間はライオネス以外の表示なし

if(f.event_main_14_days>8&&f.event_sub_14_sumi[15]!=1){

for(i=0;i<9;i++){
if(f.place_chara[i]===1||f.place_chara[i]===3){
f.place_chara[i]=0;
		}	
	}
}





//ライオネスの瓦礫イベント関連、イベント前は表示なし、イベント後一日経った後に表示



//瓦礫イベントがすみでその次の日になったらフラグをマイナスにしてライオネスを表示
if(f.event_main_14_days>0&&f.event_lioness_hyouji_14===f.event_main_14_days){
f.event_lioness_hyouji_14=-1;
}

//瓦礫イベントが済んだ時、ライオネス表示フラグに今日の日付プラす１を代入
if(f.event_sub_14_sumi[2]===1&&f.event_lioness_hyouji_14===0){
f.event_lioness_hyouji_14 = f.event_main_14_days;
f.event_lioness_hyouji_14-=1;
}

//瓦礫イベントがまだ済んでない時はライオネス表示なしに
if(f.event_sub_14_sumi[2]!=1&&f.event_lioness_hyouji_14===0&&f.event_main_14_days>0){

for(i=0;i<9;i++){
if(f.place_chara[i]===2){
f.place_chara[i]=0;
		}	
	}
}

//ランスロット処刑イベント中、ランス表示なし
if(f.event_epi5_rans_ok!=10&&f.event_war_rans_sumi===1){

for(i=0;i<9;i++){
if(f.place_chara[i]===1){
f.place_chara[i]=0;
		}	
	}
}

//ランスロット処刑イベント中、イベントが終わるまでライオネスデートなし
//if(f.event_rans_search_yes!=0&&f.event_war_rans_sumi===1&&f.event_main_15_days>0){

//for(i=0;i<9;i++){
//if(f.place_chara[i]===2){
//f.place_chara[i]=0;

//if(f.event_epi5_rans_ok>7){
//f.place_chara[i]=2;
//}

//		}	
//	}
//}






//ライオネスとウェルムのイベントの時、ライオネス表示なし
if(f.event_epi5_rans_ok==3){

	for(i=0;i<9;i++){
if(f.place_chara[i]===2){
f.place_chara[i]=0;
		}	
	}
}


//クライストの図書フェアー前は表示なし

if(f.event_sub_15[0]===1&&f.friend===0&&f.krakonkando>30&&f.event_main_15_days>0){

	for(i=0;i<9;i++){
if(f.place_chara[i]===3){
f.place_chara[i]=0;
		}	
	}

}




[endscript]

[if exp="f.episode_flag==3"]
[eval exp="f.current_14_days=f.event_main_14_days"]
[event_main_14_flag_shori]
[endif]

[endif]
;イベント表示処理

;-------------------------------------------------------
[if exp="f.disc_3==1&&tf.map_2!=1"]

;王宮
[if exp="f.event_sub_14[15]==1&&f.friend==0&&f.event_main_14_days>8&&f.event_main_14_days>0"]
[eval exp="f.sub_event_oukyu=1"]
[endif]

;酒場
[if exp="f.event_sub_14[0]==1&&f.irain_move>1&&f.friend==0&&f.event_main_14_days>0"]
[eval exp="f.sub_event_sakaba=1"]
[elsif exp="f.event_epi7_kra_ok==1&&f.friend==0"]
[eval exp="f.sub_event_sakaba=1"]
[eval exp="f.event_mark='kra'"]
[eval exp="f.event_chara=1"]
[endif]

;噴水広場
[if exp="f.event_sub_14[2]==1&&f.friend==0&&f.event_main_14_days>0"]
[eval exp="f.sub_event_hunsui=1"]
[elsif exp="f.event_epi7_kra_ok==4&&f.friend==0"]
[eval exp="f.sub_event_hunsui=1"]
[eval exp="f.event_mark='kra'"]
[eval exp="f.event_chara=1"]
[elsif exp="f.event_sub_15[0]==1&&f.friend==0&&f.krakonkando>30&&f.event_main_15_days>0"]
[eval exp="f.sub_event_hunsui=1"]
[endif]

[if exp="f.event_sub_14[8]==1&&f.event_main_14_days>0"]
[eval exp="f.sub_event_hunsui=1"]
[endif]


;ガイア
;[if exp="f.event_sub_14[14]==1&&f.friend==0&&f.event_main_14_days==1"]
;[eval exp="f.sub_event_gaia=1"]

;[endif]

;裏通り
[if exp="f.event_sub_14[1]==1&&f.event_main_14_days>0"]
[eval exp="f.sub_event_uradoori=1"]
[elsif exp="f.event_epi5_rans_ok==1&&f.irain_move==1&&f.event_main_15_days==7&&f.friend==0"]
[eval exp="f.sub_event_uradoori=1"]
[eval exp="f.event_mark='rans'"]
[eval exp="f.event_chara=1"]
[endif]


;王都入り口
;[eval exp="f.sub_event_iriguti=1"]
[if exp="f.event_war_kra_sumi==1&&f.event_main_16_days>0&&f.friend==0&&f.event_epi7_kra_ok==0"]
[eval exp="f.sub_event_iriguti=1"]
[eval exp="f.event_mark='kra'"]
[eval exp="f.event_chara=1"]
[endif]

;ライオネスの家
[if exp="f.event_epi5_rans_ok==3&&f.friend==0"]
[eval exp="f.sub_event_lioness=1"]
[endif]

;本部

;[if exp="f.event_sub_14[7]==1&&f.friend==0&&f.event_main_14_days==3&&f.glif_sasiire==0&&f.glif_battle_kizuna==1||f.event_sub_14[7]==1&&f.event_main_14_days==6&&f.glif_battle_kizuna==1&&f.friend==0&&f.glif_sasiire==0"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;[if exp="f.event_sub_14[9]==1&&f.friend==0&&f.event_main_14_days>0"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;[if exp="f.event_sub_14[10]==1&&f.friend==0&&f.irain_move==0&&f.lionkonkando>20"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;[if exp="f.event_sub_14[11]==1&&f.friend==0&&f.event_main_14_days<9&&f.irain_move==0&&f.ranskonkando>20"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;[if exp="f.event_sub_14[12]==1&&f.friend==0&&f.event_main_14_days==1&&f.irain_move==0&&f.ranskonkando>20"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;[if exp="f.event_sub_14[13]==1&&f.friend==0&&f.event_main_14_days==1&&f.irain_move==0&&f.ranskonkando>20"]
;[eval exp="f.sub_event_honbu=1"]
;[endif]
;----------------
[endif]

;マップ２
[if exp="f.disc_3==1&&tf.map_2==1"]
;稽古の森
[if exp="f.event_sub_14[5]==1&&f.friend==0||f.event_sub_14[6]==1&&f.friend==3"]
[eval exp="f.sub_event_keiko=1"]
[endif]

;シャローム
[if exp="f.event_sub_14[3]==1&&f.irain_move>1||f.event_sub_14[4]==1&&f.friend==0"]
[eval exp="f.sub_event_sharomu=1"]
[endif]




[endif]

;カーニバル編;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


[if exp="f.disc_2==1"]
;バトルイベント
;[eval exp="f.battle_event_hunsui=0"]
;[eval exp="f.battle_event_sakaba=0"]
;[eval exp="f.battle_event_uradoori=0"]
;[eval exp="f.battle_event_gaia=0"]
;[eval exp="f.battle_event_oukyu=0"]
;[eval exp="f.battle_event_iriguti=0"]
[if exp="f.event_main_8_days<6&&f.battle_flag_sumi_3==1"]
;ランダムにバトルイベントを振り分け、フラグの数にプラス
[eval exp="f.battle_event_8_uradoori=f.battle_event_8_uradoori+1"]
[eval exp="f.battle_event_8_gaia=f.battle_event_8_gaia+1"]
[eval exp="f.battle_event_uradoori=1"]
[eval exp="f.battle_event_gaia=1"]
[eval exp="f.battle_flag_sumi_3=0"]
[endif]
[if exp="f.event_main_8_days<7&&f.battle_flag_sumi_2==1"]
;ランダムにバトルイベントを振り分け、フラグの数にプラス
[eval exp="f.battle_event_8_uradoori=f.battle_event_8_uradoori+1"]
[eval exp="f.battle_event_8_hunsui=f.battle_event_8_hunsui+1"]
[eval exp="f.battle_event_8_oukyu=f.battle_event_8_oukyu+1"]
[eval exp="f.battle_event_uradoori=1"]
[eval exp="f.battle_event_hunsui=1"]
[eval exp="f.battle_event_oukyu=1"]
[eval exp="f.battle_flag_sumi_2=0"]
[endif]
[if exp="f.event_main_8_days<8&&f.battle_flag_sumi==1"]
;ランダムにバトルイベントを振り分け、フラグの数にプラス
[eval exp="f.battle_event_8_sakaba=f.battle_event_8_sakaba+1"]
[eval exp="f.battle_event_8_hunsui=f.battle_event_8_hunsui+1"]
[eval exp="f.battle_event_8_iriguti=f.battle_event_8_iriguti+1"]
[eval exp="f.battle_event_sakaba=1"]
[eval exp="f.battle_event_hunsui=1"]
[eval exp="f.battle_event_iriguti=1"]
[eval exp="f.battle_flag_sumi=0"]

[endif]

[endif]
;アフターバトルの後にフラグマイナス、ゼロでイベントフラグもゼロ


;イベント
[if exp="f.disc_2!=1"]
[jump target=*last]
[endif]
;----------------------------------------------------------
*event
;フラグ初期化
[eval exp="f.main_event_oukyu=0"]
[eval exp="f.main_event_hunsui=0"]
[eval exp="f.main_event_sakaba=0"]
[eval exp="f.main_event_gaia=0"]
[eval exp="f.main_event_iriguti=0"]
[eval exp="f.main_event_honbu=0"]
[eval exp="f.main_event_uradoori=0"]
[eval exp="f.main_event_keiko=0"]
[eval exp="f.main_event_outo=0"]
[eval exp="f.main_event_sharomu=0"]

[eval exp="f.sub_event_oukyu=0"]
[eval exp="f.sub_event_hunsui=0"]
[eval exp="f.sub_event_sakaba=0"]
[eval exp="f.sub_event_gaia=0"]
[eval exp="f.sub_event_iriguti=0"]
[eval exp="f.sub_event_honbu=0"]
[eval exp="f.sub_event_uradoori=0"]
[eval exp="f.sub_event_keiko=0"]
[eval exp="f.sub_event_outo=0"]
[eval exp="f.sub_event_sharomu=0"]
;王宮
[if exp="f.event_8_oukyu==2&&f.event_main_8_days>4"]
[jump target=*oukyu]
*oukyu
[eval exp="f.sub_event_oukyu=1"]


[endif]

;本部
;[if exp="f.event_8_letter==1&&f.friend==0||f.event_8_kra_esa==1&&f.event_8_otukai==0"]
;[jump target=*honbu]
;*honbu
;[eval exp="f.sub_event_honbu=1"]

;[endif]


;酒場
[if exp="f.event_8_oogui==1&&f.friend==0||f.event_8_nusutto==1&&f.event_main_8_days<6&&f.event_main_8_days>1"]
[jump target=*sakaba]
*sakaba
[eval exp="f.sub_event_sakaba=1"]

[elsif exp="f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_rans==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_lion==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_kra==1"]
[jump target=*sakaba2]
*sakaba2
[eval exp="f.sub_event_sakaba=1"]


[endif]

;噴水広場
[if exp="f.event_8_hanakazari==1||f.event_8_hanacha==1&&f.event_main_8_days<5&&f.friend==0||f.event_8_unpan==1||f.event_8_gotisou==1&&f.event_main_8_days<2"]
[jump target=*hunsui]
*hunsui
[eval exp="f.sub_event_hunsui=1"]




[elsif exp="f.event_main_5_1==1"]
[jump target=*main_hunsui]
*main_hunsui
[eval exp="f.main_event_hunsui=1"]
[jump target=*end]

[endif]

;ガイアの森


;裏通り
[if exp="f.event_8_help==1&&f.friend==0&&f.event_main_8_days<3"]
[jump target=*uradoori]
*uradoori
[eval exp="f.sub_event_uradoori=1"]

[elsif exp="f.event_main_5==1"]
[jump target=*main_uradoori]
*main_uradoori
[eval exp="f.main_event_uradoori=1"]

[endif]


;王都入り口
[if exp="f.event_8_sharomu_tegami==1&&f.irain_move>1"]

[jump target=*iriguti]
*iriguti
[eval exp="f.sub_event_iriguti=1"]



[endif]

*last
[jump target=*end]



*end
[endmacro]

;------------------------------------



[macro name="event_word"]


[if exp="f.event_main_5==1&&f.place_creru_uradoori!=1"]
*word
[message_settei_ad]
#&f.name
「今はモンスターをなんとかしなきゃ！！」[p]
#
[map_flag_delete]
[message_kakusu_ad]
[jump  storage="scenario_2/map_macro.ks" target=*return]
[endif]

[if exp="f.event_main_5_1==1&&f.place_creru_hunsui!=1"]
[jump target=*word]
[endif]

;バトルイベント
[if exp="f.battle_event_uradoori>0&&f.place_creru_uradoori==1||f.battle_event_hunsui>0&&f.place_creru_hunsui==1||f.battle_event_sakaba>0&&f.place_creru_sakaba==1||f.battle_event_gaia>0&&f.place_creru_gaia==1||f.battle_event_iriguti>0&&f.place_creru_out==1||f.battle_event_oukyu>0&&f.place_creru_oukyu==1"]
;モンスターデータフラグ
[iscript]
tf.random_mon = Math.floor( Math.random() * 3) + 1
[endscript]

[if exp="tf.random_mon==3"]
[eval exp="f.monster_group_3=2"]
[elsif exp="tf.random_mon==2"]
[eval exp="f.monster_group_3=3"]
[else]
[eval exp="f.monster_group_3=4"]
[endif]

[free name="icon" layer=3]
[free name="event" layer=2]
[message_kakusu_ad][fadeoutbgm time=1000]

[hidemenubutton]
[jump storage="scenario_2/mini_game/battle.ks"]

[endif]

[endmacro]


;キャラ表示判定
[macro name="chara_image_hantei"]
[if exp="f.place_chara[tf.place_num]>0"]
[eval exp="tf.chara_num=f.place_chara[tf.place_num]"]
[iscript]
if(f.event_main_14_days>0||f.event_main_15_days>0||f.event_main_16_days>0){
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

;エルムナード編、イベントフラグ処理、初期のみと最後のみに（エルムナード編シナリオないに記述
[macro name="event_main_14_flag_shori"]

[iscript]

if(f.event_main_14_days<9&&f.event_sub_14_sumi[15]!=1){
f.event_sub_14[15]=0;

}

//if(f.event_main_14_days>0&&f.event_first_14_sumi!=1){

//for(i=0;i<16;i++){
//f.event_sub_14[i]=1;
//}
//f.event_first_14_sumi=1;

//}else if(f.event_main_14_days<1){

//for(i=0;i<16;i++){
//f.event_sub_14[i]=0;
//}

//}

[endscript]
[endmacro]

;マナーレッスン
[macro name="mannar_lesson"]


[bg storage="rans_jikka_rouka_tasogare.jpg"]
[message_settei_ad]

[if exp="f.event_epi5_rans_ok==3"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*lion_werumu_izakoza]
[endif]
*izakoza_owari

#講師
「お待ちしていましたよ。さあ今日も頑張りましょう！」[p]
#
[iscript]
f.point = Math.floor( Math.random() * 5) + 1;
[endscript]

[eval exp="f.point=f.point*f.work efficiency"]
[eval exp="f.irain_charm=f.irain_charm+f.point"]
[anten]

[playse storage="item_status_up_onjin.ogg"]
貴婦人の振る舞いマナーレッスンを受けた！[p]
魅力が[emb exp="f.point"]アップ！[p]

[message_kakusu_ad]
[creru_outo_map]
[endmacro]

;仕立て屋
[macro name="sitateya"]
[message_settei_ad]
[bg storage="sitateya_tasogare.jpg"]
#仕立て屋
「いらっしゃい！どのようなドレスを仕立てましょう？」[p]
#
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どんなドレスにしたらいいかな・・・】

[glink target=*dress1 text="（可愛い系のコーデドレス）" size=17 width=600 x=65 y=200]
[glink target=*dress2 text="（清楚なお嬢様ドレス）" size=17 width=600 x=65 y=260]
[glink target=*dress3 text="（最高級のシルクでできた華麗なドレス）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton]
[else]
[hidemenubutton]
[endif]
[s]
*dress1
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.dress_cute=1"]
[jump target=*dress_end]

*dress2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.dress_pure=1"]
[jump target=*dress_end]

*dress3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.dress_elegant=1"]
[jump target=*dress_end]



*dress_end

[message_kakusu_ad]
[creru_outo_map]

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