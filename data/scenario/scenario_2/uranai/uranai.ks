*start
[cm]

[cm]





*uranai

[playbgm storage="hurubitamelody_ontama.ogg"]

[if exp="f.uranai_status==1"]

[jump target=*status_uranai]

[endif]

;メッセージ画面の表示
[message_settei_ad]

;占い画面
[call storage="scenario_2/macro.ks"]


;-------------------------------------


[live2d_on][live2d_new name="miko" model_id="miko" lip=true jname="ガイアの巫女"]
[live2d_show name="miko" y=-0.45 x=-0.7 scale=1.2]
#ガイアの巫女
「こんにちわ。森の散策でしょうか？精霊の御加護が、あらんことを」[p]
#


;---------------------

[if exp="f.agata_uranai==1"]
[eval exp="f.agata_uranai=0"]
#&f.name
「あ、あの・・・恋占い、してくれるって聞いたんですけど・・・」[p]
#

#ガイアの巫女
「はい。迷える人々の力になるのも、私の仕事です」[p]
#

#ガイアの巫女
「どのようなことをお知りになりたいのでしょうか？」[p]
#


[else]


*uranai_choice
[if exp="f.live2d_on!=1&&f.s_wesuta!=1"]
[live2d_on][live2d_new name="miko" model_id="miko" lip=true jname="ガイアの巫女"]
[live2d_show name="miko" y=-0.45 x=-0.7 scale=1.2]
[endif]




[if exp="f.irain_heya!=1"]
[bg storage="gaiamori_tasogare.jpg" time=50]
[endif]

[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]

[glink target=*uranai_1 text="（恋占いをしてもらう）" size=17 width=600 x=65 y=200]
[glink target=*uranai_2 text="（森の散策をする）" size=17 width=600 x=65 y=260]
[glink target=*uranai_3 text="（話を聞く）" size=17 width=600 x=65 y=320]
[glink target=*uranai_4 text="（やっぱり帰る）" size=17 width=600 x=65 y=380]


[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[showmenubutton]
[else]
[showmenubutton]
[endif]

[s]


*status_uranai
*uranai_1
 [free name="sentakusi" layer=0]
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*uranai_content]


*uranai_2
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[if exp="f.live2d_on==1"]
[live2d_hide name="miko"]
[live2d_off][live2d_delete_all]
[endif]

[upstatus_random]

[eval exp="f.battle_item_stock[3]=f.battle_item_stock[3]+1"]
[r]ご神木の葉を手に入れた！[p]


[creru_outo_map]




*uranai_3
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
*wadai
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]

[glink target=*wadai_1 text="（相性について）" size=17 width=600 x=65 y=140]
[glink target=*wadai_2 text="（絆について）" size=17 width=600 x=65 y=200]
[glink target=*wadai_3 text="（攻略のコツ）" size=17 width=600 x=65 y=260]
[glink target=*wadai_4 text="（雑談）" size=17 width=600 x=65 y=320]
[glink target=*wadai_5 text="（戻る）" size=17 width=600 x=65 y=380]


[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[showmenubutton]
[else]
[showmenubutton]
[endif]

[s]


*wadai_1

[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

#ガイアの巫女
「ひとと人との間には、相性というものが存在します」[p]
「相性が良ければ仲が良くなりやすいですが、
そうでない場合は絆を深めることが困難になるでしょう」[p]
「しかし相性の良し悪しは、最初から決まっているものではございません」[p]
「行動次第によって、悪くもなり、よくもなる」[p]
「絆を深める行動は、相手と時間を共にすること」[p]
「ともに過ごした時間が多ければ多いほど、相性はよくなります」[p]
「会話や食事などもそうですが、相手のことを思って作った手料理などを振る舞うのも、効果的でしょう」[p]
「相性は同時に恋愛感度でもあります」[p]
「相手方の好感度を調べれば、恋愛感度レベルと言う表示があります。これが相性です」[p]
「レベルが上がれば上がるほど、お互いの仲もより深まることでしょう」[p]
#
[jump target=*uranai_choice]

*wadai_2

[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

#ガイアの巫女
「仲を深めた相手とは、時に固い絆で結ばれることがあります」[p]
「絆は二種類。戦場の絆、そして心の絆です」[p]
「戦場の絆とは、文字通り戦いの中で生まれる絆」[p]
「相手と厳しい戦いの困難を乗り越えたときに生まれます」[p]
「ともに困難を乗り越えた相手とは、揺るがない繋がりが生まれるもの」[p]
「戦いにおいて、その繋がりは威力を発揮します」[p]
「互いに声を掛け合い、励ましあいながらどのような敵とも渡り合って行くことができることでしょう」[p]

「心の絆とは、お互いの想う気持ちがこれ以上にないほど高まったときに生まれる繋がりです」[p]
「二人の間にどのような困難が待ち受けようと、この絆があれば立ち向かい克服することができます」[p]
「また、瞳をかわし、お互いの肌に触れ合うことで、さらに深まる絆・・・」[p]
「互いの温かさに触れることで、より一層の幸せを感じられることでしょう」[p]
#

[jump target=*uranai_choice]

*wadai_3

*kouryaku_kotu
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]

[glink target=*kouryaku_1 text="（好感度を上げるには）" size=17 width=600 x=65 y=200]
[glink target=*kouryaku_2 text="（相性を上げるには）" size=17 width=600 x=65 y=260]
;[glink target=*kouryaku_3 text="（攻略のコツ）" size=17 width=600 x=65 y=320]

[s]
*kouryaku_1
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]


#ガイアの巫女
「好感度を上げる方法は、５つあります」[p]
「一つは殿方とのやり取りで、選択肢を選ぶ方法。殿方が喜ぶ選択肢を考えて選ぶことが大切です」[p]
「二つ目は殿方と食事に行くこと。会話をすることで、二人の仲も深まります」[p]
「三つ目は殿方の好きそうな服装をすること。どのアクセサリーや服が、殿方の好みなのか確認すると良いでしょう」[p]
「四つ目は殿方の好きな料理を振る舞うこと。料理ができるときに好みの手料理をご馳走するのも良いですね」[p]
「五つ目は共に殿方と戦いに臨むことです。厳しい戦いの中で生まれる絆もあるでしょう」[p]
#
[jump target=*uranai_choice]


*kouryaku_2
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]


