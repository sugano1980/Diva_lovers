;#ランスロット、グリフの侵攻フラグあり


[macro name="rans_epi_1"]	

*rans_start
#&f.name	
（見つかるかどうかわからないけど、ちょっとだけ探してみよう）[p]
#
;暗転
[anten]
;廊下
[bg storage="rans_jikka_rouka.jpg"]
#&f.name	
「うわあ・・・・・・やっぱり迷っちゃうかなあ・・・」[p]
#
[bg storage="rans_jikka_tukiatari.jpg"]
#&f.name	
「ん？突き当たり・・・」[p]
#

 
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_2]



*left	
[anten]
#&f.name	
「・・・あれ？」[p]
#

#&f.name	
「・・・ん？？」[p]
#

#&f.name	
「？？？」[p]
#

#&f.name	
（・・・どっちから来たっけ？）[p]
#

#ライオネス	
「おいてめえ！！ここで何やってんだ！！」[p]
#

[bg storage="rans_jikka_rouka.jpg"]
[config_true]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#&f.name	
「あ、あれ？ライオネス、終わったの？」[p]
#
#ライオネス	
「とっくに終わってんだよ！応接室にいねえから探したぞ！」[p]
#
#講師	
「お待たせしました。ライオネス様の覚えが悪かったもので、申し訳ありません」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「お、俺のせいだってのかよ！」[p]
#
#講師	
「またお待ちしております。祝賀会まであと一週間です。頑張って自身の魅力を上げていきましょう」[p]
#

[if exp="f.event_war_rans_sumi==1"]
#講師	
「お師匠様があんなことになって・・・お辛いでしょうが、どうか今は」[p]
#
[endif]

#&f.name	
「は、はい、ありがとうございました」[p]
#


[if exp="f.event_war_rans_sumi==1"]
#&f.name	
（・・・ここにくれば魅力が上げられるってことかな・・・）[p]
#
#&f.name	
（頑張って祝賀会までに・・・キレイにならなきゃ・・・地方騎士団のためにも）[p]
#
[else]

#&f.name	
（えーと、ここにくれば魅力が上げられるってことかな？）[p]
#
[lioness_tatie_kimazui]
#&f.name	
（よし、頑張って祝賀会までにキレイになろう！）[p]
#
[endif]
[chara_hide_all][chara_off]
[jump storage="scenario_2/episode/epi5.ks" target=*epi5_end]
	
*right
[call storage="scenario_2/live2d_baka2_macro.ks"]
[live2d_on]
[live2d_rans_h_touroku]
[live2d_fadeout time=10]
[live2d_rans_h_show_sekkin]
;[rans_h_body_kennasi]
[rans_h_exp_mihiraki]

[bg storage="rans_jikka_heyas.jpg"]
#&f.name	
「こっちは部屋がいっぱい・・・」[p]
#
#&f.name	
（もしこの中の一つの部屋にランスロットがいるとしても・・・一つ一つ開けるわけにはいかないし・・・）[p]
#
#&f.name	
「うーん・・・」[p]
#
#&f.name	
「！！」[p]
#

#メイド	
「・・・それでは、失礼いたします」[p]
#

#？	
「いつもすまないな。ありがとう」[p]
;SEドア閉める

[playse storage="simerusizuka_onjin.ogg"]
#&f.name	
（今の・・・声って・・・）[p]
#
#&f.name	
「あ、あの！！」[p]
#
#メイド	
「！！！」[p]
#
#メイド	
「こ、困ります、このようなところにまで・・・」[p]
#
#&f.name	
「今の、今の・・・」[p]
#
#メイド	
「どうか応接にお戻りください」[p]
#
#&f.name	
「たとえち、地下牢だって話すことくらいできますよね！！」[p]
#
#メイド	
「[name]さん・・・」[p]
#
#&f.name	
「お、お願いします、少しでいいので、話させてくれませんか」[p]
#
#メイド	
「・・・」[p]
#
#&f.name	
「お願い、します・・・」[p]
#
#メイド	
「・・・・・・。わかりました」[p]
#
#&f.name	
「あ、ありがとうございます」[p]
#
#メイド	
「・・・いえ。ランスロット様も、貴方に会いたがっておられましたから・・・」[p]
#
#&f.name	
「えっ・・・」[p]
#
#&f.name	
（ランスロットが・・・）[p]
#
#メイド	
「このことを、くれぐれもご内密に。ライオネス様にも、どうか」[p]
#
#&f.name	
「・・・わかりました・・・黙っておきます」[p]
#
#メイド	
「・・・」[p]
#
	
[bg storage="rans_jikka_heya.jpg"]



[live2d_fadein time=1000]
#ランスロット	
「・・・[name]・・・なぜ、ここに・・・」[p]
#

#&f.name	
「ランスロット・・・！！」[p]
#

[rans_h_head_under_y]
[rans_h_exp_mehuse_muzukasii]
#&f.name	
「あ、あの、祝賀会に出ることになって、それで色々教えてもらいに、それで・・・」[p]
#

#ランスロット	
「すぐに帰るんだ」[p]
#
#&f.name	
「ら、ランスロット」[p]
#

[rans_h_exp_ketui]
[rans_h_head_right_x]
[rans_h_eyes_right]
#ランスロット	
「今私に会ったことは、誰にも言うな。黙って帰れ」[p]
#

[rans_h_head_normal]
[rans_h_eyes_normal]
#ランスロット	
「お前を部屋に入れたのはあのメイドだな？」[p]
#
#&f.name	
「あのメイドさんは悪くないよ、私かしつこくしたから・・・」[p]
#

[rans_h_head_right_x]
[rans_h_head_left_x]
[rans_h_head_normal]
[rans_h_eyes_left]
#ランスロット	
「とにかく帰るんだ。これが父上に知れたら、お前だけでなくあのメイドだって何をされるかわからん」[p]
#
[rans_h_head_under_y]
[rans_h_exp_mehuse_muzukasii]
#ランスロット	
「私は罪人と同じだ。いや、罪人なんだ。本来なら・・・今ここにいることだって、奇跡のようなものだ」[p]
#
#&f.name	
「ランスロット・・・だってそれは、地方騎士団のために・・・！」[p]
#
[rans_h_body_under_y]
[rans_h_arms_udekumi]
[rans_h_body_normal]
[rans_h_head_normal]
[rans_h_eyes_normal]
#ランスロット	
「[name]。いくらどんな理由があろうと、命令違反は重罪なんだ。騎士にとっては・・・」[p]
#
#&f.name	
「グレッグ団長が、心配してたよ。お礼を、言って欲しいって・・・」[p]
#

