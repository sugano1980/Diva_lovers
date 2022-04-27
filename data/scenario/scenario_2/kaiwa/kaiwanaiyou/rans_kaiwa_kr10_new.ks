


*start



[rans_exp_normal]
#ランスロット
「そんなことはないだろう」[p]
#



#&f.name
「そうかなあ・・・」[p]
#

[rans_exp_komari_warai]
#ランスロット
「制服以外の服を着ていることもあるはずだぞ」[p]
#




#&f.name
「ううーん、王宮騎士団で一緒にいたときは、
色々着てた気もするんだけど・・・」[p]
#


#&f.name
「最近は会うたびにきっちり着込んでるなーと思って」[p]
#

[rans_exp_normal]
[rans_exp_yokome]
[rans_head_left_x]
#ランスロット
「きっちり・・・」[p]
#



[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「まあ・・・王宮騎士団は服務が厳しいからな」[p]
#



#&f.name
「ライオネスみたいに着崩したりだらだらしてると
だめってこと？」[p]
#

[rans_head_right_x]
[rans_head_above_y]
[rans_exp_mehuse_muzukasii]
#ランスロット
「あいつは地方騎士団でも注意されている気がするが・・・」[p]
#

[rans_head_normal]
[rans_exp_komari_warai]
#ランスロット
「王宮騎士は基本的には制服着用を義務付けられているから」[p]
#


#&f.name
「そうなんだ・・・地方騎士団は自由だけど、
そのへん色々大変そうだね」[p]
#

[rans_exp_mehuse]
[rans_head_under_y]
#ランスロット
「そうだな・・・特に洗濯が・・・

いつもは使用人に頼んでいるが・・・そうはいかないこともあってな、汚れると手間がかかる」[p]
#
[rans_exp_mehuse_mousiwakenai]


#&f.name
（本当に大変そうだなぁ・・・）[p]
#















[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice]













































[rans_exp_yokome_kutiake]
#ランスロット
「お前には申し訳ないが・・・私は少し・・・」[p]
#
[rans_exp_mehuse]

[kyoton]
#&f.name
「苦手なの？」[p]
#

[rans_exp_mehuse_kutiake]
#ランスロット
「まず、ああやって女性を考えもなく口説くことが・・・
私にはよく理解できない」[p]
#
[rans_exp_muzukasii_mehuse]

[komari_kutitoji]
#&f.name
（・・・？そこなの？）[p]
#

[if exp="f.jiyuu>7]
[rans_exp_yokome]
[rans_exp_mehuse_mousiwakenai_kutiake]
#ランスロット
「この間も町でみかけたが・・・
また女性に声をかけていた」[p]
#
[rans_exp_metoji]

[metoji_koma]
#&f.name
（そうなんだ・・・）[p]
#

[endif]

[ase]
#&f.name
「えーとー・・・
クライストさんにも一応考えはあるのかもしれないよ？」[p]
#

[rans_exp_sinnpai_kutiake]
#ランスロット
「どんな考えだ？それは」[p]
#
[rans_exp_sinnpai]

[komari_kutitoji]
#&f.name
「う？ううーん・・・」[p]
#

[rans_exp_yokome]
[rans_exp_ketui_kutiake]
#ランスロット
「考えても見ろ、ああいう男だ。
頭の中は下世話なことがつまっているに違いない」[p]
#
[rans_exp_ketui]

[kyoton]
#&f.name
（・・･下世話って・・・？）[p]
#

[normal]
#&f.name
「でもクライストさんって、軽い感じはするけど、優しいし、親切だよ？」[p]
#

[smile]
#&f.name
「こないだだって、街の子供たちと楽しそうにしてたし」[p]
#

[rans_exp_mehuse]
#ランスロット
「・・・」[p]
#

[komari_kutitoji]
#&f.name
「・・・やっぱり、信用できないってこと？」[p]
#


[if exp="f.jiyuu<7]

[rans_exp_mehuse_muzukasii_kutiake]
#ランスロット
「全面的にはまだ、信用するべきではないと思っている」[p]
#
[rans_exp_metoji_kutiake]
#ランスロット
「まだ知り合って日も浅いしな。
[rans_exp_mehuse_kutiake]
特にお前には、なにか特別な感情を持っているように思える」[p]
#
[rans_exp_normal_majime]

[kyoton]
#&f.name
「特別な感情って・・・？」[p]
#
[rans_exp_mehuse]
[rans_exp_mehuse_kutiake]
#ランスロット
「とにかく、あの剣や不思議な力からして、
警戒はしておいたほうがいいだろう」[p]
#

[rans_exp_kessin_kutiake]
#ランスロット
「同じ地方騎士団内にいるならなおのこと心配だ。
気をつけるんだぞ」[p]
#

[kessin]
#&f.name
「う・・・うん・・・」[p]
#
[endif]



[if exp="f.jiyuu==7]

;自由行動７以降

[rans_exp_mehuse_kutiake]
#ランスロット
「感謝はしている。
あいつは王都のために、その力を使ってくれたわけだし・・・」[p]
#
[endif]


[if exp="f.jiyuu>7]

;自由行動８以降
#ランスロット
「エルムナードのことでは、協力も申し出てくれたことだしな」[p]
#


[endif]

[if exp="f.jiyuu>6]

[rans_exp_muzukasii_mehuse_kutiake]
#ランスロット
「基本的にはいい奴なのだろう・・・おそらく。だが・・・」[p]
#
[rans_exp_mehuse]
[kyoton]
#&f.name
「ランスロット？」[p]
#

[rans_exp_sinnpai_kutiake]
#ランスロット
「心配ではある。あいつはお前に、どうも特別な感情を持っているようだし・・・」[p]
#
[rans_exp_sinnpai]

#&f.name
「特別な感情って？」[p]
#

[rans_exp_metoji_kutiake]
#ランスロット
「わからないなら、それでいい。
[rans_exp_mousiwakenai_kutiake]
だが、なるべく・・・あいつとは二人きりにならないほうがいい」[p]
#
[rans_exp_mousiwakenai]

[komari_kutitoji]
#&f.name
「どうして？」[p]
#

[rans_exp_normal_kutiake]
#ランスロット
「それは・・・
[rans_exp_yokome_kutiake]
その」[p]
#
[rans_exp_yokome]

[rans_exp_kessin_kutiake]
#ランスロット
「ともかく、気をつけるに越したことはない。わかったな」[p]
#
[rans_exp_normal_majime]

[normal_kutiake]
#&f.name
「は、はあ・・・」[p]
#
[endif]



[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice]


















