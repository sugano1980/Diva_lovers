
[macro name="button_hyouji_store"]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_1 name="store_moji" x=&tf.store_item_x y=&tf.store_item_y_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_2  name="store_moji_2" x=&tf.store_item_x y=&tf.store_item_y_2_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_3 name="store_moji_3" x=&tf.store_item_x y=&tf.store_item_y_3_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_4  name="store_moji_4" x=&tf.store_item_x y=&tf.store_item_y_4_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_5 name="store_moji_5" x=&tf.store_item_x y=&tf.store_item_y_5_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_6 name="store_moji_6" x=&tf.store_item_x y=&tf.store_item_y_6_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_7 name="store_moji_7" x=&tf.store_item_x y=&tf.store_item_y_7_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_8 name="store_moji_8" x=&tf.store_item_x y=&tf.store_item_y_8_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_9 name="store_moji_9" x=&tf.store_item_x y=&tf.store_item_y_9_button]
[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=*store_item_10 name="store_moji_10" x=&tf.store_item_x y=&tf.store_item_y_10_button]

[endmacro]





[macro name="value_nyuryoku"]
[eval exp="tf.value=[]"]
[iscript]

tf.item_value= tf.item_list.map(function(x) {return x.value})

for(i=1;i<tf.item_len;i++){
	tf.value.push(tf.item_value[i])
}
[endscript]
[endmacro]



[macro name="hangaku_shori"]

[iscript]

if(this.kag.stat.f["store_curnival_sale"]==1){

var hangaku_value = tyrano.plugin.kag.variable.tf.store_item_value.map(function(value,index,array){
   return Math.round(value/2);
   
  tyrano.plugin.kag.variable.tf.store_item_value = hangaku_value;
   
    
});
	//for(i=0;i<35;i++){
		//tyrano.plugin.kag.variable.tf.value[i]/ = 2;
		//tyrano.plugin.kag.variable.tf.value[i] = Math.round(tyrano.plugin.kag.variable.tf.value[i]);
			//}
}




[endscript]




[endmacro]




[macro name="stock_nyuryoku"]
[iscript]

tyrano.plugin.kag.variable.tf.store_item_stock= [];

for(i=1;i<tf.item_len;i++){
	tf.store_item_stock.push(tf.item_stock[i])

}

[endscript]

[endmacro]

[macro name="stock_modosu_other"]
[iscript]


for(a=0;a<f.other_item_list.length;a++){
    var i=a+1;
	if(f.other_item_stock[a]==='undefined'){
	f.other_item_stock[a].push(0)
	}

this.kag.stat.f["other_item_stock"][i] = tyrano.plugin.kag.variable.tf.other_item_stock[a];

}
[endscript]

[endmacro]

[macro name="stock_modosu_cook"]
[iscript]

for(a=0;a<f.cook_item_list.length;a++){
    var i=a+1;
this.kag.stat.f["cook_item_stock"][i] = tyrano.plugin.kag.variable.tf.cook_item_stock[a];

}

[endscript]

[endmacro]

[macro name="stock_modosu_equip"]
[iscript]
for(a=0;a<f.equip_item_list.length;a++){
    var i =a+1;

   
this.kag.stat.f["equip_item_stock"][i] = tyrano.plugin.kag.variable.tf.equip_item_stock[a];

}
[endscript]

[endmacro]

[macro name="store_item_number_nyuryoku"]
[iscript]
//number
//tyrano.plugin.kag.variable.tf.store_item_number =[
//tyrano.plugin.kag.variable.tf.store_item_number_1,
//tyrano.plugin.kag.variable.tf.store_item_number_2,
//tyrano.plugin.kag.variable.tf.store_item_number_3,
//tyrano.plugin.kag.variable.tf.store_item_number_4,
//tyrano.plugin.kag.variable.tf.store_item_number_5,
//tyrano.plugin.kag.variable.tf.store_item_number_6,
//tyrano.plugin.kag.variable.tf.store_item_number_7,
//tyrano.plugin.kag.variable.tf.store_item_number[7],
//tyrano.plugin.kag.variable.tf.store_item_number[8],
//tyrano.plugin.kag.variable.tf.store_item_num[9]

//];
[endscript]
[endmacro]



[macro name="store_kousin"]

[iscript]

//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji = [
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[0],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[1],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[2],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[3],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[4],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[5],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[6],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[7],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[8],
//tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[9] 
//];

var a=0;
var b=1;


