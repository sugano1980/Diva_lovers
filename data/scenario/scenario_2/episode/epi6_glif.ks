
[live2d_glif_rei_touroku]
#&f.name	
「・・・？」[p]
#				


[live2d_glif_rei_show]
[glif_rei_head_left_z]
[glif_rei_exp_normal_warai]
#グリフ	
「今晩わ、[name]さん」[p]
#

[glif_rei_head_normal]		
#&f.name	
「あ、グリフ！！今晩わ」[p]
#

		
#&f.name	
「グリフも出席してたんだね」
[glif_rei_exp_yokome_warai]
[p]
#


[glif_rei_head_right_x]
[glif_rei_head_under_y]
[glif_rei_eyes_right]	
[glif_rei_eyes_under]	
#グリフ	
「え・・・ええ、まあ僕は、警備の仕事も兼ねてますが・・・」[p]
#

	
#&f.name	
「そっか。グリフは王宮騎士だもんね」[p]
#

[glif_rei_exp_mehuse]		
#グリフ	
「え・・・ええ・・・」[p]
#
[glif_rei_exp_mehuse]

[glif_rei_head_normal]
[glif_rei_eyes_normal]
[glif_rei_exp_normal]	
#グリフ	
「・・・・・・・・」[p]
#


[glif_rei_head_left_x]
[glif_rei_head_under_y]
[glif_rei_exp_komari]
[glif_rei_eyes_left]
[glif_rei_eyes_under]
#グリフ	
「・・・・・・・」[p]
#

		
#&f.name	
「・・・？グリフ？どうしたの？」[p]
#

[glif_rei_eyes_right]
[glif_rei_eyes_left]		
#グリフ	
「い、いやその・・・」[p]
#

		
#&f.name	
（？）[p]
#

[glif_rei_exp_mehuse]		
#グリフ	
「いつもと・・・すごく違って、いらっしゃるので・・・」[p]
#

		
#&f.name	
「あっ・・・このドレス・・・おかしい、かな・・・」
[glif_rei_eyes_normal]
[glif_rei_head_normal]
[glif_rei_exp_mihiraki]

[p]
#


#グリフ	
「と、とんでもないです！！」[p]
#

		
#&f.name	
「えっ」
[glif_rei_eyes_right]
[glif_rei_exp_komari]
[p]
#


[glif_rei_eyes_above]
[glif_rei_eyes_left]
[glif_rei_head_under_y]		
#グリフ	
「その・・・すごく・・・似合ってます・・・」[p]
#

;HIT
[if exp="f.dress_cute==1"]
[glif_rei_arms_atamanite]
[glif_rei_head_left_z]
[glif_rei_head_left_x]
[glif_rei_eyes_under]
[glif_rei_exp_komari_warai]	
#グリフ	
「か・・・かかか・・・かわいい、です・・・すごく・・・」[p]
#
[glif]
[koukando_up]
[endif]

[glif_rei_arms_normal]		
#&f.name	
（ちょっと、恥ずかしい・・・）[p]
#

	
[playbgm storage="butou_ontama.ogg"]

[glif_rei_eyes_normal]
[glif_rei_head_normal]
[glif_rei_exp_normal]
[glif_rei_eyes_left]
#&f.name	
（あ、音楽、始まったな・・・）[p]
#

[glif_rei_head_under_y]
[glif_rei_head_normal]
[glif_rei_eyes_normal]		
#グリフ	
「あ、あの[name]さん」[p]
#

[glif_rei_head_under_y]
[glif_rei_exp_mehuse]	
#グリフ	
「もし・・・よければ・・・踊ってくれませんか？・・・僕と」[p]
#

[glif_rei_exp_normal]
[glif_rei_eyes_above]		
#&f.name	
「えっ・・・」[p]
#

[glif_rei_exp_mehuse]
[glif_rei_eyes_normal]
[glif_rei_eyes_under]
[glif_rei_eyes_left_under]
[glif_rei_head_left_x]
[glif_rei_mod_idle_mehuse]


#グリフ	
「だ、ダメですか？すみません、出過ぎた真似を・・・」[p]
#

		
#&f.name	
「え、ええと・・・」[p]
#
	
;喜んで		
;ええと・・・ごめんなさい					
;ええと・・・ごめんなさい	

[jump storage="scenario_2/sentaku.ks" target=*glif_dance_sel]

*dance_no	
[live2d_fadein time=1000]
[glif_rei_head_under_y]
[glif_rei_exp_mehuse]
#グリフ	
「そ、そうですか・・・こちらこそ、すみません突然・・・」[p]
#

		
#&f.name	
「う、ううん・・・」[p]
#

