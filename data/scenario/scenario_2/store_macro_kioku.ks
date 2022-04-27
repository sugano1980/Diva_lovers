
;----------------------------------------

;みせを選んだとき男性キャラに記憶

;カジカジ亭

[macro name="kioku_kajikaji"]
[eval exp="f.rest_num=0"]
[rest_kioku]
[endmacro]

[macro name="kioku_hirayama"]
[eval exp="f.rest_num=1"]
[rest_kioku]
[endmacro]

;及川亭
[macro name="kioku_oikawa"]
[eval exp="f.rest_num=2"]
[rest_kioku]
[endmacro]
;ロマナーデ

[macro name="kioku_romana"]
[eval exp="f.rest_num=3"]
[rest_kioku]
[endmacro]

;ベル族
[macro name="kioku_beruzoku"]
[eval exp="f.rest_num=4"]
[rest_kioku]
[endmacro]

;ムーン
[macro name="kioku_moon"]
[eval exp="f.rest_num=5"]
[rest_kioku]
[endmacro]

;ベジベジ
[macro name="kioku_bejibeji"]
[eval exp="f.rest_num=6"]
[rest_kioku]
[endmacro]


;ポテト
[macro name="kioku_poteto"]
[eval exp="f.rest_num=7"]
[rest_kioku]
[endmacro]


;キャロキャロ

[macro name="kioku_kyarokyaro"]
[eval exp="f.rest_num=8"]
[rest_kioku]
[endmacro]

;イカ
[macro name="kioku_ika"]
[eval exp="f.rest_num=9"]
[rest_kioku]
[endmacro]

;スイーツストック
[macro name="kioku_sweet"]
[eval exp="f.rest_num=10"]
[rest_kioku]
[endmacro]


;クリーム
[macro name="kioku_cream"]
[eval exp="f.rest_num=11"]
[rest_kioku]
[endmacro]


;ランチ
[macro name="kioku_lunch"]
[eval exp="f.rest_num=12"]
[rest_kioku]
[endmacro]

;海鳴り
[macro name="kioku_uminari"]
[eval exp="f.rest_num=13"]
[rest_kioku]
[endmacro]

;ふくろう
[macro name="kioku_hukurou"]
[eval exp="f.rest_num=14"]
[rest_kioku]
[endmacro]



