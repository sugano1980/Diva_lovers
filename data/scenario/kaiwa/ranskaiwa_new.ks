


[macro name="ranskaiwa"]

*start






[cm]

[if exp="f.jiyuu>6"]
[eval exp="f.krhaikei=1"]
[else]
[eval exp="f.krhaikei=0"]
[endif]
@clearfix name="role_button"








*kaiwa
[call storage="kaiwakousin.ks"]
[call storage="kaiwa/kaiwa_button_macro.ks"]
[call storage="kaiwa/kaiwa_button_moji_macro.ks"]


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

;[stopbgm]
;[playbgm storage="kaiwa/earlgrey_ontama.ogg"]
[cm]
[freeimage layer=3]


[eval exp="tf.kaiwa_ranslott=1"]
#&f.name
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
;１応急騎士団の仕事
[if exp="f.kr1==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_1]
[kaiwa_image_1]

[else]

[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa1 x=0 y=&tf.kaiwa_y]
[kaiwa_moji_1]
[kaiwa_image_1]

[endif]





;２双剣のこと

[if exp="f.kr2==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_2]
[kaiwa_image_2]

[elsif exp="f.kr1==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa7 x=0 y=&tf.kaiwa_y_2]
[kaiwa_moji_2]
[kaiwa_image_2]
[else]

[kaiwa_image_2]
[endif]




;３お酒は結構飲むのかな；ランスお祝い食事イベント後
[if exp="f.kr3==1"]
[kaiwa_moji_3]
[kaiwa_image_3]
[eval exp="tf.kaiwa_sumi=1"]
[elsif exp="f.b2==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa3 x=0 y=&tf.kaiwa_y_3]
[kaiwa_moji_3]
[kaiwa_image_3]

[else]

[kaiwa_image_3]
[endif]



;4ヴァンディットのこと;エルムナード後
[if exp="f.kr4==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_4]
[kaiwa_image_4]

[elsif exp="f.b6==1||f.c6==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch004_macchi.ogg" target=*ranskaiwa4 x=400 y=&tf.kaiwa_y_4]
[kaiwa_moji_4]
[kaiwa_image_4]

[else]

[kaiwa_image_4]

[endif]


;5;クライストのこと;エルムナード後
[if exp="f.kr5==1||f.jiyuu>12"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_5]
[kaiwa_image_5]
[elsif exp="f.jiyuu>3||f.disc_3==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch005_macchi.ogg" target=*ranskaiwa5 x=500 y=&tf.kaiwa_y]
[kaiwa_moji_5]
[kaiwa_image_5]
[else]

[kaiwa_image_5]
[endif]



;6;女性遍歴
[if exp="f.kr6==1"]
[eval exp="tf.kaiwa_sumi=1"]


[kaiwa_moji_6]
[kaiwa_image_6]

[elsif exp="f.kr8==1"]
[kaiwa_moji_6]
[kaiwa_image_6]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa6 x=500 y=&tf.kaiwa_y_2]

[else]

[kaiwa_image_6]

[endif]



;7;私の故郷テーベのこと
[if exp="f.kr7==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_7]
[kaiwa_image_7]

[elsif exp="f.kr8==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa2 x=500 y=&tf.kaiwa_y_3]
[kaiwa_moji_7]
[kaiwa_image_7]

[else]

[kaiwa_image_7]

[endif]


;8;食事のこのみ
[if exp="f.kr8==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_8]
[kaiwa_image_8]
[elsif exp="f.kr9==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa8 x=500 y=&tf.kaiwa_y_4]
[kaiwa_moji_8]
[kaiwa_image_8]

[else]

[kaiwa_image_8]
[endif]


;次
[glink target=*tugi text="（次のページ）" size=17 width=150 x=35 y=270]


[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]


[s]

*back1
*tugi
[cm]
[free name="kaiwa" layer=2]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]




;9;いつも制服なの
[if exp="f.kr9==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_9]
[kaiwa_image_9]


[elsif exp="f.kr2==1"]

[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa9 x=0 y=&tf.kaiwa_y]
[kaiwa_moji_9]
[kaiwa_image_9]

[else]

[kaiwa_image_9]
[endif]



;10;どんな女性が好み；エルムナードご
[if exp="f.kr10==1"]
[eval exp="tf.kaiwa_sumi=1"]


[kaiwa_moji_10]
[kaiwa_image_10]

[elsif exp="f.kr8==1&&f.disc_3==1"]

[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa10 x=0 y=&tf.kaiwa_y_2]
[kaiwa_moji_10]
[kaiwa_image_10]

[else]

[kaiwa_image_10]

[endif]






;１1;王宮騎士団、それともウェスタ？；解散編
[if exp="f.kr11==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_11]
[kaiwa_image_11]

[elsif exp="f.kr9==1&&f.disc_4==1"]
[kaiwa_moji_11]
[kaiwa_image_11]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa11 x=0 y=&tf.kaiwa_y_3]

[else]

[kaiwa_image_11]
[endif]


;１2;髪長いよね
[if exp="f.kr12==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_12]
[kaiwa_image_12]

[elsif exp="f.kr8==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa12 x=0 y=&tf.kaiwa_y_4]
[kaiwa_moji_12]
[kaiwa_image_12]

[else]

[kaiwa_image_12]
[endif]


;１3;子供の頃、兄弟の間に何かあった？；エンディングご
[if exp="f.kr13==1"]
[eval exp="tf.kaiwa_sumi=1"]


[kaiwa_moji_13]
[kaiwa_image_13]
[elsif exp="sf.w_ransend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa13 x=500 y=&tf.kaiwa_y]
[kaiwa_moji_13]
[kaiwa_image_13]

[else]

[kaiwa_image_13]
[endif]



;１4;ライオネスのこと;エルムナードご
[if exp="f.kr14==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_14]
[kaiwa_image_14]

[elsif exp="f.a8==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa14 x=500 y=&tf.kaiwa_y_2]
[kaiwa_moji_14]
[kaiwa_image_14]

[else]

[kaiwa_image_14]
[endif]


;１5母親のこと；エンドご
[if exp="f.kr15==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_15]
[kaiwa_image_15]

[elsif exp="sf.w_ransend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa15 x=500 y=&tf.kaiwa_y_3]

[kaiwa_moji_15]
[kaiwa_image_15]
[else]

[kaiwa_image_15]
[endif]

;１6出会った頃のこと、覚えてる;ランスエンド後
[if exp="f.kr16==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[elsif exp="sf.w_ransend==1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa16 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_16]
[endif]



;次
[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=0 y=270]
[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]

[s]


*tugi1
[cm]
[free name="kaiwa" layer=2]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]




;17テーベにはいつ行こうか;ランスと試験のお祝いした後
[if exp="f.kr17==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_17]
[kaiwa_image_17]
[elsif exp="f.b2==1"]
[kaiwa_moji_17]
[kaiwa_image_17]

[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa17 x=0 y=&tf.kaiwa_y]

[else]

[kaiwa_image_17]
[endif]


;18らいオネスとどっちが強いの
[if exp="f.kr18==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_18]
[kaiwa_image_18]

[elsif exp="sf.w_ransend==1&&sf.w_lionend==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa18 x=0 y=&tf.kaiwa_y_2]
[kaiwa_moji_18]
[kaiwa_image_18]

[else]

[kaiwa_image_18]
[endif]




;19女の人にモテモテだけど;エルムナードご
[if exp="f.kr19==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_19]
[kaiwa_image_19]
[elsif exp="f.kr12==1&&f.disc_3==1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa19 x=0 y=&tf.kaiwa_y_3]

[else]

[kaiwa_image_19]
[endif]


;20兄弟仲いいよねエルムナードご
[if exp="f.kr20==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_20]
[kaiwa_image_20]

[elsif exp="f.kr7==1&&f.disc_3==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa20 x=0 y=&tf.kaiwa_y_4]
[kaiwa_moji_20]
[kaiwa_image_20]
[else]

[kaiwa_image_20]
[endif]


;２１ウェルム団長とライオネスは、仲が悪いけど・・・
[if exp="f.kr21==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_21]
[kaiwa_image_21]

[elsif exp="f.kr20==1&&f.disc_3==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*ranskaiwa24 x=500 y=&tf.kaiwa_y]
[kaiwa_moji_21]
[kaiwa_image_21]
[else]

[kaiwa_image_21]
[endif]




;前

[glink target=*back1 text="（前のページ）" size=17 width=150 x=0 y=270]


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

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr2_new.ks" target=*start

*ranskaiwa3
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr3= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr3_new.ks" target=*start

*ranskaiwa4
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr4= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr5.ks" target=*start

*ranskaiwa5
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr5= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr6.ks" target=*start

*ranskaiwa6
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr6= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr7.ks" target=*start

*ranskaiwa7
[message_settei_ad]
[free name="kaiwa" layer=2]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr7= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr8_new.ks" target=*start

*ranskaiwa8
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr8= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr9_new.ks" target=*start

*ranskaiwa9
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr9= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr10_new.ks" target=*start

*ranskaiwa10
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr10= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr11.ks" target=*start

*ranskaiwa11
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr11= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr12.ks" target=*start









*ranskaiwa12
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr12= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr14_new.ks" target=*start

*ranskaiwa13
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr13= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr15.ks" target=*start

*ranskaiwa14
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr14= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr16.ks" target=*start

*ranskaiwa15
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr15= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr17.ks" target=*start

*ranskaiwa16
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr16= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr18.ks" target=*start

*ranskaiwa17
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr17= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr19_new.ks" target=*start

*ranskaiwa18
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr18= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr20.ks" target=*start

*ranskaiwa19
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr19= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr21.ks" target=*start

*ranskaiwa20
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr20= 1 "]
[rans_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/rans_kaiwa_kr22.ks" target=*start

*ranskaiwa21
[message_settei_ad]
[eval exp="f.ranskaiwa=f.ranskaiwa-1"][freeimage layer=1]
[eval exp="f.kr21= 1 "]
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
[eval exp="tf.kaiwa_ranslott=0"]
[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2]
[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



