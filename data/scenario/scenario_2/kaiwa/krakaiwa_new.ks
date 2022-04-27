


[macro name="krakaiwa"]

*start


[call storage="scenario_2/renaikousin.ks"]



[cm]

[if exp="f.jiyuu>6"]
[eval exp="f.krhaikei=1"]
[else]
[eval exp="f.krhaikei=0"]
[endif]
@clearfix name="role_button"








*kaiwa
[call storage="scenario_2/kaiwakousin.ks"]
[call storage="scenario_2/kaiwa/kaiwa_button_macro.ks"]
[call storage="scenario_2/kaiwa/kaiwa_button_moji_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
;テストコード
;[eval exp="f.krakaiwa=100"]
[if exp="f.live2d_on!=1"]
[live2d_load]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]
[live2d_on][kra_para_kioku]
[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]

[endif]

[live2d_fadeout time=1000]
[live2d_mod name="aho" y=-2.8 scale=6.2]
[live2d_fadein time=1000]


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
[aho_head_normal]
[aho_body_normal]
[aho_arms_normal]
[aho_mod_idle_normal]

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
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa1 x=0 y=&tf.kaiwa_y]
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
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa30 x=0 y=&tf.kaiwa_y_2]
[elsif exp="f.kk1==1"]



[kaiwa_moji_2]
[kaiwa_image_2]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa30 x=0 y=&tf.kaiwa_y_2]

[else]

[kaiwa_image_2]

[endif]




;３ライオネスのこと;エルムナード戦争後

[if exp="f.kk3==1"]
[eval exp="tf.kaiwa_sumi=1"]

[kaiwa_moji_3]
[kaiwa_image_3]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa3 x=0 y=&tf.kaiwa_y_3]

;[elsif exp="f.kk8==1&&f.disc_3==1&&f.event_main_15_days>0"]
[elsif exp="f.disc_num>2&&f.event_main_15_days>0"]

[kaiwa_moji_3]
[kaiwa_image_3]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa3 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_3]
[endif]


;４体はだいじょうぶ;エルムナード編ご
[if exp="f.kk4==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_4]
[kaiwa_image_4]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa4 x=0 y=&tf.kaiwa_y_4]
;[elsif exp="f.d6==1&&f.disc_3==1&&f.erumu_war_kra_sumi==1"]
[elsif exp="f.disc_num>2&&f.event_war_kra_sumi==1"]
[kaiwa_moji_4]
[kaiwa_image_4]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa4 x=0 y=&tf.kaiwa_y_4]
[else]
[kaiwa_image_4]
[endif]



;５キスするの・・なれてるの;クライストをカーニバルに誘った時のみ
[if exp="f.kk5==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_5]
[kaiwa_image_5]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa5 x=500 y=&tf.kaiwa_y]
;[elsif exp="f.carnival_kra==1"]
[elsif exp="f.disc_2==1&&f.curnival_kra==1"]
[kaiwa_moji_5]
[kaiwa_image_5]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa5 x=500 y=&tf.kaiwa_y]

[else]
[kaiwa_image_5]
[endif]



;７ランスロットのこと;エルムナード編から
[if exp="f.kk7==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_6]
[kaiwa_image_6]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa7 x=500 y=&tf.kaiwa_y_2]
;[elsif exp="f.kk3==1&&f.disc_3==1"]
[elsif exp="f.disc_num>2"]
[kaiwa_moji_6]
[kaiwa_image_6]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa7 x=500 y=&tf.kaiwa_y_2]
[else]
[kaiwa_image_6]
[endif]

;８どんな女の子がすき；エルムナード編から
[if exp="f.kk8==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_7]
[kaiwa_image_7]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa8 x=500 y=&tf.kaiwa_y_3]
;[elsif exp="f.kk1==1&&f.disc_3==1"]
[elsif exp="f.disc_num>2"]
[kaiwa_moji_7]
[kaiwa_image_7]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa8 x=500 y=&tf.kaiwa_y_3]

[else]

[kaiwa_image_7]
[endif]

