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

;[eval exp="f.krarenaikando=26"]
;[eval exp="f.krakonkando=50"]


;[eval exp="f.krarenaikando=f.krarenaikando+3"]
;[eval exp="f.krakonkando=f.krakonkando+13"]




;[if exp="f.krakonkando>=f.krakonkando_m/2"]
;[eval exp="f.kra_heart_kizuna=1"]
;[endif]

;[if exp="f.krakonkando>=f.krakonkando_m"]
;[eval exp="f.kra_heart_kizuna=2"]
;[endif]

;[eval exp="f.rans_battle_kizuna=1"]

;テスト用終わり

*start
[cm]
;[eval exp="f.krarenaikando=26"]
;[eval exp="f.krarenailevel=6"]
;[eval exp="f.krakonkando=25"]
;[eval exp="f.krakonkando_m=50"]

;[eval exp="f.krarenaikando=f.krarenaikando+3"]
;[eval exp="f.krakonkando=f.krakonkando+13"]








;背景素材のプリロード



;占い画面サンプル



;背景変更


;ＢＧＭを鳴らす

;メッセージ画面の表示

*koukando
[eval exp="f.krakonkando_m=100"]
[eval exp="f.ranskonkando_m=100"]
[eval exp="f.lionkonkando_m=100"]
;f.glif_battle_kizuna


[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=0 page=fore]
[cm]
[clearfix]


[if exp="f.s_wesuta==1"]
#ボロンゴ
「誰の気持ちを知りたいの？」
#
[else]
#ガイアの巫女
「誰のお気持ちを知りたいのですか？」
#
[endif]



[button graphic="mini_face/ranslott_face.png" clickse="tm2_switch001_macchi.ogg" target=*rans x=35 y=80]
[button graphic="mini_face/lioness_face.png" clickse="tm2_switch001_macchi.ogg" target=*rai x=235 y=80]
[button graphic="mini_face/klaist_face.png" clickse="tm2_switch001_macchi.ogg" target=*kra x=435 y=80]
[button graphic="mini_face/glif_face.png" clickse="tm2_switch001_macchi.ogg" target=*glif x=635 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=230]
[s]

*rans
[skipstop]
[cm]
[bg storage="koukando.png" time=50]
;攻略ボタン
[image storage="kouryaku/kouryaku_button.png" layer="3" page="fore" visible="true" x="620" y="380" name="kouryaku"]
[button graphic="button/toumeibotan.png" fix=true storage="scenario_2/uranai/kouryaku_run.ks"  exp="tf.k_friend=1" name="kouryaku" x="620" y="380" width="160" height="40"]
[ptext layer="3" page="fore" text="攻略情報" x="655" y="384" size="22" face="makinas" color="white" bold="" edge="" name=""]


;キャラクター表示
[image layer=1 page=fore visible=true top=40 left=155  width=200 height=289 storage = rans_face.png]
[image layer=1 page=fore visible=true top=40 left=155  storage = face_waku.png]
[image layer=0 page=fore visible=true top=40 left=155  storage = face_waku_under.png]

;[image layer="1" page=fore visible=true top=10 left=5 storage=uranai/chara/ranslott1.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=5 left=400 height=70 width=70 storage=battle_face/ranslott_face.png]
[image layer="1" page=fore visible=true top=12 left=460 storage=koukando_heart.png]


[if exp="f.rans_battle_kizuna==1"]

[ptext layer="1" page=fore text="戦場の絆" size=12 x=592 y=23 color=black]
[image layer="1" page=fore visible=true top=35 left=605 storage=uranai/battle_kizuna.png]

[endif]

;心のきずな判定
[if exp="f.ranskonkando>49&&f.rans_heart_kizuna==0&&f.event_epi5_rans_ok==10"]
;[eval exp="f.ranskonkando_all=f.ranskonkando"]
;[eval exp="f.ranskonkando=f.ranskonkando-100"]
[eval exp="f.rans_heart_kizuna=1"]
[endif]

;[if exp="f.ranskonkando>100&&f.rans_heart_kizuna==1"]
;[eval exp="f.ranskonkando_all=f.ranskonkando_all+f.ranskonkando"]
;[eval exp="f.ranskonkando=f.ranskonkando-100"]
;[eval exp="f.rans_heart_kizuna=2"]
;[endif]
;

