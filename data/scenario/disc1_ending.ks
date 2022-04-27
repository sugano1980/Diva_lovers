


*start








;[live2d_load]
;[live2d_on][live2d_new name="cera0" model_id="cera0" lip=true jname="セレ"]
;[live2d_load_off]

;テストコード
;[eval exp="f.krakonkando=10"]
;[eval exp="f.ranskonkando=0"][eval exp="f.lionkonkando=0"]
[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]
#&f.name
「ん？はーい」[p]
#

;[live2d_on][live2d_show name="cera0" y=-0.2 x=0.0 scale=2.0]
;[live2d_mod name="cera0" Idle="Idle" no=0]
[chara_new name="cera" storage="cera0_tatie/cera0_smile.png"]
;;[cera0_smile]
[chara_on][chara_show name="cera" width=336 height=482]
#セレ
「合格おめでとう！[name]！！」[p]
#
#&f.name
「あ、セレさん！！」[p]
#

;[cera0_unaduki]
#セレ
「父さんから聞いた。がんばったな」[p]
#
#&f.name
「うん！ありがとう」[p]
#
#&f.name
「正騎士試験の許可が出るまで結構かかっちゃったけどね」[p]
#

;[cera0_udekumi]
;[cera0_kubi_kasige]
#セレ
「それは仕方がない。年齢のこともあるしな」[p]
#

;[cera0_exp_metoji]
#セレ
「見事一発で合格できるとはな。だが、お前ならできると思っていた」[p]
#

;[cera0_exp_otikomi]
;[cera0_head_under_y]

[chara_mod name="cera" storage="cera0_tatie/cera0_otikomi.png"]

#セレ
「ましてや、男所帯の騎士団では、辛いこともたくさんあったろうに・・・」[p]
#
#&f.name
「・・・セレさん・・・」[p]
#
#&f.name
「・・・うん・・・」[p]

;[cera0_head_left_x]
;[cera0_head_under_y]
#セレ
「・・・[name]・・・実はな」[p]
#
;[cera0_head_normal]

#セレ
「お前が１３歳でランスロットに連れられてきた時、
正直・・・私はお前に・・・その、騎士の道を諦めさせようと思っていた」[p]
#

#&f.name
「え？」[p]
#


;[cera0_arms_normal]
;[cera0_head_right_x]
#セレ
「ずば抜けた実力や才能がないのなら、
いや・・・あっても・・・ここにいても辛いだけだと思ったんだ」[p]
#

