

*gareki_event
[fadeoutbgm time=1000]
[live2d_lion_touroku]
[live2d_fadeout time=5]
[live2d_lion_show]
#&f.name
（あ・・・）[p]
#

#街人
「おーい、もっとこっち、こっちだ」[p]
#

#街人
「いやあ重いなあこりゃ。モンスターたちもひどいことしてくれたもんだ」[p]
#

#&f.name
（広場の噴水、モンスターのせいで壊れちゃったんだ・・・他の建物もいくつか壊れて瓦礫が・・・）[p]
#

[live2d_fadein time=1000]
#ライオネス
「なんだお前、こんなとこで」[p]
#

#&f.name
「あ、ライオネス！ライオネスこそどうしたの？」[p]
#

[lioness_head_right_z]
[lioness_head_right_x]
[lioness_eyes_right]
#ライオネス
「手伝いだよ。瓦礫どかすの。力がいる仕事だかんな」[p]
#

[lioness_head_normal]
[lioness_eyes_normal]
#&f.name
「そうなんだ・・・」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス
「建物への被害も、ゼロってわけじゃねえからな。

道に塀の破片だのなんだのが広がってるし、[lioness_head_above_y]
[lioness_head_right_x][lioness_eyes_right]崩れそうな建物も危ねえ」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_eyes_normal]
[lioness_face_yareyare]
#ライオネス
「噴水も壊れちまったし、石畳の道も直さねえと馬車は通れねえわ子供は怪我するわ・・・」[p]
#

[lioness_face_normal]
[lioness_head_normal]
#ライオネス
「街の人たちの有志だけじゃ、全然足りねえからよ。俺もそうだが、騎士団員も何人か手伝いに出てる」[p]
#

#&f.name
（大変そうだなあ・・・確かに、瓦礫は早めにどかさないと危ないし、道とかも早く直さないとだよね」[p]
#

#街人
「ライオネス様！」[p]
#

[lioness_head_left_x]
[lioness_eyes_left]
#ライオネス
「ああ、今いく」[p]
#
[lioness_head_normal]
[lioness_eyes_normal]
#ライオネス
「そんじゃな」[p]
#

[live2d_fadeout time=1000]

#&f.name
（人手が足りないって言ってたよね・・・私になにかできることあるかな）[p]
#

;選択肢
;	よし、私も何か手伝おう
;	他の人に任せたほうがいいよね

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【私に何かできることあるかな】

