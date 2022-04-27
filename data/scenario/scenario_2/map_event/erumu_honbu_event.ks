;騎士団入口

[macro name="erumu_honbu_event"]
;テストコード
;[eval exp="f.glif_battle_kizuna=1"]
[if exp="f.glif_sasiire==0"]

[if exp="f.glif_battle_kizuna==1&&f.event_main_14_days==3&&f.friend==0||f.glif_battle_kizuna==1&&f.event_main_14_days==6&&f.friend==0"]

#&f.name	
「ん？」[p]
#

#&f.name	
（あれって王宮騎士団の・・・）[p]
#

[config_true]
[glif_tatie_touroku]
[glif_tatie_show]
[glif_tatie_normal_warai]
#グリフ	
「あ、[name]さん」[p]
#


#&f.name	
「グリフ、どうしたの？」[p]
#


[glif_tatie_mehuse]
#グリフ	
「あのこれ、もしよかったら・・・」[p]
#

[if exp="f.event_main_14_days==3"]
[event_other_item_get_1]
[elsif exp="f.event_main_14_days==6"]
[event_other_item_get_2]
[endif]

#&f.name	
「わあ、美味しそう！これって？」[p]
#

[glif_tatie_normal_warai]

#グリフ	
「その・・・僕が作ったんです。お口に合うといいんですけど」[p]
#

#&f.name	
「すごく綺麗、美味しそう！！すごいんだねグリフ、お菓子作り得意なんだ」[p]
#

[glif_tatie_komari_warai]
#グリフ	
「い、いいえその、下手の横好きですよ。
[glif_tatie_normal_warai]
でも、食べてもらえたら、嬉しいです」[p]
#

#&f.name	
「どうもありがとう、大事に食べるね！」[p]
#

[if exp="f.event_main_14_days==3"]
#グリフ	
「あ、あとこれも・・・もしよかったら使ってください」[p]
#

[recipe_get_5]

#&f.name
「わあ、レシピまで・・・どうもありがとう！」[p]
#
[endif]

[glif_tatie_komari_warai]
#グリフ	
「は、はい、その、それじゃ」[p]
#

[chara_hide_all][chara_off]

[endif]

[eval exp="f.glif_sasiire=1"]

[endif]


[if exp="f.event_sub_14[9]==1&&f.friend==0&&f.event_main_14_days<9&&f.event_main_14_days>0"]
;#馬の世話係の値切りイベント
#馬の世話係	
「ああ、困ったなあ・・・これだけの予算じゃ到底・・・」[p]
#
#&f.name	
「あれ、どうしたんだろう」[p]
#
#&f.name	
「どうしたんですか？」[p]
#
#馬の世話係	
「ああ、[name]、エルムナード戦のために馬を新しく仕入れることになったんだけどさ・・・」[p]
#
#&f.name	
「はい・・・」[p]
#
#馬の世話係	
「思ったより予算が下りなかったんだよ、これじゃあグレッグ団長に言われた数の馬は、用意できなさそうだ」[p]
#
#馬の世話係	
「値切るにしても、馬の仲買人がこれがまた難しいやつでなあ・・・」[p]
#
#&f.name	
「難しいって・・・」[p]
#
#馬の世話係	
「何年か馬の取引はしてるが、全く値下げしてくれた試しがねえ」[p]
#
#馬の世話係	
「グレッグ団長も騎士団に金がねえのはわかってるだろうから、承諾はすると思うがよお・・・」[p]
#
#馬の世話係	
「できるだけ多く、馬を用意したいところだよな・・・どんな戦いになるかもわからねえし」[p]
#
#&f.name	
「・・・・・・。でも、仲買人さんも、王都の方なんですよね？それなら王都のためにならないことはあっちも困るんじゃ・・・」[p]
#
#馬の世話係	
「それはそうだと思うんだがなあ・・・」[p]
#
#&f.name	
「・・・・・・うーん・・・説得には応じてもらえないんでしょうか・・・」[p]
#
#馬の世話係	
「うーむ・・・実は以前にな、なんでもイケメンに弱いって話を聞いたことがあってな・・・」[p]
#
[playbgm storage="korehaittai_ontama.ogg"]
#&f.name	
「へ？イケメン？」[p]
#
#馬の世話係	
「仲買人は女なんだけど、なんかこう・・・顔のいい男にものすごく弱いらしいんだ」[p]
#
#&f.name	
「は、はあ・・・」[p]
#
#馬の世話係	
「俺も顔には自信がねえし、つうか完全にブサメン扱いされてて・・・」[p]
#
#&f.name	
「ぶ、ブサメンって・・・」[p]
#
#馬の世話係	
「あんたみたいなぶ男に言われても、１Gだって値下げしないわよ！！ってさあ」[p]
#
#&f.name	
（か、かわいそう・・・）[p]
#
#馬の世話係	
「賭けではあるが、もしかしたら顔のいい男を連れてって交渉させたらもしかしたら・・・」[p]
#
#&f.name	
「か、顔のいい男の人って・・・」[p]
#
[fadeoutbgm time=1000]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【顔のいい男の人・・・】

