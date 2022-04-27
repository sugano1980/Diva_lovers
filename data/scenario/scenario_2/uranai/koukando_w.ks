*test
;テスト用
;[eval exp="f.ransrenaikando=0"]
;[eval exp="f.ranskonkando=0"]
;[eval exp="f.ransrenaikando=f.ransrenaikando+3"]
;[eval exp="f.ranskonkando=f.ranskonkando+13"]

;[eval exp="f.lionrenaikando=0"]
;[eval exp="f.lionkonkando=0"]
;[eval exp="f.lionrenaikando=f.lionrenaikando+3"]
;[eval exp="f.lionkonkando=f.lionkonkando+13"]

;[eval exp="f.krarenaikando=0"]
;[eval exp="f.krakonkando=0"]
;[eval exp="f.krarenaikando=f.krarenaikando+3"]
;[eval exp="f.krakonkando=f.krakonkando+13"]

;テスト用終わり

*start
[cm]





;背景素材のプリロード
[preload storage="data/bgimage/black.png"]


;占い画面サンプル



;背景変更


;ＢＧＭを鳴らす

;メッセージ画面の表示

*koukando
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[cm]
[bg storage="hune_naka_tasogare.jpg" time=50]
[borongo][r]
「誰の気持ちを知りたいの？」
[button graphic="button/wesuta/kyuujitu_rans.png" clickse="tm2_switch001_macchi.ogg" target=*rans x=300 y=30]
[button graphic="button/wesuta/kyuujitu_lion.png" clickse="tm2_switch001_macchi.ogg" target=*rai x=300 y=80]
[button graphic="button/wesuta/kyuujitu_kra.png" clickse="tm2_switch001_macchi.ogg" target=*kra x=300 y=130]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=230]
[s]

*rans
[cm]
[bg storage="koukando.jpg" time=50]
;キャラクター表示
[image layer="1" page=fore visible=true top=10 left=5 storage=chara/ranslott1.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=35 left=400 storage=ranskoukando.jpg]
;キャラクター好感度ゲージ

[if exp="f.ranskonkando>=50"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando40.jpg]
[elsif exp="f.ranskonkando>=45"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando36.jpg]
[elsif exp="f.ranskonkando>=40"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando32.jpg]
[elsif exp="f.ranskonkando>=35"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando28.jpg]
[elsif exp="f.ranskonkando>=30"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando24.jpg]
[elsif exp="f.ranskonkando>=25"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando20.jpg]
[elsif exp="f.ranskonkando>=20"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando16.jpg]
[elsif exp="f.ranskonkando>=15"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando12.jpg]
[elsif exp="f.ranskonkando>=10"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando8.jpg]
[elsif exp="f.ranskonkando>=5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando0.jpg]
[endif]


;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=rennaikando.jpg]
;恋愛感度レベル表示

[if exp="f.ransrenailevel==1"]
[ptext layer="1" page=fore text="1" size=23 x=600 y=115 color=black]

[elsif exp="f.ransrenailevel==2"]
[ptext layer="1" page=fore text="2" size=23 x=600 y=115 color=black]

[elsif exp="f.ransrenailevel==3"]
[ptext layer="1" page=fore text="3" size=23 x=600 y=115 color=black]

[elsif exp="f.ransrenailevel==4"]
[ptext layer="1" page=fore text="4" size=23 x=600 y=115 color=black]

[elsif exp="f.ransrenailevel==5"]
[ptext layer="1" page=fore text="5" size=23 x=600 y=115 color=black]

[else]
[ptext layer="1" page=fore text="MAX" size=23 x=600 y=115 color=black]
[endif]





;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=koukandosetumei.png]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる
;恋愛感度レベルあと何ポイントで上がるか計算

[eval exp="f.ransrenainokori=6-f.ransrenaikando"]

好感度[emb exp="f.ranskonkando"][l]
[cm]
[borongo][r]
「あなたへの気持ちは・・・[w]こんな感じね。[r]
　えっと、恋のアンテナレベルは・・・と・・・」[l]
[cm]
[if exp="f.ransrenailevel>=5"]
[borongo][r]
「ええー！ここまで極めちゃったのお！？[r]
　ここまでのレベルなら、このカレもあっというまにメロメロでしょうねえ」[l]
[jump target=*end]
[elsif exp="f.ransrenainokori<=2&&f.ranrenainokori>=0"]
[borongo][r]
「次の恋愛感度レベルまではあと
１回ほど、心のふれあいが必要ね。
[elsif exp="f.ransrenainokori<=4"]
[borongo][r]
「次の恋愛感度レベルまではあと
２回ほど、心のふれあいが必要ね。
[else]
[borongo][r]
「次の恋愛感度レベルまではあと
３回ほど、心のふれあいが必要ね。
[endif]

[r]
レベルがあがれば心の距離もぐっと縮まるわよお☆」


[l][jump target=*mae]








;ライオネス
*rai
[cm]
[bg storage="koukando.jpg" time=50]
;キャラクター表示
[image layer="1" page=fore visible=true top=10 left=5 storage=chara/lioness_pro.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=35 left=400 storage=lionkoukando.jpg]
;キャラクター好感度ゲージ

[if exp="f.lionkonkando>=50"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando40.jpg]
[elsif exp="f.lionkonkando>=45"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando36.jpg]
[elsif exp="f.lionkonkando>=40"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando32.jpg]
[elsif exp="f.lionkonkando>=35"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando28.jpg]
[elsif exp="f.lionkonkando>=30"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando24.jpg]
[elsif exp="f.lionkonkando>=25"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando20.jpg]
[elsif exp="f.lionkonkando>=20"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando16.jpg]
[elsif exp="f.lionkonkando>=15"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando12.jpg]
[elsif exp="f.lionkonkando>=10"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando8.jpg]
[elsif exp="f.lionkonkando>=5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando0.jpg]
[endif]


;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=rennaikando.jpg]
;恋愛感度レベル表示

