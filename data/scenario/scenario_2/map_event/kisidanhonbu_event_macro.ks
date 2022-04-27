

;honbu_normal_event部屋から始まるイベント



[macro name="event_8_lion_friend"]
[eval exp="f.map=1"]
[message_settei_ad]
[playse storage="nokku_tairakomori.ogg"]

[hidemenubutton]

[message_settei_ad]
[lioness_tatie_touroku]
[lioness_tatie_show]
[clearfix][cm][skip_button]
#ライオネス	
「おい、[name]」[l][cm]

#&f.name	
「あ、ライオネス！おはよう[l][cm]
#

[lioness_tatie_kosinite]
#ライオネス	
「・・・ああ・・・お前、大丈夫か？」[l][cm]
#

#&f.name	
「へ？何が？」[l][cm]
#

[lioness_tatie_udekumi]
#ライオネス	
「今日から総出で街の警備に当たるが・・・お前、一人で大丈夫かって」[l][cm]
#

#ライオネス	
「やっぱ昨日の深夜からモンスターが時折出てるらしくてよ・・・俺らも早朝から駆り出されてる」[l][cm]
#

[lioness_tatie_kosinite]
#ライオネス	
「なんとか、カーニバルの当日までにはあらかた片付けたいとこだが・・・」[l][cm]
#


#&f.name	
「そっか・・・街の警備って、そういうことだよね・・・」[l][cm]
#

#&f.name	
「街の人たちは大丈夫なの？」[l][cm]
#


[lioness_tatie_udekumi]
#ライオネス	
「モンスターは数もそれほど多くねえし、雑魚ばっかりだからな。まあ、街の人でもちょっと喧嘩の強い男なら対応できるくらいだ」[l][cm]
#

#ライオネス	
「俺らが間に合わなくても街の男らが有志でやっつけてるのもあって、被害は出てねえ」[l][cm]
#

#&f.name	
「そうなんだ、よかった・・・」[l][cm]
#

[lioness_tatie_kimazui]
#ライオネス	
「問題はこれからどうなるかだな・・・。
[lioness_tatie_normal]
・・・お前、一人でモンスターやれるか？」[l][cm]
#

#&f.name	
「ええと・・・」[l][cm]
#

[lioness_tatie_kosinite]
#ライオネス	
「街にはたまにモンスターが出てるとこがある。見つけ次第対応して、カーニバル当日までに一掃しなきゃなんねえ」[l][cm]
#

[lioness_tatie_kimazui]

#ライオネス
	「お前ひよっこだからな。兄貴に頼まれてんのもあるし・・・もし、あれなら・・・」[l][cm]
#

#&f.name	
「あ！・・・もしかして手伝ってくれるってこと？」[l][cm]
#

[lioness_tatie_odoroki]
#ライオネス	
「ああ？そ、そんなんじゃねえよ、

[lioness_tatie_otikomi]
お前どんくせえからな、怪我でもされたら・・・めんどくせえだろ」[l][cm]
#

[lioness_tatie_kimazui]
#ライオネス	
「だから・・・その」[l][cm]
#

#&f.name
（うーん・・・どうしよう・・・）[l][cm]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスと一緒に行動する？】

