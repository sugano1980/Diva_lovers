	
[macro name="iriguti_event"]
[skip_button]
[message_settei_ad]

[if exp="f.event_8_sharomu_tegami==1&&f.irain_move==1"]	
;シャロームへの手紙
#女性
「あ、あの・・・地方騎士の方、ですよね？」[p]
#
#&f.name	
「え？ええ・・・、何か、御用ですか？」[p]
#
#女性
「こ、こんなこと・・・頼むのもどうかって思ったんですけど・・・」[p]
#
#&f.name	

「？」[p]
#
#女性	

「お願いします！この手紙を、シャロームの街にいる彼に届けてください！」[p]
#
#&f.name	

「手紙・・・でも、シャロームへは定期便で届けられますよ？」[p]
#
#女性	
「いつもは、定期便でお願いしてるんですけど・・・どうしても、急ぎで届けたいんです」[p]
#
#女性	
「大事な・・・手紙なんです。だから・・・」[p]
#
#&f.name	
「シャロームへ手紙かあ・・・」[p]
#
	
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【シャロームに手紙を・・・】

[glink target=*letter_1 text="（届けてあげる）" size=17 width=600 x=65 y=200]
[glink target=*letter_2 text="（届けない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*letter_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#女性

「	本当ですか！！ありがとうございます！」[p]
#

#女性

「彼はアーサーっていって、シャロームの街の地方騎士団支部にいる騎士です」[p]
#

#女性

「彼に・・・この手紙を届けてください。ローラからの手紙といえばわかると思います」[p]
#

#女性

「どうかよろしく・・・お願いします」[p]
#

#&f.name	
「わかりました！」[p]
#

[if exp="f.friend==2"]

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「シャロームに行くんだな？」[p]
#
#&f.name
「うん！」[p]
#
[lioness_tatie_kosinite]
#ライオネス
「お前もお人好しだよなあ」[p]
#
#&f.name
「だって仕事でしょ？」[p]
#
[lioness_tatie_normal]
#ライオネス
「・・・まあな・・・」[p]
#

[chara_kakusu]
[endif]




*sharomu
;シャローム
[sharomu]
#&f.name	
「えーとこの手紙を、アーサーって人に届けるんだよね」[p]
#
#&f.name
「	地方騎士団支部、あの建物かな」[p]
#
[bg storage="sharomu_kisidan.jpg"]
#&f.name	
「あの、ローラさんから預かりました。急ぎのお便りだそうで・・・」[p]
#
#アーサー	
「えっ・・・ローラから・・・！！」[p]
#
;ガサガサ
[playse storage="gasagasa_koukaonlabo.ogg"]
#&f.name	
（よほど急ぎのお知らせだったのか・・・）[p]
#
[stopse]
#アーサー	
「ローラ・・・。よし、これで決めた、俺は王都に戻る！！」[p]
#
#&f.name	
「は、はい？」[p]
#
#アーサー	
「ちょっと、まっててくれ、すぐに書き上げるから！！」[p]
#
#&f.name	
「はあ・・・」[p]
#
[w]
#アーサー	
「できた！悪いが、この手紙を、王都のローラに届けてくれ！！頼む！！」[p]
#
#&f.name	
「まあ、帰るのでいいですけど・・・」[p]
#
#アーサー	
「悪いな。実は俺たち、ずっと遠距離で・・・次に会えたときに、プロポーズしようって決めてたんだけど、なかなか帰れなくて・・・」[p]
#
#アーサー	
「そのうちにローラに見合いの話がでちまってさ」[p]
#
#&f.name	
（そっか・・・それで急ぎってことだったんだね）[p]
#
#アーサー	
「本当なら、顔合わせて言いたいんだけどな・・・悪いけど、頼むな。人手不足でなかなか帰れねえ」[p]
#
#&f.name	
「わかりました。必ず」[p]
#
#アーサー	
「ありがとう！あ、これ少ないけど礼だ。取っといてくれ」[p]
#

[playse storage="item_status_up_onjin.ogg"]
スキルオンリー、ガードゼロを手に入れた！[p]
[eval exp="f.battle_item_stock[4]=f.battle_item_stock[4]+1"]
[eval exp="f.battle_item_stock[5]=f.battle_item_stock[5]+1"]
;[eval exp="f.battle_item_stock[6]=f.battle_item_stock[6]+1"]
	
;王都クレール
[creru_iriguti]

#ローラ	
「アーサー・・・ああ・・・よかった・・・」[p]
#
#ローラ	
「本当にありがとうございました。これで結婚式が挙げられます」[p]
#
#&f.name	
「よかったですね。お幸せに！！」[p]
#
#ローラ	
「はい！」[p]
#

[town_trust_up]
	
[jump target=*tegami_end]
	
*letter_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#&f.name	
「やはり定期便を利用なさった方がいいと思いますよ」[p]
#
#女性	
「そ、そうですか・・・すみませんでした、お忙しいところ・・・」[p]
#
	



*tegami_end

[eval exp="f.event_8_sharomu_tegami=0"]	

[else]
[message_settei_ad]
[item_get]




[endif]
	
	
[endmacro]


[return]
	
	