if(f.item_other===1){

var item_list = f.other_item_list.length;

}else if(f.item_cook===1){

var item_list = f.cook_item_list.length;

}else{

var item_list = f.equip_item_list.length;

}



 for(i=0;i<f.store_item_number;i++){
 	
 	for(b=1;b<item_list;b++){
           
	 if(tyrano.plugin.kag.variable.tf.store_item_num[i]==b){	 
	   b-=1;	
	   
	   if(this.kag.stat.f["item_other"]==1){
      tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[i] =tyrano.plugin.kag.variable.tf.other_item_stock[b];
      }else if(this.kag.stat.f["item_cook"]==1){
      	      tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[i] =tyrano.plugin.kag.variable.tf.cook_item_stock[b];
      }else{
			 tyrano.plugin.kag.variable.tf.store_item_stock_hyouji[i] =tyrano.plugin.kag.variable.tf.equip_item_stock[b];
      }
      
       b+=1;	
      	}    
   				 
   	}
  		 }      
    
         




[endscript]

[free name="money" layer=2]
[ptext layer=2 page=fore visible=true  text="&f.money" face=antique name="money" size=20 x=&tf.money_x y=&tf.money_y_g]
;お金
[image layer=1 page=fore visible=true  storage="okane.png" name="money" x=&tf.money_window_x y=&tf.money_window_y]
;お金数値
[ptext layer=2 page=fore visible=true  text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]

[free name="store_stock" layer=2]



[endmacro]



[macro name="store_event_start"]
[if exp="f.store_first==1"]
[eval exp="f.money=f.money+300"]
[cera_tatie_show]
[cera_tatie_smile]
#セレ	
「ここの店は品揃えがいいな。服だけではなく、髪飾りも売っているようだ」[p]
#
#&f.name	
「髪飾りかあ・・・」[p]


#セレ	
「購入すると、新しい髪型ができるようになるぞ」[p]
#セレ	
「装備したものによって、外見だけでなくお前の能力値も変動する」[p]
#
#&f.name	
「そうかあ・・・新しい髪飾りや服、買ってみようかな？」[p]
#
[chara_kakusu]



[elsif exp="f.soubi==1"]
;---------