[glink target=*lion_f_1 text="（する）" size=17 width=600 x=65 y=200]
[glink target=*lion_f_2 text="（しない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[button_clear]
[s]

*lion_f_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.friend = 2"]
[eval exp="f.event_8_lion_doukou = 1"]

[lioness_tatie_normal]
#ライオネス	
「わーった。さっさと片付けるぞ」[l][cm]
#

ライオネスが仲間になった[l][cm]

[jump target=*lion_f_end]



*lion_f_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


#&f.name	
「うーん、一人で大丈夫」[l][cm]
#


#ライオネス	
「そうかよ、その、
[lioness_tatie_kimazui]
あんま・・・無理すんなよ」[l][cm]
#

#&f.name	
「ありがとう！」[l][cm]
#
[eval exp="f.event_8_lion_doukou=0"]
[eval exp="f.friend=0"]


*lion_f_end
[chara_kakusu]
[message_kakusu_ad]
[eval exp="f.irain_move=2"]
[eval exp="f.event_8_lion_friend=0"]	
[eval exp="f.map=0"]
[eval exp="f.event_8_otukai=1"]	
[eval exp="f.event_8_oukyu=1"]	
[eval exp="f.event_8_letter=1"]	

[endmacro]


;------------------------------------------------------------------------------------

[macro name="honbu_normal_event"]

[hidemenubutton]
[message_settei_ad]
[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

[clearfix][cm]
[skip_button]
[eval exp="f.map=1"]

;-----------------------------

[if exp="f.event_8_otukai==1&&f.event_main_8_days<5&&f.event_main_8_days>1"]
;#&f.nameの部屋
;ノック


[playse storage="nokku_tairakomori.ogg"]

[cera_tatie_touroku]
[cera_tatie_show]
#セレ	
「[name]・・・ちょっといいか？頼みたいことがあるんだ」[p]
#
#&f.name	
「セレさん？」[p]
#

[cera_tatie_otikomi]
#セレ	
「私は明日、シャロームの街へ使いにいく予定だったんだが・・・急に別な仕事が入ってしまってな」[p]
#
#&f.name
	「シャローム・・・」[p]
#

[cera_tatie_normal]
#セレ	
「お前に代わりにシャロームへ行ってもらおうかと考えたんだが・・・どうだろうか？」[p]
#
#&f.name	
「シャロームの街・・・確か、王都の東にある港町だよね？」[p]
#
#セレ	
「そうだ。お前がよく行く稽古の森の近くだな」[p]
#
	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【	シャロームの街へお使いの仕事・・・】

[glink target=*sharomu_1 text="（引き受ける）" size=17 width=600 x=65 y=200]
[glink target=*sharomu_2 text="（引き受けない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*sharomu_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.otukai_day = f.event_main_8_days"]
[eval exp="f.otukai_day = f.otukai_day-1"]
[cera_tatie_smile]
#セレ	
「そうか、よかった」[p]
#
#&f.name	
「シャロームの街へ何しに行けばいいの？」[p]
#

[cera_tatie_normal]
#セレ	
「シャロームに常駐している地方騎士へ物資を届けてほしいんだ」[p]
#
#セレ
	「物資といっても、まあ手紙とか依頼されたものくらいでそう大荷物でもない」[p]
#

#セレ	
「東の森周辺はモンスターが出ることもあるからな、騎士が行った方がいい」[p]
#
[cera_tatie_metoji]
#セレ	
「王都の門に物資を用意しておくから、明日の午前中に出発してくれ」[p]
#
#&f.name	
（明日の午前中か・・・早いうちに出発しなきゃだね）[p]
#
[cera_tatie_normal]
#セレ	
「重い荷物もあるが、お前の他にもう一人頼んである。だから明日は彼と一緒に出発してくれ」[p]
#
#&f.name	
（えっ・・・一緒に・・・誰だろう）[p]
#
[cera_tatie_smile]
#セレ
	「それじゃ、明日は頼んだぞ」[p]
#
#&f.name
	「あっ、はい！」[p]
#

[chara_kakusu]
[eval exp="f.event_8_otukai=2"]
[eval exp="f.task_irai_simekiri = f.event_main_8_days-2"]


[elsif exp="f.event_8_otukai==2&&f.otukai_day==f.event_main_8_days"]
[fadeoutbgm time=1000]
[eval exp="f.otukai_day=0"]
[bg storage="creru_gate_tasogare.jpg"]
#&f.name	
「ええと・・・あ、荷物が置いてある、あそこかな」[p]
#

#&f.name	
「あれ？」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「お前こんなとこで何してんだ」[p]
#
#&f.name
	「ライオネスこそどうしてここにいるの？」[p]
#

#ライオネス	
「俺はシャロームの街に使いに・・・」[p]
#
#&f.name	
「あ、私もだよ！昨日、セレさんから頼まれたの」[p]
#
#&f.name	
（セレさんがいってたの、ライオネスのことだったのか・・・）[p]
#

[lioness_tatie_kosinite]
#ライオネス
	「まじかよ・・・セレのやつ、なんで・・・」[p]
#
#&f.name	
「なんだか急な仕事が入っちゃったんだって。ライオネスは知らなかったの？」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「・・・何も聞いてねえよ・・・」[p]
#
#&f.name	
「・・・珍しいね、セレさんが引継ぎ忘れるなんて・・・」[p]
#

[lioness_tatie_akireru]
#ライオネス
	「・・・・・・」[p]
#

[lioness_tatie_normal]
#ライオネス	
「とにかく行くぞ、夕暮れまでには帰ってきてえからな。夜になるとめんどくせえ」[p]
#
#&f.name	
「は、はい！」[p]
#

[eval exp="f.friend=2"]
[eval exp="f.event_8_lion_doukou=1"]
[chara_kakusu]	
;暗転
[anten]
	
;騎士団本部まえ
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]

[cera_tatie_touroku]
[chara_on]
[chara_show name="cera" storage="cera0_tatie/cera0_komari.png" width=336 height=482]
#セレ	
「なあトリスタン・・・本当にあれでよかったのか」[p]
#

[tris_tatie_touroku]
[tris_tatie_show]
#トリスタン	
「もちろんだ！！
[tris_tatie_metoji_warai]
あいつには、幸せになってほしいからな！！」[p]
#
[cera_tatie_otikomi]
#セレ	
「しかし・・・」[p]
#

[tris_tatie_warai]
#トリスタン	
「お前のことだから、嘘ついて仕事かわったのが後ろめたいんだろ？」[p]
#
#セレ	
「・・・」[p]
#

[tris_tatie_ryoukai]
#トリスタン	
「大丈夫だ、それは嘘じゃない。ちゃんとした理由だ」[p]
#

[cera_tatie_normal]
#セレ	
「トリスタン・・・」[p]
#

[tris_tatie_warai]
#トリスタン	
「こうでもしないと、時間取れないからな・・・カーニバルも仕事なんだろ？」[p]
#
[cera_tatie_otikomi]
#セレ	
「・・・それは・・・」[p]
#

[tris_tatie_smile]
#トリスタン
	「久しぶりに、お前の手料理も食べたいしな！」[p]
#

[cera_tatie_mihiraki]
[cera_tatie_tere]
[cera_tatie_smile]
#セレ	
「・・・うん・・・」[p]
#

[chara_kakusu]
	
;シャロームの街　黄色いびっくりまーく

[bg storage="sharomu_tasogare.jpg"]
[sharomu_bgm]
#&f.name	
（潮の匂い・・・久しぶりだな）[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「地方騎士団の詰所は町の外れだ。急ぐぞ」[p]
#
#&f.name	
「は、はい」[p]
#

[chara_kakusu]
	
[bg storage="sharomu_kisidan.jpg"]
#騎士	
「よう、お疲れ、ご苦労さんだったな」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「荷物はこれで全部で間違いねえな？」[p]
#
#騎士	
「ああ、助かるぜ。グレッグ団長にこっちは異常なしだと伝えてくれ。頼むぜ、新人」[p]
#
#&f.name	
「は、はい！」[p]
#

[chara_kakusu]
[bg storage="sharomu_tasogare.jpg"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「さて・・・どうするか。あんま時間があるわけじゃねえが・・・」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どうしよう・・・】

[glink target=*town_1 text="（王都へ帰る）" size=17 width=600 x=65 y=200]
[glink target=*town_2 text="（食事をしていく）" size=17 width=600 x=65 y=260]
[glink target=*town_3 text="（街の散策）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*town_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#ライオネス	
「そんじゃいくぞ」[p]
#
[chara_kakusu]
*lion_modoru

[fadeoutbgm time=1000]
[eval exp="f.irain_move=1"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「今日はお疲れさん。それじゃな」[p]
#

[chara_kakusu]
[jump target=*otukai_end]





*town_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#ライオネス	
「飯か。あの一軒しかねえな」[p]
#
[fadeoutbgm time=1000]
[chara_kakusu]
[live2d_lion_touroku][live2d_fadeout time=1000]
[live2d_lion_show_sekkin]


[skip_button]
[eval exp="f.r_ika=1"]
[restaurant_haikei]
[menu_choice]
[bg storage="&f.shokuji_haikei"]
[lion_para_word]
[lion_para_current_kioku]
[lion_fashion_check]
[call storage="scenario_2/kaiwa/lionkaiwa_new.ks"]
;会話イベント
[lionkaiwa]
[onaka_ippai]
[message_settei_ad]
[jump target=*lion_modoru]



*town_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#ライオネス	
「いいけどよ・・・程々にしとけよ、夜前には王都に着きてえ」[p]
#
[fadeoutbgm time=1000]
[chara_kakusu]

[live2d_lion_touroku]
[live2d_fadeout time=1000]

;桟橋
[bg storage="sharomusanbasi_tasogare.jpg"]
[sharomu_bgm]

#&f.name	
（いい天気だなあ・・・）[p]
#
#&f.name	
「潮風が気持ちいい・・・ね、ライオネス」[p]
#

[live2d_on][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[lioness_face_metoji]
[lioness_mod_idle_hard]
[lioness_arms_udekumi]
[lioness_face_metoji]
[live2d_fadein time=1000]
#ライオネス	
「・・・z」[p]
#
[lioness_body_under_y]
[lioness_head_under_y]
[lioness_head_normal]
#&f.name
（寝てる・・・）[p]
#
[lioness_body_left_z]
[lioness_head_left_z]
[lioness_head_normal]

#&f.name	
「こんなに気持ちのいいお天気だものね、仕方ないか」[p]
#

[lioness_body_normal]
#&f.name	
（それにしても、起きる気配ないなあ）[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス
	「・・・」[p]
#

[lioness_body_under_y]
[lioness_body_normal]
#&f.name	
「うーん・・・風が冷たくなってきたかも」[p]
#
	
	[fadeoutbgm time=1000]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスを起こす？】

[glink target=*okosu_1 text="（起こす）" size=17 width=600 x=65 y=200]
[glink target=*okosu_2 text="（起きるまで待つ）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*okosu_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*lioness_get_up]




*okosu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


	
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]
#&f.name
	「もう暗くなっちゃう・・・起こさないとダメだね」[p]
#
[eval exp="tf.kuraku=1"]


*lioness_get_up

[playse storage="naguru_koukaonlabo.ogg"]	

#&f.name	
「ライオネス！」[p]
#
[live2d_fadein time=1000]
[lioness_face_nemunemu]
#ライオネス	
「ん・・・ああ、？？」[p]
#

[lioness_head_left_x]
[lioness_head_right_x]
[lioness_head_normal]
#ライオネス	
「どこだここ・・・」[p]
#
#&f.name	
「寝ぼけて・・・シャロームの港だよ」[p]
#
[if exp="tf.kuraku==1"]
#&f.name	
（もう夕方になっちゃった・・・これは王都に戻ったら夜かなあ・・・）[p]
#
[eval exp="tf.kuraku=0"]
[endif]


[lioness_face_nemunemu_akubi]
[lioness_face_normal]
#ライオネス	
「俺、ずっと昼寝してたか？」[p]
#
#&f.name	
「そうだよ？もう・・・」[p]
#
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【もう・・・】

[glink target=*mou_1 text="（よくあんなに寝れるね？）" size=17 width=600 x=65 y=200]
[glink target=*mou_2 text="（寝顔可愛かった）" size=17 width=600 x=65 y=260]
[glink target=*mou_3 text="（ライオネスのせいで遅くなっちゃったじゃない）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*mou_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[live2d_fadein time=1000]
;よくあんなに寝れるね？
#ライオネス	
「そこまで寝てたか？」[p]
#
#&f.name
	「寝てたよ！」[p]
#
[lioness_arms_poripori]
[lioness_face_otikomi]
;気まずそうにポリポリ

[jump target=*mou_1_2_sonogo]


*mou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[live2d_fadein time=1000]
;寝顔可愛かった
[lioness_body_above_y]
[lioness_face_odoroki_sekimen_kutiake]
#ライオネス	
「はっ・・・はああ？何いってんだお前・・・」[p]
#

[lioness_arms_poripori]
[lioness_face_mehuse_dai]

#ライオネス	
「か、からかってんのか・・・」[p]
#
[jump target=*mou_1_2_sonogo]



*mou_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[fadeoutbgm time=1000]
[live2d_fadein time=1000]

#&f.name	
「夜前に帰りたいって言ってたのはライオネスなのに・・・」[p]
#
[lioness_body_above_y]
[lioness_face_odoroki_kutiake]
[lioness_eyes_right]
[lioness_eyes_left]
#ライオネス	
「うっ・・・い、いや、おっ、お前がそもそも散歩なんかするって言うから・・・」[p]
#

[lioness_eyes_normal]
[lioness_body_normal]
[lioness_arms_kosinite_left]
[lioness_arms_kosinite_right]
[lioness_face_donari]

#ライオネス	
「さっさと王都に戻っときゃよかったじゃねーか！」[p]
#

[lioness_arms_udekumi]
[lioness_head_right_x]
[lioness_face_ikari]

#&f.name	
「わ、私のせいだって言うの？」[p]
#
[lioness_head_normal]
#ライオネス	
「お前が港でボケッとしてっから眠くなったんだよ！」[p]
#
[lioness_head_right_x]
[lioness_head_above_y]
[lioness_eyes_right_above]
#&f.name	
「ぼけっとって・・・関係ないよ！眠くなったのはライオネスの勝手じゃない！」[p]
#

#街の人	
「・・・おいおいなんだー？痴話喧嘩か？」[p]
#

[lioness_body_above_y]
[lioness_head_normal]
[lioness_eyes_normal]
[lioness_body_normal]
[lioness_arms_normal]
[lioness_face_odoroki]
#街の人	
「おーいにいちゃん、何だか知らねえけど、女の子には優しくしてやらなきゃー」[p]
#

[lioness_head_under_y]
[lioness_face_otikomi]

#ライオネス
	「っ・・・」[p]
#
#&f.name	
（・・・恥ずかしい・・・）[p]
#

[lioness_arms_atamanite_right]
[lioness_head_under_y]
[lioness_face_yokome_otikomi]
#ライオネス	
「ともかく、遅くならねえうちに王都に戻んぞ」[p]
#

[live2d_fadeout time=1000]
#&f.name	
「・・・・・・」[p]
#
	
[bg storage="kisidaniriguti_tasogare.jpg"]
;騎士団入り口

[lioness_face_mehuse_dai]
[lioness_eyes_under]
[lioness_arms_normal]
[lioness_head_under_y]
[live2d_fadein time=1000]
#ライオネス	
「・・・・・・」[p]
#
#ライオネス	
「・・・その・・・悪かった」[p]
#
#&f.name	
「ライオネス・・・」[p]
#
[lioness_head_right_x]
#ライオネス	
「・・・俺が自分で、暗くならねえうちに帰るって言ってたのにな・・・」[p]
#

[lioness_head_left_x]
[lioness_head_left_z]
[lioness_body_left_z]
#ライオネス	
「自分で寝ちまって、それでお前に言われたから、なんか・・・」[p]
#
#&f.name	
「・・・」[p]
#

[lioness_arms_poripori]
[lioness_head_normal]
[lioness_body_normal]
[lioness_head_under_y]
[lioness_face_yokome_otikomi]
#ライオネス	
「さっきああ言ったけど、お前は悪くねえから。思わず突っかかって・・・悪かった」[p]
#
#&f.name	
「ライオネス・・・」[p]


#
	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネス・・・】

[glink target=*ayamaru_1 text="（いいよ、もう気にしてないし）" size=17 width=600 x=65 y=200]
[glink target=*ayamaru_2 text="（・・・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*ayamaru_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;いいよ、もう気にしてないし
#&f.name	
「私も、なんか責めちゃったみたいで、ごめんね」[p]
#

[live2d_fadein time=1000]
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_arms_normal]
[lioness_face_normal]
#ライオネス	
「・・・[name]」[p]
#
[lion]
[koukando_up]

;好感度アップ

[lioness_head_under_y]
[lioness_face_mehuse_dai]
[lioness_eyes_under]


#ライオネス
	「・・・寝るか、明日も早いんだろ、お前」[p]
#
#&f.name	
「うん、おやすみなさい、ライオネス」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_warai]

#ライオネス	
「・・・ああ」[p]
#
[lioness_face_mehuse_dai]
[lioness_eyes_under]
[eval exp="f.irain_move=0"]
[jump target=*lion_otukai_end]




*ayamaru_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[live2d_fadein time=1000]	
[lioness_arms_normal]
[lioness_face_metoji]
#ライオネス	
「・・・じゃな」[p]
#
[eval exp="f.irain_move=0"]
[jump target=*lion_otukai_end]

	



*mou_1_2_sonogo	

[lioness_face_mehuse_dai]
[lioness_eyes_under]
#ライオネス
「と、とりあえず、帰るか・・・」[p]
#
#&f.name
「うん」[p]
#
[fadeoutbgm time=1000]
[eval exp="f.irain_move=0"]
[bg storage="kisidaniriguti_tasogare.jpg"]

[lioness_body_normal]
[lioness_head_normal]
[lioness_arms_normal]
[lioness_face_normal]
[lioness_eyes_normal]
#ライオネス	
「今日はお疲れさん。それじゃな」[p]
#
*lion_otukai_end
[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]
[jump target=*otukai_end]

	

*sharomu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
	
#セレ	
「そうか、突然申し訳なかった。それならば他を当たろう。それじゃあな」[p]
#
[chara_kakusu]	
;イベント終了
[jump target=*otukai_kyohi]
	
*otukai_end
[eval exp="f.event_8_otukai_end=1"]	
[eval exp="f.event_8_ishuu=1"]	
*otukai_kyohi
[eval exp="f.map=0"]
[eval exp="f.friend=0"]
[eval exp="f.event_8_lion_doukou=0"]
[eval exp="f.event_8_otukai=0"]	

[refresh_hanyou]
[status_hyouji]



[endif]




[if exp="f.event_8_ishuu==1&&f.event_8_otukai_end==1"]
;異臭騒ぎ

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「おい、[name]
お前・・・厨房使ったか？」[p]
#
#&f.name
「え？ううん・・・使ってないけど・・・どうしたの？」[p]

#

[lioness_tatie_otikomi]
#ライオネス
	
「厨房がすんげええ異臭なんだよ・・・」[p]

#
#&f.name
	
「異臭・・・って・・・」[p]

#


#ライオネス
	
「気分悪くなったやつも多くてよ・・・給仕のおばちゃんも困ってる」[p]

#
#&f.name

「・・・どうしたんだろう・・・誰かが使った、とか？」[p]

#

[lioness_tatie_udekumi]
#ライオネス
	
「そうとしか考えられねえんだが・・・おばちゃんとお前以外に料理するやつなんか騎士団にゃいねえだろ」[p]

#
#&f.name
	
「う、うーん・・・」[p]

#

[lioness_tatie_otikomi]
#ライオネス
	
「あれじゃ厨房で作った飯も不味くなるってんで、しばらくは外で食ってくれってよ。食事代は経費で出るからって団長が」[p]

#
#&f.name
	
「・・・わ、わかりました」[p]

#

[lioness_tatie_yareyare]
#ライオネス

「ったくどうなってんだか・・・」[p]

#
#&f.name
	
（・・・厨房で異臭って・・・一体何があったんだろ・・・）[p]

#

[chara_kakusu]
[eval exp="f.event_8_ishuu=0"]
[eval exp="f.event_8_gaishoku_on=1"]
[eval exp="f.event_8_kra_esa=1"]
[eval exp="f.event_8_otukai_end=1"]

[endif]
;------------

[if exp="f.event_8_lion_doukou==0&&f.event_main_8_days>0"]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスに同行してもらう？？】

[glink target=*doukou_1 text="（一緒に来てもらう）" size=17 width=600 x=65 y=200]
[glink target=*doukou_2 text="（もらわない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*doukou_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[eval exp="f.event_8_lion_doukou=1"]
[eval exp="f.friend=2"]


[if exp="f.event_8_oukyu>1"]
;王宮イベある場合、#ライオネスは同行不可
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_kimazui]
#ライオネス
「悪い、今日は別件で仕事があんだ」[p]
#
#&f.name
「そっか、頑張ってね」[p]
#

[lioness_tatie_otikomi]
#ライオネス
「悪いな」[p]
#
[chara_kakusu]
#&f.name
（仕方ない、一人で行こう）[p]
#
[eval exp="f.event_8_lion_doukou=0"]
[eval exp="f.friend=0"]
[else]

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「わーった。おら、さっさと行くぞ」[p]
#
#&f.name
「うん！」[p]
#
[chara_kakusu]
[endif]

[jump target=*lion_doukou]

*doukou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#&f.name
「よーし今日も頑張ろう！」[p]
#


*lion_doukou



[endif]


[eval exp="f.map=0"]
[endmacro]


;------------------------------------------------------------------------------------------------------------------------




[return]