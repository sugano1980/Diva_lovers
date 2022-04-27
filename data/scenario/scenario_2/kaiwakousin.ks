*start











;恋愛感度レベルを代入（レベルアップのときの表示のため）

;ランス恋愛感度レベル表示


[eval exp="f.ransgenzailevel0=f.ransrenailevel"]







;ライオネス恋愛感度レベル表示


[eval exp="f.liongenzailevel0=f.lionrenailevel"]




;クライスト恋愛感度レベル表示

[eval exp="f.kragenzailevel0=f.krarenailevel"]

;恋愛感度レベル代入終わり



[eval exp="f.kaiwa=1"]


;好感度による会話回数

[if exp="f.ranskonkando<40"]
[eval exp="f.ranskaiwa=2"]
[elsif exp="f.ranskonkando<80"]
[eval exp="f.ranskaiwa=3"]
[elsif exp="f.ranskonkando<120"]
[eval exp="f.ranskaiwa=4"]
[elsif exp="f.ranskonkando<190"]
[eval exp="f.ranskaiwa=5"]
[else]
[eval exp="f.ranskaiwa=6"]
[endif]

[if exp="f.lionkonkando<40"]
[eval exp="f.lionkaiwa=2"]
[elsif exp="f.lionkonkando<80"]
[eval exp="f.lionkaiwa=3"]
[elsif exp="f.lionkonkando<120"]
[eval exp="f.lionkaiwa=4"]
[elsif exp="f.lionkonkando<190"]
[eval exp="f.lionkaiwa=5"]
[else]
[eval exp="f.lionkaiwa=6"]
[endif]

[if exp="f.krakonkando<40"]
[eval exp="f.krakaiwa=2"]
[elsif exp="f.krakonkando<80"]
[eval exp="f.krakaiwa=3"]
[elsif exp="f.krakonkando<120"]
[eval exp="f.krakaiwa=4"]
[elsif exp="f.krakonkando<190"]
[eval exp="f.krakaiwa=5"]
[else]
[eval exp="f.krakaiwa=6"]
[endif]

[if exp="f.vankonkando<2"]
[eval exp="f.vankaiwa=1"]
[elsif exp="f.vankonkando<3"]
[eval exp="f.vankaiwa=2"]
[elsif exp="f.vankonkando<4"]
[eval exp="f.vankaiwa=3"]
[elsif exp="f.vankonkando<5"]
[eval exp="f.vankaiwa=4"]
[else]
[eval exp="f.vankaiwa=5"]
[endif]

;テスト用の変数入力
;[eval exp="f.tomato= 2 "]
;[eval exp="f.nikujaga= 2 "]
;[eval exp="f.siizaa= 2 "]
;[eval exp="f.itamesi= 2 "]
;[eval exp="f.sakanahurai= 2 "]
;[eval exp="f.sinsen= 2 "]
;[eval exp="f.karei= 2 "]
;[eval exp="f.atugiri= 2 "]
;[eval exp="f.nimono= 2 "]

;[eval exp="f.marine=2"]
;[eval exp="f.karaage=2"]
;[eval exp="f.takikomigohan=2"]
;[eval exp="f.guratan=2"]

;会話の秘訣あり
[if exp="f.other_item_stock[33]>0"]
[eval exp="f.ranskaiwa=f.ranskaiwa+1"]
[eval exp="f.lionkaiwa=f.lionkaiwa+1"]
[eval exp="f.krakaiwa=f.krakaiwa+1"]
[endif]


;事前会話のフラグ消去

[eval exp="f.rans_jizenkaiwa=0"]
[eval exp="f.lion_jizenkaiwa=0"]
[eval exp="f.kra_jizenkaiwa=0"]
[eval exp="f.van_jizenkaiwa=0"]

;好感度あがったかチェックのフラグ消去
[eval exp="f.rans_koukando_sumi=0"]
[eval exp="f.lion_koukando_sumi=0"]
[eval exp="f.kra_koukando_sumi=0"]



[eval exp="f.rans_jizenkaiwa=0"]
[eval exp="f.lion_jizenkaiwa=0"]
[eval exp="f.kra_jizenkaiwa=0"]
[eval exp="f.van_jizenkaiwa=0"]

;好感度あがったかチェックのフラグ消去
[eval exp="f.rans_koukando_sumi=0"]
[eval exp="f.lion_koukando_sumi=0"]
[eval exp="f.kra_koukando_sumi=0"]
*modoru
Loading
[cm]
[return]