;[cera0_arms_kataude
;[cera0_head_normal]

#セレ
「私も父さんに憧れて、女ながらも騎士を目指していた」[p]
#

;[cera0_head_under_y]
#セレ
「だが、女でありながら騎士の道を目指すと言うことが・・・どれだけ困難なことか、何もわかっていなくてな」[p]
#
;[cera0_exp_metoji]
;[cera0_idle_metoji]

#セレ
「父さんに隠れて、嫌がらせみたいなのもたくさんあったし・・・
襲われかけたことだってある」[p]
#


#&f.name
「セレさん」[p]
#

;[cera0_exp_otikomi]
;[cera0_head_normal]
#セレ
「だから、まだ何も知らなかったお前に、そんな思いをさせたくなくて・・・」[p]
#

#&f.name
（セレさん・・・）[p]
#

;[cera0_exp_normal]

[chara_mod name="cera" storage="cera0_tatie/cera0_smile.png"]

#セレ
「だが、そんな心配は杞憂だったな・・・」[p]
#

;[cera0_smile]
#セレ
「ランスロットも、苦難を乗り越えられると思ったから、お前を弟子にしたのだろう」[p]
#

#&f.name
「・・・・・・」[p]
#

#&f.name
「うんでも・・・セレさんが支えてくれたからって言うのも、すごく大きいと思う」[p]
#

;[cera0_exp_mihiraki]

[chara_mod name="cera" storage="cera0_tatie/cera0_mihiraki.png"]

#セレ
「[name]・・・」[p]
#

#&f.name
「私・・・ランスロットの前では元気にしてたけど、不安もいっぱいだったし・・・」[p]
#

#&f.name
「その、ランスロットには相談できないこととかもあったから・・・」[p]
#
;[cera0_exp_normal]
;[cera0_unaduki]

[chara_mod name="cera" storage="cera0_tatie/cera0_smile.png"]

#セレ
「ああ。だから彼は、私にフォローを頼むと言ってきたんだろう」[p]
#

#&f.name
「うん、セレさんがいてくれて、本当によかったって思う」[p]
#
#&f.name
「男の人に嫌なことされても、セレさんが頑張ってるって思うと、
私も頑張らないとって思えたから」[p]
#
#&f.name
「だから、本当にありがとう、セレさん」[p]
#


[chara_mod name="cera" storage="cera0_tatie/cera0_mihiraki.png"]

;[cera0_exp_mihiraki]
#セレ
「[name]・・・

[chara_mod name="cera" storage="cera0_tatie/cera0_smile.png"]

;[cera0_smile]
ああ」[p]
#
#&f.name
「えへへ・・・これからも、よろしくね」[p]
#

;[cera0_unaduki]
;[cera0_udekumi]
#セレ
「もちろんだ。こちらこそ、よろしく頼むぞ」[p]
#
#&f.name
「うん！！」[p]
#

;[cera0_smile]
;[cera0_arms_normal]
#セレ
「あ、そうだ・・・よかったら、祝いにケーキでも食べにいくか？」[p]
#
#セレ
「噴水通りに美味しい店があるんだ」[p]
#
#&f.name
「本当！？行きたい！」[p]
#

;[cera0_unaduki]
#セレ
「お前は試験の後でしばらく休みだろうから、次の私の休みの時に行こう」[p]
#
#&f.name
「うん！楽しみにしてるね！！」[p]
#

;[cera0_unaduki]
#セレ
「ああ。それじゃあ、今日はゆっくり休め。おやすみ」[p]
#

#&f.name
「おやすみなさい！」[p]
#






[eval exp="f.cera_cake=1"]

;[live2d_fadeout time=1000]

[chara_off][chara_hide_all]
;[live2d_delete_all]

[anten]
[bg storage="irainheya_yoru_tasogare.jpg"]



[if exp="f.lionkonkando>5"]
*lion
[call storage="live2d_lioness_macro.ks"]
[image layer=1 page=fore visible=true storage="loader.gif" name="load" x=350 y=280]
[live2d_load]
[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_load_off]
[free name="load" layer=1]

[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]
#&f.name
（あれ？誰だろう）[p]
#

[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[live2d_fadein time=1000]
#ライオネス
「よう。お疲れ」[p]
#

#&f.name
「ライオネス？どうしたの？」[p]
#

[live2d_fadeout time=1000]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[live2d_fadein time=1000]
#ライオネス
「・・・・・・」[p]
#

#&f.name
（えっ・・・何・・）[p]
#


[lioness_head_left_x]
[lioness_head_above_y]
[lioness_eyes_left]
[lioness_body_left_z]
#ライオネス
「・・・こーんなトロそうな奴がなあ・・・」[p]
#

#&f.name
（トロそうって・・・）[p]
#

[lioness_eyes_right]
[lioness_head_under_y]
[lioness_body_right_z]
[lioness_face_otikomi]
#ライオネス
「悪い。そんな顔すんな」[p]
#



[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_normal]
[lioness_face_normal]
#ライオネス
「・・・その、なんだ、おまえがあそこまでやるとは思ってなかったからよ」[p]
#

#&f.name
「今日の試験のこと？」[p]
#

[lioness_head_right_z]
[lioness_eyes_right]
[lioness_body_right_z]
#ライオネス
「ああ・・・ま、８年頑張っただけのことはあるんじゃねえか？」[p]
#


[lioness_head_normal]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]
#ライオネス
「結構強いじゃねえか、お前」[p]
#

#&f.name
（褒められてる・・・のかな？）[p]
#

[lioness_head_above_y]
[lioness_head_right_x]
[lioness_body_right_x]
[lioness_face_normal]

#ライオネス
「ましてや・・・双剣は、誰にでも扱えるもんじゃねえからな・・・」[p]
#

[lioness_head_under_y]
[lioness_head_right_x]
[lioness_face_mehuse_dai]
#ライオネス
「兄貴が、お前を弟子にしたの・・・今ならわかる気がするぜ」[p]
#

#&f.name
「ライオネス・・・」[p]
#

[lioness_face_otikomi]
[w]
[lioness_face_normal]
[lioness_head_normal]
[lioness_body_normal]
#ライオネス
「まあ・・・なんだ、そういうことだ、ああ、それからこれやる。甘いもん、好きだろ」[p]
#

キャラメルを１０個手に入れた！[p]
[eval exp="f.battle_item_stock[1]=f.battle_item_stock[1]+10"]
[playse storage="item_status_up_onjin.ogg"]

#&f.name
「あ、ありがとう！」[p]
#
[lioness_arms_poripori]
[lioness_head_above_y]
[lioness_head_left_x]
[lioness_eyes_left_above]


#ライオネス
「あ、あっと・・・そのよ・・・
[lioness_head_under_y]
[lioness_eyes_left_under]
今度また、飯付き合え。一人じゃ・・・店に入りにくいし・・・」[p]
#

#&f.name
「はあ・・・」[p]
#

[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_right]

#ライオネス
「い、嫌とかだったら、別にいいけどよ・・・もし、よかったら・・・」[p]
#
[lioness_eyes_normal]
[lioness_face_normal]
[lioness_head_left_x]
[lioness_body_left_z]
[lioness_eyes_left]
[lioness_arms_normal]
#ライオネス
「ま、まあ、そういうことだ、それじゃな！！」[p]
#

[live2d_fadeout time=1000]

#&f.name
（ずいぶんしどろもどろだったけど・・・食事に誘われたってことだよね？）[p]
#

#&f.name
（試験のこと、褒めてもくれたし。ライオネス、優しいところもあるんだな）[p]
#

[eval exp="f.disc1_end_lion=1"]

[elsif exp="f.ranskonkando>4"]
[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]
#&f.name
「ん？はーい」[p]
#

*rans
#ランスロット
「[name]、いるか？」[p]
#

#&f.name
「あ、ランスロット！」[p]
#

[call storage="live2d_baka_macro.ks"]
[live2d_load]
[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
[live2d_load_off]

[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[live2d_fadein time=1000]

#ランスロット
「・・・今日はがんばったな。グレッグ団長から、試験の結果のことは聞いた」[p]
#
[baka_exp_normal_warai]
[baka_head_under_y]
[baka_arms_kosinite_right_sitahuku]
[baka_arms_kosinite_left_sitahuku]
[baka_head_normal]

#ランスロット
「おめでとう。８年の努力が実ったな」[p]
#

#&f.name
「えへへ、ありがとう。でも、ランスロットのおかげだよ」[p]
#

#&f.name
「何も知らない私に、たくさんいろんなこと教えてくれたし」[p]
#


[baka_exp_mehuse_warai]
[baka_head_left_x]
[baka_head_under_y]
[baka_head_left_z]
[baka_body_left_z]
#ランスロット
「いや、私はお前の成長をただ助けただけだ」[p]
#


[baka_head_normal]
[baka_exp_bisyo]
[baka_head_right_z]
#ランスロット
「今回はお前自身のがんばりの結果だぞ。もっと自分に自信を持っていい」[p]
#
[baka_exp_normal_warai]
#&f.name
「ランスロット・・・うん」[p]
#

[baka_head_under_y]
[baka_head_normal]
[baka_arms_normal]
[baka_exp_metoji_warai]

#ランスロット
「ああ、そうだ、これを」[p]
#

[live2d_fadeout time=1000]
[live2d_mod name="baka0" y=-3.0 scale=6.5]
[live2d_fadein time=1000]
[playse storage="kenchoisei_koukaonlabo.ogg"]

[baka_exp_normal_warai]
#&f.name
「あ、新しい双剣・・・！！」[p]
#

[baka_arms_kosinite_right_sitahuku]
[baka_arms_kosinite_left_sitahuku]

#ランスロット
「お前の合格祝いに、鍛冶屋に頼んでおいたものだ」[p]
#


[baka_head_left_z]
[baka_body_left_z]
#ランスロット
「前のものよりも軽く、扱いもしやすいと思う」[p]
#

#&f.name
「ランスロット・・・ありがとう！！」[p]
#

[baka_head_under_y]
[baka_head_normal]
[baka_exp_bisyo]
[baka_exp_normal_warai]

[eval exp="f.irain_tec=f.irain_tec+10"]
[playse storage="item_status_up_onjin.ogg"]
技術が１０アップ！[p]

#&f.name
（ピカピカの新しい双剣・・・嬉しいな）[p]
#


[baka_mod_idle_no_move]
[baka_head_right_x]
[baka_head_under_y]
[baka_body_right_x]
[baka_exp_mehuse_warai]
#ランスロット
「・・・そんなに嬉しそうな顔をしてもらえるなら、鍛冶屋に無理をいった甲斐があったな」[p]
#

#&f.name
「無理言ったの？」[p]
#

[baka_head_normal]
[baka_head_left_z]
[baka_body_left_z]
[baka_exp_komari_warai]

#ランスロット
「はは、多少な。お前の喜ぶ顔が見たかった」[p]
#


#&f.name
（ランスロット・・・）[p]
#
[baka_exp_metoji_warai]
[w][w][w][w]
[baka_exp_normal]
[baka_exp_mehuse]
[w][w]
[baka_head_normal]
[baka_arms_normal]
[w]
[baka_exp_normal]

#ランスロット
「だが、大切なのはこれからだぞ」[p]
#

[baka_exp_ketui]
[baka_body_right_z]
[baka_head_under_y]

#ランスロット
「これからは稽古よりももっと厳しいことが待っているだろう」[p]
#

#&f.name
「覚悟は出来てるつもりだよ？ランスロットはずっとそんなことばっかり言ってたから」[p]
#

[baka_arms_normal]
[baka_head_under_y]
[baka_exp_metoji]
#ランスロット
「・・・そうか。[name]」[p]
#

#&f.name
「はい」[p]
#



#ランスロット
「くれぐれも、気をつけるんだぞ。
[baka_head_left_z]
[baka_body_left_z]
[baka_eyes_left]
[baka_arms_udekumi]
[baka_exp_mehuse_muzukasii]
お前は少し抜けているところがあるから、心配なんだが・・・」[p]
#
[baka_body_right_z]
[baka_head_right_z]
[baka_eyes_normal]
[baka_exp_sinpai]
#ランスロット
「私がずっとついててやるわけにはいかないからな」[p]
#

#&f.name
「もう正騎士なんだよ？一人でちゃんとやれるよ・・・」[p]
#

[baka_head_under_y]
[baka_head_left_x]
[baka_body_left_z]
[baka_exp_mehuse_warai]
#ランスロット
「そうか、お前はもう、一人前なんだものな・・・」[p]
#

#&f.name
「うん・・・」[p]
#

[baka_exp_normal]
[baka_exp_metoji]
#ランスロット
「・・・・・・」[p]
#

#&f.name
（・・・ランスロット・・・？）[p]
#


[baka_head_normal]
[baka_body_normal]
[baka_head_right_z]
[baka_body_right_z]
[baka_exp_komari_warai]
#ランスロット
「すまないな、長話をしてしまった。

[baka_arms_kosinite_right_sitahuku]
[baka_eyes_normal]
[baka_exp_normal_warai]
今日は疲れているだろう。ゆっくり休め」[p]
#

#&f.name
「う、うん・・・」[p]
#

[baka_body_left_x]
[baka_head_under_y]
[baka_head_left_x]
[baka_exp_mehuse_warai]
#ランスロット
「・・・それじゃあな」[p]
#

[live2d_fadeout time=1000]

#&f.name
「・・・・・・」[p]
#

[eval exp="f.disc1_end_rans=1"]

[elsif exp="f.krakonkando>3"]

[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]
#&f.name
「ん？はーい」[p]
#

*kra

#&f.name
（誰だろ？こんな夜更けに・・・）[p]
#
[call storage="live2d_aho_macro.ks"]
[live2d_load]
;[live2d_new name="tris" model_id="tris" lip=true jname="トリスタン"]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]
[live2d_show name="aho" y=-2.0 x=0.0 scale=4.6]
[live2d_fadein time=1000]

#クライスト
「やあ、今晩わ」[p]
#


[aho_face_normal]
#&f.name
「えっ！！！な、なんで・・・」[p]
#

#&f.name
（ちょっと待って、昼間部屋につれてかれてたよね！？自由に動けないはずだよね？）[p]
#


[aho_head_left_x]
[aho_body_left_z]
[aho_eyes_left]
[aho_arms_right_setumei]
#クライスト
「ああ、細かいことは気にしないでいいよ」[p]
#

#&f.name
「気にします！」[p]
#

[aho_eyes_normal]
[aho_head_right_x]
[aho_head_above_y]
[aho_body_right_z]
#クライスト
「そう？でも俺は気にならないから大丈夫」[p]
#

[aho_head_normal]
[aho_body_normal]
#&f.name
（・・・なんなんだろ・・・この人・・・）[p]
#

#&f.name
「な、なんのようですか・・・」[p]
#

[aho_body_kataageru]
[aho_head_under_y]
[aho_face_yareyare]

#クライスト
「そんなに警戒しなくても。

[aho_body_normal]
[aho_face_mihiraki]
[aho_head_normal]
あ、でも夜に女の子の部屋に来ちゃったら、それはそうか」[p]
#

[aho_face_normal]
#&f.name
「わかってるならか、帰って・・・」[p]
#

[aho_face_komari_warai]
[aho_head_under_y]
[aho_body_under_y]
#クライスト
「つれないな、一生懸命物置部屋を抜け出してきたのに」[p]
#
[aho_face_metoji]


[aho_head_right_z]
[aho_face_normal]
[aho_eyes_above]
#クライスト
「あ、大丈夫、変なことはしないよ。ちょっと話したくてさ」[p]
#

#&f.name
「・・・・・・」[p]
#

[aho_head_above_y]
[aho_head_left_x]
[aho_body_left_z]
[aho_eyes_left_above]
#クライスト
「今日、騎士団の試験だったんだって？なんか団長たちが話してるの聞いたけど」[p]
#

#&f.name
（関係ないと思うんだけど・・・）[p]
#

[aho_head_normal]
[aho_face_komari]
[aho_body_normal]
#クライスト
「そんな顔しないで」[p]


[aho_face_normal]
#クライスト
「合格したって聞いたからさ、お祝い言いたくて」[p]
#

#&f.name
「お、お祝いって・・・」[p]
#

[aho_eyes_left]
#クライスト
「一応、クレールの地方騎士団って言ったらさ、大陸最強なんて言われてた時期もあったし」[p]
#

[aho_eyes_normal]
[aho_head_right_z]
[aho_body_right_z]
#クライスト
「正騎士になるのって、結構難しいんだろ？」[p]
#

#&f.name
「そ、それは・・・」[p]
#

[aho_head_under_y]
[aho_head_right_x]
[aho_face_mehuse]
[aho_body_right_z]

#クライスト
「だからさ、ましてや女の子なのに、すごくがんばったんだな、って思って。普通の努力じゃできないよね」[p]
#

[aho_head_normal]
[aho_body_normal]
[aho_face_bisyou_youen]
#クライスト
「すごいね・・・君は」[p]
#

#&f.name
「え・・・えっと・・・」[p]
#

[aho_face_metoji]
[live2d_fadeout time=1000]
[live2d_mod name="aho" y=-4.0 scale=8.2]

[live2d_fadein time=1000]


[aho_face_normal]
[aho_head_above_y]
[aho_head_under_y]
[aho_eyes_above]
[aho_body_right_z]
#クライスト
「ますます・・・興味が湧いちゃうな」[p]
#

#&f.name
（ち、近い・・・）[p]
#

#&f.name
「あ、あの・・・」[p]
#

[aho_body_above_y]
[aho_face_mihiraki]

#クライスト
「あ、そうだ、
[aho_body_normal]
[aho_face_normal]
[aho_eyes_under]
これ、もしよかったら。お祝いに俺からのプレゼント」[p]
#


[aho_face_metoji]
[playse storage="huku_koukaonlabo.ogg"]
銀のバレッタを手に入れた！[p]

[eval exp="f.equip_item_stock[5]=1"]

#&f.name
（わあ・・・すごく綺麗・・・こんなに細かい銀の模様・・・きっと高いものだよね）[p]
#

[aho_face_normal]
[aho_head_left_z]
[aho_body_left_z]
#&f.name
「あ、あのこれ・・・」[p]
#

[aho_face_mehuse_warai]
[aho_head_under_y]
[aho_body_left_z]

#クライスト
「気持ち悪かったら、付けなくてもいいけど。・・・でも、気に入ってくれたら嬉しい」[p]
#

#&f.name
（この人・・・名前、クライストさんって、言ったっけ・・・）[p]
#

#&f.name
「あ、あのクライストさん・・・」[p]
#

[aho_body_normal]
[aho_eyes_right]
[aho_face_normal_majime]

[playse storage="yukahasiru_onjin.ogg"]


#トリスタン
「貴様あああああああああ！！なぜだ、なぜここにいる！！」[p]
#

[live2d_fadeout time=1000][live2d_delete_all]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]
;[live2d_mod name="aho" y=-1.5 x=-0.5 scale=3.5]
;[live2d_show name="tris" y=-0.2 x=0.5 scale=1.5]
;[live2d_fadein time=1000]
[chara_on][chara_show name="tris" height="546" width="380" top=50 left=360]
;[chara_mod name="tris" storage="tris_tatie/tris_ikari.png"]
;[live2d_motion name="tris" mtn="Face_ikari"]
;[live2d_motion name="tris" mtn="Body_above_y"]
;[live2d_motion name="tris" mtn="Body_under_y"]
;[live2d_motion name="tris" mtn="Body_normal"]
[chara_on][chara_show name="kra" top=50 left=-60]
;[aho_body_left_x]
;[aho_head_above_y]
;[aho_head_left_x]
;[aho_eyes_left_above]
;[aho_arms_udekumi]
#クライスト
「あれ？ようやく気づいた？」[p]
#
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
;[live2d_motion name="tris" mtn="Body_above_y"]
[chara_mod name="tris" storage="tris_tatie/tris_mihiraki.png"]
;[live2d_motion name="tris" mtn="Face_mihiraki"]
;[live2d_motion name="tris" mtn="Arms_hiroge"]
#トリスタン
「な、なぜだちゃんと鍵はかけておいたはず！！」[p]
#
;[aho_head_normal]
;[aho_body_normal]
;[aho_face_normal]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
#クライスト
「あ、鍵、壊れてたよ」[p]
#

;[live2d_motion name="tris" mtn="Face_ikari"]
;[live2d_motion name="tris" mtn="Body_above_y"]
;[live2d_motion name="tris" mtn="Body_under_y"]
;[live2d_motion name="tris" mtn="Body_normal"]
[chara_mod name="tris" storage="tris_tatie/tris_ikari_kutiake.png"]
#トリスタン
「つい最近新調したばかりなんだぞ！そんなことあるわけないだろう！！」[p]
#

;[aho_body_left_z]
;[aho_head_left_z]
;[aho_eyes_left]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
#クライスト
「新しいのが壊れてたのかもしれないじゃないか」[p]
#
[chara_mod name="tris" storage="tris_tatie/tris_mehuse.png"]
;[live2d_motion name="tris" mtn="Head_left_x"]
;[live2d_motion name="tris" mtn="Body_left_x"]

#トリスタン
「いや確かに俺はあの時確認したはず・・・！」[p]
#
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
;[aho_eyes_normal]
;[aho_head_normal]
;[aho_body_normal]
;[aho_face_metoji]
;[aho_head_right_x]
;[aho_head_left_x]
;[aho_head_normal]
#クライスト
「やれやれ、夜なんだから静かにしないと」[p]
#

[chara_mod name="tris" storage="tris_tatie/tris_ryoukai.png"]
;[live2d_motion name="tris" mtn="Body_normal"]
;[live2d_motion name="tris" mtn="Head_left_x"]
;[live2d_motion name="tris" mtn="Head_right_x"]
#トリスタン
「そ、それもそうだな・・・
[chara_mod name="tris" storage="tris_tatie/tris_mihiraki.png"]
;[live2d_motion name="tris" mtn="Face_mihiraki"]
;[live2d_motion name="tris" mtn="Head_normal"]
;[live2d_motion name="tris" mtn="Arms_hiroge"]
ってなんでお前に言われなきゃならないんだ！！」[p]
#

;[aho_eyes_left]
;[aho_face_normal_majime]
;[aho_body_kataageru]
;[aho_head_above_y]
;[aho_head_left_z]
;[live2d_motion name="tris" mtn="Face_ikari"]
;[live2d_motion name="tris" mtn="Head_normal"]
;[live2d_motion name="tris" mtn="Body_normal"]
;[live2d_motion name="tris" mtn="Arms_normal"]
[chara_mod name="tris" storage="tris_tatie/tris_ikari_kutiake.png"]

#トリスタン
「とにかくとっとと戻れ！！」[p]
#
[chara_mod name="kra" storage="kra_tatie/Idle_gif_bisyou_youen.gif"]
;[aho_face_normal]
;[aho_head_normal]
;[aho_body_normal]
#クライスト
「それじゃあね、[name]ちゃん」[p]
#

#&f.name
「は、はあ・・・」[p]
#

;[live2d_fadeout time=1000]
[chara_off][chara_hide_all]



#&f.name
（・・・ほんとに・・・なんなんだろ・・・）[p]
#

#&f.name
（でも・・・悪い人・・・っていうわけでもない？のかな・・・？）[p]
#

[eval exp="f.disc1_end_kra=1"]


[endif]

[jump storage="episode/epi1_new.ks" target=*end]