[macro name="lion_r_word"]
;同じ店を２回以上選んだ時のセリフ
[eval exp="tf.hyouji_sumi=1"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「お前前にもこの店選んだよな。好きなのか？」[p]
#
[endmacro]

[macro name="rans_r_word"]
;同じ店を２回以上選んだ時のセリフ
[eval exp="tf.hyouji_sumi=1"]
[rans_tatie_touroku]
[rans_tatie_show]
#ランスロット
「この間もこの店だったな。気に入っているのか？」[p]
#
[endmacro]

[macro name="kra_r_word"]

[if exp="f.event_8_gaishoku!=1"]
[eval exp="tf.hyouji_sumi=1"]
;同じ店を２回以上選んだ時のセリフ
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト
「あれ、こないだと同じお店だね。好きなの？」[p]
#
[endif]
[endmacro]



[macro name="lion_r_word_date"]
;同じ店を２回以上選んだ時のセリフ
[live2d_fadein time=500]
#ライオネス
「お前前にもこの店選んだよな。好きなのか？」[p]
#
[endmacro]

[macro name="rans_r_word_date"]
;同じ店を２回以上選んだ時のセリフ
[live2d_fadein time=500]
#ランスロット
「この間もこの店だったな。気に入っているのか？」[p]
#
[endmacro]

[macro name="kra_r_word_date"]
[live2d_fadein time=500]
;同じ店を２回以上選んだ時のセリフ
#クライスト
「あれ、こないだと同じお店だね。好きなの？」[p]
#
[endmacro]



[macro name="lion_r_menu_word"]
[if exp="tf.serihu_sumi!=1"]
[cm]
[free name="menu_moji" layer=1]
[live2d_fadein time=1000]
[endif]
[message_settei_ad]
[lioness_face_warai]
#ライオネス
「お前前にもこれ頼んだよな。これ好きか？」[p]
#
[if exp="tf.serihu_sumi!=1"]
[live2d_fadeout time=1000]
[endif]
[endmacro]

[macro name="rans_r_menu_word"]

[if exp="tf.serihu_sumi!=1"]
[cm]
[free name="menu_moji" layer=1]
[live2d_fadein time=1000]
[endif]
[message_settei_ad]
[rans_exp_normal_warai]
#ランスロット
「前もこの料理だったな。そんなに美味かったか？」[p]
#
[if exp="tf.serihu_sumi!=1"]
[live2d_fadeout time=1000]
[endif]
[endmacro]

[macro name="kra_r_menu_word"]

[if exp="f.event_8_gaishoku!=1"]

[if exp="tf.serihu_sumi!=1"]
[cm]
[free name="menu_moji" layer=1]
[live2d_fadein time=1000]
[endif]
[message_settei_ad]
[aho_face_normal]
#クライスト
「そういえば、前も同じ料理だったよね。もしかしてお気に入り？」[p]
#

[if exp="tf.serihu_sumi!=1"]
[live2d_fadeout time=1000]
[endif]

[endif]
[endmacro]

;------------------------------------------------------------------------------------------------
;メニュー記憶;カジカジ亭
[macro name="kioku_kajikaji_menu_1"]
[eval exp="f.r_kajikaji_menu_1_kra_like=1"]
[eval exp="f.menu_num = 0"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_kajikaji_menu_2"]
[eval exp="f.r_kajikaji_menu_2_kra_like=1"]
[eval exp="f.menu_num = 1"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_kajikaji_menu_3"]
[eval exp="f.menu_num = 2"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_kajikaji_menu_4"]
[eval exp="f.menu_num = 3"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_kajikaji_menu_5"]
[eval exp="f.r_kajikaji_menu_5_kra_like=1"]
[eval exp="f.menu_num = 4"]
[menu_kioku]
[endmacro]

;平山亭メニュー
[macro name="kioku_hirayama_menu_1"]
[eval exp="f.menu_num = 5"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_hirayama_menu_2"]
[eval exp="f.menu_num = 6"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_hirayama_menu_3"]
[eval exp="f.menu_num = 7"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_hirayama_menu_4"]
[eval exp="f.menu_num = 8"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_hirayama_menu_5"]
[eval exp="f.menu_num = 9"]
[menu_kioku]
[endmacro]

;及川
[macro name="kioku_oikawa_menu_1"]
[eval exp="f.menu_num = 10"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_oikawa_menu_2"]
[eval exp="f.menu_num = 11"]
[menu_kioku]
[endmacro]

;3
[macro name="kioku_oikawa_menu_3"]
[eval exp="f.menu_num = 12"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_oikawa_menu_4"]
[eval exp="f.r_oikawa_menu_4_kra_like=1"]
[eval exp="f.menu_num = 13"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_oikawa_menu_5"]
[eval exp="f.menu_num = 14"]
[menu_kioku]
[endmacro]



;ロマナーデ

[macro name="kioku_romana_menu_1"]
[eval exp="f.menu_num = 15"]
[menu_kioku]
[endmacro]

;2
[macro name="kioku_romana_menu_2"]
[eval exp="f.menu_num = 16"]
[menu_kioku]
[endmacro]

;3
[macro name="kioku_romana_menu_3"]
[eval exp="f.menu_num = 17"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_romana_menu_4"]
[eval exp="f.menu_num = 18"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_romana_menu_5"]
[eval exp="f.menu_num = 19"]
[menu_kioku]
[endmacro]
;ベル族
[macro name="kioku_beruzoku_menu_1"]
[eval exp="f.menu_num = 20"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_beruzoku_menu_2"]
[eval exp="f.menu_num = 21"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_beruzoku_menu_3"]
[eval exp="f.menu_num = 22"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_beruzoku_menu_4"]
[eval exp="f.menu_num = 23"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_beruzoku_menu_5"]
[eval exp="f.menu_num = 24"]
[menu_kioku]
[endmacro]
[macro name="kioku_moon_menu_1"]
[eval exp="f.menu_num = 25"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_moon_menu_2"]
[eval exp="f.r_moon_menu_2_kra_like=1"]
[eval exp="f.menu_num = 26"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_moon_menu_3"]
[eval exp="f.menu_num = 27"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_moon_menu_4"]
[eval exp="f.menu_num = 28"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_moon_menu_5"]
[eval exp="f.menu_num = 29"]
[menu_kioku]
[endmacro]
;ベジベジ
[macro name="kioku_bejibeji_menu_1"]
[eval exp="f.menu_num = 30"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_bejibeji_menu_2"]
[eval exp="f.menu_num = 31"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_bejibeji_menu_3"]
[eval exp="f.menu_num = 32"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_bejibeji_menu_4"]
[eval exp="f.r_bejibeji_menu_4_kra_like=1"]
[eval exp="f.menu_num = 33"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_bejibeji_menu_5"]
[eval exp="f.menu_num = 34"]
[menu_kioku]
[endmacro]

;ポテト
[macro name="kioku_poteto_menu_1"]
[eval exp="f.menu_num = 35"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_poteto_menu_2"]
[eval exp="f.menu_num = 36"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_poteto_menu_3"]
[eval exp="f.menu_num = 37"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_poteto_menu_4"]
[eval exp="f.menu_num = 38"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_poteto_menu_5"]
[eval exp="f.menu_num = 39"]
[menu_kioku]
[endmacro]
;キャロキャロ
[macro name="kioku_kyarokyaro_menu_1"]
[eval exp="f.menu_num = 40"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_kyarokyaro_menu_2"]
[eval exp="f.menu_num = 41"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_kyarokyaro_menu_3"]
[eval exp="f.menu_num = 42"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_kyarokyaro_menu_4"]
[eval exp="f.menu_num = 43"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_kyarokyaro_menu_5"]
[eval exp="f.menu_num = 44"]
[menu_kioku]
[endmacro]

;イカ
[macro name="kioku_ika_menu_1"]
[eval exp="f.menu_num = 45"]
[menu_kioku]
[endmacro]

;2
[macro name="kioku_ika_menu_2"]
[eval exp="f.menu_num = 46"]
[menu_kioku]
[endmacro]

;3
[macro name="kioku_ika_menu_3"][eval exp="f.menu_num = 47"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_ika_menu_4"]
[eval exp="f.menu_num = 48"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_ika_menu_5"]
[eval exp="f.menu_num = 49"]
[menu_kioku]
[endmacro]

;スイーツストック
[macro name="kioku_sweet_menu_1"]
[eval exp="f.menu_num = 50"]
[menu_kioku]
[endmacro]

;2
[macro name="kioku_sweet_menu_2"]
[eval exp="f.menu_num = 51"]
[menu_kioku]
[endmacro]

;3
[macro name="kioku_sweet_menu_3"]
[eval exp="f.menu_num = 52"]
[menu_kioku]
[endmacro]

;4
[macro name="kioku_sweet_menu_4"]
[eval exp="f.menu_num = 53"]
[menu_kioku]
[endmacro]


;5
[macro name="kioku_sweet_menu_5"]
[eval exp="f.menu_num = 54"]
[menu_kioku]
[endmacro]

;6
[macro name="kioku_sweet_menu_6"]
[eval exp="f.menu_num = 55"]
[menu_kioku]
[endmacro]

;7
[macro name="kioku_sweet_menu_7"]
[eval exp="f.menu_num = 56"]
[menu_kioku]
[endmacro]


;クリームマニア
[macro name="kioku_cream_menu_1"]
[eval exp="f.menu_num = 57"]
[menu_kioku]
[endmacro]

;1
[macro name="kioku_cream_menu_2"]
[eval exp="f.menu_num = 58"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_cream_menu_3"]
[eval exp="f.menu_num = 59"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_cream_menu_4"]
[eval exp="f.menu_num = 60"]
[menu_kioku]
[endmacro]
;4
[macro name="kioku_cream_menu_5"]
[eval exp="f.menu_num = 61"]
[menu_kioku]
[endmacro]
;5
[macro name="kioku_cream_menu_6"]
[eval exp="f.menu_num = 62"]
[menu_kioku]
[endmacro]
;6
[macro name="kioku_cream_menu_7"]
[eval exp="f.menu_num = 63"]
[menu_kioku]
[endmacro]

;ランチ
[macro name="kioku_lunch_menu_1"]
[eval exp="f.menu_num = 64"]
[menu_kioku]
[endmacro]

;1
[macro name="kioku_lunch_menu_2"]
[eval exp="f.menu_num = 65"]
[menu_kioku]
[endmacro]
;2
[macro name="kioku_lunch_menu_3"]
[eval exp="f.menu_num = 66"]
[menu_kioku]
[endmacro]
;3
[macro name="kioku_lunch_menu_4"]
[eval exp="f.menu_num = 67"]

[menu_kioku]
[endmacro]


;海鳴り亭
[macro name="kioku_uminari_menu_1"]
[eval exp="f.menu_num = 68"]
[menu_kioku]
[endmacro]
[macro name="kioku_uminari_menu_2"]
[eval exp="f.menu_num = 69"]
[menu_kioku]
[endmacro]
[macro name="kioku_uminari_menu_3"]
[eval exp="f.menu_num = 70"]
[menu_kioku]
[endmacro]
[macro name="kioku_uminari_menu_4"]
[eval exp="f.menu_num = 71"]
[menu_kioku]
[endmacro]
[macro name="kioku_uminari_menu_5"]
[eval exp="f.menu_num = 72"]
[menu_kioku]
[endmacro]
[macro name="kioku_hukurou_menu_1"]
[eval exp="f.menu_num = 73"]
[menu_kioku]
[endmacro]
[macro name="kioku_hukurou_menu_2"]
[eval exp="f.menu_num = 74"]
[menu_kioku]
[endmacro]
[macro name="kioku_hukurou_menu_3"]
[eval exp="f.menu_num = 75"]
[menu_kioku]
[endmacro]
[macro name="kioku_hukurou_menu_4"]
[eval exp="f.menu_num = 76"]
[menu_kioku]
[endmacro]
[macro name="kioku_hukurou_menu_5"]
[eval exp="f.menu_num = 77"]
[menu_kioku]
[endmacro]
;[eval exp="f.menu_last_num=f.menu_num+1"]





;0カジカジ1平山2及川3ろまな4ベル5ムーン6ベジベジ7ポテト8キャロ9イカ

;初期化
[if exp="f.rest_yet!=0"]
[iscript]
this.kag.stat.f["rans_rest"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["lion_rest"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["kra_rest"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["rest_yet"] = 0;
[endscript]

[iscript]
this.kag.stat.f["rans_rest_lo"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["lion_rest_lo"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["kra_rest_lo"]=[0,0,0,0,0,0,0,0,0];
this.kag.stat.f["rest_yet"] = 0;
[endscript]

[endif]

;初期化
[if exp="f.menu_yet!=0"]
[iscript]

var rans_menu =[];
var lion_menu =[];
var kra_menu =[];

var rans_menu_lo =[];
var lion_menu_lo =[];
var kra_menu_lo =[];

for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	rans_menu[i]= 0;
}

for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	lion_menu[i]= 0;
}

for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	kra_menu[i]= 0;
}


for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	rans_menu_lo[i]= 0;
}

for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	lion_menu_lo[i]= 0;
}

for(i=0;i<this.kag.stat.f["menu_last_num"];i++){
	kra_menu_lo[i]= 0;
}
this.kag.stat.f["rans_menu"] = rans_menu;

this.kag.stat.f["lion_menu"] = lion_menu;

this.kag.stat.f["kra_menu"] = kra_menu;

this.kag.stat.f["rans_menu_lo"] = rans_menu_lo;

this.kag.stat.f["lion_menu_lo"] = lion_menu_lo;

this.kag.stat.f["kra_menu_lo"] = kra_menu_lo;

this.kag.stat.f["menu_yet"] = 0;
[endscript]
[endif]



[macro name="rest_kioku"]
[array_check]
[if exp="f.friend>0"]
[iscript]
//短期記憶用
if(this.kag.stat.f["friend"]==1){

var rest = this.kag.stat.f["rans_rest"];

}else if(this.kag.stat.f["friend"]==2){

var rest = this.kag.stat.f["lion_rest"];

}else if(this.kag.stat.f["friend"]==3){

var rest = this.kag.stat.f["kra_rest"];

}
//長期記憶用
if(this.kag.stat.f["friend"]==1){

var rest_lo = this.kag.stat.f["rans_rest_lo"];

}else if(this.kag.stat.f["friend"]==2){

var rest_lo = this.kag.stat.f["lion_rest_lo"];

}else if(this.kag.stat.f["friend"]==3){

var rest_lo = this.kag.stat.f["kra_rest_lo"];

}


var a = this.kag.stat.f["rest_num"];
rest_lo[a]+=1;

var a = this.kag.stat.f["rest_num"];
rest[a]+=1;

//長期記憶は蓄積
if(this.kag.stat.f["friend"]==1){

this.kag.stat.f["rans_rest_lo"] = rest_lo;

}else if(this.kag.stat.f["friend"]==2){

 this.kag.stat.f["lion_rest_lo"]= rest_lo;

}else if(this.kag.stat.f["friend"]==3){

this.kag.stat.f["kra_rest_lo"]= rest_lo;

}



//短期記憶は反復の記憶を残して他を消去
for(i=0;i<this.kag.stat.f["rest_last_num"];i++){
if(i!=a){
	rest[i]=0;
}
}

if(this.kag.stat.f["friend"]==1){

this.kag.stat.f["rans_rest"] = rest;

}else if(this.kag.stat.f["friend"]==2){

 this.kag.stat.f["lion_rest"] = rest;

}else if(this.kag.stat.f["friend"]==3){

this.kag.stat.f["kra_rest"] = rest;


}

this.kag.stat.f["rest_suuti"] = rest[a];
[endscript]
;数値が１より大きければセリフ
[if exp="f.rest_suuti>1"]

[if exp="f.friend==1&&f.date_now==1"]
[rans_r_word_date]
[elsif exp="f.friend==1"]
[rans_r_word]
[elsif exp="f.friend==2&&f.date_now==1"]
[lion_r_word_date]
[elsif exp="f.friend==2"]
[lion_r_word]
[elsif exp="f.friend==3&&f.date_now==1"]
[kra_r_word_date]
[elsif exp="f.friend==3"]
[kra_r_word]
[endif]

[endif]
;---
[endif]

[endmacro]




[macro name="array_check"]

[iscript]

///////////対応する番号に値があるか確認、なければプッシュ///////////////

if(tf.rest_c === 1){
///////////////////////////
//短期記憶用
if(this.kag.stat.f["friend"]==1){

var menu = this.kag.stat.f["rans_rest"];

}else if(this.kag.stat.f["friend"]==2){

var menu = this.kag.stat.f["lion_rest"];

}else if(this.kag.stat.f["friend"]==3){

var menu = this.kag.stat.f["kra_rest"];

}
//長期記憶用
if(this.kag.stat.f["friend"]==1){

var menu_lo = this.kag.stat.f["rans_rest_lo"];

}else if(this.kag.stat.f["friend"]==2){

var menu_lo = this.kag.stat.f["lion_rest_lo"];

}else if(this.kag.stat.f["friend"]==3){

var menu_lo = this.kag.stat.f["kra_rest_lo"];

}



var aho_2 = f.rest_num + 1;
///////////////////////
}else{
///////////////////////

//短期記憶用
if(this.kag.stat.f["friend"]==1){

var menu = this.kag.stat.f["rans_menu"];

}else if(this.kag.stat.f["friend"]==2){

var menu = this.kag.stat.f["lion_menu"];

}else if(this.kag.stat.f["friend"]==3){

var menu = this.kag.stat.f["kra_menu"];

}
//長期記憶用
if(this.kag.stat.f["friend"]==1){

var menu_lo = this.kag.stat.f["rans_menu_lo"];

}else if(this.kag.stat.f["friend"]==2){

var menu_lo = this.kag.stat.f["lion_menu_lo"];

}else if(this.kag.stat.f["friend"]==3){

var menu_lo = this.kag.stat.f["kra_menu_lo"];

}



	//通常メニューの場合
//配列の長さを確認
var aho_2 = f.menu_num + 1;

}
///////////////


for(i=0;i<2;i++){

/////////////////////
if(i===0){
//ナンバーに対応する配列の値があるかどうか確認;一回目
var aho = menu.length;
var m_array = menu;
}else if(i===1){
var aho = menu_lo.length;
var m_array = menu_lo;
}

////////////////////

if(aho<aho_2){
//元の配列の数がメニューナンバーより小さい場合、値が入っていないのでいれる:
var baka = aho_2-aho;
if(baka>0){
	for(i=0;i<baka;i++){
		m_array.push(0)
		}
	}
}
	
}	
////////////////////////////////////////////////////////////


[endscript]

[endmacro]



[macro name="menu_kioku"]
[if exp="f.store_event==1"]
[jump target=*menu_kioku_end]
[endif]
[array_check]

[if exp="f.friend>0"]
[iscript]
//配列の値を処理用変数に
//短期記憶用
if(this.kag.stat.f["friend"]==1){

var menu = this.kag.stat.f["rans_menu"];

}else if(this.kag.stat.f["friend"]==2){

var menu = this.kag.stat.f["lion_menu"];

}else if(this.kag.stat.f["friend"]==3){

var menu = this.kag.stat.f["kra_menu"];

}
//長期記憶用
if(this.kag.stat.f["friend"]==1){

var menu_lo = this.kag.stat.f["rans_menu_lo"];

}else if(this.kag.stat.f["friend"]==2){

var menu_lo = this.kag.stat.f["lion_menu_lo"];

}else if(this.kag.stat.f["friend"]==3){

var menu_lo = this.kag.stat.f["kra_menu_lo"];

}

var a = this.kag.stat.f["menu_num"];





//ナンバーに対応する配列の値に数字をプラス
if(menu[a]===null||menu[a]===undefined){
menu[a]=1;	
}else{
menu[a]+=1;	
}

if(menu[a]===null||menu[a]===undefined){
menu_lo[a]+=1;
}else{
menu_lo[a]=1;		
}
//長期記憶は蓄積

//配列の値をティラノに戻す
if(this.kag.stat.f["friend"]==1){

this.kag.stat.f["rans_menu_lo"] = menu_lo;

}else if(this.kag.stat.f["friend"]==2){

this.kag.stat.f["lion_menu_lo"] = menu_lo;

}else if(this.kag.stat.f["friend"]==3){

this.kag.stat.f["kra_menu_lo"] = menu_lo;

}



//短期記憶は反復のみで消去
for(i=0;i<menu.length;i++){
if(i!=a){
	menu[i]=0;

}
}

//配列の値をティラノに戻す
if(this.kag.stat.f["friend"]==1){

this.kag.stat.f["rans_menu"] = menu;

}else if(this.kag.stat.f["friend"]==2){

this.kag.stat.f["lion_menu"] = menu;

}else if(this.kag.stat.f["friend"]==3){

this.kag.stat.f["kra_menu"] = menu;

}

this.kag.stat.f["menu_suuti"] = menu[a];

[endscript]

[endif]

;取得した数値が１より大きければセリフ
[if exp="f.menu_suuti>1"]

[if exp="f.friend==1"]
[rans_r_menu_word]
[elsif exp="f.friend==2"]
[lion_r_menu_word]
[elsif exp="f.friend==3"]
[kra_r_menu_word]
[endif]

[endif]
*menu_kioku_end


[endmacro]




;クラ、イベント用記憶





;食事時、記憶したメニュー値と現在のメニュー値を比較、記憶したメニュー値より大きくて１より大きければセリフ

[macro name="kra_menu_serihu"]

[if exp="f.menu_suuti>1"]
[live2d_fadein time=1000]
[message_settei_ad]
#クライスト
「そういえば、前も同じ料理だったよね。もしかしてお気に入り？」[p]
#
[endif]

[endmacro]






[return]