#ガイアの巫女
「秘訣は一つだけ。殿方とできるだけ共に時間を共有することです」[p]
「共に過ごした時間が多ければ多いほど、相性はよくなります」[p]
「具体的には一緒に食事に行って会話をする、料理をする、また戦闘なども相性の上昇に関わるでしょう」[p]
「相性が上がれば、好感度の上昇量も増えます。相性をあげて効率的に好感度を上げると良いでしょう」[p]
#
[jump target=*uranai_choice]












*wadai_4

[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]


[iscript]

tf.miko_wadai=Math.floor(Math.random()*2)+1

[endscript]

[if exp="tf.miko_wadai==1"]

#ガイアの巫女	
「・・・私・・・最近オムライスを作るのに凝っていまして・・・」[p]
#
#&f.name	
「へっ！！？？」[p]
#
#ガイアの巫女	
「何か、おかしいのでしょうか？」[p]
#&f.name	
「え、えーと・・・い、いいえ・・・」[p]
（そ、そうか、ガイアの巫女様だって・・・ご飯食べるし料理くらいは・・・）[p]
（でも料理してる想像ができない・・・）[p]
#
#ガイアの巫女	
「どうしても・・・うまくできないのです・・・あの・・・上に乗っている卵・・・」[p]
#
#&f.name	
（ああ・・・あれ・・・[p]
#ガイアの巫女	
「どうしたら良いのでしょう・・・美味しいオムライスが食べたいのに・・・」[p]
#
#&f.name	
「はあ・・・」[p]
（ガイアの巫女様も、色々と悩みがあるんだな・・・）[p]
#
[elsif exp="tf.miko_wadai==2"]

#&f.name	
「あの、恋の相談も受けてるって本当ですか？」[p]
#
#ガイアの巫女
「ええ。どのような相談もお受けしますし、秘密は厳守いたします」[p]
「何か、ご相談が？」[p]
#
#&f.name
	「い、いいえ、ただ聞いてみたかっただけで・・・」[p]
	#
#ガイアの巫女	
「そうですか、もしお悩みのことがあればいつでも、どのようなことでもどうぞ」[p]
#
#&f.name	
「例えば・・・どんな相談があったりするんですか？」[p]
#
#ガイアの巫女	
「・・・なんでもありますよ。それこそ、道ならぬ恋や、身分違いの恋、恋人のおかしな性癖、夜の・・・」[p]
#
#&f.name	
「えっええと、そ、それ以上はいいですっ」[p]
#
#ガイアの巫女	
「・・・あら、そうですか？」[p]
#
#&f.name
	（り、リアルすぎる・・・）[p]
#

[endif]

[jump target=*uranai_choice]

*wadai_5

[jump target=*uranai_choice]



