;いかがわしい店で潜入捜査



*ikagawa_sousa
[cm]
;ノック
[playse storage="nokku_tairakomori.ogg"]

[config_true]
[cera_tatie_touroku]
[cera_tatie_show]
#セレ	
「[name]、いるか？」[p]
#
#&f.name	
「あ、セレさん、どうしたの？」[p]
#

[cera_tatie_komari]
#セレ	
「ああ・・・その、団長がお前に・・・依頼したい仕事があるというんだが・・・」[p]
#
#&f.name	
「あっ、はい・・・私、に？」[p]
#


[cera_tatie_otikomi]
#セレ	
「ああ・・・そのだな・・・お前にしかできない仕事というか・・・」[p]
#
#&f.name	
「えっ」[p]
#
#&f.name	
（どういうことだろう・・・）[p]
#
[cera_tatie_normal]
#セレ	
「とにかく、部屋にきてくれ」[p]
#
[chara_hide_all]

#&f.name	
「わ、わかりました」[p]
#
#&f.name	
（私にしかできないって・・・？）[p]
#


[bg storage="dancho_tasogare.jpg"]



[dancho_tatie_touroku]
[dancho_tatie_show]
#団長	
「[name]、突然呼び出してすまないな」[p]
#
#&f.name	
「い、いいえ・・・その、なんでしょう、私にしかできないって・・・」[p]
#
#団長	
「実はな、最近裏通りで、違法な商売をしている店があるという噂でな」[p]
#
#&f.name	
「違法な商売、ですか・・・」[p]
#

[dancho_tatie_metoji]
#団長	
「ああ、なんでも、さらってきた若い娘を同意のないまま働かせているという話なのだが」[p]
#
#&f.name	
「ええっ・・・」[p]
#
[dancho_tatie_normal]
#団長	
「王都の治安を守る地方騎士団としても、噂の是非は確かめなければならない」[p]
#
#団長	
「この間トリスタンがその店に見回りに行ったんだが、どうも王宮の息がかかった店らしくてな」[p]
#
#&f.name	
「それは・・・どういうことですか？」[p]
#
#団長	
「王宮騎士団御用達の酒場兼宿屋ということだそうで・・・王宮関係がからむとこちらからは手が出せんのだ」[p]
#
#&f.name	
「でも、王宮関係ならちゃんとしたお店なんじゃないでしょうか？」[p]
#

[dancho_tatie_metoji]
#団長	
「・・・そう、思いたいんだがな・・・被害報告も何件か出ていて・・・」[p]
#
#&f.name	
「・・・」[p]
#
[dancho_tatie_normal]
#団長	
「そこでだ・・・[name]」[p]
#
#&f.name	
「はい・・・」[p]
#
#団長	
「お前にその店への潜入捜査を頼みたい」[p]
#
#&f.name	
「へっ！？」[p]
#
#&f.name	
「潜入捜査・・・というのは・・・」[p]
#
#団長	
「その店の女性店員として、働きながら内情を探ってきて欲しいのだ」[p]
#
#&f.name	
「は、はあ・・・」[p]
#
[dancho_tatie_metoji]
#団長	
「最初はセレが立候補してくれたのだが・・・色々事情があってな・・・お前に頼むことにしたんだが」[p]
#
[dancho_tatie_normal]
#団長	
「・・・その、男性の相手をする店ということで・・・もし、無理なら断ってもらって構わない・・・他の方法を探そう」[p]
#
#団長	
「ただ、引き受けてくれるなら非常にありがたいし、助かる。どうだろうか・・・」[p]
#
#&f.name	
（どうしよう・・・）[p]
#

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【引き受ける？】

