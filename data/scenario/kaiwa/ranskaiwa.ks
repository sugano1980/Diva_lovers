


*start
[cm]
[if exp="f.kaiwa==0"]
[jump target=*modoru]
[endif]





[cm]

[if exp="f.jiyuu>6"]
[eval exp="f.krhaikei=1"]
[else]
[eval exp="f.krhaikei=0"]
[endif]



;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.b17==1"]
[bg storage="ransheya_tasogare.jpg" time=50]
[elsif exp="f.krhaikei==1"]
[bg storage="ransheya_tasogare.jpg" time=50]
[else]
[bg storage="crerumatinaka2_tasogare.jpg" time=50]
[endif]

*kaiwa
[chara_show name="ranslott" reflect=true]
;現在の会話回数を記憶
[eval exp="f.ranskaiwa_genzai=f.ranskaiwa"]

[if exp="f.rans_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]

;ランスロット
[if exp="f.jiyuu==1"]
[eval exp="f.rans_jizenkaiwa=1"]
[ranslott][r]
「ああ、[name]」[p]

[irain][r]
「なに？」[p]

[chara_mod name="ranslott" face="ketui_kutiake"]
[ranslott][r]
「部屋に戻ったら、今までの復習をしっかりしておけよ」[p]

[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「特にお前は肝心なところではずしてしまう癖があるから念入りにな」[p]
[chara_mod name="ranslott" face="ketui"]

[kessin]
[irain][r]
「は・・・はいっ・・・」[p]

[otikomi]
[irain][r]
（うう・・・そんなこといわれると余計緊張してきちゃうよ・・・）[p]

[chara_mod name="ranslott" face="normal"]
[ranslott][r]
「だが、実力を出せればお前なら十分クリアできるはずだ」[p]

[normal]
[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「不安なところは必ず確認してから試験にのぞむんだぞ」[p]
[chara_mod name="ranslott" face="normal"]

[kessin]
[irain][r]
「・・・はいっ！が、がんばります！」[p]
[normal]


[elsif exp="f.jiyuu==2"]
[eval exp="f.rans_jizenkaiwa=1"]

[ranslott][r]
「これからはもう立派な正騎士だな」[p]
[chara_mod name="ranslott" face="ketui_kutiake"]
[ranslott][r]
「だが、試験に合格したからといっても、気は抜くんじゃないぞ」[p]
[chara_mod name="ranslott" face="ketui"]

[irain][r]
「は、はい！」[p]
[chara_mod name="ranslott" face="normal"]


[elsif exp="f.jiyuu==3"]
[eval exp="f.rans_jizenkaiwa=1"]

[ranslott][r]
「[name]、少し疲れているんじゃないか？大丈夫か？」[p]

[irain][r]
「・・・うん、忙しいけど、でもまだ町の人たちが・・・」[p]

[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「そうだな、街の中はひどい状態だし・・･家を失ったものも多いと聞く」[p]
[chara_mod name="ranslott" face="metoji"]

[mehuse]
[irain][r]
「まだまだ、私たちががんばらなくちゃ・・・」[p]
[chara_mod name="ranslott" face="normal_kutiake"]

[ranslott][r]
「[name]・・・」[p]
[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「・・・そうだな。だが、あまり無理はするなよ」[p]
[chara_mod name="ranslott" face="mousiwakenai_kutiake"]
[ranslott][r]
「お前のことも私は心配だ」[p]
[chara_mod name="ranslott" face="mousiwakenai"]
[normal]
[irain][r]
「ランスロット・・・うん。わかった。疲れたときは休むようにするね」[p]

[chara_mod name="ranslott" face=normal]
[elsif exp="f.jiyuu==4"]
[eval exp="f.rans_jizenkaiwa=1"]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「[name]、お前の行動を縛るつもりはないが・・・」[p]

[chara_mod name="ranslott" face="mehuse_muzukasii_kutiake"]
[ranslott][r]
「一応、お前もその・・・年頃でもある」[p]

[chara_mod name="ranslott" face="metoji"]

[irain][r]
「はあ・・・」[p]

[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「だから・・・その・・・[w]気をつけろよ」[p]

[irain][r]
（いったい何を・・・？）[p]


[elsif exp="f.jiyuu==7"]
[eval exp="f.rans_jizenkaiwa=1"]
[chara_mod name="ranslott" face="mousiwakenai_kutiake"]
[ranslott][r]
「・・・[name]、体はだいじょうぶか？」[p]

[irain][r]
「？大丈夫だよ？どうしたの？」[p]
[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「いや、エルムナードから帰ってきて息をつく暇もないままだったからな」[p]
[chara_mod name="ranslott" face="mousiwakenai_kutiake"]
[ranslott][r]
「疲れてはいないかと思ってな」[p]
[smile]
[irain][r]
「寝れるときは眠ってるから大丈夫！」[p]
[chara_mod name="ranslott" face="normal"]
[komariwarai]
[irain][r]
「でも・・・」[p]

[chara_mod name="ranslott" face="sinnpai_kutiake"]
[ranslott][r]
「[name]・・・？」[p]

[irain][r]
「えへへ、[komarikutiake]
たまには・・・やっぱりゆっくり休みたいかなって、思うときもある・・・かな」[p]

[chara_mod name="ranslott" face="sinnpai"]
[irain][r]
「そんなこと言ってられないのは、わかってるけどね」[p]

[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「・・・そうだな、早く・・・落ち着くといいな」[p]
[chara_mod name="ranslott" face="normal"]

[normal]
[irain][r]
「・・・うん・・・」[p]

[elsif exp="f.jiyuu==9"]
[eval exp="f.rans_jizenkaiwa=1"]
[komari_kutitoji]
[irain][r]
「・・・ランスロット」[p]

[ranslott][r]
「・・・どうした、[name]」[p]

[komari_kutiake_dai]
[irain][r]
「式なんだけど・・・行けなくてごめんね・・・その」[p]

[chara_mod name="ranslott" face="normal_kutiake"]
[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「そのことか。気にするな。まあ、ユリア様は残念がっていたが」[p]

[komarikutiake]
[irain][r]
「ユリアさんが・・・悪いことしちゃったな」[p]

[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「都合が悪かったのだろう。それは仕方のないことだ」[p]

[chara_mod name="ranslott" face="normal"]
[ranslott][r]
「私は気にしていない。だからお前も、そんなに気にするな」[p]

[normal]
[irain][r]
「ランスロット・・・」[p]


[else]

[ranslott][r]
「どうした？[name]」[l]

[endif]





*modottekita

;自由行動１０の場合のみ相談選択し

[if exp="f.jiyuu==10&&f.soudan_rans!=1"]
[irain][r]
「ウェスタか、王宮騎士団か・・・ランスロットに相談してみようかな？」[p]

[button graphic="button/soudan_yes.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_yes x=150 y=350]
[button graphic="button/soudan_no.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_no x=400 y=350]
[s]
*soudan_yes
[cm]
[eval exp="f.soudan_rans=1"]
[koukando1_rans]
@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr12.ks" target=*start


*soudan_no
[cm]
[endif]


*wadaichoice




[cm]
[if exp="f.ranskaiwa==0"]
[jump target=*mae]
[endif]

[stopbgm]
[playbgm storage="kaiwa/earlgrey_ontama.ogg"]
[cm]
[freeimage layer=3]


[normal]
[irain][r]
（・・・えーっと、何から話そう？）[l]
[chara_mod name="ranslott" face="normal"]
[message_kakusu_ad]
[freeimage layer=3]



[rans_kaiwakousin]
;会話回数更新






*back
[cm]
;戻るボタン表示
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]
;メニュー表示
;１
[if exp="f.kr1==1"]
[button graphic="kaiwa/kr1_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[else]
[button graphic="kaiwa/kr1.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa1 x=0 y=30]
[endif]
;２
[if exp="f.kr2==1"]
[button graphic="kaiwa/kr2_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.kr11==1"]
[button graphic="kaiwa/kr2.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa2 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]


;３
[if exp="f.kr3==1"]
[button graphic="kaiwa/kr3_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.b2==1"]
[button graphic="kaiwa/kr3.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa3 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]


;４
[if exp="f.jiyuu>6&&f.kr4==1"]
[button graphic="kaiwa/kr4_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.jiyuu>6"]
[button graphic="kaiwa/kr4.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa4 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]



;５
[if exp="f.kr5==1"]
[button graphic="kaiwa/kr5_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.b6==1||f.c6==1"]
[button graphic="kaiwa/kr5.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa5 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;６;クライストのこと
[if exp="f.kr6==1||f.jiyuu>12"]
[button graphic="kaiwa/kr6_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.jiyuu>3"]
[button graphic="kaiwa/kr6.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa6 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;７;女性遍歴
[if exp="f.kr7==1"]
[button graphic="kaiwa/kr7_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.kr14==1"]
[button graphic="kaiwa/kr7.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa7 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]


;８;双剣のこと
[if exp="f.kr8==1"]
[button graphic="kaiwa/kr8_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="f.kr1==1"]
[button graphic="kaiwa/kr8.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa8 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]


;次
[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi x=0 y=270]
[s]

*back1
*tugi
[cm]
;前
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]

;９;食事のこのみ
[if exp="f.kr9==1"]
[button graphic="kaiwa/kr9_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.kr10==1"]
[button graphic="kaiwa/kr9.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa9 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]


;１０;いつも制服なの
[if exp="f.kr10==1"]
[button graphic="kaiwa/kr10_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.kr8==1"]
[button graphic="kaiwa/kr10.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa10 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]

;１１;どんな女性が好み
[if exp="f.kr11==1"]
[button graphic="kaiwa/kr11_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.kr7==1"]
[button graphic="kaiwa/kr11.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa11 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]

;１３



;１４;髪、長いよね
[if exp="f.kr14==1"]
[button graphic="kaiwa/kr14_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kr9==1"]
[button graphic="kaiwa/kr14.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa14 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]

;１５;子供時代、兄弟の間になにかあった？
[if exp="f.kr15==1"]
[button graphic="kaiwa/kr15_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="sf.w_lionend==1"]
[button graphic="kaiwa/kr15.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa15 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;１６;ライオネスのこと
[if exp="f.kr16==1"]
[button graphic="kaiwa/kr16_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="sf.w_ransend==1"]
[button graphic="kaiwa/kr16.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa16 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;１７;母親のこと
[if exp="f.kr17==1"]
[button graphic="kaiwa/kr17_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.a8==1"]
[button graphic="kaiwa/kr17.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa17 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]

;１８であったときのこと、覚えてる・・・
[if exp="f.kr18==1"]
[button graphic="kaiwa/kr18_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="sf.w_ransend==1"]
[button graphic="kaiwa/kr18.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa18 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]

;次
[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;前
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]
[s]


*tugi1
[cm]
;前
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]



;１９テーベにはいついこうか
[if exp="f.kr19==1"]
[button graphic="kaiwa/kr19_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.b2==1"]
[button graphic="kaiwa/kr19.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa19 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]

;２０ライオネスとどっちが強いの
[if exp="f.kr20==1"]
[button graphic="kaiwa/kr20_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="sf.w_lionend==1&&sf.w_ransend==1"]
[button graphic="kaiwa/kr20.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa20 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]


;２１女の人にもてもてだけど
[if exp="f.kr21==1"]
[button graphic="kaiwa/kr21_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.jiyuu>1&&f.kr14==1"]
[button graphic="kaiwa/kr21.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa21 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]



;２２兄弟仲いいよね
[if exp="f.kr22==1"]
[button graphic="kaiwa/kr22_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kr2==1"]
[button graphic="kaiwa/kr22.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa22 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]

;２４ウェルム団長とライオネスは、仲が悪いけど・・・
[if exp="f.kr24==1"]
[button graphic="kaiwa/kr24_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.kr22==1&&f.jiyuu>2"]
[button graphic="kaiwa/kr24.jpg" clickse="tm2_switch001_macchi.ogg" target=*ranskaiwa24 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]


;前
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back1 x=0 y=270]
[s]
;メニュー表示終わり


;
*ranskaiwa1
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr1= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr1.ks" target=*start

*ranskaiwa2
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr2= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr2.ks" target=*start

*ranskaiwa3
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr3= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr3.ks" target=*start

*ranskaiwa4
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr4= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr4.ks" target=*start

*ranskaiwa5
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr5= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr5.ks" target=*start

*ranskaiwa6
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr6= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr6.ks" target=*start

*ranskaiwa7
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr7= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr7.ks" target=*start

*ranskaiwa8
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr8= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr8.ks" target=*start

*ranskaiwa9
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr9= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr9.ks" target=*start

*ranskaiwa10
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr10= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr10.ks" target=*start

*ranskaiwa11
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr11= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr11.ks" target=*start



*ranskaiwa14
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr14= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr14.ks" target=*start

*ranskaiwa15
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr15= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr15.ks" target=*start

*ranskaiwa16
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr16= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr16.ks" target=*start

*ranskaiwa17
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr17= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr17.ks" target=*start

*ranskaiwa18
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr18= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr18.ks" target=*start

*ranskaiwa19
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr19= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr19.ks" target=*start

*ranskaiwa20
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr20= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr20.ks" target=*start

*ranskaiwa21
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr21= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr21.ks" target=*start

*ranskaiwa22
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr22= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr22.ks" target=*start

*ranskaiwa24
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr24= 1 "]
[rans_kaiwakousin][normal]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr24.ks" target=*start




;話題なし
*mada
[cm]
[irain][r]
（何を話せばいいかわからないよ～）[l]
[cm]
@jump target=*back


;戻る
*mae

;すでに好感度があがっているのかどうか、チェック
[if exp="f.rans_koukando_sumi==1"]
[jump target=*skip]
[endif]

;会話したかどうかチェック
[if exp="f.ranskaiwa_genzai>f.ranskaiwa"]

;好感度と恋愛感度ぷらす
[message_settei_ad]
[koukando1_rans]
[eval exp="f.rans_koukando_sumi=1"]

[endif]

*skip
[freeimage layer=1]
[freeimage layer=3]
[chara_hide name="ranslott"]
[fadeoutbgm time=3000]
[cm]
;戻る
[jump storage=kaiwa/kaiwa.ks target=*start]





