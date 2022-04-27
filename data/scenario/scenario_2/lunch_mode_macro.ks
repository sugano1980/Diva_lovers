
;マップ上と、稽古の森とガイアの森にて挿入
[macro name="lunch_event"]
[call storage="scenario_2/lunch_macro.ks"]
[iscript]

var lunch = f.lunch.length;
for(i=0;i<lunch;i++){
	if(f.lunch[i]>0){
		f.lunch_pack=1;		
	}
}

tf.lunch_serihu=[
'のどかだな。日当たりもいい',
'外で食うのも気持ちいいよな！',
'うん、ピクニックにはいい場所だね'
];


tf.lunch_sel=[
'のんびりしてると眠くなっちゃうね',
'膝枕してあげようか？',
'はい、あーん！食べさせてあげる'
];

tf.lunch_answer=[
[
'そうだな・・・だがこんな時間も悪くない',
'き・・・気持ちだけ、受け取っておく',
'・・・いや・・・大丈夫だ、自分で、食べられる'
],
[
'あー、もう眠ってもいいか？',
'バッ・・・何言っ・・・べっ！？別に！？してほしいとかそんなこと思ってねえし？',
'お、お前何して、子供じゃねえんだから・・・'
],
[
'んー、そうだね、二人でお昼寝しよっか？',
'本当？嬉しいなあ、じゃあ遠慮なく',
'じゃあ俺からもあーん、食べて？'
],

];

tf.lunch_answer_t=[
[
'眠ってもいいぞ？大丈夫だ、・・・そばにいる',
'・・・お前がそう望むのなら・・・遠慮なく',
'・・・っ。全くお前は・・・仕方ないな'
],
[
'そだな。一緒に寝るか？',
'・・・いややめとく。膝枕だけじゃすまなそうだしな',
'言ったな。それじゃ全部頼む！'

],
[
'そうだね、眠っていいよ？かわいい寝顔、見ててあげる',
'そう？本当にいいの？いや、ダメだな、俺が落ち着かないや',
'本当？ありがとう。でも、俺が食べたいのは・・・'

],

];


[endscript]

[if exp="f.place_keiko==1&&f.lunch_pack==1||f.place_creru_gaia==1&&f.lunch_pack==1"]
;男性キャラとのイベント


[if exp="f.friend==1"]
[eval exp="tf.men_name='ランスロット'"]
[elsif exp="f.friend==2"]
[eval exp="tf.men_name='ライオネス'"]
[elsif exp="f.friend==3"]
[eval exp="tf.men_name='クライスト'"]
[endif]


[live2d_fadeout time=50]
[if exp="f.friend==1"]

[if exp="f.live2d_on!=1"]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]
[endif]

[elsif exp="f.friend==2"]

[if exp="f.live2d_on!=1"]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]
[endif]

[elsif exp="f.friend==3"]

[if exp="f.live2d_on!=1"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]
[endif]

[endif]
[live2d_fadein time=1000]

;[lunch_action]

[if exp="f.friend==1"]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_face_normal_warai]
[elsif exp="f.friend==3"]
[aho_face_normal]
[endif]
;[lunch_serihu_con]


[if exp="f.friend==1"]
[eval exp="tf.lunch_serihu_chara = tf.lunch_serihu[0]"]
[elsif exp="f.friend==2"]
[eval exp="tf.lunch_serihu_chara = tf.lunch_serihu[1]"]
[elsif exp="f.friend==3"]
[eval exp="tf.lunch_serihu_chara = tf.lunch_serihu[2]"]
[endif]


[message_settei_ad]

#&f.name
「ここならお弁当食べるのにいいかも！」[p]
#






#&tf.men_name
「[emb exp=tf.lunch_serihu_chara]」[p]
#
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
[glink target=*lunch_sel_1 text=&tf.lunch_sel[0] size=17 width=600 x=65 y=260]
[glink target=*lunch_sel_2 text=&tf.lunch_sel[1] size=17 width=600 x=65 y=320]
[glink target=*lunch_sel_3 text=&tf.lunch_sel[2] size=17 width=600 x=65 y=380]

