;=========================================
; コンフィグ モード　画面作成
;=========================================
[eval exp="sf.config=1"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
;アドモードだった場合のメッセージ画面消去場合わけ
[live2d_fadeout time=1000]
[if exp="f.ad==1"]
[chara_hide_all]
@layopt layer=message1 visible=false
[else]
@layopt layer=message0 visible=false
[endif]
[if exp="f.kyuujitu==1"]
[freeimage layer=0]
[endif]
@clearfix

[hidemenubutton]

[iscript]
	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume);
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume);
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed);
	tf.current_auto_speed = parseInt(TG.config.autoSpeed);
	
	tf.text_skip =1;
	
	if(TG.config.unReadTextSkip != true){
		tf.text_skip =0;
	} 
	
[endscript]

[layopt layer=1 visible=true]

[cm]
[bg time=300 storage="config_back1.png"]
;[ptext layer=1 page=fore text="設定" x=15 y=5 size=26 color=black visible=true]
[image layer=1 page=fore visible=true storage="config_extra.png" x=400 y=180]
[image layer=1 page=fore visible=true storage="config_title.png" x=25 y=20]
;戻るボタン
[button graphic="button/config_back.png" target="*backtitle" x=675 y=25 ]

@jump target="*config_page"

*config_page

[eval exp="tf.bgm_x=80"]
[eval exp="tf.bgm_y=50"]
[eval exp="tf.se_y=tf.bgm_y+50"]
[eval exp="tf.speed_y=tf.se_y+60"]
[eval exp="tf.font_y=tf.speed_y+60"]
[eval exp="tf.font_size_y=tf.font_y+60"]
[eval exp="tf.read_y=tf.font_size_y+60"]


;BGM音量
[image layer=1 page=fore storage="config_bgm.png" x=&tf.bgm_x y=&tf.bgm_y visible=true]
[image layer=0 page=fore name="bgm_gauge" storage="bgm_back.png" x=340 y=80 visible=true]
;あいびー飾り
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=340 y=110 visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=440 y=110 visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=540 y=110 visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=340 y=160 visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=440 y=160 visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_exte.png" x=540 y=160 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=340 y=220 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=440 y=220 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=540 y=220 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=360 y=330 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=460 y=330 visible=true]

;飾り
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=100 y=460 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=200 y=460 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=300 y=460 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=400 y=460 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=500 y=460 visible=true]
[image layer=2 page=fore name="bgm_gauge" storage="config_exte.png" x=600 y=460 visible=true]