[if exp="f.rans_heart_kizuna>0"]
[image layer="2" page=fore visible=true top=33 left=660 storage=uranai/heart-0-0.png]
[endif]

[if exp="f.rans_heart_kizuna==2"]
[image layer="2" page=fore visible=true top=33 left=676 storage=uranai/heart-1-0.png]
[endif]
[ptext layer="1" page=fore text="こころの絆" size=12 x=650 y=23 color=black]
[image layer="1" page=fore visible=true top=36 left=660 storage=uranai/heart_dai.png]




;キャラクター好感度ゲージ


[eval exp="f.konkando_m_9=f.ranskonkando_m/10*9"]
[eval exp="f.konkando_m_8=f.ranskonkando_m/10*8"]
[eval exp="f.konkando_m_7=f.ranskonkando_m/10*7"]
[eval exp="f.konkando_m_6=f.ranskonkando_m/10*6"]
[eval exp="f.konkando_m_5=f.ranskonkando_m/10*5"]
[eval exp="f.konkando_m_4=f.ranskonkando_m/10*4"]
[eval exp="f.konkando_m_3=f.ranskonkando_m/10*3"]
[eval exp="f.konkando_m_2=f.ranskonkando_m/10*2"]
[eval exp="f.konkando_m_1=f.ranskonkando_m/10"]


[if exp="f.ranskonkando>=f.ranskonkando_m"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando40.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_9"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando36.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_8"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando32.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_7"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando28.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_6"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando24.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando20.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_4"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando16.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_3"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando12.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_2"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando8.jpg]
[elsif exp="f.ranskonkando>=f.konkando_m_1"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando0.jpg]
[endif]


;恋愛レベル計算

;恋愛レベル計さん
[renaikando_calc_rans]


;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=uranai/rennaikando.jpg]
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

[if exp="f.ransrenailevel<5"]
[renaikando_rans_nokori]
[endif]


;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=uranai/koukandosetumei.jpg]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる
;恋愛感度レベルあと何ポイントで上がるか計算


;[if exp="f.ranskonkando<101"]
好感度[emb exp="f.ranskonkando"][l]
;[else]
;好感度[emb exp="f.ranskonkando_all"]
;[endif]

;恋愛感度[emb exp="f.ransrenaikando"][l]








*end
[l]
[freeimage layer=3]
[jump target=*mae]








;ライオネス
*rai
[skipstop]
[cm]
[bg storage="koukando.png" time=50]

;攻略ボタン
[image storage="kouryaku/kouryaku_button.png" layer="3" page="fore" visible="true" x="620" y="380" name="kouryaku"]
[button graphic="button/toumeibotan.png" fix=true storage="scenario_2/uranai/kouryaku_run.ks" exp="tf.k_friend=2" name="kouryaku" x="620" y="380" width="160" height="40"]
[ptext layer="3" page="fore" text="攻略情報" x="655" y="384" size="22" face="makinas" color="white" bold="" edge="" name=""]

;キャラクター表示
[image layer=1 page=fore visible=true top=40 left=155  height="300" width="200" storage = lion_face.png]
[image layer=1 page=fore visible=true top=40 left=155  storage = face_waku.png]
[image layer=0 page=fore visible=true top=40 left=155  storage = face_waku_under.png]

;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=5 left=400 height=70 width=70 storage=battle_face/lioness_face.png]
[image layer="1" page=fore visible=true top=12 left=460 storage=koukando_heart.png]


[if exp="f.lion_battle_kizuna==1"]

[ptext layer="1" page=fore text="戦場の絆" size=12 x=592 y=23 color=black]
[image layer="1" page=fore visible=true top=35 left=605 storage=uranai/battle_kizuna.png]

[endif]

;心のきずな判定
[if exp="f.lionkonkando>49&&f.lion_heart_kizuna==0&&f.event_sub_14_mother_kaiwa==1"]
;[eval exp="f.lionkonkando_all=f.lionkonkando"]
;[eval exp="f.lionkonkando=f.lionkonkando-100"]
[eval exp="f.lion_heart_kizuna=1"]
[endif]

;[if exp="f.lionkonkando>100&&f.lion_heart_kizuna==1"]
;[eval exp="f.lionkonkando_all=f.lionkonkando_all+f.lionkonkando"]
;[eval exp="f.lionkonkando=f.lionkonkando-100"]
;[eval exp="f.lion_heart_kizuna=2"]
;[endif]
;