[glif_rei_head_normal]
[glif_rei_exp_normal_warai]		
#グリフ	
「それじゃ、僕はまだ警備の仕事が残っていますのでこれで」[p]
#

[live2d_fadeout time=1000]
[live2d_hide name="glifrei"]		
#&f.name	
「う、うん」[p]
#

		
#&f.name	
（忙しいのに、誘ってくれたのかな？悪いことしちゃったかな・・・）[p]
#
[fadeoutbgm time=1000]
[jump target=*glif_end]	

*dance_ok	
[eval exp="f.event_main_15_dance_glif_sumi=1"]		
;喜んで	
[live2d_fadein time=1000]	
[glif_rei_exp_mihiraki]
[glif_rei_body_above_y]
[glif_rei_body_normal]
[glif_rei_head_normal]
[glif_rei_exp_smile]


#グリフ	
「本当ですか、ありがとうございます」[p]
#

[glif_rei_head_right_z]
[glif_rei_body_right_z]
[glif_rei_exp_normal_warai]	
#グリフ	
「・・・では、
[glif_rei_head_under_y]
[glif_rei_body_under_y]
[glif_rei_exp_mehuse_warai]
[glif_rei_mod_idle_mehuse]
お手をどうぞ」[p]
#
[playse storage="huku_koukaonlabo.ogg"]
[live2d_fadeout time=2000]
		
#&f.name	
「は、はい・・・」

[live2d_mod name="glifrei" y=-4.0 x=0.0 scale=8.2]
[glif_rei_arms_udehiroge_left]
[glif_rei_mod_idle_mode_2]
[live2d_fadein time=1000]

[p]
#

[glif_rei_exp_smile]		
#&f.name	
（わあ・・・ちょっと緊張するなあ）[p]
#

		
			
#&f.name	
（グリフとは何度か一緒にいるけど・・・）[p]
#

		
#&f.name	
（こんなに間近で見るのって・・・もしかしたら初めてなのかも・・・）[p]
#

[glif_rei_mod_idle_mehuse]		
[glif_rei_exp_mehuse_warai]	
[glif_rei_head_right_x]
[glif_rei_head_under_y]		
#グリフ	
「・・・こんなに美しい貴方が、戦場では双剣を翻して戦っている」[p]
#

[glif_rei_exp_normal_warai]	
[glif_rei_mod_idle_mode_3]	
#グリフ	
「なんだか・・・信じられません」[p]
#

		
#&f.name	
「う、美しい、なんて・・・

[glif_rei_mod_idle_mode_2]
[glif_rei_head_normal]
[glif_rei_exp_normal]
」[p]
#

		
#グリフ	
「・・・謙遜しなくていいんです。これは、僕の本心ですから」[p]
#

[glif_rei_head_under_y]
[glif_rei_head_left_z]
[glif_rei_eyes_left]		
#グリフ	
「近くで見ると本当に・・・見惚れてしまいそうです」[p]
#

[glif_rei_head_right_x]
[glif_rei_head_under_y]		
#グリフ	
「
[glif_rei_exp_metoji]
いえ・・・
[glif_rei_head_normal]
[glif_rei_head_left_z]
[glif_rei_exp_komari_warai]
もうすでに、見惚れてますね・・・僕」[p]
#

[glif_rei_head_normal]	
#&f.name	
「グリフ・・・」[p]
#

[glif_rei_mod_idle_mehuse]
[glif_rei_head_under_y]
[glif_rei_exp_mehuse]	
#グリフ	
「あんまり貴方の近くにいたら、隊長に怒られてしまうのかな」[p]
#

[glif_rei_head_normal]
[glif_rei_exp_normal]		
#&f.name	
「えっ」[p]
#

		
#グリフ	
「
[glif_rei_eyes_left]
[glif_rei_exp_komari]
でも、もし・・・許されるのなら・・・

[glif_rei_head_left_x]
貴方にもっと・・・近づいて、
[glif_rei_head_normal]
触れてみたい」[p]
#

[glif_rei_mod_idle_normal]	
[glif_rei_exp_normal]
[glif_rei_head_under_y]
[glif_rei_mod_idle_mehuse]

#&f.name	
「グリフ・・・？
[glif_rei_exp_mehuse]
」[p]
#

		
#&f.name	
「それって、どういう・・・」[p]
#