[glink target=*tetudai_1 text="（よし、私も何か手伝おう）" size=17 width=600 x=65 y=200]
[glink target=*tetudai_2 text="（他の人に任せたほうがいいよね）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]

[s]


*tetudai_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
#&f.name
「力仕事みたいだし、他の人に任せたほうがうまく行くよね」[p]
#
[eval exp="f.event_sub_14[2]=0"]
[jump target=*gareki_end]


*tetudai_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name
「んっ・・・ううー・・・」[p]
#

[playse storage="gara04_macchi.ogg"]
#&f.name
（おっ・・・重い・・・）[p]
#

[quake count=3 time=300 vmax=10]
[playse storage="yokeru_onjin.ogg"]
#&f.name
「えっ・・・ヒャ・・・」[p]
#

#&f.name
（急に軽くな・・・何・・・！？）[p]
#


;画面揺らす
[playse storage="zuza_onjin.ogg"]
[quake count=3 time=500 vmax=60]
#&f.name
（こ、転ぶ・・・！）[p]
#
[quake count=2 time=200 vmax=30]
[playse storage="taorekomu_koukaonlabo.ogg"]
;どさっ
#&f.name
「・・・？」[p]
#
[live2d_lion_show_sekkin]
[lioness_face_akireru]
[live2d_fadein time=500]
[playse storage="huku_koukaonlabo.ogg"]

#ライオネス
「お前、一人で何やってんだよ」[p]
#

#&f.name
「ライオネスっ・・・」[p]
#

[lioness_face_normal]
[lioness_eyes_left]
#ライオネス
「力仕事は俺らにまかせとけ」[p]
#
[lioness_eyes_normal]
#&f.name
「で、でも・・・」[p]
#


#ライオネス
「・・・ああ、
[lioness_head_left_x]
[lioness_head_left_z]
[lioness_face_normal]
[lioness_eyes_left]
あっちで炊き出しやってっから、それの手伝いしてこいよ」[p]
#

[lioness_eyes_normal]
[lioness_head_right_x]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#&f.name
「炊き出しって・・・あ・・・」[p]
#

[lioness_head_normal]
#&f.name
（噴水のところにいつの間にか、女の人たちが・・・。何か作って・・・あれは、パンとスープ？）[p]
#

[lioness_head_under_y]
[lioness_head_normal]

#ライオネス
「家が壊されて困ってる連中のために集まって炊き出しやってんだ」[p]
#

[lioness_eyes_right]
[lioness_arms_udekumi]
#ライオネス
「お前にはあっちのほうが向いてる」[p]
#

#&f.name
（う・・・炊き出しが嫌なわけじゃないけど・・・
[lioness_eyes_normal]
私だって・・・）[p]
#

#&f.name
「わ、私だって少しは力あるよ？普通の女の人よりは」[p]
#

[lioness_arms_kosinite_right]
[lioness_arms_kosinite_left]
[lioness_head_right_z]
[lioness_face_sinnpai]
#ライオネス
「そうでも、俺らは炊き出しなんかできねえ。女には女にしかできねえことがあんだろ？」[p]
#

[lioness_head_normal]
#&f.name
「・・・」[p]
#
[lioness_arms_normal]
[lioness_face_odoroki]
[lioness_head_under_y]
[lioness_head_right_x]
[lioness_face_otikomi]
[lioness_head_left_x]
#ライオネス
「ああ・・・その・・・。気分悪くしたなら謝る。だけどよ・・・」[p]
#

[lioness_head_normal]
[lioness_face_yokome_otikomi]
#ライオネス
「お、お前に力がないとか言ってるわけじゃなくてよ・・・もうちょっと、頼れよ、って・・」[p]
#

#&f.name
「え・・・？」[p]
#

[lioness_face_tere]
[lioness_eyes_right]
[lioness_eyes_left]
#ライオネス
「う・・・と、とにかくだな、お前はあっちだ、ここは俺にま、まかせろ、
[lioness_head_above_y]
[lioness_head_right_x]
早く行け！」[p]
#
[live2d_fadeout time=500]
[playse storage="dash-gravel1_koukaonlabo.ogg"]
#&f.name
「ちょっ・・・」[p]
#

;#ライオネスいなくなる
[stopse]
#&f.name
「もう・・・一体なんなんだろ・・・」[p]
#

;暗転
[fadeoutbgm time=1000]
[anten]
[if exp="f.irain_move==1"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

[playse storage="niru_tairakomori.ogg"]
#&f.name
「スープのおかわりはこっちですよー！ちゃんと並んでくださいね」[p]
#

#&f.name
（結構並んでるなあ・・・これだけみんな困ってるってことなんだよね・・・）[p]
#

#&f.name
（クライストさんがいてくれたおかげで、被害はある程度抑えられたんだと思ってたけど、それでもやっぱり・・・）[p]
#
[stopse]
#おばさん
「[name]ちゃん、[name]ちゃんもお腹すいただろ？これ、食べておいでよ」[p]
#

#&f.name
「え？でも・・・私たちは本部でご飯もあるし・・」[p]
#

#おばさん
「そんな遠慮しなくってもいいよ。自分たちだけ食べてるのも心苦しいからさ」[p]
#

#おばさん
「あ、それとこれもね」[p]
#

[playse storage="huku_koukaonlabo.ogg"]
#&f.name
「これ・・・？」[p]
#

#おばさん
「これは、ライオネス様のぶんさ。向こうでひとりで頑張ってくださってるからね」[p]
#

;#ライオネス、片付けの音
[playse storage="garabin_macchi.ogg"]
#&f.name
（あ・・・ほんとだ）[p]
#


#おばさん
「ふたりで食べておいでよ。ここはあたしらがやっておくから」[p]
#

#&f.name
「あ・・・ありがとうございます」[p]
#

#&f.name
（ふたりで・・・かあ）[p]
#

;暗転
[anten]

[if exp="f.irain_move==1"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]
[playse storage="walk-gravel1_koukaonlabo.ogg"]
#&f.name
「ライオネス！」[p]
#
[stopse]

[live2d_fadein time=1000]

[lioness_face_ha]
#ライオネス
「あ？なんだお前それ。街の人たちのもんだろ。俺らは・・・」[p]
#

[lioness_face_normal]
#&f.name
「おばさんが、食べてって。パンもこんなに」[p]
#

[lioness_arms_poripori]
[lioness_face_mehuse_dai]
[lioness_eyes_right]
#ライオネス
「なんかわりいな・・・」[p]
#

[lioness_arms_normal]
[lioness_head_right_x]
[lioness_head_normal]
[lioness_eyes_normal]
#&f.name
「でも・・・せっかくなんだもん、もらっておこうよ。お腹、すいてるでしょ」[p]
#


[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_metoji]
#ライオネス
「・・・まあな・・・
[lioness_head_left_z]
[lioness_face_normal]
[lioness_eyes_right]
ちょっと休憩するか」[p]
#

[lioness_eyes_normal]
#&f.name
「うん！」[p]
#

[live2d_fadeout time=1000]


[playse storage="huku_koukaonlabo.ogg"]
#&f.name
「焼きたてだあ・・、美味しい！」[p]
#

[live2d_lion_show_sekkin]
[lioness_face_mehuse_dai]
[live2d_fadein time=1000]
#ライオネス
「・・・・・・」[p]
#
[lioness_eyes_left]

#&f.name
（えーと・・・。珍しく無口だけど・・・）[p]
#

#&f.name
「ねえ、ライオネス」[p]
#
[lioness_face_normal]
[lioness_eyes_normal]
#ライオネス
「あぁ・・・？」[p]
#

#&f.name
「パン、おいしいね」[p]
#

[lioness_head_right_x]
[lioness_eyes_right]
#ライオネス
「そうだな」[p]
#

#&f.name
「・・・」[p]
#

[lioness_head_normal]
[lioness_face_mehuse_dai]
#ライオネス
「・・・」[p]
#

#&f.name
（何だろう・・・ライオネスとはずっと前から一緒にいるのに・・・）[p]
#

#&f.name
（なんか・・・居心地悪いな・・・）[p]
#

#&f.name
「な、なんかしゃべってよ」[p]
#

[lioness_head_right_z]
[lioness_face_ha]
#ライオネス
「・・・はあ？食ってんだ。しゃべれるわけねえだろ」[p]
#

[lioness_head_normal]
[lioness_face_wakewakaran]
#&f.name
「しゃべってるじゃない！」[p]
#

[lioness_head_under_y]
[lioness_head_right_x]
[lioness_eyes_right]
[lioness_face_mehuse_dai]
#ライオネス
「・・・・・・」[p]
#

#&f.name
「ライオネス・・・？」[p]
#

#ライオネス
「・・・」[p]
#

#&f.name
（どうしたんだろう・・・ぼーっとして・・・何か、考え込んでる・・・？）[p]
#

[lioness_eyes_left]
[lioness_head_left_x]
#ライオネス
「・・・・・・」[p]
#

[lioness_eyes_under]
[lioness_head_normal]
[lioness_head_under_y]
#ライオネス
「・・・・・・」[p]
#

[lioness_face_metoji]
#ライオネス
「・・・ごちそーさん。作業に戻るわ」[p]
#

[playse storage="hukukosure_onjin.ogg"]
[live2d_fadeout time=1000]
[live2d_mod name="lioness" y=-1.5 x=0.0 scale=3.9]
[lioness_face_normal]
[live2d_fadein time=1000]
#&f.name
「もういいの？まだ残って・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「いい。お前が食うか、
[lioness_face_normal]
[lioness_eyes_right]
[lioness_head_right_x]
[lioness_head_right_z]
そのへんのガキどもにでも分けてやれ」[p]
#

#&f.name
（ライオネス・・・どうしたんだろう。いつもと様子が・・・）[p]
#
;a聞いてみる：b作業に戻る

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【いつもと様子が違うけど・・・】

[glink target=*gareki_1 text="（聞いてみる）" size=17 width=600 x=65 y=200]
[glink target=*gareki_2 text="（作業に戻る）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]
[s]


*gareki_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]

#&f.name
（・・・でも、きっと当然だよね。街がこんな状態じゃ・・・）[p]
#

#&f.name	
（私もがんばらなくちゃ！）[p]
#
;このままラストまで飛ぶ
[jump target=*gareki_last]
	

*gareki_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「あの・・・どうしたの、ライオネス」[p]
#

[live2d_lion_mod_sekkin]
[lioness_eyes_normal]
[live2d_fadein time=1000]
#ライオネス	
「・・・ああ？」[p]
#

#&f.name	
「いつもとなんか違うから・・・」[p]
#

[lioness_head_left_x]
[lioness_head_under_y]
[lioness_eyes_under]
#ライオネス	
「・・・別に、同じだろ？」[p]
#

#&f.name	
「違うよ！なんかぼーっとしてるし、パンだって全然食べないし」[p]
#

[lioness_head_normal]
[lioness_eyes_normal]
#ライオネス	
「・・・」[p]
#

#&f.name	
「ど、どうしたのかなって・・・し、心配になって・・・」[p]
#

[lioness_face_yareyare]
#ライオネス	
「・・・はあ・・・」[p]
#

[playbgm storage="rakuyou_ontama.ogg"]
[lioness_eyes_right]
#ライオネス	
「・・・こんなとこで管巻いたって仕方ねえだろ・・・」[p]
#

#&f.name	
「ライオネス・・・？」[p]
#

[lioness_arms_atamanite_right]
[lioness_head_under_y]
[lioness_eyes_under]
#ライオネス	
「あーだこーだ言う前に、やんなきゃなんねえことは山ほどある」[p]
#

#&f.name	
「そ、それはそうだけど・・・でも・・・」[p]
#

[lioness_arms_normal]
[lioness_face_metoji]
#ライオネス	
「はあ・・・」[p]
#

[lioness_head_right_x]
[lioness_head_right_z]
[lioness_eyes_right]
#ライオネス	
「・・・なんも、できなかったな、ってよ・・・」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
#&f.name	
「え？」[p]
#

[lioness_face_mehuse_dai]
#ライオネス	
「・・・街の中のもん、家も道もこの噴水だって、みんなが苦労して作ったってのによ」[p]
#

[lioness_face_normal]
[lioness_eyes_right]
#ライオネス	
「モンスターどもが押し寄せたら、この通りだ。あっけないもんだな」[p]
#

[lioness_head_right_x]
[lioness_head_left_x]
[lioness_face_mehuse_dai]
#ライオネス	
「こんなん、見るたびよ・・・俺らはなんのためにいるのか、って・・・」[p]
#

[lioness_head_normal]
#&f.name	
「だけど、異形は倒せたし、カーニバルのときだってモンスターを追い払えたし・・・」[p]
#

[lioness_face_sinnpai]
#ライオネス		
「・・・そうじゃねえんだよ。被害はそれほどなくて済んだとか、そんなのは全体で見た話だろ」[p]
#

#&f.name		
「あ・・・」[p]
#

[lioness_head_under_y]
[lioness_face_yokome_otikomi]
#ライオネス		
「街の人たちは、そうじゃねえ・・・」[p]
#
;a#ライオネス・・・優しいよね
;b大丈夫、またやり直せばいいよ。何度でも。	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネス・・・】

[glink target=*lioness_h1 text="（ライオネス・・・優しいよね）" size=17 width=600 x=65 y=200]
[glink target=*lioness_h2 text="（大丈夫、またやり直せばいいよ。何度でも）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]
[s]



*lioness_h2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
#&f.name	
「街の人たちだって、今頑張ってるんだもの。また元どおりになって、みんな元気になるよ」[p]
#

[live2d_fadein time=1000]
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_otikomi]
#ライオネス	
「[name]・・・」[p]
#

#&f.name	
「ねっ」[p]
#

[lioness_mod_idle_no_move]
[lioness_face_odoroki]
[lioness_eyes_normal]
[lioness_face_warai]
[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	
「・・・そだな、頑張らないとな」[p]
#

#&f.name	
「うん！」[p]
#
[lioness_mod_idle]
[live2d_fadeout time=1000]
[fadeoutbgm time=1000]
[eval exp="f.event_sub_14_sumi[2]=1"]
[eval exp="f.event_sub_14[2]=0"]
[jump target=*gareki_last]
	

*lioness_h1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_sub_14_mother_kaiwa=1"]
[eval exp="f.event_sub_14_sumi[2]=1"]
[eval exp="f.event_sub_14[2]=0"]
#&f.name	
「ライオネス・・・優しいよね」[p]
#

[live2d_fadein time=1000]
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_odoroki]

#ライオネス	
「あ・・あぁっ？？な・・・」[p]
#

[lioness_face_tere]
#ライオネス	
「な・・・なに馬鹿いってんだ、俺は・・・

[lioness_head_right_x]
[lioness_head_left_x]
だ、だいたいなんで・・・」[p]
#

#&f.name	
（照れてる・・・？）[p]
#


#&f.name	
「だって・・・町の人の気持ち、考えて、そういうこと言ったんでしょ」[p]
#
[lioness_head_normal]
[lioness_face_sinnpai]
#ライオネス	
「そ、それはあ、当たり前じゃねえかよ・・・だ、誰だって・・・」[p]
#

#&f.name	
「誰だって、できることじゃないよ、きっと」[p]
#

[lioness_head_right_x]
[lioness_face_tere]
#ライオネス	
「あ、ああー、そうかよっ」[p]
#

[lioness_face_odoroki_sekimen]
#ライオネス	
「だ、だからよ、さ、さっさと片付けちまおうぜって言ってんだ、ほ、ほらお前も手伝えよ！」[p]
#

#&f.name	
「は、はい！」[p]
#
[lioness_head_right_x]
[lioness_face_tere]
[lioness_face_mehuse_dai]
[lioness_face_metoji_warai]
[stopbgm]
[playse storage="za_macchi.ogg"]
	
;※ここからa,b共通部分
#？？	
「なんだあ？そこにいるのはライオネスじゃないか？」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_odoroki]

#&f.name	
「えっ」[p]
#

[lioness_face_ikari]
#ライオネス	
「・・・」[p]
#

#&f.name	
（ライオネス・・・睨んでる？この人たち・・・格好からすると、王宮騎士？）[p]
#

#王宮騎士	
「おいおい、町がこんなときに呑気にデートか？」[p]
#

[lioness_face_donari]
#ライオネス	
「ちげえよ。これのどこがデートだ。[lioness_face_ikari]ふざけんな」[p]
#


#王宮騎士	
「へえ・・・言うじゃねえか、『落ちこぼれ』が」[p]
#
[lioness_face_odoroki]
[playbgm storage="chinkou_ontama.ogg"]

[lioness_face_otikomi]
[lioness_head_right_x]
[lioness_head_under_y]
#&f.name	
（落ちこぼれ・・・？）[p]
#

#ライオネス	
「っ・・・」[p]
#

#王宮騎士	
「名門の家に生まれると苦労するよなぁ。家の恥をさらすわけにはいかねえもんなあ？そうだろ？」[p]
#

[lioness_face_yokome_otikomi]
#ライオネス	
「っ・・・」[p]
#

#王宮騎士	
「王宮騎士にもなれなかったどころか、双剣の扱いもろくにできねえ。そりゃあ出来損ない呼ばわりもされるよな」[p]
#
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_gantobasi]
#ライオネス	
「・・・てめえ・・・」[p]
#

