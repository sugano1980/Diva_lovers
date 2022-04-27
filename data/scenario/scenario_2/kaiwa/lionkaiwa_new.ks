


[macro name="lionkaiwa"]

*start





[call storage="scenario_2/renaikousin.ks"]
[cm]

;[if exp="f.jiyuu>6"]
[eval exp="f.klhaikei=1"]
;[else]
[eval exp="f.klhaikei=0"]
;[endif]
@clearfix name="role_button"







*kaiwa
[call storage="scenario_2/kaiwakousin.ks"]
[call storage="scenario_2/kaiwa/kaiwa_button_macro.ks"]
[call storage="scenario_2/kaiwa/kaiwa_button_moji_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]

[if exp="f.live2d_on!=1"]
[live2d_load]
[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_load_off]
[live2d_on][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9][lion_para_kioku]
[endif]

[live2d_fadeout time=1000]
[live2d_mod name="lioness" y=-2.6 scale=5.7]
[live2d_fadein time=1000]



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
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_arms_normal]
[lioness_mod_idle]
[message_kakusu_ad]
[freeimage layer=3]



[lion_kaiwakousin]
;会話回数更新






*back
[cm]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
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
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*lionkaiwa1 x=0 y=&tf.kaiwa_y]
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
[button graphic="button/toumei.png" name="kaiwa" enterse="tm2_switch001_macchi.ogg" target=*lionkaiwa2 x=0 y=&tf.kaiwa_y_2]

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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa3 x=0 y=&tf.kaiwa_y_3]
[elsif exp="f.event_main_14_days>0&&f.disc_num>2"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa4 x=0 y=&tf.kaiwa_y_4]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa5 x=500 y=&tf.kaiwa_y]
[elsif exp="f.kl4==1"]
[kaiwa_moji_5]
[kaiwa_image_5]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa5 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_5]

[endif]

;６竜の赤ちゃん;エルムナード編後
[if exp="f.kl6==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_6]
[kaiwa_image_6][button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa6 x=500 y=&tf.kaiwa_y_2]

;こっちが本来。テスト終わったら戻す
[elsif exp="f.disc_num>2&&f.event_main_14_days<0"]
;[elsif exp="f.disc_num>2&&f.event_main_14_days>0"]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa6 x=500 y=&tf.kaiwa_y_2]
[kaiwa_moji_6]
[kaiwa_image_6]

[else]


[kaiwa_image_6]
[endif]


;７地方騎士団の解散について；騎士団解散編後
[if exp="f.kl7==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_7]
[kaiwa_image_7]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa7 x=500 y=&tf.kaiwa_y_3]
[elsif exp="f.disc_num>2&&f.event_main_16_days>0"]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa7 x=500 y=&tf.kaiwa_y_3]
[kaiwa_moji_7]
[kaiwa_image_7]
[else]
[kaiwa_image_7]
[endif]


;８ライオネスって衣装もってるの；エルムナード後祝賀会後は違うシナリオも入れとく
[if exp="f.kl8==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_8]
[kaiwa_image_8]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa8 x=500 y=&tf.kaiwa_y_4]

[elsif exp="f.event_main_15_days>0&&f.disc_num>2"]

[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa8 x=500 y=&tf.kaiwa_y_4]
[kaiwa_moji_8]
[kaiwa_image_8]

[else]

[kaiwa_image_8]

[endif]




;次

[glink target=*tugi text="（次のページ）" size=17 width=150 x=35 y=270]
[glink target=*aite text="（様子を見る）" size=17 width=150 x=35 y=330]


[s]
*aite
[cm]
[free name="kaiwa" layer=2]
[free name="kaiwa" layer=1]
[call storage="scenario_2/kaiwa/aite_return.ks"]
[lion_hannou]
[jump target=*back]




*back0
*tugi
[cm]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa9 x=0 y=&tf.kaiwa_y]

