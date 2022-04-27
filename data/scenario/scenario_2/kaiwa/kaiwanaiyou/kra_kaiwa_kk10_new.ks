


*start




;ウェスタにいった場合

[if exp="f.s_wesuta==1"]
[aho_face_komari]
[aho_body_right_z]
#クライスト
「王都、恋しい？」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_face_normal]
#&f.name
「うん・・・平気って言ったら嘘になるけど・・・」[p]
#
#&f.name
「決めたから、自分で」[p]
#
#&f.name
「それに、海の旅も楽しいよ」[p]
#
[aho_arms_udekumi]
[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
#クライスト
「そう、それならよかった」[p]
#
[aho_head_right_x]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト
「俺も・・・よかったよ」[p]
#
[aho_head_left_x]
[aho_arms_normal]
[aho_eyes_left]
[aho_face_bisyou_youen]
#クライスト
「その、君が一緒に来てくれて」[p]
#
[aho_eyes_normal]
[aho_head_normal]
#&f.name
「クライストさん・・・」[p]
#
[aho_head_right_z]
[aho_mod_idle_normal]
[jump target=*kaiwa_10_end]
[endif]


;王宮騎士団にいった場合
[if exp="f.s_oukyu==1"]

[aho_arms_udekumi]
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト
「王宮騎士団はどう？色々大変なこととか、あるんじゃない？」[p]
#

#&f.name
「ありがとう。でも大丈夫だよ。ランスロットも、セレさんもいるし・・・」[p]
#

[aho_body_right_z]
[aho_face_yokome_majime]
#クライスト
「・・・ふーん・・・」[p]
#


[aho_body_normal]
[aho_face_metoji]
#クライスト
「そうだね、「お師匠様」がいるなら、
[aho_face_akireru]
[aho_head_right_x]
[aho_eyes_right]
[aho_head_above_y]
そりゃあ安心だろうね」[p]
#

#&f.name
「え・・・」[p]
#

[aho_head_under_y]
[aho_head_left_x]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#クライスト
「・・・・・・」[p]
#

#&f.name
（クライストさん・・・？）[p]
#
[aho_mod_idle_normal]
[jump target=*kaiwa_10_end]

[endif]


#クライスト
「迷ってるんだ？」[p]
#

#&f.name
「う、うん・・・そりゃあ・・・」[p]
#

[aho_head_under_y]
[aho_head_right_z]
[aho_face_yokome]
#クライスト
「ふうん・・・」[p]
#
[aho_face_mehuse]
[w]
[aho_face_normal]
#クライスト
「・・・王宮騎士団に入ったらいいんじゃないかな？」[p]
#


#&f.name
「えっ・・・な、なんで？」[p]
#
[aho_head_normal]
[aho_face_normal_majime]
#&f.name
（クライストさんのことだから、てっきり一緒に行こうよなんていうかなと思ったけど・・・）[p]
#

[aho_face_mihiraki]
#クライスト
「あ、もしかして俺が一緒に来てって言うと思ってた？」[p]
#

[aho_face_normal]
#&f.name
「え、えーと、その・・・」[p]
#
#&f.name
（鋭すぎる・・・）[p]
#

[aho_head_above_y]
[aho_head_right_z]
[aho_face_yokome]
#クライスト
「そうだなあ・・・君と一緒にいたいのは山々だけど、今回はちょっと事情が特殊だからね」[p]
#
[aho_head_normal]
[aho_face_normal_majime]

#クライスト
「それに、君の意思はまだ固まってないんだろ？」[p]
#

#&f.name
「うん・・・」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト
「じゃあ、強引に連れて行くわけにはいかないよ。それから王宮騎士団より、ウェスタのほうが
危険が多いと思うし」[p]
#

[aho_head_left_z]
[aho_face_bisyou_youen]

#クライスト
「王宮騎士団なら、嫌でもあのカタブツが守ってくれそうな感じだからさ」[p]
#


#&f.name
（クライストさん・・・）[p]
#

#&f.name
「で、でも・・・ヴァエルのことだって、気になるし・・・」[p]
#


[aho_head_normal]
[aho_head_under_y]
[aho_face_metoji]
#クライスト
「それは俺たちに任せればいいよ。君は何も心配することない」[p]
#


#&f.name
「だけど・・・」[p]
#

[aho_head_right_z]
[aho_face_bisyou_youen]
#クライスト
「・・・それとも、さ。もしかして・・・俺と離れるのが寂しいから、とか？」[p]
#

#&f.name
「えっっ・・・えっと・・」[p]
#

[if exp="f.event_war_kra_sumi==1"]


#&f.name
「そ、そのほら、前に・・・
[r]苦しそうにしてたときがあったから・・・その、心配で」[p]
#

[aho_head_normal]
[aho_face_mihiraki]
[aho_face_mehuse]
#クライスト
「・・・・・・。ああ、そのこと・・・それで？」[p]
#

#&f.name
（えっ・・・）[p]
#

#&f.name
「それで・・・って、心配だから・・・」[p]
#

[aho_face_metoji]
#クライスト
「あのさ・・・気持ちは嬉しいんだけど、君が心配したところで何が変わるってわけじゃないだろ」[p]
#
[aho_face_normal_majime]
#&f.name
「そっ・・・それはそうかもしれないけど・・・」[p]
#

#&f.name
（どうして、そんな言い方・・・クライストさん、優しいことが多いのに・・・）[p]
#

[aho_head_left_x]
[aho_face_mehuse]
[aho_eyes_left]

#クライスト
「君に、何ができるっていうんだ？」[p]
#

#&f.name
「・・・クライスト・・・さん・・・？」[p]
#

[aho_head_normal]
[aho_face_mihiraki]

#クライスト
「あ・・・・」[p]
#

#&f.name
「っ・・・」[p]
#

[aho_head_left_x]
[aho_body_left_z]
[aho_face_kunou]
#クライスト
「・・・・・・・。
[r]ごめん。少し、きつい言い方だったね」[p]
#

[aho_head_normal]
[aho_face_normal_majime]
#&f.name
「ごめんなさい、私こそ、なんか・・・
[r]余計なこと言っちゃったのかな」[p]
#

[aho_head_left_x]
[aho_face_komari_warai]
[aho_head_under_y]

#クライスト
「・・・いや、いいんだ。
[r]君の気持ちは・・・嬉しいから。だけど・・・」[p]
#

[aho_face_mehuse]
#&f.name
「クライストさん？」[p]
#

[aho_face_metoji]
#クライスト
「・・・でもこれは・・・
[r]どうにもならないことなんだ」[p]
#

[aho_face_mehuse]
#クライスト
「君がどんなに俺のことを思っても、俺がどうあがいても、どうにもならないことなんだ」[p]
#

#&f.name
「・・・・・・・」[p]
#

[aho_head_normal]
[aho_face_komari_warai]

#クライスト
「だから、俺のことは気にしなくていいよ。
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]
[r]・・・[name]ちゃんの決めたいように決めるといい」[p]
#

