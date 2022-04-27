
[if exp="f.event_sub_14[3]==1&&f.event_main_14_days>0"]

[message_settei_ad]
[fadeoutbgm time=1000]
#&f.name	
「ん？」[p]
#

#鉱夫	
「本当か？トロッコが壊れたって・・・それじゃどうやって仕事すんだよ」[p]
#

#鉱夫	
「だから、しばらく採掘は中止だと。だが鉱石が取れなきゃ金にならねえからな。なんのために出稼ぎ来てんだか・・・」[p]
#

#&f.name	
「トロッコ・・・？なんだろう？」[p]
#

[if exp="f.friend==1"]
[rans_tatie_touroku]
[rans_tatie_show]
#ランスロット
「ここの近くの、スピルナ鉱山の鉱夫たちだな。何か問題でもあるのか」[p]
#
[chara_hide_all]
[elsif exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「なんだ？なんか深刻そうだな」[p]
#
[chara_hide_all]
[elsif exp="f.friend==3"]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト
「鉱石がどうとかって言ってるみたいだね」[p]
#
[chara_hide_all]
[endif]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【話しかけてみる？】

[glink target=*kouhu_1 text="（話を聞いてみる）" size=17 width=600 x=65 y=200]
[glink target=*kouhu_2 text="（聞かない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*kouhu_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「あの・・・どうかしたんですか？」[p]
#

#鉱夫	
「なんだいお嬢ちゃん？」[p]
#

#&f.name	
「さっき、トロッコがどうのって・・・」[p]
#

#鉱夫	
「ああ、俺ら、この近くのスピルナ鉱山で働いてるんだが、鉱石を運ぶトロッコが壊れちまったもんでさ」[p]
#

#鉱夫	
「修理が終わるまで仕事ができなくて困ってる」[p]
#

#&f.name	
「修理って・・・すぐ終わりそうなんですか？」[p]
#

#鉱夫	
「それがなあ・・・この街に住んでるトロッコ技師の男に依頼しにいったんだが、断られちまってさ」[p]
#

#&f.name	
「えっ、どうして・・・」[p]
#

#鉱夫	
「最近奥さんをなくしたばかりでさ、毎日酒場で飲んだくれてるんだよ。案の定、門前払いで」[p]
#

#鉱夫	
「まあ・・・あんなんで仕事引き受けられても困るっていやあそうなんだが・・・」[p]
#

#&f.name	
「・・・」[p]
#

#鉱夫	
「しかし鉱山で仕事ができないとなると、俺ら鉱夫は商売上がったりだし・・・」[p]
#

#鉱夫	
「落ち込む気持ちは分からねえでもないけどな、困ったもんだよ・・・」[p]
#

#&f.name	
「その人じゃないと、トロッコは直せないんですか？」[p]
#

#鉱夫	
「ああ、ちょっとの故障なら俺らでもできるが、今回は厄介そうなんだ」[p]
#

#&f.name	
「・・・」[p]
#

#&f.name	
（かなり困ってるみたい・・・）[p]
#

[if exp="f.friend==1"]
[rans_tatie_show]
[rans_tatie_sinnpai]
#ランスロット
「トロッコか・・・どうするんだ、[name]」[p]
#
[chara_hide_all]
[elsif exp="f.friend==2"]
[lioness_tatie_show]
[lioness_tatie_kosinite]
#ライオネス
「俺らにできることなんかなさそうだけどな。どうする」[p]
#
[chara_hide_all]
[elsif exp="f.friend==3"]
[kra_tatie_show]
[kra_tatie_yokome]
#クライスト
「なんかめんどくさそうじゃない？それよりご飯食べ行こうよ」[p]
#
[chara_hide_all]
[endif]



#&f.name
「うーん・・・」[p]
#
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【かなり困ってるみたいだけど・・・】

[glink target=*komari_1 text="（私がその人を説得してみます）" size=17 width=600 x=65 y=200]
[glink target=*komari_2 text="（ちょっとできることはないかも・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*komari_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#鉱夫	
「嬢ちゃんがかい？いや、それは・・・酔っ払いだし何するかわかんねえし・・・危険だぞ？」[p]
#

#&f.name	
「私、こう見えて地方騎士団の騎士なんです。危ないことは慣れてますし、少しくらい、お力にならせてください」[p]
#

#鉱夫	
「うーん・・・そこまで、言うなら・・・技師のおっさんは、そこの酒場でいつも飲んでる。夜になれば、来ると思うぜ」[p]
#

#&f.name	
「ありがとうございます！」[p]
#

#&f.name	
（よし、夜まで待って、酒場に行こう）[p]
#
#&f.name	
「夜まで待って、技師の人に会ってみよう？」[p]
#

[if exp="f.friend==1"]
[rans_tatie_show]
[rans_tatie_metoji]
#ランスロット
「夜までか・・・わかった。お前がそういうなら」[p]
#
[chara_hide_all]

[elsif exp="f.friend==2"]
[lioness_tatie_show]
#ライオネス
「仕方ねえな。わーった」[p]
#
[chara_hide_all]

[elsif exp="f.friend==3"]
[kra_tatie_show]
#クライスト
「君がそういうなら、まあいいけど・・・」[p]
#
[chara_hide_all]
[endif]

[anten]
[bg storage="sharomushokudou_yoru.jpg"]
;暗転
;夜
;酒場
[playse storage="zawameki_tairakomori.ogg"]
#&f.name	
（あ・・・あれ・・・かな・・・）[p]
#
#技師	
「ウイー・・・セシリア〜・・・・」[p]
#

#&f.name	
（奥さんの名前か・・・かわいそうだな・・・）[p]
#
#&f.name	
「あの、トロッコ技師の方、ですか？」[p]
#
[stopse]
#技師	
「・・・・・・俺はもうやめたんダァ。あいつがいないなら、仕事なんかもうどうでもいい。話しかけるな」[p]
#

#&f.name	
（うう・・・取りつく島が・・・）[p]
#

[if exp="f.friend==1"]
[rans_tatie_show]
[rans_tatie_mehuse]
#ランスロット
「大切な者を亡くしたのか・・・かなり参っているようだな」[p]
#
[chara_hide_all]
[elsif exp="f.friend==2"]
[lioness_tatie_show]
[lioness_tatie_otikomi]
#ライオネス
「・・・これ、どうすんだ？」[p]
#
[chara_hide_all]
[elsif exp="f.friend==3"]
[kra_tatie_show]
[kra_tatie_metoji]
#クライスト
「なさそうだね。どうする？」[p]
#
[chara_hide_all]
[endif]



[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【なんて言葉をかけよう・・・】

[glink target=*gisi_1 text="（あなたがいないと、鉱夫さんたちが困るんです）" size=17 width=600 x=65 y=200]
[glink target=*gisi_2 text="（奥さんて、どんな方だったんですか？）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*gisi_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]

	
;選択肢
;貴方がいないと、#鉱夫さんたちが困るんです
;奥さんて、どんな方だったんですか？
	
;貴方がいないと、#鉱夫さんたちが困るんです
#技師	
「うるせえな！！他の連中なんか知ったことか！！！」[p]
#

#&f.name	
「で、でもトロッコが直らないと鉱山の仕事が・・・みんなが、待ってるんです・・・」[p]
#

#技師	
「知らねえよ、そんなの。あんたには関係ねえだろ、ほっといてくれ！！」[p]
#

#&f.name	
「あ、あのでも・・・」[p]
#

#技師	
「だいたいなんなんだ、どいつもこいつも人の気も知らねえで自分の都合ばっかり・・・」[p]
#

#技師	
「そもそもあんた誰だよ！！俺に関わるな！！話しかけんじゃねえって言ってんだろお！！！！」[p]
#

[playse storage="gurasuwareru_onjin.ogg"]
[quake count=3 time=300 vmax=10]
;ガッチャン
#&f.name	
「ひゃあ！！」[p]
#

#&f.name	
（こ・・・これ以上は危ないかも・・・）[p]
#
[bg storage="sharomu_yuu_tasogare.jpg"]

#&f.name	
「はあ・・・仕方がない、帰ろう・・・」[p]
#
;ランス、ライオネス、クラの残念な表情

[if exp="f.friend==1"]
[rans_tatie_show]
[rans_tatie_mehuse]
[chara_hide_all]
[elsif exp="f.friend==2"]
[lioness_tatie_show]
[lioness_tatie_yareyare]
[chara_hide_all]
[elsif exp="f.friend==3"]
[kra_tatie_show]
[kra_tatie_mehuse]
[chara_hide_all]
[endif]


[jump storage="scenario_2/map_event/map_event_sharomu_macro.ks" target=*erumu_end]


;	エンド
;奥さんて、どんな方だったんですか？
	
*gisi_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#技師	
「セシリアはなあ・・・ほんと、俺にはもったいないくらいの・・・嫁だったんだあ・・・」[p]
#

#技師	
「俺みたいにうだつのあがらねえ奴に、本当によくしてくれてよ・・・」[p]
#

#技師	
「あいつの飯も弁当も、もう食えねんだよなあ・・・喧嘩ばっかしてたけど、怒った顔も、見れねえんだよなあ・・・」[p]
#

#&f.name	
「・・・」[p]
#

#技師	
「うう・・・セシリア〜・・・あん時俺が、祭りに行くあいつを止めてたら・・・」[p]
#

#&f.name	
「じゃあ、もしかしてカーニバルの時に・・・」[p]
#

#技師	
「運が悪かったって言われたけどよお、そりゃねえよな・・・」[p]
#

#&f.name	
「・・・ごめんなさい、私たちが、もっと、もっとしっかりできてたら・・・」[p]
#

#技師	
「・・・嬢ちゃん。あんたそうは見えないけど、騎士団の人かい」[p]
#

#&f.name	
「奥さんが亡くなったのは、私たちの責任です。街を守るのが、私たちの仕事ですので・・・でも」[p]
#

#&f.name	
（被害は少なかったとか、そう言う問題じゃないんだ、きっと・・・こうやって、悲しんでる人がいるんだもの）[p]
#
#&f.name	
（謝ってもどうにもならないのはわかってるけど・・・）[p]
#

#&f.name	
「・・・私も、子供の頃父を亡くしました。親しい人がいなくなってしまうことが、どんなことかって、わかっているつもりだったのに・・・」[p]
#

#&f.name	
「本当に、ごめんなさい・・・」[p]
#

#技師	
「・・・あんた歳は？」[p]
#

#&f.name	
「１６歳です。もうすぐ、１７になります」[p]
#

#技師	
「俺にとっちゃ、子供みたいな歳だな。その歳でしかも女の子が、命はって戦ってるってのか・・・」[p]
#

#&f.name	
「・・・」[p]
#

#技師	
「騎士団の人たちは恨んじゃいねえよ。ただただ、あん時くだらねえ喧嘩してて、止められなかった自分が許せなくてな・・・」[p]
#

#技師	
「カーニバルにはな、一緒に行こうって前から約束してたんだ。けど、前の日に喧嘩して、それであいつが一人で・・・あん時、俺が一緒に行ってたら・・・」[p]
#

#&f.name	
「・・・そう、だったんですか」[p]
#

#技師	
「ああ・・・」[p]
#

#技師	
「・・・・・・・噂で聞いたが、あんたら、戦争に出るんだってな」[p]
#

#&f.name	
「はい。ここで戦わなければ、また街に被害が出ます。もう一人でも、犠牲は出せません。だからその前に・・・」[p]
#

#技師	
「・・・。武器防具、必要になんだろ」[p]
#

#&f.name	
「えっと・・・それはまあ・・・」[p]
#

[playbgm storage="raina_p_ontama.ogg"]
#技師	
「・・・そんじゃ、気合入れなきゃな」[p]
#

#&f.name	
「えっ」[p]
#

#技師	
「あんたみたいな年輪もいかない女の子が、俺らのために戦ってくれるってのに、こんなとこで管巻いてる場合じゃねえだろ」[p]
#


#&f.name	
「えっ・・・その・・・」[p]
#

#技師	
「話聞いてくれて、ありがとうよ。トロッコはすぐに修理してやる。鍛冶屋もフル回転だろうからな」[p]
#

#&f.name	
「あっ・・・えっ・・・あ、ありがとうございます！」[p]
#

#技師	
「いいってことよ。俺みたいな奴がもう増えねえように・・・戦ってくれるってんだから・・・あんたみたいな嬢ちゃんが・・・」[p]
#

#&f.name	
「・・・」[p]
#

#技師	
「あんた、いい奴いんのか？」[p]
#

#&f.name	
「えっ」[p]
#

#技師	
「男だよ。一人や二人いるだろ

[if exp="f.friend>0"]
[r]あ、隣のそいつか
[endif]
」[p]
#

[if exp="f.friend==1"]
[chara_show name="rans" storage=&f.rans_yokome top=20 left=0]
[chara_hide_all]
[elsif exp="f.friend==2"]
[chara_show name="lion" storage=&f.lion_odoroki height="698" width="456" top=-35 left=0]
[chara_hide_all]
[elsif exp="f.friend==3"]
[chara_show name="kra" storage=&f.kra_mihiraki top=50]
[chara_hide_all]
[endif]

#&f.name	
「えっ、ちょ・・・いやその・・・」[p]
#

#技師	
「生きて帰ってきなよ。そいつのためにもさ」[p]
#

#&f.name	
「おじさん・・・」[p]
#

#技師	
「さあ、早速仕事するか！ありがとうな、ああこれ、話聞いてもらったお礼だ。よかったら使ってくれ。そんじゃな」[p]
#

;アイテムを手に入れた！
[recipe_get_3]
[event_equip_item_get_2]
[town_trust_up]
#&f.name	
「あ、ありがとうございます！！よかった・・・」[p]
#

	
#&f.name	
「よかったあ・・・これで鉱夫さんたちも安心だね」[p]
#
[if exp="f.friend==1"]
[chara_show name="rans" storage=&f.rans_normal_warai top=20 left=0]
#ランスロット
「見事だったぞ、お前の気持ちに、彼も心動かされたのだろう」[p]
#
[elsif exp="f.friend==2"]
[chara_show name="lion" storage=&f.lion_normal_warai height="698" width="456" top=-35 left=0]
#ライオネス
「やるじゃねえか。武器防具、いいの期待できそうだな」[p]
#

[elsif exp="f.friend==3"]
[chara_show name="kra" storage=&f.kra_smile top=50]
#クライスト
「さすが[name]ちゃんだね。彼もきっと、救われたと思うよ」[p]
#
[endif]


;男キャラ、同意と、#&f.nameの態度について褒める

[if exp="f.friend>0"]
#&f.name	
「そ、そうかな・・・」[p]
#
[endif]

[fadeoutbgm time=1000]
[if exp="f.friend==1"]
#ランスロット
「さあ、それではいくか」[p]
#

[elsif exp="f.friend==2"]
#ライオネス
「んじゃ、行こうぜ」[p]
#

[elsif exp="f.friend==2"]
#クライスト
「それじゃあ、行こうか」[p]
#
[endif]


;男キャラ、同意。先に行くのを促す。
[if exp="f.friend>0"]
#&f.name	
「うん！」[p]
#
[chara_hide_all]
[endif]
[eval exp="f.event_sub_14_sumi[3]=1"]
[eval exp="f.event_sub_14[3]=0"]
[jump target=*sub_3_end]

*komari_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
#&f.name	
「大変そうですが、頑張ってくださいね」[p]
#

#鉱夫	
「ああ、ありがとよ！」[p]
#
[jump target=*sub_3_end]

*kouhu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
;聞かない
#&f.name	
「私には関係なさそうだし、いいか」[p]
#

*sub_3_end

[jump storage="scenario_2/map_event/map_event_sharomu_macro.ks" target=*erumu_end]


[elsif exp="f.event_sub_14[4]==1&&f.friend==0&&f.event_main_14_days>0"]


[playse storage="gayagaya_soto.ogg"]


[fadeoutbgm time=1000]
[message_settei_ad]
#&f.name	
「あれ、なんだろう、あの人たち・・・」[p]
#

#&f.name	
（格好からすると、傭兵さん・・・？港に集まって、なんだろう・・・）[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【話しかけてみようかな】

[glink target=*listen_1 text="（ちょっと聞いてみる）" size=17 width=600 x=65 y=200]
[glink target=*listen_2 text="（関係ないよね）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*listen_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name	
「あの、何してるんですか？」[p]
#

#傭兵
「なんだ嬢ちゃん。これから出港なんだよ」[p]
#

#&f.name	
「えーと、この船・・・漁船、ですよねこれ・・・魚取りに行くんですよね・・・？」[p]
#

#傭兵	
「俺らはとらねえけどな。用心棒役だ。最近モンスターが漁を邪魔するって話で、雇われたのさ」[p]
#

#&f.name	
「モンスターが漁を・・・」[p]
#

#漁師	
「おーい出港だ、早くしてくれ！」[p]
#

#傭兵	
「それじゃあな」[p]
#

#漁師	
「あれえあんたもしかして・・・テーベの[name]ちゃんかい？」[p]
#

#&f.name	
「あっ・・・は、はい」[p]
#

#漁師	
「いやあ懐かしいなあ、お父さんの面影があるね。小さい頃に会ったきりだったけど、すっかり大きくなって」[p]
#

#&f.name	
「ええと・・・」[p]
#

#漁師	
「覚えてないよなあ。小さかったもんなあ。漁師だったお父さんにはよくお世話になったんでね・・・[name]ちゃんのこともよく・・・おや、その腰の剣は・・・」[p]
#

#&f.name	
「あ、一応、地方騎士団員してます」[p]
#

#漁師	
「たまげたなあ！そんな可愛いなりして、騎士かい！これは驚いた。立派になって・・・お父さんもきっと、喜んでるだろうよ」[p]
#

#&f.name	
「・・・はい・・・」[p]
#

#漁師	
「すまねえな、しんみりしちまったな。俺もお父さんのこと聞いたときにゃ、ショックだったからな・・・あんだけ腕のいい漁師が・・・」[p]
#

#&f.name	
「・・・」[p]
#

#漁師	
「悪い。それじゃあこれから、漁だからよ、もし今度あったら、ゆっくりお父さんの話でも聞かせてくれや」[p]
#

#漁師	
「今度は用心棒がいるからなあ、大丈夫だとは思うんだが・・・」[p]
#

#&f.name	
（あ・・・）[p]
#

#&f.name	
「あ、あの、モンスターが漁を邪魔するって、本当ですか・・・」[p]
#

#漁師	
「ああ、そうなんだよ。以前はこんなことなかったんだが・・・あぶねえから傭兵を雇ったんだ」[p]
#

#&f.name	
「・・・あの・・・もしよかったら、私にも手伝わせてくれませんか、これでも騎士です。モンスターの扱いには慣れてます」[p]
#

#漁師	
「[name]ちゃんがかい？いやあ、嬉しいけど・・・でもなあ・・・」[p]
#

#&f.name	
「父がお世話になってたって言うなら、尚更、お力になりたいと思いますので・・・」[p]
#

#漁師	
「[name]ちゃん・・・」[p]
#

#&f.name	
「お願いします！」[p]
#

#漁師	
「・・・・・。・・・わかった。頼んだぜ」[p]
#

#&f.name	
「はい！！」[p]
#

[anten]
[playse storage="umi_onjin.ogg"]
[if exp="f.irain_move>0"]
[bg storage="kanpan_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="kanpan_yuu_tasogare.jpg"]
[endif]
	
#漁師	
「きたぞ！！クッソーまた、邪魔しにきやがってこいつら・・・頼んだぜ！」[p]
#

#傭兵	
「おうよ、オヤジ、任せとけ！！」[p]
#

#&f.name	
（よーし！！！）

[eval exp="f.battle_event_14_ryousi=1"]
[eval exp="f.monster_group_18=8"]

[battle_start]



*ryousi_battle_end	
[anten]
[if exp="f.irain_move>0"]
[bg storage="sharomusanbasi_tasogare.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]
[endif]
[eval exp="f.event_sub_14_ryousi=0"]

[message_settei_ad]
#漁師	
「いやあ、助かったよ本当に。傭兵たちゃ最初だけですぐ怖気付きやがって・・・全く。前金は返金対象だな」[p]
#

#漁師	
「ありがとう[name]ちゃん、あいつら傭兵だけだったら俺も危なかったかもしれねえ」[p]
#

#&f.name	
「いいえ、お役に立てて何よりです」[p]
#
#漁師	
「漁もバッチリできたしな、本当に立派になって・・・俺も嬉しいよ」[p]
#
#漁師	
「そうだ、これ、よかったら使ってくれ。騎士団じゃあ何かと入用だろ」[p]
#

[event_cook_item_get_3]
[recipe_get_4]
[town_trust_up]

#&f.name	
「あ、ありがとうございます！」[p]
#

#漁師	
「しっかり騎士やれよ！！お父さんもきっと、見守ってくれらあ」[p]
#
#&f.name
	「はい！！」[p]
#
[eval exp="f.event_sub_14_sumi[4]=1"]
[eval exp="f.event_sub_14[4]=0"]
[jump target=*end]

*listen_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#&f.name
「私には関係ないよね、他を見て回ろうっと」[p]
#

[eval exp="f.event_sub_14[4]=0"]
[eval exp="f.event_sub_14_sumi[4]=1"]
[jump target=*end]


*end

[jump storage="scenario_2/map_event/map_event_sharomu_macro.ks" target=*erumu_end2]


[endif]