[if exp="f.lion_heart_kizuna>0"]
[image layer="2" page=fore visible=true top=33 left=660 storage=uranai/heart-0-0.png]
[endif]

[if exp="f.lion_heart_kizuna==2"]
[image layer="2" page=fore visible=true top=33 left=676 storage=uranai/heart-1-0.png]
[endif]
[ptext layer="1" page=fore text="こころの絆" size=12 x=650 y=23 color=black]
[image layer="1" page=fore visible=true top=36 left=660 storage=uranai/heart_dai.png]




;キャラクター好感度ゲージ

[eval exp="f.konkando_m_9=f.lionkonkando_m/10*9"]
[eval exp="f.konkando_m_8=f.lionkonkando_m/10*8"]
[eval exp="f.konkando_m_7=f.lionkonkando_m/10*7"]
[eval exp="f.konkando_m_6=f.lionkonkando_m/10*6"]
[eval exp="f.konkando_m_5=f.lionkonkando_m/10*5"]
[eval exp="f.konkando_m_4=f.lionkonkando_m/10*4"]
[eval exp="f.konkando_m_3=f.lionkonkando_m/10*3"]
[eval exp="f.konkando_m_2=f.lionkonkando_m/10*2"]
[eval exp="f.konkando_m_1=f.lionkonkando_m/10"]


[if exp="f.lionkonkando>=f.lionkonkando_m"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando40.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_9"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando36.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_8"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando32.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_7"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando28.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_6"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando24.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando20.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_4"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando16.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_3"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando12.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_2"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando8.jpg]
[elsif exp="f.lionkonkando>=f.konkando_m_1"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando0.jpg]
[endif]





;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=uranai/rennaikando.jpg]
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
[image layer="1" page=fore visible=true top=150 left=400 storage=uranai/koukandosetumei.jpg]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる
;恋愛感度レベルあと何ポイントで上がるか計算


;[if exp="f.lionkonkando<101"]
好感度[emb exp="f.lionkonkando"][l]
;[else]
;好感度[emb exp="f.lionkonkando_all"]
;[endif]

;恋愛感度[emb exp="f.lionrenaikando"][l]
[cm]

;恋愛レベル計さん
[renaikando_calc_lion]

[if exp="f.lionrenailevel<5"]
[renaikando_lion_nokori]
[endif]

[cm]



*end1
[freeimage layer=3]
[l][jump target=*mae]




;クライスト
*kra
[skipstop]
[cm]
[bg storage="koukando.png" time=50]

;攻略ボタン
[image storage="kouryaku/kouryaku_button.png" layer="3" page="fore" visible="true" x="620" y="380" name="kouryaku"]
[button graphic="button/toumeibotan.png" fix=true storage="scenario_2/uranai/kouryaku_run.ks" exp="tf.k_friend=3" name="kouryaku" x="620" y="380" width="160" height="40"]
[ptext layer="3" page="fore" text="攻略情報" x="655" y="384" size="22" face="makinas" color="white" bold="" edge="" name=""]


;キャラクター表示
[image layer=1 page=fore visible=true top=56 left=155  height="285" width="200" storage = klaist_face.png]
[image layer=1 page=fore visible=true top=40 left=155  storage = face_waku.png]
[image layer=0 page=fore visible=true top=40 left=155  storage = face_waku_under.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=5 left=400 height=70 width=70 storage=battle_face/klaist_face.png]
[image layer="1" page=fore visible=true top=12 left=460 storage=koukando_heart.png]

[if exp="f.kra_battle_kizuna==1"]

[ptext layer="1" page=fore text="戦場の絆" size=12 x=592 y=23 color=black]
[image layer="1" page=fore visible=true top=35 left=605 storage=uranai/battle_kizuna.png]

[endif]

;心のきずな判定
[if exp="f.krakonkando>49&&f.kra_heart_kizuna==0&&f.event_epi7_kra_ok==7"]
;[eval exp="f.krakonkando_all=f.krakonkando"]
;[eval exp="f.krakonkando=f.krakonkando-100"]
[eval exp="f.kra_heart_kizuna=1"]
[endif]

