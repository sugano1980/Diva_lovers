


*start


#&f.name
（さすがにちょっと聞きにくいけど・・・）[p]
#

#&f.name
（えーと・・・なんて聞いたらいいんだろう・・・）[p]
#

#&f.name
「あ、あのねライオネス・・・」[p]
#


#ライオネス
「なんだよ」[p]
#


#&f.name
「あの・・・ど、どういう女の子が好き？」[p]
#

[lioness_head_above_y]
[lioness_head_under_y]
[lioness_face_wakewakaran]
#ライオネス
「はぁ？」[p]
#

[lioness_head_normal]
#&f.name
「う、うーんとつまり、好きな女の子のタイプっていうか・・・」[p]
#

[if exp="f.lionkonkando>50]
[lioness_face_odoroki_sekimen_kutiake]
[lioness_arms_right_x]
[lioness_arms_left_x]
[lioness_face_odoroki_sekimen]
#ライオネス
「ばっ・・・馬鹿お前・・・何聞いて・・・」[p]
#

#&f.name
「へ？」[p]
#
[lioness_face_normal]
[lioness_face_tere]
[lioness_eyes_right]
[lioness_head_left_x]
[lioness_arms_poripori]

#&f.name
（なんでそんなに赤くなるんだろう・・・）[p]
#

[lioness_eyes_normal]
[lioness_arms_normal]
[lioness_head_normal]
#ライオネス
「い、いーか
二度とそんなこと聞くんじゃねえ！わかったなっっ」[p]
#

#&f.name
「あっ・・・ご、ごめんなさいっ」[p]
#
[lioness_face_tere]
[lioness_eyes_right_above]
[lioness_arms_atamanite_right]

#&f.name
（やっぱ迷惑だったかな・・・にしても顔赤すぎ・・・）[p]
#

[else]


#ライオネス
「・・・・・・・・・」[p]
#
[lioness_face_metoji]
#ライオネス
「そんなん、考えたことねえし」[p]
#

#&f.name
「えっ・・・とぉ・・・そうなんだ・・・」[p]
#
[lioness_eyes_right]
[lioness_head_above_y]
[lioness_head_right_x]
#ライオネス
「わりーけど、よくわかんねえ」[p]
#


[lioness_head_normal]
[lioness_eyes_normal]
#&f.name
（まあ・・・そうだよね・・・ライオネスだもんね・・・）[p]
#

[endif]


[if exp="f.lionkonkando>50&&f.lionkonkando<70]


#&f.name
「そ、そうだよね、ごめん変なこと聞いて・・・」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_mehuse_dai]
#ライオネス
「・・・・・・あぁ、でも・・・」[p]
#
[lioness_face_normal]
#ライオネス
「・・・・・・・・・」[p]
#

#&f.name
「････ライオネス？」[p]
#


#&f.name
（み・・・見つめられてる・・・・？どうしたんだろう・・・）[p]
#

[lioness_head_left_x]
[lioness_arms_poripori]
[lioness_face_tere]
#ライオネス
「い、いや、なんでもねぇ・・・きにすんな」[p]
#

#&f.name
「う・・・うん・・・」[p]
#


[endif]







[lioness_arms_normal]
[jump storage="kaiwa/lionkaiwa_new.ks" target=*wadaichoice]
















