#王宮騎士	
「ウェルム団長もお前みたいなクズが息子じゃ大変だよな。本当にランスロット様と血がつながってんのか？」[p]
#

#王宮騎士	
「案外、『母親』は違ってたりしてなあ」[p]
#
[lioness_face_odoroki]
#&f.name	
（ひどい・・・！）[lioness_face_otikomi][p]
#
[lioness_face_ikari]
#ライオネス	
「・・・っ！！」[p]
#

[live2d_fadeout time=5]
	
;	見かねた私が、騎士たちに抗議しようとしたそのとき―。
;	鈍い音が響いた。#ライオネスが騎士のひとりを殴り飛ばしたのだ。
;	吹っ飛ばされた騎士のひとりが地面に仰向けに倒れる。口の端から血が流れているのが見え;た。
;	私は目を見開き―肩で息をしている#ライオネスを見た。
;	彼の握り締めた拳が・・・震えている。
[stopbgm]
[playse storage="naguru_koukaonlabo.ogg"]
[quake count=5 time=300 vmax=80]
[image layer=3 page=fore storage="siro.jpg" name="siro" x=0 y=0 time=50]
[free name="siro" layer=3] 
[image layer=3 page=fore storage="siro.jpg" name="siro" x=0 y=0 time=50]
[free name="siro" layer=3] 

