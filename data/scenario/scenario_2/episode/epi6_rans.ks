;#ランスロット

[eval exp="f.rans_rei=1"]
[live2d_rans_touroku]
[live2d_rans_show]
[rans_body_right_z_half]
[rans_arms_kosinite_left]
[rans_exp_normal_warai]
[live2d_fadein time=1000]
#ランスロット	
「[name]、探したぞ」[p]
#

		
#&f.name	
「えっ・・・あ、ランスロット」[p]
#
[rans_body_normal]
[rans_eyes_left]
[rans_body_left_z]
[rans_head_left_x]
[rans_head_left_z]
		
#ランスロット	
「いつもは・・・お前のことはすぐ見つけられるんだが・・・」[p]
#
[rans_body_normal]
[rans_arms_normal]
[rans_body_right_x_half]
[rans_body_right_z_half]
[rans_head_normal]
[rans_head_right_x]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
		
#ランスロット	
「今日は・・・あまりに変わっているから、気づくのが遅れた」[p]
#

		
#&f.name	
「変わっている・・・って、どういうこと？」[p]
#
[rans_mod_idle]
[rans_arms_normal]
[rans_head_normal]
[rans_body_normal]
[rans_exp_normal]		
#ランスロット	
「・・・・・・」[p]
#

[live2d_fadeout time=1000]


[playse storage="walkhibiku_onjin.ogg"]
[live2d_rans_mod_sekkin]
[live2d_fadein time=1000]
[stopse]

;接近		
#&f.name	
「ランスロット・・・？」[p]
#
[rans_body_left_z]
[rans_head_left_x]
[rans_head_above_y]
[rans_head_left_z]
[rans_eyes_left]
[rans_exp_komari_warai]
		
#ランスロット	
「・・・ありきたりな言葉を口にするのは気が引けるが・・・」[p]
#

[rans_head_normal]	
[rans_body_normal]
[rans_eyes_normal]
[rans_exp_bisyo]	
#ランスロット	
「・・・きれいだ。
[rans_head_right_z]
それしか、言えないな・・・」[p]
#

[if exp="f.dress_cute==1"]
#ランスロット	
「・・・よく似合っている。本当に」[p]
#
[rans]
[koukando_up]
[endif]

[rans_body_right_x_half]
[rans_head_right_x]
[rans_head_under_y]	
[rans_eyes_right_under]
#&f.name	
「えっ・・・えっと・・・でも、おかしく、ないかな・・・

[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
[rans_exp_normal]
初めてだし」[p]
#

[rans_head_left_z]
[rans_body_under_y]	
[rans_body_normal]
[rans_exp_normal_warai]	
#ランスロット	
「おかしいところを見つける方が、難しいぞ？」[p]
#

[rans_head_under_y]
[rans_exp_mehuse_warai]	
#&f.name	
「それって・・・」[p]
#

[rans_head_normal]
[rans_exp_normal]	
#ランスロット	
「・・・[name]」[p]
#


[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_body_under_y]
[rans_exp_mehuse]		
#&f.name	
（えっ）[p]
#

		
#ランスロット	
「・・・私めのリードでよろしければ・・・一曲、お願いしてもよろしいですか」[p]
#

		
#&f.name	
「ら、ランスロット・・・どうしたの・・・」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]		
#ランスロット	
「どうか、ご許可を」[p]
#

		
#&f.name	
「そ、そんなの・・・」[p]
#

		
#&f.name	
（ランスロット・・・どうしたんだろう・・・）[p]
#

[jump storage="scenario_2/sentaku.ks" target=*rans_dance_sel]
		


*dance_no


[rans_exp_mehuse]
[rans_head_normal]
[rans_body_normal]
[live2d_fadein time=1000]
#ランスロット	
「・・・そうか・・・
[rans_exp_metoji]
それは残念だ」[p]
#

[rans_mod_idle]	
[rans_exp_normal]	
#&f.name	
「ら、ランスロット、ごめんなさい・・・」[p]
#

[rans_head_right_z]
[rans_body_right_x_half]
[rans_exp_yokome_warai]	
#ランスロット	
「・・・気にするな。
[rans_exp_mehuse_warai]
そうだな、
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_left_x]
[rans_head_above_y]
[rans_body_left_x_half]
[rans_eyes_left]

