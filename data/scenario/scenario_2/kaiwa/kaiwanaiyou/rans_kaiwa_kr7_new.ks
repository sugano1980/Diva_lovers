


*start



#&f.name
（こういうことって・・・やっぱり聞きにくいなぁ・・・）[p]
#

#&f.name
「あのう・・・ランスロット？」[p]
#


#ランスロット
「・・・なんだ？」[p]
#


#&f.name
「・・・あの、あのう・・・
こんなこと聞いてもいいのかわからないけど・・・」[p]
#


[rans_head_right_z]
[rans_exp_bisyo]
[rans_head_normal]
#ランスロット
「どうした。珍しいな・・・お前がそんなに」[p]
#

#&f.name
「お、女の人とつきあったこととかあるのっ！？」[p]
#

[rans_body_above_y]
[rans_exp_mihiraki]
#ランスロット
「！！？？」[p]
#

[rans_body_normal]
[rans_exp_yokome]
#ランスロット
「い、いきなり何を言い出すかと思えば・・・」[p]
#


#&f.name
（お、思わず聞いちゃったけど、ある、のかな・・・）[p]
#

[rans_exp_mehuse]
[rans_exp_metoji]
#ランスロット
「・・・[name]」[p]
#
[rans_exp_mehuse]
#&f.name
「は、はい・・・」[p]
#

[rans_head_under_y]
[rans_head_right_x]
[rans_head_right_z]

[rans_exp_mehuse_muzukasii]
[rans_eyes_right]

#ランスロット
「・・・その、お前の知りたい気持ちはくんでやりたいのだが・・・」[p]
#

[rans_eyes_normal]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット
「そういった立ち入ったことはあからさまに質問するものではない」[p]
#

#&f.name
「そ・・・そうですか・・・」[p]
#


#&f.name
（うまくかわされた・・・）[p]
#
[rans_mod_idle]



[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice]













































[chara_mod name="ranslott" face="yokome_kutiake"]
#ランスロット
「お前には申し訳ないが・・・私は少し・・・」[p]
#
[chara_mod name="ranslott" face="mehuse"]

[kyoton]
#&f.name
「苦手なの？」[p]
#

[chara_mod name="ranslott" face="mehuse_kutiake"]
#ランスロット
「まず、ああやって女性を考えもなく口説くことが・・・
私にはよく理解できない」[p]
#
[chara_mod name="ranslott" face="muzukasii_mehuse"]

[komari_kutitoji]
#&f.name
（・・・？そこなの？）[p]
#

[if exp="f.jiyuu>7"]
[chara_mod name="ranslott" face="yokome"]
[chara_mod name="ranslott" face="mehuse_mousiwakenai_kutiake"]
#ランスロット
「この間も町でみかけたが・・・
また女性に声をかけていた」[p]
#
[chara_mod name="ranslott" face="metoji"]

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

[chara_mod name="ranslott" face="sinnpai_kutiake"]
#ランスロット
「どんな考えだ？それは」[p]
#
[chara_mod name="ranslott" face="sinnpai"]

[komari_kutitoji]
#&f.name
「う？ううーん・・・」[p]
#

[chara_mod name="ranslott" face="yokome"]
[chara_mod name="ranslott" face="ketui_kutiake"]
#ランスロット
「考えても見ろ、ああいう男だ。
頭の中は下世話なことがつまっているに違いない」[p]
#
[chara_mod name="ranslott" face="ketui"]

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

[chara_mod name="ranslott" face="mehuse"]
#ランスロット
「・・・」[p]
#

[komari_kutitoji]
#&f.name
「・・・やっぱり、信用できないってこと？」[p]
#


[if exp="f.jiyuu<7"]

[chara_mod name="ranslott" face="mehuse_muzukasii_kutiake"]
#ランスロット
「全面的にはまだ、信用するべきではないと思っている」[p]
#
[chara_mod name="ranslott" face="metoji_kutiake"]
#ランスロット
「まだ知り合って日も浅いしな。
[chara_mod name="ranslott" face="mehuse_kutiake"]
特にお前には、なにか特別な感情を持っているように思える」[p]
#
[chara_mod name="ranslott" face="normal_majime"]

[kyoton]
#&f.name
「特別な感情って・・・？」[p]
#
[chara_mod name="ranslott" face="mehuse"]
[chara_mod name="ranslott" face="mehuse_kutiake"]
#ランスロット
「とにかく、あの剣や不思議な力からして、
警戒はしておいたほうがいいだろう」[p]
#

[chara_mod name="ranslott" face="kessin_kutiake"]
#ランスロット
「同じ地方騎士団内にいるならなおのこと心配だ。
気をつけるんだぞ」[p]
#

[kessin]
#&f.name
「う・・・うん・・・」[p]
#
[endif]



[if exp="f.jiyuu==7"]

;自由行動７以降

[chara_mod name="ranslott" face="mehuse_kutiake"]
#ランスロット
「感謝はしている。
あいつは王都のために、その力を使ってくれたわけだし・・・」[p]
#
[endif]


[if exp="f.jiyuu>7"]

;自由行動８以降
#ランスロット
「エルムナードのことでは、協力も申し出てくれたことだしな」[p]
#


[endif]

[if exp="f.jiyuu>6"]

[chara_mod name="ranslott" face="muzukasii_mehuse_kutiake"]
#ランスロット
「基本的にはいい奴なのだろう・・・おそらく。だが・・・」[p]
#
[chara_mod name="ranslott" face="mehuse"]
[kyoton]
#&f.name
「ランスロット？」[p]
#

[chara_mod name="ranslott" face="sinnpai_kutiake"]
#ランスロット
「心配ではある。あいつはお前に、どうも特別な感情を持っているようだし・・・」[p]
#
[chara_mod name="ranslott" face="sinnpai"]

#&f.name
「特別な感情って？」[p]
#

[chara_mod name="ranslott" face="metoji_kutiake"]
#ランスロット
「わからないなら、それでいい。
[chara_mod name="ranslott" face="mousiwakenai_kutiake"]
だが、なるべく・・・あいつとは二人きりにならないほうがいい」[p]
#
[chara_mod name="ranslott" face="mousiwakenai"]

[komari_kutitoji]
#&f.name
「どうして？」[p]
#

[chara_mod name="ranslott" face="normal_kutiake"]
#ランスロット
「それは・・・
[chara_mod name="ranslott" face="yokome_kutiake"]
その」[p]
#
[chara_mod name="ranslott" face="yokome"]

[chara_mod name="ranslott" face="kessin_kutiake"]
#ランスロット
「ともかく、気をつけるに越したことはない。わかったな」[p]
#
[chara_mod name="ranslott" face="normal_majime"]

[normal_kutiake]
#&f.name
「は、はあ・・・」[p]
#
[endif]



[jump storage="scenario_2/kaiwa/ranskaiwa_new.ks" target=*wadaichoice]


















