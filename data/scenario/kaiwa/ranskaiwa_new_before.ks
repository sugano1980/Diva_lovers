


[macro name="ranskaiwa"]

*start






[cm]

[if exp="f.jiyuu>6"]
[eval exp="f.krhaikei=1"]
[else]
[eval exp="f.krhaikei=0"]
[endif]
@clearfix name="role_button"




[eval exp="f.ranskaiwa=2"]



*kaiwa

;現在の会話回数を記憶
[eval exp="f.ranskaiwa_genzai=f.ranskaiwa"]

[if exp="f.rans_jizenkaiwa==1"]
[jump target=*modottekita]
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



#イレイン
（・・・えーっと、何から話そう？）[l]
#
[baka_exp_normal]

[message_kakusu_ad]
[freeimage layer=3]



[rans_kaiwakousin]
;会話回数更新






*back
[cm]
[free name="kaiwa" layer=2]
;戻るボタン表示
;[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[else]
;[endif]
;メニュー表示
;１
[if exp="f.kr1==1"]
[image layer=1 page=fore visible=true storage="kr_kara.jpg" name="kaiwa" x=0 y=30]
[ptext layer=2 page=fore text="王宮騎士団の仕事" face=antique name="kaiwa" color="black" size=20 x=65 y=40]

[else]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa1 x=0 y=30]
[ptext layer=2 page=fore text="王宮騎士団の仕事" face=antique name="kaiwa" color="white" size=20 x=65 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]
[endif]

;[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_3 y=&tf.command_y_3]
;[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*kadai x=&tf.command_x_3 y=&tf.command_y_3_button]
;[ptext layer=2 page=fore text="課題" face=antique name="command" color="brown" size=20 x=&tf.command_x_3_moji y=&tf.command_y_3_moji]




;２
[if exp="f.kr2==1"]
[ptext layer=2 page=fore text="私の故郷テーベのこと" face=antique name="kaiwa" color="black" size=20 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]