;[if exp="f.krakonkando>100&&f.kra_heart_kizuna==1"]
;[eval exp="f.krakonkando_all=f.krakonkando_all+f.krakonkando"]
;[eval exp="f.krakonkando=f.krakonkando-100"]
;[eval exp="f.kra_heart_kizuna=2"]
;[endif]
;


[if exp="f.kra_heart_kizuna>0"]
[image layer="2" page=fore visible=true top=33 left=660 storage=uranai/heart-0-0.png]
[endif]

[if exp="f.kra_heart_kizuna==2"]
[image layer="2" page=fore visible=true top=33 left=676 storage=uranai/heart-1-0.png]
[endif]
[ptext layer="1" page=fore text="こころの絆" size=12 x=650 y=23 color=black]
[image layer="1" page=fore visible=true top=36 left=660 storage=uranai/heart_dai.png]

;キャラクター好感度ゲージ

[eval exp="f.konkando_m_9=f.krakonkando_m/10*9"]
[eval exp="f.konkando_m_8=f.krakonkando_m/10*8"]
[eval exp="f.konkando_m_7=f.krakonkando_m/10*7"]
[eval exp="f.konkando_m_6=f.krakonkando_m/10*6"]
[eval exp="f.konkando_m_5=f.krakonkando_m/10*5"]
[eval exp="f.konkando_m_4=f.krakonkando_m/10*4"]
[eval exp="f.konkando_m_3=f.krakonkando_m/10*3"]
[eval exp="f.konkando_m_2=f.krakonkando_m/10*2"]
[eval exp="f.konkando_m_1=f.krakonkando_m/10"]


[if exp="f.krakonkando>=f.krakonkando_m"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando40.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_9"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando36.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_8"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando32.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_7"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando28.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_6"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando24.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando20.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_4"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando16.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_3"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando12.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_2"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando8.jpg]
[elsif exp="f.krakonkando>=f.konkando_m_1"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando0.jpg]
[endif]


;恋愛感度レベルバナー
[image layer="1" page=fore visible=true top=115 left=400 storage=uranai/rennaikando.jpg]
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
[image layer="1" page=fore visible=true top=115 left=600 storage=uranai/tiara.png]

[endif]





;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=uranai/koukandosetumei.jpg]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる



好感度[emb exp="f.krakonkando"][l]
;恋愛感度[emb exp="f.krarenaikando"][l]
[cm]

;恋愛感度レベルあと何ポイントで上がるか計算
[renaikando_calc_kra]
[cm]
[if exp="f.krarenailevel<5"]
[renaikando_kra_nokori]
[endif]
[cm]



*end2
[freeimage layer=3]
[l][jump target=*mae]




;グリフ
*glif
[skipstop]
[cm]
[bg storage="koukando.png" time=50]

;攻略ボタン
[image storage="kouryaku/kouryaku_button.png" layer="3" page="fore" visible="true" x="620" y="380" name="kouryaku"]
[button graphic="button/toumeibotan.png" fix=true storage="scenario_2/uranai/kouryaku_run.ks" exp="tf.k_friend=4" name="kouryaku" x="620" y="380" width="160" height="40"]
[ptext layer="3" page="fore" text="攻略情報" x="655" y="384" size="22" face="makinas" color="white" bold="" edge="" name=""]


;キャラクター表示
[image layer=1 page=fore visible=true top=66 left=155  height="267" width="200" storage = glif_face.png]
[image layer=1 page=fore visible=true top=40 left=155  storage = face_waku.png]
[image layer=0 page=fore visible=true top=40 left=155  storage = face_waku_under.png]
;キャラクター好感度バナー
[image layer="1" page=fore visible=true top=5 left=400 height=70 width=70 storage=battle_face/glif_face.png]
[image layer="1" page=fore visible=true top=12 left=460 storage=koukando_heart.png]

[if exp="f.glif_battle_kizuna==1"]

[ptext layer="1" page=fore text="戦場の絆" size=12 x=592 y=23 color=black]
[image layer="1" page=fore visible=true top=35 left=605 storage=uranai/battle_kizuna.png]

[endif]

;心のきずな判定
[if exp="f.glifkonkando>49&&f.glif_heart_kizuna==0&&f.event_war_glif_sumi==1"]
;[eval exp="f.glifkonkando_all=f.glifkonkando"]
;[eval exp="f.glifkonkando=f.glifkonkando-100"]
[eval exp="f.glif_heart_kizuna=1"]
[endif]

