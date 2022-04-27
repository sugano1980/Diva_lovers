


[macro name="menu_chara_like"]
[eval exp="f.rans_like_serihu = []"]
[eval exp="f.lion_like_serihu = []"]
[eval exp="f.kra_like_serihu = []"]
[call storage="scenario_2/chara_like_serihu_data.ks"]


[eval exp="tf.like_kra=0"]
[eval exp="tf.like_lion=0"]
[eval exp="tf.like_rans=0"]

[iscript]


if(f.disc_num>2){
//エルムナード編以降
var serihu_len = f.rans_like_serihu_2.length;
}else{
//正騎士試験
var serihu_len = f.rans_like_serihu.length;
}



for(i=0;i<serihu_len;i++){

if(f.menu_num === i&&f.disc_num>2){
//エルムナード編以降

switch(i){


    case 0 :
    tf.like_kra = 1;
    break;
    case 1 :
    tf.like_kra = 1;
    break;
    case 2 :
    tf.like_kra = 1;
    break;
    case 7 :
    tf.like_kra = 1;
    break;  
    case 8 :
    tf.like_kra = 1;
    break;
    case 9 :
    tf.like_lion = 1;
    break;
    case 11 :
    tf.like_kra = 1;
    break;
    case 12 :
    tf.like_rans = 1;
    break;
    case 13 :
    tf.like_kra = 1;
    tf.like_rans = 1;
    break;

    case 15 :
    tf.like_lion = 1;
    break;
    case 16 :
    tf.like_lion = 1;
    break;
    case 17 :
    tf.like_rans = 1;
    break;
    case 19 :
    tf.like_rans = 1;
    break;

    case 20 :
    tf.like_lion = 1;
    break;
    case 21 :
    tf.like_lion = 1;
    break;
    case 23 :
    tf.like_lion = 1;
    break;
    case 24 :
    tf.like_lion = 1;
    break;

    case 25 :
    tf.like_rans = 1;
    break;
    case 26 :
    tf.like_lion = 1;
    break;
    case 28 :
    tf.like_lion = 1;
    break;
 

    case 30 :
    tf.like_rans = 1;
    break;
    case 34 :
    tf.like_rans = 1;
    break;

    case 37 :
    tf.like_rans = 1;
    break;
    case 38 :
    tf.like_lion = 1;
    break;
    case 39 :
    tf.like_lion = 1;
    break;

    case 40 :
    tf.like_rans = 1;
    break;
    case 43 :
    tf.like_rans = 1;
    break;

  
    case 47 :
    tf.like_lion = 1;
    break;
    case 48 :
    tf.like_kra = 1;
    break;


    case 68:
    tf.like_lion = 1; 
    break;
    case 69:
    tf.like_kra = 1;
    break;
    case 70:
    tf.like_lion = 1;
    break;
    case 72:
    tf.like_kra = 1;
    break;   
    case 74:
    tf.like_lion = 1;
    break;
    case 76 :
    tf.like_kra = 1;
    break;

    



}


}else if(f.menu_num === i){
    //せい騎士試験、カーニバル編
switch(i){


    case 0 :
    tf.like_kra = 1;
    break;
    case 1 :
    tf.like_kra = 1;
    break;
    case 2 :
    tf.like_kra = 1;
    break;
    case 4 :
    tf.like_kra = 1;
    break;
    case 5 :
    tf.like_lion = 1;
    break;  
    case 6 :
    tf.like_lion = 1;
    break;[p]
    case 7 :
    tf.like_lion = 1;
    break;
    case 8 :
    tf.like_lion = 1;
    break;
    case 10 :
    tf.like_rans = 1;
    break;
    case 11 :
    tf.like_rans = 1;
    break;
    case 13 :
    tf.like_kra = 1;
    break;
    case 14 :
    tf.like_rans = 1;
    break;
    case 17 :
    tf.like_lion = 1;
    break;
    case 18 :
    tf.like_rans = 1;
    break;
    case 19 :
    tf.like_lion = 1;
    break;
    case 20 :
    tf.like_rans = 1;
    break;
    case 21 :
    tf.like_lion = 1;
    break;
    case 22 :
    tf.like_rans = 1;
    break;
    case 23 :
    tf.like_lion = 1;
    break;
    case 25 :
    tf.like_lion = 1;
    break;
    case 26 :
    tf.like_kra = 1;
    break;
    case 28 :
    tf.like_lion = 1;
    break;
    case 28 :
    tf.like_lion = 1;
    break;
    case 30 :
    tf.like_rans = 1;
    break;
    case 33 :
    tf.like_kra = 1;
    break;
    case 34 :
    tf.like_lion = 1;
    break;
    case 35 :
    tf.like_rans = 1;
    break;
    case 38 :
    tf.like_rans = 1;
    break;
    case 41 :
    tf.like_lion = 1;
    break;
    case 42 :
    tf.like_lion = 1;
    break;
    case 44 :
    tf.like_rans = 1;
    break; 
    case 45 :
    tf.like_rans = 1;
    break;
    case 48 :
    tf.like_kra = 1;
    break;
    case 49 :
    tf.like_lion = 1;
    break;



}


}

}