[glif_rei_mod_idle_normal]	
[glif_rei_head_normal]
[glif_rei_exp_normal]
[glif_rei_eyes_above]
#グリフ	
「・・・わかりませんか？」[p]
#

	
#&f.name	
（なんだろう・・・今日のグリフ、いつもとどこか・・・）[p]
#

[glif_rei_head_left_z]
[glif_rei_exp_sinpai]		
#グリフ	
「・・・・・・」[p]
#


[glif_rei_head_normal]		
#&f.name	
（ドキドキ・・・してる・・・？私・・・）[p]
#

		
#&f.name	
（グリフ・・・そんなに強く手・・・
[glif_rei_mod_idle_mehuse]
[glif_rei_exp_mehuse]
握ったら・・・）[p]
#

		

[fadeoutbgm time=3000]	
[live2d_fadeout time=3000]	
[glif_rei_exp_normal_warai]
[glif_rei_mod_idle_normal]	
;暗転
[anten]		
#&f.name	
（・・・私・・・）[p]
#

		
			
;暗転解除
[bg storage="oukyuu_hall_2_tasogare.jpg"]	
[live2d_mod name="glifrei" y=-2.8 x=0.0 scale=6.2]
[glif_rei_arms_normal]
[live2d_fadein time=1000]

#グリフ	
「ありがとうございました。[name]さん」[p]
#

[glif_rei_head_under_y]
[glif_rei_head_normal]
[glif_rei_exp_bisyo]	
#&f.name	
「う、ううん、私こそ・・・」[p]
#

		
#&f.name	
（いつものグリフ？なんだったんだろ・・・）[p]
#

[glif_rei_exp_metoji_warai]	
#グリフ	
「ああ、そろそろ警備に戻らないと・・・隊長に怒られますね・・・名残惜しいですが」[p]


#&f.name
「グリフ・・・」[p]
#

[glif_rei_exp_mehuse_warai]
#グリフ	
「・・・・・・・・。[w]それじゃ、また」
[glif_rei_exp_normal_warai]
[p]
#


#&f.name
「うん・・・」[p]
#

[glif_rei_head_left_z]
[glif_rei_exp_bisyo]

[live2d_fadeout time=1000]
#&f.name
（グリフ・・・）[p]
#


[jump target=*glif_end]



#グリフ	
「それじゃ僕は・・・
[glif_rei_exp_mihiraki]
あ、もしよかったら・・・」
[glif_rei_exp_normal_warai]
[p]
#

		
#&f.name	
「？」[p]
#

[glif_rei_head_under_y]
[glif_rei_eyes_right_above]		
#グリフ	
「明日、予定・・・空いてますか？僕、非番なんです、よかったら」[p]
#

[glif_rei_eyes_right]
[glif_rei_head_right_x]	
#グリフ	
「その、ふ、二人でどこか、出掛けませんか」
[glif_rei_eyes_normal]
[glif_rei_exp_normal]
[glif_rei_head_normal]
[p]
#

		
#&f.name	
「えっ」[p]
#

[glif_rei_head_under_y]
[glif_rei_exp_komari]		
#グリフ	
「ど、どうでしょうか・・・」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*glif_dance_sel_2]	
;SEL		
;いいよ		
;ごめんなさい、その日はちょっと・・・		
			
;ごめんなさい	
*date_no

[live2d_fadein time=1000]

[glif_rei_head_normal]
[glif_rei_head_under_y]
[glif_rei_head_normal]
[glif_rei_exp_normal_warai]
#グリフ	
「そうですか。すみません忙しいのに」[p]
#
		
#グリフ	
「それじゃ、また」[p]
#
[live2d_fadeout time=1000]
		
#&f.name	
（うーん、悪いことしちゃったかな・・・）[p]
#

[jump target=*glif_end]		
			
*date_ok	
[eval exp="f.event_main_15_date_glif=1"]
[live2d_fadein time=1000]
#グリフ	
「
[glif_rei_head_normal]
[glif_rei_exp_mihiraki]
本当ですか！
[glif_rei_exp_bisyo]
ありがとうございます！」[p]
#

	
#グリフ	
「それじゃあ・・・明日の朝、騎士団本部に迎えに行きます」[p]
#

		
#&f.name	
「うん、よろしくね！」[p]
#

[glif_rei_head_right_z]
[glif_rei_exp_smile]		
#グリフ	
「はい。それじゃ、僕はこれで」[p]
#

[live2d_fadeout time=1000]
;[live2d_delete_all]
*glif_end
[live2d_delete_all][live2d_off]
[jump storage="scenario_2/episode/epi6.ks" target=*next]