#王宮騎士	
「ぐっ・・・ぐわああ！！」[p]
#

[playse storage="taoreru_koukaonlabo.ogg"]

[lioness_mod_idle_no_move]
[live2d_fadein time=1000]
[lioness_breath]
#ライオネス	
「っ・・・はあっ・・・[lioness_breath]はあっ・・・」[p]
#

#&f.name	
（ライオネス・・・）[p]
#

[playse storage="za_macchi.ogg"]
#王宮騎士	
「こ・・・このやろ・・・できそこないのくせに・・・」[p]
#

[lioness_face_gantobasi]
#ライオネス	
「っ・・・・」[p]
#

#王宮騎士	
「くっそ・・・今のこと、絶対にウェルム団長に報告してやるからな！」[p]
#
[playse storage="dash-gravel1_koukaonlabo.ogg"]
#&f.name	
（王宮騎士にも、いろんな人がいるんだろうけど・・・これじゃその辺のチンピラと変わらない気もする・・・）[p]
#
[stopse]

#ライオネス	
「っ・・・。
[lioness_head_under_y]
[lioness_face_otikomi]
・・・・・・・・・・」[p]
#

#&f.name	
「・・・ライオネス・・・」[p]
#


[lioness_face_yokome_otikomi]
#ライオネス	
「・・・[name]・・・」[p]
#

