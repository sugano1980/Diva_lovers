


*start


#&f.name
「ライオネスってすごくごはん食べるよね」[p]
#

[live2d_motion name="lioness" mtn="Wakewakaran"]
#ライオネス
「そりゃお前・・・なんだいまさら」[p]
#

[lioness_arms_udekumi]
#&f.name
「いっぱい食べるってことは知ってたけど、いつもどれくらい食べてるのかなーって思って」[p]
#

[live2d_motion name="lioness" mtn="Eyes_left"]
#ライオネス
「どれくらいって・・・なんて答えりゃいいんだ」[p]
#
[live2d_motion name="lioness" mtn="Face_normal"]

#&f.name
「うーんパンなら何個、とか」[p]
#


[if exp="f.jiyuu>10"]
[live2d_motion name="lioness" mtn="normal_kutiake"]
#ライオネス
「騎士団の食堂だったら１０個はいけたな」[p]
#

[live2d_motion name="lioness" mtn="metoji_kutiake"]
#ライオネス
「って食いたかったんだけどよ、
[r]１０ももらえなかったから追加で酒場で飯食ってた」[p]
#
[live2d_motion name="lioness" mtn="metoji_kutitoji"]

[normal]
#&f.name
「今は？船のお料理とか」[p]#

[live2d_motion name="lioness" mtn="muzukasii_kutiake"]
#ライオネス
「俺が昨日カレーピラフ１５杯食ったの、覚えてねえのか」[p]#
[live2d_motion name="lioness" mtn="normal_kutitoji"]

[kyoton]
#&f.name
「あ・・・」[p]#

[ase]
#&f.name
（そ、そうだった・・・
[r]それでほかの船員さんたちと競争して勝ってたんだっけ・・・）[p]#

[live2d_motion name="lioness" mtn="normal_kutiake"]
#ライオネス
「船の飯結構いけるよなー。
[live2d_motion name="lioness" mtn="normal_warai_kutiake"]
あ、お前の料理も食わせろよな」[p]#

[live2d_motion name="lioness" mtn="normal_warai"]
#ライオネス
「俺はいつも楽しみにしてんだからよ」[p]#


#&f.name
「あ、ありがとう・・・」[p]#

[else]

[live2d_motion name="lioness" mtn="Eyes_left"]
#ライオネス
「食堂のやつなら１０個は食う」[p]
#
[live2d_motion name="lioness" mtn="Face_normal"]

#&f.name
「えっ・・ええ・・・！！」[p]
#

[live2d_motion name="lioness" mtn="Face_metoji"]
[lioness_head_right_z]
[lioness_body_right_z]
#ライオネス
「って食いてえとこだが、１０ももらえるわけねえから、
いつも食堂で食ったあと酒場で飯食ってる」[p]
#


#&f.name
「ひとりで食べ行くの？」[p]
#

[live2d_motion name="lioness" mtn="Eyes_left"]
#ライオネス
「ああ・・・まあ、ひとりのときもあるけどよ、
トリスタンがついてくるときもあるし」[p]
#

[endif]


[if exp="f.jiyuu>7&&f.jiyuu<11"]

[live2d_motion name="lioness" mtn="metoji_kutiake"]
#ライオネス
「・・・最近では」[p]#
[live2d_motion name="lioness" mtn="metoji_kutitoji"]

#&f.name
「最近では？」[p]#
[live2d_motion name="lioness" mtn="mehuse_kutiake"]
#ライオネス
「クライストのやつが・・・勝手に乱入してくるときがある・・・」[p]#
[live2d_motion name="lioness" mtn="metoji_kutitoji"]

[odoroki]
#&f.name
「ええ、そうなの！？」[p]#

[live2d_motion name="lioness" mtn="muzukasii_kutiake"]
#ライオネス
「あいつ俺が嫌がっても平気で相席してくんだよ」[p]#

[live2d_motion name="lioness" mtn="otikomi_kutiake"]
#ライオネス
「・・・しかも、女連れのときもあるしよ・・・」[p]#

[metoji_koma]
#&f.name
（・・・クライストさん・・・）[p]#

[elsif exp="f.jiyuu<8"]


[live2d_motion name="lioness" mtn="Eyes_right"]
[lioness_head_above_y]
[lioness_head_right_x]
#ライオネス
「ま、トリスタンと一緒んときはだいたい酒飲みになっちまうけどな」[p]
#
[live2d_motion name="lioness" mtn="Face_normal"]

#&f.name
「そうなんだ。トリスタンと仲いいもんね」[p]
#

[live2d_motion name="lioness" mtn="Face_muzukasii"]
#ライオネス
「酔うとちょっとめんどくさいんだけどな・・・」[p]
#
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_breath]
[live2d_motion name="lioness" mtn="Face_metoji"]


#&f.name
「そ、そうなの・・・」[p]
#

[lioness_arms_normal]
[endif]




















[jump storage="scenario_2/kaiwa/lionkaiwa_new.ks" target=*wadaichoice]










































[r]
[r]
[r]
[r]



