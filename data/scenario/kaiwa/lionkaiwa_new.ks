


[macro name="lionkaiwa"]

*start






[cm]

;[if exp="f.jiyuu>6"]
[eval exp="f.klhaikei=1"]
;[else]
[eval exp="f.klhaikei=0"]
;[endif]
@clearfix name="role_button"




[eval exp="f.lionkaiwa=2"]



*kaiwa
[call storage="kaiwakousin.ks"]
[call storage="kaiwa/kaiwa_button_macro.ks"]
[call storage="kaiwa/kaiwa_button_moji_macro.ks"]


;現在の会話回数を記憶
[eval exp="f.lionkaiwa_genzai=f.lionkaiwa"]

[if exp="f.lion_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]




*wadaichoice




[cm]
[if exp="f.lionkaiwa==0"]
[jump target=*mae]
[endif]

;[stopbgm]
;[playbgm storage="rakuyou_ontama.ogg"]
[cm]
[freeimage layer=3]


[eval exp="tf.kaiwa_lioness=1"]
#&f.name
（・・・えーっと、何から話そう？）[l]
#
[lioness_face_normal]

[message_kakusu_ad]
[freeimage layer=3]



[lion_kaiwakousin]
;会話回数更新






*back
[cm]
[free name="kaiwa" layer=2]
;戻るボタン表示
;;[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;;[else]
;;[endif]
;メニュー表示
;１大剣のこと
[if exp="f.kl1==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_1]
[kaiwa_image_1]

[else]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*lionkaiwa1 x=0 y=&tf.kaiwa_y]
[kaiwa_moji_1]
[kaiwa_image_1]
[endif]





;２背高いよね

[if exp="f.kl2==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_2]
[kaiwa_image_2]

[elsif exp="f.kl1==1"]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*lionkaiwa2 x=0 y=&tf.kaiwa_y_2]
[kaiwa_moji_2]
[kaiwa_image_2]
[else]

[kaiwa_image_2]
[endif]



;３クライストのこと；エルムナード編後
[if exp="f.kl3==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_3]
[kaiwa_image_3]
[elsif exp="f.jiyuu>=3&&f.disc_3==1"]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa3 x=0 y=&tf.kaiwa_y_3]
[kaiwa_moji_3]
[kaiwa_image_3]
[else]

[kaiwa_image_3]
[endif]

;４好きな女性のこのみ
[if exp="f.kl4==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_4]
[kaiwa_image_4]
[elsif exp="f.kl1==1"]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa4 x=0 y=&tf.kaiwa_y_4]
[kaiwa_moji_4]
[kaiwa_image_4]

[else]

[kaiwa_image_4]
[endif]

;５女性遍歴
[if exp="f.kl5==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_5]
[kaiwa_image_5]

[elsif exp="f.kl4==1"]
[kaiwa_moji_5]
[kaiwa_image_5]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa5 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_5]

[endif]

;６竜の赤ちゃん;エルムナード編後
[if exp="f.jiyuu>=9&&f.kl6==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_6]
[kaiwa_image_6]

[elsif exp="f.jiyuu>8&&f.disc_3==1"]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa6 x=500 y=&tf.kaiwa_y_2]
[kaiwa_moji_6]
[kaiwa_image_6]

[else]


[kaiwa_image_6]
[endif]


;７地方騎士団の解散について；騎士団解散編後
[if exp="f.jiyuu==10&&f.kl7==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_7]
[kaiwa_image_7]

[elsif exp="f.jiyuu==10&&f.disc_4==1"]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa7 x=500 y=&tf.kaiwa_y_3]
[kaiwa_moji_7]
[kaiwa_image_7]

[elsif exp="f.jiyuu>10"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_7]
[kaiwa_image_7]

[else]
[kaiwa_image_7]
[endif]


;８ライオネスって衣装もってるの；エルムナード後
[if exp="f.jiyuu==9.5&&f.kl8==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_8]
[kaiwa_image_8]


[elsif exp="f.jiyuu==9.5&&f.disc_3==1"]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa8 x=500 y=&tf.kaiwa_y_4]
[kaiwa_moji_8]
[kaiwa_image_8]

[else]

[kaiwa_image_8]

[endif]




;次

[glink target=*tugi text="（次のページ）" size=17 width=150 x=35 y=270]



[s]

*back1
*tugi
[cm]
[free name="kaiwa" layer=2]
;前
;[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[endif]


;9どんなドレスがすき；エルムナード編後


[if exp="f.kl9==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_9]
[kaiwa_image_9]

[elsif exp="f.jiyuu==9.5&&f.disc_3==1"]
[kaiwa_moji_9]
[kaiwa_image_9]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa9 x=0 y=&tf.kaiwa_y]
[else]

[kaiwa_image_9]

[endif]


;10王宮騎士団、それともウェスタ；騎士団解散編やエルムナード編後

[if exp="f.kl10==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_10]
[kaiwa_image_10]

[elsif exp="f.jiyuu_10==1&&f.disc_4==1"]
[kaiwa_moji_10]
[kaiwa_image_10]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa10 x=0 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_10]
[endif]






;１1見習いの時、王宮騎士団にいたんだよね
[if exp="f.kl11==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_11]
[kaiwa_image_11]

[elsif exp="f.kl2==1&&f.disc_4==1"]
[kaiwa_moji_11]
[kaiwa_image_11]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa11 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_11]

[endif]


;１2いつもどれくらい食べるの
[if exp="f.kl12==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[elsif exp="f.kl11==1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa8 x=0 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_12]
[endif]


;１3からだはもう平気；カーニバルでライと一緒に行動した時
[if exp="f.kl13==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[elsif exp="f.carnival_lion==1&&f.disc_3==1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa13 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_13]
[endif]

;１４野菜も食べなきゃダメだよ
[if exp="f.kl14==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[elsif exp="f.kl12==1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa14 x=500 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_14]
[endif]

;15
;母親のこと（sp
[if exp="f.kl15==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_15]
[kaiwa_image_15]
[elsif exp="f.a8==1"]
[kaiwa_moji_15]
[kaiwa_image_15]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa15 x=500 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_15]
[endif]

;16
;どんな子供だった
[if exp="f.kl16==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[elsif exp="f.kl5==1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa16 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_16]
[endif]




;次
;;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;;[ptext layer=2 page=fore text="次のページ" exp=antique name="kaiwa" color="white" size=20 x=65 y=280]
;;[image layer=1 page=fore storage="kl_kara.jpg" name="kaiwa" x=0 y=270]
[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=35 y=270]




;;[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi1 x=0 y=270]
;前
;;[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]
;;[ptext layer=2 page=fore text="前のページ" exp=antique name="kaiwa" color="white" size=20 x=565 y=280]
;;[image layer=1 page=fore storage="kl_kara.jpg" name="kaiwa" x=565 y=270]
;;[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back x=500 y=270]

[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]

[s]


*tugi1
[cm]
[free name="kaiwa" layer=2]
;前
;[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[endif]


;17
;兄弟仲いいよねエルムナード後
[if exp="f.kl17==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[elsif exp="f.disc_3==1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa17 x=0 y=&tf.kaiwa_y]
[else]
[kaiwa_image_17]
[endif]

;18
;２０ランスロットのこと（雷エンドご
[if exp="f.kl18==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[elsif exp="sf.w_lionend==1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa18 x=0 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_18]
[endif]
;19
;ランスロットとどっちが強いの兄弟エンドご
[if exp="f.kl19==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[elsif exp="sf.w_ransend==1&&sf.w_lionend==1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa19 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_19]
[endif]


;20
;ウェルム団長との仲エルムナードご
[if exp="f.kl20==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_20]
[kaiwa_image_20]
[elsif exp="f.jiyuu>6&&f.jiyuu<10&&f.disc_3==1"]
[kaiwa_moji_20]
[kaiwa_image_20]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa20 x=0 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_20]
[endif]



;２３ユリアのこと；廃止予定

;21
;ヴァンディットのことエルムナードご
[if exp="f.kl21==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[elsif exp="f.jiyuu>8&&f.a8==1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa21 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_21]
[endif]

;22
;あの時はありがとうエルムナードご
[if exp="f.kl22==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[elsif exp="f.jiyuu>8&&f.a8==1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa22 x=500 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_22]
[endif]

;23
;動物のことに詳しいのエルムナード後
[if exp="f.kl23==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[elsif exp="f.jiyuu>8&&f.a8==1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa23 x=500 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_23]
[endif]





;前

[glink target=*back1 text="（前のページ）" size=17 width=150 x=35 y=270]


[s]
;メニュー表示終わり


;
*lionkaiwa1
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl1= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl1_new.ks" target=*start

*lionkaiwa2
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl1= 1 "]
[lion_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl2_new.ks" target=*start

*lionkaiwa3
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl3= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl3.ks" target=*start

*lionkaiwa4
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl4= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl4_new.ks" target=*start

*lionkaiwa5
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl5= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl5_new.ks" target=*start

*lionkaiwa6
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl6= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl6.ks" target=*start

*lionkaiwa7
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl7= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl7.ks" target=*start

*lionkaiwa8
[message_settei_ad]
[free name="kaiwa" layer=2]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl8= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl2_new.ks" target=*start

*lionkaiwa9
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl9= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl9.ks" target=*start

*lionkaiwa10
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl10= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl10_new.ks" target=*start

*lionkaiwa11
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl11= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl11.ks" target=*start



*lionkaiwa14
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl14= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl14_new.ks" target=*start

*lionkaiwa15
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl15= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl15.ks" target=*start

*lionkaiwa16
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl16= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl16.ks" target=*start

*lionkaiwa17
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl17= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl17_new.ks" target=*start

*lionkaiwa18
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl18= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl18.ks" target=*start

*lionkaiwa19
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl19= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl19.ks" target=*start

*lionkaiwa20
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl20= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl20.ks" target=*start

*lionkaiwa21
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl21= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl21.ks" target=*start

*lionkaiwa22
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl22= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl22.ks" target=*start

*lionkaiwa24
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl24= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/lion_kaiwa_kl24.ks" target=*start




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
[if exp="f.lion_koukando_sumi==1"]
[jump target=*skip]
[endif]

;会話したかどうかチェック
[if exp="f.lionkaiwa_genzai>f.lionkaiwa"]

;好感度と恋愛感度ぷらす
[message_settei_ad]
[koukando1_lion]
[koukando_up]
[eval exp="f.lion_koukando_sumi=1"]

[endif]

*skip
[eval exp="tf.kaiwa_lioness=0"]
[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2]
[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



