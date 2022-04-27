
*start




[cm]


;ＢＧＭを鳴らす
[stopbgm]
[playbgm storage="ryouri/irassyaimase_ontama.ogg"]


;メッセージ画面の表示


;背景素材のプリロード
[preload storage="data/bgimage/black.png"]


;会話画面サンプル


;念のためウィンドウ調整
[layopt layer=message1 visible=true]
[current layer="message1"]
[layopt layer=message0 visible=false]

;背景変更

*escort

[irain][r]
「誰にエスコートを頼もう？」

[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion x=300 y=80]

[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=300 y=130]

;一時的に条件変数を変更あとは戻しておくこと！==が正解です
[if exp="f.b12== 1 "]
[button graphic="button/vanname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*van x=300 y=180]
[endif]

;戻るボタン
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=230]

[s]
[cm]

*lion
[cm]
[irain][r]
「ライオネスでいいかな？」
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion_ok x=300 y=80]

[button graphic="button/ng_escort.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion_ng x=300 y=130]
[s]

*lion_ok
[atari]
[lion]
[eval exp="f.a15= 1 "]
[cm]
[jump storage="kaiwa/escortlion.ks" target=*start]

*lion_ng
[cm]
[hazure]
[jump target=*escort]


*kra
[cm]
[irain][r]
「クライストさんでいいかな？」
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra_ok x=300 y=80]

[button graphic="button/ng_escort.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra_ng x=300 y=130]
[s]
*kra_ok
[atari]
[kra]
[eval exp="f.b15= 1 "]
[cm]
[jump storage="kaiwa/escortkra.ks" target=*start]

*kra_ng
[cm]
[hazure]
[jump target=*escort]


*van
[cm]
[irain][r]
「ヴァンでいいかな？」
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*van_ok x=300 y=80]

[button graphic="button/ng_escort.jpg" clickse="tm2_switch001_macchi.ogg" target=*van_ng x=300 y=130]
[s]
*van_ok
[atari]
[van]
[eval exp="f.c15= 1 "]
[cm]
[jump storage="kaiwa/escortvan.ks" target=*start]

*van_ng
[cm]
[hazure]
[jump target=*escort]



*modoru
[cm]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]
