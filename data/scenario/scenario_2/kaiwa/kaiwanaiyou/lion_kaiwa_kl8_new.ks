


*start

[if exp="f.event_main_15_days>0"]

#&f.name
（祝賀会に出るのはいいけど・・・）[p]
#


#&f.name
（ライオネスって服持ってるのかな）[p]
#

[lioness_head_right_z]
[lioness_face_ha]
#ライオネス
「・・・なんだよ？」[lioness_head_normal][lioness_face_normal][p]
#


#&f.name
「あの、男の人もそういう服、着るんだよね？」[p]
#

[lioness_head_under_y]
[lioness_head_normal]

#ライオネス
「当たり前だろ、何言ってんだ」[p]
#

#&f.name
「・・・持ってるの？そういうの・・・」[p]
#
[lioness_head_under_y]
[lioness_face_metoji]

#ライオネス
「・・・ああ・・・
[lioness_head_normal]
[lioness_face_normal]
[lioness_eyes_left]
家に帰ればあんだろ、いくらかは」[p]
#

#&f.name
「家・・・」[p]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「ま、しばらく帰ってねえけどな・・・」[p]
#


[elsif exp="disc_num>2&&f.event_main_15_days<0"]

#&f.name
「ライオネス、衣装似合ってたよ」[p]
#
[lioness_face_otikomi]
[lioness_head_right_x]
[lioness_head_under_y]
#ライオネス
「そ・・・そうかよ・・・」[p]
#
#&f.name
「何？」[p]
#
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「俺はもう、ああいう窮屈な服はごめんだ・・・」[p]
#
#&f.name
（似合ってたのになあ・・・）[p]
#


[endif]
[jump storage="scenario_2/kaiwa/lionkaiwa_new.ks" target=*wadaichoice]










































[r]
[r]
[r]
[r]