[endscript]



[eval exp="tf.serihu_sumi=1"]

[if exp="tf.like_rans==1||tf.like_lion==1||tf.like_kra==1"]
[message_settei_ad][live2d_fadein time=1000]

[eval exp="f.serihu_data=[]"]
[if exp="f.disc_num>2&&tf.like_rans==1&&f.friend==1"]

[eval exp="f.serihu_data=f.rans_like_serihu_2"]

[elsif exp="f.disc_num>2&&tf.like_lion==1&&f.friend==2"]

[eval exp="f.serihu_data=f.lion_like_serihu_2"]

[elsif exp="f.disc_num>2&&tf.like_kra==1&&f.friend==3"]

[eval exp="f.serihu_data=f.kra_like_serihu_2"]

[elsif exp="tf.like_rans==1&&f.friend==1"]

[eval exp="f.serihu_data=f.rans_like_serihu"]

[elsif exp="tf.like_lion==1&&f.friend==2"]

[eval exp="f.serihu_data=f.lion_like_serihu"]

[elsif exp="tf.like_kra==1&&tf.no_word!=1&&f.friend==3"]

[eval exp="f.serihu_data=f.kra_like_serihu"]

[endif]

[endif]

[if exp="tf.like_rans==1&&f.friend==1"]
[rans_exp_normal_warai]
#ランスロット
[emb exp="f.serihu_data[f.menu_num]"][p]
#
[rans]
[koukando_up]
[live2d_fadeout time=1000]
[endif]


[if exp="tf.like_lion==1&&f.friend==2"]
[lioness_face_normal_warai]
#ライオネス
[emb exp="f.serihu_data[f.menu_num]"][p]
#
[lion]
[koukando_up]
[live2d_fadeout time=1000]
[endif]


[if exp="tf.like_kra==1&&tf.no_word!=1&&f.friend==3"]
[aho_face_normal]
#クライスト
[emb exp="f.serihu_data[f.menu_num]"][p]
#
[kra]
[koukando_up]
[live2d_fadeout time=1000]
[endif]





;[kioku_oikawa_menu_2]
;[jump target=*end]


[endmacro]


[iscript]

tyrano.plugin.kag.variable.tf.menu_gohan=[
//0
["刺身盛り合わせ",
"カジカジマグロ定食",
"カジカジマグロの漬け丼",
"海鮮丼",
"握り寿司盛り合わせ"
] ,
//1
["平山ウオのフライ定食",
"たっぷりアジフライ定食",
"がめついホッケ定食",
"ビッグエビフライ定食",
"肉厚帆立のバター焼き定食"
] ,
//2
["サバ味噌煮",
"カレイのミゾレ煮",
"及川の焼き魚定食",
"虹色あさりのアクアパッツァ",
"ニシンの醤油煮"
] ,
//3
["ロマナ豚の生姜焼き",
"ロマナ豚のしゃぶしゃぶ",
"特選ロマナ豚カレー",
"ロマナ豚のロールキャベツ",
"ロマナ豚カツ"
] ,
//4
["ベル族チーズクラムチャウダー",
"ベル族チーズ入りハンバーグ",
"ベル族の牛のビーフシチュー",
"ベル族の牛ステーキ",
"ベル族の牛たん"
] ,
//5
["ムーン鶏のチキンカレー",
"ムーン鶏のチキンソテー",
"ムーン鶏のケチャップ焼き",
"ムーン鶏の唐揚げ",
"ムーン鶏の南蛮漬け"
] ,
//6
["グリーンサラダ",
"シーザーサラダ",
"わかめサラダ",
"エビのシュリンプサラダ",
"肉サラダ"
] ,
//7

["ポテトサラダ",
"マッシュポテト",
"芋の煮っ転がし",
"肉じゃが",
"粉吹き芋"
] ,

//8
["キャロルキャロットケーキ",
"野菜の唐揚げ",
"野菜の天ぷら",
"野菜のあんかけ",
"ポトフ"
] ,
//9
["定番イカの煮付け",
"イカ大根",
"イカのトマト煮",
"イカとキノコのアヒージョ",
"えびとイカのカレー"
] ,
//10
["ザッハトルテ",
"フランチェスカパイケーキ",
"スピルナパウンド",
"真っ赤な苺のショートケーキ",
"モンブラン",
"紅茶のシフォンケーキ",
"フルーツタルト"
] ,
//11
["フルーツクリーム",
"クレール饅頭クリーム添え",
"さっくりシュークリーム",
"レインボークリーム",
"チョコクラッシュクリーム",
"クッキークラッシュクリーム",
"チョコバナナクリーム"
] ,
["ほっこりランチ",
"がっつりランチ",
"高級ランチ",
"スイーツランチ",
] ,




];



