


[macro name="hannou_random"]
[message_settei_ad]
[iscript]
tf.hannou = Math.floor( Math.random() * 4) + 1
[endscript]
[endmacro]

[macro name="kra_hannou"]

[hannou_random]

[if exp="tf.hannou==1"]
[aho_head_right_x]
[aho_eyes_right]
#クライスト
「なんだかんだで、混んでるねー」[p]
#
#&f.name
「うん、そうだね」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==2&&f.s_wesuta!=1"]
[aho_eyes_left]
#クライスト
「あ、あの子かわいい。
[aho_eyes_right]
[aho_head_right_x]
ここの店員さんかわいいこが多いね。もしかして選んでるのかな」[p]
#
#&f.name
（クライストさん・・・）[p]


[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]


[elsif exp="tf.hannou==2&&f.place_id==23&&f.s_wesuta==1"]

[aho_face_bisyou_youen]
#クライスト
「卵料理って俺、結構好きだな」[p]
#
#&f.name
「そうなんだ！」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]


[elsif exp="tf.hannou==2&&f.place_hune==1"]

[aho_head_right_x]
[aho_eyes_right]
[aho_face_mehuse]
#クライスト
「・・・むさくるしいなあ・・・」[p]
#
#&f.name
「う、うーん・・・」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==3&&f.sweet_choice==1"]

[aho_face_yokome_warai]
#クライスト
「こういうお店、俺は嫌いじゃないよ」[p]
#
[aho_head_under_y]

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==3&&f.place_id==23&&f.s_wesuta==1"]


