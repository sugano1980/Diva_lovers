


[macro name="krakaiwa"]

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
[eval exp="f.krakaiwa_genzai=f.krakaiwa"]

[if exp="f.kra_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]




*wadaichoice



[cm]

[if exp="f.krakaiwa==0"]
[jump target=*mae]
[endif]

;[stopbgm]
;[playbgm storage="odai_ontama.ogg"]
;[cm]
[freeimage layer=3]


[eval exp="tf.kaiwa_klaist=1"]
#&f.name
（・・・えーっと、何から話そう？）[l]
#
[aho_face_normal]

[message_kakusu_ad]
[freeimage layer=3]



[kra_kaiwakousin]
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
;１傭兵の仕事
[if exp="f.kk1==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_1]
[kaiwa_image_1]
[else]

[kaiwa_moji_1]
[kaiwa_image_1]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa1 x=0 y=&tf.kaiwa_y]

[endif]


;２酒場のこと
[if exp="f.kk2==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_2]
[kaiwa_image_2]

[elsif exp="f.kk1==1"]



[kaiwa_moji_2]
[kaiwa_image_2]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa30 x=0 y=&tf.kaiwa_y_2]

[else]

[kaiwa_image_2]

[endif]








;３ライオネスのこと;エルムナード編後

[if exp="f.kk3==1"][eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_3]
[kaiwa_image_3]

[elsif exp="f.kk8==1&&f.disc_3==1"]


[kaiwa_moji_3]
[kaiwa_image_3]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa3 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_3]
[endif]


;４体はだいじょうぶ;エルムナード編ご
[if exp="f.kk4==1"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_4]
[kaiwa_image_4]
[elsif exp="f.d6==1&&f.disc_3==1"]

[kaiwa_moji_4]
[kaiwa_image_4]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa4 x=0 y=&tf.kaiwa_y_4]
[else]
[kaiwa_image_4]
[endif]



;５キスするの・・なれてるの;クライストをカーニバルに誘った時のみ
[if exp="f.kk5==1"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_5]
[kaiwa_image_5]
[elsif exp="f.carnival_kra==1"]
[kaiwa_moji_5]
[kaiwa_image_5]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa5 x=500 y=&tf.kaiwa_y_5]

[else]
[kaiwa_image_5]
[endif]


;６本部のどこに寝泊りしてるの;エルムナード編から
[if exp="f.jiyuu>=10"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_6]
[kaiwa_image_6]
[elsif exp="f.jiyuu>=4&&f.kk6==1"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_6]
[kaiwa_image_6]

[elsif exp="f.jiyuu>=4&&f.disc_3==1"]
[kaiwa_moji_6]
[kaiwa_image_6]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa6 x=500 y=&tf.kaiwa_y_6]

[else]
[kaiwa_image_6]
[endif]

;７ランスロットのこと;エルムナード編から
[if exp="f.kk7==1"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_7]
[kaiwa_image_7]
[elsif exp="f.kk3==1&&f.disc_3==1"]
[kaiwa_moji_7]
[kaiwa_image_7]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa7 x=500 y=&tf.kaiwa_y_7]
[else]
[kaiwa_image_7]
[endif]

;８どんな女の子がすき
[if exp="f.kk8==1"][eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_8]
[kaiwa_image_8]
[elsif exp="f.kk16==1&&f.disc==3"]
[kaiwa_moji_8]
[kaiwa_image_8]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa8 x=500 y=&tf.kaiwa_y_8]

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
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]

;９衣装どうするの;騎士団解散編から
[if exp="f.kk9==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_9]
[kaiwa_image_9]
[elsif exp="f.jiyuu==9.5&&f.b15==1"]
[kaiwa_moji_9]
[kaiwa_image_9]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa9 x=0 y=&tf.kaiwa_y_9]

[else]

[kaiwa_image_9]
[endif]
;１０





;１３どんなドレスがすき;騎士団解散編から
[if exp="f.kk13==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_10]
[kaiwa_image_10]
[elsif exp="f.jiyuu==9.5&&f.b15==1"]
[kaiwa_moji_10]
[kaiwa_image_10]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa13 x=0 y=&tf.kaiwa_y_10]

[else]
[kaiwa_image_10]
[endif]

;１４王宮について;エルムナード編から
[if exp="f.kk14==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_11]
[kaiwa_image_11]

[elsif exp="f.jiyuu==8&&f.disc_3==1"]
[kaiwa_moji_11]
[kaiwa_image_11]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa14 x=0 y=&tf.kaiwa_y_11]
[else]