[eval exp="tf.bgm_button_small_x=355"]
[eval exp="tf.bgm_button_small_y=91"]
[eval exp="tf.bgm_button_big_x=tf.bgm_button_small_x+245"]
[eval exp="tf.bgm_button_big_y=tf.bgm_button_small_y-5"]
[eval exp="tf.bgm_gauge_x=tf.bgm_button_small_x+20"]
[eval exp="tf.bgm_gauge_zero_x=tf.bgm_gauge_x-10"]
[eval exp="tf.bgm_gauge_y=tf.bgm_button_small_y"]
;ボタン部分
[button fix="true" target="*vol_bgm_down" graphic=config_sound_small.png x=&tf.bgm_button_small_x y=&tf.bgm_button_small_y]
*bgm_gauge
[macro name="bgm_gauge"]
[if exp="tf.current_bgm_vol == 100"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm100.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 90"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm90.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 80"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm80.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 70"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm70.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 60"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm60.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 50"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm50.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 40"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm40.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 30"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm30.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 20"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm20.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 10"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm10.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[elsif exp="tf.current_bgm_vol == 0"]
[image layer=1 page=fore name="bgm_gauge" storage="bgm0.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]
[image layer=1 page=fore name="bgm_gauge" storage="config_sound_zero.png" x=&tf.bgm_gauge_zero_x y=&tf.bgm_gauge_y visible=true]
[else]
;[image layer=1 page=fore name="bgm_gauge" storage="bgm0.png" x=&tf.bgm_gauge_x y=&tf.bgm_gauge_y visible=true]

[endif]
[endmacro]
[bgm_gauge]
[button fix="true" target="*vol_bgm_up" graphic=config_sound_large.png x=&tf.bgm_button_big_x y=&tf.bgm_button_big_y]

;[ptext layer=1 page=fore text="MAX100" x=275 y=85 size=16 color=black visible=true]
;[ptext layer=1 page=fore text="MIN0" x=475 y=85 size=16 color=black visible=true]


;SE音量
[image layer=1 page=fore storage="config_se.png" x=&tf.bgm_x y=&tf.se_y visible=true]
[image layer=0 page=fore name="se_gauge" storage="bgm_back.png" x=340 y=133 visible=true]

;ボタン部分
[eval exp="tf.se_button_small_x=355"]
[eval exp="tf.se_button_small_y=144"]
[eval exp="tf.se_button_big_x=tf.se_button_small_x+245"]
[eval exp="tf.se_button_big_y=tf.se_button_small_y-5"]
[eval exp="tf.se_gauge_x=tf.se_button_small_x+20"]
[eval exp="tf.se_gauge_zero_x=tf.se_gauge_x-10"]
[eval exp="tf.se_gauge_y=tf.se_button_small_y"]
;ボタン部分
[button fix="true" target="*vol_se_down" graphic=config_sound_small.png x=&tf.se_button_small_x y=&tf.se_button_small_y]
*se_gauge
[macro name="se_gauge"]
[if exp="tf.current_se_vol == 100"]
[image layer=1 page=fore name="se_gauge" storage="bgm100.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 90"]
[image layer=1 page=fore name="se_gauge" storage="bgm90.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 80"]
[image layer=1 page=fore name="se_gauge" storage="bgm80.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 70"]
[image layer=1 page=fore name="se_gauge" storage="bgm70.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 60"]
[image layer=1 page=fore name="se_gauge" storage="bgm60.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 50"]
[image layer=1 page=fore name="se_gauge" storage="bgm50.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 40"]
[image layer=1 page=fore name="se_gauge" storage="bgm40.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 30"]
[image layer=1 page=fore name="se_gauge" storage="bgm30.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 20"]
[image layer=1 page=fore name="se_gauge" storage="bgm20.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 10"]
[image layer=1 page=fore name="se_gauge" storage="bgm10.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[elsif exp="tf.current_se_vol == 0"]
[image layer=1 page=fore name="se_gauge" storage="bgm0.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]
[image layer=1 page=fore name="se_gauge" storage="config_sound_zero.png" x=&tf.se_gauge_zero_x y=&tf.se_gauge_y visible=true]
[else]
;[image layer=1 page=fore name="se_gauge" storage="se0.png" x=&tf.se_gauge_x y=&tf.se_gauge_y visible=true]

[endif]
[endmacro]
[se_gauge]
[button fix="true" target="*vol_se_up" graphic=config_sound_large.png x=&tf.se_button_big_x y=&tf.se_button_big_y]


;[ptext layer=1 page=fore text="MAX100" x=275 y=85 size=16 color=black visible=true]
;[ptext layer=1 page=fore text="MIN0" x=475 y=85 size=16 color=black visible=true]






;[button fix="true" target="*vol_se_up" graphic=config/hidari.png x=355 y=120  ]
;[ptext name="text_se_vol" layer=1 page=fore text="&tf.current_se_vol" x=390 y=120 size=26 color=black visible=true]
;[button fix="true" target="*vol_se_down" graphic=config/migi.png x=435 y=120  ]

;[ptext layer=1 page=fore text="MAX100" x=275 y=130 size=16 color=black visible=true]
;[ptext layer=1 page=fore text="MIN0" x=475 y=130 size=16 color=black visible=true]


;メッセージスピード


[iscript]

if(tf.current_ch_speed==1){
    sf.set_ch_speed=1;
}else if(tf.current_ch_speed==10){
    sf.set_ch_speed=2;
}else if(tf.current_ch_speed==19){
    sf.set_ch_speed=3;
}else if(tf.current_ch_speed==28){
    sf.set_ch_speed=4;
}else if(tf.current_ch_speed==37){
    sf.set_ch_speed=5;
}else if(tf.current_ch_speed==46){
    sf.set_ch_speed=6;
}else if(tf.current_ch_speed==55){
    sf.set_ch_speed=7;
}else if(tf.current_ch_speed==64){
    sf.set_ch_speed=8;
}else if(tf.current_ch_speed==73){
    sf.set_ch_speed=9;
}else{
   tf.current_ch_speed=73;
   sf.set_ch_speed=9;
}

[endscript]

[configdelay speed="&tf.current_ch_speed"]

[iscript]
$(".text_ch_speed").html(sf.set_ch_speed);
[endscript]

[eval exp="tf.config_button_0_x_1=355"]
[eval exp="tf.config_button_0_y_1=196"]
[eval exp="tf.config_button_0_x_2="tf.config_button_0_x_1+60"]
[eval exp="tf.config_button_0_x_3=tf.config_button_0_x_2+60"]
[eval exp="tf.config_button_0_x_4=tf.config_button_0_x_3+60"]
[eval exp="tf.config_button_0_x_5=tf.config_button_0_x_4+60"]

;ボタン表示：表示スピード
[image layer=1 page=fore storage="config_moji.png" x=&tf.bgm_x y=&tf.speed_y visible=true]

*speed_hyouji
;１の時
[if exp="sf.set_ch_speed==1"]
[image layer=2 name="config_speed" page=fore storage="config_speed_1.png" x=&tf.config_button_0_x_1 y=&tf.config_button_0_y_1 visible=true]
[image layer=1 name="config_speed" page=fore storage="config_button_0.png" x=&tf.config_button_0_x_1 y=&tf.config_button_0_y_1 visible=true]
[else]
[button fix="true" name="config_speed" target="*ch_speed_change_up_1" graphic=config_speed_1.png exp="tf.current_ch_speed=1" x=&tf.config_button_0_x_1 y=&tf.config_button_0_y_1]
[image layer=1 name="config_speed" page=fore storage="config_button_1.png" x=&tf.config_button_0_x_1 y=&tf.config_button_0_y_1 visible=true]
[endif]

;２
[if exp="sf.set_ch_speed==2"]
[image layer=2  name="config_speed" name="config_speed" page=fore storage="config_speed_2.png" x=&tf.config_button_0_x_2 y=&tf.config_button_0_y_1 visible=true]
[image layer=1  name="config_speed" page=fore storage="config_button_0.png" x=&tf.config_button_0_x_2 y=&tf.config_button_0_y_1 visible=true]
[else]
[button fix="true"  name="config_speed" target="*ch_speed_change_up_1" graphic=config_speed_2.png exp="tf.current_ch_speed=10" x=&tf.config_button_0_x_2 y=&tf.config_button_0_y_1]
[image layer=1  name="config_speed" page=fore storage="config_button_1.png" x=&tf.config_button_0_x_2 y=&tf.config_button_0_y_1 visible=true]
[endif]

;３
[if exp="sf.set_ch_speed==3"]
[image layer=2 name="config_speed" page=fore storage="config_speed_3.png" x=&tf.config_button_0_x_3 y=&tf.config_button_0_y_1 visible=true]
[image layer=1  name="config_speed" page=fore storage="config_button_0.png" x=&tf.config_button_0_x_3 y=&tf.config_button_0_y_1 visible=true]
[else]
[button fix="true"  name="config_speed" target="*ch_speed_change_up_1" graphic=config_speed_3.png exp="tf.current_ch_speed=19" x=&tf.config_button_0_x_3 y=&tf.config_button_0_y_1]
[image layer=1  name="config_speed" page=fore storage="config_button_1.png" x=&tf.config_button_0_x_3 y=&tf.config_button_0_y_1 visible=true]
[endif]

;４
[if exp="sf.set_ch_speed==4"]
[image layer=2 name="config_speed" page=fore storage="config_speed_4.png" x=&tf.config_button_0_x_4 y=&tf.config_button_0_y_1 visible=true]
[image layer=1  name="config_speed" page=fore storage="config_button_0.png" x=&tf.config_button_0_x_4 y=&tf.config_button_0_y_1 visible=true]
[else]
[button fix="true"  name="config_speed" target="*ch_speed_change_up_1" graphic=config_speed_4.png exp="tf.current_ch_speed=28" x=&tf.config_button_0_x_4 y=&tf.config_button_0_y_1]
[image layer=1  name="config_speed" page=fore storage="config_button_1.png" x=&tf.config_button_0_x_4 y=&tf.config_button_0_y_1 visible=true]
[endif]

;５
[if exp="sf.set_ch_speed==5"]
[image layer=2 name="config_speed" page=fore storage="config_speed_5.png" x=&tf.config_button_0_x_5 y=&tf.config_button_0_y_1 visible=true]
[image layer=1  name="config_speed" page=fore storage="config_button_0.png" x=&tf.config_button_0_x_5 y=&tf.config_button_0_y_1 visible=true]
[else]
[button fix="true"  name="config_speed" target="*ch_speed_change_up_1" graphic=config_speed_5.png exp="tf.current_ch_speed=37" x=&tf.config_button_0_x_5 y=&tf.config_button_0_y_1]
[image layer=1  name="config_speed" page=fore storage="config_button_1.png" x=&tf.config_button_0_x_5 y=&tf.config_button_0_y_1 visible=true]
[endif]


;フォント種類
[eval exp="tf.font_button_6_x=355"]
[eval exp="tf.font_button_6_y=250"]
[eval exp="tf.font_button_6_moji_x=tf.font_button_6_x+25"]
[eval exp="tf.font_button_6_moji_x_makinas=tf.font_button_6_x+60"]
[eval exp="tf.font_button_6_moji_x_mgen=tf.font_button_6_x+42"]
[eval exp="tf.font_button_6_moji_x_hannari=tf.font_button_6_x+40"]
[eval exp="tf.font_button_6_moji_x_defo=tf.font_button_6_x+50"]
[eval exp="tf.font_button_6_moji_y=tf.font_button_6_y+9"]
[eval exp="tf.font_button_6_moji_y_antique=tf.font_button_6_y+12"]

[eval exp="tf.font_button_cursor_x=tf.font_button_6_x+200"]
[eval exp="tf.font_button_cursor_y=tf.font_button_6_y+5"]



[image layer=1 page=fore storage="config_font_face.png" x=&tf.bgm_x y=&tf.font_y visible=true]

[image layer=1 page=fore visible=true storage="config_font_face_button.png" x=&tf.font_button_6_x y=&tf.font_button_6_y]




[if exp="sf.font_f==6"]
[ptext layer=1  name="font_name" page=fore visible=true text="ほのかアンティーク" size=18 color="black" face="antique" x=&tf.font_button_6_moji_x y=&tf.font_button_6_moji_y_antique]
[elsif exp="sf.font_f==5"]
[ptext layer=1  name="font_name" page=fore visible=true text="まめろん" size=18 color="black" face="makinas" x=&tf.font_button_6_moji_x_makinas y=&tf.font_button_6_moji_y]
[elsif exp="sf.font_f==3"]
[ptext layer=1  name="font_name" page=fore visible=true text="むげんプラス" size=18 color="black" face="mgenplus" x=&tf.font_button_6_moji_x_mgen y=&tf.font_button_6_moji_y]
[elsif exp="sf.font_f==2"]
[ptext layer=1  name="font_name" page=fore visible=true text="　デフォルト" size=18 color="black" face="MSゴシック" x=&tf.font_button_6_moji_x_defo y=&tf.font_button_6_moji_y]
[else]
[ptext layer=1 name="font_name" page=fore visible=true text="　はんなり明朝" size=18 color="black" face="hannari" x=&tf.font_button_6_moji_x y=&tf.font_button_6_moji_y]
[endif]

;フォントサイズボタン
[image layer=1 page=fore storage="config_font_size.png" x=&tf.bgm_x y=&tf.font_size_y visible=true]




[eval exp="tf.font_size_x_big=380"]
[eval exp="tf.font_size_y_big=310"]

[eval exp="tf.font_size_x_medium=tf.font_size_x_big+70"]
[eval exp="tf.font_size_y_medium="tf.font_size_y_big"]


[eval exp="tf.font_size_x_small=tf.font_size_x_medium+70"]
[eval exp="tf.font_size_y_small="tf.font_size_y_big"]



[macro name="font_size"]

[clearfix name="font_button"]
[free layer=1 name="font_button"]

[if exp="sf.font==22"]

[image layer=1 name="font_button" page=fore storage="config_font_size_big.png"   x=&tf.font_size_x_big y=&tf.font_size_y_big  visible=true]
[image layer=0 name="font_button" page=fore storage="config_button_0.png" x=&tf.font_size_x_big y=&tf.font_size_y_big  visible=true]

[else]

[image layer=1 name="font_button" page=fore storage="config_button_1.png" x=&tf.font_size_x_big y=&tf.font_size_y_big  visible=true]
[button fix="true" name="font_button" target=*font graphic="config_font_size_big.png " exp="sf.font=22" x=&tf.font_size_x_big y=&tf.font_size_y_big]

[endif]


[if exp="sf.font==19"]

[image layer=1 name="font_button" page=fore storage="config_font_size_medium.png" x=&tf.font_size_x_medium y=&tf.font_size_y_medium  visible=true]
[image layer=0 name="font_button" page=fore storage="config_button_0.png" x=&tf.font_size_x_medium y=&tf.font_size_y_medium  visible=true]

[else]

[image layer=1 name="font_button" page=fore storage="config_button_1.png" x=&tf.font_size_x_medium y=&tf.font_size_y_medium  visible=true]
[button fix="true" name="font_button" target=*font graphic="config_font_size_medium.png" exp="sf.font=19" x=&tf.font_size_x_medium y=&tf.font_size_y_medium]

[endif]


[if exp="sf.font==17"]

[image layer=1 name="font_button" page=fore storage="config_font_size_small.png" x=&tf.font_size_x_small y=&tf.font_size_y_small  visible=true]
[image layer=0 name="font_button" page=fore storage="config_button_0.png" x=&tf.font_size_x_small y=&tf.font_size_y_small  visible=true]

[else]

[image layer=1 name="font_button" page=fore storage="config_button_1.png" x=&tf.font_size_x_small y=&tf.font_size_y_small  visible=true]
[button fix="true" name="font_button" target=*font graphic="config_font_size_small.png " exp="sf.font=17" x=&tf.font_size_x_small y=&tf.font_size_y_small]

[endif]

[endmacro]


[font_size]




;既読スキップ

[eval exp="tf.skip_x=430"]
[eval exp="tf.skip_y=375"]


[image layer=1 page=fore storage="config_skip.png" x=&tf.bgm_x y=&tf.read_y visible=true]


[if exp="sf.text_skip==1"]
[button name="skip_button" fix="true" target="skip_off" exp="sf.text_skip=0" graphic=config_on.png x=&tf.skip_x y=&tf.skip_y] 
[else]
[button name="skip_button" fix="true" target="skip_on" exp="sf.text_skip=1" graphic=config_off.png x=&tf.skip_x y=&tf.skip_y]
[endif]


;文字表示テストボタン
[eval exp="tf.test_x=tf.bgm_x+510"]
[eval exp="tf.test_y=tf.font_size_y+30"]
[button fix="true" target=*test graphic="button/test.png" x=&tf.test_x y=&tf.test_y]


@jump target="*common"

*page_2

@jump target="*common"

*common


[s]

*backtitle

[cm]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
@clearfix
[if exp="f.kyuujitu==1&&f.map!=1&&f.place_creru_oukyu!=1&&f.place_creru_hunsui!=1&&f.place_creru_sakaba!=1&&f.place_creru_gaia!=1&&f.place_creru_uradoori!=1&&f.place_creru_out!=1"]
[eval exp="sf.config=0"]
[jump storage="status_macro.ks" target=*first]
[endif]

;アドモードだった場合消去したメッセージ画面を復活

[if exp="f.ad==1"]
[message_settei_ad]
[live2d_fadein time=1000]
[awakegame]
[else]

;[live2d_fadein time=1000]
[awakegame]
[endif]

*nextpage
[freeimage layer=1]
[cm]
@jump storage="title.ks" target="*title"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg

[return]

*no_image

;@jump  target=*cgpage

*vol_bgm_down
[free layer=1 name="bgm_gauge"]
[iscript]
if(tf.current_bgm_vol != 0){
	tf.current_bgm_vol -= 10;	
	$(".text_bgm_vol").html(tf.current_bgm_vol);
}else{
	tf.current_bgm_vol = 0;	
	$(".text_bgm_vol").html(tf.current_bgm_vol);
}
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]
[bgm_gauge]


[return]

*vol_bgm_up
[free layer=1 name="bgm_gauge"]
[iscript]
if(tf.current_bgm_vol != 100){
	tf.current_bgm_vol += 10;	
	
	$(".text_bgm_vol").html(tf.current_bgm_vol);
}else{
	tf.current_bgm_vol = 100;	
	$(".text_bgm_vol").html(tf.current_bgm_vol);
}
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]
[bgm_gauge]



[return]

*vol_se_down
[free layer=1 name="se_gauge"]
[iscript]
if(tf.current_se_vol != 0){
	tf.current_se_vol -= 10;	
	$(".text_se_vol").html(tf.current_se_vol);
}else{
	tf.current_se_vol = 0;	
	$(".text_se_vol").html(tf.current_se_vol);
}
[endscript]

[seopt volume="&tf.current_se_vol"]
[se_gauge]

[return]

*vol_se_up
[free layer=1 name="se_gauge"]
[iscript]
if(tf.current_se_vol != 100){
	tf.current_se_vol += 10;	
	$(".text_se_vol").html(tf.current_se_vol);
}else{
	tf.current_se_vol = 90;	
	$(".text_se_vol").html(tf.current_se_vol);
}
[endscript]
[seopt volume="&tf.current_se_vol"]
[se_gauge]

[return]


*ch_speed_change_up_1



*ch_speed_hyouji
[iscript]

if(tf.current_ch_speed==1){
    sf.set_ch_speed=1;
}else if(tf.current_ch_speed==10){
    sf.set_ch_speed=2;
}else if(tf.current_ch_speed==19){
    sf.set_ch_speed=3;
}else if(tf.current_ch_speed==28){
    sf.set_ch_speed=4;
}else if(tf.current_ch_speed==37){
    sf.set_ch_speed=5;
}else if(tf.current_ch_speed==46){
    sf.set_ch_speed=6;
}else if(tf.current_ch_speed==55){
    sf.set_ch_speed=7;
}else if(tf.current_ch_speed==64){
    sf.set_ch_speed=8;
}else if(tf.current_ch_speed==73){
    sf.set_ch_speed=9;
}else{
   tf.current_ch_speed=73;
   sf.set_ch_speed=9;
}

[endscript]
[configdelay speed="&tf.current_ch_speed"]

*test

[clearstack]
[if exp="f.ad==1"]
[current layer="message0"]
[endif]
;テキストスピード表示



[position layer="message0" left=230 top=420 width=480 height=100 page=fore opacity=0 visible=true]
@layopt layer=message0 visible=true


*test_kyuujitu
テキスト速度テスト[er]
@layopt layer=message0 visible=false
[free layer=2 name="config_speed" time=2]
[free layer=1 name="config_speed" time=2]
[clearfix name="config_speed"]






[jump target=*speed_hyouji]

[return]







*ikkatu
[clearfix name="ikkatu_button"]
[button name="ikkatu_button" fix="true" target="*ikkatu2" exp="sf.ikkatu=1" graphic=config_off.png width=85 x=360 y=255]
[return]

*ikkatu2
[clearfix name="ikkatu_button"]
[button name="ikkatu_button" fix="true" target="*ikkatu" exp="sf.ikkatu=0" graphic=config_on.png width=85 x=360 y=255]
[return]

*effect
[clearfix name="effect_button"]
[button name="effect_button" fix="true" target="*effect2" exp="sf.effect=1" graphic=config_on.png width=85 x=260 y=295]
[return]

*effect2
[clearfix name="effect_button"]
[button name="effect_button" fix="true" target="*effect" exp="sf.effect=0" graphic=config_off.png width=85 x=260 y=295]
[return]

*skip_off

[config_record_label skip=false]
[clearfix name="skip_button"]
[button name="skip_button" fix="true" target="skip_on" exp="sf.text_skip=1" graphic=config_off.png width=85 x=260 y=335] 
[return]

*skip_on

[config_record_label skip=true]
[clearfix name="skip_button"]
[button name="skip_button" fix="true" target="skip_off" exp="sf.text_skip=0" graphic=config_on.png width=85 x=260 y=335] 
[return]

;文字の大きさ


*font
;フォントサイズ


[if exp="sf.font==22"]
[eval exp="sf.ikkatu=0"]
[deffont size="22"]
[resetfont]
[elsif exp="sf.font==19"]
[eval exp="sf.ikkatu=0"]
[deffont size="19"]
[resetfont]
[else]
[deffont size="17"]
[resetfont]
[endif]
[clearfix name="font_button"]
[free layer=0 name="font_button"]
[free layer=1 name="font_button"]


[font_size]

[return]


*font_f


[clearfix name="font_f_button"]
[free name="font_name" layer=1]
;フォント更新
[if exp="sf.font_f==6"]
[deffont face=antique bold=true][resetfont]
[elsif exp="sf.font_f==5"]
[deffont face="makinas"][resetfont]

[elsif exp="sf.font_f==3"]
[deffont face="mgenplus" bold=true][resetfont]
[elsif exp="sf.font_f==2"]
[deffont face="hannari" bold=true][resetfont]
[elsif exp="sf.font_f==1"]
[deffont face="MS PMincho"][resetfont]
[endif]

[free layer=1 name="font_name"]
[if exp="sf.font_f==6"]
[ptext layer=1  name="font_name" page=fore visible=true text="ほのかアンティーク" size=18 color="black" face="antique" x=&tf.font_button_6_moji_x y=&tf.font_button_6_moji_y_antique]
[elsif exp="sf.font_f==5"]
[ptext layer=1  name="font_name" page=fore visible=true text="まめろん" size=18 color="black" face="makinas" x=&tf.font_button_6_moji_x_makinas y=&tf.font_button_6_moji_y]
[elsif exp="sf.font_f==3"]
[ptext layer=1  name="font_name" page=fore visible=true text="むげんプラス" size=18 color="black" face="mgenplus" x=&tf.font_button_6_moji_x_mgen y=&tf.font_button_6_moji_y]
[elsif exp="sf.font_f==2"]
[ptext layer=1  name="font_name" page=fore visible=true text="はんなり明朝" size=18 color="black" face="hannari" x=&tf.font_button_6_moji_x_hannari y=&tf.font_button_6_moji_y]
[else]
[ptext layer=1  name="font_name" page=fore visible=true text="デフォルト" size=18 color="black" face="MSゴシック" x=&tf.font_button_6_moji_x_defo y=&tf.font_button_6_moji_y]

[endif]


[return]








;残り物

;文字一括表示
[if exp="f.memory!=1"]
;[image layer=1 page=fore storage="button/config_ikkatu.png" x=80 y=255 visible=true]
;[ptext layer=1 text="※ページの終わりにskipを停止。フォント小のみ有効" color="black" size=11 x=80 y=282]
[endif]
[if exp="f.memory==1"||"sf.font==22"||"sf.font==19"]
[image layer=1 page=fore storage=button/off_in_effect.png width=85 x=360 y=255]
[eval exp="sf.ikkatu=0"]
[elsif exp="sf.ikkatu==1"]
[button name="ikkatu_button" fix="true" target="*ikkatu" exp="sf.ikkatu=0" graphic=config_on.png width=85 x=360 y=255]
[else]
[button name="ikkatu_button" fix="true" target="*ikkatu2" exp="sf.ikkatu=1" graphic=config_off.png width=85 x=360 y=255]
[endif]

;魔法エフェクト
;[image layer=1 page=fore storage="button/config_effect.png" x=80 y=295 visible=true]

[if exp="f.in_effect==1&&sf.effect==1"]
[image layer=1 page=fore storage=button/off_in_effect.png width=85 x=360 y=295]
[elsif exp="f.in_effect==1&&sf.effect!=1"]
[image layer=1 page=fore storage=button/on_in_effect.png width=85 x=360 y=295]
[elsif exp="sf.effect==1"]
[button name="effect_button" fix="true" target="*effect" exp="sf.effect=0" graphic=config_off.png width=85 x=360 y=295]
[else]
[button name="effect_button" fix="true" target="*effect2" exp="sf.effect=1" graphic=config_on.png width=85 x=360 y=295]
[endif]


