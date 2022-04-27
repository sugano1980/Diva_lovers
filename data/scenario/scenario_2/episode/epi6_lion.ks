;#ライオネス		
	
[live2d_lion2_touroku]

#？	
「そちらの可愛らしいお嬢さん」[p]
#

		
#&f.name	
（・・・ん？）[p]
#

		
#男
「一曲、お相手願えますかな」[p]
#

		
#&f.name	
「あ、あの・・・」[p]
#

		
#&f.name	
（これは・・・一緒に踊ってくれってこと、だよね・・・どうしよ・・・）[p]
#

		
#&f.name	
「え、ええと・・・」[p]
#

[live2d_lion2_show]
[live2d_fadein time=1000]
[lioness2_mod_idle_no_move]
		
#ライオネス	
「わりいな、俺が先約なんだ」[p]
#

		
#&f.name	
「えっ・・・ライオネス！」[p]
#

		
#男
「なんですか貴方は・・・先に声をかけたのは私ですよ」[p]
#


[lioness2_arms_udekumi]	
[lioness2_head_under_y]
[lioness2_eyes_above]	
#ライオネス	
「俺はこいつのエスコートできてる。俺の後にしろ」[p]
#

		
#男
「・・・っ」[p]
#

		
#&f.name	
（確かにダンスの相手は、エスコート役が先・・・だけど）[p]
#

[lioness2_arms_normal]
[lioness2_head_left_x]
[lioness2_eyes_normal]	
[lioness2_eyes_left]
[lioness2_arms_kosinite_right]	
#ライオネス	
「行くぞ」[p]
#

[live2d_fadeout time=1000]

[playse storage="walkhibiku_onjin.ogg"]
#&f.name	
「ちょ、ちょっと・・・」[p]
#



[stopse]
[lioness2_face_ha]
[lioness2_head_normal]
[live2d_fadein time=1000]
#ライオネス	
「なんだよお前、あいつと踊りたかったのか？」[p]
#


		
#&f.name	
「そ、そういうわけじゃ・・・」[p]
#

[lioness2_head_under_y]
[lioness2_head_normal]	
[lioness2_face_normal]	
#ライオネス	
「じゃあいいだろ」[p]
#

		
#&f.name	
（強引だなあ・・・）[p]
#


[lioness2_face_mehuse_dai]		
#ライオネス	
「それとも・・・俺とは嫌か？」[p]
#


[jump storage="scenario_2/sentaku.ks" target=*lion_dance_sel]	


*dance_no	
[live2d_fadein time=1000]	
[lioness2_face_yokome_otikomi]
#ライオネス	
「・・・そっか、悪いな、無理やり」[p]
#

		
#&f.name	
「う、ううん、でもさっき助けてくれたし・・・
[lioness2_face_normal]
ありがとう」[p]
#

[lioness2_face_normal]
[lioness2_eyes_left]	
#ライオネス	
「いや・・・なんか気に入らなかっただけだしよ。

[lioness2_head_under_y]
[lioness2_head_normal]
[lioness2_face_normal_warai]
それじゃ、また俺食事してくるわ」[p]
#

		
#&f.name	
「うん」[p]
#
[live2d_fadeout time=1000]
[jump target=*lion_end]		
			
;嫌じゃないよ
*dance_ok
[eval exp="f.event_main_15_dance_lion_sumi=1"]
[live2d_fadein time=1000]
[lioness2_arms_normal]
[lioness2_head_normal]
[lioness2_face_normal]

#&f.name	
「嫌じゃない・・・けど、踊るのは得意じゃないし・・・」[p]
#

[lioness2_face_ha]
[lioness2_arms_kosinite_left]		
#ライオネス	
「なんだお前、ちゃんと習ってきたんじゃねえのかよ」[p]
#

		
#&f.name	
「そ、それはそうだけど・・・自信ないっていうか」

[lioness2_arms_normal]
[lioness2_face_mehuse_dai]
[p]
#

[lioness2_head_normal]
[lioness2_face_metoji]		
#ライオネス	
「・・・俺に合わせてりゃいい」[p]
#

[lioness2_face_normal]		
#&f.name	
「・・・ライオネス」[p]
#

[lioness2_eyes_above]		
#ライオネス	
「リードしてやるから」[p]
#

[playbgm storage="butou_ontama.ogg"]		
#&f.name	
「えっ」
[live2d_fadeout time=1000]
[lioness2_eyes_normal]
[live2d_lion2_mod_sekkin]
[p]
#


		

[live2d_fadein time=1000]			
#&f.name	
「あっあの・・・」[p]
#


[lioness2_arms_right_x]
[lioness2_face_akireru]		
#ライオネス	
「お前のことだから、そんな靴じゃフラフラしてんだろ」[p]
#

		
#&f.name	
「す、少しくらい大丈夫だよ」[p]
#