#&f.name
「クライストさん・・・」[p]
#

[else]



#クライスト
「そうだとしたら、俺としては嬉しいんだけど」[p]
#


#&f.name
「あ、あの・・・」[p]
#

[aho_head_normal]
[aho_face_mihiraki]
#クライスト
「そうだなあ・・・
[aho_face_yokome]

[r]いっそのこと君をさらっちゃうのもいいかもしれないね」[p]
#

[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]
#&f.name
「は、はいい！？」[p]
#

[aho_head_right_z]
[aho_body_right_z]
[aho_face_smile_ase]

#クライスト
「あはは。冗談だよ。
[aho_face_bisyou_youen]

[r]だけど、ウェスタのことは大丈夫だよ。
[r]もちろん、俺は君と一緒にいたいけどね」[p]
#


#&f.name
「クライストさん・・・」[p]
#
[aho_head_normal]
[aho_face_yokome]

#クライスト
「だけど、決めるのは君だから・・・
[aho_face_normal_majime]

[r][name]ちゃんの決めたいように決めるといい」[p]
#

#&f.name
「うん・・・そうだよね。ありがとう。私また、考えてみる」[p]
#

[aho_face_normal]
[endif]








*kaiwa_10_end
[jump storage="scenario_2/kaiwa/krakaiwa_new.ks" target=*wadaichoice][r]








































[r]
[r]
[r]
[r]



