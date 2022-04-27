


*start
[cm]
[if exp="f.kaiwa==0"]
[jump target=*mae]
[endif]



[cm]

;背景を選ぶ（ランダム）
[if exp="f.kkhaikei==0"]
[iscript]
f.kkhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]




;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.a17==1&&f.jiyuu==12"]
[bg storage="westa_tasogare.jpg"]
[elsif exp="f.a17==1"]
[bg storage="kanpan_tasogare.jpg"]
[elsif exp="f.b17==1"]
[bg storage="westa_tasogare.jpg"]
[elsif exp="f.klhaikei==1"]
[bg storage="crerumatinaka2_tasogare.jpg" time=50]
[else]
[bg storage="sakaba1_kaiwa_tasogare.jpg" time=50]
[endif]

*kaiwa
[chara_show name="klaist"]
;現在の会話回数を記憶
[eval exp="f.krakaiwa_genzai=f.krakaiwa"]


;クライスト



[if exp="f.kra_jizenkaiwa==1"]
[jump target=*modottekita]
[endif]

[if exp="f.jiyuu==7"]
[eval exp="f.kra_jizenkaiwa=1"]
[chara_mod name="klaist" face="smile"]
[name_kra][r]
「やあ、[name]ちゃん。今日もかわいいね」[p]

[sekimen_komarikutiake]
[irain][r]
「くっ・・・クライストさん・・・」[p]

[chara_mod name="klaist" face="normal"]
[name_kra][r]
「ずいぶんと騎士団は忙しそうだけど、[name]ちゃん平気？」[p]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「もしよかったら俺仕事代わろうか？」[p]
[chara_mod name="klaist" face="normal"]

[komariwarai]
[irain][r]
「えっ・・・ええと・・・」[p]

[normal]
[irain][r]
「気持ちはうれしいけど、大丈夫だよ、これは私の仕事だし・・・」[p]

[chara_mod name="klaist" face="smile"]

[name_kra][r]
「そうなんだ。[chara_mod name="klaist" face="normal"]でももし何かあったらいつでも言って」[p]