[glink target=*ikagawa_1 text="（引き受ける）" size=17 width=600 x=65 y=200]
[glink target=*ikagawa_2 text="（引き受けない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]


*ikagawa_2

[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
#団長	
「そうか・・・そうだな、こんなことを女性のお前に頼むわけにはいかないな」[p]
#
#団長	
「わしがどうかしていた。他の方法を探そう」[p]
#
#&f.name	
（・・・団長？）[p]
#
[chara_hide_all][chara_off]
[jump storage="scenario_2/day_start_event.ks" target=*irai_end]

*ikagawa_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_sub_16_ikagawa_ok=1"]
;引き受ける
[dancho_tatie_metoji]
#団長	
「引き受けてくれるか・・・すまないな、[name]・・・」[p]
#
#&f.name	
（なんで謝るんだろう？）[p]
#
#&f.name	
「は、はい。その、それでどうすれば・・・」[p]
#
[dancho_tatie_normal]
#団長	
「まず今日の夜、裏通りに向かってくれ。店の情報は夕方までに作成してお前に渡しておく」[p]
#
#&f.name	
「わ、わかりました、裏通りのそのお店に直接向かえば良いんですね」[p]
#
#団長	
「ああ、店の者に匿名で話は通しておくから、面接の予約をしていたと伝えれば良い」[p]
#
#&f.name	
「はい！」[p]
#
#&f.name	
（よし、明日の夜だよね、頑張ろう！）[p]
#
#団長	
「ランスロットの弟子であるお前のことだ、大丈夫だと思うが・・・本当に危険が及んだ時には捜査は後回しで身を守るようにな」[p]
#
#&f.name	
「は、はあ・・・わかりました」[p]
#
#団長	
「くれぐれも、気をつけてな」[p]
#
#&f.name	
（・・・団長？）[p]
#
[chara_hide_all][chara_off]
[bg storage="irainheya_yuu_tasogare.jpg"]
*ikagawa_honban
;行動後、自動でイベント
#&f.name	
「よし、今夜から捜査の仕事・・・頑張ろう！」[p]
#

[bg storage="creru_uradoori_yuu.jpg"]
[playse storage="zawameki_soto.ogg"]
;裏通り
#&f.name	
「ええと・・・あの店、かな」[p]
#
#男	
「なんだあ嬢ちゃん？」[p]
#
#&f.name	
（なんか柄悪いなあ・・・）[p]
#
[stopse]
#&f.name	
「あ、あの私、面接に来ました[name]です」[p]
#
#男	
「ああ、あんたがそうか。・・・随分とガキくせえのをよこしたもんだな」[p]
#
#男	
「・・・まあ、体はそうでもねえか・・・へへ」[p]
#
#&f.name	
（えっ？・・・どういうことだろ）[p]
#
#男	
「まあギリギリ合格だな。早速今日から働いてもらう。悪いが人手不足なんだ」[p]
#
#&f.name	
「わ、わかりました、頑張ります！」[p]
#
#男	
「おうおう、頑張ってご奉仕してくれ？へへ・・・」[p]
#


;部屋

[bg storage="ikagawa_room.jpg"]
#&f.name	
（・・・なんだろう・・・この雰囲気・・・）[p]
#

#男	
「ここの店の制服は、これだ。着替えたらホールに降りてこい」[p]
#
#&f.name	
「わ、わかりました」[p]
#
#男	
「急げよ」[p]
#
[playse storage="simerusizuka_onjin.ogg"]
#&f.name	
「えーと、これが制服だね・・・ってえっ！？」[p]
#

[playse storage="huku_koukaonlabo.ogg"]
#&f.name	
「なにこれ・・・」[p]
#
#&f.name	
（ほとんど隠すところがない！）[p]
#
#&f.name	
（服って言えるのかなこれ・・・下着？制服って・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#
#&f.name	
「と、ともかく仕事なんだし、着る、しかないよね・・・」[p]
#
;暗転
[anten]
[playse storage="hukukosure_onjin.ogg"]
[bg storage="ikagawa_room.jpg"]
#&f.name	
（うう・・・やっぱり恥ずかしいよお・・・）[p]
#
	
;裏通り
[bg storage="creru_uradoori_yuu.jpg"]
[playse storage="zawameki_soto.ogg"]

[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「今日新しい子入ったって本当？」[p]
#
#男	
「そうなんですよ、まあ顔はちょっと子供っぽいですが体つきはまあまあでして・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「えー、楽しみだな、じゃあ今日はそのこでお願い」[p]
#
#男	
「ご指名ありがとうございます！」[p]
#
[chara_hide_all]
[stopse]	


[playse storage="zawameki_situnai.ogg"]

[bg storage="ikagawa_store.jpg"]
#&f.name	
（・・・は、恥ずかしい・・・みんな、みてるよね・・・）[p]
#
#中年男	
「おっ！見かけない子だねー、新人？かわいいねー、こっちきてお酒ついでよ！！」[p]
#
#&f.name	
「あっあの・・・」[p]
#
#男	
「申し訳ありませんお客様、たった今この子に指名が入りまして」[p]
#
#&f.name	
「えっ」[p]
#
#&f.name	
（し、指名って！？）[p]
#
#男	
「いいか、上客なんだからな、くれぐれも失礼のないようにな！」[p]
#
#&f.name	
「えっ、あ、あの・・・」[p]
#
#男	
「お待たせしました、新人の[name]です」[p]
#
#&f.name	
「あっえっ・・・」[p]
#
#&f.name	
（し、仕事なんだから・・・！頑張らないと・・・！）[p]
#
#&f.name	
「おっ、お待たせしました、はじめまして！新人の[name]ですう！よろしくお願いしまーす！！」[p]
#

[chara_show name="kra" storage="&f.kra_mihiraki" top=0 left=130]
#クライスト	
「えっ？」[p]
#

[playbgm storage="korehaittai_ontama.ogg"]
#&f.name	
（！！！？？？）[p]
#
#&f.name	
「へっ！？？えっ、えっ・・・ちょ、えっ！？」[p]
#
#&f.name	
（クライストさん！！？？）[p]
#
#男	
「それでは私はこれで、どうぞごゆっくり」[p]
#
#&f.name	
「なっ・・・なんでクライストさんっ・・・ここに・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・いやそれは・・・こっちのセリフだけど・・・転職、したの？」[p]
#
#&f.name	
「えっ、あっ、いや、ちが、これ、これはその、じ、事情があって・・・」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「事情・・・」[p]
#
#&f.name	
「き、騎士だ・・・あ」[p]
#
#&f.name	
（あ、ここで言ったら潜入捜査が台無しに・・・）[p]
#
#&f.name	
「あ、アルバイト？そ、そうアルバイトなの！！」[p]
#

[kra_tatie_yokome]
#クライスト	
「アルバイトって・・・お給料もらってないの？」[p]
#
#&f.name	
「そういうわけじゃないんだけど、ちょっと高価な？欲しいものがあって」[p]
#
[kra_tatie_normal]
#クライスト	
「はあ・・・」[p]
#
#&f.name	
（騎士団が副業禁止だってこと、クライストさんは知らないし、なんとかかわせるかな・・・）[p]
#
#&f.name	
「お、お酒注ぎますよ？どうぞ！」[p]
#
#&f.name	
（ここでバラすわけにいかないし・・・このままお酒飲んで帰ってもらおう・・・）[p]
#

[playse storage="winesosogu.ogg"]
[kra_tatie_yokome]
#クライスト	
「・・・まあ、ありがとう・・・」[p]
#
[fadeoutbgm time=2000]
#&f.name	
（でもこのお店・・・女の子の制服はちょっと際どい下着みたいだけど、みたところ普通にお酒の相手してるだけだよね・・・）[p]
#
#&f.name	
（働いてる子がさらわれてきた子だって、どうやって調べればいいんだろ・・・）[p]
#

[kra_tatie_normal]
[chara_hide_all][chara_off]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]

[live2d_fadein time=1000]
#クライスト	
「・・・何考えてるの？」[p]
#
[aho_head_right_z]
#&f.name	
「えっ、う、ううん、あの、初めてだから緊張しちゃって、こういうとこ初めてだし・・・ってえっ」[p]
#
[live2d_fadeout time=50]
[playse storage="hukukosure_onjin.ogg"]
#&f.name	
「！？」[p]
#
[playse storage="butukaru_onjin.ogg"]
[live2d_kra_mod_sekkin_2]
[aho_head_right_z]
[aho_face_bisyou_youen]
[live2d_fadein time=1000]
#&f.name	
「ちょ・・・ちょっと、クライストさん・・・！？」[p]
#
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト	
「・・・俺の方だけ、見てて欲しいな」[p]
#
#&f.name	
「えっなっ・・・」[p]
#
[aho_mod_idle_normal]
[aho_face_normal]
[aho_head_under_y]
[aho_eyes_above]
#クライスト	
「・・・そんなに周りが気になっちゃうなら、二人きりになろうか？」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_bisyou_youen]
#&f.name	
「ふっ・ふた・・」[p]
#
#&f.name	
（二人きりって・・・）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト	
「・・・行こ」[p]
#
[live2d_fadeout time=1000]

#男	
「お、旦那！早いですねえ早速お持ち帰りで！」[p]
#

[kra_tatie_show_tall]
#クライスト	
「二階の部屋、空いてる？」[p]
#
#男	
「はい！突き当たりの一番奥の部屋、お使いください！声も漏れにくいですよ！」[p]
#
#&f.name	
（声も漏れにくいって・・・どうして？）[p]
#
#&f.name	
「ちょ、ちょっとクライストさん・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「うん、二人で楽しもっか」[p]
#
#&f.name	
「は、はい？」[p]
#
[kra_tatie_smile]
#クライスト	
「大丈夫俺、ちゃんと優しくするよ」[p]
#
#&f.name	
（な、なんの話・・・）[p]
#
[chara_hide_all]

[bg storage="ikagawa_room.jpg"]

#&f.name	
「あ、あの・・・クライストさん・・・」[p]
#
[kra_tatie_show_tall]
[kra_tatie_normal]
#クライスト	
「もしかして、初めて？」[p]
#
#&f.name	
「な、なにがですか？」[p]
#
[kra_tatie_smile]
#クライスト	
「うん、そうみたいだね」[p]
#
#&f.name	
（全然会話が噛み合ってないような・・・）[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「大丈夫、最初はちょっと辛いけど、慣れたら気持ち良くなるから」[p]
#

#&f.name	
「なにが・・・ひゃっ」[p]
#
[chara_hide_all time=50]

[quake count="3" time="300" hmax="10"]
[playse storage="taorekomu_koukaonlabo.ogg"]
[bg storage="ikagawa_room_t.jpg" time=800]
[live2d_mod name="aho" y=-4.7 scale=9.4]
[live2d_fadein time=500]


[playse storage="hukukosure1_onjin.ogg"]
;se

[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse_warai]
[aho_eyes_under]
#クライスト	
「・・・この制服、さあ・・・あってもないようなものだよね」[p]
#
;se
[playse storage="hukukosure2_onjin.ogg"]
#&f.name	
（！！）[p]
#
#&f.name	
「やっ・・・やだ・・・」[p]
#
[aho_head_normal][aho_head_under_y]
[aho_eyes_above]
[aho_face_normal_majime]
#クライスト	
「あ、それ禁句。そのセリフはね、男を逆に煽るんだよ？」[p]
#
#&f.name	
「や、やめ・・・」[p]
#
[aho_head_normal]
[aho_eyes_normal]
[aho_face_smile]
#クライスト	
「あー、初々しくてかわいいなあ。[aho_face_bisyou_youen]食べるのがもったいない」[p]
#
#&f.name	
（なに言ってるのこの人・・・）[p]
#
#&f.name	
（ってつっこんでる場合じゃない！）[p]
#

[aho_head_right_x]
[aho_body_right_z]
[aho_face_normal_majime]
[aho_eyes_right]
#&f.name	
（これってもしかして・・・団長の言ってた身の危険っていうやつ・・・？）[p]
#
#&f.name	
（でも相手はクライストさんだし・・・）[p]
#
[aho_body_normal]
#&f.name	
「・・・・・・」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_bisyou_youen]
#クライスト	
「・・・ん？」[p]
#
#&f.name	
（やっぱりそんなの関係ない！そもそも今ほとんど裸だし・・・）[p]
#
#&f.name	
（このままだともしかしたら本当に・・・）[p]
#

;どうしよう・・・
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どうしよう・・・】

[glink target=*osoware_1 text="（クライストを信じてみる）" size=17 width=600 x=65 y=200]
[glink target=*osoware_2 text="（助けをよぶ）" size=17 width=600 x=65 y=260]
[glink target=*osoware_3 text="（とりあえず一発殴る）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*osoware_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;#クライストを信じてみる
#&f.name	
（でもやっぱり・・・クライストさんこんなことまでする人だとは思えない・・・）[p]
#

[live2d_fadein time=500]

#クライスト	
「そんな真摯に見つめられたら、悪いことできなくなっちゃうな」[p]
#
#&f.name	
「クライストさん・・・でも、最初からそういう気じゃなかったよね？」[p]
#
[live2d_fadeout time=50]
[playse storage="hukukosure_onjin.ogg"]
[live2d_kra_mod_sekkin]
[bg storage="ikagawa_room.jpg"]
[live2d_fadein time=1000]

[aho_face_normal]
#クライスト	
「もしかしてわかってたの？」[p]
#
#&f.name	
「えと・・・それは、最初はびっくりしたけど・・・」[p]
#

[aho_head_above_y]
[aho_head_left_x]
[aho_eyes_left]
[aho_face_komari_warai]
#クライスト	
「なんだ、君には敵わないなあ」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_hutuu_bisyou]
#クライスト	
「まあでも？いつかそうしたいとは思ってるけどね」[p]
#
#&f.name	
「え？」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
#クライスト	
「君がちゃんと同意してくれるまで待つつもりだよ」[p]
#
#&f.name	
（？）[p]
#

[aho_head_normal]
[aho_body_normal]
[aho_face_normal_majime]
[aho_arms_udekumi]
#クライスト	
「それで？なんでこんなとこいたの？」[p]
#
#&f.name	
「それは・・・」[p]
#

[aho_head_right_z]
[aho_head_above_y]
[aho_eyes_right]
#クライスト	
「アルバイトって、嘘だろ？」[p]
#
#&f.name	
「えっ、えーと・・・」[p]
#
[aho_head_normal]
[aho_face_normal_majime]
#クライスト	
「俺で良ければ、話聞こうか」[p]
#
[aho_head_under_y]
[aho_head_normal]
#&f.name	
「クライストさん・・・」[p]
#
#&f.name	
（ていうか最初からそれなら、さっきのって・・・）[p]
#
[anten][live2d_fadeout time=1000]
[jump target=*jijou]


*osoware_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;助けを呼ぶ
#&f.name	
（た、助けったって誰に・・・）[p]
#
	

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【誰に・・・】

[glink target=*tasuke_1 text="（ライオネス）" size=17 width=600 x=65 y=200]
[glink target=*tasuke_2 text="（ランスロット）" size=17 width=600 x=65 y=260]
[glink target=*tasuke_3 text="（グリフレット）" size=17 width=600 x=65 y=320]



[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*tasuke_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;#ライオネス
;暗転
[anten]
[bg storage="creru_uradoori_yuu.jpg"]

[playse storage="zawameki_soto.ogg"]
[tris_tatie_touroku]
[chara_show name="tris" height="603" width="420" top=50 storage="tris_tatie/tris_mihiraki_0.png"]
[cera_tatie_touroku]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_udekumi.png" width=336 height=482 left=30 top=130]
#トリスタン	
「おいセレ、ちょ、ちょっと待てって！！」[p]
#

[cera_tatie_donari]
#セレ	
「やっぱりダメだ！[name]をあんな場所に行かせたのは間違いだ！私が無理やりにでも行けばよかったんだ！」[p]
#
[tris_tatie_sian]
#トリスタン	
「いやだからってお前が行くこと・・・[name]だってちゃんとした騎士だ、うまくやるよ」[p]
#

#セレ	
「あいつは世間知らずなんだぞ？あの店がどういう店かもわかってないはずだ！」[p]
#

#セレ	
「トリスタンお前、父さんに私が行くのを止めるよう言ったんだろ！！」[p]
#

[tris_tatie_mihiraki]
#トリスタン	
「そ、それは・・・」[p]
#

[cera_tatie_otikomi]
#セレ	
「私には他の仕事が入ってるからって、父さんがそっちを優先させるよう言ってきたけど・・・」[p]
#
[tris_tatie_sian]
#トリスタン	
「だけど[name]だって承諾したんだろ？それなら・・・」[p]
#

[cera_tatie_donari]
#セレ	
「ばか！わかってないから引き受けてしまったんだろ！！」[p]
#
[tris_tatie_mehuse]
#トリスタン	
「・・・」[p]
#

[chara_hide_all time=50]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「お？なんだお前ら、こんなとこで揃って・・・[name]がどうした？」[p]
#

[chara_hide_all time=50]
[chara_show name="tris" height="603" width="420" top=50 storage="tris_tatie/tris_mihiraki_0.png"]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]
#セレ	
「ら、ライオネス・・・」[p]
#
[chara_hide_all time=50]
[lioness_tatie_show]
#ライオネス	
「承諾とか引き受けとかって・・・どういうことだ？」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「そういやあいつ・・・夕方部屋にいなかったな・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「なんかあったのか」[p]
#
[chara_hide_all time=50]
[chara_show name="tris" height="603" width="420" top=50 storage="tris_tatie/tris_mehuse.png"]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]
#セレ	
「・・・っ」[p]
#

[chara_hide_all time=50]
[lioness_tatie_show]

#ライオネス	
「トリスタン」[p]
#

[chara_hide_all time=50]
[chara_show name="tris" height="603" width="420" top=50 storage="tris_tatie/tris_mehuse.png"]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]
#トリスタン	
「・・・ら、ライオネス・・・その、実はだな・・・」[p]
#
[chara_hide_all time=500]
;暗転


[anten]
[playse storage="yukahasiru_onjin.ogg"]
[bg storage="ikagawa_room.jpg"]
#&f.name	
（ライオネス、助けて・・・）[p]
#
[playbgm storage="sturggle.ogg"]
[live2d_fadein time=500]
[aho_face_normal_majime]
[playse storage="crash20_d_macchi.ogg"]
[aho_eyes_right]
;se

