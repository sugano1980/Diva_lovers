


*start

;自由行動７以前


[if exp="f.event_main_14_days>0"]

#&f.name
「ねえ・・・クライストさんのことだけど」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_muzukasii]
#ライオネス
「ああ・・・」[p]
#

#&f.name
「その、どう、思う？」[p]
#


[lioness_head_right_x]
[lioness_eyes_right]
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「・・・・・・・・・・・・」[p]
#


#&f.name
（・・・ライオネス・・・）[p]
#

[lioness_head_left_x]
[lioness_head_above_y]
[lioness_face_normal]
[lioness_eyes_left]

#ライオネス
「正直いやあ、うさんくさくて仕方ねえ」[p]
#
[lioness_head_right_x]
[lioness_eyes_right]

#ライオネス
「まあ俺の本心としては・・・だけどよ」[p]
#

#&f.name
「・・・・」[p]
#
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「だけど、いまんとこ行動みるだけなら、俺らに敵対するつもりはなさそうだし・・・」[p]
#

#&f.name
「そだね・・・」[p]
#

[lioness_face_otikomi]
#ライオネス
「なんでか知らねえけど、
[r]団長もあいつのこと信用してるみたいだしな」[p]
#


#&f.name
「そう、だよね・・・もう全然罪人扱いじゃないっていうか・・・」[p]
#
[lioness_face_metoji]

#ライオネス
「・・・ああ・・・。

[lioness_head_left_x]
[lioness_face_normal]
[lioness_eyes_left]
ま、団長も人を見る目はねえわけじゃないし」[p]
#
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_normal]
#ライオネス
「謎な部分は多いが、今のところは静かに様子見しててもいいかもな」[p]
#

#&f.name
「クライストさんの、あの剣も・・・」[p]
#

[lioness_head_under_y]
[lioness_head_left_x]
[lioness_face_muzukasii]

#ライオネス
「ああ。なんだかんだいいつつ、今の俺らには、あいつの力が必要だからな・・・」[p]
#


#&f.name
「そうだね・・・私たちのために協力してくれるっていうんだし」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス
「ああ・・・」[p]
#



[jump target=*return]


[elsif exp="f.event_main_15_days>0"]

;エルムナード戦争終結後
[chara_mod name="lioness" face="metoji_kutiake"]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「実のところ口先だけなのかと思ってたところもあるんだけどよ・・・」[p]
#

[lioness_face_chottoikari]
#ライオネス
「本当にやりやがった・・・。あのルシアをよ」[p]
#
[lioness_head_left_x]
[lioness_face_normal]
[lioness_eyes_left]

#&f.name
「うん・・・クライストさん、本当にすごいね」[p]
#
[lioness_eyes_right]
#ライオネス
「あいつ、一気に王都の有名人だぜ。こないだなんか街でキャーキャー言われてたな」[p]
#

[lioness_arms_udekumi]
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_mehuse_dai]

#&f.name
「え、そ、そうなの！？」[p]
#

[lioness_head_right_x]
[lioness_face_normal]
#ライオネス
「たまにあるみたいだな。兄貴ほど頻繁じゃねえんだろうが」[p]
#
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_muzukasii]

#ライオネス
「大々的にはあいつがやったって広めてはねえけど、噂で知ってるやつは知ってるしな」[p]
#

#&f.name
「はあ・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「騎士なら完全に英雄扱いだろーしなあ。
[lioness_face_akireru]ま、あいつのことだからそういうのには興味なさそうだけどよ」[p]
#
[lioness_head_right_x]
[lioness_face_normal]
[lioness_eyes_right]


#&f.name
「そ、そうだね・・・」[p]
#

[jump target=*return]

[else]

[lioness_head_normal]
[lioness_head_right_x]
[lioness_face_ha]
#ライオネス
「正直いえば・・・俺はまだなーんとなくうさんくさいんだけどな」[p]
#
[lioness_face_muzukasii]

#&f.name
「そうなの？」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_mehuse_dai]

#ライオネス
「あいつの言うことって、
[r]本気なんだかそうじゃないんだかいまいちわかんねえ」[p]
#

[lioness_face_metoji]
#ライオネス
「すぐニヤニヤしてはぐらかしたりするしよ」[p]
#


#&f.name
（にやにや・・・）[p]
#

[lioness_head_right_x]
[lioness_face_gantobasi]

#ライオネス
「ゾワゾワするようなことばっかりいいやがって・・・」[p]
#

[lioness_head_normal]
[lioness_face_yareyare]


#&f.name
「ぞわぞわ？？」[p]
#

[lioness_head_under_y]
[lioness_face_gantobasi]
#ライオネス
「お前わかんねえのか。あのクッサイ台詞！」[p]
#

[lioness_head_left_x]
[lioness_face_yareyare]
#ライオネス
「こないだはセレにまで・・・なんだか知らねえがトリスタンはぶち切れるし・・・」[p]
#


#&f.name
「クサイの・・・？
[r]う、ううーん・・・確かに、ちょっと恥ずかしいと思うけど・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_akireru]
#ライオネス
「ちょっと、どころじゃねえだろ・・・」[p]
#


[endif]


*return
[jump storage="scenario_2/kaiwa/lionkaiwa_new.ks" target=*wadaichoice]