;９衣装どうするの;騎士団解散編から
[if exp="f.kk9==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_8]
[kaiwa_image_8]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa9 x=500 y=&tf.kaiwa_y_4]
[elsif exp="f.disc_3==1&&f.event_main_15_days>0"]
;[elsif exp="f.disc_num>2"]
[kaiwa_moji_8]
[kaiwa_image_8]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa9 x=500 y=&tf.kaiwa_y_4]

[else]

[kaiwa_image_8]
[endif]





;次

[glink target=*tugi text="（次のページ）" size=17 width=150 x=35 y=270]
[if exp="f.disc_num>2"]
[glink target=*aite text="（様子を見る）" size=17 width=150 x=35 y=330]
[endif]

[s]
*aite
[cm]
[free name="kaiwa" layer=2]
[free name="kaiwa" layer=1]
[call storage="scenario_2/kaiwa/aite_return.ks"]
[kra_hannou]
[jump target=*back]


*back1
*tugi
[cm]
[free name="kaiwa" layer=2]
[free name="kaiwa" layer=1]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]


;１0王宮騎士団、それともウェスタ
[if exp="f.kk10==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_9]
[kaiwa_image_9]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa10 x=0 y=&tf.kaiwa_y]
[elsif exp="f.event_main_16_days>0"]
[kaiwa_moji_9]
[kaiwa_image_9]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa10 x=0 y=&tf.kaiwa_y]

[else]
[kaiwa_image_9]
[endif]



;１３どんなドレスがすき;騎士団解散編から
[if exp="f.kk13==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_10]
[kaiwa_image_10]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa13 x=0 y=&tf.kaiwa_y_2]
[elsif exp="f.event_main_15_days>0"]
[kaiwa_moji_10]
[kaiwa_image_10]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa13 x=0 y=&tf.kaiwa_y_2]

[else]
[kaiwa_image_10]
[endif]


;１４王宮について;エルムナード編から
[if exp="f.kk14==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_11]
[kaiwa_image_11]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa14 x=0 y=&tf.kaiwa_y_3]
[elsif exp="f.disc_num>2"]
[kaiwa_moji_11]
[kaiwa_image_11]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa14 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_11]
[endif]


;１５お酒はすき;エルムナード編から
[if exp="f.kk15==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa15 x=0 y=&tf.kaiwa_y_4]
[elsif exp="f.disc_num>2"]
[kaiwa_moji_12]
[kaiwa_image_12]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa15 x=0 y=&tf.kaiwa_y_4]
[else]
[kaiwa_image_12]
[endif]








;１６どんな料理が好き