[lioness2_face_wakewakaran]		
#ライオネス	
「本当かあ？」[p]
#

		
#&f.name	
「もう！」
[lioness2_face_warai]
[p]
#

[lioness2_head_right_z]		
#ライオネス	
「・・・ほら、もう少し、こっちこい」[p]
#


[live2d_fadeout time=1000]
[live2d_mod name="lioness2" y=-3.9 scale=7.7]
[lioness2_mod_idle]	
[live2d_fadein time=1000]	
[playse storage="hukukosure_onjin.ogg"]
#&f.name	
（こ、腰に手・・）
[p]
#
[lioness2_face_normal]
[lioness2_face_tere]
[lioness2_head_right_x]		
[lioness2_eyes_right]
#ライオネス	
「あ、あんま反応すんな・・・こっちもはずくなる」[p]
#

[lioness2_head_left_x]
[lioness2_eyes_left]		
#&f.name	
「だ、だって・・・」[p]
#

		
#&f.name	
（相手がライオネスだからかな・・・なんだかすごく恥ずかしい）[p]
#

		
#&f.name	
（ドキドキしてるのって・・・恥ずかしいから・・・だよね）[p]
#

[if exp="f.dress_pure==1"]
[lioness2_head_normal]
[lioness2_eyes_normal]
[lioness2_face_otikomi]
#ライオネス	
「・・・女物の服なんか・・・興味なかったけどよ・・・」[p]
#
[lioness2_face_normal_warai]
#ライオネス	
「・・・でも・・・なんか、いいなそれ」[p]
#
[lioness2_head_under_y]
[lioness2_head_normal]
[lioness2_face_warai]
#ライオネス	
「俺は好きだ」[p]
#
[lion]
[koukando_up]
[endif]
[lioness2_face_normal]
[lioness2_face_mehuse_dai]		
#ライオネス	
「・・・ちゃんと、練習したろうが」[p]
#
[lioness2_face_normal]

		
#&f.name	
「そ、それはそうだけど、あの時は講師の先生もいたし・・・」
[lioness2_eyes_left]
[p]
#

[lioness2_eyes_normal]		
#&f.name	
（でも今は・・・）[p]
#

		
#ライオネス	
「・・・」[p]
#

		
#&f.name	
（ライオネス・・・どうしてそんな、真剣な顔・・・）[p]
#

[stopbgm]
[quake count="2" time="200" hmax="10" vmax="10"]		
#&f.name	
「っ・・・ひゃっ」[p]
#

		
#&f.name	
（こ、転ぶっ）[p]
#

[live2d_fadeout time=50]		
;SEドサッ	
[quake count="5" time="300" hmax="10" vmax="60"]
[playse storage="taorekomu_koukaonlabo.ogg"]	
#&f.name	
「あ・・・」[p]
#


[lioness2_face_mehuse_dai]	
[live2d_fadein time=1000]	
#ライオネス	
「お前はいつも・・・見てられねえ・・・昔っから」[p]
#

[lioness2_eyes_left]		
#ライオネス	
「今もそうやってフラフラして・・・危なっかしいったらありゃしねえ」[p]
#

		
#&f.name	
「ちょ、そ、そんなこと・・・！今は靴が・・・！」[p]
#

[lioness2_face_sinnpai]	
[lioness2_eyes_normal]
#ライオネス	
「自分で思ってるだけじゃねえのか？・・・お前・・・本当に大丈夫か」[p]
#
[playbgm storage="rakuyou_ontama.ogg"]
[lioness2_eyes_under]
[lioness2_face_mehuse_dai]		
#&f.name	
「え・・・どういう・・・意味・・・」[p]
#

[lioness2_eyes_normal]
[lioness2_face_sinnpai]	
#ライオネス	
「頑張るのはいいけど・・・あんま無理すんな。疲れた時は・・・俺が支えてやるから」[p]
#

[lioness2_face_metoji]		
#ライオネス	
「俺はいつでも、お前の隣にいる。
[lioness2_face_normal]
・・・お前がそう、望んでんだったら」[p]
#

[lioness2_eyes_left]
[lioness2_head_left_z]
#ライオネス	
「いつだって隣にいて・・・支える。

[lioness2_head_normal][lioness2_eyes_normal]
だから遠慮なく、俺に寄っかかってろ」[p]
#


	
#&f.name	
「ら、ライオネス・・・」[p]
#

[lioness2_head_left_x]
[lioness2_head_under_y]
[lioness2_eyes_left_under]	
#ライオネス	
「悪いなんて・・・思うことねえからな。俺がそうしてえんだ・・・」[p]
#

		
#&f.name	
「ライオネス・・・私」[p]
#

[lioness2_eyes_right_above]
[lioness2_head_right_x]
[lioness2_head_above_y]
		