[elsif exp="f.kr11==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa2 x=0 y=90]
[ptext layer=2 page=fore text="私の故郷テーベのこと" face=antique name="kaiwa" color="white" size=20 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]
[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]
[endif]

;[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]



;３
[if exp="f.kr3==1"]
[ptext layer=2 page=fore text="お酒は結構飲むのかな？" face=antique name="kaiwa" color="black" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]

[elsif exp="f.b2==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa3 x=0 y=150]
[ptext layer=2 page=fore text="お酒は結構飲むのかな？" face=antique name="kaiwa" color="white" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]
[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]
[endif]




;４
[if exp="f.jiyuu>6&&f.kr4==1"]

[ptext layer=2 page=fore text="ユリアさんのこと" face=antique name="kaiwa" color="white" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]
[elsif exp="f.jiyuu>6"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa4 x=0 y=210]
[ptext layer=2 page=fore text="ユリアさんのこと" face=antique name="kaiwa" color="white" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]
[endif]




;５
[if exp="f.kr5==1"]
[ptext layer=2 page=fore text="ヴァンディットのこと" face=antique name="kaiwa" color="black" size=20 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[elsif exp="f.b6==1||f.c6==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa5 x=500 y=30]
[ptext layer=2 page=fore text="ヴァンディットのこと" face=antique name="kaiwa" color="white" size=20 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[endif]


;６;クライストのこと
[if exp="f.kr6==1||f.jiyuu>12"]
[ptext layer=2 page=fore text="クライストのこと" face=antique name="kaiwa" color="black" size=20 x=565 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]

[elsif exp="f.jiyuu>3"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa6 x=500 y=90]
[ptext layer=2 page=fore text="クライストのこと" face=antique name="kaiwa" color="white" size=20 x=565 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]
[endif]



;７;女性遍歴
[if exp="f.kr7==1"]
[ptext layer=2 page=fore text="女性遍歴" face=antique name="kaiwa" color="black" size=20 x=565 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]

[elsif exp="f.kr14==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa1 x=500 y=150]
[ptext layer=2 page=fore text="女性遍歴" face=antique name="kaiwa" color="white" size=20 x=565 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]
[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]

[endif]



;８;双剣のこと
[if exp="f.kr8==1"]
[ptext layer=2 page=fore text="双剣のこと" face=antique name="kaiwa" color="black" size=20 x=565 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]

[elsif exp="f.kr1==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa8 x=500 y=210]
[ptext layer=2 page=fore text="双剣のこと" face=antique name="kaiwa" color="white" size=20 x=565 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]

[endif]



;次
;[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi x=0 y=270]
;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*tugi x=0 y=270]
;[ptext layer=2 page=fore text="次のページ" face=antique name="kaiwa" color="white" size=20 x=65 y=280]
;[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=270]

[glink target=*tugi text="（次のページ）" size=17 width=150 x=35 y=270]



[s]

*back1
*tugi
[cm]
[free name="kaiwa" layer=2]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=650 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=650 y=330]
[endif]

;９;食事のこのみ
[if exp="f.kr9==1"]
[ptext layer=2 page=fore text="食事の好み" face=antique name="kaiwa" color="black" size=20 x=65 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]

[elsif exp="f.kr10==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa9 x=0 y=30]
[ptext layer=2 page=fore text="食事の好み" face=antique name="kaiwa" color="white" size=20 x=65 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]

[endif]



;１０;いつも制服なの
[if exp="f.kr10==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa10 x=0 y=90]
[ptext layer=2 page=fore text="いつも制服なの" face=antique name="kaiwa" color="white" size=20 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]

[elsif exp="f.kr8==1"]

[ptext layer=2 page=fore text="いつも制服なの" face=antique name="kaiwa" color="black" size=20 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]
[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]
[endif]

;[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]


;１１;どんな女性が好み
[if exp="f.kr11==1"]
[ptext layer=2 page=fore text="どんな女性が好み" face=antique name="kaiwa" color="black" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]

[elsif exp="f.kr7==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa11 x=0 y=150]
[ptext layer=2 page=fore text="どんな女性が好み" face=antique name="kaiwa" color="white" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]


[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]
[endif]


;１３



;１４;髪、長いよね
[if exp="f.kr14==1"]
[ptext layer=2 page=fore text="髪、長いよね" face=antique name="kaiwa" color="black" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]

[elsif exp="f.kr9==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa14 x=0 y=210]
[ptext layer=2 page=fore text="髪、長いよね" face=antique name="kaiwa" color="white" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]
[endif]


;１５;子供時代、兄弟の間になにかあった？
[if exp="f.kr15==1"]
[ptext layer=2 page=fore text="子供時代、兄弟の間に何かあった？" face=antique name="kaiwa" color="black" size=20 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[elsif exp="sf.w_lionend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa15 x=500 y=30]
[ptext layer=2 page=fore text="子供時代、兄弟の間に何かあった？" face=antique name="kaiwa" color="white" size=20 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]
[endif]


;１６;ライオネスのこと
[if exp="f.kr16==1"]
[ptext layer=2 page=fore text="ライオネスのこと" face=antique name="kaiwa" color="black" size=20 x=565 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]

[elsif exp="sf.w_ransend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa16 x=500 y=90]
[ptext layer=2 page=fore text="ライオネスのこと" face=antique name="kaiwa" color="white" size=20 x=565 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=90]
[endif]



;１７;母親のこと
[if exp="f.kr17==1"]
[ptext layer=2 page=fore text="母親のこと" face=antique name="kaiwa" color="black" size=20 x=565 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]

[elsif exp="f.a8==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa17 x=500 y=150]
[ptext layer=2 page=fore text="母親のこと" face=antique name="kaiwa" color="white" size=20 x=565 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=150]
[endif]


;１８であったときのこと、覚えてる・・・
[if exp="f.kr18==1"]
[ptext layer=2 page=fore text="出会ったときのこと、覚えてる？" face=antique name="kaiwa" color="black" size=20 x=565 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]

[elsif exp="sf.w_ransend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa1 x=500 y=210]
[ptext layer=2 page=fore text="出会ったときのこと、覚えてる？" face=antique name="kaiwa" color="white" size=20 x=565 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=210]
[endif]


;次
;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;[ptext layer=2 page=fore text="次のページ" face=antique name="kaiwa" color="white" size=20 x=65 y=280]
;[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=270]
;[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=0 y=270]




;[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;前
;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]
;[ptext layer=2 page=fore text="前のページ" face=antique name="kaiwa" color="white" size=20 x=565 y=280]
;[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=565 y=270]
;[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]

[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]

[s]


*tugi1
[cm]
[free name="kaiwa" layer=2]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=650 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=650 y=330]
[endif]



;１９テーベにはいついこうか
[if exp="f.kr19==1"]
[ptext layer=2 page=fore text="テーベにはいつ行こうか" face=antique name="kaiwa" color="black" size=20 x=65 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]

[elsif exp="f.b2==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa19 x=0 y=30]
[ptext layer=2 page=fore text="テーベにはいつ行こうか" face=antique name="kaiwa" color="white" size=20 x=65 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=30]
[endif]

;２０ライオネスとどっちが強いの
[if exp="f.kr20==1"]
[elsif exp="sf.w_lionend==1&&sf.w_ransend==1"]
[ptext layer=2 page=fore text="ライオネスとどっちが強いの" face=antique name="kaiwa" color="black" size=17 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]

[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa20 x=0 y=90]
[ptext layer=2 page=fore text="ライオネスとどっちが強いの" face=antique name="kaiwa" color="white" size=17 x=65 y=100]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=90]
[endif]


;２１女の人にもてもてだけど
[if exp="f.kr21==1"]
[ptext layer=2 page=fore text="女の人にモテモテだけど" face=antique name="kaiwa" color="black" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]

[elsif exp="f.jiyuu>1&&f.kr14==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa21 x=0 y=150]
[ptext layer=2 page=fore text="女の人にモテモテだけど" face=antique name="kaiwa" color="white" size=20 x=65 y=160]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=150]
[endif]




;２２兄弟仲いいよね
[if exp="f.kr22==1"]
[ptext layer=2 page=fore text="兄弟仲良いよね" face=antique name="kaiwa" color="black" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]

[elsif exp="f.kr2==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa22 x=0 y=210]
[ptext layer=2 page=fore text="兄弟仲良いよね" face=antique name="kaiwa" color="white" size=20 x=65 y=220]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=0 y=210]
[endif]


;２４ウェルム団長とライオネスは、仲が悪いけど・・・
[if exp="f.kr24==1"]
[ptext layer=2 page=fore text="ウェルム団長とライオネスは、仲が悪いけど・・・" face=antique name="kaiwa" color="black" size=17 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[elsif exp="f.kr22==1&&f.jiyuu>2"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa24 x=500 y=30]
[ptext layer=2 page=fore text="ウェルム団長とライオネスは、仲が悪いけど・・・" face=antique name="kaiwa" color="white" size=17 x=565 y=40]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]

[else]
[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=30]
[endif]



;前
;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*back1 x=0 y=270]
;[ptext layer=2 page=fore text="前のページ" face=antique name="kaiwa" color="white" size=20 x=0 y=280]
;[image layer=1 page=fore storage="kr_kara.jpg" name="kaiwa" x=500 y=270]
[glink target=*back1 text="（前のページ）" size=17 width=150 x=0 y=270]


;[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back1 x=0 y=270]
[s]
;メニュー表示終わり


;
*ranskaiwa1
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr1= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr1_new.ks" target=*start

*ranskaiwa2
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr2= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr2.ks" target=*start

*ranskaiwa3
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr3= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr3.ks" target=*start

*ranskaiwa4
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr4= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr4.ks" target=*start

*ranskaiwa5
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr5= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr5.ks" target=*start

*ranskaiwa6
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr6= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr6.ks" target=*start

*ranskaiwa7
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr7= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr7.ks" target=*start

*ranskaiwa8
[message_settei_ad]
[free name="kaiwa" layer=2]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr8= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr8_new.ks" target=*start

*ranskaiwa9
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr9= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr9.ks" target=*start

*ranskaiwa10
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr10= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr10_new.ks" target=*start

*ranskaiwa11
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr11= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr11.ks" target=*start



*ranskaiwa14
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr14= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr14.ks" target=*start

*ranskaiwa15
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr15= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr15.ks" target=*start

*ranskaiwa16
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr16= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr16.ks" target=*start

*ranskaiwa17
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr17= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr17.ks" target=*start

*ranskaiwa18
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr18= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr18.ks" target=*start

*ranskaiwa19
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr19= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr19.ks" target=*start

*ranskaiwa20
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr20= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr20.ks" target=*start

*ranskaiwa21
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr21= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr21.ks" target=*start

*ranskaiwa22
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr22= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr22.ks" target=*start

*ranskaiwa24
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr24= 1 "]
[rans_kaiwakousin]
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
[koukando_up]
[eval exp="f.rans_koukando_sumi=1"]

[endif]

*skip
[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2]
[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