[lioness_breath]
[lioness_face_yareyare]
#ライオネス	
「はあ・・・」[p]
#

[lioness_face_akireru]
#ライオネス	
「・・・格好悪いとこ・・・見られちまったなあ・・・」[p]
#

#&f.name	
（ライオネス・・・）[p]
#

[lioness_head_right_x]
[lioness_face_otikomi]
#ライオネス	
「わりい・・・」[p]
#

#&f.name	
「あれは、あの王宮騎士の人たちが、悪いよ・・・。あんな、こと・・・」[p]
#

[playbgm storage="shuuen_musmus.ogg"]
[lioness_head_right_x]
[lioness_head_left_x]
#ライオネス	
「俺をバカにする奴なんか、王宮騎士には多い。
[lioness_face_yokome_otikomi]
なんたって、俺は・・・親父や兄貴と違って、王宮騎士団にすら入れなかったんだからな・・・」[p]
#

#&f.name	
「ライオネス・・・」[p]
#

[lioness_face_normal]
[lioness_breath]
#ライオネス	
「何心配そうな顔してんだ・・・
[lioness_eyes_right]
いつものことだ」[p]
#

[lioness_eyes_normal]
#&f.name	
「でも・・・」[p]
#

[lioness_head_under_y]
#ライオネス	
「・・・・・・」[p]
#

[fadeoutbgm time=3000]
[lioness_face_otikomi]
#ライオネス	
「・・・けど、あいつら・・・お袋の、ことまで・・・」[p]
#

#&f.name	
「え・・・」[p]
#

[lioness_face_metoji]
#ライオネス	
「・・・なんでもねえ。
[lioness_head_normal]
[lioness_face_normal]
とにかく、いきなりあんな、わりい」[p]
#

#&f.name	
「う、ううん、でも・・・」[p]
#

[lioness_head_right_x]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
[lioness_eyes_right_under]
#&f.name	
（・・・そうだ、さっき『母親』って・・・）[p]
#

#ライオネス	
「・・・」[p]
#

#&f.name	
（辛そう・・・）[p]
#

#ライオネス	
「・・・」[p]
#

#&f.name	
（何か言葉をかけてあげたいけど・・・）[p]
#

