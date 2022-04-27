


*start


[rans_mod_idle]
#ランスロット
「お前がまさか双剣をそこまで
[r]使いこなせるようになるとはな・・・」[p]
#


#&f.name
「まさかって・・・ランスロット・・・」[p]
#

[rans_mod_idle_no_move]
[live2d_motion name="rans2" mtn="Exp_normal_warai"]
#ランスロット
「はは、すまない。
[r]最初から疑っていたわけではないのだが」[p]
#

[rans_head_left_x]
[rans_head_left_z]
[rans_body_left_z]
[rans_eyes_left]

#ランスロット
「ただ、なんというか感慨深くてな・・・」[p]
#
[live2d_motion name="rans2" mtn="Exp_yokome_warai"]


#&f.name
「ランスロット・・・」[p]
#

[rans_eyes_normal]
[rans_head_above_y]

[live2d_motion name="rans2" mtn="Exp_normal"]
#ランスロット
「双剣術は、普通の剣士でもなかなか習得できるものではない」[p]
#


[rans_head_normal]
[rans_body_under_y]
[live2d_motion name="rans2" mtn="Exp_yokome"]
#ランスロット
「もともとの素質や、体格、
[r]ある程度のセンスがなければ使いこなすことは無理だろう」[p]
#

[rans_body_normal]
[rans_head_right_z]
[rans_body_right_z]
[live2d_motion name="rans2" mtn="Exp_normal_warai"]
#ランスロット
「まあただお前の場合は・・・
[r]本当に一から双剣であったからか、わからないが・・・」[p]
#


[rans_head_under_y]
[rans_body_right_z]

#ランスロット
「両手で剣を扱うのはさほど苦労はしなかったな」[p]
#