[kaiwa_image_11]
[endif]


;１５お酒はすき;エルムナード編から
[if exp="f.kk15==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[elsif exp="f.kk21==1&&f.disc_3==1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa15 x=0 y=&tf.kaiwa_y_12]
[else]
[kaiwa_image_12]
[endif]


;１６どんな料理が好き

[if exp="f.kk16==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[elsif exp="f.kk2==1||f.kk13==1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa16 x=500 y=&tf.kaiwa_y_13]

[else]
[kaiwa_image_13]
[endif]

;１７不思議な髪の色

[if exp="f.kk17==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[elsif exp="f.kk1==1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa17 x=500 y=&tf.kaiwa_y_14]
[else]

[kaiwa_image_14]
[endif]

;１８普段は何をしてるの；エルムナード編から

[if exp="f.kk18==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_15]
[kaiwa_image_15]
[elsif exp="f.kk15==1&&f.disc_3==1"]
[kaiwa_moji_15]
[kaiwa_image_15]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa18 x=500 y=&tf.kaiwa_y_15]
[else]

[kaiwa_image_15]
[endif]

;１９ヴァンディットさんのことはしってるの;エルムナード編から

[if exp="f.kk19==1||f.jiyuu>=8"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_16]
[kaiwa_image_16]
;ver1.01で変更（条件あり）
[elsif exp="f.jiyuu==16||f.jiyuu==8&&f.disc_3==1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa19 x=500 y=&tf.kaiwa_y_16]


[else]
[kaiwa_image_16]
[endif]


;次
[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=35 y=270]



;前
[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]
[if exp="f.jiyuu>=11"]

[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]


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



;２０いつも何考えてるの
[if exp="f.kk20==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[elsif exp="f.kk16==1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa20 x=0 y=&tf.kaiwa_y_17]
[else]

[kaiwa_image_17]
[endif]

;２１綺麗な顔立ちしてるよね
[if exp="f.kk21==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[elsif exp="f.kk18==1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa21 x=0 y=&tf.kaiwa_y_18]
[else]

[kaiwa_image_18]
[endif]


;２２女の子にもてるのかな
[if exp="f.kk22==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[elsif exp="f.kk20==1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa22 x=0 y=&tf.kaiwa_y_19]
[else]

[kaiwa_image_19]
[endif]




;前
[glink target=*back1 text="（前のページ）" size=17 width=150 x=535 y=270]



[s]
;メニュー表示終わり


;
*krakaiwa1
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk1= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk1_new.ks" target=*start

*krakaiwa3
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk3= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk3_new.ks" target=*start




*krakaiwa4
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk4= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk4_new.ks" target=*start


*krakaiwa5
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk5= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk5_new.ks" target=*start



*krakaiwa6
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk6= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk6_new.ks" target=*start



*krakaiwa7
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk7= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk7_new.ks" target=*start




*krakaiwa8
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk8= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk8_new.ks" target=*start



*krakaiwa9
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk9= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk9_new.ks" target=*start





*krakaiwa13
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk13= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk13_new.ks" target=*start





*krakaiwa14
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk14= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk14_new.ks" target=*start





*krakaiwa15
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk15= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk15_new.ks" target=*start





*krakaiwa16
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk16= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk16_new.ks" target=*start





*krakaiwa17
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk17= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk17_new.ks" target=*start




*krakaiwa18
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk18= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk18_new.ks" target=*start




*krakaiwa19
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk19= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk19_new.ks" target=*start




*krakaiwa20
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk20= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk20_new.ks" target=*start




*krakaiwa21
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk21= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk21_new.ks" target=*start




*krakaiwa22
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk22= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk22_new.ks" target=*start


*krakaiwa24
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk24= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk24_new.ks" target=*start



*krakaiwa30
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk2= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk2_new.ks" target=*start











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
[if exp="f.kra_koukando_sumi==1"]
[jump target=*skip]
[endif]

;会話したかどうかチェック
[if exp="f.krakaiwa_genzai>f.krakaiwa"]

;好感度と恋愛感度ぷらす
[message_settei_ad]
[koukando1_kra]
[koukando_up]
[eval exp="f.kra_koukando_sumi=1"]

[endif]

*skip
[eval exp="tf.kaiwa_klaist=0"]
[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2]
[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



