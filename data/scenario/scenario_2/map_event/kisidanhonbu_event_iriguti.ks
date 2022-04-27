


;honbu_iriguti_event本部入り口でのイベント





[macro name="honbu_iriguti_event"]
[eval exp="f.irain_heya=0"]
[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

[button_clear]
[eval exp="f.map=1"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]

[skip_button]
[hidemenubutton]
[message_settei_ad]

[cm]
[if exp="f.event_8_letter==1&&f.friend==0"]
;#ライオネスへのラブレター

#女性
	「あっ・・・あの・・・地方騎士団の方ですか？」[p]
#
#&f.name	
「え？は、はい。そうですけど・・・」[p]
#
#女性	
「あっ・・・あの・・・こ、これっ・・・ライオネス様に渡してくれませんか！？」[p]
#
#&f.name	
「えっ・・・ライオネスに・・・？」[p]
#
#&f.name	
（手紙・・・）[p]
#
#女性	
「おっ・・・お願いしますっ！！」[p]
#
#&f.name	
（これは・・・もしかしてラブレター・・・て言うやつ・・・なのかな？）[p]
#
	

	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【手紙を・・・】

[glink target=*lion_letter_1 text="（受け取る）" size=17 width=600 x=65 y=200]
[glink target=*lion_letter_2 text="（受け取らない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*lion_letter_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「わかりました。渡しておきますね」[p]
#
#女性	
「ありがとうございます！よろしくお願いします！」[p]
#
[town_trust_up]

[jump target=*love_letter_end]

*lion_letter_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

	

;受け取らない
#&f.name	
「あの・・・そう言うのはご自分でお渡しになったら・・・」[p]
#
#女性	
「そ・・・そうですか・・・わかりました・・・」[p]
#

[jump target=*letter_event_end]


*love_letter_end	
	
;受け取ったあと
#&f.name	
「さて・・・どうしようこの手紙・・・ライオネスを探すしかないんだろうけど・・・」[p]

#


	
;探すのがめんどくさいので捨てる
;ライオネスを探す
	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【手紙をどうしよう・・・】

[glink target=*dousuru_tegami_1 text="（探すのがめんどくさいので捨てる）" size=17 width=600 x=65 y=200]
[glink target=*dousuru_tegami_2 text="（ライオネスを探す）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*dousuru_tegami_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「今から探すのも面倒だし、別にいいよね」[p]
#
	手紙を捨てました[p]
	[jump target=*letter_event_end]






*dousuru_tegami_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]



	
#&f.name	
「ライオネス・・・どこだろ・・・」[p]
#

[creru_iriguti]
#&f.name	
「あ、あの後ろ姿・・・ライオネス！」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「おお？なんだお前か」[p]
#
#&f.name	
「あの、これ！」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「なんだこれ、手紙？」[p]
#
#&f.name	
「渡してって頼まれて・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「誰からだよ」[p]
#
#&f.name	
「えーと・・・わからない」[p]
#
[lioness_tatie_akireru]
#ライオネス	
「お前・・・誰かもわからない奴から受け取ったのかよ」[p]
#
#&f.name	
「でも、女の人だったよ、きっとその手紙の中に書いてあるよ！」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「お前なあ・・・俺は女の知り合いなんかセレとお前くらいしか・・・」[p]
#
#&f.name	
（いないんだ・・・）[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「なんだかキミ悪いなあ・・・知らない奴からの手紙ってのも・・・」[p]
#
#&f.name	
「きっとラブレターなんじゃない？すごく恥ずかしそうにしてたし」[p]
#

#ライオネス	
「はあ・・・」[p]
#
#&f.name	
（別に・・・嬉しくないのかな・・・？）[p]
#

[lioness_tatie_normal]
#ライオネス	
「今仕事中だから、後から読むわ。サンキューな」[p]
#
#&f.name	
「う、うん！」[p]
#

[chara_kakusu]
[eval exp="f.event_8_letter=f.event_8_letter+1"]


[elsif exp="f.event_8_letter==2&&f.event_8_lion_doukou==0"]	
	
	
;翌朝　外出しようとするとイベント
[fadeoutbgm time=1000]
#&f.name	
（あれ？あそこにいるのって、こないだの女の人と・・・ライオネス？）[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「・・・そう言うわけだから、悪いな」[p]
#

#女の人	
「そ・・・そうですか・・・て、手紙読んでくださって・・・ありがとうございました！！」[p]
#
#&f.name	
（あっ・・・行っちゃった）[p]
#
;走り去る音

[runisi]
[lioness_tatie_kosinite]
#ライオネス	
「・・・・・・」[p]
#
#&f.name	
（さっき謝ってたってことは・・・）[p]
#
#&f.name	
「あ、あの、ライオネス」[p]
#
[stopse]
[lioness_tatie_udekumi]
#ライオネス	
「なんだ[name]、お前かよ」[p]
#
#&f.name	
「さっきの・・・人って・・・」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「ああ・・・昨日の手紙の」[p]
#
#&f.name	
「あの・・・なんか言われたの？」[p]
#
[lioness_tatie_akireru]
#ライオネス	
「お前・・・それを聞くのか・・・」[p]
#
#&f.name	
「えっ・・・きいちゃ不味かった？」[p]
#
[lioness_tatie_yareyare]
#ライオネス	
「だいたい想像つ・・・かないか。お前だもんなあ」[p]
#
#&f.name	
「な、何それ！」[p]
#
#&f.name	
「そ、そりゃあ・・・？全く、想像がつかないわけじゃないけど・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス
	「・・・・・・」[p]
#
#ライオネス
	「今はそれどころじゃねえからって、断った。世話の焼けるやつもいるしな」[p]
#
#&f.name	
「世話の焼ける・・・って？」[p]
#
[chara_config pos_mode=false]
[tris_tatie_touroku]
[tris_tatie_show_dancho]
[chara_move name="tris" left=400]
[chara_move name="lion" left=-70]

[lioness_tema]

[tris_tatie_ikari_0]
#トリスタン	
「見たぞライオネス！！お前何やってんだよ！！せっかく彼女いない歴そしてD卒業のチャンスだったのに！！」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「どっから湧いてきやがった！！つか、今そんなことやってる場合じゃねえだろ！」[p]
#
[tris_tatie_ikari]
#トリスタン	
「お前そんなこと言ってたら一生独り身だぞ！ええ！いいのか！？」[p]
#
[tris_tatie_ikari_0]
#トリスタン	
「こないだだってあんな巨乳だったのに呆気なく振りやがって！！」[p]
#
#&f.name	
「こないだ・・・？」[p]
#
[tris_tatie_niyaniya]
#トリスタン	
「ちょくちょく告られてんのになー？俺だったら全員と付き合っちゃうぜ」[p]
#
#&f.name	
「ちょくちょくって・・・そんなに？」[p]
#

[tris_tatie_metoji]
#トリスタン	
「背がでかいし怖がられることも多いが、まあ意外に優しかった〜、で惚れ。みたいなパターンが多いなあ」[p]
#
#&f.name	
（そうだったんだ・・・）[p]
#

[lioness_tatie_akireru]
#ライオネス	
「どーでもいい。興味ねえよ」[p]
#

[tris_tatie_mayuhisome]
#トリスタン	
「本当かあ？？お前それが本音だったら生物としておかしいぞ！」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「わーったわーった。おら、さっさと行くぞ。モンスターが出たら一大事だ。被害が出る前に抑える」[p]
#
#&f.name	
「は、はい！」[p]
#
[fadeoutbgm time=1000]
[chara_hide name="lion"]
[tris_tatie_ha]
#トリスタン	
「やれやれ・・・もう少し素直になったらいいのになぁ」[p]
#
[chara_kakusu]
[stopse]
[chara_config pos_mode=true]

*letter_event_end
[eval exp="f.event_8_letter=0"]
[elsif exp="f.event_8_nusutto==2"]


;盗人小僧イベント後#グリフの訪問
#&f.name	
（あれっ・・・あれって・・・）[p]
#

[if exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「あいつ・・・この前の」[p]
[endif]

[if exp="f.friend==2"]
[chara_config pos_mode=false]
[chara_move name="lion" left=400]
[glif_tatie_touroku]
[glif_tatie_show]
[chara_move name="glif" left=-70]
[else]
[glif_tatie_touroku]
[glif_tatie_show]
[endif]

[glif_tatie_normal_warai]
#グリフ	
「・・・今日わ。この間はどうもありがとうございました」[p]
#

#&f.name	
「は、はいあの・・・あの子は・・・大丈夫だったんですか？」[p]
#

#グリフ	
「はい。本来なら牢屋に連れていかれるところなんですけど・・・実は、あの店で雇ってもらえることになったんです」[p]
#
#&f.name	
「じゃ、じゃあ・・・」[p]
#

#グリフ
「ええ。働いている間衣食住は保証してくれるみたいで。僕も時々様子を見に行こうと思っています」[p]
#
#&f.name	
「あの子・・・お母さんがいないって言ってた・・・」[p]
#
[if exp="f.friend==2"]
[lioness_tatie_udekumi]
[endif]
[glif_tatie_mehuse]
#グリフ
「ええ。僕が王宮騎士団に入る前に、弟分として面倒を見てた子なんです。僕と一緒で、親がいなくて」[p]
#
#&f.name	
「・・・そう、なんですか・・・」[p]
#
#&f.name	
（あれ、でも・・・王宮騎士団って・・・確か貴族の人しか・・・？？？）[p]
#
[glif_tatie_normal_warai]
#グリフ
「とにかく、もう安心していいと思います。あなたにも色々とお世話になりまして、ありがとうございました」[p]
#
#&f.name	
「えっ・・・ううん・・・」[p]
#
[if exp="f.friend==2"]
[lioness_tatie_otikomi]
[endif]


#グリフ
「それから・・・
[glif_tatie_komari_warai]
あの、もしよかったら、これ、使ってください」[p]
#
[if exp="f.friend==2"]
[lioness_tatie_normal]
[endif]
[eval exp="f.cook_item_stock[32] =f.cook_item_stock[32]+1"]
あっさりスパイスを手に入れた！[p]
#グリフ
「お礼だけ、いいたかったので。突然すみません。それでは、お忙しいところ、失礼しました」[p]
#
[chara_hide name="glif"]
#&f.name	
（・・・・・・）[p]
#

[if exp="f.friend==2"]
#ライオネス
「ほら、ボーッとしてねえで行くぞ」[p]
#&f.name	
「う、うん」[p]
[endif]
[config_true]
[chara_kakusu]

[eval exp="f.event_8_nusutto=0"]

[endif]

[endmacro]



;--------------------------------------------------------------------------------------------------------------------------

[macro name="day_end_honbu_event"]
[skip_button]
[hidemenubutton]
[eval exp="f.map=1"]

[if exp="f.event_8_gaishoku_on!=1"]
[jump target=*shokuji_sasoi_end]
[endif]
;-------
[eval exp="f.event_8_gaishoku=1"]
[call storage="scenario_2/store_macro.ks"]
[call storage="scenario_2/store_macro_kioku.ks"]

;-------ライオネス高感度一定以上
[if exp="f.lionkonkando>49"]

[playse storage="nokku_tairakomori.ogg"]
[lioness_tatie_touroku]
[lioness_tatie_show]

[if exp="f.friend!=2"]
#ライオネス
「・・・よう」[p]
[elsif exp="f.friend==2"]
#ライオネス
「・・・あのよ」[p]
[endif]

#&f.name
「ライオネス？どうしたの？」[p]

[lioness_tatie_odoroki]
[lioness_tatie_kimazui]
#ライオネス
「・・・その、め、飯でもどうかって思ってよ・・・もし・・・よければ・・・」[p]


[sentakusi]【ライオネスと一緒に食事する？】


[glink target=*a1_lionshokuji text="（する）" size=17 height=15 width=600 x=65 y=200]
[glink target=*a2_lionshokuji text="（しない）" size=17 height=15 width=600 x=65 y=260]


[s]
*a1_lionshokuji
[free layer=0 name="sentakusi"]
[cm][ka]
[atari]
[eval exp="f.irain_heya=0"]
[lioness_tatie_warai]
[eval exp="tf.osasoi=1"]
#ライオネス
「・・・よし、じゃあ行くか！」[p]
#
[lion]
[koukando_up]
[eval exp="f.sentakuchuu= 0 "]
[chara_kakusu]
@jump target=*shokuji_lion

*a2_lionshokuji
[free layer=0 name="sentakusi"]
[cm][ka]
[eval exp="f.sentakuchuu= 0 "]
[eval exp="f.lion_kyohi=1"]
[lioness_tatie_normal]
#ライオネス
「・・・そっか、わーった。またな」[p]
[eval exp="f.sentakuchuu= 0 "]
[chara_kakusu]

[endif]


;ランスロット
[if exp="f.ranskonkando>50"]

[playse storage="nokku_tairakomori.ogg"]
[rans_tatie_touroku]
[rans_tatie_show]

#ランスロット
「[name]、いるか？」[p]

#&f.name
「ランスロット？どうしたの？」[p]

[rans_tatie_mehuse_warai]
#ランスロット
「・・・その、ちょうど街に用事があったから、お前と食事でもと思ってな」[p]


[sentakusi]【ランスロットと一緒に食事する？】


[glink target=*a1_ransshokuji text="（する）" size=17 height=15 width=600 x=65 y=200]
[glink target=*a2_ransshokuji text="（しない）" size=17 height=15 width=600 x=65 y=260]


[s]
*a1_ransshokuji
[free layer=0 name="sentakusi"]
[cm][ka]
[atari]
[eval exp="f.irain_heya=0"]
[rans_tatie_normal_warai]
[eval exp="tf.osasoi=1"]
#ランスロット
「・・・では行くか」[p]
[rans]
[koukando_up]
[eval exp="f.sentakuchuu= 0 "]
[chara_kakusu]
@jump target=*shokuji_rans

*a2_ransshokuji
[free layer=0 name="sentakusi"]
[cm][ka]
[eval exp="f.sentakuchuu= 0 "]
[eval exp="f.rans_kyohi=1"]
[rans_tatie_normal]
#ランスロット
「・・・そうか、わかった。じゃあな」[p]
[chara_kakusu]

[endif]







;---------
#&f.name
「あ！そうか、ご飯食堂で出ないんだっけ・・・」[p]
#
#&f.name
「街に食べに行こう！」[p]
#
[eval exp="f.irain_heya=0"]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
【誰か誘う？】

[if exp="f.rans_kyohi!=1"]
[glink target=*shokuji_1 text="（ランスロット）" size=17 width=600 x=65 y=200]
[endif]
[if exp="f.lion_kyohi!=1"]
[glink target=*shokuji_2 text="（ライオネス）" size=17 width=600 x=65 y=260]
[endif]
[glink target=*shokuji_3 text="（クライスト）" size=17 width=600 x=65 y=320]
[glink target=*shokuji_4 text="（一人で食べる）" size=17 width=600 x=65 y=380]


[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*shokuji_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;#ランスロット
*rans_shokuji

[shokuji_osasoi_rans]
[if exp="tf.osasoi==1"]
[eval exp="f.friend=1"]
[restaurant_choice]
[restaurant_like_rans]

[if exp="f.chara_on==1"]
[chara_kakusu]
[endif]

[live2d_rans_touroku]
[live2d_fadeout time=1000]
[live2d_rans_show_sekkin]

[restaurant_haikei]

[menu_choice]
[bg storage="&f.shokuji_haikei"]
[rans_para_word]
[rans_para_current_kioku]
[rans_fashion_check]
[call storage="scenario_2/kaiwa/ranskaiwa_new.ks"]
;会話イベント
[ranskaiwa]
[onaka_ippai]
[message_settei_ad]
[eval exp="tf.osasoi=0"]
[else]
[jump target=*hitori]
[endif]
[jump target=*shokuji_sasoi_end]



*shokuji_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;#ライオネス
*lion_shokuji
[shokuji_osasoi_lion]
*shokuji_lion
[if exp="tf.osasoi==1"]
[eval exp="f.friend=2"]
[restaurant_choice]
[restaurant_like_lion]
[if exp="f.chara_on==1"]
[chara_kakusu]
[endif]

[live2d_lion_touroku]
[live2d_fadeout time=1000]
[live2d_lion_show_sekkin]

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
[eval exp="tf.osasoi=0"]
[else]
[jump target=*hitori]

[endif]
[jump target=*shokuji_sasoi_end]

*shokuji_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
*kra_shokuji
#&f.name
「クライストさんに、ご飯持っていってあげればいいかな」[p]
#

;最初のメニュー値を記憶
;配列の場合はなぜか一度変数に変数値を入力すると値が同期してしまうみたい。差をつけることができないみたいなので不可。

;お店
[eval exp="f.friend=3"]
[restaurant_choice]

[eval exp="tf.no_word=1"]

[menu_choice]
;メニュー表示
[anten]
#&f.name
「あの、お持ち帰りでおねがいします！」[p]
#
#店員
「はい！かしこまりましたー」[p]
#

[shokuji_osasoi_kra]
[if exp="tf.osasoi==1"]

[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show_sekkin]
[live2d_fadein time=1000]

[if exp="f.r_kajikaji_menu_1_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]

[aho_face_normal]
#クライスト
　「刺身の盛り合わせか、いいね」[p]
#
[elsif exp="f.r_kajikaji_menu_2_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]
[aho_face_normal]
#クライスト
「あ、マグロだね。俺、マグロ好きなんだよね、君も好き？」[p]
#
[elsif exp="f.r_kajikaji_menu_5_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]
[aho_face_normal]
#クライスト
「お寿司だね。ありがとう、俺好きなんだ」[p]
#
[elsif exp="f.r_oikawa_menu_4_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]
[aho_face_normal]
#クライスト
「あ、あさりの料理だね、俺、これ好きだな。君も？」[p]
#
[elsif exp="f.r_moon_menu_2_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]
[aho_face_normal]
#クライスト
「俺このチキンソテー好きなんだよね。もしかして知ってた？」[p]
#
[elsif exp="f.r_bejibeji_menu_4_kra_like>0"]
[eval exp="tf.serihu_sumi=1"]
[aho_face_normal]
#クライスト
「エビをサラダに入れるのっていいアイデアだよね。これ好きだな」[p]
#
[endif]
[eval exp="f.r_kajikaji_menu_1_kra_like=0"]
[eval exp="f.r_kajikaji_menu_2_kra_like=0"]
[eval exp="f.r_kajikaji_menu_5_kra_like=0"]
[eval exp="f.r_oikawa_menu_4_kra_like=0"]
[eval exp="f.r_moon_menu_2_kra_like=0"]
[eval exp="f.r_bejibeji_menu_4_kra_like=0"]

[kra_menu_serihu]
[eval exp="tf.serihu_sumi=0"]
[kra_para_word]
[kra_para_current_kioku]
[dinner_bgm]
[kra_fashion_check]
[call storage="scenario_2/kaiwa/krakaiwa_new.ks"]
;会話イベント
[krakaiwa]
[message_settei_ad]
[onaka_ippai]
[message_settei_ad]
[fadeoutbgm time=1000]
[eval exp="tf.osasoi=0"]
[eval exp="tf.no_word=0"]
[else]
[jump target=*hitori_onaka]

[endif]
[jump target=*shokuji_sasoi_end]


*shokuji_4
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
*hitori
;一人で行く
[restaurant_choice]
[restaurant_haikei]
[menu_choice]
*hitori_onaka
[onaka_ippai]


*shokuji_sasoi_end

[fadeoutbgm time=1000]
[eval exp="f.lion_kyohi=0"]
[eval exp="f.map=0"]
[eval exp="f.friend=0"]
[eval exp="f.event_8_gaishoku=0"]
[day_end_system]




[endmacro]

;-----------------------------------------------------------------------------------------------------------------------








[return]
