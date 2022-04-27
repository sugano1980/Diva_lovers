


*start
[cm]

[if exp="f.vankaiwa==0"]
[jump target=*mae]
[endif]


[cm]

;背景を選ぶ（ランダム）
[if exp="f.kvhaikei==0"]
[iscript]
f.kvhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]




;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.kvhaikei==1"]
[bg storage="crerumatinaka1_tasogare.jpg" time=50]
[else]
[bg storage="sakaba2_kaiwa_tasogare.jpg" time=50]
[endif]

*kaiwa
[chara_show name="vanditte"]
;現在の会話回数を記憶
[eval exp="f.vankaiwa_genzai=f.vankaiwa"]
;事前会話フラグ確認
[if exp="f.van_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]

[if exp="f.jiyuu==7"]
[eval exp="f.van_jizenkaiwa=1"]
[chara_mod name="vanditte" face="normal_majime_kutiake"]
[vanditte][r]
「いよお、嬢ちゃん。なんだあ、疲れたような面してんなあ」[p]

[kyoton]
[irain][r]
「えっ・・・そうかな・・・？」[p]
[chara_mod name="vanditte" face="yokome_kutiake"]
[vanditte][r]
「俺の気のせいか？まあ、騎士団さんもかなり忙しそうにしてるようだからな」[p]
[chara_mod name="vanditte" face="bisyou_kutitoji"]

[chara_mod name="vanditte" face="bisyou"]
[vanditte][r]
「そんな小せえ体で・・・あんま無理すんなよ」[p]
[normal]
[irain][r]
「あ、ありがとう、ヴァンディットさん」[p]
[else]

[vanditte][r]
「おお、どした？」[l]

[endif]

[chara_mod name="vanditte" face="normal"]

*wadaichoice

[cm]

[if exp="f.vankaiwa==0"]
[jump target=*mae]
[endif]


*modottekita

[stopbgm]
[playbgm storage="bacchus_sougetuon.ogg"]
[cm]
[freeimage layer=3]
[chara_mod name="vanditte" face="normal"]
[normal]
[irain][r]
（・・・えーっと、何から話そう？）[l]
[message_kakusu_ad]
[freeimage layer=3]
[freeimage layer=1][van_kaiwakousin]


*back
[cm]
;戻るボタン表示
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
;メニュー表示
;１傭兵の仕事
[if exp="f.jiyuu>=7&&f.kv1==1"]
[button graphic="kaiwa/kk1_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.jiyuu>=7"]
[button graphic="kaiwa/kk1.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa1 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]
;２王宮騎士団をやめた理由

[if exp="f.kv2==1"]
[button graphic="kaiwa/kv2_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv2.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa2 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]


;３実家はどこに
[if exp="f.kv3==1"]
[button graphic="kaiwa/kv3_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv3.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa3 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]


;４女性遍歴
[if exp="f.kv4==1"]
[button graphic="kaiwa/kv4_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kv9==1"]
[button graphic="kaiwa/kv4.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa4 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]


;５



;６貴族出身なの・・・？
[if exp="f.kv6==1"]
[button graphic="kaiwa/kv6_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv6.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa6 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;７ランスロットのこと
[if exp="f.kv7==1"]
[button graphic="kaiwa/kv7_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.kv11==1"]
[button graphic="kaiwa/kv7.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa7 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;８ライオネスのこと
[if exp="f.kv8==1"]
[button graphic="kaiwa/kv8_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.kv7==1"]
[button graphic="kaiwa/kv8.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa8 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]


;９クライストのこと
[if exp="f.kv9==1"]
[button graphic="kaiwa/kv9_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="f.kv8==1"]
[button graphic="kaiwa/kv9.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa9 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]


;次
[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi x=0 y=270]
[s]

*back1
*tugi
[cm]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]





;１０女を抱くって？
[if exp="f.kv10==1"]
[button graphic="kaiwa/kv10_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.kv1==1&&f.b6==1"]
[button graphic="kaiwa/kv10.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa10 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]

;１１好きなお酒はなに
[if exp="f.kv11==1"]
[button graphic="kaiwa/kv11_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.kv10==1"]
[button graphic="kaiwa/kv11.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa11 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]

;１３家族のこと
[if exp="f.kv13==1"]
[button graphic="kaiwa/kv13_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv13.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa13 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]

;１４エクターのこと
[if exp="f.kv14==1"]
[button graphic="kaiwa/kv14_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv14.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa14 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]

;１５ウェルム王宮騎士団長のこと
[if exp="f.kv15==1"]
[button graphic="kaiwa/kv15_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv15.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa15 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;１６双剣のこと
[if exp="f.kv16==1"]
[button graphic="kaiwa/kv16_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="sf.vanend==1"]
[button graphic="kaiwa/kv16.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa16 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;１７どんなドレスが好き？
[if exp="f.jiyuu==9.5&&f.kv17==1"]
[button graphic="kaiwa/kv17_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.jiyuu==9.5&&f.c15==1"]
[button graphic="kaiwa/kv17.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa17 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]

;１８私の双剣、どうかな
[if exp="f.kv18==1"]
[button graphic="kaiwa/kv18_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="sf.vanend1==1"]
[button graphic="kaiwa/kv18.jpg" clickse="tm2_switch001_macchi.ogg" target=*vankaiwa18 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]

;前
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back x=0 y=270]

;次
;[button graphic="kaiwa/kaiwa_next.jpg" clickse="tm2_switch001_macchi.ogg" target=*tugi1 x=500 y=270]
[s]

*tugi1
[cm]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]






;メニュー表示終わり


;テスト中のためどちらも同じ内容
*vankaiwa1
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv1= 1 "]
[freeimage layer=1][van_kaiwakousin]

[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv1.ks" target=*start

*vankaiwa2
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv2= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv2.ks" target=*start

*vankaiwa3
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv3= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv3.ks" target=*start

*vankaiwa4
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv4= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv4.ks" target=*start

*vankaiwa5
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv5= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv5.ks" target=*start

*vankaiwa6
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv6= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv6.ks" target=*start

*vankaiwa7
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv7= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv7.ks" target=*start

*vankaiwa8
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv8= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv8.ks" target=*start

*vankaiwa9
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv9= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv9.ks" target=*start

*vankaiwa10
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv10= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv10.ks" target=*start

*vankaiwa11
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv11= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv11.ks" target=*start



*vankaiwa13
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv13= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv13.ks" target=*start

*vankaiwa14
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv14= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv14.ks" target=*start

*vankaiwa15
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv15= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv15.ks" target=*start

*vankaiwa16
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv16= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv16.ks" target=*start



*vankaiwa18
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv18= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv18.ks" target=*start




*vankaiwa17
[message_settei_ad]
[eval exp="f.vankaiwa=f.vankaiwa-1"]
[eval exp="f.kv17= 1 "][freeimage layer=1][van_kaiwakousin]
[cm]
@jump storage="kaiwa/kaiwanaiyou/van_kaiwa_kv17.ks" target=*start


;話題なし
*mada
[cm]
[name][r]
（何を話せばいいかわからないよ～）[l]
[cm]
@jump target=*back


;戻る
*mae
[if exp="f.vankoukando_sumi==1"]
[jump target=*skip]
;会話したかどうか確認
[endif]
[if exp="f.vankaiwa_genzai>f.vankaiwa"]
[message_settei_ad]
[van]
[r]好感度が１アップ！
[eval exp="f.vankoukando_sumi=1"]
[endif]



;戻る

*skip
[freeimage layer=1]
[freeimage layer=3]
[chara_hide name="vanditte"]
[fadeoutbgm time=2700]
[cm]
[jump storage=kaiwa/kaiwa.ks target=*start]




