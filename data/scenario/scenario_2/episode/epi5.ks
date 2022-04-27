
[cm]
[stopbgm]
[stopse]


;ｓｎモード
;メッセージ画面の表示
[layopt layer=message0 visible=true]
[current layer="message0"]
[layopt layer=message1 visible=false]

[anten][button_hyouji][skip_button_off]
[showmenubutton]
[r][r][r][r][r]祝賀会[l]



[cm][hidemenubutton]


[fadeinbgm storage="yoin_ontama.ogg" time=3000]
そうして・・・・・[w]
[r]私たちはたくさんの犠牲を出しながらもエルムナードに勝利した。[l]
[bg storage="crerumatinaka2_tasogare.jpg"]
[r]王都に凱旋するとたくさんの市民たちが歓声をあげ、街は祝賀ムードに包まれる。[l]
[fadeoutbgm time=4000]
[r]だが、大切な者の訃報を聞き、その場にくずれおちる人が視界に入ると単純には喜べなかった。
[l][cm]


[bg storage="gaiamori_pakutaso.jpg"]
[fadeinbgm storage="raina_p_ontama.ogg" time=6000]
地方騎士団も王宮騎士団も、負傷者の手当てや亡くなった人の埋葬など、しばらくは後始末に追われ、目の回るような忙しさだった。[l]
[r]でもクライストのおかげで負傷者の手当ても手間がなく、だいぶ早めには落ち着きそうだ。[l]
[r]命を落とした騎士たちを丁重に弔い、ガイアの森で手を合わせる。[l]
[r]たくさんの人が亡くなってしまったけれど、これでもう、異形に苦しめられることはなくなるのだろう。[l]
[r]王都の復興もきっとうまくいく・・・。[l]
[r]私はそう願いながらも、命を賭した英雄たちに敬意を表し目を閉じた。
[fadeoutbgm time=5000]
[l][cm]
[anten]



;クライストフラグ有り

[bg storage="kisidan_ura_yoru.jpg"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_on]
[live2d_show name="aho" y=-1.9 x=0.0 scale=4.5]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
[live2d_fadein time=1000]
[message_settei_ad]
#クライスト	
「あっ・・・はあっ・・・うっ・・・」[p]
#

[live2d_fadeout time=500]
;#レム現れる
[rem_tatie_touroku]
[rem_tatie_show]
#？
「・・・クライスト」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
#クライスト	
「・・・・・・」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_mehuse]
#？	
「・・・つまらんな」[p]
#

#？
「馬鹿馬鹿しくも下手な芝居を見せられて、胸糞が悪い」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
[aho_face_kunou_metoji]
#クライスト	
「・・・それなら、見なきゃよかったんじゃないか」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_normal]
#？	
「あの洞窟は俺には退屈すぎる。お前が英雄になる下らん夢を見ているほうがまだマシだ」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
[aho_head_under_y]
[aho_head_right_x]
[aho_eyes_right]
#クライスト	
「・・・レム」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_mehuse]
#レム	
「・・・なぜ、人間どもに力を貸した」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
[aho_face_kunou_metoji]
#クライスト	
「さあ、成り行き？かな」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_normal]
#レム	
「・・・それも、アグレアスの意思か」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
[aho_head_normal]
[aho_body_under_y]
[aho_eyes_normal]
[aho_face_kunou]
#クライスト	
「確かに、アグレアスはヴァエルと呼び合い、互いを引きつける。けど、この筋書きは『彼女』が書いたものじゃないよ」[p]
#
[aho_face_kunou_metoji]
#クライスト	
「俺にだって・・・意思は、あるんだ」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_yokome]
#レム	
「・・・そう信じたいだけだろう。今、どうあろうと、お前の運命が変わることはないのだから」[p]
#

[chara_hide_all time=500]
[live2d_fadein time=500]
[aho_head_under_y]
[aho_head_left_x]
[aho_head_left_z]
#クライスト	
「俺は何かにしがみ付いてるわけじゃない。覚悟はできてる・・・つもりだよ」[p]
#

[live2d_fadeout time=500]
[rem_tatie_show_mehuse]
#レム	
「・・・・・・」[p]
#

[chara_hide_all]
;#レム消える

[live2d_fadein time=500]
#クライスト	
「・・・・・・」[p]
#

[live2d_fadeout time=1000]
[if exp="f.kouhou==1&&f.event_war_kra_sumi==1"]
;後方支援フラグ有りの場合
[anten]
[bg storage="kisidan_ura_yoru.jpg"]
#&f.name	
「・・・クライストさん、どこだろ・・・」[p]
#
#&f.name	
「団長に呼んでくるよう頼まれたけど、どこにも・・・あ」[p]
#

[live2d_fadein time=1000]

#&f.name	
「クライストさん、団長が呼んで・・・」[p]
#

[aho_head_right_x]
[aho_face_kunou_metoji]
#クライスト	
「っ・・・」[p]
#
#&f.name	
「クライストさん！？」[p]
#
#&f.name	
「どうしたの！？大丈夫？」[p]
#
[aho_head_normal]
[aho_face_kunou]
#クライスト	
「ああ・・・いや、大丈夫だよ・・・」[p]
#

#&f.name	
「！？」[p]
#

[jump storage="scenario_2/episode/event_war_kra.ks" target=*vaeru_shoujou]


*vaeru_end

#クライスト	
「・・・いこうか。団長が呼んでるんだろ？」[p]
#
#&f.name	
「う、うん・・・」[p]
#
[live2d_fadeout time=1000]
#&f.name	
（クライストさん・・・）[p]
#
#&f.name	
（一体・・・どういう・・・）[p]
#

[endif]	

[live2d_delete_all][live2d_off]
;ランスロット、グリフの侵攻フラグあり
[if exp="f.event_war_rans_sumi==1"]

[bg storage="kisidanrouka_tasogare.jpg"]