*uranai_4
[hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[live2d_hide name="miko"]
[live2d_off][live2d_delete_all]
[endif]
[creru_outo_map]








[endif]


*uranai_content

;背景変更
;[bg storage="uranai_tasogare.jpg" time=100]

;ＢＧＭを鳴らす

[if exp="f.live2d_on==1&&f.s_wesuta!=1"]
[live2d_hide name="miko"]
[live2d_off][live2d_delete_all]
[elsif exp="f.s_wesuta==1"]
[borongo_tatie_touroku]
[borongo_tatie_show]
[endif]


[freeimage layer=1]

[if exp="f.s_wesuta!=1"]
#ガイアの巫女
「どのようなことをお知りになりたいのでしょう？」
#
[elsif exp="f.s_wesuta==1"]
#ボロンゴ
「あら、いいわねー恋する乙女って！何をうらなうの？」
#
[chara_hide_all][chara_off]
[endif]
;--------



[button graphic="button/kininaruhito1_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*seikaku x=300 y=30]
[button graphic="button/kininaruhito2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*koukando x=300 y=80]
[button graphic="button/kininaruhito4_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kaeru x=300 y=180]

[s]

*seikaku

[message_settei_ad]
[cm]
;[bg storage="uranai_tasogare.jpg" time=50]
[if exp="f.s_wesuta==1"]
#ボロンゴ
「誰のことを占うの？」
#
[else]
#ガイアの巫女
「誰のことを占いますか？」
#
[endif]

[button graphic="mini_face/ranslott_face.png" clickse="tm2_switch001_macchi.ogg" target=*rans x=35 y=80]
[button graphic="mini_face/lioness_face.png" clickse="tm2_switch001_macchi.ogg" target=*lion x=235 y=80]
[button graphic="mini_face/klaist_face.png" clickse="tm2_switch001_macchi.ogg" target=*kra x=435 y=80]
[button graphic="mini_face/glif_face.png" clickse="tm2_switch001_macchi.ogg" target=*glif x=635 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=230]

[s]
[cm]
*rans
[cm]
[message_kakusu_ad]
;[live2d_load]
;[live2d_on][live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off]

[free name="episode" layer=0]
[freeimage layer=3]
[bg storage="ranssetumei.jpg" time=50]
;[live2d_on][live2d_show name="baka0" y=-1.2 x=-0.7 scale=3.5]
[image layer=1 page=fore visible=true top=30 left=60  width=200 height=289 storage = rans_face.png]
[image layer=1 page=fore visible=true top=30 left=60  storage = face_waku.png]
[image layer=0 page=fore visible=true top=30 left=60  storage = face_waku_under.png]

[image layer=1 page=fore visible=true top=430 left=360  storage = favorite.png]
[image layer=1 page=fore visible=true top=500 left=360  storage = favorite.png]

[ptext layer=1 page=fore text="好きな料理・お店" face=antique color=#000000 size=18 x=395 y=430]

[image layer=1 page=fore visible=true top=450 left=395  height="50" width="50" storage = ryouri/nimono.png]
[image layer=1 page=fore visible=true top=445 left=450  height="50" width="50" storage = logo_small/kajituna_small.png]
[image layer=1 page=fore visible=true top=445 left=515  height="50" width="50" storage = logo_small/hirayama_small.png]
[image layer=1 page=fore visible=true top=445 left=570  height="50" width="50" storage = logo_small/oikawa_small.png]


[ptext layer=1 page=fore text="好きな服の傾向" face=antique color=#000000 size=18 x=395 y=500]

[image layer=1 page=fore visible=true top=527 left=395 storage = icon/hair_icon_pure.png]
[image layer=1 page=fore visible=true top=527 left=425 storage = icon/hair_icon_cute.png]
[image layer=1 page=fore visible=true top=527 left=455 storage = icon/equip_icon_pure.png]
[image layer=1 page=fore visible=true top=527 left=485 storage = icon/equip_icon_cute.png]


[button graphic="button/modoru_button.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=745 y=540]

[s]

*lion
[cm]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="lionsetumei.jpg" time=50]
;[live2d_on][live2d_show name="aho" y=-1.2 x=-0.7 scale=3.5]



[image layer=1 page=fore visible=true top=30 left=60  height="300" width="200" storage = lion_face.png]
[image layer=1 page=fore visible=true top=30 left=60  storage = face_waku.png]
[image layer=0 page=fore visible=true top=30 left=60  storage = face_waku_under.png]
[image layer=1 page=fore visible=true top=430 left=360  storage = favorite.png]
[image layer=1 page=fore visible=true top=500 left=360  storage = favorite.png]

[ptext layer=1 page=fore text="好きな料理・お店" face=antique color=#000000 size=18 x=395 y=430]

[image layer=1 page=fore visible=true top=450 left=395  height="50" width="50" storage = ryouri/kare.png]
[image layer=1 page=fore visible=true top=445 left=445  height="50" width="50" storage = logo_small/romanade_small.png]
[image layer=1 page=fore visible=true top=445 left=490  height="50" width="50" storage = logo_small/beruushi_small.png]
[image layer=1 page=fore visible=true top=445 left=555  height="50" width="50" storage = logo_small/moon_small.png]



[ptext layer=1 page=fore text="好きな服の傾向" face=antique color=#000000 size=18 x=395 y=500]

[ptext layer=1 page=fore text="？？？" face=antique color=#000000 size=18 x=445 y=527]








[button graphic="button/modoru_button.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=745 y=540]



[s]


*kra
[cm]
;[live2d_load]
;[live2d_on][live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
;[live2d_load_off]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="krasetumei.jpg" time=50]
;[live2d_on][live2d_show name="aho" y=-1.2 x=-0.7 scale=3.5]



[image layer=1 page=fore visible=true top=45 left=60  height="285" width="200" storage = klaist_face.png]
[image layer=1 page=fore visible=true top=30 left=60  storage = face_waku.png]
[image layer=0 page=fore visible=true top=30 left=60  storage = face_waku_under.png]
[image layer=1 page=fore visible=true top=390 left=360  storage = favorite.png]
[image layer=1 page=fore visible=true top=465 left=360  storage = favorite.png]

[ptext layer=1 page=fore text="好きな料理・お店" face=antique color=#000000 size=18 x=395 y=390]

[image layer=1 page=fore visible=true top=410 left=395  height="50" width="50" storage = ryouri/osasimi.png]
[image layer=1 page=fore visible=true top=405 left=450  height="50" width="50" storage = ryouri/unajuu.png]
[image layer=1 page=fore visible=true top=405 left=550  height="50" width="50" storage = logo_small/moon_small.png]


[ptext layer=1 page=fore text="好きな服の傾向" face=antique color=#000000 size=18 x=405 y=465]

;[ptext layer=1 page=fore text="上質" face=antique color=#000000 size=18 x=445 y=455]
;[ptext layer=1 page=fore text="華麗" face=antique color=#000000 size=18 x=495 y=455]
;[ptext layer=1 page=fore text="高級" face=antique color=#000000 size=18 x=545 y=455]

[image layer=1 page=fore visible=true top=500 left=425 storage = icon/hair_icon_elegant.png]
[image layer=1 page=fore visible=true top=500 left=455 storage = icon/equip_icon_elegant.png]








[button graphic="button/modoru_button.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=745 y=540]


[s]



*glif
[cm]
;[live2d_load]
;[live2d_on][live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
;[live2d_load_off]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="glifsetumei.jpg" time=50]
;[live2d_on][live2d_show name="aho" y=-1.2 x=-0.7 scale=3.5]



[image layer=1 page=fore visible=true top=55 left=60  height="267" width="200" storage = glif_face.png]
[image layer=1 page=fore visible=true top=30 left=60  storage = face_waku.png]
[image layer=0 page=fore visible=true top=30 left=60  storage = face_waku_under.png]
;[image layer=1 page=fore visible=true top=340 left=360  storage = favorite.png]
[image layer=1 page=fore visible=true top=415 left=360  storage = favorite.png]

;[ptext layer=1 page=fore text="好きな料理・お店" face=antique color=#000000 size=18 x=395 y=340]

;[image layer=1 page=fore visible=true top=360 left=395  height="50" width="50" storage = ryouri/osasimi.png]
;[image layer=1 page=fore visible=true top=355 left=450  height="50" width="50" storage = ryouri/unajuu.png]
;[image layer=1 page=fore visible=true top=355 left=550  height="50" width="50" storage = logo_small/moon_small.png]


[ptext layer=1 page=fore text="好きな服の傾向" face=antique color=#000000 size=18 x=405 y=415]

;[ptext layer=1 page=fore text="上質" face=antique color=#000000 size=18 x=445 y=455]
;[ptext layer=1 page=fore text="華麗" face=antique color=#000000 size=18 x=495 y=455]
;[ptext layer=1 page=fore text="高級" face=antique color=#000000 size=18 x=545 y=455]

[image layer=1 page=fore visible=true top=450 left=425 storage = icon/hair_icon_pure.png]
[image layer=1 page=fore visible=true top=450 left=455 storage = icon/equip_icon_cute.png]








[button graphic="button/modoru_button.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=745 y=540]


[s]




*van
[cm]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="vansetumei.jpg"]
[image layer=1 page=fore visible=true top=100 left=5  storage = glif_face.png]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=640 y=400]


[s]

*mae
[freeimage layer=1]
[freeimage layer=0]
[bg storage="gaiamori_tasogare.jpg" time=50]
[jump target=*seikaku]
[cm]


*modoru
[cm]
[jump target=*uranai]

[s]

*koukando
[jump storage=scenario_2/uranai/koukando.ks target=*start]



*kaeru
[cm]
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[live2d_hide name="miko"]
[live2d_off][live2d_delete_all]

[endif]
[if exp="f.uranai_status==1"]
[message_kakusu_ad]


[status_hyouji]

[else]
[jump target=*uranai_choice]
[endif]