私とだと、指導されているような気分になってしまうか」[p]
#

		
#&f.name	
「う、ううん、そういうわけじゃ・・・」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_exp_komari_warai]	
[rans_eyes_normal]	
#ランスロット	
「そう言ってくれるなら、幾らかは救われるな・・・」[p]
#

[rans_exp_normal]
[rans_head_normal]

#ランスロット	
「それでは、私は警備の仕事に戻る」[p]
#


[rans_exp_normal_warai]
[rans_eyes_left]
[rans_head_left_z]
[rans_head_normal]	
[rans_eyes_normal]	
#ランスロット	
「ハメを外すことのないようにな」[p]
#

		
#&f.name	
「そ、そんなことしないよ！」[p]
#

[rans_exp_bisyo]	
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「ハハッ、じゃあな」[p]
#

[live2d_fadeout time=1000]		
#&f.name	
（ランスロット・・・仕事中なのにわざわざ・・・悪いことしちゃったかな）[p]
#


[jump target=*rans_end]		
			

*dance_ok
[eval exp="f.event_main_15_dance_rans_sumi=1"]	
[live2d_fadein time=1000]
[rans_mod_idle]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	
「・・・ありがとうございます」
[rans_head_right_z]
[rans_head_normal]
[p]
#

		
#&f.name	
「あの、ランスロット、どうしたの？そんな、
[rans_exp_normal]
言葉で・・・」[p]
#

[rans_exp_mehuse]	
#ランスロット	
「・・・貴婦人に対しては丁寧に接するのが、当然というものだろう」[p]
#

[rans_exp_normal]	
#&f.name	
「き、貴婦人って、私そんなじゃ・・・」[p]
#

[rans_exp_bisyo]		
#ランスロット	
「もっと自信を持っていい。
[rans_exp_normal]
[rans_head_left_x]
[rans_body_left_x_half]
[rans_head_right_z]
[rans_head_under_y]
[rans_eyes_left]
先ほどから、他の男たちの視線が痛くてな・・・私も冷や冷やしている」[p]
#
		
#&f.name	
「えっ・・・そ、そうなの・・・
[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
」[p]
#

[rans_head_right_z]
[rans_head_under_y]
[rans_body_left_x_half]
[rans_exp_mehuse_warai]
		
#ランスロット	
「お前のことだから、気づいていなかったのかもしれないな」[p]
#

[rans_mod_idle_no_move_metoji]	
[rans_exp_metoji]	
#ランスロット	
「・・・だからと言って・・・渡すつもりもないが」[p]
#

		
#&f.name	
「えっ」
[rans_mod_idle]
[rans_head_normal]
[rans_body_normal]
[rans_head_right_z]
[rans_exp_bisyo]
[p]
#
[rans_body_left_z_half]
[rans_head_left_z]	

#ランスロット	
「・・・さあ、お手をどうぞ」[p]
#
[rans_body_normal]
[rans_head_normal]
[rans_body_under_y]
[playbgm storage="butou_ontama.ogg"]	
#&f.name	
「え、えっと・・・はい」
[live2d_fadeout time=1000]
[p]
#
		
#&f.name	
（・・・なんだか恥ずかしいなあ・・・）[p]
#

		
#&f.name	
「えっ」[p]
#
[live2d_mod name="rans3" y=-5.9 x=0.0 scale=11.5]
[rans_exp_normal_warai]
[rans_head_normal]
[rans_body_normal]
[playse storage="hukukosure_onjin.ogg"]	
[live2d_fadein time=1000]	
#&f.name	
（！？）[p]
#

		
;ランス接近		
#&f.name	
「ちょ・・・ちょっと・・・ランスロット・・・」[p]
#

[rans_head_left_x]
[rans_eyes_left]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_bisyo]		
#&f.name	
（ち・・・近い・・・んじゃ）[p]
#

[rans_head_left_z]
[rans_exp_normal]		
#ランスロット	
「なんだ？」[p]
#
[rans_head_normal]
		