[stopse]
[playse storage="naguru_koukaonlabo.ogg"]
[image storage="siro.jpg" layer="3" x="0" y="0" name="siro"]
[w]
[free name="siro" layer=3][image storage="siro.jpg" layer="3" x="0" y="0" name="siro"]
[w]
[free name="siro" layer=3]
[quake count="3" time="300" hmax="50" vmax="0"]
[live2d_fadeout time=50]
[live2d_hide name="aho" time=50]
[live2d_lion_touroku]
;[chara_show name="lioness" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#ライオネス	
「てんめぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇっ！！！！！！！！」[p]
#
[stopbgm]
[live2d_lion_show_sekkin]
[lioness_face_ikari]
[live2d_fadein time=500]
;se
;#クライスト消える
#ライオネス	
「俺はお前のことはなあ、少しは信用してもいいかって思い始めてたんだぞ！！」[p]
#
[lioness_face_otikomi]
#ライオネス	
「それを、こんな・・・」[p]
#
#&f.name	
「ライオネス・・・」[p]
#

[lioness_face_sinnpai]
#ライオネス	
「[name]！大丈・・・」[p]
;#赤面
[lioness_face_odoroki_sekimen]
#&f.name	
（えっ）[p]
#
#ライオネス	
「おっ、おまお前、その・・・な、なんか、シーツでもなんでもいいから羽織れ！！」[p]
#
#&f.name	
「あっ、あ・・・ごめんなさいっ」[p]
#
#&f.name	
（ライオネス顔真っ赤・・・こ、こっちも恥ずかしい・・・）[p]
#
[lioness_face_yokome_otikomi]

[live2d_hide name="lioness" time=500]
[config_false]
[kra_tatie_touroku]
[chara_show name="kra" storage="&f.kra_metoji" top=0 left=-70]
#クライスト	
「いきなり殴ることはないだろ？」[p]
#
[lioness_tatie_touroku]
[lion_para_kioku]
[chara_on][chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=400]
#ライオネス	
「殴られて当然のことをお前がしてんだろーが！！」[p]
#

[kra_tatie_normal]
#ライオネス	
「とにかく[name]、帰るぞ！！ここはお前がいていい場所じゃねえ！！」[p]
#

#&f.name	
「で、でも仕事が・・・捜査が」[p]
#

#ライオネス	
「んなもん他のやつにやらせりゃいい！！」[p]
#

[kra_tatie_metoji]
#クライスト	
「やっぱり訳ありだったんじゃないか。それならそうと最初から言えばいいのに」[p]
#


[lioness_tatie_udekumi]
#&f.name	
「く、クライストさん・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「まああの場じゃ言いにくそうだったから？ここに連れてきたんだけど」[p]
#
#&f.name	
（え？じゃあさっきのは・・・）[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「お前の場合それだけじゃねーだろが」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「え？だって女の子がそんな格好してたら、
[kra_tatie_smile]
男としては礼儀ってものがあるでしょ」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「ねえよ！！馬鹿野郎が！！」[p]
#

#&f.name	
「ら、ライオネス、落ち着いて・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「そうだよー、どうどう」[p]
#

#ライオネス	
「馬扱いすんな！」[p]
#
[lioness_tatie_akireru]

[kra_tatie_normal]

#クライスト	
「ともあれ、[name]ちゃんの話を聞こうか。アルバイトじゃないんだろ？」[p]
#
#&f.name	
「う、うん・・・その、実は・・・」[p]
#
[chara_hide_all time=500]
[anten]
[bg storage="ikagawa_room.jpg"]

;#]
[chara_show name="kra" top=0 left=320]
[lioness_tatie_show_left]
#クライスト	
「なるほどね、
[kra_tatie_yokome]
それでグレッグ団長に頼まれたんだね」[p]
#
#&f.name	
「うんでも、どうやったら調べられるのかなって・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「だからってお前がこんな店で・・・」[p]
#
[kra_tatie_normal]
#クライスト	
「簡単だよ、俺とライオネスがお客になって、それとなく聞き出せばいい」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「なっ・・・お、俺がかよ！？」[p]
#
[kra_tatie_metoji]
#クライスト	
「騎士団としての仕事なんだろ？それならちゃんとやらなきゃ」[p]
#
#&f.name	
「そっか・・・お客のほうでも何か聞けることがあるかもだしね」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「まじか・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「微力ながら俺も協力させてもらうよ、さあがんばろう、ライオネス」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「・・・・・・」[p]
#
#&f.name	
「ありがとう、クライストさん！」[p]
#

[lioness_tatie_akireru]
#ライオネス	
「・・・・・・っ・・・わーった、わーったよ！！」[p]
#
;暗転
[chara_hide_all][chara_off]
[anten]
[bg storage="ikagawa_store.jpg"]
[bg storage="ikagawa_room.jpg"]
#&f.name	
（よし、休憩時間になった・・・ちょっと聞いてみようかな）[p]
#
#&f.name	
「あ、あの・・・」[p]
#
#女	
「なあに？新人ちゃん？接客、少しは慣れた？当日からなんて災難ねえ」[p]
#
#&f.name	
「まあなんとかボチボチ・・・」[p]
#
#女	
「私もここ連れてこられたときは、ここで毎日ないてたものよ・・・でも今は、諦めがついたけど」[p]
#
#&f.name	
（連れてこられ・・・って・・・）[p]
#
#&f.name	
「そ、その話、くわしく聞かせてください！」[p]
#
#女	
「えっ？」[p]
#
;暗転
[anten]
#&f.name	
「そう・・・だったんですか」[p]
#
#女	
「無理やりってわけじゃあないのよ。親がお金がなくてどうしようもなかったとか、事情がある子たちばかりだよ」[p]
#
#&f.name	
（そうなのか・・・）[p]
#
#女	
「でも当人たちにとっては、ほとんど無理やりのようなものだから・・・かわいそうだけど」[p]
#
#&f.name	
（一見平和に見える王都でも、こういう人たちは多いんだな・・・）[p]
#
#女	
「こんな場所でもね、必要としてる人間はいるのよ。私みたいにね」[p]
#
#&f.name	
「・・・」[p]
#

[bg storage="ikagawa_store.jpg"]

#&f.name	
（どうするのがいいのかなあ・・・）[p]
#

[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=400]
#ライオネス	
「・・・おい・・・なんか、わかったか・・・」[p]
#
#&f.name	
「あ・・・」[p]
#
;[kra_tatie_show_left]
[chara_show name="kra" left=-70 top=0]
#クライスト	
「支配人には[name]ちゃんのこと、事情を話しておいたよ。かなり参ってたけど、まあ納得はしてもらえたみたい」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「なんかこう・・・あれだな、親の金の代わりに働いてるって話をしてたな・・・」[p]
#
#&f.name	
（ライオネス、頑張ったんだね・・・）[p]
#

[kra_tatie_metoji]
#クライスト	
「そうそう。俺、何人かこの店の子身請けしたりしてるし」[p]
#
#&f.name	
「そ、そうだったの・・・身請け？って？」[p]
#
[kra_tatie_normal]
#クライスト	
「女の子が働いて稼ぐだけのお金を、支払うってことだよ」[p]
#
#&f.name	
「そうなんだ・・・クライストさん、そんなことを」[p]
#

[kra_tatie_yokome]
#クライスト	
「うん。相手が望んだ場合だけだけどね」[p]
#
#&f.name	
「とりあえず・・・実情はわかったから、あとはグレッグ団長に報告なのかな・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「なんか、聞いてた話と違う感じだったな」[p]
#
#&f.name	
「そうだね、てっきり、本当に勝手に誘拐されてきて働かされているのかと思ってたけど・・・」[p]
#
[kra_tatie_normal]
#クライスト	
「まあ・・・それでも、好きでやってるわけじゃないんだろうしね」[p]
#
#&f.name	
「うん・・・ああいう人たちが、少しでも減ったらいいな」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「そだな・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「そんじゃまあ、本部に帰るか・・・報告書だのなんだの、やることもあるし」[p]
#


[if exp="f.krakonkando>49"]
[kra_tatie_smile]
#クライスト	
「それじゃ俺も」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「お前は店で遊んでればいいだろが」[p]
#
[kra_tatie_mihiraki]
#クライスト	
「えっなに？俺がいるとまずいの？」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「ああ？・・・
[lioness_tatie_kimazui]
ちっ・・・めんどくせえな・・・」[p]
#

[kra_tatie_smile]
#クライスト	
「あーやっぱりそういうこと」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「うるせえ！」[p]
#
#&f.name	
「？？？」[p]
#
[else]
[kra_tatie_smile]
#クライスト
「それじゃ俺はもうちょっと遊んでから帰るねー」[p]
#
[lioness_tatie_akireru]
#ライオネス
「どーせ朝までかえんねえんだろ？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト
「あ、ばれた？
[kra_tatie_smile]
あはは、それじゃ」[p]
#
[lioness_tatie_kimazui]
#ライオネス
「ちっ、相変わらずだな」[p]
#
#&f.name
「クライストさん・・・」[p]
#
[endif]
[chara_hide_all]
[chara_off]
[jump target=*dancho_houkoku]




;#ランスロット
;裏通り
*tasuke_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.glif_sub_event_tasuke=1"]
[jump target=*rans_glif_uradoori]
*tasuke_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.rans_sub_event_tasuke=1"]

*rans_glif_uradoori
[anten]
[bg storage="creru_uradoori_yuu.jpg"]
[playse storage="zawameki_soto.ogg"]
[glif_tatie_touroku]
[rans_tatie_touroku]

[rans_para_kioku]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=-70]
[chara_on][chara_show name="glif" width="570" height="743" top=10 left=360]


[glif_tatie_mehuse]
#グリフ	
「・・・しかし隊長、本当なんでしょうか、あの噂・・・」[p]
#
[rans_tatie_yokome]
#ランスロット	
「それを今から確かめるんだろう。本当だとしたら、王宮のスキャンダルだな」[p]
#
#グリフ	
「・・・」[p]
#
[glif_tatie_normal]
#グリフ	
「ウェルム団長が、よく行ってるお店なんですよね・・・」[p]
#
[rans_tatie_mehuse]
#ランスロット	
「そうだな・・・人の趣味に口を出すつもりはないが、あまり公言できるようなものでもないな」[p]
#
[glif_tatie_mehuse]
#グリフ	
「・・・」[p]
#
[chara_hide_all]
[anten]
[bg storage="creru_uradoori_yuu.jpg"]


#男	
「いらっしゃいませ！今日もかわいい子が揃ってますよ！」[p]
#
[chara_on][chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=-70]
[chara_on][chara_show name="glif" width="570" height="743" top=10 left=360]


#ランスロット	
「いやその、我々は・・・」[p]
#
#男	
「本日は[name]ちゃんて新しい子が入ったんですよ。

[rans_tatie_mihiraki]
そろそろ先方様のことが終わる頃だと思いますので、お客様もよろしければ・・・」[p]
#
[glif_tatie_mihiraki]
#グリフ	
「えっ」[p]
#
[rans_tatie_sinkoku]
#ランスロット	
「[name]だと？」[p]
#

[glif_tatie_sinpai]
#グリフ	
「先方様の・・・「こと」・・・って・・・」[p]
#

[if exp="f.glif_sub_event_tasuke==1"]
[playbgm storage="struggle.ogg"]
[playse storage="yukahasiru_onjin.ogg"]
[glif_tatie_ketui]
[chara_hide name="glif"]
#ランスロット
「グリフ！」[p]
#
[chara_hide_all]
[else]

[rans_tatie_ikari]
[playbgm storage="struggle.ogg"]
[playse storage="yukahasiru_onjin.ogg"]
[chara_hide name="rans"]
[glif_tatie_mihiraki]
#グリフ	
「あっ、隊長！！」[p]
#
[chara_hide_all time=50]
[endif]

[bg storage="ikagawa_store.jpg" time=50]
[stopse]
#男	
「お、お客様困ります！！勝手に・・・」[p]
#
[chara_show name="rans" storage="rans_tatie/rans_ikari.gif" top=20]

#ランスロット	
「その『先方様』の使っている部屋はどこだ？」[p]
#
#男	
「いえ、それは・・・」[p]
#
#ランスロット	
「答えろ！！」[p]
#
[chara_hide_all time=50]	
;暗転
[anten]
[bg storage="ikagawa_room_t.jpg"]
[if exp="f.glif_sub_event_tasuke==1"]
#&f.name	
（助けて・・・グリフ・・・）[p]
#
[else]
#&f.name	
（助けて・・・ランスロット・・・）[p]
#
[endif]
[live2d_fadein time=500]
[aho_face_normal_majime]
[aho_eyes_right]
[playse storage="crash20_d_macchi.ogg"]
[live2d_hide name="aho"]
[live2d_fadeout time=50]
;se
[bg storage="ikagawa_room.jpg"]
[if exp="f.glif_sub_event_tasuke==1"]
[live2d_glif_touroku]

[live2d_show name="glif_r" y=-3.0 scale=6.5]
[stopbgm]
[glif_exp_ketui]
[live2d_fadein time=500]

#グリフ	
「[name]さん！！」[p]

#

[else]
[live2d_rans_touroku]

[live2d_show name="rans2" y=-3.0 scale=6.5]
[stopbgm]
[rans_exp_ikari]
[live2d_fadein time=500]

#ランスロット	
「貴様あああああああああああああああああああああああああああ！！！」[p]

#
;se
[endif]
[live2d_fadeout time=500]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト	
「あーあ、これからってとこだったのに」[p]

#
[chara_hide_all time=500]

[live2d_fadein time=500]

[if exp="f.glif_sub_event_tasuke==1"]

[glif_exp_tere]
[glif_eyes_right]
[glif_head_right_x]
[glif_head_under_y]
#グリフ
「あっ・・・あの・・・これをどうぞ」[p]
#


[playse storage="hukukosure_onjin.ogg"]
#&f.name
「あ、ありがとう・・・」[p]
#

[glif_head_normal]
[glif_exp_ketui]
#グリフ
「どういうことか、説明してもらえますか」[p]
#

[live2d_fadeout time=50]
[chara_show name="kra" storage="&f.kra_yareyare" top=20 left=130]
#クライスト
「いやいや、説明するまでもないよね、これ」[p]
#

[chara_hide name="kra" time=50]

[glif_head_under_y]
[glif_exp_mehuse_muzukasii]
[live2d_fadein time=500]
#グリフ
「っ・・・なんて下衆な」[p]
#

[glif_exp_mehuse]
#グリフ
「嫌がる[name]さんを無理やり・・・」[p]
#

#&f.name
「ち、ちが・・・」[p]
#
#&f.name
（ん？半分当たってる？）[p]
#

[glif_head_normal]
[glif_exp_ketui]
#&f.name
「え、ええとともかくグリフ、これには事情が・・・」[p]
#
[live2d_fadeout time=50]
[chara_show name="kra" storage="&f.kra_yokome" top=20 left=130]
#クライスト
「あ、やっぱりそうだったんだ。アルバイトなんかおかしいなと思ってたんだよね」[p]
#
[kra_tatie_normal]
#クライスト
「だからここに連れてきたのに」[p]
#
#&f.name
（え・・・？最初から気付いてたの？じゃあさっきのは・・・）[p]
#

[chara_hide_all time=50]
[live2d_fadein time=50]
[glif_exp_metoji]
#グリフ
「っ・・・」[p]
#
[glif_arms_kamae]
[playse storage="kenkamaeru_onjin.ogg"]
[wait time=1000]
[live2d_fadeout time=50]
[chara_show name="kra" storage="&f.kra_mihiraki" top=20 left=130]
#クライスト
「え？なに？物騒だなあ」[p]
#
[chara_hide name="kra" time=50]
[rans_tatie_touroku]
[chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=20 left=-70]
#ランスロット
「グリフ、少し落ち着け」[p]
#
[chara_on][chara_show name="glif" width="570" height="743" top=10 left=360]
#グリフ
「隊長・・・」[p]
#
#&f.name
「ランスロット・・・」[p]
#
[rans_tatie_mihiraki]
#ランスロット
「っ・・・[name]・・・その姿は」[p]
#
#&f.name
「え、ええと・・・」[p]
#
[rans_tatie_ikari]
#ランスロット
「やはり、ふたりで八つ裂きにするか」[p]
#

[glif_tatie_kamae]
#グリフ
「はい！」[p]
#
#&f.name
「えっ、えええ！！？？」[p]
#
[chara_hide_all time=50]
[chara_show name="kra" storage="&f.kra_metoji" top=20 left=130 time=50]
#クライスト
「ちょっと待って、八つ裂きはいいけど店の女の子たちにめいわくがかかるよ」[p]
#

#&f.name
（八つ裂きはいいんだ・・・）[p]
#

[chara_hide name="kra" time=50]

[chara_show name="rans" storage="rans_tatie/rans_ikari.gif" top=20 left=-70]

[chara_on][chara_show name="glif" storage="glif_tatie/glif_mehuse.gif" width="570" height="743" top=10 left=360]
#グリフ
「・・・・・・」[p]
#
#ランスロット
「・・・・・・」[p]
#

#&f.name
「で、でもグリフ、どうしてこんなところに？ランスロットも・・・」[p]
#
[rans_tatie_yokome]
#ランスロット
「この店でさらわれてきて無理やり働かされている女性たちがいると、王宮へ知らせがきたんだ」[p]
#
[rans_tatie_metoji]
#ランスロット
「父上は聞く耳を持たなかったが、私個人の判断で調査にきた」[p]
#

#&f.name
「あ、それ、地方騎士団にもきてたんだよ！それで私も調べに・・・」[p]
#

#&f.name
「王宮関係の人とつながりのあるお店だから、地方騎士団では調査に入れなくて・・・」[p]
#
[chara_hide_all time=50]

[chara_show name="kra" time=50 top=20 left=130]
#クライスト
「あ、それで店員として来てたんだ」[p]
#
[chara_hide name="kra" time=50]

[chara_show name="rans" time=50 top=20]
#ランスロット
「グレッグ団長も一体なにを考えているんだ・・・」[p]
#

#&f.name
「で、でも無理やりじゃなくて、私が自分からやるって言ったんだよ」[p]
#
[rans_tatie_sinnpai]
#ランスロット
「こういう店だということを知っていてか？」[p]
#

#&f.name
「え・・・えーと」[p]
#

[rans_tatie_mehuse]
#ランスロット
「はあ・・・」[p]
#
[chara_hide name="rans" time=50]
[chara_show name="kra" time=50 top=20 left=130]
#クライスト
「まあ、いいんじゃない？ちょうど俺に会えたし、他の客だったら本当になにされたかわかんないよ？」[p]
#

[chara_hide name="kra" time=50]
[chara_on][chara_show name="glif" width="570" height="743" time=50 top=10]

#グリフ
「あなたでも同じことをしたんじゃないんですか？」[p]
#
#クライスト
「やだなあ未遂だよ未遂。本気じゃないって」[p]
#
[glif_tatie_mehuse]
#グリフ
「っ・・・」[p]
#
#&f.name
「こ、ここで喧嘩してる場合じゃないよ！」[p]
#
[chara_hide name="glif"]
[chara_show name="kra" top=20 left=130 time=50]
#クライスト
「そうそう、目的は一緒だったんだし、まずは調べないと」[p]
#
[chara_hide_all time=50]
[chara_show name="rans" storage="rans_tatie/rans_ikari.gif" top=20 left=-70]

[chara_on][chara_show name="glif" storage="glif_tatie/glif_mehuse.gif" width="570" height="743" top=10 left=360]
#グリフ
「っ・・・」[p]
#

[rans_tatie_yokome]
#ランスロット
「グリフ、今はおさえろ。仕事が済めば、煮るなり焼くなり・・・」[p]
#
#&f.name
「えっ、えええ・・・」[p]
#
[glif_tatie_ketui]
#グリフ
「・・・わかりました」[p]
#
[rans_tatie_metoji]
#ランスロット
「そうだな・・・不本意だが、我々も協力させてもらう」[p]
#

[rans_tatie_normal]
#ランスロット
「私はグリフと一緒に、店の客として振る舞おう」[p]
#

#&f.name
「ランスロット、グリフ、ありがとう・・・」[p]
#
[rans_tatie_sinnpai]
[glif_tatie_normal_warai]
[rans_tatie_yokome]
#ランスロット
「行くぞ」[p]
#
[chara_hide_all]
[jump target=*rans_glif_sousa]

[else]

#ランスロット	
「さっさとそこから離れろ！っ・・・！」[p]

#
#&f.name	
「ら、ランスロット・・・」[p]
#
[rans_exp_mihiraki]
[rans_head_left_x]
[rans_body_left_x_half]
[rans_exp_sekimen_yokome]

#ランスロット	
「こっ・・・これでも羽織っておけ」[p]
#

[playse storage="hukukosure_onjin.ogg"]
[rans_body_no_manto]
;（ランスマントなし）[p]

#
#&f.name	
「あ、ありがとう・・・」[p]

#
[rans_exp_ketui]
[rans_head_normal]
[rans_unaduki]

#ランスロット	
「・・・お前は少し無防備すぎるぞ、
[rans_arms_udekumi]
夜の裏通りは危ないからと昔からあれほど・・・」[p]

#
#&f.name	
「え、ええとランスロット、これには事情が・・・」[p]

#

[live2d_fadeout time=50]
[kra_tatie_show]
#クライスト	
「あ、やっぱりそうだったんだ。
[kra_tatie_yokome]
アルバイトなんかおかしいなと思ってたんだよね」[p]

#
[kra_tatie_metoji]
#クライスト	
「だからここに連れてきたのに」[p]

#
#&f.name	
（え・・・？最初から気付いてたの？じゃあさっきのは・・・）[p]

#
[chara_hide_all time=50]
[rans_arms_normal]
[live2d_fadein time=500]
#ランスロット	
「・・・」[p]

#

[live2d_fadeout time=50]
[playse storage="ranskennuku_onjin.ogg"]
[w]
[playse storage="ranskennuku_onjin.ogg"]
[rans_arms_kamae]
[rans_exp_normal]
[rans_exp_ikari]
[rans_body_under_y]
[rans_head_under_y]
[live2d_fadein time=50]
[playse storage="kenkamaeru_onjin.ogg"]
;剣抜く
[wait time=2000]
[live2d_fadeout time=1000]

[chara_show name="kra" storage="&f.kra_mihiraki" top=0 left=130 time=50]
#クライスト	
「ん？え？なに？」[p]

#
[chara_hide_all time=50]
[chara_show name="glif" storage="glif_tatie/glif_mihiraki.gif" width="570" height="743" top=10]
#グリフ	
「た、隊長！！
[glif_tatie_ketui]
気持ちはわかりますが落ち着いてください！！」[p]

#
[chara_hide_all time=50]
[live2d_fadein time=50]
#ランスロット	
「・・・っ・・・」[p]

#
[rans_body_normal]
[rans_head_right_x]
#ランスロット	
「っ・・・そうだな・・・
[rans_exp_metoji]

このような輩、切り捨てる価値もない・・・っ」[p]
#
[playse storage="katana-storage1_koukaonlabo.ogg"]

#
[rans_head_normal]
[rans_head_under_y]
[rans_arms_normal]

#&f.name
[playse storage="katakata_onjin.ogg"]	
（・・・手、すごい震えてるけど、大丈夫・・・？）[p]

#
[stopse]
#&f.name	
「でもランスロット、
[rans_exp_metoji]
[rans_exp_normal]
こんなところにどうして？グリフまで・・・」[p]

#
[rans_head_right_x]
[rans_head_right_z]
[rans_body_right_z_half]
[rans_eyes_right]
#ランスロット	
「この店でさらわれてきて無理やり働かされている女性たちがいると、王宮へ知らせがきたんだ」[p]

#
[rans_eyes_normal]
[rans_body_normal]
[rans_head_normal]
#ランスロット	
「父上は聞く耳を持たなかったが、私個人の判断で調査にきた」[p]

#
[rans_unaduki]
#&f.name	
「あ、それ、地方騎士団にもきてたんだよ！それで私も調べに・・・」[p]

#
#&f.name	
「王宮関係の人とつながりのあるお店だから、地方騎士団では調査に入れなくて・・・」[p]

#
[live2d_hide name="rans2"]


;[kra_tatie_show_right]
[chara_show name="kra" left=320 top=20]

#クライスト	
「あ、それで店員として来てたんだ」[p]

#
[chara_on][chara_show name="rans" storage="rans_tatie/rans_mehuse.gif" top=0 left=-70]
#ランスロット	
「グレッグ団長も一体なにを考えているんだ・・・」[p]
#
#&f.name	
「で、でも無理やりじゃなくて、私が自分からやるって言ったんだよ」[p]
#

[rans_tatie_mayuhisome]
#ランスロット	
「こういう店だということを知っていてか？」[p]

#
#&f.name	
「え・・・えーと」[p]

#
[rans_tatie_sinnpai]
#ランスロット	
「はあ・・・」[p]

#
[kra_tatie_yokome]
#クライスト	
「まあ、いいんじゃない？ちょうど俺に会えたし、他の客だったら本当になにされたかわかんないよ？」[p]

#
[rans_tatie_yokome]
#ランスロット	
「お前でも変わらんだろう」[p]

#

[kra_tatie_smile]
#クライスト	
「やだなあ未遂だよ未遂。本気じゃないって」[p]

#
[rans_tatie_ikari]
#ランスロット	
「っ・・・」[p]

#
#&f.name	
「こ、ここで喧嘩してる場合じゃないよ！」[p]

#
[kra_tatie_yokome]
#クライスト	
「そうそう、目的は一緒だったんだし、まずは調べないと」[p]

#
[rans_tatie_metoji]
#ランスロット	
「お前は他の店員と遊んでいればいい。[name]、ともかく行くぞ」[p]
#

#&f.name	
「だ、ダメだよまだ・・・仕事が済んでない！」[p]

#
[rans_tatie_sinnpai]
#ランスロット	
「お前は・・・真面目なのはいいが、こう言った状況ならべつだ」[p]

#
#&f.name	
「調査なら、お店の女の子たちに聞くのがいいと思う！私なら、みんな警戒せずに話してくれそうだし・・・」[p]

#
[kra_tatie_akireru]
#クライスト	
「そうだねえ、いきなり硬い顔した王宮騎士に尋問されても、本当のことなんか話せないんじゃない？」[p]

#
#&f.name	
「グレッグ団長もそれを見越して、店員になって欲しいって言ったんだろうし」[p]

#

[rans_tatie_mehuse]
#ランスロット	
「・・・」[p]

#
[config_false]
[chara_hide name="kra" time=50]

[chara_on][chara_show name="glif" width="570" height="743" top=10 left=360]
#グリフ	
「隊長・・・」[p]

#

[rans_tatie_metoji]
#ランスロット	
「・・・わかった。だが私も、協力はさせてもらう」[p]

#
[rans_tatie_yokome]
#ランスロット	
「不本意だが・・・こいつ・・・クライストと共に店の客として振る舞おう」[p]

#
#&f.name	
「ランスロット・・・ありがとう」[p]

#
[glif_tatie_mehuse]
#グリフ	
「あの隊長・・・僕もですよね？」[p]

#

[rans_tatie_normal]
#ランスロット	
「無論だ。お前は、こう言った店は初めてか？」[p]

#

[glif_tatie_mihiraki]
#グリフ	
「えっ、隊長は初めてじゃないんですか？」[p]

#
[rans_tatie_metoji]
#ランスロット	
「・・・・・・」[p]

#
#&f.name	
（ランスロット・・・もしかして？）[p]

#
[chara_hide_all time=50]
[chara_show name="kra" storage="&f.kra_smile" top=20 left=130]
#クライスト	
「うん、男なら、誰でも通る道だよね」[p]

#

[chara_hide_all time=50]
[chara_show name="rans" storage="rans_tatie/rans_metoji.gif" top=0 left=-70]
[chara_show name="glif" storage="glif_tatie/glif_mihiraki.gif" width="570" height="743" top=10 left=360]

#グリフ	
「ええええ・・・」[p]

#
[rans_tatie_yokome]
#ランスロット	
「っ・・・ともかく、行くぞ」[p]

#

[chara_hide_all]

[endif]


*rans_glif_sousa
[anten]
　[wait time=1000]
[bg storage="ikagawa_room.jpg"]
#&f.name	
（よし、休憩時間になった・・・ちょっと聞いてみようかな）[p]

#
#&f.name	
「あ、あの・・・」[p]

#
#女	
「なあに？新人ちゃん？接客、少しは慣れた？当日からなんて災難ねえ」[p]

#
#&f.name	
「まあなんとかボチボチ・・・」[p]

#
#女	
「私もここ連れてこられたときは、ここで毎日ないてたものよ・・・でも今は、諦めがついたけど」[p]

#
#&f.name	
（連れてこられ・・・って・・・）[p]

#
#&f.name	
「そ、その話、くわしく聞かせてください！」[p]

#
#女	
「えっ？」[p]

#
[anten]
[bg storage="ikagawa_room.jpg"]
;暗転
#&f.name	
「そう・・・だったんですか」[p]

#
#女	
「無理やりってわけじゃあないのよ。親がお金がなくてどうしようもなかったとか、事情がある子たちばかりだよ」[p]

#
#&f.name	
（そうなのか・・・）[p]

#
#女	
「でも当人たちにとっては、ほとんど無理やりのようなものだから・・・かわいそうだけど」[p]

#
#&f.name	
（一見平和に見える王都でも、こういう人たちは多いんだな・・・）[p]

#
#女	
「こんな場所でもね、必要としてる人間はいるのよ。私みたいにね」[p]

#
#&f.name	
「・・・」[p]

#

[anten]

[bg storage="ikagawa_store.jpg"]
#&f.name	
（どうするのがいいのかなあ・・・）[p]

#
[if exp="f.glif_sub_event_tasuke==1"]

[glif_tatie_show]
#グリフ
「[name]さん、何かわかりましたか」[p]
#

#&f.name
「あ・・・」[p]
#

[chara_hide name="glif" time=50]
[chara_show name="kra" storage="&f.kra_yokome" top=20 left=130 time=50]
#クライスト
「支配人には[name]ちゃんのこと、事情を話しておいたよ。かなり参ってたけど、まあ納得はしてもらえたみたい」[p]
#

#&f.name
「あ、ありがとうクライストさん・・・ランスロットは？」[p]
#
[chara_hide_all time=50]


[chara_show name="kra" storage="&f.kra_yokome" top=20 left=-70 time=50]
[chara_on][chara_show name="glif" storage="glif_tatie/glif_mehuse.gif" time=50 width="570" height="743" top=10 left=360]

#グリフ
「隊長は・・・その、女性陣につかまってしまって・・・」[p]
#
#&f.name
「え？」[p]
#
[kra_tatie_smile]
#クライスト
「いやあ大人気だよねー、俺嫉妬しちゃう」[p]
#

#&f.name
（はあ・・・）[p]
#
[glif_tatie_sinpai]
#グリフ
「聞いたところによると、家など事情のある女性たちが多く働いているみたいですね」[p]
#

#&f.name
「あ、うん・・・そうみたい」[p]
#
[kra_tatie_metoji]
#クライスト
「そうそう。俺、何人かこの店の子身請けしたりしてるし」[p]
#

#&f.name
「そ、そうだったの・・・身請け？って？」[p]
#
[kra_tatie_normal]
#クライスト
「女の子が働いて稼ぐだけのお金を、支払うってことだよ」[p]
#

#&f.name
「そうなんだ・・・クライストさん、そんなことを」[p]
#
[kra_tatie_bisyou_youen]
#クライスト
「うん。相手が望んだ場合だけだけどね」[p]
#
[glif_tatie_normal]
#グリフ
「・・・」[p]
#

#&f.name
「とりあえず・・・実情はわかったから、あとはグレッグ団長に報告なのかな・・・」[p]
#

[glif_tatie_ketui]
#グリフ
「僕も隊長と王宮に戻って、陛下に報告します」[p]
#
[glif_tatie_normal_warai]
#グリフ
「聡明な陛下のことですから、方策を立ててくれると思います」[p]
#


#&f.name
「そうだね、てっきり、本当に勝手に誘拐されてきて働かされているのかと思ってたけど・・・」[p]
#
[glif_tatie_mehuse]
#グリフ
「ええ・・・でも。本人が望んだことではないはずです」[p]
#

#&f.name
「うん・・・ああいう人たちが、少しでも減ったらいいな」[p]
#
[glif_tatie_normal]
#グリフ
「そうですね・・・」[p]
#
[kra_tatie_yokome]
#クライスト
「・・・」[p]
#

[glif_tatie_normal_warai]
#グリフ
「では、僕は、隊長と一緒に王宮へ戻ります。
[glif_tatie_sinpai]
送れなくて、すみませんが・・・」[p]
#

#&f.name
「うん、ありがとう、グリフ」[p]
#
[glif_tatie_ketui]
#グリフ
「・・・・・・・・」[p]
#

#&f.name
（・・・グリフ？）[p]
#
[kra_tatie_yareyare]
#クライスト
「やだなあ、そんな疑い深い顔しなくても、なにもしないって」[p]
#

#グリフ
「到底信用できません。やはり、隊長には頑張ってもらって僕が[name]さんを・・・」[p]
#

#&f.name
（・・・でも、あんなことはあったけど、結局、力になってくれたしな・・・クライストさん）[p]
#

#&f.name
「グリフ、クライストさんなら大丈夫だよ。グレッグ団長も信頼してるし」[p]
#

[glif_tatie_mehuse]
#グリフ
「・・・しかし」[p]
#

#&f.name
「大丈夫、私だってランスロットに身を守る術は教わってるから」[p]
#

[glif_tatie_normal]
#グリフ
「[name]さん・・・」[p]
#

[glif_tatie_normal_warai]
#グリフ
「・・・わかりました。では、十分気をつけてください」[p]
#

#&f.name
「ありがとう、グリフ」[p]
#
[chara_hide_all time=50]

[kra_tatie_show_tall]
#クライスト
「さあてじゃあ、俺たちも帰ろうか」[p]
#

#&f.name
「クライストさんは・・・お店でまた遊ぶんじゃないの？」[p]
#


[kra_tatie_metoji]
#クライスト
「あのさあ・・・いくらなんでも、こんな夜更に女の子を一人で帰せないよ」[p]
#

#&f.name
「私・・・大丈夫だよ？自分の身は守れるし」[p]
#

[kra_tatie_yokome]
#クライスト
「・・・・・・。
[kra_tatie_bisyou_youen]
ともかく、俺も本部に帰るし、ね？」[p]
#

#&f.name
（大丈夫なのになあ・・・）[p]
#
[chara_hide_all]
[else]
;暗転

[chara_show name="rans" storage="rans_tatie/rans_normal.gif" top=0 left=-70]
[chara_show name="kra" top=20 left=320]
;[kra_tatie_show_right]
#ランスロット	
「[name]、何かわかったか」[p]
#
#&f.name	
「あ・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「支配人には[name]ちゃんのこと、事情を話しておいたよ。かなり参ってたけど、まあ納得はしてもらえたみたい」[p]
#
#&f.name	
「あ、ありがとう、クライストさん・・・グリフは？」[p]
#
[rans_tatie_metoji]
#ランスロット	
「酒にやられたらしい。女性たちに介抱されている」[p]
#
#&f.name	
（大変だったんだな・・・）[p]
#
[rans_tatie_normal]
#ランスロット	
「どうも、家などの事情がある者たちが多く働いているようだな」[p]
#
#&f.name	
「あ、うん・・・そうみたい」[p]
#

[kra_tatie_metoji]
#クライスト	
「そうそう。俺、何人かこの店の子身請けしたりしてるし」[p]
#
#&f.name	
「そ、そうだったの・・・身請け？って？」[p]
#

[rans_tatie_mehuse]
#ランスロット	
「・・・当人が働いて稼ぐだけの金を、第三者が代わりに払うことだ」[p]
#
#&f.name	
「そうなんだ・・・クライストさん、そんなことを」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「うん。相手が望んだ場合だけだけどね」[p]
#
[rans_tatie_metoji]
#ランスロット	
「・・・」[p]
#
#&f.name	
「とりあえず・・・実情はわかったから、あとはグレッグ団長に報告なのかな・・・」[p]
#
[rans_tatie_sinkoku]
#ランスロット	
「私も陛下に報告しておこう。今回のことで、何か方策を立ててもらえるかもしれない」[p]
#
#&f.name	
「そうだね、てっきり、本当に勝手に誘拐されてきて働かされているのかと思ってたけど・・・」[p]
#
[rans_tatie_sinnpai]
#ランスロット	
「だがそれでも、望んだことではないのだろう」[p]
#
#&f.name	
「うん・・・ああいう人たちが、少しでも減ったらいいな」[p]
#
[rans_tatie_mayuhisome]
#ランスロット	
「そうだな・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#
[rans_tatie_metoji]
#ランスロット	
「夜もふけた。私はグリフを連れて王宮へ戻る。
[rans_tatie_normal]
じゃあな。お前も早く帰るんだぞ」[p]
#
#&f.name	
「うん、ありがとう、ランスロット」[p]
#

[rans_tatie_sinnpai]
#ランスロット	
「送れなくて、すまない・・・気を付けろよ。
[rans_tatie_normal]
もしこいつがあやしい動きをしたら、容赦無く斬り捨てろ」[p]
#

[kra_tatie_mihiraki]
#&f.name	
「えっ・・・ええっ！！？？」[p]
#

[kra_tatie_yareyare]
#クライスト
「信用ないなあ、そんなこと釘刺さなくてもなにもしないって」[p]
#

[rans_tatie_mayuhisome]
#ランスロット
「あんなことがあったあとで信用するほど、私は腑抜けてはいない」[p]
#
[kra_tatie_bisyou_youen]
#クライスト
「でも、俺が本当にそうはしないって、実はわかってるよね？」[p]
#

[rans_tatie_yokome]
#ランスロット
「・・・」[p]
#

[rans_tatie_metoji]
#ランスロット
「食えない男だ」[p]
#

[kra_tatie_smile]
#クライスト
「それは、お互い様」[p]

[rans_tatie_metoji]
#ランスロット
「・・・」[p]
#
[playse storage="walk-leather-shoes1_koukaonlabo.ogg"]
[config_true]
[chara_hide name="rans"]

#&f.name
（ランスロット・・・）[stopse][p]
#

[kra_tatie_normal]
#クライスト	
「さあてじゃあ、俺たちも帰ろうか」[p]
#
#&f.name	
「クライストさんは・・・お店でまた遊ぶんじゃないの？」[p]
#
[kra_tatie_metoji]
#クライスト	
「あのさあ・・・いくらなんでも、こんな夜更に女の子を一人で帰せないよ」[p]
#

#&f.name	
「私・・・大丈夫だよ？自分の身は守れるし」[p]
#

[kra_tatie_yareyare]
#クライスト	
「・・・・・・。
[kra_tatie_bisyou_youen]
ともかく、俺も本部に帰るし、ね？」[p]
#
#&f.name	
（大丈夫なのになあ・・・）[p]
#

[endif]
[chara_hide_all]	
[jump target=*dancho_houkoku]


	


*osoware_3

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;とりあえず一発殴る
[playse storage="naguru_koukaonlabo.ogg"][quake count="3" time="300" vmax="50"]
[live2d_fadein time=50]
[aho_face_mihiraki]
#クライスト	
「っ・・・
[aho_face_tomadoi]
いたた・・・ひどいなあいきなり殴りかかるなんて」
[aho_face_komari]
[p]
#
#&f.name	
（今！）[p]
#
[live2d_fadeout time=50]
[playse storage="hukukosure_onjin.ogg"]
[bg storage="ikagawa_room.jpg"]
[live2d_kra_mod_sekkin]
[live2d_fadein time=1000]
[aho_face_mihiraki]
#クライスト	
「あれ？」[p]
#
#&f.name	
「そ、それ以上近づかないで！」[p]
#
[aho_head_right_z]
[aho_head_under_y]
[aho_face_komari]
#クライスト	
「[name]ちゃん・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#
#&f.name	
（そんな顔されると罪悪感・・・でも、またいつ襲われるかわかんないし・・・）[p]
#

[aho_head_normal]
[aho_head_above_y]
[aho_head_right_x][aho_face_komari_warai]
#クライスト	
「ごめん、謝るよ。ちょっと、ふざけすぎたよね」[p]
#
#&f.name	
「えっ」[p]
#

[aho_head_normal]
[aho_face_normal_majime]
[aho_arms_udekumi]
#クライスト	
「アルバイトって、嘘だろ？」[p]
#
#&f.name	
「えっ、えーと・・・」[p]
#

[aho_head_right_z]
[aho_face_yokome_majime]
#クライスト	
「俺で良ければ、話聞こうか」[p]
#
#&f.name	
「クライストさん・・・」[p]
#
#&f.name	
（ていうか最初からそれなら、さっきのは・・・）[p]
#
[live2d_fadeout time=1000]
;暗転
;暗転

[anten]
*jijou
[bg storage="ikagawa_room.jpg"]
;
[live2d_fadein time=1000]


#クライスト	
「なるほどね、それでグレッグ団長に頼まれたんだね」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal_majime]
#&f.name	
「うんでも、どうやったら調べられるのかなって・・・」[p]
#

