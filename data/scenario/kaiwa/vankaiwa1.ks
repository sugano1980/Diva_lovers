*start

[eval exp="f.kaiwa=f.kaiwa-1"] 

[chara_new name="haruko" storage="chara/normal.png" jname="はるこ"]
[chara_face name="haruko" face="warau" storage=chara/nyaa.png"] 
[deffont face="ＭＳゴシック" size=20]
[cm]


[macro name="w"]
[wait time=500]
[endmacro]


[macro name="mi"]
[wait time=300]
[showmenubutton]
[endmacro]
[macro name="ka"]
[hidemenubutton]
[endmacro]
[deffont face="ＭＳゴシック" size=20]

;メッセージ画面の表示


*kaiwa
[cm]
[anim name="haruko" left=200]
[wa]
はるこ[r]
「そうだね。結構忙しいかも」[l]
[cm]
イレイン[r]
「そうなんだあ」[l]
;好感度をプラス
[eval exp="f.vankonkando=f.vankonkando+2"]


[if exp="f.kaiwa==0"]
[chara_hide name="haruko"]
[fadeoutbgm time=3000]
[cm]
;背景フラグを全て０に
[eval exp="f.kvhaikei=0"]
[eval exp="f.kkhaikei=0"]
[eval exp="f.klhaikei=0"]

[jump storage=kyuujitu.ks target=*start]

[endif]

*back
[cm]
;戻るボタン表示
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=470 y=435]


;戻る
*mae
[cm]
[jump storage=kaiwa/vankaiwa.ks target=*modottekita]