#&f.name	
「あの・・・ちょっと・・・近すぎない・・・？」[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[rans_eyes_left]		
#ランスロット	
「これが普通だろう。お前にはちゃんと教えたはずだが」[p]
#

[rans_mod_idle]
[rans_exp_normal]
[rans_eyes_normal]
		
#&f.name	
（えっ・・・そ・・・そうだったのかな・・・）[p]
#

[rans_head_right_z]
[rans_head_above_y]
[rans_eyes_right]		
#&f.name	
「で・・・でも・・・は、恥ずかしいよ・・・」[p]
#

		
#&f.name	
（こんな・・・近くに・・・
[rans_head_normal]
[rans_eyes_normal]
まるで・・・抱きしめられてるみたい・・・）[p]
#

		
#ランスロット	
「私とこうしているのは・・・嫌か」[p]
#

		
#&f.name	
「えっ・・・」[p]
#

[rans_head_left_z]
[rans_exp_sinpai]		
#ランスロット	
「[name]・・・」[p]
#

[camera time="500" x="0" y="-5" zoom="1.2"]		
[playse storage="huku_koukaonlabo.ogg"]	
[rans_mod_idle_no_move_mehuse]	
[rans_exp_mehuse]
#&f.name	
（腰に回った手が・・・強くて・・・意識しちゃう・・・）[p]
#

[fadeoutbgm time=3000]		
#&f.name	
（どうして・・・私・・・相手は・・・ずっと知ってる、剣の先生なのに・・・）[p]
#

[rans_mod_idle_no_move_metoji]	
[rans_exp_metoji]	
#&f.name	
（そうだよ・・・ランスロットは・・・先生で・・・のはず、なのに・・・）[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_head_right_x]	
[rans_exp_sinpai]
#ランスロット	
「手放したくないと思うのは・・・何故なんだろうな・・・」[p]
#

		
#&f.name	
「ランスロット」[p]
#

[rans_head_normal]
[rans_eyes_normal]
[rans_exp_mehuse]

[playbgm storage="omoi_ontama.ogg"]		
#ランスロット	
「お前のその肌に・・・誰にも触れさせたくないと・・・思ってしまうのは・・・」[p]
#

[rans_head_under_y]
[rans_exp_metoji]		
#ランスロット	
「肌だけではない、全部が・・・」[p]
#
[rans_mod_idle]
[rans_exp_ketui]
		
#&f.name	
「・・・！」[p]
#

[rans_head_right_x]
[rans_head_left_x]
[rans_body_left_x]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_muzukasii]	
[rans_head_under_y]	
#ランスロット	
「・・・っ、すまない・・・少し、どうかしている」[p]
#

[rans_mod_idle]
[rans_body_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_sinpai]		
#ランスロット	
「お前が、そんな姿をしているせいだな」[p]
#

		
#&f.name	
「私のせいだっていうの？」[p]
#
[rans_head_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]		
#ランスロット	
「そんな無防備な顔とそんな格好で・・・私に何もするなと？」[p]
#

[rans_mod_idle]
[rans_exp_normal]
[w]
[camera time="500" x="0" y="0" zoom="1.6"]
[playse storage="dakituku_onjin.ogg"]
[live2d_fadeout time=50]
[bg storage="black.png" time="50"]
#&f.name	
「あっ・・・」[p]
#
[reset_camera]
[playse storage="huku_koukaonlabo.ogg"]		
#ランスロット	
「到底・・・不可能な話だ」[p]
#

		
#&f.name	
（と、吐息が・・・首に・・・）[p]
#

		
#ランスロット	
「・・・今夜のことは・・・これ限りで忘れてもいい・・・。もしお前が・・・私を拒まないというのなら・・・」[p]
#

		
#&f.name	
「・・・ランスロット・・・」[p]
#

		
#&f.name	
（どうしてだろう。いつもより・・・声も・・・低くて・・・）[p]
#

		
#&f.name	
（でも・・・）[p]
#


[bg storage="oukyuu_hall_2_tasogare.jpg"]
[live2d_fadein time=1000]
#&f.name	
「ら、ランスロットは・・・剣の、先生だよね？ずっと小さい頃から、知ってて・・・私にいろんなこと、教えてくれて・・・」[p]
#

[rans_mod_idle_no_move_mehuse]	
[rans_exp_mehuse]	
#ランスロット	
「[name]・・・」[p]
#