[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
#クライスト	
「簡単だよ、それとなく聞き出せばいい。
[aho_head_right_z]
[aho_eyes_right]
俺、ここの常連だから女の子たちも話してくれるかも」[p]
#

#&f.name	
「（常連・・・）そっか・・・お客のほうでも何か聞けることがあるかもだしね」[p]
#

#&f.name	
「ありがとう、クライストさん」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]

[live2d_fadeout time=1000]
[live2d_hide name="aho"]
[anten]


;暗転
[bg storage="ikagawa_room.jpg"]
#&f.name	
（よし、休憩時間になった・・・ちょっと聞いてみようかな）[p]
#
#&f.name	
「あ、あの・・・」[p]
#
#女	
「なあに？新人ちゃん？接客、少しは慣れた？当日からなんて災難ねえ」[p]
#
#&f.name	
「まあなんとかボチボチ・・・」[p]
#
#女	
「私もここ連れてこられたときは、ここで毎日ないてたものよ・・・でも今は、諦めがついたけど」[p]
#
#&f.name	
（連れてこられ・・・って・・・）[p]
#

#&f.name
「そ、その話、くわしく聞かせてください！」[p]
#
#女	
「えっ？」[p]
#
;暗転
[anten]
[bg storage="ikagawa_room.jpg"]
#&f.name	
「そう・・・だったんですか」[p]
#
#女	
「無理やりってわけじゃあないのよ。親がお金がなくてどうしようもなかったとか、事情がある子たちばかりだよ」[p]
#
#&f.name	
（そうなのか・・・）[p]
#
#女	
「でも当人たちにとっては、ほとんど無理やりのようなものだから・・・かわいそうだけど」[p]
#
#&f.name	
（一見平和に見える王都でも、こういう人たちは多いんだな・・・）[p]
#
#女	
「こんな場所でもね、必要としてる人間はいるのよ。私みたいにね」[p]
#
#&f.name	
「・・・」[p]
#