[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
[name_kra][r]
「俺いつでも代わるからさ」[p]
[chara_mod name="klaist" face="bisyou_hutuu"]

[ase]
[irain][r]
「あ・・・ありがとう・・・」[p]

[irain][r]
（というか・・・クライストさんも団長からいろいろ頼まれてるはずなんだけどな・・・）[p]


[elsif exp="f.jiyuu==8"]
[eval exp="f.kra_jizenkaiwa=1"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「ちょっと不安そうな顔だね。[chara_mod name="klaist" face="normal"]でも、大丈夫だよ」[p]

[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
[name_kra][r]
「俺は必ず、ルシアに勝ってみせるから。・・・君のためにね」[p]
[chara_mod name="klaist" face="normal"]


[elsif exp="f.jiyuu==10"]
[eval exp="f.kra_jizenkaiwa=1"]
[chara_mod name="klaist" face="normal_majime"]
[name_kra][r]
「[name]ちゃん・・・」[p]

[komarikutiake]
[irain][r]
「あっ・・・クライストさん、ごめんなさい」[p]

[komari_kutitoji]
[chara_mod name="klaist" face="metoji_majime"]
[name_kra][r]
「いや、いいんだ。君にとって、騎士団は大切な場所だったんだろうしね」[p]
[chara_mod name="klaist" face="komari_warai"]
[name_kra][r]
「俺には何もできないけど、相談にのることくらいはできるから、遠慮なく言って」[p]
[chara_mod name="klaist" face="normal"]
[chara_mod name="klaist" face="smile"]

[normal]
[irain][r]
「クライストさん・・・ありがとう」[p]


[elsif exp="f.jiyuu==12"]
[eval exp="f.kra_jizenkaiwa=1"]

[name_kra][r]
「まずは、図書館にいってみようか」[p]


[elsif exp="f.jiyuu==14"]
[eval exp="f.kra_jizenkaiwa=1"]
[name_kra][r]
「船長がいうには、波が高くなってるそうだから、揺れには気をつけて」[p]

[komariwarai]
[irain][r]
「う・・・うん・・・わかった」[p]

[komari_kutitoji]
[irain][r]
（・・・）[p]


[elsif exp="f.jiyuu==15"]
[eval exp="f.kra_jizenkaiwa=1"]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「ともかく、レムが協力してくれてよかったよ」[p]

[chara_mod name="klaist" face="komari_warai_kutiake"]
[name_kra][r]
「・・・あいつのことだから、可能性は五分五分だと思ってたけど・・・」[p]
[chara_mod name="klaist" face="komari_warai"]
[chara_mod name="klaist" face="mehuse_warai"]

[komarikutiake]
[irain][r]
「クライストさん・・・」[p]

[else]
[name_kra][r]
「あれ？[name]ちゃん。
[r]どうしたの？」[l]

[endif]

[chara_mod name="klaist" face="normal"]



*modottekita

;自由行動１０の場合のみ相談選択し

[if exp="f.jiyuu==10&&f.soudan_kra!=1"]
[irain][r]
（ウェスタか、王宮騎士団か・・・クライストさんに相談してみようかな？）[p]

[r]
[button graphic="button/soudan_yes.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_yes x=150 y=350]
[button graphic="button/soudan_no.png" clickse="tm2_switch001_macchi.ogg" target=*soudan_no x=400 y=350]

[s]
*soudan_yes
[cm]
[eval exp="f.soudan_kra=1"]
[koukando1_kra]
@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk10.ks" target=*start


*soudan_no
[cm]
[endif]

*wadaichoice
;連続会話の場合のラベル。会話回数を確認、０なら強制終了
[cm]
[if exp="f.krakaiwa==0"]
[jump target=*mae]
[endif]


[stopbgm]
[playbgm storage="kaiwa/mizuiro_ontama.ogg"]

[cm]
[freeimage layer=3]
[normal]
[irain][r]
（・・・えーっと、何から話そう？）[l]
[chara_mod name="klaist" face="normal"]
[message_kakusu_ad]
[freeimage layer=3]

[kra_kaiwakousin]


*back
[cm]
;戻るボタン表示
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]
;メニュー表示
;１傭兵の仕事
[if exp="f.jiyuu>=4&&f.kk1==1"]
[button graphic="kaiwa/kk1_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.jiyuu>=3"]
[button graphic="kaiwa/kk1.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa1 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]
;２子供好き
[if exp="f.kk2==1"]
[button graphic="kaiwa/kk2_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.kk1==1"]
[button graphic="kaiwa/kk2.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa2 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]



;３ライオネスのこと

[if exp="f.kk3==1"]
[button graphic="kaiwa/kk3_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.kk8==1"]
[button graphic="kaiwa/kk3.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa3 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]


;４体はだいじょうぶ
[if exp="f.kk4==1"]
[button graphic="kaiwa/kk4_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.d6==1&&f.jiyuu>=7"]
[button graphic="kaiwa/kk4.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa4 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]



;５キスするの・・なれてるの
[if exp="f.kk5==1"]
[button graphic="kaiwa/kk5_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.jiyuu>=8&&f.a13==1"]
[button graphic="kaiwa/kk5.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa5 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]


;６本部のどこに寝泊りしてるの
[if exp="f.jiyuu>=10"]
[button graphic="kaiwa/kk6_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.jiyuu>=4&&f.kk6==1"]
[button graphic="kaiwa/kk6_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.jiyuu>=4"]
[button graphic="kaiwa/kk6.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa6 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;７ランスロットのこと
[if exp="f.kk7==1"]
[button graphic="kaiwa/kk7_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.kk3==1"]
[button graphic="kaiwa/kk7.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa7 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]

;８どんな女の子がすき
[if exp="f.kk8==1"]
[button graphic="kaiwa/kk8_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[elsif exp="f.kk16==1"]
[button graphic="kaiwa/kk8.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa8 x=500 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
[endif]



;次
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
;９衣装どうするの
[if exp="f.kk9==1"]
[button graphic="kaiwa/kk9_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.jiyuu==9.5&&f.b15==1"]
[button graphic="kaiwa/kk9.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa9 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]
;１０





;１３どんなドレスがすき
[if exp="f.kk13==1"]
[button graphic="kaiwa/kk13_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.jiyuu==9.5&&f.b15==1"]
[button graphic="kaiwa/kk13.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa13 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]

;１４王宮について
[if exp="f.kk14==1"]
[button graphic="kaiwa/kk14_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.jiyuu==8"]
[button graphic="kaiwa/kk14.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa14 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]


;１５お酒はすき
[if exp="f.kk15==1"]
[button graphic="kaiwa/kk15_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[elsif exp="f.kk21==1"]
[button graphic="kaiwa/kk15.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa15 x=0 y=210]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=210]
[endif]


;１６どんな料理が好き

[if exp="f.kk16==1"]
[button graphic="kaiwa/kk16_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[elsif exp="f.kk2==1||f.kk17==1"]
[button graphic="kaiwa/kk16.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa16 x=500 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=30]
[endif]

;１７不思議な髪の色

[if exp="f.kk17==1"]
[button graphic="kaiwa/kk17_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[elsif exp="f.kk1==1"]
[button graphic="kaiwa/kk17.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa17 x=500 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=90]
[endif]

;１８普段は何をしてるの

[if exp="f.kk18==1"]
[button graphic="kaiwa/kk18_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[elsif exp="f.kk7==1"]
[button graphic="kaiwa/kk18.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa18 x=500 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=150]
[endif]

;１９ヴァンディットさんのことはしってるの

[if exp="f.kk19==1||f.jiyuu>=8"]
[button graphic="kaiwa/kk19_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=500 y=210]
;ver1.01で変更（条件あり）
[elsif exp="f.jiyuu==7||f.jiyuu==8"]
[button graphic="kaiwa/kk19.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa19 x=500 y=210]
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
[if exp="f.jiyuu>=11"]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[else]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=650 y=310]
[endif]


;２０いつも何考えてるの
[if exp="f.kk20==1"]
[button graphic="kaiwa/kk20_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[elsif exp="f.kk15==1"]
[button graphic="kaiwa/kk20.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa20 x=0 y=30]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=30]
[endif]

;２１綺麗な顔立ちしてるよね
[if exp="f.kk21==1"]
[button graphic="kaiwa/kk21_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[elsif exp="f.kk18==1"]
[button graphic="kaiwa/kk21.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa21 x=0 y=90]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=90]
[endif]


;２２女の子にもてるのかな
[if exp="f.kk22==1"]
[button graphic="kaiwa/kk22_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[elsif exp="f.kk20==1"]
[button graphic="kaiwa/kk22.jpg" clickse="tm2_switch001_macchi.ogg" target=*krakaiwa22 x=0 y=150]
[else]
[button graphic="kaiwa/kaiwa_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=0 y=150]
[endif]



;前
[button graphic="kaiwa/kaiwa_back.jpg" clickse="tm2_switch001_macchi.ogg" target=*back1 x=500 y=270]
[s]
;メニュー表示終わり

;
*krakaiwa1
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk1= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk1.ks" target=*start

*krakaiwa2
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk2= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk2.ks" target=*start

*krakaiwa3
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk3= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk3.ks" target=*start


*krakaiwa4
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk4= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk4.ks" target=*start

*krakaiwa5
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk5= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk5.ks" target=*start

*krakaiwa6
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk6= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk6.ks" target=*start

*krakaiwa7
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk7= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk7.ks" target=*start

*krakaiwa8
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk8= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk8.ks" target=*start


*krakaiwa9
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk9= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk9.ks" target=*start

*krakaiwa13
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk13= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk13.ks" target=*start

*krakaiwa14
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk14= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk14.ks" target=*start

*krakaiwa15
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk15= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk15.ks" target=*start

*krakaiwa16
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk16= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk16.ks" target=*start

*krakaiwa17
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk17= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk17.ks" target=*start

*krakaiwa18
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk18= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk18.ks" target=*start

*krakaiwa19
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk19= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk19.ks" target=*start

*krakaiwa20
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk20= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk20.ks" target=*start

*krakaiwa21
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk21= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk21.ks" target=*start

*krakaiwa22
[message_settei_ad]
[eval exp="f.krakaiwa=f.krakaiwa-1"][freeimage layer=1]
[eval exp="f.kk22= 1 "]
[kra_kaiwakousin]
[cm][normal]

@jump storage="kaiwa/kaiwanaiyou/kra_kaiwa_kk22.ks" target=*start



;話題なし
*mada
[cm]
[irain][r]
（何を話せばいいかわからないよ～）[l]
[cm]
@jump target=*back


;戻る
*mae

;好感度あげすみであるかチェック

[if exp="f.kra_koukando_sumi==1"]
[jump target=*skip]
[endif]
[if exp="f.krakaiwa<f.krakaiwa_genzai"]
;会話してあれば好感度と恋愛感度ぷらす
[message_settei_ad]
[koukando1_kra]
[eval exp="f.kra_koukando_sumi=1"]
[endif]
*skip
[freeimage layer=1]
[freeimage layer=3]
[chara_hide name="klaist"]
[fadeoutbgm time=3000]
[cm]

[if exp="f.a17==1"]
[jump storage="kaiwa/kaiwa_w.ks" target=*start]
[elsif exp="f.b17==1"]]
[jump storage=kaiwa/kaiwa_o.ks target=*start]
[else]
[jump storage="kaiwa/kaiwa.ks" target=*start]
[endif]



















































