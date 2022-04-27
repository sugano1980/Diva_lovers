			
;#クライスト

;[live2d_show name="aho_sei" y=-1.9 x=0.0 scale=4.5]	

[live2d_kra2_touroku]
[live2d_kra2_show]
[eval exp="f.event_main_15_dance_kra_sumi=1"]
#クライスト	
[aho_sei_face_normal]
「あ、いたいた、[name]ちゃん」[p]
#

[aho_sei_head_right_z]		
#&f.name	
「えっ、あの・・・クライストさん？」[p]
#

[aho_sei_head_normal]
[aho_sei_head_under_y]
[aho_sei_head_normal]		
#クライスト	
「探したよー。広いからさ」[p]
#

		
#&f.name	
「あ、あの・・・いいの？」[p]
#

[aho_sei_face_mihiraki]	
#クライスト	
「ん？何が？」[p]
#


[if exp="f.event_epi5_rans_ok!=10"]		
#&f.name	
「陛下の近くにいなくて・・・とか」[p]
#

#クライスト	
「え？なんで俺が近くにいなくちゃなの？」[p]
#
#&f.name	
「えーとそれは・・・一応主賓？みたいな感じだし」[p]
#
[aho_sei_body_under_y]
[aho_sei_arms_udekumi]
[aho_sei_body_normal]
[aho_sei_head_left_z]
[aho_sei_face_smile]
#クライスト	
「関係ないよ、そんなの。ご飯食べたらあとは退屈なだけだし」[p]
#

		
#&f.name	
（クライストさんらしいなあ・・・）[p]
#

[elsif exp="f.event_epi5_rans_ok==10"]	
#&f.name	
「ユリアさんのエスコート役・・・なんじゃ」[p]
#
[aho_sei_body_under_y]
[aho_sei_arms_udekumi]
[aho_sei_body_normal]
[aho_sei_head_left_z]
[aho_sei_face_smile]
#クライスト	
「あ、大丈夫、ちょっとトイレーって言ってきた」[p]
#
#&f.name	
（それって・・・）[p]
#
[endif]



[aho_sei_head_right_x]
[aho_sei_arms_normal]	
[aho_sei_face_normal]
#クライスト	
「それよりさ、なんか楽しそうじゃない？一緒に踊ろうか」[p]
#

		
#&f.name	
「ちょ、ま、まっていきなり・・・」[p]
#

[aho_sei_face_normal_majime]	
#クライスト	
「苦手？こういうの」[p]
#

		
#&f.name	
「そ、そんな自信があるわけじゃ・・・」[p]
#

[aho_sei_body_right_z]
[aho_sei_arms_temae]	
[aho_sei_body_normal]
[aho_sei_face_normal]
[aho_sei_eyes_above]
#クライスト	
「いいよ、俺に任せて」
[aho_sei_eyes_normal]
[aho_sei_face_bisyou_youen]
[p]
#

[live2d_fadeout time=1000]		
#&f.name	
「あっ・・・」[p]
#

[playse storage="hukukosure_onjin.ogg"]
[playbgm storage="butou_ontama.ogg"]
		
[aho_sei_arms_normal]
[live2d_mod name="aho_sei" y=-3.9 scale=7.9]
[aho_sei_mod_idle_dance]
[live2d_fadein time=1000]		
#クライスト	
「上手じゃない？」[p]
#

		
#&f.name	
「そ、そうかな・・・」[p]
#

[aho_sei_head_right_z]
[aho_sei_body_right_z]
[aho_sei_face_smile]		
#クライスト	
「うん、俺なんかよりもずっと」[p]
#

[aho_sei_body_normal]
[aho_sei_head_normal]
#&f.name	
（そういうクライストさんも・・・かなり上手なんですけど・・・一体どこで）[p]
#


[aho_sei_mod_idle_normal_mehuse]
[aho_sei_face_mehuse_warai]		
#クライスト	
「・・・綺麗だね」[p]
#

		
#&f.name	
「えっ・・・ええと・・・この、ドレス？」[p]
#



[aho_sei_mod_idle_normal]
#クライスト	
「違うよ、[name]ちゃん」
[aho_sei_head_right_z]
[aho_sei_face_bisyou_youen]
[p]
#