[anten]
[bg storage="ikagawa_store.jpg"]
	
#&f.name	
（どうするのがいいのかなあ・・・）[p]
#

[kra_tatie_show_tall]
#クライスト
「[name]ちゃん、何かわかった」[p]
#

#&f.name
「あ・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「支配人には[name]ちゃんのこと、事情を話しておいたよ。かなり参ってたけど、まあ納得はしてもらえたみたい」[p]
#

#&f.name	
「あ、ありがとう・・・さっき話を聞いたところだと、事情があるみたいで、仕方なくここではたらいてるって」[p]
#

[kra_tatie_normal]
#クライスト	
「ああうん。そういう子もいるみたいだね。
[kra_tatie_metoji]
俺、何人かこの店の子身請けしたりしてるし」[p]
#
#&f.name	
「そ、そうだったの・・・身請け？って？」[p]
#

[kra_tatie_yokome]
#クライスト	
「女の子が働いて稼ぐだけのお金を、支払うってことだよ」[p]
#
#&f.name	
「そうなんだ・・・クライストさん、そんなことを」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「うん。相手が望んだ場合だけだけどね」[p]
#
#&f.name	
「とりあえず・・・実情はわかったから、あとはグレッグ団長に報告なのかな・・・」[p]
#

#&f.name	
「てっきり、本当に勝手に誘拐されてきて働かされているのかと思ってたけど・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「まあ・・・それでも、好きでやってるわけじゃないんだろうしね」[p]
#
#&f.name	
「うん・・・ああいう人たちが、少しでも減ったらいいな」[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・そうだね・・・」[p]
#
#&f.name	
「とりあえず、本部に帰って報告かな・・・」[p]
#

[kra_tatie_smile]
#クライスト	
「それじゃ俺も」[p]
#

#&f.name	
「クライストさんは・・・お店でまた遊ぶんじゃないの？」[p]
#

[kra_tatie_normal]
#クライスト	
「あのさあ・・・いくらなんでも、こんな夜更に女の子を一人で帰せないよ」[p]
#
#&f.name	
「私・・・大丈夫だよ？自分の身は守れるし」[p]
#
[kra_tatie_yareyare]
#クライスト	
「・・・・・・。
[kra_tatie_bisyou_youen]
ともかく、俺も本部に帰るし、ね？」[p]
#
#&f.name	
（大丈夫なのになあ・・・）[p]

[chara_hide_all]

*dancho_houkoku
[bg storage="dancho_yoru_tasogare.jpg"]

[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
「そうか・・・夜更にご苦労だったな。あとで報告書にまとめて王宮へ送ることにしよう」[p]

[if exp="f.glif_sub_event_tasuke==1&&f.rans_sub_event_tasuke==1"]
#&f.name
「わたし、お店でランスロットに会いました。王宮のほうにも知らせが届いてたみたいで・・・」[p]
#&f.name
「ランスロットも報告するみたいだから、国王陛下も対策を立ててくださるかもしれません」[p]

[dancho_tatie_metoji]
#団長
「わかった。それならなおのこと心強いな。今日はもう疲れただろう、休んでいいぞ」[p]
#&f.name
「はい、失礼します」[p]
[endif]


#団長
「今日はもう疲れただろう、休んでいいぞ」[p]
#&f.name
「はい、失礼します」[p]
[chara_hide_all]


[chara_off][live2d_delete_all][live2d_off]


[jump target=*ikagawa_end]


*ikagawa_end

[jump storage="scenario_2/day_start_event.ks" target=*irai_end]




*kikyou

#&f.name	
（あれ、手紙がきてる！珍しいなあ、誰からだろ・・・）[p]
#

#&f.name	
「お母さんからだ！えーと、なになに・・・」[p]
#

#&f.name	
「・・・・・・今年はあたり年・・・？へ？何が？」[p]
#

#&f.name	
『・・・―ここのところ、テーベの海は毎日のように大漁です。港は大忙しだよ。美味しい煮魚が食べたかったら、たまには家に顔を出しなさい』[p]
#

#&f.name	
（煮魚かあ・・・食べたいなあお母さんの煮魚・・・）[p]
#

#&f.name	
（クレールはこんなだけど、テーベは海を挟んでるから平和なんだね）[p]
#

#&f.name	
「行きたいけど・・・でもまだ街も落ち着いてないしなあ・・・」[p]
#

#&f.name	
「んん？考えてみれば合格の報告もまだお母さんにしてないんだよね・・・」[p]
#

#&f.name	
「一度帰ったほうがいいんだろうけど・・・。ちょっと、団長に相談してみようかな・・・」[p]
#

[anten]
[bg storage="kisidanrouka_tasogare.jpg"]
	
#&f.name	
「ひゃー・・・あんなに快くいいって言うなんて・・・」[p]
#

#&f.name	
（てっきり駄目って言われるかと思ったのになぁ）[p]
#

#&f.name	
（・・・団長、気を使ってくれたのかな・・・もしかして）[p]
#

#&f.name	
「とりあえず、テーベに行く準備しないとね」[p]
#

#&f.name	
（まずは定期便のチケットとって、着替えにあ、あとお土産もいるかな）[p]
#

[playse storage="butukaru_onjin.ogg"]
[quake count="3" time="300" hmax="0" vmax="200"]
;誰かにぶつかる
#&f.name	
「あっ・・・ご、ごめんなさい・・・って」[p]
#
[config_true]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_chottoikari"  height="698" width="456" top=-35 left=0]
#ライオネス	
「[name]・・・お前、ボケっと歩いてんじゃねえよ」[p]
#

#&f.name	
「ライオネス！」[p]
#

[lioness_tatie_normal]
#ライオネス	
「疲れてんのか？・・・団長のとこ、いってきたのか」[p]
#

#&f.name	
「う、うん、ちょっと・・・」[p]
#

#&f.name	
（テーベのことは伏せたほうがいいのかな・・・あ、でも、人手が足りなくなるんだし言っておいたほうが・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「？なんだよ」[p]
#

#&f.name	
「あ、あのねライオネス、明日から・・・」[p]
#
[chara_hide name="lion"]

[anten]
[bg storage="kisidanrouka_tasogare.jpg"]
	
[chara_show name="lion" storage="&f.lion_akireru" height="698" width="456" top=-35 left=0]	
#ライオネス	
「大漁？煮魚？テーベに帰るだあ？」[p]
#

#&f.name	
「う、うん・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・」[p]
#

#&f.name	
（微妙な雰囲気・・・そうだよね、街がこんなときに私・・・）[p]
#

#&f.name	
（やっぱり、また今度にしたほうがいいのかな・・・）[p]
#

#&f.name	
「あ、あのライオネス」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「俺も行く」[p]
#

#&f.name	
「へっ！？」[p]
#

[lioness_tatie_normal]
#ライオネス	
「つうか、行ってやる」[p]
#

#&f.name	
「な、なんで！？だって町が・・」[p]
#


[lioness_tatie_chottoikari]
#ライオネス	
「てめーをテーベにひとりでなんて、危なっかしいにもほどがある」[p]
#

[playse storage="yukahasiru_onjin.ogg"]
[chara_hide name="lion"]
#ライオネス	
「団長に言ってくる！そこで待ってろ！！」[p]
#

;走り去る
#&f.name	
「え、ええ～！！ライオネス！？」[stopse][p]
#
[anten]
[bg storage="kisidanrouka_tasogare.jpg"]

[lioness_tatie_show]	
#ライオネス	
「許可もらった」[p]
#

#&f.name	
（は・・・早すぎ・・・っていうか、団長、ほんとにいい、のかな・・・）[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「俺がチケットとってきてやるから、お前は荷造りでもしてろ」[p]
#

#&f.name	
「え・・・ええ・・・」[p]
#

#ライオネス	
「なんだよ。俺が一緒じゃ嫌なのか？」[p]
#

#&f.name	
「そ、そういう、わけじゃ・・・」[p]
#

#&f.name	
（ないけど・・・展開が速すぎて・・・）[p]
#


[playse storage="walkyuka_onjin.ogg"]
#？	
「[name]！」[p]
#
[lioness_tatie_odoroki]
#&f.name	
「へ？え！」[p]
#
[stopse]
[config_false]
[chara_move name="lion" left="-40"]
[rans_tatie_touroku]
[chara_show name="rans" top=20 left=300]
#ランスロット	
「[name]、ついさっきグレッグ団長から聞いたが、テーベに行くそうだな・・・」[p]
#

[rans_tatie_yokome]
#ランスロット	
「ああ、ライオネスお前も一緒だったか」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「何しにきたんだよ」[p]
#

[rans_tatie_metoji]
#ランスロット	
「[name]が心配だからな。がんばりすぎていないか様子を見に来た」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「・・・」[p]
#

#&f.name	
（ライオネス・・・？）[p]
#

[rans_tatie_sinnpai]
#ランスロット	
「いくら実家に帰るとはいえ、お前ひとりで乗船するとなると・・・少し心配だな」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「ひとりじゃねえ。俺も行くことになってる」[p]
#
[rans_tatie_mihiraki]
#ランスロット	
「お前が？」[p]
#

#ライオネス	
「それなら問題ねえだろ」[p]
#
[rans_tatie_mehuse]
#ランスロット	
「・・・」[p]
#
[rans_tatie_yokome]
#ランスロット	
「いや、しかしライオネスがいるといっても・・・少々不安は残るな」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「どういう意味だよそれ・・・」[p]
#
[rans_tatie_sinkoku]
#ランスロット	
「私も行こう。[name]も正騎士になれたことだし、いずれ母上に挨拶をしないといけないとは思っていた」[p]
#


[if exp="f.b2==1"]
[rans_tatie_normal_warai]
#ランスロット	
「あのとき、約束もしていただろう？」[p]
#

#&f.name	
「あ・・・」[p]
#

#&f.name	
（そっか、そうだよね・・・一緒にいくって騎士になれたお祝いのときに・・・）[p]
#
[lioness_tatie_akireru]
#ライオネス	
「約束だあ？」[p]
#

#&f.name	
「う、うん・・・」[p]
#

[endif]

[lioness_tatie_kimazui]
#ライオネス	
「ちっ・・・」[p]
#

#ランスロット	
「不満そうな顔だな、ライオネス。私がいると何か不都合があるのか」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「ああ？べ、べつに・・・ねえけどよ・・・」[p]
#

#&f.name	
（・・・ライオネス？？？）[p]
#

#&f.name	
「で、でもランスロットは大丈夫なの？王宮でのお仕事とか・・・」[p]
#
[rans_tatie_yokome]
#ランスロット	
「そのあたりはなんとでもなる」[p]
#

#&f.name	
（な・・・なるんだ・・・）[p]
#
[rans_tatie_normal]
#ランスロット	
「・・・お前を母上から預かった以上、母上には礼をつくさなくてはならない」[p]
#
[rans_tatie_mehuse]
#ランスロット	
「仕事が忙しいなどといって後回しにするべき事柄ではないからな」[p]
#

#&f.name	
「ランスロット・・・」[p]
#
[rans_tatie_normal]
#ランスロット	
「さあ、そうと決まればぐずぐずしてはいられないな。
[rans_tatie_metoji]
ライオネス、お前は３人ぶんの乗船券を手配しろ」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「なんで俺・・・。
[lioness_tatie_akireru]
つか、さっきの話もしかして聞いてたのか・・・？」[p]
#
[rans_tatie_metoji]
#ランスロット	
「私は父上に事情を説明してくる。
[rans_tatie_normal_warai]
それじゃあ[name]、明日の朝、王都の門の前でな」[p]
#

#&f.name	
「あっ・・・はい！」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「途中から出てきたくせに仕切りやがって・・・」[p]
#
[rans_tatie_normal]
#ランスロット	
「早く行け。券がなくなるぞ」[p]
#
[lioness_tatie_yareyare]
#ライオネス	
「わーったよ！！」[p]
#
[chara_hide_all]
[anten]

[bg storage="tebe_tasogare.jpg"]
[bg storage="tebe_irain_jikka_tasogare.jpg"]
	
;テーベ
[playse storage="niru_koukaonlabo.ogg"]
#&f.name	
（ううー・・・）[p]
#

#お母さん	
「ほーら、そんなにぐつぐつさせたら魚が煮崩れちまうじゃないか！」[p]
#

#お母さん	
「もうちょっと火加減に気をつけなさい」[p]
#

#&f.name	
「もー！お母さん！」[p]
#

#&f.name	
「なんで外は大漁祭りなのに、私だけ家で煮魚つくらなくちゃならないの！」[p]
#

#お母さん	
「なにいってるんだい、あんただけじゃない、女の人みーんな今日は魚料理の仕込みしてるんだよ」[p]
#

#お母さん	
「干物もつくらなくちゃならないし大忙しさ」[p]
#

#&f.name	
「いつまでも煮魚食べられないじゃない・・・」[p]
#

#お母さん	
「だいじょうぶさ、終わったあとにたっぷり食べられるよ」[p]
#

#&f.name	
（・・・まだ大量に魚があるんだけど、いつ終わるの・・・）[p]
#

#&f.name	
「はあーあ・・・」[p]
#

#&f.name	
（ランスロットとライオネスは、着いた途端街をあげてのおもてなし状態だし・・・）[p]
#

#&f.name	
（仕方ないといえばそうなのかもだけど・・・）[p]
#

[playse storage="nokku_tairakomori.ogg"]
#お母さん	
「・・・おや、お客さんかしら。[name]！鍋から目を離すんじゃないよ！」[p]
#

#&f.name	
「・・・はーい・・・」[p]
#

	
#お母さん	
「あら！！まあまあまあ、ランスロット様、ライオネス様！」[p]
#

#&f.name	
「え？」[p]
#


[rans_tatie_show_left][lioness_tatie_show_right]
#お母さん	
「まだお料理もお酒もたくさんありますのに、どうなされたのですか、こんな狭苦しいところに・・・」[p]
#
[rans_tatie_normal_warai]
#ランスロット	
「いえ、もう十分にいただきました。突然の訪問にもかかわらず、歓迎を感謝いたします」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「てめーのことだから、またこきつかわれてんじゃねーかと思ってよ」[p]
#

#&f.name	
「ランスロット、ライオネス・・・」[p]
#
[lioness_tatie_warai]
#ライオネス	
「おー、うまそーじゃねーか。まあ俺は、もうちょっとがっつりしたもんのほうが好みだけどよ」[p]
#

#&f.name	
（ライオネス、料理が食べたくてテーベについてきたの・・・？）[p]
#

[rans_tatie_sinnpai]
#ランスロット	
「これだけの魚を調理するのか。大変そうだな」[p]
#


[rans_tatie_normal_warai]
#ランスロット	
「なにか、手伝えることはないか？」[p]
#

#&f.name	
「えっ・・・ええ、いいの！？」[p]
#

#お母さん	
「ま、またそのような・・・ランスロット様、ここは大丈夫ですからお酒でも召し上がっていてくださいな」[p]
#

#お母さん	
「ライオネス様もこんな狭いところでは息がつまってしまうでしょうに」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「気遣い、恐れ入ります。だけど俺は大丈夫です」[p]
#

#&f.name	
「ら、ライオネス・・・」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「なんっつーかよ・・・視界にお前がいないとなんか落ちつかねえんだよな」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット	
「お前のことが気になって、せっかくの酒もあまり楽しむことができなかった」[p]
#

#お母さん	
「ライオネス様、ランスロット様・・・」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「いずれにしろ、作業は大変でしょうから・・・私たちにもできることがあれば手伝わせていただきたい」[p]
#

#お母さん	
「・・・・・・」[p]
#

#お母さん	
「・・・わかりました。では、恐縮ですがお言葉に甘えて・・・」[p]
#

#お母さん	
「[name]！おふたりにあまり迷惑かけるんじゃないよ！」[p]
#

#&f.name	
「わ、わかってるよ！」[p]
#
[chara_hide_all]

[anten]
[bg storage="tebe_irain_jikka_tasogare.jpg"]
#&f.name	
「そっちの魚は塩漬けだからこっちのつぼに・・・」[p]
#

#&f.name	
「あ、ライオネスその魚は下ろすからこっちに持ってきて」[p]
#

[chara_show name="rans" storage="&f.rans_normal_warai" top=20 left=0]
#ランスロット	
「[name]、こんな感じでいいか？」[p]
#

#&f.name	
「あ！ありがとうランスロット！す、すごいね三枚下ろしなんてなかなか上手にできないのに・・・」[p]
#

[rans_tatie_mihiraki]
#ランスロット	
「そうなのか？
[rans_tatie_normal_warai]
初めてやってみたが、結構面白いものだな」[p]
#

[chara_hide name="rans" time=50]
[config_true]
[chara_show name="lion" storage="&f.lion_akireru"  height="698" width="456" top=-35 left=0 time=50]
#ライオネス	
「おいおいこんなデカイのどーすんだ？お前がやるのか？」[p]
#

#&f.name	
「うん、そうだよ？うちじゃお母さんもいつもやってたから・・・」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「マジかよ・・・これ、カジカジマグロだろ・・・？」[p]
#

[chara_hide_all time=50]

[rans_tatie_show_left]
#ランスロット	
「手伝おう。ライオネス、尾のほうを持て」[p]
#
[lioness_tatie_show_right]
#ライオネス	
「しっかたねーな・・・」
[lioness_tatie_yareyare]
[p]
#

#&f.name	
（よーし！これが終わったらあとちょっと、がんばろう！）[p]
#

[chara_hide_all]
;#ランスロット好感度高
;テーべ、海岸
[anten]


[if exp="f.ranskonkando>f.lionkonkando"]

[bg storage="tebe_yoru_tasogare.jpg"]


[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]

[playse storage="umi_onjin.ogg"]
#&f.name	
「あー、美味しかった！おなかいっぱい！」
[p]
#

[live2d_fadein time=1000]
[rans_exp_normal_warai]
[rans_unaduki]

#ランスロット	
「母上の煮魚が食べられてよかったな、[name]」[p]
#

#&f.name	
「うん！ランスロットとライオネスが手伝ってくれたおかげだよ」[p]
#

#&f.name	
「思ったよりすぐ終わったって、お母さんも喜んでた」[p]
#

[rans_head_above_y]
[rans_head_right_x]
#ランスロット	
「はは、それほどのことはしていないが、
[rans_head_normal]
[rans_head_left_z]
喜んでもらえたのならよかった」[p]
#

#&f.name	
「ランスロット、本当にはじめてなんだよね？すごく上手だったから・・・」[p]
#


[rans_head_normal]
[rans_exp_bisyo]
[rans_unaduki]
#ランスロット	
「お前の言われたとおりにやっただけだ」[p]
#

#&f.name	
「えへへ、でも手伝ってくれて私も嬉しかった。ありがとう！」[p]
#

[rans_head_under_y]
[rans_head_left_x]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
#ランスロット	
「・・・ああ」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット	
「・・・・・・」[p]
#

#&f.name	
「・・・ランスロット・・・？・・・どうしたの？」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット	
「・・・いや」[p]
#


#ランスロット	
「母上や町の女性たちと一緒に、お前が料理をする姿を見ていて・・・」[p]
#

[rans_exp_normal]
[rans_eyes_left]
[rans_head_left_x]
[rans_head_above_y]
#ランスロット	
「・・・お前には、そんな生き方も合っていたのかもしれないと思ってな」[p]
#

[rans_exp_mehuse]
[rans_eyes_right]
[rans_head_right_x]
[rans_head_under_y]
#&f.name	
「そんな、生き方って・・・？」[p]
#
[playbgm storage="omoi_ontama.ogg"]
[rans_eyes_normal]
[rans_mod_idle]
[rans_exp_normal]
#ランスロット	
「・・・お前がもし、私の弟子ではなかったら・・・」[p]
#
[rans_head_under_y]
[rans_head_right_x]
[rans_body_right_z_half]
#ランスロット	
「・・・母上に別な話を申し入れていたかも・・・しれない」[p]
#

#&f.name	
「へ？・・・別な話・・・って」[p]
#

[rans_head_normal]
[rans_body_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット	
「・・・・・・」[p]
#

[rans_mod_idle]
[rans_body_right_z_half]
[rans_head_right_z]
[rans_exp_komari_warai]
[rans_eyes_right]
#ランスロット	
「テーベの酒は、強いな。私も少し・・・酔っているようだ」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_head_normal]
[rans_body_normal]
[rans_exp_mehuse]
#&f.name	
「そ、そうだ、ね・・・ライオネスなんかもう酔いつぶれて寝ちゃってるもんね」[p]
#

[rans_exp_metoji]
#ランスロット	
「・・・ああ。
[rans_exp_mehuse_warai]
[rans_head_right_x]
[rans_head_under_y]
[rans_eyes_right_under]
・・・冷えてきたな。寒くはないか」[p]
#

#&f.name	
「う、ううん、だいじょう、ぶ・・・」[p]
#

[rans_head_normal]
[rans_exp_normal]
[rans_head_left_z]
[rans_eyes_normal]
#ランスロット	
「[name]・・・」[p]
#

#&f.name	
「・・・ランスロット・・・？」[p]
#


[rans_exp_sinpai]
#&f.name	
（え・・・）[p]
#
[fadeoutbgm time=1000]
[rans_exp_mihiraki]
#ランスロット	
「・・・あ、いや、
[rans_head_under_y]
[rans_head_right_x]
[rans_exp_mehuse_warai]
・・・すまない。そろそろ行くか」[p]
#

[rans_mod_idle]
[rans_head_normal]
[rans_exp_komari_warai]
[rans_head_left_z]
#&f.name	
「あ、う、うん・・・よ、夜も遅くなっちゃったし・・・」[p]
#

[rans_exp_normal_warai]
[rans_unaduki]
[live2d_fadeout time=1000]
[playse storage="walk-gravel1_koukaonlabo.ogg"]
#&f.name	
（な、なんだろ、なんか・・・よくわかんないけど・・・）[p]
#

#&f.name	
（ちょっと、どきっとした、ような・・・きのせい、かな・・・）[p]
#
[stopse]
	
#&f.name	
（ううん、気のせい、だよね、たぶん・・・）[p]
#

#&f.name	
（たぶん・・・きっと、そう・・・だよ、ね・・・）[p]
#


*sonogo
[anten]	

[bg storage="tebe_tasogare.jpg"]
	
#&f.name	
「それじゃあ、お母さん、体に気をつけてね！」[p]
#

#お母さん	
「お前こそ、しっかりやるんだよ」[p]
#

#お母さん	
「ランスロット様、ライオネス様、[name]をよろしくお願いいたします」[p]
#


[lioness_tatie_show_left]
[rans_tatie_show_right]
#ライオネス	
「はい」[p]
#
[rans_tatie_normal_warai]
#ランスロット	
「ええ、お任せください」[p]
#

	
#&f.name	
（・・・ライオネス、ランスロット・・・）[p]
#
[chara_hide_all][chara_off]
[live2d_delete_all][live2d_off]
[jump storage="scenario_2/day_start_event.ks" target=*kikyou_end]



[else]	
;テーベ、海岸

[bg storage="tebe_yoru_tasogare.jpg"]

[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]

[playse storage="umi_onjin.ogg"]

#&f.name	
「あー、おいしかった！おなかいっぱい！」[p]
#


[live2d_fadein time=1000]
[lioness_face_akireru]
#ライオネス	
「お前、よく煮魚あれだけ食えんなー」[p]
#

#&f.name	
「ライオネスだってすっごいフライ食べてたじゃない！」[p]
#

[lioness_arms_udekumi]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス	
「あれは好物だからな。
[lioness_face_ha]
煮魚はなんかこう・・・水っぽくてパンチがねえっつうか・・・」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal]
[lioness_arms_normal]
#&f.name	
（美味しいと思うのになあ・・・）[p]
#

[lioness_arms_kosinite_left]
[lioness_arms_kosinite_right]
[lioness_face_warai]
#ライオネス	
「まあでも、なんとか作業終わってよかったじゃねえか」[p]
#

[lioness_face_yareyare]
#ライオネス	
「最初みたときゃ、終わるのかこれって思ったけどよ」[p]
#

#&f.name	
「うん！ランスロットとライオネスが手伝ってくれたおかげだよ」[p]
#

#&f.name	
「・・・そういえばランスロットは？」[p]
#


[lioness_arms_normal]
[lioness_face_normal]
[lioness_eyes_left]
#ライオネス	
「あいつは接待の続きだ。受けるほうも大変だよな。俺は抜け出してきたけど」[p]
#

[lioness_eyes_normal]
[lioness_face_akireru]
#ライオネス	
「あのままいたら絶対酔いつぶれるまでやられんぜ」[p]
#

#&f.name	
（ええっ・・・）[p]
#

[lioness_face_yokome_warai]
#ライオネス	
「ま、兄貴のことだ。うまくやるだろうけどよ」[p]
#

[lioness_face_akireru]
[lioness_head_right_x]
#ライオネス	
「しっかしお前、あんなマグロなんかよくさばけるよなー」[p]
#

[lioness_face_normal]
[lioness_head_normal]
#&f.name	
「うちはね、お父さんが漁師だったから、小さいころからああいうのは仕込まされたの」[p]
#

#&f.name	
「お母さんてば昔から厳しくて・・・」[p]
#

[lioness_arms_udekumi]
[lioness_head_under_y]
[lioness_head_left_x]
[lioness_eyes_left]
#ライオネス	
「・・・ふーん・・・」[p]
#

#&f.name	
「・・・ライオネス？？」[p]
#

[lioness_head_right_z]
#ライオネス	
「こっち来る前はよ、お前・・・
[lioness_eyes_normal]
あーやって暮らしてたんだよな」[p]
#

#&f.name	
「あーやってって・・・」[p]
#

[lioness_mod_idle_no_move]
[lioness_face_mehuse_dai]
#ライオネス	
「ほらその、おふくろさんとかと一緒に料理したりとかよ」[p]
#

#&f.name	
「うん、そうだよ？でも、クレールに行ってからずっとなかったから、本当に久しぶりだったけど」[p]
#

[lioness_arms_normal]
[lioness_mod_idle]
[lioness_face_yokome]
#ライオネス	
「・・・・・・・」[p]
#

#&f.name	
「どうしたの・・・？」[p]
#


[lioness_mod_idle_no_move]
[lioness_arms_poripori]
[lioness_head_left_x]
[lioness_face_mehuse_dai]
#ライオネス	
「なんだ、いや、さまになってたかなっって・・・」[p]
#

#&f.name	
「へ？」[p]
#

[lioness_arms_normal]
[lioness_mod_idle]
[lioness_face_normal]
#ライオネス	
「お前いっそのこと、やっぱこっちでおふくろさんとかと普通に暮らしたほうがいいんじゃねえか？」[p]
#

#&f.name	
「なっ・・・なんでいきなりそんなこと・・・」[p]
#

#&f.name	
「騎士にむいてないとかって、こと？そりゃなったばかりだし、慣れてないとこはあるけど・・・」[p]
#

[lioness_mod_idle_no_move]
[lioness_face_otikomi]
[lioness_head_right_x]
[lioness_head_left_x]
#ライオネス	
「あ・・・いや・・・そういう意味じゃなくて」[p]
#
[lioness_head_normal]
[lioness_head_under_y]

#&f.name	
「へ・・・？」[p]
#
[playbgm storage="rakuyou_ontama.ogg"]
[lioness_face_tere]
[lioness_eyes_right]
[lioness_eyes_left]
#ライオネス	
「お前が・・・騎士じゃなかったらよ、一緒に暮らして・・・飯とか作ってくれんのも、いいかもなって・・・」[p]
#

#&f.name	
「え・・・」[p]
#
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_odoroki_sekimen]
#ライオネス	
「い、いやその、その、
[lioness_face_tere]
たとえばの話だ！たとえばの・・・」[p]
#

[lioness_face_yokome_otikomi]
#ライオネス	
「ほ、ほらよ・・・飯つくんのは何も、お前じゃなくたっていいしよ」[p]
#

#&f.name	
「は、はあ・・・」[p]
#

[lioness_face_mehuse_dai]
#ライオネス	
「でも・・・」[p]
#
[lioness_mod_idle]
[lioness_head_left_x]
[lioness_face_sinnpai]
#ライオネス	
「やっぱお前だと、ほっとするような気、すんな・・・」[p]
#

#&f.name	
（ら、ライオネス・・・？）[p]
#

[lioness_face_mehuse_dai]
#ライオネス	
「・・・・・・」[p]
#

#&f.name	
「・・・・・・」[p]
#
[lioness_head_right_x]
[lioness_face_yokome_otikomi]
[lioness_head_under_y]
#ライオネス	
「そ、そろそろ行くか、もう遅えし・・・」[p]
#
[fadeoutbgm time=1000]
#&f.name	
「う・・・うん・・・」[p]
#

[live2d_fadeout time=1000]
[playse storage="walk-gravel1_koukaonlabo.ogg"]

#&f.name	
（・・・ライオネス・・・）[p]
#

[stopse]	
[jump target=*sonogo]
[endif]