#ライオネス	
「・・・兄貴に比べりゃ・・・力不足かもしれねえけどよ・・・」[p]
#

		
#&f.name	
「どうして今、ランスロットのこと出すの？」[p]
#

[lioness2_head_normal]
[lioness2_face_sinnpai]	
[lioness2_eyes_normal]	
#ライオネス	
「[name]・・・だってお前」[p]
#

[lioness2_face_yokome_otikomi]		
#&f.name	
「今は・・・関係ないよ」
[p]
#
[lioness2_eyes_normal]
[lioness2_face_normal]		
#ライオネス	
「・・・[name]」[p]
#

[live2d_fadeout time=1000]		
;暗転
[anten]		
#&f.name	
（そうだよ・・・ライオネスはいつも・・・私の隣にいて・・・でも）[p]
#

		
#&f.name	
（私それが当たり前だって思ってて、意識、してなかったのかな）[p]
#

		
#&f.name	
（ライオネス・・・いつもこんな気持ちで、いてくれてたんだね・・・）[p]
#

[fadeoutbgm time=3000]
		
;暗転解除
[bg storage="oukyuu_hall_2_tasogare.jpg"]
[lioness2_face_normal]
[live2d_fadein time=1000]		
#&f.name	
「ライオネス・・・ありがとう」[p]
#


[lioness2_head_right_x]	
[lioness2_head_under_y]
#ライオネス	
「別に・・・大したことじゃねえだろ。ダンスくらい」[p]
#

		
#&f.name	
「ううん、そうじゃなくて」[p]
#

[lioness2_head_normal]		
#ライオネス	
「？」[p]
#

		
#&f.name	
（ライオネス・・・）[p]
#
[lioness2_mod_idle]
[lioness2_face_odoroki_sekimen]	


[lioness2_head_under_y]		
[lioness2_head_normal]
[lioness2_face_normal]
[lioness2_eyes_right]
#ライオネス	
「そ、そんじゃ俺、また食ってくるわ」[p]
#

		
#&f.name	
「食べすぎないようにね！」[p]
#
[lioness2_eyes_normal]
[lioness2_face_normal_warai]
[lioness2_head_under_y]		
[lioness2_head_normal]		
#ライオネス	
「おう！」[p]
#
[live2d_fadeout time=1000]

[jump target=*lion_end]		

*lion_end

[live2d_delete_all][live2d_off]
[jump storage="scenario_2/episode/epi6.ks" target=*next_2]



#ライオネス	
「あっ・・・あのよ、

[lioness2_head_right_x]
[lioness2_face_tere]
それで、[name]」[p]
#

		
#&f.name	
「ん？」[p]
#

[lioness2_face_normal]		
#ライオネス	
「俺ら・・・明日休みだろ？」[p]
#

		
#&f.name	
（そういえば・・・）[p]
#

[lioness2_arms_poripori]
[lioness2_face_normal]	
[lioness2_eyes_right]	
#ライオネス	
「もしよかったら・・・どっか出かけねえか・・・二人で」[p]
#
[lioness2_arms_normal]
		
#&f.name	
「え、えっと・・・」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*lion_dance_sel_2]		

*date_no

[live2d_fadein time=1000]
[lioness2_eyes_normal]
[lioness2_face_normal]
[lioness2_arms_normal]

#ライオネス	
「そっか。わーった。いきなり悪かったな」[p]
#

		
#&f.name	
「ううん・・・こっちこそごめんね」[p]
#

[lioness2_head_under_y]		
[lioness2_head_normal]
[lioness2_face_normal_warai]
#ライオネス	
「そんじゃ俺、また食ってくるわ」[p]
#

		
#&f.name	
「食べすぎないようにね！」[p]
#

[lioness2_head_under_y]		
[lioness2_head_normal]		
#ライオネス	
「おう！」[p]
#
[live2d_fadeout time=1000]

[jump target=*lion_end]		
			
*date_ok
[eval exp="f.event_main_15_date_lion=1"]
[live2d_fadein time=1000]
[lioness2_eyes_normal]	
[lioness2_arms_normal]
[lioness2_face_odoroki]
#ライオネス	
「ほ、本当か」[p]
#

		
#&f.name	
「？うん」

[lioness2_face_tere]
[p]
#

[lioness2_head_right_x]
[lioness2_head_left_x]	
[lioness2_head_under_y]	
#ライオネス	
「そ、そっか。それじゃあ・・・
[lioness2_head_normal]
明日の朝、部屋まで迎え行く」[p]
#

		
#&f.name	
「うん、ありがとう。楽しみにしてるね」[p]
#
[lioness2_face_odoroki_sekimen]
[lioness2_face_warai]		
#ライオネス	
「お、おう」[p]
#
[live2d_fadeout time=1000]
		