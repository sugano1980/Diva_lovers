


*start



[rans_arms_udekumi]
[rans_head_left_x]
[rans_body_left_z]
[rans_exp_yokome]
#ランスロット
「お前には申し訳ないが・・・私は少し・・・」[p]
#

[rans_body_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
#&f.name
「苦手なの？」[p]
#


[rans_arms_normal]
[rans_head_normal]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「なぜ、ああも軽々しく女性に声を・・・」[p]
#
[rans_exp_mehuse_muzukasii]

#&f.name
「え？」[p]
#

[if exp="f.event_main_14_days>0"]
[rans_arms_kosinite_right]
[rans_body_left_z]
[rans_head_normal]
[rans_exp_yokome]
#ランスロット
「この間も町でみかけたが・・・
[rans_exp_mousiwakenai_kutiake]
また女性に声をかけていて・・・」[p]
#
[rans_exp_metoji]


#&f.name
（・・・クライストさん・・・）[p]
#

[endif]


#&f.name
「えーとー・・・
[r]クライストさんにも一応考えはあるのかもしれないよ？」[p]
#

[rans_arms_normal]
[rans_head_normal]
[rans_body_normal]
[rans_exp_sinpai]

#ランスロット
「どんな考えだ？それは」[p]
#


#&f.name
「う？ううーん・・・」[p]
#


[rans_arms_udekumi]
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「考えても見ろ、ああいう男だ。
[r]頭の中は下世話なことがつまっているに違いない」[p]
#

[rans_exp_mehuse]

#&f.name
（・・･下世話って・・・？）[p]
#


#&f.name
「でもクライストさんって、
[rans_arms_normal]
[rans_head_normal]
[rans_exp_normal]軽い感じはするけど、
[r]優しいし、親切だよ？」[p]
#

#&f.name
「それにカーニバルの時だって、クライストさんがいなかったら・・・」[p]
#

[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット
「・・・」[p]
#

#&f.name
「・・・やっぱり、信用できないってこと？」[p]
#


[if exp="f.event_main_14_days>0"]

[rans_head_normal]
[rans_exp_mehuse_muzukasii]
#ランスロット
「全面的にはまだ、信用するべきではないと思っている」[p]
#
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「まだ知り合って日も浅いしな。

[rans_head_right_x]
[rans_eyes_right]
[rans_exp_normal]

[r]特にお前には、なにか特別な感情を持っているように思える」[p]
#
[rans_head_normal]

#&f.name
「特別な感情って・・・？」[p]
#

[rans_exp_mehuse]
[rans_body_left_z]
[rans_head_left_x]
[rans_exp_ketui]
#ランスロット
「とにかく、あの剣や不思議な力からして、
[r]警戒はしておいたほうがいいだろう」[p]
#

[rans_body_normal]
[rans_head_normal]
#ランスロット
「同じ地方騎士団内にいるならなおのこと心配だ。
[r]気をつけるんだぞ」[p]
#


#&f.name
「う・・・うん・・・」[p]
#
[endif]



[if exp="f.event_main_15_days>0||f.event_main_16_days>0"]

;自由行動７以降

[rans_head_normal]
[rans_exp_metoji]

#ランスロット
「感謝はしている。
[r]あいつは王都のために、その力を使ってくれたわけだし・・・」[p]
#
[endif]



[if exp="f.event_main_15_days>0&&f.disc_3==1||f.disc_3==1||f.disc_4==1||f.disc_5==1"]

[rans_body_normal]
[rans_head_normal]
[rans_arms_udekumi]
[rans_exp_mehuse_muzukasii]
#ランスロット
「基本的にはいい奴なのだろう・・・おそらく。だが・・・」[p]
#

[rans_head_under_y]
#&f.name
「ランスロット？」[p]
#

[rans_head_normal]
[rans_head_above_y]
[rans_head_right_x]
[rans_eyes_right]
[rans_exp_sinpai]
#ランスロット
「心配ではある。
[r]あいつはお前に、どうも特別な感情を持っているようだし・・・」[p]
#

[rans_head_normal]
[rans_exp_normal]
#&f.name
「特別な感情って？」[p]
#

[rans_arms_normal]
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「わからないなら、それでいい。
[rans_head_normal]
[rans_exp_mousiwakenai_kutiake]
だが、なるべく・・・あいつとは二人きりにならないほうがいい」[p]
#

#&f.name
「どうして？」[p]
#

[rans_head_right_x]
[rans_body_right_z]
[rans_eyes_right]
[rans_exp_normal]
#ランスロット
「それは・・・
[rans_eyes_left]
その」[p]
#

[rans_head_under_y]
[rans_head_normal]
[rans_exp_ketui]

#ランスロット
「ともかく、気をつけるに越したことはない。わかったな」[p]
#
[rans_head_under_y]
[rans_head_normal]

#&f.name
「は、はあ・・・」[p]
#
[endif]



[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice][r]











[r][r]
[r][r]
[r][r]
[r][r]