[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト
「ここ、お酒は置いてないんだね、きっと飲みたい人もいそうだけど」[p]
[aho_face_yokome]
#
[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==3&&f.place_hune==1"]

[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト
「お酒も置いてあるんだね。
[aho_face_yokome]
でも、甲板で静かに飲みたいな」[p]
#
[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==3]
[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト
「へえ、このお店もお酒の種類多いね。追加で何か頼もうかなあ」[p]
#


[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[elsif exp="tf.hannou==4&&f.krakonkando>49"]
[aho_face_normal_majime]
#クライスト
「・・・・・」[p]
#

#&f.name
「・・・・・」[p]
#

#&f.name
（・・・？見つめられてる？）[p]
#

[aho_face_tomadoi]
#クライスト
「あ、えーと・・・
[aho_face_komari_warai]
[aho_eyes_left]
[aho_eyes_right]
ごめん」[p]
#

#&f.name
（・・・クライストさん？）[p]
#


[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]



[elsif exp="tf.hannou==4"]

#クライスト
「・・・・・」[p]
#

#&f.name
「・・・・・」[p]
#
[aho_eyes_right]
[aho_eyes_left]
[aho_head_right_x]
[aho_head_under_y]
[aho_head_left_x]
[aho_head_above_y]
[aho_eyes_left_above]
#クライスト
「・・・・・」[p]
#

#&f.name
「・・・・・」[p]
#

[aho_head_right_z]
[aho_face_mihiraki]
[aho_head_normal]
#クライスト
「・・・ん？なに？」[p]
#

#&f.name
「あ、ごめん、なんでもないよ」[p]
#


[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]

[endif]






[endmacro]

[macro name="lion_hannou"]
[hannou_random]

[if exp="tf.hannou==1"]

[lioness_face_mehuse_dai]
#ライオネス
「腹減ったな・・・
[lioness_face_yareyare]
やっぱさっきのじゃ足りないかもな・・・
[lioness_head_under_y]
[lioness_face_mehuse_dai]
追加で・・・肉・・・」[p]
#

#&f.name
（肉・・・）[p]
#


[lioness_face_normal]
[lioness_head_normal]
[lioness_eyes_normal]


[elsif exp="tf.hannou==2"]


[lioness_mod_idle_no_move]
[lioness_face_otikomi]
#ライオネス
「なんかこの椅子・・・ちいせえな・・・テーブルも・・・」[p]
#

#&f.name
（体が大きいって、大変なんだな・・・）[p]

[lioness_face_normal]
[lioness_head_normal]
[lioness_eyes_normal]

[elsif exp="tf.hannou==3"]

[lioness_mod_idle_no_move]
[lioness_face_nemunemu]
[lioness_head_under_y]

#&f.name
（眠そう・・・）[p]
#

[lioness_head_normal]
[lioness_arms_udekumi]

[w]
[lioness_head_under_y]
[lioness_face_metoji]
[w]
#&f.name
（ねちゃった？）[p]
#

[lioness_head_normal]
[lioness_face_nemunemu_akubi]
[lioness_face_nemunemu]

[lioness_head_under_y]
[lioness_face_metoji]
[w]
[lioness_head_normal]
[lioness_face_metoji]
[w]
[lioness_head_under_y]
[lioness_face_metoji]
[w]

[lioness_head_normal]


[lioness_arms_normal]
[lioness_face_odoroki]
#&f.name
（あ、おきた）[p]
#
[lioness_head_right_x]
[lioness_head_left_x]


[lioness_mod_idle]
[lioness_face_normal]
[lioness_head_normal]
[lioness_eyes_normal]

[elsif exp="tf.hannou==4&&f.lionkonkando>49"]
#ライオネス
「・・・・・・」[p]

#&f.name
「・・・・・・」[p]
#

#&f.name
（・・・？見つめられてる？）[p]
#

[lioness_face_odoroki_sekimen]
#ライオネス
「あ、
[lioness_face_yokome_otikomi]
いやその・・・悪い」[p]
#
[lioness_head_left_x]

#&f.name
（ライオネス？）[p]
#

[lioness_face_normal]
[lioness_head_normal]
[lioness_eyes_normal]

[elsif exp="tf.hannou==4"]

[lioness_face_ha]
#ライオネス
「どした？人の顔じっと見て」[p]
#
#&f.name
「う、ううん、なんでもないよ」[p]
#


[lioness_face_normal]
[lioness_head_normal]
[lioness_eyes_normal]

[endif]
[endmacro]



[macro name="rans_hannou"]

[hannou_random]

[if exp="tf.hannou==1"]

[rans_head_right_x]
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット
「いつもは食堂だが、
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]
こういった場所で食事をするのもいいものだな」[p]
#

#&f.name
「うん、そうだね！」[p]
#
[rans_head_left_z]
[rans_exp_bisyo]

[w]

[rans_head_normal]
[rans_exp_normal]
[rans_eyes_normal]

[elsif exp="tf.hannou==2"]

[rans_head_right_x]
[rans_eyes_right]
[rans_head_left_x]
[rans_eyes_left]
#ランスロット
「少し混んでいるな、早めにすませたほうがいいか・・・」[p]
#

[rans_head_normal]
#&f.name
「そっか、もしかしたら並んでるかもしれないしね」[p]
#

[w]

[rans_head_normal]
[rans_exp_normal]
[rans_eyes_normal]

[elsif exp="tf.hannou==3"]

[rans_head_above_y]
[rans_head_right_x]
[rans_head_right_z]
[rans_eyes_right]
#ランスロット
「料理はまだこないのか・・・混んでいるせいもあるのか・・・」[p]
#

[w]

[rans_head_normal]
[rans_exp_normal]
[rans_eyes_normal]

[elsif exp="tf.hannou==4&&f.ranskonkando>49"]

#ランスロット
「・・・・・・」[p]
#

#&f.name
「・・・・・・」[p]
#

#ランスロット
「・・・・・・」[p]
#

#&f.name
「・・・・・・」[p]
#
#&f.name
（・・・見つめられてる？）[p]
#

[rans_exp_mihiraki]
#ランスロット
「・・・ああ、
[rans_head_left_x]
[rans_eyes_left]
[rans_exp_komari_warai]
すまない・・・なんでもないんだ」
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
[p]
#

[rans_mod_idle]
[rans_head_right_z]
[rans_exp_bisyo_2]
#&f.name
（・・・？）[p]
#

[rans_head_normal]
[rans_exp_normal]
[rans_eyes_normal]

[elsif exp="tf.hannou==4"]

[rans_exp_mihiraki]
#ランスロット
「・・・どうした？」
[rans_head_right_z]
[rans_exp_sinpai]
[p]
#

#&f.name
「ううん、なんでもないよ」[p]
#
[rans_exp_normal_warai]
[rans_head_normal]
[rans_head_under_y]
[rans_head_normal]


[w]
[rans_head_normal]
[rans_exp_normal]
[rans_eyes_normal]

[endif]

[endmacro]


[return]