[rans_h_arms_normal]
[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「グレッグ団長・・・」[p]
#
#&f.name	
「ランスロットがしたことは・・・罪なんかじゃないよ。だって、たくさんの人がそのおかげで助かったんだもの」[p]
#
#ランスロット	
「・・・・・・」[p]
#

[rans_h_exp_mehuse]
#ランスロット	
「お前がなんと言おうと、騎士は命令に従うものでなければならない。だから・・・」[p]
#
#&f.name	
「命令を出す人が、間違うことだってあるはずだよ。現に、ウェルム団長のしたことは・・・」[p]
#

[rans_h_arms_kosinite_right]
[rans_h_mod_idle]
[rans_h_head_right_x]
[rans_h_exp_ketui]
[rans_h_head_normal]
#ランスロット	
「何が正しくて、何が間違っているのか、そんなことは、誰が決める？」[p]
#
#&f.name	
「そ・・・それは・・・」[p]
#

[rans_h_head_under_y]
[rans_h_exp_metoji]
#ランスロット	
「私は私の判断で、お前たちを助けた。だが、それは王宮騎士団員としては間違っていることなんだ」[p]
#
#&f.name	
「ランスロット・・・」[p]
#

[rans_h_arms_normal]
[rans_h_head_normal]
#ランスロット	
[rans_h_head_under_y]
[rans_h_head_normal]
[rans_h_exp_ketui]
「だからその裁きを、私は一王宮騎士として受ける必要がある」[p]
#
#&f.name	
「それ・・・それって・・・」[p]
#

[rans_h_body_left_x]
[rans_h_head_left_x]
[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
#ランスロット	
「こんな形で、まさか猶予を与えられるとは思ってはいなかったがな」[p]
#
[rans_h_exp_metoji]
#ランスロット	
「父上も存外・・・
[rans_h_mod_idle_no_move_mehuse]
[rans_h_exp_mehuse_warai]
だが感謝はしなくてはならないのかも知れない。命など、少し存えたところでどうなるものでもないが・・・」[p]
#

[rans_h_mod_idle]
[rans_h_body_normal]
[rans_h_head_normal]
[rans_h_exp_normal_warai]
#ランスロット	
「お前の顔を・・・もう一度見ることができるとは、思っていなかったから」
[rans_h_head_right_z]
[p]
#


[playbgm storage="koucha_ontama.ogg"]
[rans_h_head_normal]
#&f.name	
「・・・め、メイドさんが、言ってた・・・私に、会いたがってたって・・・」[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_left_x]
[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
#ランスロット	
「はは、口が軽いな。メイドの人選を誤っている」[p]
#
#&f.name	
（ランスロット・・・！）[p]
#
#&f.name	
「い、いなくならないよね？」[p]
#


[rans_h_mod_idle]
[rans_h_head_normal]
[rans_h_exp_normal]
#ランスロット	
「・・・[name]」[p]
#

#&f.name	
「ランスロットは、いなくなったりしないよね？」[p]
#

[rans_h_head_under_y]
[rans_h_body_right_z]
[rans_h_head_right_z]
[rans_h_exp_normal_warai]
#ランスロット	
「・・・お前はちゃんと、理解しているんだろう？」[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_body_normal]
[rans_h_head_normal]
[rans_h_exp_mehuse_warai]
#ランスロット	
「子供のような駄々をこねるんじゃない」[p]
#
#&f.name	
「ら、ランスロット・・・」[p]
#

[fadeoutbgm time=3000]

[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_3]
	

*shokei_yes	
#&f.name	
「・・・仕方、ないんだよね・・・そうだ、ここで私が何を言っても・・・」[p]
#
#&f.name	
（何が・・・変わるわけじゃない・・・）[p]
#
#&f.name	
「・・・ごめんね、そうだよね、そんなこと言っても・・・仕方、ないよね・・・」[p]
#

[rans_h_head_under_y]
[rans_h_exp_mehuse]
[live2d_fadein time=1000]
#ランスロット	
「・・・[name]」[p]
#
#&f.name	
「・・・っ・・・」[p]
#
#&f.name	
「も、戻らなきゃ・・・ライオネスたちが探しに来ちゃうし」[p]
#
[rans_h_mod_idle]
[rans_h_head_normal]
[rans_h_exp_normal]
#ランスロット	
「ああ・・・私に会ったことは、誰にも言うなよ」[p]
#
#&f.name	
「・・・はい」[p]
#
;ドア
[live2d_fadeout time=1000]
[playse storage="simerusizuka_onjin.ogg"]
#&f.name	
「っ・・・」[p]
#
#&f.name	
（・・・ランスロット・・・）[p]
#
[live2d_delete_all][live2d_off]
[jump target=*epi_rans_end]
	
*shokei_no	
[playbgm storage="koucha_ontama.ogg"]
;いなくなっちゃうなんて、死刑なんて、いやだよ！
[rans_h_exp_normal]
[rans_h_exp_mihiraki]
[live2d_fadein time=1000]
#ランスロット	
「[name]・・・」[p]
#
[rans_h_exp_normal]
#&f.name	
「わ、わかってるよ・・・子供みたいだって、わがままだって」[p]
#
#&f.name	
「でも・・・嫌だよ・・・そんなのない・・・ランスロットは、私たちのために・・・なのに」[p]
#
#&f.name	
「っ・・・」[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「・・・・・・」[p]
#
#&f.name	
「・・・ランスロットは・・・知ってたんだよね？カーニバルの時も、エルムナードでの時も」[p]
#
#&f.name	
「ウェルム団長に背くことが、どういうことかって・・・」[p]
#

[rans_h_mod_idle]
[rans_h_exp_metoji]
#ランスロット	
「・・・ああ」[p]
#
#&f.name	
「どうして、それでも地方騎士団のために？・・・」[p]
#


[playbgm storage="omoi_ontama.ogg"]
[rans_h_head_right_x]
[rans_h_head_above_y]
[rans_h_body_right_z]
[rans_h_exp_normal]
[rans_h_eyes_left]
#ランスロット	
「私にとって、本当に正しいことは、父上に従うことではなかった」[p]
#

[rans_h_head_normal]
[rans_h_body_normal]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「王宮騎士としては、従うことが正解なのだろうな。ずっと、これまではそうするべきで、疑問を挟む余地はないのだと」[p]
#
#ランスロット	
「そう思っていた。
[rans_h_exp_metoji]
いや、思い込ませていたというべきか・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#

;[playbgm storage="omoi_ontama.ogg"]
[rans_h_head_normal]
[rans_h_exp_normal]
[rans_h_eyes_right]
#ランスロット	
「８年前・・・お前に出会った時・・・お前は、大切な人を守るために、剣を使いたいと言ってきたな」[p]
#
#&f.name	
「う、うん・・・」[p]
#
[rans_h_eyes_normal]
[rans_h_exp_metoji]
#ランスロット	
「お前にそう言われたあの時・・・気づいたんだ」[p]
#
#ランスロット	
「剣をふるう本当の意味は、騎士でいる本当の意味がなんなのか」[p]
#

[rans_h_exp_normal]
[rans_h_head_right_x]
[rans_h_head_right_z]
[rans_h_eyes_right]
#ランスロット	
「だがそれでも・・・私は父上の命令には逆らえなかった。かつての旧友に、権力の犬と言われても、反論すらできない」[p]
#

[rans_h_head_normal]
[rans_h_exp_metoji]

;#&f.name	
;（あの時のこと・・・かな）[p]
;#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_left_x]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「そんな自分に、嫌気まで指していた。カーニバルの時も、お前が街の人たちのためにできることがあるはずだと、未熟ながらも懸命に頑張っている」[p]
#
[rans_h_exp_metoji]
#ランスロット	
「そのそばで、自分は一体何をしているのか」[p]
#
[rans_h_head_normal]
[rans_h_exp_mehuse]
#ランスロット	
「命令だからと、何もせずに父上の後を追うのかと・・・だから・・・」[p]
#
#&f.name	
「ランスロット、でもそれは・・・」[p]
#

[rans_h_exp_mehuse_warai]
#ランスロット	
「そうだな・・・私が王宮騎士としての行動しか取らなくても、誰も責めることはしなかったかも知れない」[p]
#

[rans_h_exp_metoji]
#ランスロット	
「それでも私は・・・私自身が、お前の力になりたかった」[p]
#
#&f.name	
「私・・・の？地方騎士団の、じゃないの？」[p]
#

[rans_h_exp_normal_warai]
[rans_h_head_right_z]
[rans_h_eyes_right]
#ランスロット	
「確かにグレッグ団長には世話になっているところがあるが・・・地方騎士団のためではない」[p]
#

[rans_h_head_normal]
[rans_h_eyes_normal]
[rans_h_exp_bisyo]
#ランスロット	
「他の誰でもない、お前の力に・・・少しでもなれたらと、思ったんだ」[p]
#
#&f.name	
「・・・どう、して・・・だって、そんなことの、ために・・・」[p]
#

#ランスロット	
「『そんなこと』ではないだろう」[p]
#
#&f.name	
「そんなことだよ！！処刑されるってわかってて、わ、私のためになんか、そんなことしないでよ！」[p]
#

[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
#ランスロット	
「そうしなければ、私が一生、後悔していた。だから・・・」[p]
#
#&f.name	
「・・・なんで・・・なんで、今更・・・」[p]
#
[rans_h_head_normal]
[rans_h_exp_normal]
#ランスロット	
「[name]」[p]
#
#&f.name	
「こ、こんなふうになるのなら、私は・・・私のためになんか・・・そんなことして欲しくなかった」[p]
#
[rans_h_head_right_x]
[rans_h_head_under_y]
[rans_h_exp_sinpai]
[rans_h_eyes_right]
#&f.name	
「さっきも言ったよ・・・私、嫌だよ・・・

[rans_h_head_normal]
[rans_h_eyes_normal]
ランスロットが、いなく、なるなんて・・・」[p]
#
#ランスロット	
「[name]・・・」[p]
#
#&f.name	
「ひどいよ・・・私・・・ランスロットがいないと・・・困るよ・・・ランスロットは、私の、」[p]
#
	
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_4]	
	



;剣の先生なんだから
*sensei
[rans_h_exp_normal]
[live2d_fadein time=1000]

#ランスロット	
「・・・[name]」[p]
#
#&f.name	
「私、まだ、教えてもらいたいことがたくさんあるんだよ・・・だから・・・」[p]
#
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「初陣も難なくこなしたお前は、もう一人前と言ってもいいと思うが」[p]
#
#&f.name	
「一人前、なんかじゃないよ・・・」[p]
#

[rans_h_head_normal]
[rans_h_head_right_z]
[rans_h_exp_komari]
#ランスロット	
「一皮剥けないのは、その不安のせいだな」[p]
#

[rans_h_head_normal]
[rans_h_head_under_y]
[rans_h_exp_normal_warai]
#ランスロット	
「それさえ克服できれば、問題はないはずだ」[p]
#

[rans_h_head_right_x]
[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
#ランスロット	
「そしてそれを助けるのは、もう・・・私の仕事ではない」[p]
#
[rans_h_head_normal]
#&f.name	
「ランスロット・・・」[p]
#
[rans_h_exp_normal_warai]
#ランスロット	
「私のそばから離れることは、お前をより一層成長させるだろう」[p]
#
#&f.name	
「っ・・・」[p]
#

[rans_h_head_left_z]
[rans_h_exp_bisyo]
#ランスロット	
「お前はもう大丈夫だ。[name]」[p]
#
[rans_h_head_normal]
#&f.name	
「ランスロットっ・・・」[p]
#

[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
#ランスロット	
「私のことは・・・もう、気にしなくていい」[p]
#


#&f.name	
「そんな・・・」[p]
#
[rans_h_head_normal]
[rans_h_head_left_z]
[rans_h_exp_normal]
[rans_h_eyes_left]
[playse storage="nokku_tairakomori.ogg"]

#メイド	
「ランスロット様、そろそろ・・・」[p]
#

[rans_h_head_normal]
[rans_h_eyes_normal]
#ランスロット	
「ほら、ここにずっといては、他の者に見つかる。早くここから出るんだ」[p]
#
#&f.name	
「ランスロット」[p]
#

[rans_h_mod_idle_no_move_metoji]
[rans_h_exp_metoji]
#ランスロット	
「師匠の言うことは、ちゃんと聞くものだぞ」[p]
#
#&f.name	
「・・・」[p]
#
[rans_h_mod_idle]
[rans_h_exp_normal]
#ランスロット	
「[name]」[p]
#
#&f.name	
「・・・わかり、ました・・・」[p]
#
#&f.name	
（ランス・・・ロット・・・）[p]
#
[live2d_fadeout time=1000]
[playse storage="simerusizuka_onjin.ogg"]
[live2d_delete_all][live2d_off]
[anten]
[bg storage="rans_jikka_rouka_tasogare.jpg"]
[lioness_tatie_touroku]
[config_true]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#ライオネス	
「お前どこ行ってたんだ、探したぞ！！」[p]
#

#講師	
「お待たせしました。ライオネス様の覚えが悪かったもので、申し訳ありません」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「お、俺のせいだってのかよ！」[p]
#

#講師	
「またお待ちしております。祝賀会まであと一週間です。頑張って自身の魅力を上げていきましょう」[p]
#

[if exp="f.event_war_rans_sumi==1"]
#講師	
「お師匠様があんなことになって・・・お辛いでしょうが、どうか今は」[p]
#
[endif]

[lioness_tatie_kimazui]
#&f.name	
「は、はい・・・ありがとうございました・・・」[p]
#
#&f.name	
（・・・ここにくれば魅力が上げられるってことかな）[p]
#
#&f.name	
（頑張って祝賀会までに・・・キレイにならなきゃ・・・地方騎士団のためにも）[p]
#
[chara_hide_all][chara_off]
[jump storage="scenario_2/episode/epi5.ks" target=*epi5_end]




*koibito	
;大切な人なんだから
[rans_h_mod_idle]
[rans_h_exp_mihiraki]
[live2d_fadein time=1000]
#ランスロット	
「！！」[p]
#
[rans_h_head_right_x]
[rans_h_head_under_y]
[rans_h_exp_kunou]
[rans_h_head_left_x]
[rans_h_head_under_y]
[rans_h_eyes_left]
#ランスロット	
「・・・[name]・・・」[p]
#
#&f.name	
「ランスロットのおかげで、グレッグ団長もみんな、助かったよ・・・間違いないよ」[p]
#
#&f.name	
「でも私・・・そんなんなら、ウェルム団長にしたがっててほしかった」[p]
#
[rans_h_exp_metoji]
#&f.name	
「大切な人には・・・い、生きていて欲しいって・・・・・・・・思うから・・・」[p]
#

[rans_h_head_normal]
[rans_h_eyes_normal]
[rans_h_exp_sinpai]
#ランスロット	
「[name]・・・」[p]
#

[rans_h_head_under_y]
[rans_h_exp_kunou]
#ランスロット	
「[name]・・・すまない・・・」[p]
#

[rans_h_mod_idle_no_move_metoji]
[rans_h_exp_metoji]
#&f.name	
（・・・でも、もし・・・）[p]
#
#&f.name	
（私が、ちゃんとわかってたら・・・ウェルム団長に逆らったら、どういうことになるか、それに気づいていたら・・・）[p]
#
#&f.name	
（ランスロットを止められた？ううん・・・そしたら、きっとランスロットは、後悔することになる）[p]
#
#&f.name	
（そして地方騎士団も、たくさんの人が死ぬことになったんだろうな）[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_exp_mehuse]
#ランスロット	
「今更・・・謝ったところで、何が変わるわけじゃなくても・・・
[rans_h_head_right_x]
[rans_h_exp_kunou]
お前に悲しい思いをさせるつもりはなかった」[p]
#
[rans_h_head_normal]
[rans_h_exp_mehuse]
#ランスロット	
「それだけは、謝罪させて欲しい」[p]
#
#&f.name	
「・・・」[p]
#
[rans_h_head_right_z]
[rans_h_exp_sinpai]
#ランスロット	
「[name]」[p]
#
#&f.name	
（本当にもう、何も変えられないの？ランスロットが、いなくなってしまう未来・・・）[p]
#
[rans_h_head_right_x]
[rans_h_head_under_y]
[rans_h_eyes_right]
#&f.name	
「・・・っ・・・ランスロット・・・やだ・・・」[p]
#
[rans_h_head_normal]
[rans_h_eyes_normal]
#ランスロット	
「・・・[name]・・・」[p]
#
#&f.name	
「いなくなら・・・ないで・・・」[p]
#

[rans_h_head_left_z]
[rans_h_exp_komari]
[rans_h_head_normal]

#&f.name	
（ランスロット、困った顔してるな・・・早く泣き止まなきゃ・・・）[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#&f.name	
（でも・・・止まらないよ）[p]
#

#&f.name	
（涙が・・・止まらない）[p]
#

[rans_h_exp_metoji]
#ランスロット	
「・・・[name]・・・」[p]
#
[live2d_fadeout time=1000]
	
[anten]
[bg storage="rans_jikka_heya.jpg"]

[rans_h_exp_normal]
[live2d_fadein time=1000]
[rans_h_head_normal]
#ランスロット	
「・・・もう、大丈夫か」[p]
#

#&f.name	
「・・・・・・うん・・・」[p]
#
[rans_h_head_normal]

#&f.name	
「ごめんね、心配かけて」[p]
#

[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_left_z]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「・・・・・・」[p]
#
#&f.name	
「み、見つからないように、帰らないとね」[p]
#
[rans_h_head_normal]
[rans_h_exp_normal]
#ランスロット	
「・・・そうだな」[p]
#

#ランスロット	
「私に会ったことは、誰にも言うなよ」[p]
#
#&f.name	
「・・・うん・・・」[p]
#

;ノック
[playse storage="nokku_tairakomori.ogg"]
[rans_h_eyes_left]
#メイド	
「・・・ランスロット様」[p]
#
[rans_h_eyes_normal]
[rans_h_head_left_x]
[rans_h_exp_mehuse]

#ランスロット	
「大丈夫だ。今・・・」[p]
#
#&f.name	
「ライオネスにも・・・言わないでおくね」[p]
#
[rans_h_mod_idle]
[rans_h_head_normal]
[rans_h_head_under_y]
[rans_h_head_normal]
[rans_h_exp_normal]
#ランスロット	
「・・・ああ・・・」[p]

;#ランス微笑み
#&f.name	
（ランスロット・・・）
[rans_h_head_right_z]
[rans_h_exp_bisyo]
[p]
#
[live2d_fadeout time=1000]
[anten]
[playse storage="simerusizuka_onjin.ogg"]
[live2d_delete_all][live2d_off]
;SE

*epi_rans_end
[bg storage="rans_jikka_rouka_tasogare.jpg"]
[lioness_tatie_touroku]
[config_true]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#ライオネス	
「お前どこ行ってたんだ、探したぞ！！」[p]
#

#講師	
「お待たせしました。ライオネス様の覚えが悪かったもので、申し訳ありません」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「お、俺のせいだってのかよ！」[p]
#
[lioness_tatie_kimazui]
#講師	
「またお待ちしております。祝賀会まであと一週間です。頑張って自身の魅力を上げていきましょう」[p]
#

[if exp="f.event_war_rans_sumi==1"]
#講師	
「お師匠様があんなことになって、お辛いでしょうが・・・どうか今は」[p]
#
[endif]

#&f.name	
「は、はい・・・ありがとうございました・・・」[p]
#
[lioness_tatie_udekumi]
#&f.name	
（・・・ここにくれば魅力が上げられるってことかな・・・）[p]
#
#&f.name	
（頑張って祝賀会までに・・・キレイにならなきゃ・・・地方騎士団のためにも）[p]
#
[chara_hide_all]
;街

[if exp="f.event_rans_search_yes!=-1"]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg"]

#&f.name	
「・・・・・・」[p]
#
#&f.name	
（本当に、何も、変えられないのかな・・・）[p]
#
#&f.name	
（こうやって・・・裁かれるのを待っているしか、できないのかな・・・）[p]
#
#&f.name	
（ランスロット・・・）[p]
#

[lioness_tatie_show]
#ライオネス	
「・・・・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「随分、暗い顔して、どうした」[p]
#
#&f.name	
「えっ・・・そ、そんなことないよ」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「なんか・・・あったか？」[p]
#
#&f.name	
「な、何もないよ、大丈夫・・・」[p]
#
#&f.name	
「なんでもないよ」[p]
#

[lioness_tatie_normal]
#ライオネス	
「・・・そーかよ」[p]
#

#&f.name	
「・・・・・・」[p]
#
[fadeoutbgm time=1000]
[anten]
[chara_hide_all]
[jump target=*kra_rals]
[endif]

[fadeoutbgm time=1000]
[anten]
[chara_hide_all]
;自由行動へ	その後裏通りのサブイベントへ引き継ぎ
[jump storage="scenario_2/episode/epi5.ks" target=*epi5_end]

[endmacro]



;暗転
;へやで休むとオートイベント;
;（#ランスロットフラグありのみ）[p]


[macro name="kra_rals"]
*kra_rals
;王宮、夜
[bg storage="oukyu_ousetu_yoru_tasogare.jpg"]

[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_akireru]
#クライスト	
「あのさあ・・・もう帰ってもいい？」[p]
#
[playse storage="winesosogu.ogg"]
#？	
「そうと言わずに・・・こちらはロマナ地方の熟成ワインで・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「なんか頼みたいんだろ？さっさと言えばいいのに」[p]
#

#？	
「！そ、それは・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「ラルズ宰相、だっけ？あんたらの世界じゃあ常識なのかもしれないけど、俺には無意味だから、そう言うの」[p]
#

#クライスト	
「王宮の連中は、最初から信用なんかしない。出されたものに、追々と口をつけるほど馬鹿じゃないよ」[p]
#
#ラルズ宰相	
「決してそう言うつもりでは・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「じゃあ、どう言うつもり？悪いけど俺、これから仕事なんだよ。早くしてくれないかな」[p]
#
#ラルズ宰相	
「で、では単刀直入にいいますと・・・我が娘、ユリアの婚約者になっていただきたいのです」[p]
#

[playbgm storage="shuuen_musmus.ogg"]
[kra_tatie_metoji]
#クライスト	
「・・・帰っていいかな？冗談に付き合うほど、暇じゃない」[p]
#
#ラルズ宰相	
「冗談ではございません。お願いでございます。どうか、ユリアをもらってやってくださいませんか」[p]
#

[kra_tatie_yareyare]
#クライスト	
「あのさあ・・・俺は傭兵だよ？王国王女となんてありえないでしょ」[p]
#
#ラルズ宰相	
「その・・・本気でなくてもいいのです、フリ、だけでも・・・」[p]
#
[kra_tatie_normal]
#ラルズ宰相	
「もちろん気に入ってくださればそれで・・・貴方様の功績は王宮の者なら皆知っています。反対も少ないでしょう」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・訳あり？」[p]
#
#ラルズ宰相	
「・・・我が娘ユリアは、王宮騎士団隊長を務めるランスロットを前々からえらく気に入っていまして・・・」[p]
#
[kra_tatie_akireru]
#クライスト	
「ランスロット、ねえ・・・」[p]
#
#ラルズ宰相	
「私と彼の父親であるウェルム王宮騎士団長も、何度か酒を酌み交わした仲です」[p]
#
#ラルズ宰相	
「ランスロットは、貴族の中で身分としては低いですが、腕もたち、民にも慕われる騎士の鑑とも言われる男」[p]
#
#ラルズ宰相	
「私とウェルズとで、陛下に婚約の許可を得ようと画策していたのですが・・・」[p]
#
[kra_tatie_metoji]
#クライスト	
「あーなるほど。そんな矢先ランスロットがウェルム団長の命令に逆らったわけ。
[kra_tatie_akireru]
よりにもよって戦いの最中に」[p]
#
#ラルズ宰相	
「そうです。これでは、陛下の許可などいただけるわけもありません。ユリアは彼が処刑されることに反対していましたが・・・」[p]
#
[kra_tatie_normal]
#クライスト	
「それで何で俺なの？婚約をなかったことにすればいいことだろ？」[p]
#
#ラルズ宰相	
「私もユリアに諦めるよう嗜めたのですが、どうしても聞かず・・・自分の権限でランスロットを釈放するといいだす始末」[p]
#
[kra_tatie_yokome]
#クライスト	
「そこまで好きなんなら一緒にしちゃえばいいじゃないか」[p]
#
#ラルズ宰相	
「とんでもない。騎士としてあるまじき行為をなしたいわば罪人と、娘を婚約させるわけにはいきません」[p]
#
[kra_tatie_metoji]
#クライスト	
「・・・なるほどねえ。ランスロットが命令通りに動いてくれなきゃ、画策した意味もないもんね」[p]
#

[kra_tatie_yareyare]
#クライスト	
「そして後々に政権を手に入れることも、困難になりかねない」[p]
#
#ラルズ宰相	
「そ、そのような・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「自分の娘を身分の低い騎士に嫁がせるメリットなんて、他にないじゃん？」[p]
#
[kra_tatie_yokome]
#クライスト	
「国王陛下には子供がいないって話だったから、揉めてるのかなーとは思ってたけど」[p]
#
[kra_tatie_normal]
#クライスト	
「ウェルム団長を味方に引き入れ、武力で脅して自分が有利に立つつもりだった？」[p]
#
#ラルズ宰相	
「っ・・・どうか、この件はご内密に・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「言いふらすのもおもしろそうだけど、そんなに暇じゃないから黙っとくよ」[p]
#
[kra_tatie_metoji]
#クライスト	
「それで、つまり俺には、ユリア王女をランスロットから引き離して欲しいってわけ」[p]
#
#ラルズ宰相	
「そ、そうです。娘はなんといいますか・・・昔から惚れやすいところもあるので・・・」[p]
#
[kra_tatie_normal]
#ラルズ宰相	
「貴方様が王都を救った噂は王宮の女性たちにも話題に上っています。ですから」[p]
#
[kra_tatie_smile]
#クライスト	
「いやー、モテるって辛いなあ。王女様のお守りなんて光栄至極」[p]
#
#ラルズ宰相	
「・・・。お礼は、言い値で・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「金はいらないよ。美しい王女様と濃厚なひと時が過ごせるなら、俺にとっては至福の時間だし、それが報酬でいいよ」[p]
#
[kra_tatie_metoji]
#クライスト	
「ちなみに・・・同意の上なら何してもいいんだよね？」[p]
#
#ラルズ宰相	
「きっ・・・貴様・・・ユリアを傷物にしたら、ただでは・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「あはは、まあ誘われたら断るような野暮はしないけど。
[kra_tatie_yokome]
・・・祝賀会の前に一度会えばいいのかな」[p]
#

#ラルズ宰相	
「は、はい・・・それで祝賀会ではエスコートを依頼したいと・・・」[p]
#
[kra_tatie_metoji]
#クライスト	
「わかった。それなら、恥ずかしくないような身なりにしないとね」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「当然、衣装はそっちで用意してくれるんだろ？」[p]
#
#ラルズ宰相	
「は、はい、それはもちろん・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「頼んだよ、それじゃ」[p]
#
[fadeoutbgm time=1000]
[chara_hide_all][chara_off]	
#ラルズ宰相	
「くそっ・・・流れ者の小僧が・・・下手に出ていれば偉そうに・・・」[p]
#
#ラルズ宰相	
「だが今は・・・耐えるしかない。お子のいらっしゃらない陛下が私に政権を、お譲りになるまで・・・」[p]
#
#ラルズ宰相	
「ウェルムの力がなかろうと、政権はいずれ私のものだ・・・」[p]
#
;自由行動へ	その後裏通りのサブイベントへ引き継ぎ
[jump storage="scenario_2/episode/epi5.ks" target=*epi5_end]

[endmacro]


;[eval exp="f.event_epi5_rans_ok=1"]


;ヴァンのイベント通過したフラグ

[macro name="rans_epi_2"]
[if exp="f.event_epi5_rans_ok==2"]
[hidemenubutton][skip_button]
*rans_shokei_koukai_0
[bg storage="irainheya_tasogare.jpg"]
[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「おい、聞いたか」[p]
#

#&f.name	
「ライオネス、何？」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「噴水広場に張り出されてる。兄貴の・・・公開処刑日が決まった」[p]
#
[playbgm storage="chinkou_ontama.ogg"]
#&f.name	
「ええっ！！？？」[p]
#
#&f.name	
「い・・・いつ、なの・・・」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「３日後だ。
[lioness_tatie_chottoikari]
くそっ・・・早すぎるぜ・・・」[p]
#
#&f.name	
「な、何で・・・そんな・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「大方・・・反対する連中が出るのを見越して、さっさと始末しちまおうって魂胆なんだろ」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「親父の野郎っ・・・！！」[p]
#
[stopbgm]
[chara_hide_all][chara_off]
[playse storage="yukahasiru_onjin.ogg"]
;SE
#&f.name	
「あっ・・・ライオネス！！」[p]
#
#&f.name	
（３日後なんて・・・それまでに止められるの・・・？一体どうやって・・・）[p]
#
#&f.name	
「街は・・・どうなってるんだろう、街の人たちもみんな、知ってるよね・・・」[p]
#
#&f.name	
「街の様子を見に行ってみよう」[p]
#

[bg storage="crerumatinaka3_tasogare.jpg"]
;噴水広場　ざわざわ
[playse storage="zawameki_soto.ogg"]
#街人	
「王宮騎士団隊長のランスロット様って・・・あのランスロット様だよな？いい噂しか聞かねえけど・・・」[p]
#
#街人	
「騎士団長の命に背いて自らの隊員を危険に晒した・・・？マジかよ・・・」[p]
#
#街人	
「公開処刑はここで３日後・・・随分早いな・・・」[p]
#
#&f.name	
（みんな戸惑ってる・・・当然だよね、こんな・・・）[p]
#


#街人	
「あっ、貴方は・・・[name]さん？」[p]
#
#街人	
「[name]ちゃん！」[p]
#
#街人	
「一体どう言うことなんだい、いきなり公開処刑って・・・こんなこと初めてだよ」[p]
#
#街人	
「地方騎士団には、何か伝わってないのかい？」[p]
#
#街人	
「いや何言ってんだよ、処刑されるのは王宮騎士団隊長だろ？地方騎士団は関係ないじゃないか」[p]
#
#&f.name	
「っ・・・か・・・関係なく、ないです・・・」[p]
#
#街人	
「え？」[p]
#
#&f.name	
「王宮騎士団隊長の、ランスロットは・・・私の・・・剣の先生です」[p]
#
[playbgm storage="chinkou_ontama.ogg"]
#街人
「え、ええ！？」[p]
#
#&f.name	
（知ってる人は知ってるんだけど、王都は広いし、知らない人も多いんだよね・・・当然だけど）[p]
#
#&f.name	
「エルムナードへ出発した時、戦いの最中に、ウェルム王宮騎士団長は、王宮騎士団にだけ撤退を命じたんです」[p]
#
#&f.name	
「たくさんのモンスターを、地方騎士団に任せて、王都に、戻ったんです」[p]
#
#街人	
「王宮騎士団が・・・そう言えば、地方騎士団よりもやけに早く帰還してたよな」[p]
#
#街人	
「そうそう、もう戦いが終わったのかと思ってたけど、そう言うことだったのか」[p]
#
#&f.name	
「元々は・・・地方騎士団と、王宮騎士団で協力して、って話、だったんですけど・・・」[p]
#
#街人	
「・・・」[p]
#
#&f.name	
「でも、ランスロットだけは・・・たくさんの犠牲が出るのを防ぐために・・・彼だけは・・・戻ってきてくれたんです」[p]
#
#&f.name	
「自分への処罰など、たくさんの命に比べたら、大したことじゃない、って・・・」[p]
#
#&f.name	
「わ、私・・・私は・・・すっかり忘れてて、命令に違うことが、どこまでの罪になるのか・・・忘れてて・・・」[p]
#
#&f.name	
（ただ単純に喜んでた・・・ランスロットが来てくれて、心強いって思って・・・バカだ・・・私・・・）[p]
#

[playse storage="gayagaya_soto.ogg"]
#街人	
「・・・そう言えばよ、カーニバルの時も、ランスロット様が俺らを助けてくれたよな」[p]
#
#街人	
「地方騎士はたくさんいたけど、王宮騎士はほとんど見なかったな」[p]
#
#街人	
「俺聞いたぜ。カーニバルの時ウェルム団長はじめほとんどの王宮騎士は王宮に帰ったって」[p]
#
#街人	
「もしかして・・・あん時の王宮騎士たちってランスロット様の・・・」[p]
#
#&f.name	
「・・・そうです。カーニバルの時も、ランスロットの隊だけは、地方騎士団に協力してくれたんです」[p]
#
#街人	
「はいはい！俺、そん時背の高い王宮騎士に助けてもらったぜ！もしかしてその騎士も・・・」[p]
#
#&f.name	
「多分・・・そうだと思います。ランスロットの隊の・・・」[p]
#
#&f.name	
（ヴァンディットさんが背の高さは尋常じゃないって言ってた・・・もしかして副長のエクターさんのことかな・・・）[p]
#
#街人	
「おいおいおいおい・・・じゃあなんだよ、つまり命令違反だったとしても、それは俺ら王都民のためだったってことじゃねえか」[p]
#
#街人	
「そうだぜ、地方騎士だって王都民には変わりねえ。・・・立派じゃねえかよ。自分が処刑されるの知ってて・・・なかなかできることじゃねえ」[p]
#
#&f.name	
「でも・・・王宮騎士な以上、命令に違ったら・・・それは騎士の掟でもあります・・・だから・・・」[p]
#
#街人	
「掟？掟がなんだよ！！騎士は何のためにいんだ？命令に従うためだけじゃねえはずだぜ！」[p]
#
#街人	
「ランスロット様は王宮騎士の立場を超えて、一騎士として・・・俺らのために戦ってくれたんだ」[p]
#
#街人	
「そんな人が目の前で首斬られるってのか・・・俺らは・・・そんなん見たくねえよ・・・」[p]
#
#&f.name	
「・・・みんな・・・」[p]
#
#街人	
「それに、[name]ちゃんの、先生なんだろ・・・[name]ちゃんも、辛いよなあ・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#

[fadeoutbgm time=1000]
#街人	
「でもよお・・・俺らに何かできるのか？処刑まで３日しかないんだぜ」[p]
#
#&f.name	
（何かするにしても、時間が足りなすぎる・・・よね・・・）[p]
#
#&f.name	
（やっぱり・・・ダメなのかな・・・）[p]
#
[playse storage="zawameki_soto.ogg"]
#街人	
「国王陛下に、直訴、してみるとかよ・・・」[p]
#
#街人	
「ばっか何言ってんだ、それこそ俺らが首斬られんぞ」[p]
#
#街人	
「そりゃ乗り込んでったらやばいだろ、それより、俺らの意見を陛下に知ってもらうんだよ」[p]
#
#&f.name	
「意思・・・どうやって・・・」[p]
#
#街人	
「そうだ、署名だ！処刑を反対するみんなに、署名してもらってよ、それを陛下に届けるんだ！」[p]
#
#街人	
「少なくとも、反対する王都民が多いってことだけはわかるだろ。それでダメなら・・・だけど諦めたくねえ」[p]
#
#街人	
「署名か・・・そんなん、握り潰されちまうんじゃねえのか？」[p]
#
#街人	
「やってみなきゃわかんねえだろうが、もしかしたら、もしかしたら止められるかも知れねえ」[p]
#
[playbgm storage="koucha_ontama.ogg"]
#街人	
「国王陛下だって、こんだけ平和な王都を作ってくださってるんだ、都民の声無視するほど、馬鹿じゃねえだろ」[p]
#
#&f.name	
「みんな・・・」[p]
#
#街人	
「よし、そうと決まれば手分けして集めるぜ！紙もいるよな！」[p]
#
#街人	
「友達に羊皮紙作ってんのがいる。そいつに頼んでかき集めてくる！」[p]
#
#街人	
「[name]ちゃん、これくらいしか俺らにはできねえ、だけどよ・・・守られてるだけじゃ、心苦しいからよ」[p]
#
#街人	
「今度は俺らが、俺らのできることでランスロット様や[name]ちゃんたち地方騎士団の力になる」[p]
#
#&f.name	
「！！」[p]
#
#街人	
「処刑日まであと３日しかねえ、急いで計画立てるぞ！！」[p]
#
#街人	
「おう！！」[p]
#
[stopse]
;[playbgm storage="koucha_ontama.ogg"]
#&f.name	
（みんな・・・ランスロットのために・・・）[p]
#
#&f.name	
（そうだよね、ランスロットは街の人をたくさん助けた。でもそれは・・・）[p]
#
[message_kakusu_ad]
[bg storage="rans_kaisou.jpg"]
;ここでスクショ


[bg storage="crerumatinaka3_tasogare.jpg"]
[message_settei_ad]
#&f.name	
「ここで私が、落ち込んでる場合じゃない、よね」[p]
#
#&f.name	
「私も・・・私にできることを、しなくちゃ・・・」[p]
#
#&f.name	
（ランスロット、私・・・諦めたりしないよ）[p]
#
#&f.name	
「でも、一体何ができるだろう・・・」[p]
#
#&f.name	
「ん？署名、集めるって言ってたよね・・・私も、協力できるかな・・・」[p]
#
#&f.name	
「私も、協力して頑張ろう！」[p]
#
[fadeoutbgm time=1000]
[eval exp="f.event_epi5_rans_ok=3"]
[jump storage="scenario_2/day_start_event.ks" target=*rans_shokei_koukai]
[endif]
[endmacro]





[macro name="lion_werumu_izakoza"]

[if exp="f.event_epi5_rans_ok==3"]

*lion_werumu_izakoza
[skip_button]
;#ライオネスの家　※処刑公開の後、マナー講習に行くと発生
[fadeoutbgm time=1000]
#&f.name	
「ん？なんか話し声が・・・」[p]
#
#&f.name	
「！」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_chottoikari]
[config_false]
[werumu_tatie_touroku]
[werumu_tatie_show]
#&f.name	
（ウェルム団長・・・！！）[p]
#
#&f.name	
（そ、そうだよね、ここはライオネスの家なんだし・・・）[p]
#
#&f.name	
（でも、何を話して・・・）[p]
#

#ライオネス	
「よりによってよ・・・兄貴は、親父が一番可愛がってたんじゃねえのかよ」[p]
#
[werumu_tatie_metoji]
#ウェルム	
「だからこそ、だ、裏切りには相応の罰を与えねばならん」[p]
#

#ライオネス	
「裏切りって・・・本当に・・・それでいいのかよ」[p]
#
[werumu_tatie_mehuse]
#ウェルム	
「・・・自らだけでなく、自らの隊まで率いてわしに逆らうとは・・・末代までの恥とも言えよう」[p]
#
#ウェルム	
「周囲にも示しがつかん。息子であろうと、いや、息子だからこそ、わしは罪を許すことはしない」[p]
#
[werumu_tatie_donari]
#ウェルム	
「命を持って、償ってもらう」[p]
#
#ライオネス	
「ふざけやがって・・・兄貴は・・・兄貴はこれまで・・・」[p]
#
[werumu_tatie_normal]
[playbgm storage="chinkou_ontama.ogg"]
#ウェルム	
「恥といえば・・・お前こそだろう、ライオネス」[p]
#
#ウェルム	
「よくもおめおめと、その情けない面をわしに見せられたものだ」[p]
#
#ウェルム	
「双剣を扱えず、王宮騎士にもなれんかった腰抜けが吠えたところで、お前にできることなど何もない」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「っ・・・親父・・・」[p]
#

[werumu_tatie_metoji]
#ウェルム	
「・・・ふん」[p]
#

[chara_hide name="werumu"]
#&f.name	
（・・・ひどい・・・）[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「くそっ・・・畜生っ・・・」[p]
#
#&f.name	
（ライオネス・・・）[p]
#
;#ウェルムいなくなる

#ライオネス	
「・・・」[p]
#
#&f.name	
「あの、ライオネス・・・」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「[name]か・・・格好悪いとこ、見られたな・・・」[p]
#
#&f.name	
「・・・ウェルム団長が、悪いよ、あんな、あんなひどいこと・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「・・・事実だ。反論はできねえよ」[p]
#
#&f.name	
「できるよ！！ライオネスは、腰抜けでも何でもないし、できることはあるよ！」[p]
#

[lioness_tatie_normal]
#ライオネス	
「[name]・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「・・・気、使うな・・・そんな」[p]
#
#&f.name	
「気使って言ったわけじゃ、ないよ・・・」[p]
#
#ライオネス	
「・・・」[p]
#
#&f.name	
（ライオネス・・・）[p]
#

[fadeoutbgm time=1000]
[lioness_tatie_kimazui]
[lioness_tatie_akireru]
#ライオネス	
「とにかく今は・・・兄貴だよな。親父はあの調子だし、どうすりゃ・・・」[p]
#
#&f.name	
「・・・それ、なんだけど・・・ライオネス、あ、あのね、王都の人たちが、署名を集めてるの」[p]
#
[lioness_tatie_normal]
#ライオネス	
「署名？」[p]
#
#&f.name	
「ランスロットに助けられたのは、地方騎士団の私たちだけじゃないんだよ」[p]
#
#&f.name	
「王都の人たちも、だよ。だから、処刑をやめてもらえるように署名を集めて、国王陛下に訴状を送るの」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「しかしよ・・・後３日しかないんだぜ。うまくいくのかよ」[p]
#
#&f.name	
「後悔はしたくないよ。やるしかない。みんなそんな気持ちでやってる。私も・・・諦めたくないから」[p]
#
[lioness_tatie_normal]
#ライオネス	
「[name]・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「・・・そうだな。できる限りのことはやる。親父の馬鹿な命令に全員従ってたら、どれだけの人間が犠牲になったか・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「俺がここにいられるのももしかしたら・・・兄貴のおかげかも知れねえ」[p]
#
#&f.name	
「ライオネス」[p]
#
[lioness_tatie_normal]
#ライオネス	
「俺も、署名手伝うぜ。後、トリスタンやグレッグ団長にも、伝えないとな」[p]
#
#&f.name	
「うん！頑張ろう・・・ありがとう、ライオネス」[p]
#
[lioness_tatie_warai]
[chara_hide_all][chara_off]
[skip_button_off]
[eval exp="f.event_epi5_rans_ok=4"]
[message_kakusu_ad]
[creru_outo_map]
[endif]
[endmacro]





;上記のイベントなかった場合
;騎士団本部にて
[macro name="dancho_tetudai"]
[if exp="f.event_epi5_rans_ok==3"]
*dancho_tetudai
[dancho_tatie_touroku]
[dancho_tatie_show]
#団長	
「[name]、ランスロットの、処刑日が公開されたようだな」[p]
#
[dancho_tatie_metoji]
#団長	
「街もざわついているようだ・・・何とか、ならないものか・・・」[p]
#
#&f.name	
「団長・・・」[p]
#
#&f.name	
（あ、そうだ・・・署名のこと、グレッグ団長にも・・・）[p]
#
#&f.name	
「あ、あの、グレッグ団長・・・そのことなんですが」[p]
#
[chara_hide_all]
[anten]
[bg storage="kisidanrouka_tasogare.jpg"]
[dancho_tatie_show]
#団長	
「王都の人々が、署名を・・・」[p]
#
#&f.name	
「はい。日もなくて、間に合うかどうかわからないんです、それでも、ランスロットを助けたいって、みんな・・・」[p]
#
[dancho_tatie_metoji]
#団長	
「・・・そうか。彼に救われた都民も多いのだな・・・守るべき王都民が行動を起こしているのに、我々が指をくわえて見ているわけにはいくまい」[p]
#
[dancho_tatie_normal]
#団長	
「地方騎士団も協力しよう。騎士全員に、署名の協力を呼びかける。それから・・・万が一のために、処刑日の警備も・・・」[p]
#
#&f.name	
「グレッグ団長、それって・・・」[p]
#
[dancho_tatie_metoji]
#団長	
「万が一、最悪の事態を想定してだ。トリスタンに準備を頼んでおく」[p]
#
#&f.name	
「団長・・・ありがとうございます」[p]
#
[dancho_tatie_normal]
#団長	
「情けないな・・・我々はランスロットに助けられたと言うのに、王都民の後手に回るとは・・・」[p]
#
[dancho_tatie_metoji]
#団長	
「ライオネスも、ウェルム団長に掛け合ったが鼻であしらわれたそうだ。ひどく落ち込んでいた」[p]
#
#&f.name	
「ライオネスが・・・」[p]
#
[dancho_tatie_normal]
#団長	
「年は離れているとはいえ、血の繋がった兄弟だ。奴も辛いだろう・・・」[p]
#
#団長	
「署名や警備の件、ライオネスにも伝えよう。皆で協力して、何としても、処刑は阻止しなければな」[p]
#
#&f.name	
「はい！！」[p]
#
[chara_hide_all]
[endif]
[endmacro]
	
	
;#&f.name、一日終わると同時にオートイベント;-----------------------------------------------
;夜、街中、#クライスト
[macro name="kra_night"]
[anten]
[message_settei_ad]
[bg storage="crerumatinaka2_yoru_tasogare.jpg"]
[skip_button]
#街人	
「あ、あなたは！」[p]
#
[config_true]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト	
「ん？ああ、えーと・・・誰だっけ」[p]
#
#街人	
「あ、あの俺カーニバルの時、傷を治していただいた者です！そ、そうですよね、たくさんの人の治療していただいたので、覚えていらっしゃらないかもですが」[p]
#
[kra_tatie_metoji]
#クライスト	
「ごめんね、エルムナードの時もそうだけど、人数が多すぎて覚えてきれないんだよね」
（特に男は）[p]
#

#街人	
「無理もないですよね、エルムナードの戦いでは大変ご活躍なさったそうで、街の噂にもなってますよ」[p]
#
[kra_tatie_mihiraki]
#クライスト	
「そうなの？
[kra_tatie_smile]
嬉しいなあ。うーんこの調子で女の子のファンも増えるといいんだけど」[p]
#
#街人	
「は、はあ・・・でもすごいですよ、王国の英雄なんて言う連中まで出てきてますし」[p]
#
[kra_tatie_yareyare]
#クライスト	
「えー？柄じゃないよそう言うの」[p]
#
#街人	
「そんな謙遜することないですよ、あなたのおかげで、王都は助かったんですから」[p]
#
[kra_tatie_normal]
#クライスト	
「それほど大したことでもないけどね。・・・それで、何か用？？」[p]
#
#街人	
「あ、あの・・・３日後に、ランスロット様の処刑が行われるのはご存知ですか」[p]
#
[kra_tatie_yokome]
#クライスト	
「知ってるよ。王宮騎士団隊長のランスロット様」[p]
#
#街人	
「今まで王宮騎士団は街を地方騎士団に任せっきりで俺たちには見向きもしなかった」[p]
#
#街人	
「でも、ランスロット様が隊長になられてからは、カーニバルの時も、エルムナードの時も・・・いいえ、その前からも」[p]
#
#街人	
「ウェルム団長の命令に違ってまで、我々王都民のためにその剣を振るってくれたんです」[p]
#
#街人	
「俺たちはそんなランスロット様が処刑されるのなんて、我慢がならない。後数日しかありませんが、処刑の中止を求めて署名を集めてるんです」[p]
#
[kra_tatie_akireru]
#クライスト	
「署名・・・ねえ。集めるのはいいけど、まさか国王陛下に送るとかじゃないよね？」[p]
#
#街人	
「その通りです。俺たちも最初は無理かと思ってたんですが・・・ダメもとで王宮へ行ったところ、陛下の弟君のラルズ宰相が、取り次いでくださると・・・！」[p]
#
[kra_tatie_normal]
#クライスト	
「・・・ラルズ宰相って・・・ユリア王女の父親の？」[p]
#
#街人	
「そうです！！ユリア王女って、すごい美人ですよねえ・・・ってそれは置いといて」[p]
#
#街人	
「国王陛下にこの署名を見せることができれば・・・処刑の中止も検討してもらえるのではと」[p]
#
[kra_tatie_yokome]
#クライスト	
「そううまくいくとはあんまり思えないけどなあ」[p]
#
#街人	
「俺たちも、本当は一か八かなところがあるんです、でも、何もしないでランスロット様の首が落とされるのを、見たくはないんです」[p]
#
[kra_tatie_mehuse]
#クライスト	
「なるほど・・・。ここに名前書けばいいの？」[p]
#
#街人	
「は、はい！！ありがとうございます！！本当に・・・ありがとうございます！！」[p]
#
[kra_tatie_yokome]
#クライスト	
「・・・ラルズ、宰相ねえ・・・」[p]
#
[chara_hide_all][chara_off]
[anten]
;夜道　酒場、食堂通り※２日目
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]	
[playse storage="zawameki_soto.ogg"]
[ector_tatie_touroku]
[ector_tatie_show]
#エクター	
「・・・・・・」[p]
#
[chara_hide name="ector"]
[van_tatie_touroku]
[van_tatie_show]
[config_false]
[ector_tatie_show]
#ヴァンディット	
「よーう色男。気難しい顔してどうした」[p]
#

#エクター	
「お前か。色男とはどう言う意味だ」[p]
#

[van_tatie_temae]
#ヴァンディット	
「昔の話よ。カミさん取り合ったの、覚えてないの？」[p]
#

[ector_tatie_metoji]
;目とじ
#エクター	
「・・・そんなこともあったか・・・印象が薄すぎて忘れていた」[p]
#
[van_tatie_utagai]
#ヴァンディット	
「てめえなあ・・・あーあ羨ましいぜ。あんな美人と結婚して？子供までこさえて？」[p]
#
[ector_tatie_normal]
#エクター	
「お前も早く相手を見つければいい」[p]
#
[van_tatie_metoji]
#ヴァンディット	
「てめえに奪われた失恋の痛みが癒されなくてねえ・・・」[p]
#
;エクター笑う
[ector_tatie_warai]
#エクター	
「・・・ふっ」[p]
#
[van_tatie_utagai]
#ヴァンディット	
「ってここは笑うとこじゃねえだろ！！ガキはいくつになった？」[p]
#
;目とじ
[ector_tatie_metoji]
#エクター	
「数え年で５歳になる。秋には二人目が生まれる」[p]
#
[ector_tatie_normal]
[van_tatie_metoji]
#ヴァンディット	
「二人目までも・・・くうう〜」[p]
#
[van_tatie_kubinite]
#ヴァンディット	
「涼しい顔して、やることはしっかりやってんなあ相変わらず」[p]
#
[van_tatie_smile]
#ヴァンディット	
「色々と積もる話もあんだろ、一杯行かねえか？」[p]
#
;目とじ
[ector_tatie_metoji]
#エクター	
「お前と飲むより子供の顔が見たい」[p]
#
[van_tatie_utagai]
#ヴァンディット	
「このやろう・・・それならついてくかんな！
[van_tatie_smile]
カミさんにも久しぶりに会いたいしよ！」[p]
#
[ector_tatie_normal]
#エクター	
「・・・ついてくるなら、酒とつまみは持参だ」[p]
#
[van_tatie_metoji]
#ヴァンディット	
「へいへい・・・楽しみだねえ〜。
[van_tatie_mehuse]
もう一人いたら、もっと楽しいのにねえ〜」[p]
#
[ector_tatie_mehuse]
[stopse]
[playbgm storage="koucha_ontama.ogg"]
#エクター	
「・・・」[p]
#
[van_tatie_kutinite]
#ヴァンディット	
「結構騒がしくなってんな。街ではなんか色々、やってるらしいぜ」[p]
#

#エクター	
「・・・そのようだな」[p]
#
[van_tatie_temae]
#ヴァンディット	
「お前もなんか企んでんのか？」[p]
#
[ector_tatie_metoji]
#エクター	
「・・・部下たちもうるさいからな。何もしないわけには行かないだろう」[p]
#
[van_tatie_sinpai]
#ヴァンディット	
「最初っから何もしないつもりじゃなかったんだろ？部下が煩くなくてもさ」[p]
#
[ector_tatie_mehuse]
#エクター	
「・・・」[p]
#
[van_tatie_smile]
#ヴァンディット	
「さーて、明後日が楽しみだな。どんだけ面白いイベントになることやら」[p]
#
[ector_tatie_metoji]
#エクター	
「・・・不謹慎な男だ。相変わらず」[p]
#
[fadeoutbgm time=1000]
[chara_hide_all][chara_off][skip_button_off]
[endmacro]


	
;３日目　ユリアの部屋
	
[macro name="yuria_kra"]
[bg storage="yuria_heya_yoru.jpg"]
[config_false]
[yuria_tatie_touroku]
[yuria_tatie_show]
#ユリア	
「どう言うことですの？」[p]
#

[chara_hide name="yuria" time=500]
[config_true]
[kra_tatie_touroku]
[kra_tatie_show]
[config_false]
[yuria_tatie_show]
#クライスト	
「ですから、何もしなくても、ランスロットは助かりますって言ったんです」[p]
#
[kra_tatie_yokome]
#クライスト	
「あれだけ王都民の人気も高く、人望もある男が首を斬られるのを、都民が黙っているわけがありませんよ」[p]
#
[kra_tatie_metoji]
#クライスト	
「すでに処刑の日は発表されてますから、当日は何か面白いことが起きるかもしれませんよ」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「あなた様がわざわざ、声を張り上げるまでもない」[p]
#
[yuria_tatie_metoji]
#ユリア	
「お父様とウェルム王宮騎士団長が黙っているわけがありませんわ」[p]
#
[kra_tatie_smile]
#クライスト	
「そうですね・・・では、その時こそあなた様の出番なのでは？」[p]
#
[yuria_tatie_mihiraki]
#ユリア	
「え？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「ユリア様、ちょっと『探し物』をお願いできますか」[p]
#
[chara_hide_all][chara_off]
[endmacro]


[macro name="lion_shomei"]
;処刑前日夜
[bg storage="irainheya_yoru_tasogare.jpg"]
[playse storage="nokku_tairakomori.ogg"]
[config_true]
#ライオネス	
「まだ起きてるか？」[p]
#
#&f.name
「あ、ライオネス！」[p]
#
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「署名は王宮に無事渡ったらしい」[p]
#
#&f.name	
「そうなんだ・・・！じゃあ・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「だけど・・・署名が陛下に渡ったとしても、阻止できるかどうか・・・わかんねえよな・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「考えたくねえけど、ちゃんと渡ったかどうかも・・・」[p]
#
#&f.name	
「・・・」[p]
#
[chara_hide_all]
[chara_off]
[anten]
[endmacro]


[macro name="shokei_toujitu"]
;処刑当日
;SE
[config_true]
[live2d_rans_h_touroku]
[live2d_fadeout time=30]
[live2d_rans_h_show_sekkin]
[rans_h_body_kennasi]
[playse storage="paredo_kansei_1.ogg"]
#&f.name	
「えっ・・・何だろう・・・」[p]
#
#&f.name	
「街の方みたい・・・行ってみよう！！」[p]
#
[playse storage="yukahasiru_onjin.ogg"]
;噴水広場
[bg storage="crerumatinaka3_tasogare.jpg"]
#&f.name	
（え・・・）[p]
#
[playse storage="paredo_kansei_1.ogg"]
#街人	
「処刑を中止しろー！！」[p]
#
#街人	
「ランスロット様を離せー！！」[p]
#
#&f.name	
「どういうこと・・・やっぱり、ダメ、だったの・・・」[p]
#
#王宮騎士	
「貴様ら、うるさいぞ！！さっさと散れ！！」[p]
#
#王宮騎士	
「くそっ・・・こいつら・・・！！」[p]
#
#&f.name	
「あっ・・・ランスロット・・・」[p]
#
;太鼓の音

[playbgm storage="chinkou_ontama.ogg"]

[rans_h_exp_metoji]
[live2d_fadein time=1000]

#ランスロット	
「・・・・・・」[p]
#
[live2d_fadeout time=1000]
[bg storage="girotin.jpg"]
#王宮騎士	
「これより、王宮騎士団元騎士、ランスロットの処刑を行う！！」[p]
#
#王宮騎士	
「罪状はウェルム王宮騎士団長への命令違反である」[p]
#
#王宮騎士	
「彼の者はカーニバル攻防戦および先のエルムナード戦にて、ウェルム団長の命令を無視し、自らの勝手な行動で部下を危険に晒した」[p]
#
#王宮騎士	
「かの者は隊長職にあるが、彼の部下はウェルム団長の部下でもある。組織としての騎士団の秩序を乱す横暴な行為であり、その罪は重い」[p]
#
#王宮騎士	
「よって予告通り彼の者を、予定通り斬首刑に処す！！」[p]
#
	
#&f.name	
（ランスロット・・・！）[p]
#
#&f.name	
（国王陛下に、署名は届いてたの・・・！？届いてたけど、認められなかったってこと・・・！？）[p]
#

[bg storage="crerumatinaka3_tasogare.jpg"]
[playse storage="paredo_kansei_1.ogg"]
#街人	
「やめろ！！ランスロット様は俺たちを助けてくれたんだぞ！！」[p]
#
#街人	
「あんたら王宮騎士団は、私らがモンスターに襲われてる時に、助けてもくれなかったじゃないか！！」[p]
#
#街人	
「それをランスロット様は・・・」[p]
#
#王宮騎士	
「王宮騎士団の仕事は、貴様らの護衛ではない！！黙れ！！この愚民が！！」[p]
#
#&f.name	
「あっ・・・！！」[p]
#
[stopbgm]
[quake count="3" time="500" hmax="50" vmax="10"]
[playse storage="kenshougeki_koukaonlabo.ogg"]
;SE
[playbgm storage="soudou.ogg"]
[lioness_tatie_touroku]
[chara_show name="lion" storage="lion_tatie/Idle_gif_kamae.gif" top=-35 left=0]

#ライオネス	
「てめえら・・・！！仕事とか何とか以前に、力を持ってるなら、持ってねえやつを守れよ！！なんのための武器なんだよ、何のための武力なんだよ！！」[p]
#
#&f.name	
「ライオネス！！」[p]
#
#街人	
「ら、ライオネス様・・・！」[p]
#
#ライオネス	
「俺らクレールの騎士は・・・王国のみんなを守るためにいるんだろうが！！」[p]
#

[chara_hide_all]

[rans_h_exp_mehuse]
[live2d_fadein time=700]
#ランスロット	
「・・・ライオネス・・・」[p]
#
[live2d_fadeout time=1000]
[tris_tatie_touroku]
[tris_tatie_show]
[tris_tatie_donari]
#トリスタン	
「王都民を守れ！！俺ら地方騎士団は、王都民を馬鹿にするお前ら王宮騎士とは違うぞ！！」[p]
#
#&f.name	
「トリスタン！！」[p]
#
[chara_hide_all]

#王宮騎士	
「くそっ・・・このままではウェルム団長に示しが付かん・・・！さっさと首を落としてしまえ！！」[p]
#
#&f.name	
「！！」[p]
#
[bg storage="girotin.jpg"]
[stopbgm]
[image storage="black.png" layer="3" page="fore" visible="true" x="0" y="0" name="kuro" time="10"]
#&f.name	
「やっ・・・」[p]
#
	
#&f.name	
「やめてええええええええ！！！！！！」[p]
#

[quake count="5" time="300" hmax="500" vmax="300"]
[free name="kuro" layer=3]
[bg storage="aka.jpg" time=50]
[playse storage="kiru1_koukaonlabo.ogg"]

[bg storage="black.png time=3000"]


[playbgm storage="chinkou_ontama.ogg"]
#&f.name	
「ランス・・・ロット・・・」[p]
#
#&f.name	
（怖くて・・・顔・・・あげられないよ・・・）[p]
#
#&f.name	
（そっか・・・国王陛下は・・・きっと・・・ランスロットを許さなかったんだよ・・・ね・・・）[p]
#
#&f.name	
（そうだよ・・・ランスロットは、王宮騎士なんだから、ウェルム団長に背いちゃ、いけないんだから・・・）[p]
#
#&f.name	
（でも・・・でも・・・）[p]
#
#&f.name	
「どうして・・・どうして・・・っ」[p]
#
#&f.name	
「う・・・ううーっ・・・」[p]
#
#&f.name	
（ランスロット・・・ごめんね・・・。助けてあげられなくて・・・ごめんね・・・）[p]
#

[fadeoutbgm time=3000]
[wait time=3000]	

[config_true]
[lioness_tatie_show]	
#ライオネス	
「・・・[name]、顔、上げろ」[p]
#
#&f.name	
「い、嫌だよ・・・嫌・・・」[p]
#
[stopbgm]
[lioness_tatie_udekumi]
#ライオネス	
「・・・大丈夫だ。兄貴は、生きてる」[p]
#
#&f.name	
「えっ・・・」[p]
#
[chara_hide_all]
[bg storage="crerumatinaka3_tasogare.jpg" time=50]
[config_true]
[van_tatie_touroku]
[van_tatie_show]
[van_tatie_smile]
#ヴァンディット	
「いーやあー！！間一髪！！」[p]
#

[config_false]
[ector_tatie_touroku]
[ector_tatie_show]
#エクター	
「くるのが遅すぎるぞ、ヴァンディット」[p]
#
[van_tatie_temae]
#ヴァンディット	
「いーじゃねえの。これは二人の功績ってことで？」[p]
#
[van_tatie_yasasige]
#ヴァンディット	
「結構大変なんだぜ？この王宮騎士の馬鹿ども、一発でのしちまうなんて、俺の神業！」[p]
#
[chara_hide_all]

[glif_tatie_touroku]
[config_true]
[chara_show name="glif" storage="glif_tatie/glif_sinpai.gif" width="570" height="743" top=10]

#グリフ	
「隊長！！隊長！！よかった・・・よかった・・・」[p]
#

[config_false]
[ector_tatie_show]
#エクター	
「グリフ、泣くんじゃない。まだ安心するのは早い」[p]
#

[chara_hide_all]
[config_true]
[rans_h_exp_mihiraki]
[live2d_fadein time=1000]


#ランスロット	
「・・・え・・・エクター、なぜ・・・」[p]
#
[config_false]
[ector_tatie_show]
#エクター	
「その台詞は今必要ですか？
[ector_tatie_warai]
理由などありませんよ」[p]
#
[rans_h_exp_normal]
[rans_h_mod_idle_no_move_mehuse]
[rans_h_head_right_x]
[rans_h_head_under_y]
[rans_h_exp_mehuse]
#ランスロット	
「しかし、こんなことをしたら・・・お前は」[p]
#
#エクター	
「大丈夫です。陛下の許可がおりました」[p]
#

[rans_h_mod_idle]
[rans_h_head_normal]
[rans_h_exp_mihiraki]
#ランスロット	
「っ・・・国王陛下が・・・！？」[p]
#

[live2d_fadeout time=500]
[chara_hide_all time=500]
[config_true]
[glif_tatie_show]
#グリフ	
「王都民の皆さんが、隊長の処刑をやめて欲しいって、署名を集めてくれて・・・それが、国王陛下に届いたんです」[p]
#

[chara_hide name="glif" time=500]
[van_tatie_show]
#ヴァンディット	
「そうそう、弟子の嬢ちゃんも、必死に頑張ってたぜえ。
[van_tatie_smile]
元々王都民を説得してくれたのは、嬢ちゃんだしな」[p]
#

[chara_hide name="van" time=500]
[rans_h_head_under_y]
[rans_h_exp_mehuse_warai]
[live2d_fadein time=500]

#ランスロット	
「・・・[name]が・・・そうか・・・」[p]
#
[rans_h_exp_metoji_warai]
#ランスロット	
「・・・そうか・・・」[p]
#
	
[live2d_fadeout time=1000]

[config_false]
[yuria_tatie_touroku]
[yuria_tatie_show]
#ユリア	
「・・・ランスロット様・・・」[p]
#
[chara_hide_all time=50]
[kra_tatie_touroku]
[kra_tatie_show_tall]
[kra_tatie_smile]
#クライスト	
「ありがとうございます、ユリア様。あなたがお父上の部屋で見つけた署名のおかげで、陛下の許可がおりました」[p]
#
[config_false]
[yuria_tatie_show]
#ユリア	
「・・・」[p]
#
[kra_tatie_metoji]
#クライスト	
「いつの時代も、国を動かすのは民の意思です。そうでなくてはなりません」[p]
#
[yuria_tatie_mihiraki]
#ユリア	
「！」[p]
#
[kra_tatie_smile]
#クライスト	
「なんてね」[p]
#
[yuria_tatie_ikari]
#ユリア	
「傭兵風情が・・・偉そうに知った口を聞くものではありません」[p]
#
#クライスト	
「・・・これはこれは、失礼いたしました」[p]
#
[yuria_tatie_normal]
#ユリア	
「・・・・・・」[p]
#

[chara_hide_all]	

[playbgm storage="koucha_ontama.ogg"]


[tris_tatie_touroku]
[tris_tatie_show_left]
[tris_tatie_warai]
#トリスタン	
「やれやれだ。間一髪で間に合ったな」[p]
#
[lioness_tatie_touroku]
[lioness_tatie_show_right]
#ライオネス	
「ああ・・・署名は、陛下に届いたのか・・・」[p]
#
[lioness_tatie_warai]
#&f.name	
「そう、みたいだね・・・」[p]
#
#&f.name	
（よかった・・・本当に、よかった・・・）[p]
#
#&f.name	
（陛下に、感謝しなくちゃ。それから王都のみんなにも・・・）[p]
#
#&f.name	
（ランスロット・・・）[p]
#

[chara_hide_all time=500]
[rans_h_exp_bisyo]
[live2d_fadein time=1000]
[rans_h_head_under_y]
[rans_h_head_normal]
;#ランスロット微笑む

[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
[playse storage="paredo_kansei_1.ogg"]	
#街人	
「ランスロット様ーー！！」[p]
#
#街人	
「よかった・・・よかったぜ、本当に・・・！！」[p]
#
#街人	
「国王陛下、バンザーイ！！」[p]
#
#街人	
「俺たちの声、陛下に届いてたんだな・・・あーなんか、すっげえ嬉しい・・・」[p]
#
#街人	
「俺らの努力、無駄じゃなかったんだな・・・！！陛下に感謝だよな・・・」[p]
#
#&f.name	
「あの・・・みなさん、本当に・・・ありがとうございました」[p]
#
#街人	
「[name]ちゃんこそ、ありがとうな！！署名たくさん集めてくれてよ・・・よかったな、ランスロット様、助かって」[p]
#
#&f.name	
「・・・はい・・・！」[p]
#
[fadeoutbgm time=1000]
[stopse]
[anten]
[bg storage="irainheya_tasogare.jpg"]
[chara_on][chara_show name="kra" storage="&f.kra_yokome"top=0 left=130]
[playbgm storage="koucha_ontama.ogg"]
#クライスト	
「ラルズはきっつーいおしかりを陛下から受けたんだって。何でもみんなの署名を部屋に隠してたらしくてさ」[p]
#
[kra_tatie_normal]
#クライスト	
「それを娘のユリア王女が見つけて、陛下に渡したってことみたい」[p]
#
#&f.name	
「そうなんだ・・・ユリアさんが」[p]
#

#クライスト	
「彼女、前からランスロットがお気に入りだったみたいだしね。
[kra_tatie_metoji]
・・・でも、今はちょっと違うのかな」[p]
#
#&f.name	
「え？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「いや、何でも」[p]
#
#&f.name	
「その・・・ウェルム団長は・・・？」[p]
#
[kra_tatie_mehuse]
#クライスト	
「諸悪の根源のような感じはするけど、今回彼は何も悪いことしてないからね。ただ命令に背いた部下をルールに則って裁いただけだし」[p]
#
[kra_tatie_yokome]
#クライスト	
「それが王都民の気に触っただけの話だろ」[p]
#
#&f.name	
（そっか・・・そうなのかな・・・あれ、でも・・・）[p]
#
#&f.name	
「で、でもあの時・・・エルムナードの戦場で、地方騎士団だけ置いて帰ったのは・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「あれかあ・・・
[kra_tatie_metoji]
ウェルム団長がその場で説明したからには、俺の活躍と異形の様子を見て、地方騎士団だけで十分だって思ったって」[p]
#」[p]
#
#&f.name	
「ええっ・・・」[p]
#
[kra_tatie_yokome]
#クライスト	
「だから今自分たちが優先すべきは、王都にいる王族の守護だって判断したからだそうだよ。
[kra_tatie_yareyare]
うまいこと言うよね」[p]
#
#&f.name	
「・・・・・・」[p]
#
[kra_tatie_normal]
#クライスト	
「お偉い王族の方々もね、その場にいたわけじゃないし、何しろ自分たちを守るために戻ってきたって聞いたら罰する気になんかなるわけないじゃん」[p]
#
[kra_tatie_metoji]
#クライスト	
「状況に応じた判断だったってことで、お咎めはなしだよ」[p]
#
#&f.name	
「・・・・・・」[p]
#
#&f.name	
（何となく、納得いかない気もするけど・・・でも・・・仕方、ないのかな・・・）[p]
#
[kra_tatie_mehuse]
#クライスト	
「[name]ちゃん・・・」[p]
#
#&f.name	
「・・・・・・・。ランスロットは・・・今、どうしてるのかな。騎士に戻れるの？」[p]
#

[kra_tatie_yokome]
#クライスト	
「そりゃあ、王都民が望んでることだし・・・普通に戻って元どおりになるんじゃない」[p]
#
#&f.name	
「そっか・・・でも本当に・・・よかった。ランスロットが助かって」[p]
#
[kra_tatie_normal]
#クライスト	
「そうだね・・・」[p]
#
[kra_tatie_yareyare]
#クライスト	
「まあ俺も？知ってる人間が首落とされるの見るの趣味じゃないし」[p]
#
#&f.name	
「く、クライストさん・・・！」[p]
#
[kra_tatie_smile]
#クライスト	
「あはは。ごめんごめん。
[kra_tatie_bisyou_youen]
そうそう、祝賀会は予定通りやるみたいだよ。準備はできてる？」[p]
#
#&f.name	
「あ、そうか・・・３日後？かな・・・」[p]
#

[kra_tatie_smile]	
#クライスト	
「うん。
[kra_tatie_yareyare]
俺もさあ、一応出なくちゃならないんだよねー。面倒くさいけどこれから王宮に行かなくちゃ」[p]
#
#&f.name	
「それはクライストさんがいなかったらルシアに勝てなかったわけだし・・・って、なんで王宮に？呼ばれてるの？」[p]
#
[kra_tatie_yokome]
#クライスト	
「ユリア王女がわがまま言い出して。エスコートしろって聞かなくてさ」[p]
#
#&f.name	
「はあ・・・」[p]
#
#&f.name	
（もしかして、ランスロットからクライストさんに・・・鞍替え？とか？・・・うーん・・・まさかね・・・）[p]
#
[fadeoutbgm time=3000]
[kra_tatie_bisyou_youen]
#クライスト	
「当日はさ、[name]ちゃんのドレス姿、楽しみにしてるからね。祝賀会のメリットなんか俺にはそれくらいしかないし」[p]
#
#&f.name	
「く、クライストさん・・・！」[p]
#
[kra_tatie_smile]
#クライスト	
「あはは。それじゃ」[p]
#
[chara_hide_all][chara_off]

[endmacro]


[macro name="rans_saikai"]
;この後外出すると、#ライオネスしか場所表示されない。
;本部帰った後のイベントで、ランスがやってくる
[bg storage="irainheya_tasogare.jpg"]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show]
[rans_exp_normal_warai]

#&f.name	
（ランスロット・・・あれからずっと会えてないな）[p]
#
#&f.name	
（元気でいるのかな・・・）[p]
#
[playse storage="nokku_tairakomori.ogg"]
#&f.name	
「はーい・・・あ！」[p]
#

[live2d_fadein time=1000]
#ランスロット	
「・・・[name]」[p]
#
[playbgm storage="omoi_ontama.ogg"]
#&f.name	
「ランスロット！！あの・・・もう、いいの？」[p]
#

[rans_head_right_z]
[rans_body_right_z]
[rans_exp_normal]
#ランスロット	
「・・・？何がだ？」[p]
#
[rans_body_normal]
[rans_head_normal]
#&f.name	
「何・・・って」[p]
#
#&f.name	
（・・・ん？怪我とかしてたわけじゃないし、部屋に監禁されててもご飯は普通に食べてたわけだし・・・今は自由の身・・・のはずだし）[p]
#
#&f.name	
「うーん・・・と？何がだろう・・・」[p]
#

[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「・・・全くお前は・・・」[p]
#
#&f.name	
「で、でもあれから・・・処刑の日から、ずっと会えてなかったし、心配してて」[p]
#
[rans_exp_normal]
[rans_head_normal]
#&f.name	
「どうしたかなって・・・。元気そうだね、よかった・・・」[p]
#
[rans_head_right_z]
[rans_exp_sinpai]
#ランスロット	
「・・・すまない。色々と、心配をかけたようだな。
[rans_exp_metoji]
ヴァンディットからきいた」[p]
[rans_head_normal]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_mehuse_warai]
#ランスロット	
「お前が王都の人たちに協力を願ったこと、そして王都の皆が署名を集めてくれたこと・・・」[p]
#

#ランスロット	
[rans_eyes_right]
「王都の皆にもそうだが・・・
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
[rans_eyes_normal]
それ以上に、お前には感謝している」[p]
#
[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット	
「お前が動いてくれなかったら、ヴァンディットたちが奔走したとしても、
[rans_eyes_left]
[rans_head_left_z]こうはうまくいかなかっただろう」[p]
#
[rans_head_normal]
[rans_eyes_normal]
#&f.name	
「そ、そうかな・・・私、結局何もできなかったような気もする・・・実際助けたのはヴァンディットさんやエクターさんだし」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「王都民を動かしたのは、間違いなくお前だ。陛下の許可が降りなかったら、エクターたちも処罰の対象になっただろうし」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「私自身も、これまで通りエクターやグリフたちといられる・・・
[rans_head_right_z]
[rans_exp_bisyo]
本当に、ありがとう」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「お前には、助けてもらってばかりだな・・・」[p]
#
#&f.name	
「ランスロット・・・私、そんな大したこと、してないよ」[p]
#
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「あれを大したことないというのなら、お前はかなりの大物だな」[p]
#
[rans_body_left_z]
[rans_arms_kosinite_right]
#ランスロット	
「これからが楽しみだ」[p]
#
#&f.name	
「え・・・ええっ！！？？」[p]
#
[rans_body_normal]
[rans_arms_normal]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	
「はははっ！！」[p]
#
#&f.name	
（ランスロット・・・）[p]
#
#&f.name	
（・・・処刑の日、本当に、息がつまりそうだった。この人を失いたくないって、何度も思ったけど）[p]
#
#&f.name	
（よかった・・・ホントに無事で、よかった・・・）[p]
#

[fadeoutbgm time=1000]
#&f.name	
「っ・・・」[p]
#
[rans_body_right_z_half]
[rans_exp_mihiraki]
#ランスロット	
「[name]・・・どうした？」[p]
#
[rans_body_normal]
[rans_exp_normal]
#&f.name	
「ううん・・・すごく嬉しいの。これまで通りこうやって、ランスロットと笑っていられること」[p]
#
[rans_head_under_y]
[rans_exp_metoji_warai]
#ランスロット	
「[name]・・・ああ・・・そうだな」[p]
#
#&f.name	
「うん！」[p]
#
[rans_exp_mehuse_warai]
#ランスロット	
「・・・・・・」[p]
#
[live2d_fadeout time=1000]
;ランス接近
;（抱き寄せスチル？）[p]
#
#&f.name	
（えっ・・・）[p]
#
[live2d_rans_mod_sekkin]
[live2d_fadein time=1000]

[playbgm storage="koucha_ontama.ogg"]
#ランスロット	
「・・・処刑を待つ間・・・お前のことばかり考えていた」[p]
#
[rans_eyes_right]
[rans_head_right_x]
[rans_body_right_x_half]
#&f.name	
「えっ・・・」[p]
#
[rans_exp_mehuse_warai]
#ランスロット	
「お前が、私のことを
「大切な人」だと言ってくれたことが、頭から離れなかったんだ」[p]
#
[rans_head_normal]
[rans_body_normal]
[rans_head_under_y]

#ランスロット	
「助かった後も、お前に会うまでの時間も・・・それだけではない、どんな時でも・・・その言葉とともに、お前の顔が思い浮かぶ」[p]
#
[rans_exp_metoji_warai]
#ランスロット	
「そしてこれからも、そうだな、忘れることなど・・・できないのだろうな」[p]
#
#&f.name	
「ランスロット・・・？」[p]
#

[rans_head_right_x]
[rans_eyes_right]
[rans_exp_bisyo]
#ランスロット	
「お前がくれた言葉は・・・
[rans_eyes_normal]
[rans_head_normal]
きっと私を生涯支えてくれるのだろう」[p]
#
[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「お前は私の命の恩人だ。そればかりでなく同時に、私の・・・心をも救ってくれた」[p]
#
[rans_exp_mehuse_warai]
#ランスロット	
「ありがとう・・・[name]」[p]
#
#&f.name	
「ランスロット・・・」[p]
#
[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット	
「この先どのようなことがあろうと・・・もしお前と共にあれるならば・・・負けることはないように思える」[p]
#
#&f.name	
「ランスロット、わ、私・・・」[p]
#
#&f.name	
（私・・・）[p]
#
[rans_head_right_x]
[rans_head_under_y]
[rans_eyes_right]
[rans_exp_komari_warai]
#ランスロット	
「すまない・・・困らせてしまったか。
[rans_eyes_left]
[rans_head_left_x]
[rans_body_left_z]
[rans_body_normal]
[rans_exp_mehuse_warai]
だがただ、その・・・礼を・・・言いたかったんだ。お前に感謝していると、心から伝えたくて」[p]
#
[rans_eyes_normal]
[rans_exp_normal_warai]
#&f.name	
（ランスロット・・・）[p]
#
#&f.name	
「ランスロット・・・私、こそ・・・ありがとう。生きててくれて。私の前から、いなくならないでくれて」[p]
#
[rans_exp_mihiraki]
[rans_head_under_y]
[rans_exp_bisyo]
[rans_head_normal]
#ランスロット	
「それはお前のおかげなんだろう」[p]
#
#&f.name	
「ううん、それでも、お礼言いたいよ。これまでのことも、含めて。私が今ここにいられるのは、ランスロットのおかげだから」[p]
#
[rans_exp_mehuse_warai]
[rans_head_right_z]
[rans_body_right_z_half]
[rans_exp_bisyo]
#ランスロット	
「[name]・・・」[p]
#
[rans_exp_mehuse_warai]
[rans_head_left_z]
[rans_body_normal]
[rans_exp_normal_warai]
#&f.name	
「ランスロット・・・」[p]
#
[fadeoutbgm time=1000]
#ランスロット	
「・・・」[p]
#
#&f.name	
「・・・」[p]
#
[rans_body_right_x_half]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_eyes_right]
[rans_exp_komari_warai]
#&f.name	
（・・・ちょっと・・・恥ずかしい・・・かも・・・）[p]
#
[rans_body_normal]
[rans_head_normal]
[rans_exp_metoji_warai]
#ランスロット	
「・・・・。ああ、そうだ・・・[name]」[p]
#
#&f.name	
「？」[p]
#
[rans_body_right_z_half]
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット	
「今夜・・・予定は空いているか」[p]
#
#&f.name	
「えーと・・・どうしたの？」[p]
#
[rans_body_normal]
[rans_eyes_right]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット	
「その・・・夜酒場で、エクターとヴァンディットと食事をすることになっていてな。ヴァンディットがお前も呼べと・・・」[p]
#
[rans_eyes_normal]
[rans_exp_normal]
[rans_head_normal]
#&f.name	
「えっ、ヴァンディットさんが・・・」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
#ランスロット	
「どうも嫌な予感がするから、できないと言ったんだが、どうしてもと言って聞かないんだ」[p]
#
[rans_head_under_y]
[rans_head_right_x]
[rans_eyes_right]
[rans_exp_komari]
#ランスロット	
「とりあえず聞いてはみると、言ってきたんだが・・」[p]
#
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_mehuse]
#ランスロット	
「気が進まなければ無理には・・・」[p]
#
;SEL

#&f.name	
（つまり、ランスロットとエクターさんとヴァンディットさんと一緒に、食事するってこと・・・？）[p]
#

[jump storage="scenario_2/sentaku.ks" target=*rans_ector_van_shokuji]

;行きたい！
;ちょっと遠慮しようかな
	
;ちょっと遠慮しようかな
*enryo

#&f.name	
「私、エクターさんのこともよく知らないし・・・お邪魔かもしれないし」[p]
#
[live2d_fadein time=1000]
[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「お邪魔ということはないと思うが・・・気が進まないんだな。

[rans_exp_metoji]
わかった。そう伝えておこう」[p]
#
[rans_eyes_right]
[rans_body_right_z_half]
#ランスロット	
「お前から言われればあいつも諦めるだろう」[p]
#
#&f.name	
「ごめんね・・・」[p]
#
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット	
「大丈夫だ、気にすることはない。
[rans_head_left_z]
[rans_exp_yokome]
ヴァンディットのやつもからかいたいだけだろう・・・」[p]
#
#&f.name	
「え？」[p]
#
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_metoji]
#ランスロット	
「いや、何でもない」[p]
#
#&f.name	
「？？？とりあえず、ホントにごめんね・・・ヴァンディットさんに、よろしく言っておいてね」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「ああ、わかった。それじゃあ、またな」[p]
#
#&f.name	
「うん！」[p]
#
[live2d_fadeout time=1000]
#&f.name	
（ランスロット・・・本当に良かったな・・・）[p]
#
#&f.name	
（これからは今まで通り、だね。知り合いも増えたけど・・・あの３人って仲良しなのかな。ちょっとうらやましいなあ）[p]
#
[jump target=*rans_saikai_end]	

;行きたい！
*ikitai
[live2d_fadein time=1000]
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット	
「本当にいいのか？　
[rans_exp_mehuse_muzukasii]
酔っ払いに絡まれるぞ？」[p]
#
#&f.name	
「酔っ払いって？？」[p]
#
[rans_exp_normal]
[rans_head_left_x]
[rans_head_under_y]
[rans_eyes_left]

#ランスロット	
「あいつは酒癖が・・・
[rans_head_normal]
[rans_eyes_normal]
いや、何でもない。わかった。
[rans_head_under_y]
[rans_head_normal]
それじゃあ、夜に迎えに行く」[p]
#
#&f.name	
「ありがとう。じゃあ、待ってるね」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「ああ」[p]
#
*rans_saikai_end
[live2d_delete_all][live2d_off]
[endmacro]	


[macro name="rans_saikai_shokuji"]
;騎士団本部入口※装備によってコメントあり

[bg storage="irainheya_yoru_tasogare.jpg"]
[soubi_henkou]
[refresh_hanyou]
*change_end
[skip_button]
[message_settei_ad]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]

[playse storage="nokku_tairakomori.ogg"]
#&f.name	
（あ、ランスロットかな）[p]
#
[rans_exp_normal_warai]
[live2d_fadein time=1000]
#ランスロット	
「さあ、いくか」[p]
#
#&f.name	
「うん！！」[p]
#

[rans_fashion_check]
[live2d_fadeout time=1000]
[live2d_mod name="rans2" y=-1.8 x=0.0 scale=4.5]
[bg storage="crerushokudou_yoru_tasogare.jpg"]
;酒場
[playse storage="zawameki_situnai.ogg"]
[playbgm storage="koucha_ontama.ogg"]
[config_true]
[van_tatie_touroku]
[van_tatie_show]
#ヴァンディット	
「おーうこっちだ、こっち！！」
[van_tatie_smile]
[p]
#
[stopse]
[chara_hide_all]
[live2d_fadein time=1000]
#ランスロット	
「・・・もう出来上がっているのか・・・」[p]
#
#&f.name	
「え？何？」[p]
#
[rans_exp_mehuse]
#ランスロット	
「いや・・・」[p]
#
[live2d_fadeout time=500]
[van_tatie_show]
#ヴァンディット	
「すまねえなあ嬢ちゃん。男ばっかりの酒の席に呼んじまって」[p]
#
#&f.name	
「あ、いいえ、呼んでくれてありがとうございます」[p]
#
[config_false]
[ector_tatie_touroku]
[ector_tatie_show]
[ector_tatie_warai]
#エクター	
「あまりかしこまらず、くだけていい。ここは騎士団ではないのだから」[p]
#
#&f.name	
「あ、は、はい」[p]
#
#&f.name	
（エクターさんって・・・普段あんまり話さないけど、こんな感じなんだ・・・）[p]
#
[chara_hide_all time=500]
[config_true]
[chara_show name="van" top=5 height="650" width="613" time=500]
#ヴァンディット	
「それじゃあ・・・
[van_tatie_smile]
ねえちゃーん！！カジカジマグロの竜田揚げ５皿ねー！！あとコカトリス肉のサラダ２皿！！あと黄金発泡酒！！ジョッキで！！」[p]
#
#ヴァンディット	
「あーあとベル族牛のサイコロステーキとロマナ豚のトンカツとそれから・・・」[p]
#
[chara_move name="van" left=-100]

[live2d_mod name="rans2" x=0.5]
[rans_exp_mehuse_muzukasii]
[live2d_fadein time=500]


#ランスロット	
「あまり店員に負担をかけるな、ヴァンディット・・・」[p]
#

#ヴァンディット	
「いちいちうるせえなあ、[van_tatie_utagai]商売繁盛なんだからいいじゃねえかよー」[p]
#

[rans_exp_komari]
[rans_head_under_y]

#ランスロット	
「はあ・・・」[p]
#

#&f.name	
（ランスロット・・・あきれてる？こういうところ、珍しいかも・・・）[p]
#
[van_tatie_normal]
[config_false]
[ector_tatie_show]
#エクター	
「ランスロット、シャルドネ・ゾロアのロマナ産ワイン、キープしといたぞ。白でよかったんだな？」[p]
#
[rans_exp_normal_warai]
[rans_body_left_z_half]
[rans_arms_kosinite_right]
#ランスロット	
「ああ、すまないエクター。さすがだ。よくわかっている」[p]
#
[ector_tatie_metoji]
#エクター	
「・・・長い付き合いだからな。まあ、流石にギロチン台にお前がかけられたときにはヒヤッとしたが」[p]
#
[van_tatie_sinpai]
[rans_arms_normal]
[rans_body_right_z_half]
[rans_head_under_y]
[rans_head_right_x]
[rans_exp_mehuse_warai]
#ランスロット	
「エクター・・・お前にも、心配をかけたな・・・すまない」[p]
#


#&f.name	
（ん？あれ？エクターさんって・・・ランスロットの部下・・・だよね？いつもと話し方が・・・）[p]
#
#&f.name	
「あ、あの、エクターさんって・・・」[p]
#

[ector_tatie_normal]
#エクター	
「？」[p]
#
[rans_head_normal]
[rans_body_normal]
[rans_exp_normal_warai]
#ランスロット	
「ああ、流石に違和感があるか。エクターには普段、副官を勤めてもらっているから」[p]
#
[van_tatie_normal]
[ector_tatie_warai]
#エクター	
「勤務中は敬語を使わなければならない。私も慣れるまではずいぶんかかった。何しろ養成学校時代からの友人に敬語を使えというのだから」[p]
#
[rans_body_under_y]
[rans_head_under_y]
[rans_arms_udekumi]
#ランスロット	
「私も当初は・・・笑いを堪えるのが大変だったぞ」[p]
#
[rans_head_normal]
[rans_body_normal]
#エクター	
「それは初耳だ。全く気が付きはしなかったが」[p]
#
#&f.name	
（二人とも、すごく仲がいいんだね）[p]
#


#ヴァンディット	
「いやああでもなあ、
[van_tatie_temae]
ひっさしぶりに王都に来て、驚いたぜ俺は。まさか堅物のこいつが、こーんなかわいい女弟子をとってたなんてよ」[p]
#
#&f.name	
「えっ・・・」[p]
#


[rans_exp_normal]



[ector_tatie_metoji]
#エクター	
「・・・言い方がいやらしいな」[p]
#

[rans_exp_metoji]
#ランスロット	
「全くだ。私は双剣術を教えるために[name]を弟子にとった。それだけだ」[p]
#


[van_tatie_kubinite]
#ヴァンディット	
「『それだけだ』なんだよクールぶって。それは最初だけだろ？
[van_tatie_smile]
今となっちゃあ・・・」[p]
#

#エクター	
「ヴァンディット・・・
[ector_tatie_mehuse]
妄想でおかしな邪推をするものではない」[p]
#

[van_tatie_temae]
#ヴァンディット	
「妄想でもねえし、邪推でもないぜ。なあ、嬢ちゃん？」[p]
#
[rans_exp_mihiraki]
#&f.name	
「えっ・・・えっとその・・・」[p]
#
[rans_exp_yokome]
#&f.name	
（そういえば・・・ヴァンディットさんには色々喋っちゃってるんだった・・・）[p]
#

[rans_arms_normal]
[rans_exp_normal]

#ランスロット	
「[name]・・・ヴァンディットに何か話したのか？」[p]
#
#&f.name	
「あのその・・・あの時はランスロットのこと助けようと必死で・・・」[p]
#

[van_tatie_smile]
#ヴァンディット	
「色々聞かせてもらったぜえ。お前さあ、これから死ぬってときに女に甘えてんじゃねえよ」[p]
#

[rans_exp_mihiraki]

#ランスロット	
「なっ・・・！！？？」[p]
#

[rans_head_under_y]

#エクター	
[ector_tatie_mehuse]
「・・・」[p]
#

#ヴァンディット	
「かっこわりー。
[van_tatie_utagai]
すんげえ格好悪いよなあエクター？」[p]
#

[ector_tatie_metoji]
#エクター	
「・・・反論は、しない」[p]
#

[rans_head_right_x]
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_komari]

#ランスロット	
「エクター・・・・・・・・・」[p]
#

#&f.name	
「ご、ごめんなさいランスロット・・・ごめんなさい・・・」[p]
#

[rans_exp_metoji]
#ランスロット	
「はぁ・・・」[p]
#

[ector_tatie_mehuse]
#エクター	
「だが、ネタを掴んだのをいいことにいじる行為はそれよりももっと見苦しいぞ、ヴァンディット」[p]
#


[van_tatie_temae]
#ヴァンディット	
「えええー？いいじゃねえかよ？これを機に俺が二人の仲立ちをなあ・・・」[p]
#

[rans_exp_ketui]

[rans_body_under_y]
[rans_head_under_y]
#ランスロット	
「結構だ！！いやするな、頼んでもいないことをされるのはかえって迷惑だ」[p]
#

#エクター	
「志は立派だがお前にその役がつとまるとは思えない」[p]
#
[ector_tatie_metoji]
#&f.name	
「あの・・・ふたりの仲立ち・・・って・・・」[p]
#
[rans_exp_normal]
[rans_head_above_y]
[rans_arms_kosinite_right]
[rans_head_right_x]
[rans_head_above_y]
[rans_eyes_right]
#ランスロット	
「あぁその・・・ヴァンディットが勝手に暴走しているだけだ、気にしなくていい」[p]
#
#&f.name	
「はぁ・・・」[p]
#
[rans_head_normal]
[rans_head_left_z]
[rans_eyes_left]
#&f.name	
（なんだか勝手に話が進むけど・・・ヴァンディットさんがいるといつもこうなのかな・・・）[p]
#
#&f.name	
（でも、本当に３人は仲がいいんだね。騎士養成学校時代からの友達って言ってたけど・・・ちょっと気になるな）[p]
#
[rans_head_normal]
[rans_eyes_normal]
#&f.name	
「あの、ランスロット、ヴァンディットさんとエクターさんと知り合ったきっかけって、なんだったの？」[p]
#
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット	
「きっかけか・・・３人とも、養成学校の同期でな・・・これと言ったきっかけは・・・
[rans_exp_yokome]
いや、そうだな・・・」[p]
#
[ector_tatie_normal]
#エクター	
「座学成績、剣術の成績共に常に首位の３人だった」[p]
#
#&f.name	
「えっ・・・ええ！？ヴァンディットさんもですか？」[p]
#
[van_tatie_utagai]
#ヴァンディット	
「嬢ちゃん・・・そりゃどーいう意味だい・・・」[p]
#
[ector_tatie_metoji]
#エクター	
「仕方ないだろう。イメージというものは重要だ」[p]
#
[van_tatie_kubinite]
#ヴァンディット	
「はぁーあ・・・」[p]
#

[rans_exp_mehuse_warai]

#ランスロット	
「そうだな・・・常に３人で争っていたな。懐かしいことだ」[p]
#

[van_tatie_smile]
#ヴァンディット	
「加えて女の人気も首位の３人だったよな！」[p]
#

#エクター	
「そうだったのか？」[p]
#

[rans_exp_normal]

#ランスロット	
「・・・なんだそれは・・・」[p]

[van_tatie_kubinite]
#ヴァンディット	
「そんなかで、俺とエクターが一人の女を取りあってだなあ・・・
[van_tatie_smile]」[p]
#

[ector_tatie_metoji]
#エクター	
「またその話か。よくもまあ自身の情けない話を胸を張って語れるものだ」[p]
#
[rans_eyes_normal]
[rans_arms_normal]
[rans_exp_sinpai]
[rans_head_right_z]
#ランスロット	
「まだ未練があったのか。最初から勝ち目はなさそうに見えたが」[p]
#
[rans_head_normal]
#&f.name
「取りあってた女性の方って・・・」[p]
#
[rans_exp_mehuse]
#ランスロット	
「今はエクターの奥方になっている。秋にふたり目が生まれる予定だ」[p]
#
#&f.name	
「はぁ・・・それはもう、諦めた方が・・・」[p]
#

[van_tatie_utagai]
#ヴァンディット	
「嬢ちゃんまでそんなこと言うのかよ・・・」[p]
#

[ector_tatie_mehuse]

#エクター	
「・・・前も言ったが、早く新しい相手を見つけることだ。それからもっと品のいい物言いを心がけろ」[p]
#

[rans_head_under_y]
[rans_exp_metoji]
#ランスロット	
「それはそうだな・・・」[p]
#

[van_tatie_temae]
#ヴァンディット	
「仕方ねえんだよ、傭兵ん中じゃ舐められることも多い。舐められねえようにしたらどうしてもこうなっちまう」[p]
#
#&f.name	
（ん？そうなってない人もいるような・・・）[p]
#
#&f.name	
「ランスロット、ヴァンディットさん・・・昔からこの口調なのかな？」[p]
#

[rans_exp_normal]
[rans_eyes_right]
[rans_arms_udekumi]
#ランスロット	
「いや以前は違ったんだが・・・朱に交われば赤くなる、と言うことなのかもしれないな・・・」[p]
#
#&f.name	
「そうなんだ・・・」[p]
#
#&f.name	
（丁寧な口調のヴァンディットさんも想像がつかないけど・・・）[p]
#

#店員	
「お待たせしましたー！！」[p]
#

[van_tatie_smile]
#ヴァンディット	
「お！やっと来たか黄金色の発泡酒！！嬢ちゃんすまん、先に頼んじまってたんだが、このジュースでいいか？」[p]
#
#&f.name	
「あっはい、大丈夫です、ありがとうございます」[p]
#
[ector_tatie_warai]
#エクター	
「それでは、乾杯するか。我々の友、ランスロットの無事を祝って」[p]
#
[rans_exp_normal_warai]
[playse storage="clickng_tairakomori.ogg"]
[van_tatie_yasasige]
#ヴァンディット	
「乾杯！！」[p]
#

[live2d_fadeout time=500]
[chara_hide_all]

[live2d_rans_mod_sekkin]
[rans_arms_normal]
[live2d_mod name="rans2" x=0.0]
[rans_exp_mehuse_warai]
[live2d_fadein time=1000]
#ランスロット	
「・・・・・・」[p]
#
#&f.name	
（ランスロット・・・）[p]
#
[fadeoutbgm time=1000]	
[live2d_fadeout time=1000]
	
;騎士団入口、夜

[anten]

[bg storage="kisidaniriguti_tasogare.jpg"]
[live2d_rans_mod_sekkin]
[rans_arms_normal]
[live2d_fadein time=1000]
[rans_head_right_z][rans_body_right_z_half]
[rans_exp_sinpai]
[playbgm storage="omoi_ontama.ogg"]
#ランスロット
「すまなかったな、[name]」[p]
#
#&f.name	
「えっ、どうして？」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_eyes_right]
#ランスロット	
「ヴァンディットが余計なことをベラベラと・・・」[p]
#
#&f.name	
「ううん、私楽しかったよ。ヴァンディットさんにも、エクターさんにもお礼言っておいてね」[p]
#
[rans_eyes_normal]
[rans_exp_normal_warai]
[rans_eyes_left]

#ランスロット	
「あ、ああ・・・」[p]
[rans_eyes_right]
[rans_head_right_x]
[rans_head_left_x]
[rans_eyes_left]

[rans_eyes_normal]
[rans_head_normal]
;#ちょっと言いにくそうに→

[rans_exp_normal]
[rans_eyes_left]
[rans_head_left_z]
#ランスロット	
「そういえば・・・二日後は・・・祝賀会だな。
[rans_head_normal]
[rans_eyes_normal]
出席、するのか？」[p]
#

#&f.name	
「うん、地方騎士団の代表で、ライオネスと一緒だよ」[p]
#

[rans_head_under_y]
[rans_head_left_z]
[rans_exp_yokome]
#ランスロット	
「そ、そうか・・・」[p]
#
[rans_exp_normal]
[rans_eyes_right]
[rans_head_right_x]
[rans_head_under_y]
#&f.name	
（・・・ん？）[p]
#
[rans_head_normal]
[rans_exp_metoji]
#ランスロット	
「私も、アニス副団長とともに父上の供として出ることになっている」[p]
#
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「当日・・・お前に会えるのを、楽しみにしている。
[rans_exp_bisyo]
[rans_eyes_right]
[rans_eyes_normal]
[w]・・・ドレスも」[p]
#
#&f.name	
（・・・今ドレスもって言った？）[p]
#
#&f.name	
（あ、そういえば）[p]
#
[fadeoutbgm time=1000]
#&f.name	
「その・・・ウェルム団長とは・・・どうなってるの、何か、立場悪くなったりとか・・・」[p]
#

[rans_head_under_y]
[rans_exp_metoji]
#ランスロット	
「問題ない。私のほうは・・・全く気にしていないと言うわけではないのだが・・・」[p]
#
[rans_unaduki]
[rans_exp_mehuse]
#ランスロット	
「父上も今まで通りに接してくれている。内心はわからないが」[p]
#

#&f.name	
「そっか・・・とりあえず、安心なのかな・・・」[p]
#
[rans_exp_normal]
[rans_unaduki]
[rans_eyes_right]
[rans_body_right_z_half]
#ランスロット	
「父上も悪事を働いたわけではない。私が王宮騎士としての掟を破っただけの話だから・・・」[p]
#
#&f.name	
「ランスロット・・・」[p]
#
[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_mehuse]
#ランスロット	
「父上の考えと、私の考えは違う。おそらく、そう言うことなのだろうな・・・」[p]
#
#&f.name	
「でも、私はランスロットが・・・正しいと思うよ・・・」[p]
#
[rans_unaduki]
[rans_exp_normal]
#&f.name	
「王都の人たちだって、だから署名を集めてくれたんだよ・・・絶対、そうだよ」[p]
#
[rans_head_right_x]
[rans_body_right_z_half]
[rans_eyes_right]
[rans_exp_sinpai]
#ランスロット	
「[name]・・・。そうだな・・・。
[rans_exp_metoji]
ああ・・・・・・そうだと、いい」[p]
#

[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_unaduki]
[rans_exp_normal_warai]
#ランスロット	
「・・・ありがとう、[name]」[p]
#
#&f.name	
「うん」[p]
#
[rans_unaduki]
[rans_exp_mehuse_warai]
#ランスロット	
「・・・・・・。・・・それじゃあな、おやすみ」[p]
#
[rans_unaduki]
[rans_head_right_z]
[rans_exp_bisyo]
#&f.name	
「おやすみなさい」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]

#&f.name	
（・・・・・ランスロット・・・・・・）[p]
#
[fadeoutbgm time=1000]
[jump storage="scenario_2/status_macro_macro.ks" target=*saikai_shokuji_re]

[endmacro]

[macro name="rans_kouryaku_end"]
[message_settei_ad]
#&f.name
「そういえば・・・ランスロット、どうなったのかな・・・」[p]
#

#&f.name
「全然音沙汰ないけど・・・」[p]
#
#&f.name
「まだ、刑は執行されてない、よね、多分・・・」[p]
#


;ノック
[playse storage="nokku_tairakomori.ogg"]
[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「おい聞いたか」[p]
#
#&f.name
「え？」[p]
#

[lioness_tatie_udekumi]
#ライオネス
「釈放だってよ、兄貴」[p]
#
#&f.name
「ど、どうして？」[p]
#


#ライオネス
「なんでも、ラルズ宰相の娘のユリア王女が、兄貴を助けるよう恩赦を陛下に願い出たらしい」[p]
#
#&f.name
「ユリア王女って・・・」[p]
#

[lioness_tatie_kosinite]
#ライオネス
「国王陛下の弟のラルズ宰相、その娘の言ってみりゃ、お姫さんだな」[p]
#


[lioness_tatie_akireru]
#ライオネス
「わがままな上に結構惚れっぽくて、面食いだって話があってよ、どうも兄貴もそのお気に入りの一人だったらしい」[p]
#

#&f.name
「そう、なんだ・・・でも、命は助かったんだね？」[p]
#

[lioness_tatie_yareyare]
#ライオネス
「まあそりゃそうだが・・・兄貴のやつ、アレじゃあ一生あのお姫様に逆らえねえな」[p]
#

#ライオネス
「あいつにとって、良かったんだかどうなんだか・・・」[p]
#

#&f.name
（ランスロット・・・）[p]
#

[lioness_tatie_normal]
#ライオネス
「あの高飛車なクソ女、早速自分だけを護衛しろだのなんだの言って、四六時中兄貴にべったりらしいぜ」[p]
#

#&f.name
「そ、そうなんだ・・・（クソ女・・・）」[p]
#

[lioness_tatie_otikomi]
#ライオネス
「命は助かっても、あんな生活、俺だったらごめんだぜ・・・」[p]
#

#&f.name
「・・・・・・」[p]
#

#&f.name
（でも・・・生きててくれるだけでも、いいよね・・・死刑にならなかっただけでも・・・）[p]
#

#&f.name
（ユリアさんには、感謝しなくちゃなのかな・・・）[p]
#
[chara_hide_all][chara_off]


ランスロットが攻略ルートから外れました[p]
#
[eval exp="f.event_epi5_rans_ok=-1"]
[eval exp="f.event_rans_search_yes=0"]
[endmacro]

[return]
	
	