[aho_sei_head_normal]	
#&f.name	
「そ、それは・・・ドレスとかのおかげだよ」[p]
#

[aho_sei_head_under_y]
[aho_sei_mod_idle_normal_mehuse]	
[aho_sei_face_mehuse]
#クライスト	
「そんなことあるわけないだろ？」[p]
#

[if exp="f.dress_elegant==1"]
[aho_sei_head_normal]
[aho_sei_face_hutuu_warai]
#クライスト	
「もちろんそのドレスも・・・すごく素敵だけど」[p]
#
[kra]
[koukando_up]
[endif]

[aho_sei_head_normal]
[aho_sei_head_right_z]
[aho_sei_face_bisyou_youen]	
#クライスト	
「どんな時でも・・・君は本当に綺麗だよ」[p]
#


[aho_sei_head_normal]
[aho_sei_head_under_y]
[aho_sei_eyes_left]	
[aho_sei_face_normal_majime]
#&f.name	
「・・・あの・・・」[p]
#

[aho_sei_mod_idle_normal_mehuse]
[aho_sei_head_left_x]	
[aho_sei_head_left_z]
[aho_sei_face_mehuse]	
[aho_sei_eyes_normal]
#クライスト	
「俺はずっと見てる。王都の人たちを守って、モンスターの前に立つ君も」[p]
#

[aho_sei_mod_idle_normal]
[aho_sei_head_right_x]
[aho_sei_head_right_z]
[aho_sei_face_normal_majime]
[aho_sei_eyes_right]	
#クライスト	
「エルムナードで、気持ち悪い異形を目の前にして双剣を構える君の姿も・・・その表情も」[p]
#

[aho_sei_head_normal]
[aho_sei_eyes_normal]		
#クライスト	
「今目の前で、驚いてる君の顔も、
[aho_sei_head_right_z]
[aho_sei_body_right_z]
[aho_sei_face_hutuu_warai]
全部が愛おしくて、かわいい」[p]
#

[aho_sei_head_normal]	
[aho_sei_body_normal]	
#&f.name	
「なっ・・・ちょ・・・クライスト、さん・・・？」[p]
#

		
#&f.name	
（い、いきなり・・・ん？でも・・・）[p]
#

		
#&f.name	
「・・・それって・・・他の女の子にも言ってるの？」

[aho_sei_face_normal_majime]
[p]
#

[aho_sei_head_under_y]
[aho_sei_face_tomadoi]		
#クライスト	
「そう思えるの？俺、信用ないなあ」[p]
#

		
#&f.name	
「だって・・・」
[aho_sei_head_normal]
[aho_sei_face_komari]
[p]
#
[aho_sei_eyes_left]
[aho_sei_eyes_normal]
[aho_sei_face_normal]		
#クライスト	
「君にしか言わないよ。
[aho_sei_mod_idle_normal_metoji]
[aho_sei_face_metoji]
だって、他の女の子にはそんなこと、いう必要もないだろ？」[p]
#

		
#&f.name	
「・・・」
[aho_sei_mod_idle_normal]
[aho_sei_face_normal_majime]
[p]
#


[aho_sei_head_right_x]
[aho_sei_body_right_z]
[aho_sei_head_under_y]
[aho_sei_mod_idle_normal_mehuse]	
[aho_sei_face_mehuse]	
#クライスト	
「うん・・・でも仕方ないか。俺はいつも、軽口ばっかり言ってるからね」[p]
#

		
#&f.name	
「クライスト、さん・・・」[p]
#

[aho_sei_face_kunou]		
#クライスト	
「俺の言葉を、信じてくれっては言わない。[aho_sei_face_metoji]でも、今の時間だけは・・・
[aho_sei_head_normal]
[aho_sei_body_normal]
[aho_sei_head_left_z]
[aho_sei_face_komari_warai]
君を独り占めしてもいい、よね？」[p]
#

		
#&f.name	
「クライストさん・・・私」

[aho_sei_head_normal]
[aho_sei_head_under_y]
[aho_sei_face_mehuse_warai]
[p]
#

		
#クライスト	
「・・・何も言わなくていいよ。今はただ、俺に合わせてくれるだけで・・・それだけで、いいよ」[p]
#

[aho_sei_head_normal]
[aho_sei_face_hutuu_warai]	
;寂しげに微笑		
#&f.name	
（・・・クライスト、さん・・・）[p]
#