[elsif exp="f.event_main_15_days>0&&f.disc_num>2"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa10 x=0 y=&tf.kaiwa_y_2]
[elsif exp="f.event_main_16_days>0&&f.disc_num>2"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa11 x=0 y=&tf.kaiwa_y_3]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa12 x=0 y=&tf.kaiwa_y_4]
[elsif exp="f.kl1==1"]
[kaiwa_moji_12]
[kaiwa_image_12]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa12 x=0 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_12]
[endif]


;１3怪我はもう平気；エルムナードでライと一緒に行動した時
[if exp="f.kl13==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_13]
[kaiwa_image_13]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa13 x=500 y=&tf.kaiwa_y]
[elsif exp="f.event_war_lion_sumi==1&&f.disc_num>2"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa14 x=500 y=&tf.kaiwa_y_2]
[elsif exp="f.kl1==1"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa15 x=500 y=&tf.kaiwa_y_3]
[elsif exp="f.event_sub_14_sumi[2]==1&&f.event_sub_14_mother_kaiwa==1"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa16 x=500 y=&tf.kaiwa_y_4]
[elsif exp="f.kl1==1&&f.disc_num>2"]
[kaiwa_moji_16]
[kaiwa_image_16]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa16 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_16]
[endif]




;次
[glink target=*tugi1 text="（次のページ）" size=17 width=150 x=35 y=270]

;前
[glink target=*back text="（前のページ）" size=17 width=150 x=535 y=270]

[s]

*back1
*tugi1
[cm]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa17 x=0 y=&tf.kaiwa_y]
[elsif exp="f.disc_num>2"]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa18 x=0 y=&tf.kaiwa_y_2]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa19 x=0 y=&tf.kaiwa_y_3]
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
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa20 x=0 y=&tf.kaiwa_y_4]
[elsif exp="f.event_main_15_days>0&&f.disc_num>2"]
[kaiwa_moji_20]
[kaiwa_image_20]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa20 x=0 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_20]
[endif]



;２３ユリアのこと；廃止予定


;21
;あの時はありがとうエルムナード戦争ご
[if exp="f.kl21==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa21 x=500 y=&tf.kaiwa_y]
[elsif exp="f.event_main_15_days>0&&f.event_war_lion_sumi==1"]
[kaiwa_moji_21]
[kaiwa_image_21]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa21 x=500 y=&tf.kaiwa_y]
[else]

[kaiwa_image_21]
[endif]

;22
;動物のことに詳しいのエルムナード後
[if exp="f.kl22==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa22 x=500 y=&tf.kaiwa_y_2]
[elsif exp="f.event_war_lion_sumi==1"]
[kaiwa_moji_22]
[kaiwa_image_22]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa22 x=500 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_22]
[endif]


;23
;最近気になっていること
[if exp="f.kl23==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa23 x=500 y=&tf.kaiwa_y_3]
[elsif exp="f.kl23!=1"]
[kaiwa_moji_23]
[kaiwa_image_23]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa23 x=500 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_23]
[endif]

;24
;休日の過ごし方
[if exp="f.kl24==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_24]
[kaiwa_image_24]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa24 x=500 y=&tf.kaiwa_y_4]
[elsif exp="f.kl24!=1"]
[kaiwa_moji_24]
[kaiwa_image_24]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa24 x=500 y=&tf.kaiwa_y_4]
[else]

[kaiwa_image_24]
[endif]


;次

[glink target=*tugi2 text="（次のページ）" size=17 width=150 x=35 y=270]
[glink target=*back0 text="（前のページ）" size=17 width=150 x=535 y=270]
[s]



*tugi2
[cm]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
;前
;[if exp="f.jiyuu>=11"]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[else]
[glink target=*mae text="（会話をやめる）" size=17 width=150 x=550 y=330]
;[endif]




;25
;好きなファッション
[if exp="f.kl25==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_25]
[kaiwa_image_25]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa25 x=0 y=&tf.kaiwa_y]
[elsif exp="f.kl25!=1"]
[kaiwa_moji_25]
[kaiwa_image_25]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa25 x=0 y=&tf.kaiwa_y]
[else]

[kaiwa_image_25]
[endif]


