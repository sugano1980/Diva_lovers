;変数操作、会話回数
*hensuu


*start




[cm]
[if exp="f.kaiwa==0"]
[jump target=*modoru]
[endif]

;ＢＧＭを鳴らす
[stopbgm]
[playbgm storage="ryouri/irassyaimase_ontama.ogg"]


;メッセージ画面の表示


;背景素材のプリロード
[preload storage="data/bgimage/black.png"]


;会話画面サンプル


*kaiwa


;念のためウィンドウ調整
[layopt layer=message1 visible=true]
[current layer="message1"]
[layopt layer=message0 visible=false]

;背景変更









[normal]
[irain][r]
「誰に話しかけよう？」
[if exp="f.jiyuu==5||f.jiyuu==6||f.jiyuu==8||f.jiyuu==9.5||f.ranskaiwa==0"]
[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans visible=false x=210 y=90]
[else]
[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans x=210 y=90]
[endif]

[if exp="f.lionkaiwa==0"]
[else]
[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion x=410 y=90]
[endif]

[if exp="f.jiyuu<=6||f.krakaiwa==0"]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra visible=false x=210 y=190]
[else]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=210 y=190]
[endif]

[if exp="f.jiyuu<7||f.jiyuu>8&&f.b12!=1||f.jiyuu>9||f.vankaiwa==0"]
[button graphic="button/vanname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*van visible=false x=410 y=190]
[else]
[button graphic="button/vanname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*van x=410 y=190]
[endif]

[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=310 y=290]

[s]
[cm]

*rans
[cm]
@jump storage="kaiwa/ranskaiwa.ks"

*lion
[cm]
@jump storage="kaiwa/lionkaiwa.ks"


*kra
[cm]
@jump storage="kaiwa/krakaiwa.ks"


*van
[cm]
@jump storage="kaiwa/vankaiwa.ks"


*mae
[cm]
[jump target=*kaiwa]
[cm]


*modoru
[cm]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]
