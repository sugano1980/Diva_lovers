*start







;恋愛感度レベルを代入（レベルアップのときの表示のため）

;ランス恋愛感度レベル表示


[eval exp="f.ransgenzailevel0=f.ransrenailevel"]







;ライオネス恋愛感度レベル表示


[eval exp="f.liongenzailevel0=f.lionrenailevel"]




;クライスト恋愛感度レベル表示

[eval exp="f.kragenzailevel0=f.krarenailevel"]

;恋愛感度レベル代入終わり


;料理と会話の回数入力

;会話テスト用


;会話テスト用



;料理と会話の回数入力

[eval exp="f.ryouri= 3 "]
[eval exp="f.ryourirans= 1 "]
[eval exp="f.ryourilion= 1 " ]
[eval exp="f.ryourikra= 1 "]
[eval exp="f.kaiwa=1"]


;好感度による会話回数

[if exp="f.ranskonkando<10"]
[eval exp="f.ranskaiwa=2"]
[elsif exp="f.ranskonkando<20"]
[eval exp="f.ranskaiwa=3"]
[elsif exp="f.ranskonkando<30"]
[eval exp="f.ranskaiwa=4"]
[elsif exp="f.ranskonkando<40"]
[eval exp="f.ranskaiwa=5"]
[else]
[eval exp="f.ranskaiwa=6"]
[endif]

[if exp="f.lionkonkando<10"]
[eval exp="f.lionkaiwa=2"]
[elsif exp="f.lionkonkando<20"]
[eval exp="f.lionkaiwa=3"]
[elsif exp="f.lionkonkando<30"]
[eval exp="f.lionkaiwa=4"]
[elsif exp="f.lionkonkando<40"]
[eval exp="f.lionkaiwa=5"]
[else]
[eval exp="f.lionkaiwa=6"]
[endif]

[if exp="f.krakonkando<10"]
[eval exp="f.krakaiwa=2"]
[elsif exp="f.krakonkando<20"]
[eval exp="f.krakaiwa=3"]
[elsif exp="f.krakonkando<30"]
[eval exp="f.krakaiwa=4"]
[elsif exp="f.krakonkando<40"]
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

[return]