[glink target=*yes text="（心当たりあります）" size=17 width=600 x=65 y=200]
[glink target=*no text="（ちょっと思い当たらないなあ）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]


*no

[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]	
#馬の世話係	
「そうか・・・まあ、仕方ないよな、気が重いけど、グレッグ団長に報告するよ。はあ・・・」[p]
#
[jump target=*nakagai_end]



*yes

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]	
#馬の世話係	
「ほ、本当か！！それじゃあ、どうか頼むぜ！ギャフンと値下げしてもらってくれ！」[p]
#
	
#&f.name	
「イケメン・・・かあ・・・誰に頼めばいいだろう・・・」[p]
#

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【誰に頼もう・・・】

[glink target=*lion text="（ライオネス）" size=17 width=600 x=65 y=200]
[glink target=*rans text="（#ランスロット）" size=17 width=600 x=65 y=260]
[glink target=*kra text="（クライスト）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]
	
;#ライオネス
*lion

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[if exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

#&f.name	
「あのー・・・馬の仲買の方、ですよね？」[p]
#
#仲買	
「なんだい、小娘。あたしは男にしか・・・」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「てめえが馬の仲買ってやつか」[p]
#
[lioness_tatie_udekumi]
#&f.name	
（うわあ・・・最初から喧嘩腰だよ・・・！）[p]
#

#&f.name	
（ライオネス、もうちょっと丁寧に・・・！！ってこっち見てないし・・・）[p]
#

#ライオネス	
「今王都がどんな状況かわかってんだろ？だったら少しは協力しろよ。てめえだって、王都がモンスターに潰されたら困んだろ」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「馬は俺ら騎士団にとって一番大事な家畜だ。今まで売ってもらったもんも、ちゃんと大切に育ててる」[p]
#

#仲買	
「・・・」[p]
#
[lioness_tatie_normal]
#ライオネス	
「だから、頼む。俺ら地方騎士団は、予算もあんまりあるわけじゃねえ、だけど・・・

[lioness_tatie_otikomi]
王都を守らなくちゃなんねえんだ」[p]
#
#&f.name	
（ライオネス・・・）[p]
#

#仲買	
「・・・・・・」[p]
#

#&f.name	
「あ、あの・・・」[p]
#
#&f.name	
（やっぱ無理かも・・・これ・・・）[p]
#

[playbgm storage="tw44_musmus.ogg"]
#仲買	
「いやあ〜〜んぅぅぅ！！もう、めっちゃ好みーーー！！！！！」[p]
#
[lioness_tatie_odoroki]

#&f.name	
「えええええ！！？？」[p]
#
#仲買	
「王都にこんないい男がいるなんて、全然知らなかったわぁ・・・」[p]
#
#仲買	
「わかった！言い値まで値下げしてあ・げ・るぅ！」[p]
#
[lioness_tatie_udekumi]
#&f.name	
「あ、あ、ありがとうございます！！」[p]
#

#ライオネス	
「悪いな」[p]
#
#仲買	
「ううん全然❤️とびっきりの馬を用意してあげるわ❤️お仕事、頑張ってねえん！」[p]
#
#仲買	
「あ、あとこれあげる！らぶ注入しといたから、使ってね！」[p]
#

[event_other_item_get_3]

#&f.name	
「あ、ありがとう、ございます・・・」[p]
#
#&f.name	
（うーん・・・人の好みってわからないなあ・・・）[p]
#
[fadeoutbgm time=1000]
[chara_hide_all]
[playse storage="fanfale.ogg"]
馬の値切りに成功しました！！[p]
[town_trust_up]


[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス	
「うまくいってよかったよな、なんだ、仲買人いいやつじゃねえか」[p]
#
#&f.name	
「そ・・・そう、だね・・・」[p]
#
[lion]
[koukando_up]
[chara_hide_all][chara_off]
[jump target=*uma_owari]

;#ライオネス好感度アップ
	
;##ランスロット
*rans
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[if exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

#&f.name	
「あのー・・・馬の仲買の方、ですよね？」[p]
#
#仲買	
「なんだい、小娘。あたしは男にしか・・・」[p]
#

[rans_tatie_touroku]
[rans_tatie_show]
##ランスロット	
「私は地方騎士団の代理で来た者ですが・・・騎士団に馬を提供されているのは、仲買の貴女で間違いありませんか」[p]
#

#仲買	
「確かにあたしだよ。王宮騎士が何か用なのかい」[p]

#
#&f.name	
（ん・・・？これは・・・）[p]
#

[rans_tatie_metoji]
##ランスロット	
「ご存知の通り、王都を守護する立場の地方騎士団には、予算があまりありません」[p]
#

[rans_tatie_normal]
##ランスロット	
「ですが現在は王都を未曾有の危機が襲っています。先に係の者に提示してもらった金額では、十分な装備を整えられないのです」[p]
#

[rans_tatie_mehuse]
##ランスロット	
「装備を整えられなければ、王都の守護、また先に迫っているエルムナードへの侵攻でも、力を発揮できません」[p]
#

##ランスロット	
「貴女にもご事情はおありなのでしょうが・・・ここは王国のためとも思って、価格の改定にご協力いただけませんか」[p]
#

#仲買	
「・・・断る」[p]
#
[rans_tatie_normal]
#&f.name	
（ええー！！あんなに丁寧に頼んでるのに！どうして・・・）[p]
#

#仲買	
「王宮騎士は信用できないんだ。あたしが王宮騎士団にだけは馬をやらないのはそのためさ」[p]
#
[rans_tatie_mehuse]
##ランスロット	
「・・・そうですか・・・。それは残念です」[p]
#
#&f.name	
（イケメンとか以前の問題に、王宮騎士がダメなのか・・・）[p]
#
[rans_tatie_sinnpai]
##ランスロット	
「力になれなくて、すまないな、[name]」[p]
#
#&f.name	
「ううんこちらこそ、忙しいのにごめんね」[p]
#
[chara_hide_all][chara_off]

[jump target=*rans_end]	

;#クライスト
*kra
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[if exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

#&f.name	
「あのー・・・馬の仲買の方、ですよね？」[p]
#
#仲買	
「なんだい、小娘。あたしは男にしか・・・」[p]
#
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト	
「あのさあ」[p]
#
#仲買	
「！あらあ・・・ちょっといい男・・・」[p]
#
#&f.name	
（もしかしてうまくいくかな？）[p]
#

[kra_tatie_yokome]
#クライスト	
「地方騎士団に出した、馬の値段ていくらかな？」[p]
#
#仲買	
「？あ、ああ・・・これくらいだよ」[p]
#
[kra_tatie_normal]
#クライスト	
「ふーん・・・これ、全部払うから、言った数だけ馬をもらってもいいかな？」[p]
#
#&f.name	
「ちょ、ちょっとクライストさん！」[p]
#

[kra_tatie_smile]
#クライスト	
「あ、大丈夫。俺が全部立て替えるよ」[p]
#
#&f.name	
「で、でも・・・！」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「いいって。返す必要もないし。世のため人のためお金は使わないと」[p]
#
#&f.name	
（クライストさんって、一体どれだけお金持ってるの・・・？）[p]
#

#仲買	
「それならまあ・・・だけどかなりの額だよ、あんた一人で払うのかい」[p]
#
[kra_tatie_smile]
#クライスト	
「うん、全然問題ないよ」[p]
#
#&f.name	
（ひええ・・・）[p]
#

[chara_hide_all]
[anten]
;暗転
[if exp="f.irain_move>0"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endif]

#&f.name	
「なんだかごめんなさい、値切るどころか・・・」[p]
#

[kra_tatie_show]
#クライスト	
「いいって。気にしなくて、これで地方騎士団も困らずに済むでしょ」[p]
#
#&f.name	
「それはそうだけど・・・」[p]
#

[kra_tatie_smile]
#クライスト	
「君の役に立てたなら、よかった」[p]
#

[kra]
[koukando_up]

[chara_hide_all][chara_off]
[jump target=*uma_owari_kra]


*rans_end

[if exp="f.irain_move>0"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]	
[endif]

#馬の世話係	
「そっか・・・ダメだったか・・・」[p]
#
#&f.name	
「ごめんなさい・・・」[p]
#
#馬の世話係	
「いいって、気にするな。ありがとな！」[p]
#
[jump target=*nakagai_end]
	
*uma_owari

[if exp="f.irain_move>0"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]	
[endif]

#馬の世話係
「おお！！こんなに安くしてくれたのか！！やったな！」[p]
#
#馬の世話係
「ありがとうな！！これ、もしよかったら使ってくれ！」[p]
#

[event_cook_item_get_2]

#&f.name	
「ありがとう！」[p]
#
[jump target=*nakagai_end]
*uma_owari_kra
[if exp="f.irain_move>0"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kisidaniriguti_yuugata_tasogare.jpg"]	
[endif]
#馬の世話係
「ええええええ！！クライストが全部払ったってのか！！？？？？」[p]
#
#&f.name	
「う、うん、返さなくて、いいって話だけど・・・」[p]
#
#馬の世話係
「あいつ一体何者なんだよ・・・とりあえずまあ、助かった。予算も使わずに済んだしな」[p]
#
#馬の世話係
「これよかったら使ってくれ！ほんの礼だ！！」[p]
#

[event_cook_item_get_2]

#&f.name	
「ありがとう！」[p]
#
*nakagai_end
[eval exp="f.event_sub_14[9]=0"]
[eval exp="f.event_sub_14_sumi[9]=1"]

[endif]



[if exp="f.event_sub_14[10]==1&&f.irain_move==0&&f.lionkonkando>20&&f.event_main_14_days>0&&f.event_main_14_days<9"]
[lion_ohuro]
[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 26"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="f.event_sub_14[10]=0"]
[eval exp="f.event_sub_14_sumi[10]=1"]


[elsif exp="f.event_sub_14[11]==1&&f.irain_move==0&&f.event_main_14_days<9&&f.ranskonkando>20&&f.event_main_14_days>0"]
[rans_ohuro]
[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 25"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="f.event_sub_14[11]=0"]
[eval exp="f.event_sub_14_sumi[11]=1"]



[endif]





[endmacro]

[return]