[s]

*lunch_sel_1
[eval exp="tf.sel=1"]
[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[lunch_model_action_answer]
[jump target=*lunch_sel_end]

*lunch_sel_2
[eval exp="tf.sel=2"]
[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[lunch_model_action_answer]
[jump target=*lunch_sel_end]

*lunch_sel_3
[eval exp="tf.sel=3"]
[free name="sentakusi" layer=0]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[lunch_model_action_answer]

[live2d_fadeout time=1000]
;[live2d_delete_all][live2d_off]



*lunch_sel_end
[eval exp="tf.word_st=0"]
[live2d_fadeout time=1000]
[if exp="f.friend==1"]
[action_return_rans]
[elsif exp="f.friend==2"]
[action_return_lion]
[elsif exp="f.friend==3"]
[action_return_kra]
[endif]
[eval exp="tf.up_num = 0"]
[iscript]
var lunch = f.lunch.length;
tf.up_num =5;

if(f.disc_num>2){
tf.up_num*=3
}

for(i=0;i<lunch;i++){

if(f.lunch[i]===1){

if(f.lunch_st[i]===0){
f.irain_tec+=tf.up_num;
tf.word_st=0;
}else if(f.lunch_st[i]===1){
f.irain_brain+=tf.up_num;
tf.word_st=1;
}else if(f.lunch_st[i]===2){
f.irain_charm+=tf.up_num;
tf.word_st=2;
}


	}
	
}
f.lunch=[0,0,0];
[endscript]
[playse storage="item_status_up_onjin.ogg"]
お弁当を食べました[p]
[if exp="tf.word_st==0"]
技術が[emb exp="tf.up_num"]アップ！[p]
[elsif exp="tf.word_st==1"]
頭脳が[emb exp="tf.up_num"]アップ！[p]
[elsif exp="tf.word_st==2"]
魅力が[emb exp="tf.up_num"]アップ！[p]
[endif]

[eval exp="f.lunch_pack=0"]
[endif]

[if exp="f.irain_move>0&&f.lunch_pack==1&&f.map==1"]
[message_settei_ad]
[hidemenubutton]
#&f.name
「お弁当、どこで食べよう？」[p]
#
#&f.name
「街中とかはちょっと・・・森とかゆっくりできる場所がいいよね」[p]
#

[message_kakusu_ad]
[showmenubutton]

[elsif exp="f.irain_move==0&&f.lunch_pack==1"]
*status_up
[message_settei_ad]

[iscript]
var lunch = f.lunch.length;
for(i=0;i<lunch;i++){

if(f.lunch[i]===1){

if(f.lunch_st[i]===0){
f.irain_tec+=5;
tf.word_st=0;

}else if(f.lunch_st[i]===1){
f.irain_brain+=5;
tf.word_st=1;
}else if(f.lunch_st[i]===2){
f.irain_charm+=5;
tf.word_st=2;
		}
	}
	
}
f.lunch=[0,0,0];
[endscript]
[playse storage="item_status_up_onjin.ogg"]
お弁当を食べました[p]
[if exp="tf.word_st==0"]
技術が５アップ！[p]
[elsif exp="tf.word_st==1"]
頭脳が５アップ！[p]
[elsif exp="tf.word_st==2"]
魅力が５アップ！[p]
[endif]

[eval exp="f.lunch_pack=0"]
[eval exp="tf.word_st=0"]
[endif]

[endmacro]

[macro name="lunch_action"]
[if exp="f.friend==1"]
[rans_exp_normal_warai]
[elsif exp="f.friend==2"]
[lioness_face_normal_warai]
[elsif exp="f.friend==3"]
[aho_face_normal]
[endif]
[endmacro]











[return]