[if exp="f.friend==1&&f.muryou_yet!=1"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
#ランスロット	

「・・・何にするか決まったか？私が払うから、気に入ったものを言えばいい」[p]
#

#&f.name	

「え！？い、いいの！？」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「当然だろう」[p]
#

#&f.name	

「で、でも私お給料だって貰えるようになったのに・・・」[p]
#

[rans_tatie_rei_mehuse_warai]
#ランスロット	

「・・・もう少しだけ、頼りにしてもらいたいのだが・・・」[p]
#

#&f.name	

「えっ・・・」[p]
#

#&f.name	
（頼りにしてもらいたいって・・・）[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「・・・ダメか」[p]
#

#&f.name	

「・・・いいの？あ、甘えちゃっても・・・」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「それは、こちらのセリフだ」[p]
#

#&f.name	
（・・・ランスロット・・・）[p]
#

	
;#ランスロット同伴のときのみ、無料で買い物ができます
	
[eval exp="f.muryou=1"]
[eval exp="f.muryou_yet=1"]
[chara_kakusu]

[endif]


;---------

[if exp="f.friend==3&&f.muryou_yet_kra!=1"]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト
「あ、ここは俺が払うからさ、好きなの好きなだけ選んでいいよ」[p]
#

#&f.name	
「え！？い、いいの！？」[p]
#

[kra_tatie_bisyou_youen]
#クライスト
「うん」[p]
#

#&f.name	
「で、でも私自分の分くらいは・・・」[p]
#
[kra_tatie_smile]
#クライスト

「いいって。おごらせてよ。せっかくだし」[p]
#
#&f.name	
「でも・・・」[p]
#

#クライスト
「遠慮しなくていいよ。俺はお金には困ってないからさ」[p]
#
[kra_tatie_bisyou_youen]
#クライスト

「さ、どれにする？[kra_tatie_smile]あ、これなんかいいんじゃないかな。よく似合いそう」[p]
#

#&f.name	
「は、はあ・・・」[p]
#
[chara_kakusu]
;#クライスト同伴のときのみ、無料で買い物ができます
	
[eval exp="f.muryou=1"]
[eval exp="f.muryou_yet_kra=1"]
[endif]
;------------------------------

[elsif exp="f.yatai==1&&f.friend==2&&f.muryou_yet_lion!=1"]

[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス 
「お、うまそうじゃねえか。お前も食うだろ？」[p]

[lioness_tatie_udekumi]
#ライオネス 
「ついでに買ってやる」[p]

#&f.name
「えっ、い、いいの？」[p]

[lioness_tatie_warai]
#ライオネス 
「二人で食った方がうまいだろ。好きなもん好きなだけ選べ」[p]

#&f.name
「あ、ありがとう！」[p]
[chara_kakusu]
[eval exp="f.muryou_yatai=1"]
[eval exp="f.muryou_yet_lion=1"]


[elsif exp="f.soubi==1"]
;装備のお店
;-------------------------------

;-----------------------------
[else]
;---------
[endif]

[endmacro]





[macro name="store_event_end"]

[if exp="f.store_first==1"]
[cm]

[cera_tatie_show]


[cera_tatie_smile]
#セレ	
「誰かと一緒に出掛けるときには、装備品を変えてみるのもいい。身に付けるものによって、魅力も変わるし・・・」[p]
#

#セレ	
「相手が何か言ってくれるかもしれないぞ。私などはこの間・・・」[p]
#

#&f.name	
「え？」[p]
#

[cera_tatie_tere]

#セレ	
「い、いや、なんでもないんだ・・・」[p]
#
#&f.name	
（セレさん？？？）[p]
#

[cera_tatie_mihiraki]

#セレ	
「と、とにかくい、行くか！！」[p]
#
#&f.name	
「う・・・うん」[p]
#


[elsif exp="f.yatai==1"]

[iscript]
var yatai_item =[
	this.kag.stat.f["other_item_stock"][17],
	this.kag.stat.f["other_item_stock"][18],
	this.kag.stat.f["other_item_stock"][20],
	this.kag.stat.f["other_item_stock"][21],
	this.kag.stat.f["other_item_stock"][22],
	this.kag.stat.f["other_item_stock"][24],
	this.kag.stat.f["other_item_stock"][25],
	this.kag.stat.f["other_item_stock"][26],
	this.kag.stat.f["other_item_stock"][27],
	this.kag.stat.f["other_item_stock"][28]
];

for(i=0;i<13;i++){
	if(yatai_item[i]>0){
		 tyrano.plugin.kag.variable.tf.yatai_serihu = 1;
	}

}
[endscript]

[if exp="tf.yatai_serihu==1"]

;------
[if exp="f.friend==1"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
#&f.name
（んー、屋台の食べ物ってなんでこう美味しんだろ・・・）[p]
#
[rans_tatie_rei_mehuse_warai]
#ランスロット
「お前のその姿は・・・ずっと見ていても飽きないな」[p]
#
#&f.name
「えーとそれ・・・どういう意味？？」[p]
#
[rans_tatie_rei_yokome]
#ランスロット
「さあな」[p]
#
#&f.name
「もう！！」[p]
#
[rans_tatie_rei_normal_warai]
#ランスロット
「はははっ」[p]
#
[chara_kakusu]

[elsif exp="f.friend==2&&f.yatai_serihu_lion!=1"]

[lioness_tatie_touroku]
[lioness_tatie_show]

[lioness_tatie_warai]
#ライオネス 
「お、そっちもうまそうだな」[p]
#
#&f.name
「もう、ライオネス食べ過ぎだよ・・・」[p]
#
[lioness_tatie_normal]
#ライオネス 
「まだ足りねーって。お前のも寄越せ」[p]
#
[chara_hide name="lion"]
[playse  storage="hukukosure1_onjin.ogg"]
#&f.name
「だ、ダメだってば！！もう、ちょ、こら！！」[p]
#
[chara_show name="lion" storage=&f.lion_akireru height="698" width="456" top=-35 left=0]
#ライオネス 
「なーんだ、つまんねえ」[p]
#
#&f.name
（・・・なんだか犬とかしつけてるみたい・・・）[p]
#
[chara_kakusu]

[eval exp="f.yatai_serihu_lion=1"]
[elsif exp="f.friend==3"]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show_sekkin_2]
[aho_face_bisyou_youen]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト
「あ、美味しそうだな、それ俺にも頂戴」[p]
#


#&f.name
「え？どうやって・・・[chara_hide name="kra"]
[playse  storage="hukukosure1_onjin.ogg"]
キャ！！」[p]
#

[live2d_fadein time=300]
#クライスト
「うん、美味しい」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_smile_ase]
#&f.name
（び、びっくりした・・・）[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]

[eval exp="f.yatai_serihu=0"]
[endif]


[elsif exp="f.soubi==1"]

;----------
[if exp="f.friend==2&&f.lion_soubi_serihu_yet!=1"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス 	
「なあ・・・服なんかなんで選ぶんだよ。着られりゃいいんじゃねえの？」[p]
#

#&f.name	
「ええーっと・・・」[p]
#
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【着られりゃいいって・・・】

[glink target=*wear_1 text="（そんなことないよ！）" size=17 width=600 x=65 y=200]
[glink target=*wear_2 text="（確かにそうかも・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*wear_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[lioness_tatie_kosinite]
#ライオネス 	
「・・・ふーん・・・」[p]
#

#&f.name	
（あんまりファッションとか気にしないんだね・・・）[p]
#
[jump target=*wear_end]

*wear_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[lioness_tatie_yareyare]
#ライオネス 	
「そうだろ？じゃあ適当に買って早く行こうぜ、腹減った」[p]
#

#&f.name	
（結局お腹が空いてるってことなんだね・・・）[p]
#


*wear_end
[eval exp="f.lion_soubi_serihu_yet=1"]


[endif]
[chara_kakusu]



;---------

[endif]

;-----




[endif]

[jump storage="scenario_2/store_macro.ks" target=*store_event_end]
;------



[endmacro]


[macro name="friend_present"]
[if exp="f.curnival_yatai==1&&f.friend>0&&f.friend!=2"]
[message_settei_ad]

[if exp="f.friend==1"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]

[elsif exp="f.friend==3"]
[kra_tatie_touroku]
[kra_tatie_show]
[endif]

#&f.name
（うーん、二人でいるのに、一人で食べるのも・・・）[p]

[if exp="f.friend==1"]
ランスロット

[elsif exp="f.friend==3"]
クライストさん
[endif]
にも何か買おうかな？[p]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【仲間にも何か買う？】

[glink target=*buy_1 text="（買う）" size=17 width=600 x=65 y=200]
[glink target=*buy_2 text="（買わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*buy_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[chara_kakusu]

何を買おう？[p]
[eval exp="f.friend_present=1"]
[jump storage="scenario_2/store_macro.ks" target=*store_first]

*buy_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[chara_kakusu]
[jump storage="scenario_2/store_macro.ks" target=*store_first]
[else]
[endif]


[endmacro]

[macro name="friend_present_hannou"]

[if exp="f.friend==1"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[message_settei_ad]

[if exp="tf.kirai!=1"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_normal_warai]
#ランスロット
「ありがとう、[name]。お前からのものだと思うと、より美味に感じられるな」[p]
#
[rans][koukando_up]

[else]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_kunou]
#ランスロット
「・・・これは・・・そうだな・・・。ありがとう」[p]
#
#&f.name
（あれ？）[p]
#
[eval exp="tf.kirai=0"]
[endif]

[elsif exp="f.friend==2"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[message_settei_ad]

[if exp="tf.kirai!=1"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス 
「まじでくれるのか？ありがとな！うめえ！！」[p]
#
[lion][koukando_up]
[else]
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_otikomi]
#ライオネス 
「・・・」[p]
#
#&f.name
（あれ？）[p]
#
[eval exp="tf.kirai=0"]
[endif]

[elsif exp="f.friend==3"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[message_settei_ad]
[if exp="tf.kirai!=1"]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_bisyou_youen]
#クライスト
「俺にくれるの？嬉しいな。ありがとう」[p]
#
[kra][koukando_up]
[else]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_metoji]
#クライスト
「うん・・・まあ・・・ありがとう・・・」[p]
#
#&f.name
（あれ？）[p]
#
[eval exp="tf.kirai=0"]
[endif]

[endif]
[chara_kakusu]
[eval exp="f.friend_present=0"]
[p]
#&f.name
「さて、私は何を買おうかな」[p]
#
[message_kakusu_ad]
[image layer=1 page=fore visible=true  storage="store_window.png" name="store" x=&tf.store_window_x y=&tf.store_window_y]
[endmacro]

[macro name="store_message_first"]
[if exp="f.gales_hanbai==1"]
#？
「本当に買うのか・・・」[p]
#
[eval exp="f.store_first=0"]
[else]
「いらっしゃい、お嬢ちゃん！」[p]
[endif]

[endmacro]

[macro name="store_message_last"]
[if exp="f.gales_hanbai==1"]
#？
「・・・」[p]
#
[else]
また来てくれよな！[p]
[endif]

[endmacro]


[macro name="para_calc_1"]
[if exp="tf.store_item_type_hyouji[tf.store_id]=='hair'"]
[skill_calc_store_1_current_1]
[elsif exp="tf.store_item_type_hyouji[tf.store_id]=='equip'"]
[skill_calc_store_1_current_1]
[else]
[skill_calc_store_1_current_1]
[endif]

[endmacro]


;お店アイテムフラグを初期化



[macro name="item_icon"]

[eval exp="tf.icon_kaisuu=f.store_item_number"]
[eval exp="tf.i=0"]

*icon_modoru
[iscript]

 if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='hair'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='pure'){
 	
 	tyrano.plugin.kag.variable.tf.hair_pure=1;
 		
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='hair'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='cute'){
 	
 	tyrano.plugin.kag.variable.tf.hair_cute=1;
 	
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='hair'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='elegant'){
 	
 	tyrano.plugin.kag.variable.tf.hair_elegant=1;
 		
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='hair'){
 	
 	tyrano.plugin.kag.variable.tf.hair_simple=1;
 	
 }
 
 if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='equip'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='pure'){
 	
 	tyrano.plugin.kag.variable.tf.equip_pure=1;
 		
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='equip'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='cute'){
 	
 	tyrano.plugin.kag.variable.tf.equip_cute=1;
 		
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='equip'&&tyrano.plugin.kag.variable.tf.type_zokusei[tyrano.plugin.kag.variable.tf.i]=='elegant'){
 	
 	tyrano.plugin.kag.variable.tf.equip_elegant=1;
 		
 }else if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='equip'){
 	
 	tyrano.plugin.kag.variable.tf.equip_simple=1;
 	
 	
 }
 
  if(tyrano.plugin.kag.variable.tf.type_array[tyrano.plugin.kag.variable.tf.i]=='other'){	
 	tyrano.plugin.kag.variable.tf.other_simple=1;
}

  if(f.item_cook===1){	
 	tyrano.plugin.kag.variable.tf.cook_simple=1;
}

 
tyrano.plugin.kag.variable.tf.i+=1;


[endscript]

[if exp="tf.hair_cute==1"]
[image layer=2 page=fore visible=true  storage="icon/hair_icon_cute.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.hair_pure==1"]
[image layer=2 page=fore visible=true  storage="icon/hair_icon_pure.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.hair_elegant==1"]
[image layer=2 page=fore visible=true  storage="icon/hair_icon_elegant.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.hair_simple==1"]
[image layer=2 page=fore visible=true  storage="icon/hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[endif]

[if exp="tf.equip_cute==1"]
[image layer=2 page=fore visible=true  storage="icon/equip_icon_cute.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.equip_pure==1"]
[image layer=2 page=fore visible=true  storage="icon/equip_icon_pure.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.equip_elegant==1"]
[image layer=2 page=fore visible=true  storage="icon/equip_icon_elegant.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[elsif exp="tf.equip_simple==1"]
[image layer=2 page=fore visible=true  storage="icon/equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[endif]


[if exp="tf.other_simple==1"]
[image layer=2 page=fore visible=true  storage="icon/other_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[endif]

[if exp="tf.cook_simple==1"]
[image layer=2 page=fore visible=true  storage="icon/cook_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_icon]
[endif]

[eval exp="tf.hair_cute=0"][eval exp="tf.hair_pure=0"][eval exp="tf.hair_elegant=0"][eval exp="tf.hair_simple=0"]
[eval exp="tf.equip_cute=0"][eval exp="tf.equip_pure=0"][eval exp="tf.equip_elegant=0"][eval exp="tf.equip_simple=0"]
[eval exp="tf.other_simple=0"][eval exp="tf.cook_simple=0"]


[eval exp="tf.store_item_y_icon=tf.store_item_y_icon+30"]
[eval exp="tf.icon_kaisuu=tf.icon_kaisuu-1"]

[if exp="tf.icon_kaisuu>0"]
[jump target=*icon_modoru]
[endif]



[endmacro]

[macro name="equip_hyouji_shokika"]

[if exp="tf.irain_style==1"]

[free name="icon_hyouji_1" layer=1]
[free name="icon_hyouji_2" layer=1]
[eval exp="tf.irain_style=0"]
[else]
[free name="icon_hyouji_1" layer=1]
[free name="icon_hyouji_2" layer=1]
[endif]

[eval exp="tf.equip_item_id = f.equip_item_current"]
[eval exp="f.hyouji_item_1 =f.irain_icon[tf.equip_item_id].storage"]
[eval exp="tf.equip_item_id= f.equip_item_current_2"]
[eval exp="f.hyouji_item_2 =f.irain_icon[tf.equip_item_id].storage"]

[endmacro]


[macro name="equip_hyouji_item"]
[iscript]

var irain_icon_len = f.irain_icon;


for(i=0;i<irain_icon_len.length;i++){

	if(tf.equip_item_id==i&&tf.equip_item_kind=='hair'){

    this.kag.stat.f["hyouji_item_1"] =this.kag.stat.f["irain_icon"][i].storage;
    tf.product_hair=1;
}

	if(tf.equip_item_id==i&&tf.equip_item_kind=='equip'){

	this.kag.stat.f["hyouji_item_2"] =this.kag.stat.f["irain_icon"][i].storage;
	tf.product_body=1;
}


}


[endscript]
[endmacro]




[macro name="icon_hyouji_e"]
;商品がヘアじゃない場合、元々のヘア装備のエクステンション
[if exp="tf.product_hair!=1&&tf.product_body==1"]
[if exp="f.equip_item_current==11||f.equip_item_current==13"]
[image layer=1 page=fore visible=true  storage="irain_icon/hair_back_wave.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[elsif exp="f.equip_item_current==15"]
[image layer=1 page=fore visible=true storage="irain_icon/hair_gold_2.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]
[eval exp="tf.product_body=0"]
[endif]
;商品が装備じゃない場合、元々の装備のエクステンション
[if exp="tf.product_body!=1&&tf.product_hair==1"]
[if exp="f.equip_item_current_2==20"]
[image layer=1 page=fore visible=true  storage="irain_icon/body_odori_hair.png" name="icon_hyouji_2" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]
[eval exp="tf.product_hair=0"]
[endif]
;-----------
[if exp="tf.equip_item_id==11||tf.equip_item_id==13"]
[image layer=1 page=fore visible=true  storage="irain_icon/hair_back_wave.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[elsif exp="tf.equip_item_id==15"]
[image layer=1 page=fore visible=true storage="irain_icon/hair_gold_2.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]

[image layer=1 page=fore visible=true  storage=&f.hyouji_item_2 name="icon_hyouji_2" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[image layer=1 page=fore visible=true  storage=&f.hyouji_item_1 name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]

[if exp="tf.equip_item_id==20"]
[image layer=1 page=fore visible=true  storage="irain_icon/body_odori_hair.png" name="icon_hyouji_2" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]
[endmacro]


[macro name="icon_hyouji_e_f"]

[if exp="f.equip_item_current==11||f.equip_item_current==13"]
[image layer=1 page=fore visible=true  storage="irain_icon/hair_back_wave.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[elsif exp="f.equip_item_current==15"]
[image layer=1 page=fore visible=true storage="irain_icon/hair_gold_2.png" name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]


[image layer=1 page=fore visible=true  storage=&f.hyouji_item_2 name="icon_hyouji_2" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[image layer=1 page=fore visible=true  storage=&f.hyouji_item_1 name="icon_hyouji_1" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]

[if exp="f.equip_item_current_2==20"]
[image layer=1 page=fore visible=true  storage="irain_icon/body_odori_hair.png" name="icon_hyouji_2" width="107" height="142" x=&tf.item_image_hyouji_x y=&tf.item_image_hyouji_y]
[endif]
[endmacro]



;--------------------------------
[macro name="current_e_hyouji"]

[if exp="f.equip_item_current==tf.equip_item_id"]
[eval exp="tf.store_item_x_soubi=tf.store_item_x_have-15"]
[ptext layer=2 page=fore visible=true  text="E" face=antique name=&tf.suuti_name size=15 x=&tf.store_item_x_soubi y=&tf.store_item_y_v]
[endif]
[if exp="f.equip_item_current_2==tf.equip_item_id"]
[eval exp="tf.store_item_x_soubi=tf.store_item_x_have-15"]
[ptext layer=2 page=fore visible=true  text="E" face=antique name=&tf.suuti_name size=15 x=&tf.store_item_x_soubi y=&tf.store_item_y_v]
[endif]

[endmacro]











[return]