[if exp="f.lionrenailevel==1"]
[ptext layer="1" page=fore text="1" size=23 x=600 y=115 color=black]
[elsif exp="f.lionrenailevel==2"]
[ptext layer="1" page=fore text="2" size=23 x=600 y=115 color=black]
[elsif exp="f.lionrenailevel==3"]
[ptext layer="1" page=fore text="3" size=23 x=600 y=115 color=black]
[elsif exp="f.lionrenailevel==4"]
[ptext layer="1" page=fore text="4" size=23 x=600 y=115 color=black]
[elsif exp="f.lionrenailevel==5"]
[ptext layer="1" page=fore text="5" size=23 x=600 y=115 color=black]
[else]
[ptext layer="1" page=fore text="MAX" size=23 x=600 y=115 color=black]
[endif]






;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=koukandosetumei.png]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる
;恋愛感度レベルあと何ポイントで上がるか計算
[eval exp="f.lionrenainokori=5-f.lionrenaikando"]

好感度[emb exp="f.lionkonkando"]
[l]
[cm]
[borongo][r]
「あなたへの気持ちは・・・[w]こんな感じね。[r]
　えっと、恋のアンテナレベルは・・・と・・・」[l]
[cm]
[if exp="f.lionrenailevel>=5"]
[borongo][r]
「ええー！ここまで極めちゃったのお！？[r]
　ここまでのレベルなら、このカレもあっというまにメロメロでしょうねえ」
[l][jump target=*end]
[elsif exp="f.lionrenainokori<=1&&f.ranrenainokori>=0"]
[borongo][r]
「次の恋愛感度レベルまではあと
１回ほど、心のふれあいが必要ね。
[elsif exp="f.lionrenainokori<=2"]

[borongo][r]
「次の恋愛感度レベルまではあと
２回ほど、心のふれあいが必要ね。
[elsif exp="f.lionrenainokori<=3"]
[borongo][r]
「次の恋愛感度レベルまではあと
３回ほど、心のふれあいが必要ね。

[elsif exp="f.lionrenainokori<=4"]
[borongo][r]
「次の恋愛感度レベルまではあと
４回ほど、心のふれあいが必要ね。

[elsif exp="f.lionrenainokori<=5"]
[borongo][r]
「次の恋愛感度レベルまではあと
５回ほど、心のふれあいが必要ね。

[endif]
[r]
レベルがあがれば心の距離もぐっと縮まるわよお☆」
[l][jump target=*mae]







;クライスト
*kra
[cm]
[bg storage="koukando.jpg" time=50]
;キャラクター表示
[image layer="1" page=fore visible=true top=10 left=5 storage=chara/klaist_pro.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=35 left=400 storage=krakoukando.jpg]
;キャラクター好感度ゲージ

[if exp="f.krakonkando>=50"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando40.jpg]
[elsif exp="f.krakonkando>=45"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando36.jpg]
[elsif exp="f.krakonkando>=40"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando32.jpg]
[elsif exp="f.krakonkando>=35"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando28.jpg]
[elsif exp="f.krakonkando>=30"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando24.jpg]
[elsif exp="f.krakonkando>=25"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando20.jpg]
[elsif exp="f.krakonkando>=20"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando16.jpg]
[elsif exp="f.krakonkando>=15"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando12.jpg]
[elsif exp="f.krakonkando>=10"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando8.jpg]
[elsif exp="f.krakonkando>=5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=koukando0.jpg]
[endif]


;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=rennaikando.jpg]
;恋愛感度レベル表示

[if exp="f.krarenailevel==1"]
[ptext layer="1" page=fore text="1" size=23 x=600 y=115 color=black]
[elsif exp="f.krarenailevel==2"]
[ptext layer="1" page=fore text="2" size=23 x=600 y=115 color=black]
[elsif exp="f.krarenailevel==3"]
[ptext layer="1" page=fore text="3" size=23 x=600 y=115 color=black]
[elsif exp="f.krarenailevel==4"]
[ptext layer="1" page=fore text="4" size=23 x=600 y=115 color=black]
[elsif exp="f.krarenailevel==5"]
[ptext layer="1" page=fore text="5" size=23 x=600 y=115 color=black]
[else]
[ptext layer="1" page=fore text="MAX" size=23 x=600 y=115 color=black]
[endif]





;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=koukandosetumei.png]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる
;恋愛感度レベルあと何ポイントで上がるか計算
[eval exp="f.krarenainokori=6-f.krarenaikando"]

好感度[emb exp="f.krakonkando"]
[l]
[cm]
[borongo][r]
「あなたへの気持ちは・・・[w]こんな感じね。[r]
　さて、恋のアンテナレベルは・・・と・・・」[l]
[cm]
[if exp="f.krarenailevel>=5"]
[borongo][r]
「ええー！ここまで極めちゃったのお！？[r]
　ここまでのレベルなら、このカレもあっというまにメロメロでしょうねえ」
[jump target="*end"]
[elsif exp="f.krarenainokori<=3&&f.krarenainokori>=0"]
[borongo][r]
「次の恋愛感度レベルまではあと
１回ほど、心のふれあいが必要ね。
[else]
[borongo][r]
「次の恋愛感度レベルまではあと
２回ほど、心のふれあいが必要ね。
[endif]
[r]
レベルがあがれば心の距離もぐっと縮まるわよお☆」
*end

[l][jump target=*mae]




*mae
[cm]
[jump target=*koukando]







*modoru
[cm]
[jump storage=scenario_2/uranai/uranai_w.ks target=*uranai]