#&f.name
「うん。どうしてだろう？私、両ききだからかな」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_body_left_z]
[live2d_motion name="rans2" mtn="Exp_metoji_warai"]
#ランスロット
「それもあるだろうな。有利な条件のひとつだ」[p]
#
[live2d_motion name="rans2" mtn="Exp_normal_warai”]
#ランスロット
「それから、体が軽くて、スピードも申し分なかったのもお前が上達した理由かもしれないな」[p]
#



#&f.name
「そうかあ・・・」[p]
#
[rans_head_right_x]
[rans_body_right_z]
[live2d_motion name="rans2" mtn="Exp_mehuse_warai_kutiake"]
#ランスロット
「当初は、父上にも反対されていたし、
[r]どうなることかと思ったのだが・・・」[p]
#

[rans_head_normal]
[live2d_motion name="rans2" mtn="Exp_bisyo"]
#ランスロット
「あきらめないでがんばってきた甲斐があったな」[p]
#


#&f.name
「ランスロット・・・うん！」[p]
#








[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice][r]













































[live2d_motion name="rans2" mtn="Exp_yokome_kutiake"]
#ランスロット
「お前には申し訳ないが・・・私は少し・・・」[p]#
[live2d_motion name="rans2" mtn="Exp_mehuse"]

[kyoton]
#&f.name
「苦手なの？」[p]#

[live2d_motion name="rans2" mtn="Exp_mehuse_kutiake"]
#ランスロット
「まず、ああやって女性を考えもなく口説くことが・・・
[r]私にはよく理解できない」[p]#
[live2d_motion name="rans2" mtn="Exp_muzukasii_mehuse"]

[komari_kutitoji]
#&f.name
（・・・？そこなの？）[p]#

[if exp="f.jiyuu>7"]
[live2d_motion name="rans2" mtn="Exp_yokome"]
[live2d_motion name="rans2" mtn="Exp_mehuse_mousiwakenai_kutiake"]
#ランスロット
「この間も町でみかけたが・・・
[r]また女性に声をかけていた」[p]#
[live2d_motion name="rans2" mtn="Exp_metoji"]

[metoji_koma]
#&f.name
（そうなんだ・・・）[p]#

[endif]

[ase]
#&f.name
「えーとー・・・
[r]クライストさんにも一応考えはあるのかもしれないよ？」[p]#

[live2d_motion name="rans2" mtn="Exp_sinnpai_kutiake"]
#ランスロット
「どんな考えだ？それは」[p]#
[live2d_motion name="rans2" mtn="Exp_sinnpai"]

[komari_kutitoji]
#&f.name
「う？ううーん・・・」[p]#

[live2d_motion name="rans2" mtn="Exp_yokome"]
[live2d_motion name="rans2" mtn="Exp_ketui_kutiake"]
#ランスロット
「考えても見ろ、ああいう男だ。
[r]頭の中は下世話なことがつまっているに違いない」[p]#
[live2d_motion name="rans2" mtn="Exp_ketui"]

[kyoton]
#&f.name
（・・･下世話って・・・？）[p]#

[normal]
#&f.name
「でもクライストさんって、軽い感じはするけど、優しいし、親切だよ？」[p]#

[smile]
#&f.name
「こないだだって、街の子供たちと楽しそうにしてたし」[p]#

[live2d_motion name="rans2" mtn="Exp_mehuse"]
#ランスロット
「・・・」[p]#

[komari_kutitoji]
#&f.name
「・・・やっぱり、信用できないってこと？」[p]#


[if exp="f.jiyuu<7"]

[live2d_motion name="rans2" mtn="Exp_mehuse_muzukasii_kutiake"]
#ランスロット
「全面的にはまだ、信用するべきではないと思っている」[p]#
[live2d_motion name="rans2" mtn="Exp_metoji_kutiake"]
#ランスロット
「まだ知り合って日も浅いしな。
[live2d_motion name="rans2" mtn="Exp_mehuse_kutiake"]
[r]特にお前には、なにか特別な感情を持っているように思える」[p]#
[live2d_motion name="rans2" mtn="Exp_normal_majime"]

[kyoton]
#&f.name
「特別な感情って・・・？」[p]#
[live2d_motion name="rans2" mtn="Exp_mehuse"]
[live2d_motion name="rans2" mtn="Exp_mehuse_kutiake"]
#ランスロット
「とにかく、あの剣や不思議な力からして、
[r]警戒はしておいたほうがいいだろう」[p]#

[live2d_motion name="rans2" mtn="Exp_kessin_kutiake"]
#ランスロット
「同じ地方騎士団内にいるならなおのこと心配だ。
[r]気をつけるんだぞ」[p]#

[kessin]
#&f.name
「う・・・うん・・・」[p]#
[endif]



[if exp="f.jiyuu==7"]

;自由行動７以降

[live2d_motion name="rans2" mtn="Exp_mehuse_kutiake"]
#ランスロット
「感謝はしている。
[r]あいつは王都のために、その力を使ってくれたわけだし・・・」[p]#
[endif]


[if exp="f.jiyuu>7"]

;自由行動８以降
#ランスロット
「エルムナードのことでは、協力も申し出てくれたことだしな」[p]#


[endif]

[if exp="f.jiyuu>6"]

[live2d_motion name="rans2" mtn="Exp_muzukasii_mehuse_kutiake"]
#ランスロット
「基本的にはいい奴なのだろう・・・おそらく。だが・・・」[p]#
[live2d_motion name="rans2" mtn="Exp_mehuse"]
[kyoton]
#&f.name
「ランスロット？」[p]#

[live2d_motion name="rans2" mtn="Exp_sinnpai_kutiake"]
#ランスロット
「心配ではある。あいつはお前に、どうも特別な感情を持っているようだし・・・」[p]#
[live2d_motion name="rans2" mtn="Exp_sinnpai"]

#&f.name
「特別な感情って？」[p]#

[live2d_motion name="rans2" mtn="Exp_metoji_kutiake"]
#ランスロット
「わからないなら、それでいい。
[live2d_motion name="rans2" mtn="Exp_mousiwakenai_kutiake"]
[r]だが、なるべく・・・あいつとは二人きりにならないほうがいい」[p]#
[live2d_motion name="rans2" mtn="Exp_mousiwakenai"]

[komari_kutitoji]
#&f.name
「どうして？」[p]#

[live2d_motion name="rans2" mtn="Exp_normal_kutiake"]
#ランスロット
「それは・・・
[live2d_motion name="rans2" mtn="Exp_yokome_kutiake"]
その」[p]#
[live2d_motion name="rans2" mtn="Exp_yokome"]

[live2d_motion name="rans2" mtn="Exp_kessin_kutiake"]
#ランスロット
「ともかく、気をつけるに越したことはない。わかったな」[p]#
[live2d_motion name="rans2" mtn="Exp_normal_majime"]

[normal_kutiake]
#&f.name
「は、はあ・・・」[p]#
[endif]



[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice][r]











[r][r]
[r][r]
[r][r]
[r][r]



