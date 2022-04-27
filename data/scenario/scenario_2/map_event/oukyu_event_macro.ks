	
	
[macro name="oukyu_event"]

[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[if exp="f.event_8_oukyu==2"]
;王宮

[if exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「・・・悪い。俺、先に本部に戻ってるわ」[p]
#
#&f.name
「えっ・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス
「・・・王宮には入りたくねえんだ」[p]
#
#&f.name
「・・・・・・」[p]
#
[chara_kakusu]
#&f.name
「仕方ない・・・一人でいこうっと」[p]
#

[eval exp="f.friend=0"]
[eval exp="f.event_8_lion_doukou=0"]
[endif]

[fadeoutbgm time=1000]
#門番	
「・・・・・・」[p]
#

#&f.name	
（・・・強面の門番がこっちを睨んでる・・・・・・なんて言ったらいいんだろ・・・）[p]
#

#&f.name	
「あ、あの・・・私、ランスロットに呼ばれて・・・」[p]
#

#門番	
「ああ、ランスロット隊長のお弟子さんですね。どうぞ」[p]
#

#&f.name	
（よ、よかった・・・）[p]
#

[bg storage="oukyuurouka_tasogare.jpg"]
[snowfall_0]
[playse storage="walkhibiku_onjin.ogg"]	
#&f.name	
「王宮か・・・懐かしいなぁ・・・」[p]
#

#&f.name	
（無理やり弟子入りしたのはいいけど、結局しばらくはここで雑用係だったんだもんね）[p]
#

#&f.name	
（剣持たせてもらえるまでだいぶかかったなあ・・・）[p]
#

#&f.name	
「って、ランスロットの部屋ってどっちだったっけ」[p]
#

#&f.name	
（王宮って広すぎるんだよね・・・えーと記憶を辿って・・・）[p]
#

[bg storage="oukyuu_hall_tasogare.jpg"]
#&f.name	
「こっち？だったかな？あれ？違う・・・」[p]
#

#&f.name	
「ん？」[p]
#

#&f.name	
「ひゃっ！」[p]
#
[image layer=3 page=fore visible=true name="kuro" storage="black.png" time=10 x=0 y=0]

[playse storage="butukaru_onjin.ogg"]

[free name="kuro" layer=3]
[yuria_tatie_touroku]
[yuria_tatie_show]
#ユリア	
「きゃ！！」[p]
#

[yuria_tatie_komari]
#侍女	
「ユリア様！！」[p]
#

#&f.name	
「あっ・・・ご、ごめんなさい・・・」[p]
#

#侍女	
「まあああ！！なんてこと！！ユリア様！ユリア様！！お怪我は！！！」[p]
#

#&f.name	
（ちょっとぶつかっただけなんだけどな・・・）[p]
#

#侍女	
「この薄汚い小娘！！ユリア様になんてことを！！」[p]
#

#&f.name	
「ご、ごめんなさい、大丈夫ですか？」[p]
#

[yuria_tatie_naki]
#ユリア	
「ああ・・・せっかくお父様に頂いたドレスが・・・」[p]
#

#侍女	
「まあああ！！ドレスが台無し！」[p]
#

#&f.name	
（少し汚れただけじゃ・・・）[p]
#

#ユリア	
「お気に入りでしたのに・・・ひどい・・・」[p]
#

#&f.name	
「あ、あの本当にごめんなさい・・・で、でもきっと洗えば元通りに・・・」[p]
#

[yuria_tatie_ikari]
#ユリア	
「元通りにですって？このドレスは特注品ですのよ？あなた方の着るような粗悪品の衣類と一緒にしないでくださるかしら」[p]
#

#ユリア	
「・・・そもそも、なぜそのような汚い格好でこのようなところに？」[p]
#

#&f.name	
（汚いかな・・・ちゃんと洗ってるつもりだけど・・・）[p]
#

#&f.name	
「あ、あの私、剣の先生がここの王宮騎士団にいるので、その人に会いに・・・」[p]
#


[yuria_tatie_mihiraki]
#ユリア	
「・・・剣の先生ですって？まさかランスロット様の・・・」[p]
#

#&f.name	
（あれ？知ってるのかな、ランスロットって有名人？）[p]
#

#&f.name	
「は、はいそうです、部屋探してたら迷っちゃって・・・」[p]
#

[yuria_tatie_ikari]
#ユリア	
「・・・」[p]
#

#&f.name	
（えっ・・・なんだろう・・・）[p]
#


#ランスロット	
「ユリア様！」[p]
#
[chara_config pos_mode=false]
[rans_tatie_touroku]
[chara_show name="rans" left=250]

[yuria_tatie_yorokobi]
#ユリア	
「あっ！ランスロット様！！」[p]
#

#&f.name	
（声音が変わった・・・？）[p]
#

[rans_tatie_normal]
#ランスロット	
「まだおいででしたか、よかった。お忘れ物です。大事なものではないかと思い急ぎ・・・」[p]
#

[rans_tatie_mihiraki]
[rans_tatie_normal_warai]
#ランスロット	
「やあ[name]、わざわざ王宮まできてもらっ」[p]
#

[yuria_tatie_naki]
#ユリア	
「ランスロット様！ついさっきそこでドレスを汚してしまいましたの・・・」[p]
#

[rans_tatie_mihiraki]
#ランスロット	
「あ、ああ、そうでしたか、でしたら替えのドレスをメイドに・・・」[p]
#

[yuria_tatie_ikari]
#ユリア	
「そこの小娘が私に強くぶつかってきたせいですわ」[p]
#

#&f.name	
「えっ、でも私・・・わざとじゃ」[p]
#

#ユリア	
「故意かそうでないかなど問題ではありませんわ。現に私のドレスを台無しにしたのは事実ですもの」[p]
#

#侍女	
「ユリア様、おかわいそうに・・・。せっかくのお気に入りのドレスでしたのに・・・」[p]
#

[rans_tatie_normal]

#ランスロット	
「それは・・・大変申し訳ございません、ユリア様。
[rans_tatie_metoji]
私からも不肖の弟子の無礼をお詫びいたします」[p]
#

#&f.name	
（ランスロット・・・）[p]
#

[rans_tatie_mehuse]
#ランスロット	
「お怒りはごもっともですが、弟子の不手際は私自身の責任であります。もし罰をお与えになるおつもりでしたら、彼女にではなく、私にお与えください」[p]
#

#&f.name	
「ランスロット」[p]
#


[rans_tatie_yokome]
#ランスロット	
「[name]、お前は黙っていろ」[p]
#

#ユリア	
「・・・」[p]
#

#侍女	
「・・・ユリア様・・・？」[p]
#

[yuria_tatie_metoji]
#ユリア	
「・・・今度同じようなことが起きましたら、首をはねますので、そのつもりで」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット	
「・・・貴女様の深きご厚情に感謝いたします。[name]」[p]
#

#&f.name	
「は、はいあの・・・も、申し訳、ありませんでした・・・」[p]
#

#侍女	
「運のいい小娘だこと」[p]
#

[rans_tatie_normal]
#ランスロット	
「ドレスに関しましては、私の方で弁償を・・・」[p]
#

#ユリア	
「結構ですわ。
[yuria_tatie_yorokobi]
あぁ、その代わり・・・来週、馬の遠乗りに連れて行ってくださいませんこと？」[p]
#

[rans_tatie_metoji]
#ランスロット	
「・・・わかりました。私めの馬でよろしければ、お連れいたしましょう」[p]
#

[yuria_tatie_smile]
#ユリア	
「うふふ、楽しみにしておりますわ。ではまた、ご機嫌よう」[p]
#

#&f.name	
（遠乗りの方がドレス汚れるんじゃないのかなあ・・・）[p]
#

[chara_kakusu]
[config_true]
;#ランスロットの部屋

[bg storage="ransheya_tasogare.jpg"]
[chara_config pos_mode=true]
[rans_tatie_show]

#ランスロット	
「災難だったな、[name]」[p]
#
[rans_tatie_sinnpai]
#&f.name	
「ご、ごめんなさいランスロット・・・あんな約束まで・・・私のせいで・・・」[p]
#

[rans_tatie_metoji]
#ランスロット	
「お前は何も気にしなくていい」[p]
#

#&f.name	
「でも・・・」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「・・・いいんだ。おそらく、久しぶりの王宮で迷った挙句ユリア様にぶつかってしまったのだろう？」[p]
#

#&f.name	
「お、お見通しだね・・・」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット	
「まあな」[p]
#

#&f.name	
「あの、ユリア様って・・・偉い人、なの？」[p]
#

[rans_tatie_normal]
#ランスロット	
「国王陛下の親戚筋にあたるお方だ。陛下の弟君の御息女で、事実上クレールの王女にあたる」[p]
#

#&f.name	
「えっ・・・えええ！！」[p]
#

#&f.name	
「で、でも・・・どうして、そんなお姫様がランスロットのところに・・・」[p]
#

[rans_tatie_mehuse]
#ランスロット	
「・・・」[p]
#

#&f.name	
「あっ・・・え、ええとごめんなさい・・・」[p]
#

[rans_tatie_metoji]
#ランスロット	
「いや、そう思うのは当然だ。私自身もずっと疑問に思っているが・・・何しろ身分が身分のお方だ」[p]
#

[rans_tatie_mehuse]
#ランスロット	
「丁重な対応を心がけている。機嫌ひとつで人の首を飛ばせるのだからな・・・王族は」[p]
#

#&f.name	
（大変だなあ・・・）[p]
#

#&f.name	
「ランスロット、いつも忙しいのに、仕事以外も忙しいんだね・・・」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「・・・仕方ない。王宮にいればそんなものだ」[p]
#

#&f.name	
（・・・）[p]
#

[rans_tatie_sinnpai]
#ランスロット	
「地方騎士団に出向ければよかったんだが・・・手が離せなくてな・・・わざわざきてもらってすまなかったな」[p]
#

#&f.name	
「う、ううん・・・でも、なんのようだったの？」[p]
#

[rans_tatie_normal]
#ランスロット	
「これから、戦いも厳しいものになるだろう・・・お前に技を教えようと思ってな」[p]
#

#&f.name	
「わ、わざ？」[p]
#

[rans_tatie_metoji]
#ランスロット	
「そうだ。
[rans_tatie_normal]
これまではモンスター1匹ずつにしか攻撃できなかったが、技を使えば効率的にダメージを与えられる」[p]
#

#&f.name	
「全体に攻撃できるってことかな？」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「その通りだ。さらに戦いに有利になる追加の効果もあるから、戦闘を有利に進めることも可能となるだろう」[p]
#

#&f.name	
「そうかあ・・・」[p]
#

#ランスロット	
「早速、闘技場で練習してみるか。通常に攻撃すれば問題ない。どのような効果があるか、確認してみるといい」[p]
#

#&f.name
;	練習する
;	ぶっつけ本番で大丈夫
	
;	練習
;	戦闘、技のみ
;	勝利
	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]

【	技を闘技場で練習する？】

[glink target=*renshu_1 text="（練習する）" size=17 width=600 x=65 y=200]
[glink target=*renshu_2 text="（ぶっつけ本番で大丈夫）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*renshu_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.skill_yet=0"]
[chara_kakusu]
[eval exp="f.skill_only=1"]
[jump storage="scenario_2/mini_game/battle.ks"]

*renshu_end
[rans_tatie_touroku]
[rans_tatie_show]
[eval exp="f.skill_only=0"]
#ランスロット	
「これでどういうものかは分かったな。技は実際の戦闘ではランダムに発動する。追加の効果についてはバトルの回数で確率や効果量が上がるから頑張ってみるといい」[p]
#

#&f.name	
「はい！！」[p]
#
[jump target=*skill_kakutoku]

*renshu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.skill_yet=0"]
#ランスロット	
「そうか。では実戦でのお前の活躍に期待するとしよう。技はランダムに発動する。追加の効果についてはバトルの回数で確率や効果量が上がるから頑張ってみるといい」[p]
#

#&f.name	
「はい！」[p]
#

	
*skill_kakutoku
スキル「勝者への祝福」を獲得しました！[p]

[rans_tatie_normal_warai]
#ランスロット	
「・・・ところで、[name]・・・これから少し、時間はあるか」[p]
#

#&f.name	
「え・・・えっと・・・」[p]
#

#ランスロット	
「お前の合格祝いをまだしていなかったと思ってな。・・・食事でもどうだ」[p]
#

#&f.name	
「食事・・・」[p]
#

;いく
;いかない
	
;いかない

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【食事・・・】

[glink target=*dinner_1 text="（行く）" size=17 width=600 x=65 y=200]
[glink target=*dinner_2 text="（行かない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*dinner_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[button_clear]
[skip_button]
#ランスロット	
「それなら、私の行きつけの店にいくか」[p]
#

	
[chara_kakusu]

;店
[eval exp="f.sub_event=1"]
[dinner_bgm]
[creru_sakaba_2_yoru]
[live2d_rans_touroku]
#&f.name	
「わあ、この煮魚、美味しい！！」[p]
#

[live2d_rans_show_sekkin]

[rans_head_right_z]
[rans_head_normal]
[rans_exp_bisyo]

#ランスロット	
「気にいってくれたようで、よかった」[p]
#

#&f.name	
「うん、お母さんの煮魚の次に美味しい！！」[p]
#


[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「母上にも、合格したことを伝えないといけないな」[p]
#

[rans_head_under_y]
[rans_head_left_x]

#&f.name	
「あ、うん・・・手紙は書くつもりだけど、でも、直接会いたい気もするな・・・」[p]
#

#&f.name	
「今こんな状況だから無理かもだけど・・・」[p]
#

[rans_arms_udekumi]
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]

#ランスロット	
「そうだな・・・落ち着いたら、一緒にテーベに行くか」[p]
#
[eval exp="f.b2=1"]
#&f.name	
「えっ・・・い、いいの？」[p]
#

[rans_head_normal]
[rans_eyes_left]
[rans_exp_normal_warai]
#ランスロット	
「もちろんだ。私も母上に挨拶をしなければいけないと思っていた」[p]
#

[rans_eyes_normal]
#ランスロット	
「お前がちゃんとやっていると言っても、信用されないかもしれないしな」[p]
#

#&f.name	
「ええ！そんなことないよ！！・・・そりゃ、騎士になるって言ったら猛反対だったし、結局ランスロットに説得してもらったけど！」[p]
#


[rans_head_above_y]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	
「はははっ・・・。だが、今回のことで母上もきっと安心するだろう」[p]
#

#&f.name	
「うん・・・そうだね、そうだといいな」[p]
#

[rans_head_under_y]
[rans_head_normal]
[rans_exp_metoji_warai]
#ランスロット	
「お前はちゃんと選ばれた。・・・自信を持っていい」[p]
#

#&f.name	
「ランスロット・・・うん！」[p]
#



[rans_para_word]
[rans_fashion_check]
[call storage="scenario_2/kaiwa/ranskaiwa_new.ks"]
;会話イベント
[ranskaiwa]

[message_settei_ad]
お腹がいっぱいになった！！[p]
[playse storage="item_status_up_onjin.ogg"]
;------------------能力値アップ
;頭脳
[eval exp="f.irain_brain=f.irain_brain+3"]
頭脳が３アップ！！[p]
[eval exp="f.irain_tec=f.irain_tec+3"]
技術が３アップ！！[p]
[eval exp="f.irain_charm=f.irain_charm+3"]
魅力が３アップ！！[p]

[message_settei_ad]

[fadeoutbgm time=1000]
[refresh_hanyou]
[irain_tema]
[creru_iriguti_yoru]
[live2d_rans_touroku]

[live2d_rans_show_sekkin]
[rans_head_above_y]
[rans_head_left_x]
[rans_exp_normal_warai]
#ランスロット
「今夜は月が明るいな」[p]
#

#&f.name	
「本当だ。カーニバルの日も・・・こんな天気だといいな」[p]
#

[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「・・・・・そうだな」[p]
#

#&f.name	
「できれば・・・何も・・・起きないといいけど・・・」[p]
#

[rans_exp_metoji_warai]
#ランスロット
「・・・ああ・・・」[p]
#
[if exp="f.curnival_rans==1"]
#&f.name		
（・・・エルムナードのこと・・・心配だけど・・・でも・・・できるだけ準備しとくしか、ないよね・・・）[p]
#


#&f.name
「そういえば・・・その・・・異形のこと、ウェルム団長は・・・なんて？」[p]
#

[rans_head_normal]
[rans_exp_normal]
#ランスロット
「・・・モンスターの変異種だろうということだった。王宮騎士団は予定通り王族の警備だ」[p]
#


#&f.name
「じゃあ・・・」[p]
#


[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「すまないな・・・[name]・・・」[p]
#


#&f.name
「・・・」[p]
#



[rans_exp_mehuse]
#ランスロット
「だが・・・私が出来る範囲で地方騎士団に協力するつもりだ。父上は王族を最優先させるが、
王族を支えるのは王都民なのだから」[p]
#


#&f.name
「ランスロット、でもそしたらランスロットが」[p]
#


[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「・・・大丈夫だ。そのあたりはうまくやる。心配するな」[p]
#

#&f.name
（ランスロット・・・）[p]
#

[endif]



[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「・・・本部まで送っていく」[p]
#

#&f.name		
「大丈夫だよ。よく知っている道だし」[p]
#

[rans_head_right_x]
[rans_body_right_z]
[rans_head_above_y]
[rans_eyes_right_above]
#ランスロット	
「夜道は心配だ。特にお前は少し抜けているからな」[p]
#

#&f.name		
「抜けてないよ！」[p]
#

[rans_body_normal]
[rans_head_normal]

#ランスロット	
「いいから、私の言うとおりにしなさい。いいな」[p]
#

#&f.name		
「・・・はーい・・・」[p]
#

#&f.name		
（来年には成人もするのになあ・・・）[p]
#

[rans_exp_mihiraki]
#ランスロット	
「・・・・・・」[p]
#
[rans_exp_bisyo]
#ランスロット	
「・・・・・・」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]

#ランスロット	
「・・お前は、花を贈る相手はいるのか？」[p]
#

#&f.name		
「え？花？なんで？」[p]
#

[rans_body_above_y]
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット	
「お前・・知らないのか。花のカーニバルには意中の相手に花を贈る慣わしがあるだろう」[p]
#

[rans_body_normal]
#&f.name		
「そうなんだ。知らなかった・・・」[p]
#

[rans_head_left_z]
[rans_body_left_z]
[rans_eyes_left]
[rans_exp_normal_warai]
#ランスロット	
「その調子では、相手もいなそうだな。まあ、お前にはまだまだ早いか」[p]
#

[rans_eyes_normal]
#&f.name		
「はっ・・早くなんか・・・。また子供扱いして・・・」[p]
#

[rans_head_left_z]
[rans_body_left_z]
[rans_eyes_left]
[rans_exp_metoji_warai]

#ランスロット	
「はははっ・・」[p]
#

#&f.name		
「もう、ランスロット！！」[p]
#
[rans_exp_bisyo]

[kisidaniriguti_yoru]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal_warai]
#ランスロット	
「ほら、そんなことを言っているうちに本部についたぞ」[p]
#

	
#&f.name		
「・・・お・・・送ってくれて、ありがとう」[p]
#

[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「ああ・・・・」[p]

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット	
「・・・・・・・・・・・・」[p]
#

[fadeoutbgm time=1000]
#&f.name		
「ランスロット・・？」[p]
#

[rans_mod_idle]
[rans_exp_mehuse_muzukasii]	
#ランスロット	
「・・・[name]」[p]
#

#&f.name	
「はい・・・」[p]
#

	
[rans_head_normal]	
[rans_exp_normal]
#ランスロット	
「・・・・今後の、ことなんだがな・・・」[p]
#

	
[rans_exp_metoji]
#ランスロット	
「・・・・お前が弟子入りするとき私がした話を、覚えているか」[p]
#

#&f.name	
「・・・・・・・・？」[p]
#

[rans_exp_ketui]
#ランスロット	
「女性の身で騎士としてやっていくには、並大抵の苦労ではすまないと」[p]
#

#&f.name		
「・・・はい」[p]
#

	
	
[rans_exp_metoji]
#ランスロット	
「騎士としての技量は問題ないだろう。だが、男たちの中にはお前を快く思わない者も多い」[p]
#


[rans_exp_normal]
#ランスロット	
「正騎士となったことで、男所帯の騎士団では、今まで以上の苦労を強いられることとなる」[p]
#

#&f.name		
「・・・わかってます」[p]
#

[rans_exp_ketui]
#ランスロット
「本当にわかっているか？」[p]
#




[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
「本当にわかっているか？」
#

[glink target=*yes_1 text="（・・・はい）" size=17 width=600 x=65 y=200]
[glink target=*no_2 text="（・・・・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*yes_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[live2d_fadein time=1000]
#&f.name		
「・・・はい」[p]
#
#&f.name		
（具体的にどんな苦労があるのかは・・・まだわからないけど・・・ここまできて、怖気付いてられない、よね・・・）[p]
#


[jump target=*tuduki]


*no_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[live2d_fadein time=1000]
[rans]
[koukando_up]

[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]

#ランスロット
「・・・すまない。少し、意地の悪い質問だったな」[p]
#

#&f.name
「ランスロット・・・」[p]
#


*tuduki

[rans_eyes_left]
[rans_head_under_y]
[rans_body_under_y]
[rans_exp_mehuse]
#ランスロット	
「・・・・・・・・」[p]
#


[rans_exp_metoji]
#ランスロット	
「・・・お前の母上が言ったように、他の生きる道もあるだろうに・・お前はあえてこの道を選ぶのだな」[p]
#

	

#&f.name		
（ランスロット・・・？）[p]
#

[rans_tema]
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal]
#ランスロット	
「・・・それなら、今まで以上にお前は強くならなければならない。どちらかというと、精神的に」[p]
#

#&f.name		
「・・・はい」[p]
#

[rans_exp_sinpai]
#ランスロット	
「・・・・・」[p]
#

#&f.name	
（・・・ランスロット？）[p]
#
[rans_exp_normal]
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット	
「師匠として、お前の活躍を期待している。グレッグ地方騎士団長のもと、王国のために尽力してくれ」[p]
#

[rans_head_right_x]
[rans_body_right_z]
#&f.name		
「ランスロット」[p]
#

[rans_body_normal]
[rans_exp_metoji]
[rans_exp_normal]
[rans_head_normal]
#ランスロット	
「みんなを守るために、その剣を振るうのだろう？」[p]
#

#&f.name	
「はい！！！」[p]
#

	
	
	
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]	
#ランスロット	
「・・・頼むぞ。それじゃあ、おやすみ」[p]
#

#&f.name	
「おやすみなさい、ランスロット！」[p]
#

[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_exp_metoji]
[live2d_delete_all][live2d_off]
	
#&f.name		
（これからもっともっと、頑張らなくちゃ・・・！）[p]
#

;会話追加
[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 3"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 17"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="f.irain_move=0"]
[jump target=*oukyu_event_end]



*dinner_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[button_clear]
[skip_button]

[rans_tatie_mehuse_warai]
#ランスロット	
「そうか。分かった。それではな。夕食はちゃんと取るんだぞ」[p]
#

#&f.name	
「子供じゃないんだから、そんなの分かってるよ！」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「そうかそうか。じゃあな」[p]
#

#&f.name	
（もう・・・）[p]
#
[chara_kakusu]

*oukyu_event_end
[fadeoutbgm time=1000]
[map_flag_delete]
[eval exp="f.event_8_oukyu=0"]
[eval exp="f.skill_only=0"]
[eval exp="f.skill_yet=0"]
[status_hyouji]



[else]

[message_settei_ad]
#&f.name
「王宮へはまだ行けないよ」[p]
#
*map
[message_kakusu_ad]
[creru_outo_map]




[endif]


[endmacro]
	
	
[return]