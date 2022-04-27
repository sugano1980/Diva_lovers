	
	
[macro name="uradoori_event"]
[skip_button]
[message_settei_ad]
[hidemenubutton]
[if exp="f.event_8_help==1&&f.friend==0&&f.event_main_8_days<3"]	
;#女性を助ける
#女性	

「や、やめてください！！」[p]
#
#&f.name	

「ん？」[p]
#
#男	

「ちょっと付き合ってくれって言ってるだけじゃねえかよ・・・な？」[p]
#
#女性	

「は、離して！」[p]
#
#&f.name	

「これは・・・」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【女性を助ける？】

[glink target=*help_1 text="（助ける）" size=17 width=600 x=65 y=200]
[glink target=*help_2 text="（見なかったフリ）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*help_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「やめなさい！！」[p]
#
#男	
「ああ？なんだこのガキ？」[p]
#
#&f.name	
「嫌がってるんだから、離してあげて！」[p]
#
#男	
「てめえには関係ねえだろうが、引っ込んでな」[p]
#
#男	
「んー？それとも何か？お嬢ちゃんが代わりに相手してくれるってのか？」[p]
#
#男	
「・・・へえ、よく見りゃちゃんと女してるじゃねえか・・・顔はちょっとガキくさいけどな」[p]
#
#&f.name	
「・・・・・・わかりました。相手します」[p]
#
[rans_tatie_touroku]
[rans_tatie_show]
#ランスロット	
「・・・！」[p]
#
[chara_kakusu]
#男	
「なんだ、話がわかるじゃねえか。おらこっちこ・・・」[p]
#
#&f.name	
「やあああっ！！！！！」[p]
#
[playse storage="humikomi_koukaonlabo.ogg"]

#男	
「ぐわっ！！」[p]
#
[playse storage="seoinage_tairakomori.ogg"]
[w]
[playse storage="taoreru_koukaonlabo.ogg"]
#男	
「ングっ・・・いってえなこんガキ！！！」[p]
#
#男	
「！！！！！・・・っ」[p]


[rans_tatie_touroku]
[rans_tatie_show]
#&f.name	
「ランスロット！」[p]
#
[rans_tatie_ikari]
#ランスロット	
「・・・今すぐこの場を離れるか、縄につくか、どちらかを選べ」[p]
#
#男	
「っ・・・畜生！！」[p]
#
[playse storage="dash-asphalt2_koukaonlabo.ogg"]

[rans_tatie_normal]

#女性	
「あ・・・」[p]
#
[chara_kakusu]
[stopse]

#&f.name	
「あの、大丈夫ですか？お怪我は・・・」[p]
#
#女性	
「大丈夫です。ありがとうございます。すごい・・・私と同じ女性なのに・・・お強いんですね」[p]
#
#&f.name	
「そ、それほどでもないですけど、でも無事でよかったです」[p]
#
#女性	
「本当に、ありがとうございました」[p]
#
#&f.name	
「気をつけてくださいね！」[p]
#
#女性	
「はい！」[p]
#
[rans_tatie_show]
[rans_tatie_normal_warai]	
#ランスロット	
「[name]、よくやった」[p]
#
#&f.name	
「ランスロット・・・」[p]
#
[rans_tatie_mehuse_warai]
#ランスロット	
「私が教えた体術が役に立って何よりだ」[p]
#
#&f.name	
「えへへ、でも、本当いうと・・・ちょっと怖かったけど」[p]
#
[rans_tatie_normal_warai]
#ランスロット	
「だが、頑張ったんだろう。お前が危なければ助けに入るつもりだったが・・・その必要もなかったな」[p]
#
#&f.name	
「もう正騎士だから、いつまでもランスロットに甘えてるわけにいかないよ」[p]
#
[rans_tatie_mehuse_warai]
#ランスロット	
「そうだな・・・」[p]
#
#王宮騎士	
「ランスロット隊長！！」[p]
#

[rans_tatie_normal]
#ランスロット	
「ああ、すまない、今行く」[p]
#
#&f.name	
「忙しそうだね、カーニバル、近いから？」[p]
#

[rans_tatie_yokome]
#ランスロット	
「ああ・・・やることが山積みだ」[p]
#
[rans_tatie_normal_warai]
#ランスロット	
「それじゃあな」[p]
#
[chara_kakusu]
#&f.name	
（ランスロットも忙しいんだね・・・私も頑張らないと）[p]
#

[jump target=*event_help_end]


*help_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

	
*event_help_end
[eval exp="f.event_8_help=0"]

[elsif exp="f.event_sub_14[1]==1&&f.event_main_14_days>0"]

#&f.name	
「あれ？」[p]
#

#街人
「タッ・・・助けてくれ・・・モンスター、モンスターが出た！！」[p]
#

#&f.name	
「ええっ！！」[p]
#

[playbgm storage="struggle.ogg"]
#街人
「あ、あっちだ、あっちの通りで・・・！！」[p]
#

#&f.name	
「わかりました、向かいます！！」[p]
#

[anten]
[if exp="f.irain_move==1"]
[bg storage="creru_uradoori.jpg"]
[else]
[bg storage="creru_uradoori_yuu.jpg"]
[endif]

#&f.name	
（カーニバルの時から、だいぶ落ち着いてたと思ったのに・・・！！）[p]
#

;モンスター鳴き声
[playse storage="dog_koukaonlabo.ogg"]
#&f.name	
「いた・・・！！」[p]
#

[eval exp="f.battle_event_14_ura=1"]
[eval exp="f.monster_group_18=7"]
[battle_start]
;戦闘
;バトル終了
*battle_event_14_uradoori_end
[message_settei_ad]
#街人	
「あ・・・ありがとうございます、助かりました・・・。まさか、こんなところで出るなんて・・・」[p]
#

#&f.name	
「街の警備を厳しくするよう、グレッグ団長に提案しますね。お怪我はありませんか？」[p]
#


#街人
「は、はい、早く駆けつけていただいたおかげです。本当にありがとうございます！！」[p]
#

#街人
「あの、もし良ければこれ、使ってください」[p]
#
[event_battle_item_get_1]
[town_trust_up]
;アイテム、街の人の信頼度アップ

[eval exp="f.event_sub_14[1]=0"]
[eval exp="f.event_sub_14_sumi[1]=1"]

[else]
[message_settei_ad]
[item_get]



[endif]

*map
[message_kakusu_ad]
[creru_outo_map]




[endmacro]

[return]