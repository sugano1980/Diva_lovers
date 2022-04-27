


*start
[cm]
[if exp="f.kaiwa==0"]
[jump target=*modoru]
[endif]


 

[cm]

;背景を選ぶ（ランダム）

[if exp="f.klhaikei==0"]
[iscript]
f.klhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]




;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.a17==1&&f.jiyuu==12"]
[bg storage="westa_tasogare.jpg" time=50]
[elsif exp="f.a17==1"]
[bg storage="hune_naka_tasogare.jpg" time=50]
[elsif exp="f.b17==1"]
[bg storage="westa_tasogare.jpg" time=50]
[elsif exp="f.klhaikei==1"]
[bg storage="crerumatinaka1_tasogare.jpg" time=50]
[else]
[bg storage="kisidanumagoya_tasogare.jpg" time=50]
[endif]

*kaiwa
[chara_show name="lioness"]
;現在の会話回数を記憶
[eval exp="f.lionkaiwa_genzai=f.lionkaiwa"]
;事前会話してるかどうか確認
[if exp="f.lion_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]

;ライオネス

[if exp="f.jiyuu==1"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「・・・おい、[name]」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[irain][r]
「・・・えと、・・・何？」[p]

[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「明日の試験のことだけどよ」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[ase]
[irain][r]
「は・・・はい・・・」[p]

[metoji_koma]
[irain][r]
（そう・・・ライオネスが試験官なんだよね・・・うう）[p]

[chara_mod name="lioness" face="gantobasi_kutiake"]
[lioness][r]
「いっとくが、俺は兄貴に言われなくても手加減するつもりはねえ」[p]

[chara_mod name="lioness" face="normal_kutitoji"]
[komari_kutitoji]
[irain][r]
（うわー・・・やっぱり）[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「いくらボケっとしてるお前でもまさかそれはねえだろうが・・・」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「万が一遅刻でもしやがったらその場でたんまり点数引いてやるからな」[p]

[kessin]
[irain][r]
（ひ・・・ひええ・・・）[p]

[chara_mod name="lioness" face="donari"]
[lioness][r]
「わかってんのか？返事は！」[p]

[chara_mod name="lioness" face="gantobasi"]
[odoroki]
[irain][r]
「はっ、はい！！」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「俺は兄貴みてえにお優しくねえんだからな」[p]

[chara_mod name="lioness" face="gantobasi_kutiake1"]
[lioness][r]
「・・・覚悟しとけよ」[p]
[chara_mod name="lioness" face="gantobasi"]


[metoji_koma]
[irain][r]

「うう・・・が、がんばります・・・」[p]

[irain][r]
（厳しいけど、これが普通なんだよね。騎士になるってことは、簡単なことじゃないから・・・）[p]

[elsif exp="f.jiyuu==2"]
[eval exp="f.lion_jizenkaiwa=1"]
[irain][r]
「あ、あの、ライオネス」[p]

[lioness][r]
「ああ？」[p]

[smile]
[irain][r]
「改めて、ありがとう。試験官してくれて・・・」[p]

[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「別に。俺は団長に言われたからやっただけだ」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[normal]
[irain][r]
「でも、ちゃんと騎士の称号だってもらえたし・・・」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「それはお前の実力だろ。俺のおかげじゃねえよ」[p]

[irain][r]
「ライオネス・・・」[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「ま、自信もっていいんじゃねえか」[p]
[chara_mod name="lioness" face="metoji_kutitoji"]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「あぶなっかしいと思ってたが、やるときゃやるんだな、お前」[p]

[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「見直したぜ」[p]

[irain][r]
（ライオネス・・・）[p]


[elsif exp="f.jiyuu==3"]
[eval exp="f.lion_jizenkaiwa=1"]

[irain][r]
「ライオネス、もう足、すっかりいいみたいだね」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「ああ。まったく驚いたぜ・・・あいつ・・・なんなんだろうな・・・」[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「まあ、感謝するべき、なんだろうけどよ・・・」[p]
[chara_mod name="lioness" face="yokome"]

[komari_kutitoji]
[irain][r]
「クライストさん・・・結局聞いてもなんにも答えてくれなかったし」[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「わけわかんねえぜ。ったく」[p]

[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「ところでお前、ずいぶん休まずに働いてんな。大丈夫か？」[p]
[normal]
[irain][r]
「うん。いまのところは・・・それにまだまだ、休んでなんかいられないよ」[p]

[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「ああ。だけど、俺らが倒れたらそれこそなんにもならねえ」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[kyoton]
[irain][r]
「ライオネス」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「適度に休憩とれよ」[p]

[normal]
[irain][r]
「・・・うん、わかった」[p]


[elsif exp="f.jiyuu==4"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「お前な、あんまフラフラしてんじゃねえぞ、俺が兄貴に言われんのはそのせいなんだからな」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[komari_kutiake_dai]
[irain][r]
「そ、そんなフラフラしてなんか・・・」[p]

[chara_mod name="lioness" face="chottoikari_kutiake"]
[lioness][r]
「してんだよお前は。ちっとは自覚しろ」[p]
[chara_mod name="lioness" face="normal_kutitoji"]

[komari_kutitoji]
[irain][r]
（そんなことないと思うんだけどなあ・・・）[p]


[elsif exp="f.jiyuu==5"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「早く団長に報告しにいこうぜ」[p]
[elsif exp="f.jiyuu==6"]
[eval exp="f.lion_jizenkaiwa=1"]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「長丁場になるだろうからな、準備は万端にしていけよ」[p]

[kessin]
[irain][r]
「う・・・うん・・・」[p]

[chara_mod name="lioness" face="normal_kutitoji"]
[lioness][r]
「・・・・・・・」[p]

[komarikutiake]
[irain][r]
「ら、ライオネス・・・？」[p]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「お前だいじょうぶか？」[p]
[chara_mod name="lioness" face="muzukasii_kutitoji"]

[angry_honki]
[irain][r]
「だ、だいじょうぶだよ！！」[p]

[chara_mod name="lioness" face="normal_kutitoji"]
[lioness][r]
「・・・・・・」[p]

[mehuse]
[irain][r]
「・・・・・・」[p]


[elsif exp="f.jiyuu==7"]
[eval exp="f.lion_jizenkaiwa=1"]

[chara_mod name="lioness" face="nemunemu_akubi"]
[lioness][r]
「ふわああ・・・ねみい」[p]

[irain][r]
「夜勤お疲れ様。これから仮眠？」[p]

[chara_mod name="lioness" face="nemunemu_kutiake"]
[lioness][r]
「ああ。やっと交代だぜ。ねみい・・・」[p]

[komari_kutitoji]
[irain][r]
（だいぶ疲れてるみたい・・・早めに切り上げたほうがいいみたいだね・・・）[p]

[elsif exp="f.jiyuu==8"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「・・・武器の手入れとか、念入りにしとけよ」[p]


[elsif exp="f.jiyuu==10"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="otikomi_kutiake"]
[lioness][r]
「・・・よお・・・」[p]
[chara_mod name="lioness" face="otikomi_kutitoji"]

[komari_kutitoji]
[irain][r]
（ライオネス・・・）[p]


[elsif exp="f.jiyuu==12"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「思ってたより街なんだな・・・ウェスタって。おお、一応宿屋まであるぜ」[p]

[metoji_koma]
[irain][r]
（どんだけ田舎だと思ってたんだろう・・・）[p]


[elsif exp="f.jiyuu==14"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「なんだ、レムとかって言うんだったか・・・いったいどんなんなんだろうな・・・」[p]
[chara_mod name="lioness" face="muzukasii_kutitoji"]

[komarikutiake]
[irain][r]
「う、うん・・・」[p]

[chara_mod name="lioness" face="gantobasi_kutiake"]
[lioness][r]
「クライストのやつに、なんかされてねえか？」[p]
[chara_mod name="lioness" face="gantobasi"]

[otikomi]
[irain][r]
「だ、大丈夫だよ・・・」[p]

[chara_mod name="lioness" face="gantobasi_kutiake"]
[lioness][r]
「・・・なんかあったらすぐに言えよ」[p]
[chara_mod name="lioness" face="yokome"]

[komari_kutitoji]
[irain][r]
（・・・ライオネス・・・）[p]


[elsif exp="f.jiyuu==15"]
[eval exp="f.lion_jizenkaiwa=1"]
[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「しっかしあのおっさんもずいぶんうさんくせえよな・・・」[p]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「クライストのやつも最初あったときはそう思ったけどよ・・・」[p]
[chara_mod name="lioness" face="yokome"]
[komari_kutiake_dai]
[irain][r]
「ら、ライオネス・・・でも、協力してくれるんだし」[p]

[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「まあ、それはそうなんだけどよ・・・」[p]
[chara_mod name="lioness" face="muzukasii_kutitoji"]

[komari_kutitoji]
[irain][r]
（・・・もう・・・）[p]


[else]
[lioness][r]
「よう。お疲れ」[l]

[endif]

[chara_mod name="lioness" face="normal_kutitoji"]


*modottekita

;自由行動１０の場合のみ相談選択し

[if exp="f.jiyuu==10&&f.soudan_lion!=1"]
[irain][r]
「ウェスタか、王宮騎士団か・・・ライオネスに相談してみようかな？」[p]


[button graphic="button/soudan_yes.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_yes x=150 y=350]
[button graphic="button/soudan_no.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_no x=400 y=350]
[s]
*soudan_yes
[cm]
[eval exp="f.soudan_lion=1"]
[koukando1_lion]
@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl9.ks" target=*start


*soudan_no
[cm]
[endif]


[stopbgm]
[playbgm storage="kaiwa/hidamari_ontama.ogg"]

*wadaichoice
;一度話題を選んでいた場合の連続用ラベル。ここで会話回数を確認、０なら強制終了
[cm]
[if exp="f.lionkaiwa==0"]
[jump target=*mae]
[endif]



[cm]

[freeimage layer=3]
[normal]
[irain][r]
（・・・えーっと、何から話そう？）[l]
[chara_mod name="lioness" face="normal_kutitoji"]
[message_kakusu_ad]
[freeimage layer=3]


;会話回数更新

[lion_kaiwakousin]

*back
[cm]
;戻るボタン表示
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]

;メニュー表示
;１背高いよね
[if exp="f.jiyuu>=3&&f.kl1==1"]
[button graphic="kaiwa/kl1_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.jiyuu>=3&&f.kl14==1"]
[button graphic="kaiwa/kl1.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa1 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]

;２大剣のこと
[if exp="f.kl2==1"]
[button graphic="kaiwa/kl2_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[else]
[button graphic="kaiwa/kl2.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa2 x=0 y=90]
[endif]

;３クライストのこと；エルムナード編後
[if exp="f.kl3==1"]
[button graphic="kaiwa/kl3_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.jiyuu>=3"]
[button graphic="kaiwa/kl3.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa3 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]

;４好きな女性のこのみ
[if exp="f.kl4==1"]
[button graphic="kaiwa/kl4_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kl1==1"]
[button graphic="kaiwa/kl4.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa4 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]

;５女性遍歴
[if exp="f.kl5==1"]
[button graphic="kaiwa/kl5_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.kl4==1"]
[button graphic="kaiwa/kl5.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa5 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;６竜の赤ちゃん;エルムナード編後
[if exp="f.jiyuu>=9&&f.kl6==1"]
[button graphic="kaiwa/kl6_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.jiyuu>8"]
[button graphic="kaiwa/kl6.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa6 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]


;７地方騎士団の解散について；騎士団解散編後
[if exp="f.jiyuu==10&&f.kl7==1"]
[button graphic="kaiwa/kl7_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.jiyuu==10"]
[button graphic="kaiwa/kl7.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa7 x=500 y=150]
[elsif exp="f.jiyuu>10"]
[button graphic="kaiwa/kl7_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]


;８ライオネスって衣装もってるの；騎士団解散編後
[if exp="f.jiyuu==9.5&&f.kl8==1"]
[button graphic="kaiwa/kl8_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="f.jiyuu==9.5"]
[button graphic="kaiwa/kl8.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa8 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]



[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi x=0 y=270]
[s]

*back1
*tugi
[cm]
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]


;９




;10見習いのとき、王宮騎士団にいたんだよね；騎士団解散編やエルムナード編後

[if exp="f.kl10==1"]
[button graphic="kaiwa/kl10_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.a15==1"]
[button graphic="kaiwa/kl10.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa10 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]

;１１どんなドレスがすき；騎士団解散編後


[if exp="f.kl11==1"]
[button graphic="kaiwa/kl11_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.jiyuu==9.5"]
[button graphic="kaiwa/kl11.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa11 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]





;１３いつもどれくらい食べるの
[if exp="f.kl13==1"]
[button graphic="kaiwa/kl13_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.kl2==1"]
[button graphic="kaiwa/kl13.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa13 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]


;１４野菜も食べなきゃだめだよ
[if exp="f.kl14==1"]
[button graphic="kaiwa/kl14_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kl13==1"]
[button graphic="kaiwa/kl14.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa14 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]


;１５からだはもう平気；カーニバルでライと一緒に行動した時
[if exp="f.kl15==1"]
[button graphic="kaiwa/kl15_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.jiyuu==7||f.jiyuu==8"]
[button graphic="kaiwa/kl15.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa15 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;１６母親のこと；騎士団解散編後
[if exp="f.kl16==1"]
[button graphic="kaiwa/kl16_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.a8==1&&f.jiyuu>7"]
[button graphic="kaiwa/kl16.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa16 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;１７どんな子供だった
[if exp="f.kl17==1"]
[button graphic="kaiwa/kl17_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.kl5==1"]
[button graphic="kaiwa/kl17.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa17 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]


;１８兄弟仲いいよね
[if exp="f.kl18==1"]
[button graphic="kaiwa/kl18_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="f.kl17==1"]
[button graphic="kaiwa/kl18.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa18 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]

;次
[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;戻る
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]
[s]


*tugi1
[cm]
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]


;１９ランスロットのこと；一度ライおねすエンドを迎えている
[if exp="f.kl19==1"]
[button graphic="kaiwa/kl19_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="sf.w_lionend==1"]
[button graphic="kaiwa/kl19.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa19 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]


;２０ランスロットとどっちが強いの；ライエンドとランスエンドご　
[if exp="f.kl20==1"]
[button graphic="kaiwa/kl20_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="sf.w_lionend&&sf.w_ransend==1"]
[button graphic="kaiwa/kl20.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa20 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]

;２１ウェルむ団長とのなか；騎士団解散編後
[if exp="f.kl21==1"]
[button graphic="kaiwa/kl21_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.kl18==1"]
[button graphic="kaiwa/kl21.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa21 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]



;２２ヴァンディットのことエルムナード編後
[if exp="f.kl22==1"]
[button graphic="kaiwa/kl22_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.jiyuu>6&&f.jiyuu<10"]
[button graphic="kaiwa/kl22.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa22 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]



;２３ユリアのこと；廃止予定
[if exp="f.kl23==1"]
[button graphic="kaiwa/kl23_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.jiyuu>5"]
[button graphic="kaiwa/kl23.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa23 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]


;２４あのときはありがとう；エルムナード編後
[if exp="f.kl24==1"]
[button graphic="kaiwa/kl24_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.jiyuu>8&&f.a8==1"]
[button graphic="kaiwa/kl24.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa24 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]


;２５動物のことに詳しいの
[if exp="f.kl25==1"]
[button graphic="kaiwa/kl25_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.jiyuu>8&&f.a8==1"]
[button graphic="kaiwa/kl25.jpg" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa25 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]

;戻る
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back1 x=0 y=270]
[s]
;メニュー表示終わり

;テスト中
*lionkaiwa1
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl1= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl1.ks" target=*start

*lionkaiwa2
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl2= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl2.ks" target=*start

*lionkaiwa3
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl3= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl3.ks" target=*start


*lionkaiwa4
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl4= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl4.ks" target=*start

*lionkaiwa5
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl5= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl5.ks" target=*start

*lionkaiwa6
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl6= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl6.ks" target=*start


*lionkaiwa7
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl7= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl7.ks" target=*start

*lionkaiwa8
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl8= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl8.ks" target=*start


*lionkaiwa9
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl9= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl9.ks" target=*start


*lionkaiwa10
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl10= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl10.ks" target=*start


*lionkaiwa11
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl11= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl11.ks" target=*start


*lionkaiwa13
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl13= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl13.ks" target=*start

*lionkaiwa14
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl14= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl14.ks" target=*start


*lionkaiwa15
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl15= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl15.ks" target=*start


*lionkaiwa16
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl16= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl16.ks" target=*start


*lionkaiwa17
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl17= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl17.ks" target=*start


*lionkaiwa18
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl18= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl18.ks" target=*start


*lionkaiwa19
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl19= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl19.ks" target=*start


*lionkaiwa20
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl20= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl20.ks" target=*start


*lionkaiwa21
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl21= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl21.ks" target=*start


*lionkaiwa22
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl22= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl22.ks" target=*start

*lionkaiwa23
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl23= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl23.ks" target=*start

*lionkaiwa24
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl24= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl24.ks" target=*start

*lionkaiwa25
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl25= 1 "]
[lion_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl25.ks" target=*start

;話題なし
*mada
[cm]
[irain][r]
（何を話せばいいかわからないよ～）[l]
[cm]
@jump target=*back


;戻る
*mae


[if exp="f.lion_koukando_sumi==1"]
[jump target=*skip]
[endif]
;会話したかどうか確認

[if exp="f.lionkaiwa_genzai>f.lionkaiwa"]
[message_settei_ad]
[koukando1_lion]
[eval exp="f.lion_koukando_sumi=1"]
[endif]



;戻る

*skip
[freeimage layer=1]
[freeimage layer=3]
[chara_hide name="lioness"]
[fadeoutbgm time=3000]
[cm]
[if exp="f.a17==1"]
[jump storage="kaiwa/kaiwa_w.ks" target=*start]
[elsif exp="f.b17==1"]]
[jump storage=kaiwa/kaiwa_o.ks target=*start]
[else]
[jump storage="kaiwa/kaiwa.ks" target=*start]
[endif]
