#街人	
「ライオネス様・・・」
[lioness_eyes_normal]
[lioness_face_odoroki]
[lioness_head_normal]
[p]
#

#&f.name	
（あ・・・）[p]
#
[lioness_head_under_y]
[lioness_face_otikomi]
#ライオネス	
「・・・っ・・・・・・
[lioness_head_right_x]
[lioness_head_left_x]
申し訳ありません、俺・・・」[p]
#

#&f.name	
「あ、あの！王宮騎士の人が、ライオネスに酷い言葉を言ったんです・・・だから、ライオネスは・・・」[p]
#

[lioness_head_normal]
[lioness_face_sinnpai]
#ライオネス	
「[name]、言い訳はいい。黙ってろ」[p]
#

#&f.name	
「だけど・・・」[p]
#

[lioness_head_under_y]
[lioness_face_otikomi]
#ライオネス	
「・・・いいんだ・・・どんな理由でも、殴ったのは事実なんだからな」[p]
#

#&f.name	
「ライオネス・・・」[p]
#

[lioness_mod_idle_no_move]
[lioness_face_metoji]
#ライオネス	
「・・・すんませんでした・・・！」[p]
#

#街人	
「・・・」[p]
#

#街人	
「・・・」[p]
#

;笑い声
[playse storage="kansei.ogg"]

[lioness_face_odoroki]
#&f.name	
（えっ？！）[p]
#

#街人	
「いっやあ！すかっとしたよ！」[p]
#

#&f.name	
「あ・・・あの・・・？」[p]
#

#街人	
「いや、俺らもあいつら王宮騎士団の連中にはホントうんざりしてたとこなんだよ」[p]
#

#街人	
「そうそう、今日ライオネス様が一発やってくれて、すっきりした」[p]
#

#街人	
「あいつら横暴なんだよ、こないだなんか、うちの娘が襲われかけてね・・・」[p]
#

[lioness_face_normal]
#街人	
「酒場で酔っ払って他の客や店員にいちゃもんはつけるし、最悪だよ」[p]
#

#&f.name	
（確かに・・・あんななら何をやらかしてもおかしくないような気が・・・）[p]
#

[lioness_mod_idle]
[lioness_head_under_y]
[lioness_head_right_x]
[lioness_eyes_right]
[playbgm storage="shuuen_musmus.ogg"]
#ライオネス	
「・・・地方騎士団は、王宮騎士団のやることには口出しできねえ」[p]
#

#&f.name	
「ライオネス」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
#ライオネス	
「・・・だから、やりたい放題なんだよ」[p]
#

#&f.name	
「く、口出しできないって・・・でも、見回りや取締りならやってるよ？王宮騎士の人が連れてかれるの見たことあるし」[p]
#

[lioness_face_mehuse_dai]
#ライオネス	
「馬鹿だな・・・お前は・・・そんなん、形だけに決まってんだろ」[p]
#

#&f.name	
「えっ・・・」[p]
#

#&f.name	
（形だけ！？）[p]
#

[lioness_head_left_x]
[lioness_eyes_left]
[lioness_face_normal]
#ライオネス	
「実際は、最終的に見逃されてるのがほとんどだ。
[lioness_eyes_normal]
罪にはならねえよ」[p]
#

#&f.name	
「そ・・・そんな・・・それなら、王宮騎士の人たちは何をしてもいいってことなの？」[p]
#