[live2d_fadeout time=1000]


[fadeoutbgm time=3000]
[anten]		
[bg storage="oukyuu_hall_2_tasogare.jpg"]	
;暗転		


[aho_sei_mod_idle_normal]
[aho_sei_face_normal]
[live2d_fadein time=1000]
#クライスト	
「ありがとう、[name]ちゃん。楽しかった」[p]
#

		
#&f.name	
「クライストさん・・・」[p]
#

[aho_sei_body_under_y]
[aho_sei_arms_udekumi]
[aho_sei_body_normal]
[aho_sei_head_right_z]
[aho_sei_body_right_z]	
[aho_sei_face_bisyou_youen]	
#クライスト	
「君を見つけられてよかったよ。君と一緒じゃないなら、ダンスなんか義務でしかないし」[p]
#

		
#&f.name	
「・・・・・・」[p]
#


[aho_sei_head_normal]
[aho_sei_body_normal]
#クライスト	
「・・・・・・
[aho_sei_face_mehuse_warai]
[w]
[aho_sei_face_normal]
[aho_sei_eyes_right]
ああ俺、そろそろ行かなくちゃ」[p]
#

[aho_sei_head_normal]
[aho_sei_eyes_normal]
[aho_sei_face_hutuu_warai]		
#クライスト	
「・・・・・・それじゃね」[p]
#

		
#&f.name	
「うん」[p]
#
[live2d_fadeout time=1000]




[live2d_fadeout time=1000]
*kra_end
[fadeoutbgm time=1000]
;ダンスすみフラグ
[eval exp="f.event_main_15_dance_kra_sumi=1"]
[live2d_delete_all][live2d_off]

[jump storage="scenario_2/episode/epi6.ks" target=*next_3]



[aho_sei_head_normal]
[aho_sei_body_normal]
[aho_sei_face_normal_majime]
[aho_sei_eyes_left]
[aho_sei_eyes_right]		
#クライスト	
「・・・あのさ、
[aho_sei_eyes_normal]
[aho_sei_arms_normal]
[name]ちゃん」[p]
#

		
#&f.name	
「何？」[p]
#

[aho_sei_face_yokome_majime]		
#クライスト	
「明日・・・なんだけどさ、予定とか、空いてる？」[p]
#


[aho_sei_face_normal_majime]		
[aho_sei_eyes_normal]
#クライスト	
「もしよかったら・・・二人でどこか出かけない？」[p]
#

		
#&f.name	
「え、ええと・・・」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*kra_dance_sel]


*date_no

[live2d_fadein time=1000]
[aho_sei_face_komari_warai]
[aho_sei_eyes_left_above]
#クライスト	
「そっか。そうだよね、ごめんね突然」[p]
#
[aho_sei_head_right_z]
[aho_sei_eyes_right]
[aho_sei_eyes_normal]
		
#&f.name	
「う、ううん・・・こちらこそ、ごめんなさい」[p]
#

[aho_sei_face_normal]		
#クライスト	
「いいよ。
[aho_sei_eyes_right]
ああ俺、そろそろ行かなくちゃ」[p]
#

[aho_sei_head_normal]
[aho_sei_eyes_normal]		
#クライスト	
「それじゃね」[p]
#

		
#&f.name	
「うん」[p]
#
[live2d_fadeout time=1000]
		
#&f.name	
（うーん・・・悪いことしちゃったかな・・・）[p]
#

[jump target=*kra_end]		
			
*date_ok
[eval exp="f.event_main_15_date_kra=1"]

[aho_sei_face_mihiraki]
[live2d_fadein time=1000]
#クライスト	
「本当？
[aho_sei_face_hutuu_bisyou]
嬉しいな・・・ありがとう」[p]
#
[aho_sei_head_under_y]
[aho_sei_head_normal]
		
#&f.name	
「う、うん・・・」[p]
#

[aho_sei_eyes_right]
[aho_sei_head_right_z]		
#クライスト	
「それじゃ、明日の朝、
[aho_sei_head_normal]
[aho_sei_eyes_normal]
部屋まで迎えに行くね」[p]
#

		
#&f.name	
「う、うん！」[p]
#
[aho_sei_face_hutuu_warai]

[live2d_fadeout time=1000]
