

[macro name="sakaba_event"]

[skip_button]
[hidemenubutton]
[message_settei_ad]

[if exp="f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_rans==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_lion==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_kra==1"]


;カーニバルのお花※カーニバルデートの約束がある場合
#&f.name
「・・・ん？」[p]
#

#女の子１
「ねえねえ、カーニバルのお花、もう買った？」[p]
#

#女の子２
「あ、まだだー！ねえまだ可愛いの残ってるかな？」[p]
#

#女の子１
「花屋さんいってみよう！」[p]
#



;足音
	
[if exp="f.friend==2"]	
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス 
「・・・」[p]
#
[lioness_tatie_kimazui]
[endif]	

#&f.name
「カーニバルのお花・・・って・・・なんだっけ」[p]
#


#&f.name
「ちょっと花屋さんにいってみようかな」[p]
#

;いってみる　行かない
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【花屋さんに行ってみる？】

[glink target=*hanaya_1 text="（行ってみる）" size=17 width=600 x=65 y=200]
[glink target=*hanaya_2 text="（行かない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*hanaya_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#花屋
「いらっしゃいお嬢さん。カーニバルのお花かな？」[p]
#

#&f.name
「カーニバルのお花・・・ってなんでしたっけ？」[p]
#

#花屋
「おや、年頃なのにあまり興味はないのかな？」[p]
#

#花屋
「意中の異性にプレゼントする花束のことだよ。夫婦や恋人同士で贈りあったりもするけどね」[p]
#

#花屋
「日頃お世話になっている方への気持ちとして贈る場合もあるけど、メインは前者だね」[p]
#

#&f.name
「そうなのか・・・」[p]
#

花束を買いますか？　花束を買うと、カーニバルデートのときに相手に贈ることができます。[p]
1束３０Gです。[p]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【花束を買う？】

[glink target=*hanataba_1 text="（買う）" size=17 width=600 x=65 y=200]
[glink target=*hanataba_2 text="（買わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*hanataba_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[if exp="f.money<30"]
#&f.name
「あっ・・・お金が足りないみたい
」[p]
#
[jump target=*flower_4]
[endif]

#&f.name
「どの花束にしようかな？」[p]

[if exp="f.friend==2"]
#&f.name
「ライオネス は、どの花束にしたらいいと思う？	」[p]
#
[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス 
「ああ？花なんかどれも同じだろ	」[p]
#

#&f.name
（・・・）[p]
#
[lioness_tatie_kimazui]
[chara_kakusu]
[endif]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どの花束にしよう・・・】

[image layer=2 page=fore storage="hanataba/hanataba_1.png" name=hanataba width="100" height="75" x=665 y=125]
[image layer=2 page=fore storage="hanataba/hanataba_2.png" name=hanataba width="100" height="75" x=665 y=185]
[image layer=2 page=fore storage="hanataba/hanataba_3.png" name=hanataba width="100" height="75" x=665 y=245]

[glink target=*flower_1 text="（かわいらしく可憐な花束）" size=17 width=500 x=65 y=140]
[glink target=*flower_2 text="（控えめでシンプルでも気品の漂う花束 ）" size=17 width=500 x=65 y=200]
[glink target=*flower_3 text="（ 鮮やかな色が目を引く派手な花束 ）" size=17 width=500 x=65 y=260]
[glink target=*flower_4 text="（やっぱり買わない  ）" size=17 width=500 x=65 y=320]
　
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*flower_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[free name="hanataba" layer=2]
[eval exp="f.curnival_flower_1=1"]
[playse storage="okane_onjin.ogg"]
[eval exp="f.money=f.money-30"]
#花屋
「どうもありがとう！うまく行くといいねえ。応援してるよ！」[p]
#

[jump target=*hanaya_end]

*flower_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.curnival_flower_2=1"]
[free name="hanataba" layer=2]
[playse storage="okane_onjin.ogg"]
[eval exp="f.money=f.money-30"]
#花屋
「どうもありがとう！うまく行くといいねえ。応援してるよ！」[p]
#
[jump target=*hanaya_end]

*flower_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.curnival_flower_3=1"]
[free name="hanataba" layer=2]
[playse storage="okane_onjin.ogg"]
[eval exp="f.money=f.money-30"]
#花屋
「どうもありがとう！うまく行くといいねえ。応援してるよ！」[p]
#
[jump target=*hanaya_end]


*flower_4
[free name="sentakusi" layer=0]
[free name="hanataba" layer=2]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*hanaya_end]


*hanataba_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*hanaya_end]



*hanaya_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

	
	

*hanaya_end
[chara_kakusu]
[eval exp="f.event_8_curnival_hana=0"]
	


[elsif exp="f.event_8_oogui==1&&f.friend==0"]	
			
;及川亭で大食い大会		
#&f.name	
「あれ？なんだか騒がしいけど・・・」[p]
#
		
#店員
「及川亭にて、大食い大会始まりまーす！参加の方はこちらまでエントリーを・・・」[p]
#		
#&f.name	
「お、大食い大会・・・？」[p]
#		
	
	
			

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【大食い大会・・・】

[glink target=*oogui_go text="（行ってみる	）" size=17 width=600 x=65 y=200]
[glink target=*oogui_no text="（行かない	）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*oogui_go

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[creru_sakaba_1]
[snowfall_0]
#店
	「優勝者には、及川亭１年間食べ放題クーポン進呈！！」[p]
#		
#&f.name	
「どんな人が参加してるのかな・・・」[p]
#		
#騎士	
「おいライオネス頼んだぞ！！クーポンがあれば金を気にせずに酒盛りができる！！」[p]
#		
#&f.name	
「・・・え・・・？」[p]
#	
[lioness_tema]
[lioness_tatie_touroku]
[lioness_tatie_show]	

[lioness_tatie_udekumi]
#ライオネス	
「お前らなあ・・・俺が休みだからって叩き起こしやがって・・・これが目的だったのかよ・・・」[p]
#		
#騎士	
「お前なら絶対に勝てる！！！勝て！！ライオネス！！」[p]
#	

[lioness_tatie_nemunemu]	
#ライオネス	
「あー・・・・・・さっさと食って帰るか・・・」[p]
#		
#&f.name	
（そんな軽い感覚なの・・・？）[p]
#		

[chara_kakusu]
[anten]

[playse storage="eat00_macchi.ogg"]
[w]
[playse storage="eat00_macchi.ogg"]
[w]
[playse storage="eat00_macchi.ogg"]

#参加者	
「うぐっ・・・もう・・・ダメだ・・・食えねえ・・・」[p]
#		
#参加者	
「お・・・俺もだ・・・腹が・・・腹があ・・・」[p]
#	


[creru_sakaba_1]
[lioness_tatie_show]
[lioness_tatie_kosinite]
#ライオネス	
「もう終わりか？まだまだ足りねえぜ！もっと持ってこい！！」[p]
#		
#&f.name	
（うひゃあ・・・）[p]
#		
[playse storage="gongu_koukaonlabo.ogg"]
#店	
「きょ、驚異の胃袋！！優勝者はライオネス！！ライオネス！！」[p]
#	
[lioness_tatie_udekumi]	
#&f.name	
（えええ・・・あっさり勝っちゃった・・・）[p]
#		
#騎士	
「よっしゃあ！食べ放題クーポンゲットだぜ！！ありがとなライオネス！！」[p]
#	
[lioness_tatie_nemunemu]	
#ライオネス	
「あー・・・ふああああ・・・帰って寝るわ」[p]
#		
#&f.name	
（そして何事もなかったかのように帰るんだ・・・）[p]
#		

[lioness_tatie_normal]
#ライオネス	
「ん？おう、[name]・・・お前も参加してたのか？」[p]
#		
#&f.name	
「み、見てただけ、だけど・・・す、すごいね・・・」[p]
#	
[lioness_tatie_kosinite]	
#ライオネス
	「何が？」[p]
#		
#&f.name	
「い、いっぱい食べてて・・・」[p]
#	
[lioness_tatie_nemunemu]	
#ライオネス
	「ああ・・・いつもだ。・・・ねみい。じゃな」[p]
#		
#&f.name
	（いっぱい食べるとは知ってたけど・・・想像を超えてたような・・・）[p]
#	
[fadeoutbgm time=1000]
[chara_kakusu]

[jump target=*oogui_end]


*oogui_no
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]	
#&f.name	
「今は関係ないよね。仕事に集中しなきゃ」[p]
#		

*oogui_end	
[eval exp="f.event_8_oogui=0"]			
		

[elsif exp="f.event_8_nusutto==1&&f.event_main_8_days>1"]	
			
;盗人小僧		

[if exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[endif]
#&f.name
	「あれ？なんだか騒がしいような？」[p]
#	
[runisi]	
#男	
「やい！！こら待てこの小僧！！」[p]
#		
#男	
「誰か捕まえてくれ！！」[p]
#		
[stopse]
#男	
「はあ、はあ・・・すばしっこい小僧だ」[p]
#		
#&f.name	
「小僧・・・ってことは、子供？」[p]
#		
#&f.name	
「何かあったんですか？」[p]
#		
#男	
「ああ、食い逃げだ。子供一人で食いにくるからなんか変だと思ってたんだ・・・」[p]
#		
#男	
「後から親がくるからとかなんとか言ってよ・・・」[p]
#		
#&f.name	
「食い逃げ・・・」[p]

[if exp="f.friend==2"]
[lioness_tatie_udekumi]
#ライオネス	
「どーすんだ？」[p]
#
[endif]
	
	[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どうしよう・・・】

[glink target=*kozou_1 text="（探しに行く）" size=17 width=600 x=65 y=200]
[glink target=*kozou_2 text="（他の人に引き継ぎ）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*kozou_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[chara_kakusu]
*kozou_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]

【どこを探せばいいかな・・・】

[glink target=*kozou_sagasu_1 text="（王都の門）" size=17 width=600 x=65 y=200]
[glink target=*kozou_sagasu_2 text="（裏通り）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*kozou_sagasu_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;王都入り口	
[creru_iriguti]	
#&f.name	
「あれっ」[p]
[if exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「おい・・・あれじゃねーか？」[p]
#
[endif]
#食い逃げ子供	
「・・・」[p]
#		
#&f.name
	「見つけた！」[p]
#
		
#食い逃げ子供
「やべっ！！」[p]
#	

[if exp="f.friend==2"]	
[lioness_tatie_chottoikari]
#ライオネス	
「おいこら！逃げらんねーぞ！！」[p]
[lioness_tatie_udekumi]
[endif]

#&f.name	
「お店の人、困ってたよ？ご飯食べたら、ちゃんとお金払わないと」[p]

#
#食い逃げ子供	
「うっうう・・・」[p]
#		
#&f.name	
「盗むのはよくないって、お母さんに習わなかった？」[p]
#		
#食い逃げ子供
「・・・母ちゃんなんかいねえよ」[p]
#		
#&f.name	
「えっ・・・」[p]

[if exp="f.friend==2"]
[lioness_tatie_otikomi]
#ライオネス
	「・・・・・・」[p]
[endif]
#
#食い逃げ子供
	「お、俺を捕まえんならそうしろよ！！牢屋の飯でも食えねえよりマシだ！！」[p]
#	
[if exp="f.friend==2"]
[lioness_tatie_udekumi]
#ライオネス
	「・・・・・・」[p]
[endif]
#&f.name	
（この子・・・）[p]
#		
#？？？	
「ウルド！！」[p]
#		
[lioness_tatie_odoroki]
#&f.name	
「えっ」[p]
#		
#ウルド	
「あっ・・・あっ・・・グリフ兄ちゃん！！」[p]
#	

[if exp="f.friend==2"]
[lioness_tatie_normal]
[chara_config pos_mode=false]
[chara_move name="lion" left=400]
[endif]
[glif_tatie_touroku]
[glif_tatie_show]
[if exp="f.friend==2"]
[chara_move name="glif" left=-70]
[endif]
	
#グリフ	
「お前。また・・・他の人に迷惑かけるなって言っただろ？」[p]
#		
#ウルド	
「だって俺・・・」[p]
#	
[glif_tatie_normal_warai]	
#グリフ	
「とにかく、謝りに行こう」[p]
#	
[glif_tatie_mehuse]	
#グリフ	
「あの、すみません、ご迷惑をおかけしました」[p]
#		
#&f.name	
「あの、あなたって・・・」[p]
#	
[glif_tatie_normal_warai]	
#グリフ	
「・・・また、お会いしましたね。この子は僕の知り合いなんです。あとは、大丈夫です。任せてください」[p]
#	

[glif_tatie_mehuse]	
#グリフ	
「あの酒場の店長とも、僕が昔からの知り合いでして・・・」[p]
#		
#&f.name	
「そ、そうなの・・・」[p]

[if exp="f.friend==2"]
[lioness_tatie_kosinite]
#ライオネス	
「お前・・・王宮騎士だよな？」[p]
[glif_tatie_normal]
#グリフ	
「・・・はい。それが何か？」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「いや・・・」[p]
[endif]


[glif_tatie_normal_warai]
#グリフ	
「それでは、お世話になって、ありがとうございました」[p]
#


[chara_config pos_mode=true]
[chara_hide name="glif"]

#&f.name	
（あの子・・・お母さんいないって言ってた・・・）[p]
#		
#&f.name	
（・・・王都にも、ああいう子は多いのかな・・・）[p]
#	

[if exp="f.friend==2"]	
[lioness_tatie_normal]
#ライオネス
「何ボーッとしてんだ。いくぞ」[p]
#
#&f.name	
「あの、ライオネス・・・ああいう子って、多いの？」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「今更だろ。食べられるやつもいれば、食べられないやつもいる」[p]
#
#&f.name	
「そういうのって、どうにかならないのかな？」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「どうにかしようとしてる連中はいるらしいけどな」[p]
#
#&f.name	
「ライオネス・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「俺らには、俺らのできることをやりゃいい」[p]
#
#&f.name	
「・・・うん・・・」[p]
#
[chara_kakusu]	
[endif]	

[jump target=*kozou_end2]



*kozou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#&f.name	
「他の騎士に伝えておきますね」[p]
#		
#男	
「ああ！頼むよ！なるべく早くな！」[p]
#	
[chara_kakusu]	
[jump target=*kozou_end]
		
			
	
[eval exp="f.event_8_nusutto=2"]	
[eval exp="f.glif_namae=1"]
[jump target=*kozou_end2]



*kozou_sagasu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[if exp="f.irain_move==1"]
[creru_uradoori_yuu]
[else]
[creru_uradoori]
[endif]
#&f.name
「ここじゃないみたい」[p]
#
[jump target=*kozou_choice]	
			
*kozou_end
[eval exp="f.event_8_nusutto=0"]
[jump target=*kozou_end_3]
*kozou_end2
[eval exp="f.event_8_nusutto=2"]
;--------------エルムナード侵攻
[elsif exp="f.event_sub_14[0]==1&&f.friend==0&&f.date_now!=1&&f.irain_move>0&&f.event_main_14_days>0"]	
#&f.name
	
「あれっ」[p]
#

#店主
	
「ああ・・・困ったなあ・・・本格的に困ったぞー」[p]
#

#&f.name	
（どうしたんだろう・・・）[p]

;声をかけてみる
;かけない

*voice_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]

【どうしたんだろう・・・】

[glink target=*voice_1 text="（声をかけてみる）" size=17 width=600 x=65 y=200]
[glink target=*voice_2 text="（かけない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*voice_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]

#&f.name	
「まあいいか。仕事に戻ろうっと」[p]
[eval exp="f.event_sub_14[0]=0"]
;[eval exp="f.event_sub_14_sumi[0]=1"]
[jump target=*sakaba_event_end]

*voice_1
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「あの、どうかしたんですか？」[p]
#

#店主	
「ああ、[name]ちゃん。実はねえ、アンナちゃんが風邪でお休みなんだよ」[p]
#

#&f.name	
「アンナちゃん？」[p]
#

#店主	
「あ、ああ、うちで働いてくれてる給仕の子なんだけどね、今日は午後から団体様が来る予定だが、彼女がいないと・・・」[p]
#

#&f.name	
「人手が足りない・・・」[p]
#

#店主	
「そうなんだよ。いつもの営業だったら俺だけでもまあなんとかなるんだけど、よりによって今日・・・」[p]
#

#店主	
「とりあえず仕込みはしてあるけど、料理しながら団体様の相手はなあ・・・」[p]
#

#&f.name	
（大変そう・・・）[p]

*taihen_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]

【大変そうだけど・・・】

[glink target=*taihen_1 text="（私が手伝いますよ）" size=17 width=600 x=65 y=200]
[glink target=*taihen_2 text="（力になれないな）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]
;私が手伝いますよ
;力にはなれないな

*taihen_2
[free name="sentakusi" layer=0]
[ka]
[cm]

[w]

#&f.name	
「大変そうだけど、頑張ってくださいね」[p]
#
#店主
「ああ、どうもありがとう！」[p]
#
[eval exp="f.event_sub_14[0]=0"]
;[eval exp="f.event_sub_14_sumi[0]=1"]

[jump target=*sakaba_event_end]
	
*taihen_1
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「あ、あの・・・もし、私でよかったら手伝いましょうか？どこまで、できるか分かりませんが・・・」[p]
#

#店主	
「ええ！？いいのかい？しかし、[name]ちゃんは騎士団の仕事が・・・」[p]
#

#&f.name	
「困ってる方を助けるのが、騎士団の仕事ですから！」[p]
#

#店主	
「そうかい・・・ああ、助かるよありがとう！[r]団体様だけだからさ、オーダーを聞いて、あとは料理を運んでくれるだけでいい」[p]
#

#&f.name	
「分かりました！」[p]
#

#&f.name	
（よーし、頑張ろう！）[p]
#
[anten]
[playse storage="zawameki_tairakomori.ogg"]
[bg storage="crerushokudou_yoru_tasogare.jpg"]
[playbgm storage="asanositaku_ontama.ogg"]
;夕方、酒場、ガヤガヤ
#&f.name	
「『卒倒間違いなしどぶろっく』、お待たせしましたー！！」[p]
#

#客	
「あ、[name]ちゃん、『ワインロマーナ』、ボトルで！グラスは２つね！！」[p]
#

#&f.name	
「はい、かしこまりました！！」[p]
#

#店主	
「[name]ちゃんクラーケンのフライ、上がったよ！！よろしく！」[p]
#

#&f.name	
「はーいただいま〜！！」[p]
#

[fadeoutbgm time=1000]
[stopse]
[anten]
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]
#店主	
「いやあ今日は本当に助かったよ。これ、お給金ね、とっといて」[p]
#

#&f.name	
「い、いいえ、私騎士団の仕事としてやっただけなんで・・・あと、一応副業はダメなんで・・・」[p]
#

#店主	
「うーんそうか・・・受け取って欲しいがなあ・・・それなら代わりにこれ！もしよかったら使っておくれ」[p]
#


[recipe_get_1]
[event_cook_item_get_1]
#&f.name	
「わああ！ありがとうございます！！」[p]
#

#店主	
「いやあーいい仕事ぶりだったよ。給仕に来てもらいたいくらいだ」[p]
#

#&f.name	
「えっえーと・・・」[p]
#

#店主	
「ははは、[name]ちゃんならいつでも大歓迎だから、覚えておいてくれな！本当にどうもありがとう！！」[p]
#
[town_trust_up]
[eval exp="f.irain_move=0"]
[eval exp="f.event_sub_14[0]=0"]
[eval exp="f.event_sub_14_sumi[0]=1"]
;----------------------------------------------------------------------------------
[else]
[message_settei_ad]
[item_get]





[endif]

*kozou_end_3		
*sakaba_event_end
[endmacro]



[return]	
			
			
			
			
			
			
			
			
			
			
			