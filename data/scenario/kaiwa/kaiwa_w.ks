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










[irain][r]
「誰に話しかけよう？」


[if exp="f.lionkaiwa!=0"]
[button graphic="button/wesuta/kyuujitu_lion.png" clickse="tm2_switch001_macchi.ogg" target=*lion x=310 y=90]
[endif]

[if exp="f.krakaiwa!=0"]
[button graphic="button/wesuta/kyuujitu_kra.png" clickse="tm2_switch001_macchi.ogg" target=*kra x=310 y=190]
[endif]

[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*modoru x=310 y=290]
[s]
[cm]


*lion
[cm]
@jump storage="kaiwa/lionkaiwa.ks"


*kra
[cm]
@jump storage="kaiwa/krakaiwa.ks"





*mae
[cm]
[jump target=*kaiwa]
[cm]


*modoru
[cm]
[stopbgm]
[jump storage=kyuujitu_w.ks target=*saisho]