tyrano.plugin.kag.variable.tf.menu_gohan_2=[
//0
["カジカジマグロのトロ握り",
"マグロスペシャル",
"ヒラヤマウオの刺身定食",
"ヒラヤマウオのたたき",
"華やかちらし寿司"
] ,
//1
["七色サザエ焼き定食",
"濃厚カキフライ定食",
"及川の蒲焼",
"虹色アサリのチーズ焼き",
"日替わりシーフードカレー"
] ,
//2
["七光マスの焼き魚定食",
"ヒラヤマウオのポアレ",
"及川のミゾレ煮定食",
"虹色あさりの炊き込みご飯",
"ニシンのっけうどん"
] ,
//3
["ロマナ豚のポークソテー",
"ロマナ豚のギョウザ",
"ロマナ豚汁",
"ロマナ豚チャーシュー",
"ロマナ豚角煮"
] ,
//4
["ベル族のローストビーフ",
"ベル族の牛ビーフカレー",
"ベル族チーズケーキ",
"ベル族のサイコロステーキ",
"ベル族牛丼"
] ,
//5
["ムーン鶏のトマト煮込み",
"ムーン鶏のフライドチキン",
"ムーン鶏の甘酢あんかけ",
"ムーン鶏のチキンフィレサンド",
"ムーン鶏のやきとり"
] ,
//6
["サラダうどん",
"サラダラーメン",
"トマトサラダ",
"大根サラダ",
"豆腐サラダ"
] ,
//7

["ジャーマンポテト",
"じゃがバター",
"ポテトグラタン",
"ポテトコロッケ",
"かりかりポテトフライ"
] ,

//8
["野菜のミネストローネ",
"野菜いりハンバーグ",
"野菜炒め",
"ジュエリーヌスープ",
"野菜のお好み焼き"
] ,
//9
["いかぽっぽ",
"いかめし",
"げそ揚げ",
"イカ刺し",
"イカのバター醤油いため"
] ,
//10
["ザッハトルテ",
"フランチェスカパイケーキ",
"スピルナパウンド",
"真っ赤な苺のショートケーキ",
"モンブラン",
"紅茶のシフォンケーキ",
"フルーツタルト"
] ,
//11
["フルーツクリーム",
"クレール饅頭クリーム添え",
"さっくりシュークリーム",
"レインボークリーム",
"チョコクラッシュクリーム",
"クッキークラッシュクリーム",
"チョコバナナクリーム"
] ,
["ほっこりランチ",
"がっつりランチ",
"高級ランチ",
"スイーツランチ",
] ,
["日替わりシーフードカレー",
"カジカジマグロのたたき定食",
"クラーケンのちゃんこなべ",
"セルバタコライス",
"カジカジマグロのツナ丼",
],
["たまごふわふわオムレツ",
"こけこっこ親子丼",
"特製だし巻き卵焼き",
"愛のオムライス",
"ニラの卵とじ",
],

];



this.kag.stat.f["lunch"]=[0,0,0]
this.kag.stat.f["lunch_st"]=[0,1,2]

tyrano.plugin.kag.variable.tf.target=[

'scenario_2/store_macro.ks'

];

tyrano.plugin.kag.variable.tf.target_2=[

[
"*menu_kajikaji_1",
"*menu_kajikaji_2",
"*menu_kajikaji_3",
"*menu_kajikaji_4",
"*menu_kajikaji_5"
],

[
"*menu_hirayama_1",
"*menu_hirayama_2",
"*menu_hirayama_3",
"*menu_hirayama_4",
"*menu_hirayama_5"
],

[
"*menu_oikawa_1",
"*menu_oikawa_2",
"*menu_oikawa_3",
"*menu_oikawa_4",
"*menu_oikawa_5"
],

[
"*menu_romana_1",
"*menu_romana_2",
"*menu_romana_3",
"*menu_romana_4",
"*menu_romana_5"
],

[
"*menu_beruzoku_1",
"*menu_beruzoku_2",
"*menu_beruzoku_3",
"*menu_beruzoku_4",
"*menu_beruzoku_5"
],

[
"*menu_moon_1",
"*menu_moon_2",
"*menu_moon_3",
"*menu_moon_4",
"*menu_moon_5"
],

[
"*menu_bejibeji_1",
"*menu_bejibeji_2",
"*menu_bejibeji_3",
"*menu_bejibeji_4",
"*menu_bejibeji_5"
],

[
"*menu_poteto_1",
"*menu_poteto_2",
"*menu_poteto_3",
"*menu_poteto_4",
"*menu_poteto_5"
],

[
"*menu_kyarokyaro_1",
"*menu_kyarokyaro_2",
"*menu_kyarokyaro_3",
"*menu_kyarokyaro_4",
"*menu_kyarokyaro_5"
],
[
"*menu_ika_1",
"*menu_ika_2",
"*menu_ika_3",
"*menu_ika_4",
"*menu_ika_5"
],

[
"*menu_value_1",
"*menu_value_2",
"*menu_value_3",
"*menu_value_4",
"*menu_value_5",
"*menu_value_6",
"*menu_value_7"
],

[
"*menu_cream_1",
"*menu_cream_2",
"*menu_cream_3",
"*menu_cream_4",
"*menu_cream_5",
"*menu_cream_6",
"*menu_cream_7"
],

[
"*menu_lunch_1",
"*menu_lunch_2",
"*menu_lunch_3",
"*menu_lunch_4",
],

[
"*menu_uminari_1",
"*menu_uminari_2",
"*menu_uminari_3",
"*menu_uminari_4",
"*menu_uminari_5"
],
[
"*menu_hukurou_1",
"*menu_hukurou_2",
"*menu_hukurou_3",
"*menu_hukurou_4",
"*menu_hukurou_5"
],





];