;26
;メイドさん
[if exp="f.kl26==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_26]
[kaiwa_image_26]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa26 x=0 y=&tf.kaiwa_y_2]
[elsif exp="f.event_sub_14_sumi[11]==1"]
[kaiwa_moji_26]
[kaiwa_image_26]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa26 x=0 y=&tf.kaiwa_y_2]
[else]

[kaiwa_image_26]
[endif]


;27
;裏通りのお店
[if exp="f.kl27==1"]
[eval exp="tf.kaiwa_sumi=1"]
[kaiwa_moji_27]
[kaiwa_image_27]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa27 x=0 y=&tf.kaiwa_y_3]
[elsif exp="f.event_sub_16_sumi[0]==1"]
[kaiwa_moji_27]
[kaiwa_image_27]
[button graphic="button/toumei.png" name="kaiwa" clickse="tm2_switch001_macchi.ogg" target=*lionkaiwa27 x=0 y=&tf.kaiwa_y_3]
[else]

[kaiwa_image_27]
[endif]


;前

[glink target=*back1 text="（前のページ）" size=17 width=150 x=35 y=270]


[s]
;メニュー表示終わり


;
*lionkaiwa1
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl1= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl1_new.ks" target=*start

*lionkaiwa2
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl2= 1 "]
[lion_kaiwakousin]
[cm]
@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl2_new.ks" target=*start

*lionkaiwa3
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl3= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl3_new.ks" target=*start

*lionkaiwa4
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl4= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl4_new.ks" target=*start

*lionkaiwa5
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl5= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl5_new.ks" target=*start

*lionkaiwa6
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl6= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl6_new.ks" target=*start

*lionkaiwa7
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl7= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl7_new.ks" target=*start

*lionkaiwa8
[message_settei_ad]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl8= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl8_new.ks" target=*start

*lionkaiwa9
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl9= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl11_new.ks" target=*start

*lionkaiwa10
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl10= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl9_new.ks" target=*start

*lionkaiwa11
;disc4から
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl11= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl10.ks" target=*start


*lionkaiwa12
[message_settei_ad]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl12= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl12_new.ks" target=*start


*lionkaiwa13
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl13= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl15_new.ks" target=*start




*lionkaiwa14
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl14= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl14_new.ks" target=*start

*lionkaiwa15
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl15= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl16_new.ks" target=*start

*lionkaiwa16
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl16= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl17_new.ks" target=*start

*lionkaiwa17
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl17= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl18_new.ks" target=*start

*lionkaiwa18
;周回
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl18= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl19.ks" target=*start

*lionkaiwa19
;周回
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl19= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl20.ks" target=*start

*lionkaiwa20
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl20= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl21_new.ks" target=*start



*lionkaiwa21
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl21= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl24_neo.ks" target=*start

*lionkaiwa22
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl22= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl25_neo.ks" target=*start



*lionkaiwa23
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl23= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl24_new.ks" target=*start

*lionkaiwa24
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl24= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl25_new.ks" target=*start

*lionkaiwa25
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl25= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl26_new.ks" target=*start


*lionkaiwa26
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl26= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl27_new.ks" target=*start

*lionkaiwa27
[message_settei_ad]
[eval exp="f.lionkaiwa=f.lionkaiwa-1"][freeimage layer=1]
[eval exp="f.kl27= 1 "]
[lion_kaiwakousin]
[cm]

@jump storage="scenario_2/kaiwa/kaiwanaiyou/lion_kaiwa_kl28_new.ks" target=*start




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

[eval exp="f.lion_koukando_sumi=1"]

[endif]

*skip
[eval exp="tf.kaiwa_lioness=0"]
[message_settei_ad]
[lioness_face_normal]
[lioness_arms_normal]


[freeimage layer=1]
[freeimage layer=3]
[free name="kaiwa" layer=2][free name="kaiwa" layer=1]

[if exp="f.date_now!=1"]
[live2d_off]
[live2d_delete_all]
[endif]

[fadeoutbgm time=3000]
[cm]
;戻る


[endmacro]

[return]