[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス	
「まあ・・・有体に言えばそういうことになるだろうな」[p]
#

[lioness_head_right_x]
[lioness_eyes_right]
#ライオネス	
「・・・あいつらは特別扱いなんだよ。貴族って身分の連中はな・・・」[p]
#

[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_metoji]

#ライオネス	
「みんながみんな、兄貴のようなやつとは限らねえんだ・・・
[lioness_head_under_y]
親父だって裏で何やってるか・・・」[p]
#

#&f.name	
「え・・・」[p]
#

#&f.name	
（ウェルム王宮騎士団長が・・・？）[p]
#

[lioness_head_normal]
[lioness_face_normal]
#ライオネス	
「お前もあいつらには気をつけろよ。目つけられるとまずいことになりかねねえからな」[p]
#

#&f.name	
「う・・・うん・・・」[p]
#

[lioness_head_under_y]
[lioness_head_right_x]
[lioness_eyes_right]
#&f.name	
（私が地方騎士団に来る前は、王宮で暮らしてたから・・・楽しい思い出もあるんだけど）[p]
#

#&f.name	
（でも、さっき見たところだと・・・きっとライオネスの言うとおり、警戒するに越したことはないんだよね・・・）[p]
#

[lioness_head_left_x]
[lioness_eyes_left]
#&f.name	
（私は子供だったから、何も知らなかったのかな・・・）[p]
#

[fadeoutbgm time=1000]

[lioness_head_right_x]
[lioness_head_above_y]
[lioness_eyes_right]

#ライオネス	
「さあて、そろそろ噂話やめさせねえと、まためんどくせえことになりそうだな」[p]
#

#&f.name	
（そ、そうだよね・・・聞かれたら大変なことに）[p]
#

[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_otikomi]
#&f.name	
（でも・・・）[p]
#

[lioness_face_normal]
[lioness_eyes_normal]
#街人	
「なあまたやってくれよ[lioness_eyes_right]
[lioness_head_right_x]
ライオネス様！バシッとさ！！」[p]
#
[lioness_face_mehuse_dai]
;#ライオネスの表情
#&f.name	
（ライオネス・・・）[p]
#

[live2d_fadeout time=1000]
[anten]
[if exp="f.irain_move==1"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

[live2d_fadein time=1000]
;暗転
[lioness_head_normal]
[lioness_face_normal]
#ライオネス	
「ようやく落ち着いたな・・・
[lioness_arms_udekumi]
さて、作業再開するぞ」[p]
#

[lioness_arms_normal]
[lioness_head_right_x]
[lioness_face_sinnpai]
[lioness_eyes_left]
#ライオネス	
「・・・心配、かけたな」[p]
#

#&f.name	
「ううん・・・」[p]
#
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_mehuse_dai]
;ライオネスの表情、#ライオネス退場
#&f.name	
（・・・）[p]
#

;会話追加
[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 15"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]


[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 14"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 21"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[live2d_fadeout time=1000]
*gareki_last
[anten]
[if exp="f.irain_move==1"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]


#街人	
「いやあ、本当に助かりまして、ありがとうございます。またよろしくお願いします」[p]
#

#&f.name	
「いつでも力になるんで、声かけてくださいね」[p]
#

#街人	
「ありがとうございます。あ、これよかったら、今日のほんのお礼です。受け取ってください」[p]
#

[recipe_get_2]
#&f.name	
「ありがとうございます！」[p]
#

[live2d_mod name="lioness" y=-1.5 x=0.0 scale=3.9]
[lioness_arms_udekumi]
[live2d_fadein time=1000]
#ライオネス	
「俺はもうちょっと片付けてから帰るわ。じゃな」[p]
#

#&f.name	
「うん・・・無理しないで、頑張ってね」[p]
#
[lioness_arms_normal]
[lioness_face_warai]
[lion]
[koukando_up]
[live2d_fadeout time=1000]
[town_trust_up]
;#ライオネス表情、退場
;街の人の信頼度アップ
*gareki_end
[jump storage="scenario_2/map_event/hunsui_event_macro.ks" target=*gareki_end]



*yomikikase_event

#&f.name	
「あれ、なんだか子供たちが集まって・・・」[p]
#

#子供	
「ねえ、早く早く、次のお話なーに？」[p]
#

#街人	
「わかったわかった、さあ、次の絵本は・・・」[p]
#

#&f.name	
「本の読み聞かせしてるんだね、楽しそう」[p]
#

#街人	
「やあ、[name]ちゃん」[p]
#

#&f.name	
「こんにちは、子供たちすっごく喜んでますね」[p]
#

#子供	
「あ！騎士のお姉ちゃんだ！」[p]
#

#子供	
「ねえねえ、お姉ちゃんも読んでよ！」[p]
#

#子供	
「読んで！読んで！」[p]
#

#&f.name	
「えっ・・・ええ・・・」[p]
#

#街人	
「はは、もしよかったら、読んでやってくれませんか。子供たちも言ってますし」[p]
#

#&f.name	
「えーと・・・」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どうしよう？】

[glink target=*yomi_1 text="（読んであげる）" size=17 width=600 x=65 y=200]
[if exp="f.friend>0"]
[glink target=*yomi_2 text="（仲間に読んでもらう）" size=17 width=600 x=65 y=260]
[endif]
[glink target=*yomi_3 text="（やっぱりやめとく）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*yomi_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]


#&f.name	
「わかった！じゃあ読むね！」[p]
#

#子供	
「やったー！！」[p]
#

[anten]

[if exp="f.irain_move==1"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

#子供	
「面白かったよお姉ちゃん！！ありがとう！！」[p]
#

#街人	
「子供たちも大喜びです。ありがとうございます」[p]
#

[town_trust_up]


[jump target=*yomikikase_owari]


*yomi_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*friend_sel]


*yomi_3
[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]


#&f.name
「すみません、そういうのはちょっと・・・」[p]
#

#街人
「そうですか・・・こちらこそ無理を言ってすみませんでした」[p]
#	

[jump target=*yomikikase_owari]




*friend_sel
	
;仲間に読んでもらう
[config_true]
[if exp="f.friend==2"]

*lion


[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_odoroki]
#ライオネス	
「えっ・・・お、おい、まじか・・・」[p]
#

#子供	
「あっ！大男だ！」[p]
#

#子供	
「巨人だ！カーニバルの時、でっかい剣持ってたやつだ！」[p]
#

#&f.name	
（巨人・・・）[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「っ・・・こいつら・・・」[p]
#

#子供	
「巨人！読んでよ！！」[p]
#

#子供	
「巨人！！」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「っ・・・」[p]
#

#街人	
「あ、あのー・・・ライオネス様、無理には・・・」[p]
#
[lioness_tatie_akireru]
#ライオネス	
「あー！！わーったわーったから座れお前ら！」[p]
#

#&f.name	
（え！読むんだ・・・）[p]
#
#子供	
『わーい！！」[p]
#
[chara_hide_all]
[anten]

[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[elsif exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]


#子供	
「ありがとな巨人！！へたくそだったけど面白かったぜ！」[p]
#

#子供	
「巨人！へたくそ！」[p]
#

[lioness_tatie_show]
[lioness_tatie_chottoikari]
#ライオネス
「こ・・・こいつら・・・」[p]
#

#&f.name	
「あ、あはは・・・」[p]
#

#街人	
「こら、お前たち、読んでもらってそんなことを言うんじゃない！！」[p]
#

[lioness_tatie_udekumi]
#街人	
「すみませんねえ、お忙しい中ありがとうございました」[p]
#
[chara_hide_all][chara_off]

[town_trust_up]

[jump target=*yomikikase_owari]


[elsif exp="f.friend==1"]

*rans	

[rans_tatie_touroku]
[rans_tatie_show]

[rans_tatie_metoji]
#ランスロット	
「・・・わかった。あまり得手ではないのだが・・・仕方ない」[p]
#

#女の子	
「きゃーランスロット様だ！」[p]
#

#女の子	
「イケメンに読んでもらえるなんてついてるー！」[p]
#

#&f.name	
（え・・・えええ・・・）[p]
#

[rans_tatie_yokome]
#ランスロット	
「・・・・・・」[p]
#

[chara_hide_all]
[anten]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[elsif exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]

;暗転
#街人	
「ありがとうございました。さすがはランスロット様。なんでもそつなくこなされるのですね」[p]
#

[rans_tatie_show]
[rans_tatie_normal_warai]
#ランスロット	
「ああいえ・・・喜んでもらえたなら何よりです」[p]
#

#女の子	
「ランスロット様！また読んでくださいね！」[p]
#

#女の子	
「いつでもだいかんげいなんで！」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット	
「は、はは・・・ありがとう」[p]
#
[chara_hide_all][chara_off]
[town_trust_up]
[jump target=*yomikikase_owari]



[elsif exp="f.friend==3"]

*kra


[kra_tatie_touroku]
[kra_tatie_show]

#クライスト	
「俺？うん、いいよ」[p]
#

[kra_tatie_bisyou_youen]
#&f.name	
（あっさり引き受けてるけど・・・大丈夫なのかな）[p]
#

#子供	
「お兄ちゃん、これ読んで！僕これがいい！！」[p]
#

#子供	
「こっちだよ、これがいい！」[p]
#

#子供	
「お兄ちゃん、お祭りの時に怪我、治してくれてありがとう！」[p]
#

#子供	
「ねえねえ、お兄ちゃんって魔法使いなの？どんな怪我もすぐ治しちゃうんだもん」[p]
#



#&f.name	
（すごい人気・・・カーニバルの時に、手当てした子たちなのかな？）[p]
#

[kra_tatie_smile]
#クライスト	
「さあ、どうかな？でも元気そうだね、よかった」[p]
#

[kra_tatie_yokome]
#クライスト	
「じゃあどんな本を読もうか。ほら喧嘩しないで、順番だよ」[p]
#

#子供	
「並ぶ！！」[p]
#

#子供	
「俺も！」[p]
#
#子供
「僕も！」[p]
#
#子供
「私も！」[p]
#

#&f.name	
（そして扱いが上手・・・）[p]
#
[chara_hide_all]
[anten]

[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[elsif exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]


#子供	
「ありがとう、お兄ちゃん！！また読んでね！」[p]
#

#子供	
「面白かったー！」[p]
#

#街人	
「驚きました。お上手でいらっしゃるんですね。カーニバルの時にも、お世話になったようで・・・」[p]
#

[kra_tatie_show]
[kra_tatie_metoji]
#クライスト	
「大したことはしていません。怪我も元々、擦り傷程度でしたし・・・本は単に読んだだけで」[p]
#

[kra_tatie_normal]
#街人	
「それでも子供たちは本当に喜んでいました。ありがとうございます」[p]
#

#街人	
「少し怪我を手当てしただけで子供たちがあんな風に懐くなんて、あなたは心根の優しい人なのでしょう」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・いえ、俺は・・・」[p]
#

#&f.name	
（クライストさん？）[p]
#

#街人	
「また何かの折には、子供たちに声をかけてやってくださいね」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・はい」[p]
#

[town_trust_up]

#&f.name	
「クライストさん・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「・・・いこうか」[p]
#

#&f.name	
「う、うん・・・」[p]
#
[chara_hide_all][chara_off]
[endif]

*yomikikase_owari

[jump storage="scenario_2/map_event/hunsui_event_macro.ks" target=*yomikikase_end]