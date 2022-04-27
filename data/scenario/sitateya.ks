
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

[bg storage="sitateya_tasogare.jpg"]

*sitateya

[irain][r]
「どこの仕立て屋さんにしようかな？」

[button graphic="button/dress/rinne.jpg" clickse="tm2_switch001_macchi.ogg" target=*rinne x=145 y=0]

[button graphic="button/dress/sheril.jpg" clickse="tm2_switch001_macchi.ogg" target=*sheril x=145 y=80]

[button graphic="button/dress/arisia.jpg" clickse="tm2_switch001_macchi.ogg" target=*arisia x=145 y=160]

[button graphic="button/dress/gloria.jpg" clickse="tm2_switch001_macchi.ogg" target=*gloria x=145 y=240]


;戻るボタン
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=345]

[s]
[cm]

*rinne
[cm]
[irain][r]
「ブティック・リンネにする？」
[button graphic="button/dress/rinne.jpg" clickse="tm2_switch001_macchi.ogg" target=*setumei_rinne x=145 y=0]

[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*rinne_ok x=300 y=150]

[button graphic="button/ng_sitateya.jpg" clickse="tm2_switch001_macchi.ogg" target=*rinne_ng x=300 y=210]
[s]

*setumei_rinne
[irain][r]
「このお店はレースやフリルのついた可愛いドレスが
[r]得意みたいだね」[p]
[jump target=*rinne]

*rinne_ok
[atari]
[rans]
[eval exp="f.a16= 1 "]
[cm]
[fadeoutbgm time=3000]
[jump storage="kyuujitu.ks" target=*start]

*rinne_ng
[freeimage layer=0]
[cm]
[hazure]
[jump target=*sitateya]


*sheril
[cm]
[irain][r]
「ブティック・シェリルにする？」
[button graphic="button/dress/sheril.jpg" clickse="tm2_switch001_macchi.ogg" target=*setumei_sheril x=145 y=0]
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*sheril_ok x=300 y=150]

[button graphic="button/ng_sitateya.jpg" clickse="tm2_switch001_macchi.ogg" target=*sheril_ng x=300 y=210]
[s]
*setumei_sheril
[irain][r]
「このお店はちょっと派手め？なドレスが得意みたいだよ。
[r]着ていったらかなり目立っちゃうかも・・」[p]
[jump target=*sheril]
*sheril_ok
[atari]
[kra]
[eval exp="f.b16= 1 "]
[cm]
[fadeoutbgm time=3000]
[jump storage="kyuujitu.ks" target=*start]

*sheril_ng
[cm]
[hazure]
[jump target=*sitateya]


*arisia
[cm]
[irain][r]
「ブティック・アリシアにする？」
[button graphic="button/dress/arisia.jpg" clickse="tm2_switch001_macchi.ogg" target=*setumei_arisia x=145 y=0]

[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*arisia_ok x=300 y=150]

[button graphic="button/ng_sitateya.jpg" clickse="tm2_switch001_macchi.ogg" target=*arisia_ng x=300 y=210]
[s]
*setumei_arisia
[irain][r]
「清潔感があって、落ち着いた感じのドレスが
[r]たくさんあるお店だよ。[r]
ああいうの、お嬢様風、っていうのかなあ？」[p]
[jump target=*arisia]

*arisia_ok
[atari]
[lion]
[eval exp="f.c16= 1 "]
[cm]
[fadeoutbgm time=3000]
[jump storage="kyuujitu.ks" target=*start]

*arisia_ng
[cm]
[hazure]
[jump target=*sitateya]


*gloria
[cm]
[irain][r]
「ブティック・グロリアにする？」
[button graphic="button/dress/gloria.jpg" clickse="tm2_switch001_macchi.ogg" target=*setumei_gloria x=145 y=0]
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*gloria_ok x=300 y=150]

[button graphic="button/ng_sitateya.jpg" clickse="tm2_switch001_macchi.ogg" target=*gloria_ng x=300 y=210]
[s]

*setumei_gloria
[irain][r]
「貴族の人がよく着るような高級ドレスを
[r]いっぱい扱ってるお店だよ。
[r]お金、足りるといいけど・・・」[p]
[jump target=*gloria]

*gloria_ok
[atari]
[kra]
[eval exp="f.d16= 1 "]
[cm]
[fadeoutbgm time=3000]
[jump storage="kyuujitu.ks" target=*start]

*gloria_ng
[cm]
[hazure]
[jump target=*sitateya]



*modoru
[cm]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]
