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
[if exp="f.ransrenaikando>=0&&f.ransrenaikando<=5"]
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenaikando>5&&f.ransrenaikando<=10"]
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenaikando>10&&f.ransrenaikando<=15"]
[eval exp="f.ranskonkando=f.ranskonkando+6"]
[elsif exp="f.ransrenaikando>15&&f.ransrenaikando<=20"]
[eval exp="f.ranskonkando=f.ranskonkando+8"]
[elsif exp="f.ransrenaikando>20&&f.ransrenaikando<=25"]
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[else]
[eval exp="f.ranskonkando=f.ranskonkando+20"]
[endif]


;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+1"]

;会話終了時
[if exp="f.kaiwa==0"]
[chara_hide name="haruko"]
[fadeoutbgm time=3000]
[cm]
;背景フラグを全て０に
[eval exp="f.kkhaikei=0"]
[eval exp="f.klhaikei=0"]
[eval exp="f.kvhaikei=0"]

[jump target=*wesutahantei]

[endif]


*wesutahantei
[if exp="f.a17==1&&f.kaiwa==0"]
[jump storage="kyuujitu_w.ks" target=*start]

[elsif exp="f.b17==1&&f.kaiwa==0"]
[jump storage="kyuujitu_o.ks" target=*start]
[elsif exp="f.kaiwa==0"]
[jump storage=kyuujitu.ks target=*start]
[endif]

*back
[cm]
;戻るボタン表示
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=470 y=435]


;戻る
*mae
[cm]
[jump storage=kaiwa/ranskaiwa.ks target=*modottekita]