;[if exp="f.glifkonkando>100&&f.glif_heart_kizuna==1"]
;[eval exp="f.glifkonkando_all=f.glifkonkando_all+f.glifkonkando"]
;[eval exp="f.glifkonkando=f.glifkonkando-100"]
;[eval exp="f.glif_heart_kizuna=2"]
;[endif]
;


[if exp="f.glif_heart_kizuna>0"]
[image layer="2" page=fore visible=true top=33 left=660 storage=uranai/heart-0-0.png]
[endif]

[if exp="f.glif_heart_kizuna==2"]
[image layer="2" page=fore visible=true top=33 left=676 storage=uranai/heart-1-0.png]
[endif]
[ptext layer="1" page=fore text="こころの絆" size=12 x=650 y=23 color=black]
[image layer="1" page=fore visible=true top=36 left=660 storage=uranai/heart_dai.png]

;キャラクター好感度ゲージ

[eval exp="f.konkando_m_9=f.glifkonkando_m/10*9"]
[eval exp="f.konkando_m_8=f.glifkonkando_m/10*8"]
[eval exp="f.konkando_m_7=f.glifkonkando_m/10*7"]
[eval exp="f.konkando_m_6=f.glifkonkando_m/10*6"]
[eval exp="f.konkando_m_5=f.glifkonkando_m/10*5"]
[eval exp="f.konkando_m_4=f.glifkonkando_m/10*4"]
[eval exp="f.konkando_m_3=f.glifkonkando_m/10*3"]
[eval exp="f.konkando_m_2=f.glifkonkando_m/10*2"]
[eval exp="f.konkando_m_1=f.glifkonkando_m/10"]


[if exp="f.glifkonkando>=f.glifkonkando_m"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando40.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_9"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando36.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_8"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando32.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_7"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando28.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_6"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando24.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_5"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando20.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_4"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando16.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_3"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando12.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_2"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando8.jpg]
[elsif exp="f.glifkonkando>=f.konkando_m_1"]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando4.jpg]
[else]
[image layer="2" page=fore visible=true top=70 left=400 storage=uranai/koukando0.jpg]
[endif]


;恋愛感度レベルバナー
;[image layer="1" page=fore visible=true top=115 left=400 storage=uranai/rennaikando.jpg]
;恋愛感度レベル表示

;[if exp="f.glifrenailevel==1"]
;[ptext layer="1" page=fore text="1" size=23 x=600 y=115 color=black]
;[elsif exp="f.glifrenailevel==2"]
;[ptext layer="1" page=fore text="2" size=23 x=600 y=115 color=black]
;[elsif exp="f.glifrenailevel==3"]
;[ptext layer="1" page=fore text="3" size=23 x=600 y=115 color=black]
;[elsif exp="f.glifrenailevel==4"]
;[ptext layer="1" page=fore text="4" size=23 x=600 y=115 color=black]
;[elsif exp="f.glifrenailevel==5"]
;[ptext layer="1" page=fore text="5" size=23 x=600 y=115 color=black]
;[else]
;[image layer="1" page=fore visible=true top=115 left=600 storage=uranai/tiara.png]

;[endif]





;好感度説明文
[image layer="1" page=fore visible=true top=150 left=400 storage=uranai/koukandosetumei_g.png]

;好感度各キャラ画像と好感度ゲージ表示　好感度により変わるおばあちゃんのコメントいれて　
;好感度変数を呼び出しifで分岐させてゲージ。おばあちゃんのコメントも好感度変数をifで分岐させる



好感度[emb exp="f.glifkonkando"][l]
;恋愛感度[emb exp="f.glifrenaikando"][l]
[cm]

;恋愛感度レベルあと何ポイントで上がるか計算
;renaikando_calc_glif]
;[cm]
;[if exp="f.glifrenailevel<5"]
;[renaikando_glif_nokori]
;[endif]


*end3
[freeimage layer=3]
[l][jump target=*mae]




*mae
[cm]
[bg storage="gaiamori_tasogare.jpg" time=50]
[jump target=*koukando]


*modoru
[cm]
[jump storage=scenario_2/uranai/uranai.ks target=*uranai]