f.rans_like_serihu = [

//0

'',
'',
'',
'',
'',

//1
'',
'',
'',
'',
'',


//2
'「魚を味噌で煮込むのは悪くない。私も同じメニューにしよう」',
'「カレイの煮魚、お前も好物だったな」',
'',
'',
'「にしんを醤油で煮込むのか。この料理もうまそうだな。私もそれにしよう」',

//3
'',
'',
'',
'「ロールキャベツか。いいな。私も同じものを頼むとしよう」',
'',

//4
'「クラムチャウダーか。悪くない選択だ。私もそれにしよう」',
'',
'「牛肉の旨味が溶け出したシチューは絶品だ。私も同じものを頼もうと思っていた」',
'',
'',

//5
'',
'',
'',
'',
'',

//6
'「野菜がたくさん入っていて健康的なメニューだな。感心だ」',
'',
'',
'',
'',

//7
'「腹持ちもいいし、栄養バランスも優れている。いい選択だ」',
'',
'',
'「こう言う、食べると落ち着く料理は好きだな」',
'',


//8
'',
'',
'',
'',
'「ポトフか。いいな。私もそれにしよう」',


//9
'「イカの出汁がきいた煮物は絶品だ。酒のつまみにもいい」',
'',
'',
'',
'',

];

f.lion_like_serihu = [

//0

'',
'',
'',
'',
'',

//1
'「魚でも油で揚げればパンチあるよな！」',
'「こう言うボリュームのあるのは好きだぜ。お前もか？」',
'「ホッケが山盛りなんだぜ、この料理」',
'「エビもフライにすると最高だよな！」',
'',


//2
'',
'',
'',
'',
'',

//3
'',
'',
'「カレーだな！やっぱりこれだよな！」',
'',
'「このロマナ豚って揚げ物にすると最高に美味いんだよな！」',

//4
'',
'「チーズ入りってのがまたいいよな！俺もこれ頼むぜ」',
'',
'「この厚切りの肉を焼いたのがまたいいんだよな。俺は2つ頼むぜ」',
'',

//5
'「カレーにすりゃあなんだっていけるよな！俺も食う！」',
'',
'',
'「やっぱ揚げ物はいいよなー。俺は２０個頼むぜ」',
'',

//6
'',
'',
'',
'',
'「サラダは好きじゃねえけど、肉が入ってるならいいな」',

//7
'',
'',
'',
'',
'',


//8
'',
'「野菜は好きじゃねえけど、油で揚げるならいいな」',
'「野菜は好きじゃねえけど、天ぷらにすればいけるぜ！」',
'',
'',


//9
'',
'',
'',
'',
'「イカカレーか。いいじゃねえか！！」',

];





f.kra_like_serihu = [

//0
'「刺身の盛り合わせか、いいね。俺もそれにしよう」',
'「俺、マグロ好きなんだよね、君も好き？」',
'',
'',
'「あ、俺もそれにしようと思ってた。お寿司っておいしいよね」',

//1
'',
'',
'',
'',
'',


//2
'',
'',
'',
'「あさりの料理だね、俺、これ好きだな、君も？」',
'',

//3
'',
'',
'',
'',
'',

//4
'',
'',
'',
'',
'',

//5
'',
'「俺このチキンソテー好きなんだよね」',
'',
'',
'',

//6
'',
'',
'',
'「エビをサラダに入れるのっていいアイデアだよね」',
'',

//7
'',
'',
'',
'',
'',


//8
'',
'',
'',
'',
'',


//9
'',
'',
'',
'「このイカとキノコとの相性がバッチリなんだよね」',
'',

];




[endscript]





[return]