[rans_head_under_y]
[rans_head_right_x]
[rans_exp_sinpai]		
#&f.name	
「その、はずだよね・・・なのに、私・・・」[p]
#

[rans_mod_idle]
[rans_head_normal]	
[rans_exp_normal]	
#&f.name	
（こんな、気持ち・・・）[p]
#

[rans_eyes_right]		
#&f.name	
「せ、先生・・・なのに・・・私は、弟子で・・・」[p]
#

[rans_eyes_normal]		
#ランスロット	
「今・・・それは必要か？」[p]
#

		
#&f.name	
「え・・・」[p]
#

[rans_head_under_y]
[rans_head_right_z]
[rans_exp_komari]		
#ランスロット	
「・・・今・・・ここで、必要なことか・・・？」
[rans_head_left_z]
[rans_exp_sinpai]
[p]
#

[rans_head_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]		
#&f.name	
（ランスロット・・・私・・・）[p]
#

[rans_mod_idle]
[rans_exp_normal]		
#ランスロット	
「・・・[name]・・・」
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[p]
#
[live2d_fadeout time=1000]
[anten]
[wait time=3000]		
[fadeoutbgm time=3000]			

[bg storage="oukyuu_hall_2_tasogare.jpg"]		
#&f.name	
（まだ・・・ドキドキしてる・・・）[p]
#
[live2d_rans_mod_sekkin]
[rans_head_normal]
[rans_body_normal]
[rans_head_under_y]
[live2d_fadein time=1000]
		
#ランスロット	
「仕事の合間でなければ・・・」[p]
#

		
#&f.name	
「え？」[p]
#

[rans_body_right_x_half]
[rans_head_right_x]
[rans_eyes_right]	
#ランスロット	
「いや・・・なんでもないんだ」[p]
#
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]		
#ランスロット	
「・・・それでは、私は警備に戻る。じゃあな」[p]
#
		
#&f.name	
「お仕事、頑張ってね」[p]
#
[rans_exp_bisyo]
[rans_head_under_y]
[rans_head_normal]
[w]
[live2d_fadeout time=1000]

*rans_end	
[live2d_delete_all]	[live2d_off]
[fadeoutbgm time=1000]
;ランス微笑のち立ち去る	
[jump storage="scenario_2/episode/epi6.ks" target=*act_sel]






[rans_head_normal]
[rans_body_normal]
[rans_mod_idle]
[rans_exp_normal]
[rans_eyes_normal]		
#ランスロット	
「・・・そうだ、お前・・・明日は空いているか？」[p]
#

		
#&f.name	
「え、う、うん、お休み、もらってるけど・・・」[p]
#
[rans_body_right_x_half]
[rans_head_right_x]
[rans_head_normal]
[rans_exp_bisyo]		
#ランスロット	
「もしよかったら、明日二人で出かけないか」[p]
#

[rans_body_normal]	
#&f.name	
「二人で・・・」[p]
#

[rans_exp_normal_warai]		
#ランスロット	
「どうだ？」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*rans_dance_sel_2]		

*date_no

[live2d_fadein time=1000]
[rans_exp_mehuse]
#ランスロット	
「そうか、わかった。
[rans_exp_normal_warai]
それでは仕方ない」[p]
#

		
#&f.name	
「ごめんね、せっかく誘ってくれたのに」[p]
#

[rans_head_under_y]
[rans_head_normal]		
#ランスロット	
「気にするな。それでは、私は警備に戻る。じゃあな」[p]
#
[live2d_fadeout time=1000]
		
#&f.name	
（悪いことしちゃったかな・・・）[p]
#

[jump target=*rans_end]
		
			
*date_ok

[eval exp="f.event_main_15_date_rans=1"]
[live2d_fadein time=1000]
[rans_exp_bisyo]
#ランスロット	
「そうか・・・よかった」[p]
#

[rans_head_under_y]
[rans_exp_mehuse_warai]	
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「それなら明日、お前の部屋まで迎えに行く」[p]
#

		
#&f.name	
「うん、待ってるね！」[p]
#

[rans_head_right_z]
[rans_eyes_right]

#ランスロット	
「ああ、楽しみだ。
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal_warai]
それじゃ、またな」[p]
#