[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
[config_false]
[dancho_tatie_touroku]
[dancho_tatie_show]
[dancho_tatie_metoji]
#団長	
「・・・そうか、ランスロットは・・・」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「本来なら地下牢ですが・・・親父が手を回したみたいで・・・今は家に・・・」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「不幸中の幸いなのかどうか・・・わかりませんが」[p]
#

[dancho_tatie_normal]
#団長	
「我々のために、騎士の誓いを破ってまで、力になってくれた」[p]
#

#団長	
「彼が協力してくれなかったら、もっと多数の犠牲者がいたことだろうに・・・」[p]
#

[lioness_tatie_normal]
#ライオネス	
「団長・・・」[p]
#

[dancho_tatie_ikari]
#団長	
「面会は、やはり叶わないのか」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・はい・・・部屋も厳重に鍵がかけられてて、俺でも・・・」[p]
#

[dancho_tatie_normal]
#団長	
「ライオネス、もし可能なら、礼を伝えてくれ。本当に感謝していると」[p]
#

[dancho_tatie_metoji]
#団長	
「我々は、無力だな・・・」[p]
#


#ライオネス	
「・・・」[p]
#

[dancho_tatie_normal]
#団長	
「刑は、いつ執行される？」[p]
#

#&f.name	
（えっ・・・）[p]
#
#&f.name	
（刑・・・って・・・）[p]
#

[lioness_tatie_akireru]
#ライオネス	
「・・・わかりません。大々的に公表しないところを見ると、まだ保留の状態だと思います」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・あんな親父でも、兄貴の首をはねるのは気が進まないみたいですね」[p]
#

#&f.name	
（今、首をはねる・・・って・・・言った・・・？）[p]
#

[dancho_tatie_metoji]
#団長	
「ライオネス」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「すみません」[p]
#

[lioness_tatie_normal]
#ライオネス	
「・・・言伝は、出来る限り伝えます。俺も、なんとか兄貴と接触できないかどうか、やってみます」[p]
#

[dancho_tatie_warai]
#団長	
「・・・ライオネス、ありがとう。頼んだぞ」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・はい」[p]
#

[chara_hide_all]
#&f.name	
（どういう・・・ことなの、ランスロットは・・・）[p]
#

[if exp="f.kouhou!=1"]
#&f.name	
（確か、あの、時・・・ウェルム団長の命令に、背いたって・・・）[p]
#
[endif]
	
[playse storage="walkyuka_onjin.ogg"]
[config_true]
[chara_show name="lion"  storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]
#ライオネス	
「・・・」[p]
#

#&f.name	
「ライオネス！」[p][stopse]
#

#ライオネス	
[lioness_tatie_odoroki]
「！！・・・[lioness_tatie_kimazui][name]」[p]
#

#&f.name	
「どういうことなの・・・ランスロットが・・・刑って・・・首をはねるって・・・」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「お前・・・さっきの話・・・」[p]
#

#&f.name	
「ライオネス！」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・」[p]
#
[playbgm storage="chinkou_ontama.ogg"]

[if exp="f.kouhou==1"]

#ライオネス	
「エルムナードの戦いんとき、王宮騎士団には撤退の命令が出てた」[p]
#

#ライオネス	
「異形共は俺らに任せて、さっさと王都に帰ろうとした」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「だけど兄貴はそれに逆らって、俺らのために自分の隊を連れて戦場に戻ったんだ」[p]
#

	
#&f.name	
「で、でもそれで、それで首をはねるって・・・どういうことなの！？」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「バカが！お前忘れたのか？騎士が命令に背いたら死刑だろうが！」[p]
#

#&f.name	
「え・・・」[p]
#

#&f.name	
（あ・・・）[p]
#

[lioness_tatie_akireru]
#ライオネス	
「兄貴から、何を習ったんだよお前・・・」[p]
#

#&f.name	
「ご、ごめんなさい・・・」[p]
#

#&f.name	
「でも、本当に・・・本当に・・・？ウェルム団長が、ランスロットを・・・？」[p]
#

[endif]

[if exp="f.kouhou!=1"]
#&f.name	
「あのとき、命令違反は例外なく死刑って・・・まさか・・・本当に・・・」[p]
#

[endif]

[lioness_tatie_otikomi]
#ライオネス	
「まだ、わかんねえ。地下牢に打ち込まれはしなかったみてえだけどな・・・あんなオヤジでも、自分の子供だ」[p]
#

#ライオネス	
「一応、悩んでんだろ・・・多分・・・多分な・・・」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「兄貴の野郎・・・馬鹿なことしやがって・・・」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「今まで通り、親父の腰巾着やってりゃよかったんだよ・・・格好、つけやがって・・・」[p]
#

#ライオネス	
「俺は・・・感謝なんかしねえ」[p]
#

#&f.name	
（ライオネス・・・）[p]
#
[fadeoutbgm time=1000]
[chara_hide_all][chara_off]

[endif]

;一日の終わり
[refresh_hanyou]
[bg storage="irainheya_yoru_tasogare.jpg"]



;テストコード
;[eval exp="f.event_war_lion_sumi=1"]
;[showmenubutton]
[stopbgm]
[message_settei_ad]
[if exp="f.event_war_lion_sumi!=1||f.kouhou==1"]
[jump storage="scenario_2/episode/epi_5_lion_epi.ks"]
[endif]

;騎士団本部廊下※戦争#ライオネスイベント後
[bg storage="kisidanrouka_tasogare.jpg"]

[walkyuka]
#&f.name	
「うーん・・・突然呼び出しって・・・重要な話ってことだったけど」[p]
#


#&f.name	
（・・・何か私やらかしたかな・・・それとも異形のこととか？）[p]
#


#&f.name	
（ルシアはいなくなったものの、異形はまだ時々街中に出るんだよね・・・）[p]
#

[stopse]
#&f.name	
「戦争が終わっても、気は抜けないな・・・」[p]
#

*dancho_hanasi
[bg storage="dancho_tasogare.jpg"]	
[playse storage="nokku_tairakomori.ogg"]
#&f.name	
「失礼します・・・、と・・・」[p]
#

[dancho_tatie_touroku]
[cera_tatie_touroku]
[tris_tatie_touroku]
[lioness_tatie_touroku]
[kra_tatie_touroku]

[config_false]
[kra_tatie_show_right]
[lioness_tatie_show_left]

[chara_hide_all]

[cera_tatie_show_dancho]
[tris_tatie_show_dancho]
[dancho_tatie_show]


#&f.name		
（なんだろう・・・なんか・・・深刻な空気・・・）[p]
#


#&f.name		
（・・・どうしたんだろう・・・）[p]
#

[dancho_tatie_metoji]
#団長	
「・・・そろったな。それでは、クライスト、さっきの話の続きを」[p]
#

[chara_hide_all]
[kra_tatie_show_right]
[lioness_tatie_show_left]

#&f.name	
（クライストさん・・・）[p]
#

[lioness_tatie_udekumi]
[kra_tatie_metoji]
#クライスト	
「・・・わかりました」[p]
#

[chara_hide_all]
[anten]

[wait time=2000]
[bg storage="dancho_tasogare.jpg"]
[playbgm storage="op_musmus.ogg"]



#&f.name	
「魔剣ヴァエルが・・・まだ！？」[p]
#


[kra_tatie_show_right]
#クライスト	
「ルシアは確かに俺が倒した。だけど、持ち主を失った魔剣ヴァエルは、俺たちには不可視の姿でさまよっている」[p]
#

[cera_tatie_show_dancho]
#セレ	
「剣が不可視の姿・・・？？」[p]
#


[kra_tatie_mehuse]
#クライスト	
「魔剣は、普通の武器とは違う。精神世界に存在する思念・・・ディーヴァが、持ち主と契約することで、この世に武器の形を成したもの」[p]
#

[dancho_tatie_show]
#団長	
「ディーヴァ・・・」[p]
#


[if exp="f.event_war_kra_sumi==1"]
#&f.name	
「ディーヴァって・・・あのときの・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#


#&f.name	
（あ・・・言っちゃ、行けなかったのかな・・・）[p]
#

[endif]


[chara_hide name="cera"]
[chara_hide name="dancho"]
[lioness_tatie_show_left]

[lioness_tatie_udekumi]
#ライオネス	
「どういうことだよ？じゃあ、ルシアを倒してもヴァエルがクレールを襲ってくるってことなのか？」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・本来なら、ディーヴァは持ち主となる者を探し力を与えるだけで、一国に復讐する意思を持つということは聞いたことがない。
[kra_tatie_mehuse]
だけど・・・」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「・・・だけど？なんだよ」[p]
#


[kra_tatie_yokome]
#クライスト	
「だけど、ヴァエルが俺に言った、あの最後の言葉・・・」[p]
#


#&f.name	
「最後の・・・って、クライストさん？」[p]
#


[kra_tatie_normal]
#クライスト	
「『我の復讐を邪魔するな』ヴァエルはそういった。おそらく持ち主であるルシアとの利害の一致を利用して、ヴァエルがクレールへの復讐を考えていたんだと思う」[p]
#


#&f.name	
（魔剣ヴァエルが、クレールに・・・復讐・・・！？）[p]
#

[fadeoutbgm time=1000]
[chara_hide name="lion"]
[tris_tatie_show_left]

#トリスタン	
「・・・・・・。しかしこれまでの話からすると、ヴァエルは思念のようなものだというのだろう？
[tris_tatie_sian]
それが復讐と言われても、ぴんとこないが・・・」[p]
#


[dancho_tatie_show]
#団長	
「・・・そうだな。思念といわれても・・・。一体ディーヴァというのは、なんの『思念』なのだ？」[p]
#


[kra_tatie_yokome]
#クライスト	
「・・・・・・・・・・」[p]
#


#&f.name	
「クライストさん？」[p]
#


[playbgm storage="shuuen_musmus.ogg"]
[kra_tatie_mehuse]
#クライスト	
「ディーヴァは、古代魔族の思念が昇華し、結晶したもの」[p]
#

[tris_tatie_mihiraki]
[dancho_tatie_show]
[dancho_tatie_ikari]
#団長	
「なに！？」[p]
#


#&f.name	
「古代魔族・・・って・・・」[p]
#


#&f.name	
（こ・・・古代魔族・・・聞いたことがないわけではないけど・・・）[p]
#


#&f.name	
（何百年も前に絶滅した、古の種族。人間とは異なり、特殊な能力を持ってたって・・・ランスロットが・・・）[p]
#


#&f.name	
（そんなのの思念が・・・魔剣ヴァエルを作り出すっていうの・・・？）[p]
#


#&f.name	
「その古代魔族の思念である、ディーヴァが・・・クレールに復讐するってことなの・・・？でも、どうして・・・」[p]
#


[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#


[chara_hide name="tris" time=50]
[chara_hide name="dancho" time=50]
[lioness_tatie_show_left]
#ライオネス	
「なんか、うらみがあるってことなのかよ？」[p]
#


[kra_tatie_mehuse]
#クライスト	
「・・・・全く、・・・無関係、ということはないと思う」[p]
#

[fadeoutbgm time=1000]
[dancho_tatie_show]
[dancho_tatie_metoji]
#団長	
「・・・では、クレールは今度はルシアではなくヴァエルに狙われているということなのか・・・・」[p]
#


[chara_hide_all time=50]
[cera_tatie_show_dancho]

#セレ	
「父さん・・・」[p]
#
[config_false]
[chara_show name="tris" storage="tris_tatie/tris_donari.png"   height="603" width="420" top=50 left=390]
;[lioness_tatie_show_left]
#トリスタン	
「おいクライスト貴様！なぜちゃんとヴァエルまで始末してこなかった！？」[p]
#

[chara_hide_all time=50]
[config_true]
[kra_tatie_show_tall]
#クライスト	
「とりあえず、落ち着いて。ヴァエルはあくまでも『思念』で、精神世界に生きるもの。俺たちに物理的に危害を加えることはできない」[p]
#

[chara_hide_all time=50]
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png"   height="603" width="420" top=50 left=200]
;[lioness_tatie_show_left]
#トリスタン	
「そ、そうなのか！？」[p]
#

[chara_hide_all time=50]

[config_true]
[chara_show name="kra" storage="&f.kra_metoji" time=50 left=130 top=0]
#クライスト	
「そう。宿主・・・持ち主を探して力を与え、剣という形で具現化を果たさなければ、ね」[p]
#

[config_false]
[dancho_tatie_show]
#団長	
「では、持ち主を手に入れれば・・・？」[p]
#

[playbgm storage="shuuen_musmus.ogg"]

[kra_tatie_normal]
#クライスト	
「持ち主の意思によりヴァエルが制御されている間は、必ずしもクレールへの脅威になるとは限らない。

[kra_tatie_yokome]
ただ、ヴァエルにとりこまれた場合には・・・」[p]
#


#&f.name	
「取り込まれる！？って・・・」[p]
#


[kra_tatie_mehuse]
#クライスト	
「・・・本来魔剣の力は、人間には到底制御できるものじゃない。そういうこともありえるってことだよ」[p]
#


#&f.name	
「・・・・・・・・・・」[p]
#


#&f.name	
（ということは・・・）[p]
#


#&f.name	
「今は大丈夫だけど、いずれは・・・ってこと？・・・それなら、やっぱりヴァエルはなんとかしないと・・・」[p]
#


[kra_tatie_normal]
#クライスト	
「そうだね。俺も、いろいろ調べてみようと思うよ。なにしろ、古代魔族のことは分からないことも多いからね」[p]
#
[fadeoutbgm time=3000]
[chara_hide name="kra" time=50]
[chara_hide name="dancho" time=50]


[chara_on][chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40]
#ライオネス	
「ディーヴァ・・・古代魔族とクレールとの関係、か・・・」[p]
#

[chara_on][chara_show name="tris" height="603" width="420" top=50 left=390]
#トリスタン	
「魔族・・・にわかには信じがたいが・・・そんなもの、伝承や御伽噺でしか聞いたことないぞ」[p]
#

[chara_hide_all time=50]



[kra_tatie_show_tall]
[kra_tatie_metoji]
#クライスト	
「・・・そうだね。俺も最初はそうだった」[p]
#


#&f.name	
「クライストさん・・・」[p]
#

[kra_tatie_mehuse]
#クライスト	
「だけど、この力、魔剣が与える魔力は、人間には決して使うことのできない異質な力。このことこそが、魔族の存在したことを証明しているような気がする」[p]
#

[chara_hide name="kra" time=50]

[config_true]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482]
#セレ	
「クライスト・・・」[p]
#


#&f.name	
（・・・確かに・・・傷を一瞬で治したり、異形たちをあっという間に倒したり・・・あれが・・・魔力・・・）[p]
#


#&f.name	
（クライストさんのおかげで、王都は助かったし、たくさんの人が助かった、でも、）[p]
#


#&f.name	
（・・・だけどもし、その力が敵に回ったら・・・私たちは・・・）[p]
#

[chara_hide name="cera"]

[chara_on][chara_show name="kra" storage=&f.kra_mehuse top=0 left=130]
#クライスト	
「・・・・」[p]
#

[if exp="f.event_war_kra_sumi==1"]
#&f.name	
（ルシアとの戦いのあと苦しがってたのも・・・人間の器では扱えない大きな力だから、なのかな・・・）[p]
#
[endif]

#&f.name	
（クライストさん・・・）[p]
#


[kra_tatie_normal]

#クライスト	
「ともかく、まずは、クレールの過去になにがあったのか・・・そこに魔族との関わりがないか調べてみます。
[kra_tatie_yokome]
そこから、ヴァエルをなんとかする方法が見つかるかもしれません」[p]
#

[config_false]
[dancho_tatie_show]
#団長	
「わかった。すまないが、頼んだぞ、クライスト。ライオネス、トリスタン、お前たちも手伝ってやれ」[p]
#
[chara_hide name="kra"]
[config_false]
[chara_hide name="dancho"]
[chara_on][chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=390]


#ライオネス	
「えっ・・ええっ・・・！？」[p]
#


#トリスタン	
「・・・ですが・・・・」[p]
#

[dancho_tatie_show]
[dancho_tatie_metoji]
#団長	
「通常の業務は免除し他のものにやらせる。王国の危機にかかわる問題だからな」[p]
#



[lioness_tatie_kimazui]
#ライオネス	
「・・・わ・・・わかりました・・・」[p]
#

[tris_tatie_mehuse]
#トリスタン	
「団長が、そうおっしゃるなら・・・」[p]
#

[chara_hide_all time=50]
[config_true]
[kra_tatie_show_tall]
[kra_tatie_smile]
#クライスト	
「それじゃ行こうか、ライオネス、トリスタン」[p]
#

[chara_hide_all time=50]

[config_false]
[chara_on][chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=390 time=50]

	#ライオネス
「・・・・・てめクライスト・・・既に仕切ってんじゃねえよ・・・・」[p]
#
[chara_hide_all]

[playse storage="simerusizuka_onjin.ogg"]



	
#&f.name	
「クライストさん・・・騎士団員でもないし、クレールには何の関わりもないのに、どうしてあそこまで・・・」[p]
#


#&f.name	
（王宮から頼まれてたのは、ルシアを倒すことだけだったはず、だけど・・・）[p]
#

[config_true]
[cera_tatie_show]
[config_false]
[dancho_tatie_show]

#団長	
「そうだな・・・彼が力を貸してくれるのはありがたいことではあるが・・・」[p]
#


#セレ	
「父さん？」[p]
#

[dancho_tatie_metoji]
#団長	
「・・・もしかしたら、ヴァエルを逃したことに責を感じているのかもしれん」[p]
#


#&f.name	
「・・・団長・・・」[p]
#


#&f.name	
（そう、なのかな・・・）[p]
#


#&f.name	
（・・・なんだろう、他にも理由があるような感じもする・・・それが何だとははっきりいえないけど）[p]
#


[cera_tatie_udekumi]
#セレ	
「表面的には軽そうだが・・・意外に思慮深いところもあるようだからな」[p]
#


#&f.name	
（そのへんは確かに・・・なんだかんだ言うけど、頼まれたことはちゃんとやってくれるし・・・トリスタンよりしっかりしてるかも・・・なんて）[p]
#


[dancho_tatie_normal]
#団長	
「このことは、王宮にも伝えるか・・・

[dancho_tatie_metoji]
いや、いらぬ混乱を招く可能性もある。・・・まだ知らせないほうがいいかもしれんな」[p]
#


[cera_tatie_metoji]
#セレ	
「そうですね・・・差し迫った脅威というわけではありませんし・・・クライストの立場もあるでしょうし」[p]
#


#&f.name	
（セレさん・・・そっか・・・ルシアを倒したのにヴァエルがなんて言ったら、クライストさんも王宮のほうから責められるものね）[p]
#

[dancho_tatie_normal]
#団長	
「うむ・・・。ああ、そうだった、王宮といえば・・・[name]」[p]
#

[cera_tatie_normal]
#&f.name	
「団長・・・？」[p]
#

[if exp="f.event_war_rans_sumi!=1"]
[playbgm storage="raina_p_ontama.ogg"]
[endif]

#団長	
「実は・・・国王陛下から勅命があってな、一週間後の戦勝祝賀会に、地方騎士団から代表で２名、出席してほしいと要請がきている」[p]
#


#&f.name	
「しゅ、祝賀会、ですか・・・」[p]
#


#団長	
「祝賀会では、国王陛下の謁見もあり、王都内の貴族も集まってくる。舞踏会も行われる予定らしい」[p]
#


#団長	
「我々は貴族ではないが、場にふさわしい行動を求められる。なので、代表は、貴族の振る舞いを熟知している者にしたいんだが」[p]
#


#&f.name	
「はあ・・・」[p]
#


#&f.name	
（貴族の振る舞いを知ってるって・・・）[p]
#



#団長	
「一人目はライオネスにした。身分も王族の遠縁だし、ウェルム王宮騎士団長の息子なら見劣りもしないだろう」[p]
#

[if exp="f.event_war_rans_sumi==1"]
[dancho_tatie_metoji]
#団長
「兄弟があんなことになって、心苦しいとは思ったが・・・何しろ他に適任もないのでな・・・」[p]
#
#&f.name
「団長・・・」[p]
#
[endif]

[dancho_tatie_normal]
#団長	
「問題は二人目なんだが・・・これも王宮からの要求で、男女ペアということになっていてな・・・」[p]
#



#団長	
「[name]、お前にその役を頼みたいのだが・・・どうだ？」[p]
#

[stopbgm]

[if exp="f.event_war_rans_sumi==1"]
#&f.name
「でも・・・」[p]
#
[else]
#&f.name	
「えっ・・・ええっ！！？？」[p]
#
[endif]


[if exp="f.event_war_rans_sumi==1"]
[dancho_tatie_metoji]
#団長	
「・・・すまないな。このような時に・・・」[p]
#

#&f.name
「団長・・・」[p]
#
[dancho_tatie_normal]
#団長	
「ランスロットのこともある。
ライオネスやお前に、依頼するのはわしとしても心が痛むが・・・国王陛下の命令だ」[p]
#
[endif]


#&f.name	
「で、でも私なんかが・・・セレさんとかの、ほうが・・・」[p]
#

[cera_tatie_metoji]
#&f.name	
（振る舞いなんか知らないし、貴族の人たちの中じゃ、きっと浮いちゃうよ・・・！）[p]
#


#団長	
「セレは祝賀会前に、南大陸のフランチェスカへ出張の予定なんだ。前々から決まっていたことで、変更はできない」[p]
#

[cera_tatie_otikomi]
#セレ	
「すまない、[name]・・・

[if exp="f.event_war_rans_sumi==1"]
こんな時に・・・
[endif]
負担をかけるとは思うんだが・・・」[p]
#

[cera_tatie_komari]
#セレ	
「・・・ここで断ることになれば、地方騎士団の立場自体悪くなる可能性も・・・。考えてもらえないだろうか」[p]
#


#&f.name	
「しゅ、祝賀会・・・・・・」[p]
#

*sel_return
;[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_1]

*kotowaru
#&f.name
（何しろ国王陛下のちょ、勅命だし・・・これは断れないよね・・・）[p]
#
;[jump target=*sel_return]
;[cera_tatie_normal]
;[dancho_tatie_normal]
;#団長	
;「そうか・・・わかった。無理やり出席してもらうのも、こちらも心苦しいしな・・・王宮への対応はなんとかしよう」[p]
;#


;#&f.name	
;「すみません・・・本当に」[p]
;#


;#団長	
;「大丈夫だ。こちらも、突然無理を言ってすまなかったな」[p]
;#


;#&f.name	
;（団長・・・悪いことしちゃったかな）[p]
;#


;#団長	
;「その代わりと言ってはなんだが、祝賀会当日は王都周辺および王宮周辺の警備にあたってもらう。頼んだぞ」[p]
;#


;#&f.name	
;「は、はい！！」[p]
;#


;#&f.name	
;（断ったぶん、こっちを頑張らなくちゃ、だよね・・・）[p]
;#


;#団長	
;「戦勝祝賀会は７日後だ。特にそれまでにやっておくことはないが、異形等が現れれば戦闘も予想される。準備はしっかりするように」[p]
;#


;#&f.name	
;「はい！」[p]
;#
;[chara_hide_all][chara_off]

;[jump target=*epi5_end]
	
*hikiuke

#&f.name
「わ、わかりました・・・」[p]
#

[cera_tatie_smile]
#団長	
「引き受けてくれるか！！ありがとう、[name]」[p]
#


[if exp="f.event_war_rans_sumi==1"]
#団長
「本当にありがとう。
[dancho_tatie_metoji]
すまないな・・・辛いだろうに」[p]
#

#&f.name
「団長・・・」[p]
#
[endif]

#&f.name	
「で、でも私、貴族の振る舞いとかって・・・」[p]
#

[dancho_tatie_normal]
#団長	
「大丈夫だ、７日もあれば準備はできる。セレ、
[cera_tatie_normal]
ああいった場は初めてだろうから、力になってやりなさい」[p]
#

[cera_tatie_udekumi]
#セレ	
「わかりました。[name]、
[cera_tatie_smile]
そんなに緊張しなくてもいい。覚えることは少ないから」[p]
#


#&f.name	
「は、はい・・・」[p]
#


#&f.name	
（そ、そんなこと言ったって・・・貴族の振る舞い・・・難しそうだな・・・）[p]
#


#セレ	
「それじゃ、私から詳しい説明をする、[name]、こっちだ」[p]
#


#&f.name	
「あっ、は、はい！」[p]
#

[chara_hide_all]
[anten]
[wait time=2000]

[bg storage="irainheya_tasogare.jpg"]

[playbgm storage="boukennojunbi_ontama.ogg"]
[config_true]
[cera_tatie_show]
#セレ	
「まずはドレスだな。それから、靴・・・歩きにくいだろうが、くれぐれも転んだりすることのないようにしないと」[p]
#


#&f.name	
「ど、ドレス・・・」[p]
#
[cera_tatie_komari]
#セレ	
「剣を持って出席するわけにはいかないだろう。何しろ貴族の催し物なんだぞ」[p]
#


#&f.name	
「うう・・・ドレスなんて、着たことないな・・・セレさんはあるの？」[p]
#

[cera_tatie_metoji]
#セレ	
「ああ、以前に一度だけ。それから、ダンスのレッスンも。辛かった・・・」[p]
#

[cera_tatie_otikomi]
#セレ	
「もう８年も前のことだが・・・あの時も、祝賀会があって私と父さんが行ったんだ」[p]
#

[cera_tatie_udekumi]
#&f.name	
「そうだったんだ・・・私、ドレスなんて持ってないけど、どうすれば・・・」[p]
#

[cera_tatie_smile]
#セレ	
「費用は地方騎士団で負担するから、王都の仕立て屋に頼むといい。一週間もあれば間に合うだろう」[p]
#


#&f.name	
「仕立て屋さんか・・・」[p]
#

[cera_tatie_normal]
#セレ	
「確か、噴水通りにあったはずだ。３軒くらいだったか・・・」[p]
#

[cera_tatie_metoji]
#セレ	
「店によって得意なドレスが違うらしいから、好きな店を選ぶといい」[p]
#


#&f.name	
「えーと、じゃあ、当日までにドレスを用意すればいいのかな」[p]
#

[cera_tatie_normal]
#セレ	
「そうだな。靴は仕立て屋でドレスと一緒に用意してくれるから、心配しなくていい」[p]
#


[cera_tatie_metoji]
#セレ	
「ああそれから・・・あとはマナーか・・・」[p]
#


#&f.name	
「マナー？」[p]
#


[cera_tatie_udekumi]
#セレ	
「その場にふさわしい、身分の高い女性の立ち居振る舞いというものがある。これが悪いと変に浮いてしまうぞ」[p]
#


#&f.name	
「え・・・ええええ・・・」[p]
#

[cera_tatie_normal]
#セレ	
「これは・・・そうだな、私が教えるより、本物を学んだほうがいいだろう」[p]
#


#&f.name	
「本物・・・って・・・」[p]
#


#セレ	
「私がライオネスに頼んでおく。お前にマナーを教えるように」[p]
#


#&f.name	
「えっ・・・ちょ、ちょっと待って、ライオネスって・・・」[p]
#


[cera_tatie_mihiraki]
#セレ	
「それは・・・お前、あいつはああ見えて貴族だし、当日一緒に行動する予定なんだから教わるのが一番いいだろう」[p]
#


#&f.name	
「で、でも貴族の女の人のマナーなんでしょ？それはライオネスには・・・」[p]
#

[cera_tatie_normal]
#セレ	
「あいつの家にはマナーや振る舞いを教える家の者がいるはずだ。貴族の家には、必ず一人はそう言った職業の人間がいる」[p]
#


#&f.name	
「い、家って・・・でも、それってつまり・・・」[p]
#

[cera_tatie_smile]
#セレ	
「大丈夫だ。ライオネスにあとでお前の部屋にいくよう言っておく。具体的なことはあいつと相談すればいい」[p]
#


#&f.name	
「ライオネス、断るんじゃ・・・」[p]
#

[cera_tatie_normal]
#セレ	
「これは騎士団としての仕事だし、団長からの頼みでもある。断ることはないだろう」[p]
#


#&f.name	
（本当かなあ・・・）[p]
#

[if exp="f.event_war_rans_sumi==1"]
[cera_tatie_normal]
[else]
[cera_tatie_smile]
[endif]
#セレ	
「それじゃ、私は出張の準備もある。
[if exp="f.event_war_rans_sumi==1"]
[cera_tatie_otikomi]
ランスロットがこんな時に・・・酷だろうが・・・
しかし陛下の勅命だ。
[endif]
[cera_tatie_normal]
当日は頑張るんだぞ、[name]」[p]
#


#&f.name	
「は、はい！」[p]
#


#&f.name	
（不安だけど・・・とにかくやるしかないよね・・・）[p]
#
[chara_hide_all]
[anten]
[bg storage="irainheya_yuu_tasogare.jpg"]
	
;#&f.nameの部屋
[playse storage="nokku_tairakomori.ogg"]
;ノック

[lioness_tatie_show]
#ライオネス	
「・・・セレから聞いた。お前、祝賀会出席するんだってな」[p]
#


#&f.name	
「う、うん・・・ライオネス、その・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「俺はああいう場所は苦手だ。行きたいか行きたくないかって言ったら、行きたくねえ」[p]
#

[if exp="f.event_war_rans_sumi==1"]
[lioness_tatie_otikomi]
#ライオネス	
「しかも兄貴がこんな時だし・・・余計によ・・・そりゃねえよなって話だ」[p]
#
[endif]

[if exp="f.event_war_rans_sumi==1"]
#&f.name
「・・・・・・ライオネス・・・」[p]
#
[else]
#&f.name	
（ああ・・・やっぱり・・・）[p]
#
[endif]

[lioness_tatie_kimazui]
#ライオネス	
「でも、今回は地方騎士団のメンツもかかった仕事だ。グレッグ団長の顔を潰すわけにはいかねえ」[p]
#


#&f.name	
「そ、そうだよね・・・うん」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「貴族の振る舞いか・・・お前にできんのかどうかっていうより、やってもらうしかねえからな」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「明日、俺ん家で教えてやる。朝、本部の入り口で待ち合わせだ」[p]
#


#&f.name	
「う、うん、わかった。その、ありがとう・・・」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「いーか、教えられたら１回で覚えろよ、時間ねえんだからな！」[p]
#


#&f.name	
「ううっ・・・が、頑張りますっ・・・」[p]
#
[fadeoutbgm time=3000]
[chara_hide_all]

[status_hyouji]
*mannar_day
[clearstack]
[anten]
[wait time=2000]
[bg storage="irainheya_tasogare.jpg"]
	
;翌朝、強制イベント
[playse storage="tori_tairakomori.ogg"]
#&f.name	
「今日はライオネスの家に行くんだよね・・・頑張らないと」[p]
#

[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
;騎士団入口
[config_true]
[lioness_tatie_show]
#ライオネス	
「・・・・・・」[p]
#


#&f.name	
「お、おはよう・・・えーと・・・何？」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「いや・・・」[p]
#


;魅力一定以上
[if exp="f.irain_charm>100"]

[lioness_tatie_kosinite]
#ライオネス	
「お前・・・よく見ると思ってたより・・・その、なんだ、まあ・・・いいんじゃねえか？」[p]
#


#&f.name	
（えっ・・・いいって・・・いい線言ってるってことかな？なんでだろ・・・見た目？）[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「まあなんとかなりそうな気もすんな。がんばれよ」[p]
#


#&f.name	
「は、はい！」[p]
#

[elsif exp="f.irain_charm<101"]
;魅力一定未満

[lioness_tatie_normal]
#ライオネス	
「お前・・・よく見ると結構もっさりしてんのな」[p]
#


#&f.name	
（えっ・・・どういう意味・・・もっさり・・・？あんまり魅力ないってことかな・・・）[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「・・・まあ、気合、入れろよ」[p]
#


#&f.name	
「は、はい！」[p]
#

[endif]
[chara_hide_all]	
;#ライオネスの家
[bg storage="rans_jikka_tasogare.jpg"]


;入浴のサブイベント終了フラグあり
[if exp="f.event_sub_14_sumi[10]==1||f.event_sub_14_sumi[11]==1"]
#&f.name	
（相変わらず広いお屋敷だなあ・・・）[p]
#
[else]
#&f.name	
「えっ・・・ここ！？」[p]
#

[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「なんか変か」[p]
#


#&f.name	
「ちょ、待ってここって・・・お城？じゃないよね？」[p]
#

[lioness_tatie_akireru]
#ライオネス	
「何言ってんだお前」[p]
#
#&f.name	
（そっか・・・団長が王族の遠縁って・・・貴族なら当たり前なのかな・・・それにしても広いお屋敷・・・）[p]
#
[endif]

[lioness_tatie_kosinite]
#ライオネス	
「さっさと行くぞ」[p]
#


#&f.name	
「は、はい！」[p]
#

[chara_hide_all]
	
;屋敷中、廊下
[bg storage="rans_jikka_rouka_tasogare.jpg"]
[if exp="f.event_war_rans_sumi!=1"]
[playbgm storage="asanositaku_ontama.ogg"]
[endif]

[lioness_tatie_show]
#講師	
「ライオネス様からお話は伺っております。あなたが[name]さんですね」[p]
#

[lioness_tatie_kosinite]
#&f.name	
「は、はい！よ、よろしくお願いします！」[p]
#

[if exp="f.event_war_rans_sumi==1"]

#講師
「なんでも、ランスロット様のお弟子さんだそうで・・・
今はお辛い気持ちでいらっしゃるでしょうが・・・国王陛下の命は絶対です」[p]
#

[lioness_tatie_otikomi]
#&f.name
「そう・・・ですよね・・・」[p]
#
#講師
「私も出来る限りお手伝いいたしますので・・・当日、恥ずかしくない振る舞いをできるよう、
頑張りましょう」[p]
#
#&f.name
「は、はい・・・」[p]
#
#&f.name
（そっか・・・そうだよね、ライオネスもそうだけど、ここの家の人たちも、きっと悲しい気持ちなんだろうな・・・）[p]
#
[else]

#講師
「なるほど、これはなかなか鍛え甲斐がありそうです」[p]
#

#&f.name	
（ううっ・・・どういう意味だろう・・・）[p]
#

#講師	
「見た目というものは、着飾ればなんとかなるのですが、内面の美しさ、魅力は取り繕ってもどうにもならないところがあります」[p]
#


#&f.name	
「み、魅力・・・」[p]
#

[lioness_tatie_nemunemu]
#講師	
「そうです。育ちの良さや教養、人格の良し悪し、そう言ったものは、そのかたの雰囲気に滲み出るものなので・・・」[p]
#


#&f.name	
「育ちの良さとか、そんなこと言われても・・・私、貴族とかじゃないし・・・」[p]
#


#講師	
「ライオネス様のように、育ちがよろしくても立ち居振る舞いで台無しになっている方もいらっしゃいます[lioness_tatie_odoroki]」[p]
#


[lioness_tatie_otikomi]
#ライオネス	
「・・・オイ・・・」[p]
#

[lioness_tatie_kimazui]
#講師	
「もし貴方様が育った環境を気にしてるのでしたら、それは杞憂というものですよ」[p]
#


#講師	
「これからの努力次第でどうにでも変えることはできますので」[p]
#


#&f.name	
「そ、そうなんですか」[p]
#


#講師	
「はい。やる気さえあれば、大丈夫です」[p]
#


#講師	
「祝賀会で恥ずかしくなく振る舞えるよう、私も力の限りお手伝いいたしますので」[p]
#


#&f.name	
「あ、ありがとうございます！よろしく、お願いします！」[p]
#


#講師	
「そうそう、ライオネス様も
[lioness_tatie_odoroki]
この機会にもう一度、マナーをおさらいしましょうか」[p]
#


#講師	
「すっかり忘れていらっしゃるみたいですので、そのままでは身分どうこう以前に恥をかきかねません」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「お、俺はその時になればできるからいいんだよ！」[p]
#


#講師	
「ダメです。二人で出席するのですから、[lioness_tatie_odoroki]息のあった振る舞いも必要です」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「ガキの時にあんだけみっちりやられたんだぞ！もう充分だ！」[p]
#


#講師	
「ダメです！！」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「う・・・うう・・・」[p]
#


#&f.name	
（き・・・厳しい・・・）[p]
#


#講師	
「さあ、それでは早速レッスンをはじめましょうか！」[p]
#


#&f.name	
「は、はい！」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「うう・・・」[p]
#


[endif]


[chara_hide_all]
[fadeoutbgm time=1000]
[anten]

*manner
貴婦人の振る舞いマナーレッスンを受けた！[p]

[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.irain_charm=f.irain_charm+3"]
魅力が3アップ！！[p]
	
	
[bg storage="rans_jikka_rouka_tasogare.jpg"]
#講師	
「そうじゃないとさっきから申し上げましたでしょう！」[p]
#
[chara_on][chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#ライオネス	
「うるせえな、これでいいじゃねえか！」[p]
#


#講師	
「その言葉遣いはなんです！もう一度やり直し！」[p]
#


[if exp="f.event_war_rans_sumi!=1"]
[lioness_tatie_otikomi]
#ライオネス	
「うっ・・・うう・・・」[p]
#


#&f.name	
（厳しい・・・）[p]
#
[endif]

#講師	
「もう少しライオネス様をしごいてから終わりましょう。[name]さんはお疲れでしょうから、応接室で休んでいただいて結構ですよ」[p]
#


#&f.name	
「あ、は、はい・・・」[p]
#


#講師	
「[name]さんを応接へ案内して」[p]
#


#メイド	
「かしこまりました。どうぞこちらへ」[p]
#


#&f.name	
「は、はい！」[p]
#
[chara_hide_all]

[bg storage="rans_jikka_shokudou_tasogare.jpg"]

	
;応接室
[playse storage="kappuoku_koukaonlabo.ogg"]
#メイド	
「紅茶とクッキーです。よろしければ召し上がってください」[p]
#


#&f.name	
「美味しそう・・・ありがとうございます」[p]
#
#メイド	
「どうぞごゆっくり」[p]
#
#&f.name	
（それにしても・・・やっぱり広いお屋敷だな・・・）[p]
#
;テスト
;[eval exp="f.town_trust=0"]
;ランスフラグと街の人の信頼度一定以上
[if exp="f.event_war_rans_sumi==1&&f.town_trust>4"]

*rans_epi_1

[playbgm storage="shuuen_musmus.ogg"]
#&f.name	
「・・・ん？」[p]
#メイド１	
「ねえ聞いた？ランスロット様のこと・・・」[p]
#メイド２	
「まさかあのランスロット様がそんなこと・・・ウェルム団長も、ひどいことを・・・」[p]
#メイド１	
「でも、命令違反は極刑なんでしょ？そうしたらやっぱり・・・」[p]
#メイド２	
「そんな・・・きっと何か事情があったのよ・・・あのランスロット様が、理由もなしにありえないわ」[p]
#メイド３	
「ちょっと誰が聞いてるかわからないわよ、そんな話・・・もうやめなさい」[p]
#メイド１、２	
「わ、わかってるわよ・・・！」[p]
	
#&f.name
（ランスロットのこと・・・、そう、だ、ここはランスロットの家でもある・・・）[p]
#&f.name	
（そういえば、あの時、ライオネスと団長が・・・ランスロットは家にいるって・・・）[p]
#&f.name
（命令違反で・・・。本来なら地下牢って話だったから事実上の監禁だよね・・・）[p]
#&f.name	
「ランスロット・・・この家のどこかの部屋にいるのかな・・・」[p]
[fadeoutbgm time=1000]

[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans]


*yes
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*rans_start]

*no
#&f.name
「気になるけど・・・大人しくライオネスが終わるのを待とう・・・」[p]
#
[jump target=*sonogo]

[else]
*sonogo
[anten]
[bg storage="rans_jikka_shokudou_tasogare.jpg"]
１時間後[p]

[lioness_tatie_show]
[lioness_tatie_otikomi]
#ライオネス	
「・・・帰るぞ・・・」[p]
#
#講師	
「お待たせしました。ライオネス様の覚えが悪かったもので、申し訳ありません」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「お、俺のせいだってのかよ！」[p]
#
[lioness_tatie_kimazui]
#講師	
「またお待ちしております。祝賀会まであと一週間です。頑張って自身の魅力を上げていきましょう」[p]
#

[if exp="f.event_war_rans_sumi==1"]
#講師	
「お師匠様があんなことになって、お辛いでしょうが、どうか今は」[p]
#
[endif]


[if exp="f.event_war_rans_sumi==1"]
#&f.name	
「・・・はい」[p]
#
[else]
#&f.name	
「は、はい！ありがとうございました！」[p]
#
[endif]

[if exp="f.event_war_rans_sumi==1"]
#&f.name	
（ここに来れば魅力が上げられるんだよね）[p]
#
#&f.name	
（頑張らなきゃね・・・なんとか、祝賀会までは）[p]
#
[else]
#&f.name	
（えーと、ここにくれば魅力が上げられるってことかな？）[p]
#
#&f.name	
（よし、頑張って祝賀会までにキレイになろう！）[p]
#
[endif]
[chara_hide_all]
[chara_off]

[endif]


*epi5_end
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]