[if exp="f.kk16==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa16 x=500 y=&tf.kaiwa_y]
[elsif exp="f.kk1==1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa16 x=500 y=&tf.kaiwa_y]

[else]
[kaiwa_image_13]
[endif]

;１７不思議な髪の色

[if exp="f.kk17==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa17 x=500 y=&tf.kaiwa_y_2]
[elsif exp="f.kk1==1"]
[kaiwa_moji_14]
[kaiwa_image_14]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa17 x=500 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_14]
[endif]

;１８普段は何をしてるの；エルムナード編から

[if exp="f.kk18==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_15]
[kaiwa_image_15]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa18 x=500 y=&tf.kaiwa_y_3]
[elsif exp="f.disc_num>2"]
[kaiwa_moji_15]
[kaiwa_image_15]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa18 x=500 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_15]
[endif]


;２０いつも何考えてるの
[if exp="f.kk20==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa20 x=500 y=&tf.kaiwa_y_4]
[elsif exp="f.kk1==1"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa20 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_16]
[endif]



;次
[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=35 y=270]



;前
[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]



[s]


*tugi1
[cm]
[free name="kaiwa" layer=2]
[free name="kaiwa" layer=1]
;前
[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
[endif]





;２１綺麗な顔立ちしてるよね
[if exp="f.kk21==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa21 x=0 y=&tf.kaiwa_y]
[elsif exp="f.kk1==1"]
[kaiwa_moji_17]
[kaiwa_image_17]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa21 x=0 y=&tf.kaiwa_y]
[else]

[kaiwa_image_17]
[endif]



;２２女の子にもてるのかな
[if exp="f.kk22==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa22 x=0 y=&tf.kaiwa_y_2]
[elsif exp="f.kk1==1"]
[kaiwa_moji_18]
[kaiwa_image_18]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa22 x=0 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_18]
[endif]


;２３最近気になってること
[if exp="f.kk23==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa23 x=0 y=&tf.kaiwa_y_3]
[elsif exp="f.kk23!=1"]
[kaiwa_moji_19]
[kaiwa_image_19]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa23 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_19]
[endif]

;２４休日の過ごし方
[if exp="f.kk24==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_20]
[kaiwa_image_20]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa24 x=0 y=&tf.kaiwa_y_4]
[elsif exp="f.kk24!=1"]
[kaiwa_moji_20]
[kaiwa_image_20]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa24 x=0 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_20]
[endif]

;２５好きなファッション
[if exp="f.kk25==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa25 x=500 y=&tf.kaiwa_y]
[elsif exp="f.kk1==1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa25 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_21]
[endif]

;テストコード
;[eval exp="f.event_sub_14_sumi[6]=1"]
;２6森の奥の遺跡
[if exp="f.kk26==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa26 x=500 y=&tf.kaiwa_y_2]
[elsif exp="f.event_sub_14_sumi[6]==1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa26 x=500 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_22]
[endif]


;２7どんなこどもだった
;テストコード
;[eval exp="f.event_sub_15_sumi[0]=1"]
[if exp="f.kk27==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa27 x=500 y=&tf.kaiwa_y_3]
[elsif exp="f.event_sub_15_sumi[0]==1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa27 x=500 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_23]
[endif]




;２8裏通りのお店
;テストコード
;[eval exp="f.event_sub_16_sumi[0]=1"]
[if exp="f.kk28==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_24]
[kaiwa_image_24]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa28 x=500 y=&tf.kaiwa_y_4]
[elsif exp="f.event_sub_16_sumi[0]==1"]
[kaiwa_moji_24]
[kaiwa_image_24]
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*krakaiwa28 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_24]
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

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk1_new.ks" target=*start

*krakaiwa3
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk3= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk3_new.ks" target=*start




*krakaiwa4
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk4= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk4_new.ks" target=*start


*krakaiwa5
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk5= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk5_new.ks" target=*start



*krakaiwa6
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk6= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk9_new.ks" target=*start



*krakaiwa7
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk7= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk7_new.ks" target=*start




*krakaiwa8
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk8= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk8_new.ks" target=*start



*krakaiwa9
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk9= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk9_new.ks" target=*start


*krakaiwa10
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk10= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk10_new.ks" target=*start






*krakaiwa13
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk13= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk13_new.ks" target=*start





*krakaiwa14
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk14= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk14_new.ks" target=*start





*krakaiwa15
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk15= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk15_new.ks" target=*start





*krakaiwa16
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk16= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk16_new.ks" target=*start





*krakaiwa17
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk17= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk17_new.ks" target=*start




*krakaiwa18
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk18= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk18_new.ks" target=*start




*krakaiwa19
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk19= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk19_new.ks" target=*start




*krakaiwa20
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk20= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk20_new.ks" target=*start




*krakaiwa21
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk21= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk21_new.ks" target=*start




*krakaiwa22
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk22= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk22_new.ks" target=*start


*krakaiwa23
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk23= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk23_new.ks" target=*start


*krakaiwa24
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk24= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk24_new.ks" target=*start


*krakaiwa25
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk25= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk25_new.ks" target=*start


*krakaiwa26
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk26= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk26_new.ks" target=*start

*krakaiwa27
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk27= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk27_new.ks" target=*start

*krakaiwa28
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk28= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk28_new.ks" target=*start




*krakaiwa30
[free name="kaiwa" layer=2]
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk2= 1 "]
[kra_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/kra_kaiwa_kk2_new.ks" target=*start











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

[eval exp="f.kra_koukando_sumi=1"]

[endif]

*skip
[eval exp="tf.kaiwa_klaist=0"]
[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2]

[if exp="f.date_now!=1"]
[live2d_off]
[live2d_delete_all]
[endif]

[message_settei_ad]
[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



