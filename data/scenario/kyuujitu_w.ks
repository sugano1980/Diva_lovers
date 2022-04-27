
*oioi

;テスト用のフラグ管理
[eval exp="f.ryouri_no= 0 "]
[eval exp="f.jiyuu= 10 "]
;好感度フラグ管理
[eval exp="f.ranskonkando= 0 "]
[eval exp="f.lionkonkando= 0 "]
[eval exp="f.krakonkando= 0 "]

[eval exp="f.ransrenaikando= 0 "]
[eval exp="f.lionrenaikando= 0 "]
[eval exp="f.krarenaikando= 0 "]
;テスト用フラグ管理ここまで

*honban
Loading......
[freeimage layer=3]
[hidemenubutton]
[eval exp="f.kyuujitu= 1 "]
[anten]
[fadeoutse time=3000]
[fadeoutbgm time=3000]

@clearfix name="role_button"
@clearfix name="kinou_button"
@clearfix name="font_button"

;料理更新呼び出し
@call storage="ryouri/ryourikousin.ks"

[message_settei_ad]


*start
*saisho
;背景変更
[if exp="f.jiyuu==12"]
[bg storage="westa_tasogare.jpg" time=50]
[else]
[bg storage="hune_senchou_tasogare.jpg" time=50]
[endif]



;ＢＧＭを鳴らす
[stopbgm]
[playbgm storage="rest_ontama.ogg"]

;恋愛感度レベルの更新
[call storage=uranai/renaikandokousin.ks]



[call storage="macro.ks" target=*start]

[irain0]
[glyph fix=false line=nextpage.gif left=500 top=500]
[irain][r]
「さて、何をしようかな？」[l]

;[if exp="f.ryourirandom>0"]
;[else]
[call storage="ryouri/ryourikousin_kousin.ks" target=*start]
;[endif]



[button graphic="button/wesuta/kyuujitu_story.png" enterimg="button/storybutton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*story x=10 y=30]



;占いのコマンド
[if exp="f.jiyuu==12"]
[button graphic="button/wesuta/kyuujitu_uranai.png" enterimg="button/uranaibutton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*uranai0 x=10 y=70]
[else]
[button graphic="button/wesuta/kyuujitu_uranai.png" enterimg="button/uranaibutton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*uranai x=10 y=70]
[endif]


;会話コマンド

[button graphic="button/wesuta/kyuujitu_kaiwa.png" enterimg="button/kaiwabutton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kaiwa x=10 y=110]


;料理のコマンド

[if exp="f.jiyuu==12"]
[button graphic="button/wesuta/kyuujitu_ryouri.png" enterimg="button/ryouributton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*ryouri0 x=10 y=150]
[else]
[button graphic="button/wesuta/kyuujitu_ryouri.png" enterimg="button/ryouributton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*ryouri x=10 y=150]
[endif]




;[button graphic="button/kaisoubutton_pakutaso.png" enterimg="button/kaisoubutton2_pakutaso.jpg" clickse="tm2_;switch001_macchi.ogg" target=*kaisou x=10 y=190]


[button graphic="button/wesuta/kyuujitu_kiroku.png" enterimg="button/kirokubutton2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kiroku x=10 y=190]



[s]


*story
;メッセージ画面の表示
[message_settei]
[freeimage layer=0]
[eval exp="f.kyuujitu= 0 "]
[cm]
[stopbgm]
[bg storage="black.png"]
[cm]



[message_settei]
[episode_hyouji_only]
@clearstack
;ダミージャンプとコンフィグ、ダミースキップ
[image layer=3 page=fore visible=true storage="config_s_off.png" x=278 y=3]

;ログ
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[if exp="f.wait==1"][button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3][else][button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3][endif]




[if exp="f.jiyuu== 1 "]
;自由行動番号フラグをリセット、自由行動９のみ次１０のためフラグ入力、

[eval exp="sf.jiyuu= 1 "]
[jump storage="episode/epi1.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 2 "]

[eval exp="sf.jiyuu= 2 "]
[jump storage="episode/epi3.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 3 "]

[eval exp="sf.jiyuu= 3 "]
[jump storage="episode/epi4.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 4 "]

[eval exp="sf.jiyuu= 4 "]
[jump storage="episode/epi5.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 5 "]

[eval exp="sf.jiyuu= 5 "]
[jump storage="episode/epi5.ks" target=*after_jiyuu1]
[elsif exp="f.jiyuu== 6 "]

[eval exp="sf.jiyuu= 6 "]
[jump storage="episode/epi7.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 7 "]

[eval exp="sf.jiyuu= 7 "]
[jump storage="episode/epi10.ks" target=*after_jiyuu]
[elsif exp="f.jiyuu== 8 "]

[eval exp="sf.jiyuu= 8 "]
[jump storage="episode/epi11.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu== 9.5 "]
[eval exp="sf.jiyuu= 9.5 "]
[eval exp="f.jiyuu= 10 "]
[eval exp="f.choice= 117 "]
[jump storage="episode/epi13a.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu== 9 "]
[eval exp="sf.jiyuu= 9 "]
[eval exp="f.jiyuu= 10 "]
[eval exp="f.choice= 117 "]
[jump storage="episode/epi13b.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu== 10 "]
[eval exp="sf.jiyuu= 10 "]

[jump storage="episode/epi14.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu==11"]
[eval exp="sf.jiyuu=11"]
[eval exp="f.jiyuu=0"]

[jump storage="episode/w_epi1.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu==12"]
[eval exp="sf.jiyuu=12"]
[eval exp="f.jiyuu=0"]

[jump storage="episode/w_epi2.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu==13"]
[eval exp="sf.jiyuu=13"]
[eval exp="f.jiyuu=0"]

[jump storage="episode/w_epi3.ks" target=*after_jiyuu]

[elsif exp="f.jiyuu==14"]

[eval exp="sf.jiyuu=14"]
[eval exp="f.jiyuu=15"]
[krahantei]
[jump storage="episode/w_epi3.ks" target=*after_jiyuu1]

[elsif exp="f.jiyuu==15"]

[eval exp="sf.jiyuu=15"]
[eval exp="f.jiyuu=0"]


;共通部分選択肢終わりのため、好感度判定
[krahantei]
[jump target=*koukando_hantei]
[else]
[endif]

*koukando_hantei

[if exp="sf.w_kraend==1"]
[eval exp="f.choice=444"]
[elsif exp="f.krakettei==1"]
[eval exp="f.choice=125"]
[elsif exp="f.lionkonkando>=f.ranskonkando"]
[eval exp="f.choice=128"]
[else]
[eval exp="f.choice=131"]
[endif]
[jump storage="episode/w_epi3.ks" target=*after_jiyuu2]







;ストーリー進行フラグ取得のちif分岐でそれぞれのファイル、ラベルに飛ぶ（必要なし）

*uranai0
[cm]
[irain][r]
「今はできないよね・・」[l]
[cm]
@jump target=*saisho

*uranai
[freeimage layer=0]
@jump storage="uranai/uranai_w.ks"

*kaiwa
[if exp="f.kaiwa==0"]
[cm]
[irain][r]
「他にやることもあるし・・・[r]
　今日はもうこのへんにしておこうかな」[l]
[cm]
[jump target="*saisho"]


[else]

@jump storage="kaiwa/kaiwa_w.ks"

[endif]

*ryouri0
[cm]
[irain][r]
「今は、ちょっとできないみたい・・・」[l]
[cm]
[jump target="*saisho"]

*ryouri
[if exp="f.ryouri==0"]

[cm]
[irain][r]
「あんまり厨房を占領するのも迷惑だし・・・[r]
　今日はもうやめておこう」[l]
[cm]
[jump target="*saisho"]

[else]

@jump storage="ryouri/ryouri_w.ks"

[endif]

*kaisou
[freeimage layer=0]
[stopbgm]
[layopt layer=message1 visible=false]
[jump storage="episode_k/memory.ks"]


*kiroku
@clearstack
[cm]
[if exp="f.jiyuu==1"]
第１章　自由行動１
[elsif exp="f.jiyuu==2"]
第２章　自由行動２
[elsif exp="f.jiyuu==3"]
第３章　自由行動３
[elsif exp="f.jiyuu==4"]
第４章　自由行動４
[elsif exp="f.jiyuu==5"]
第５章　自由行動５
[elsif exp="f.jiyuu==6"]
第６章　自由行動６
[elsif exp="f.jiyuu==7"]
第９章　自由行動７
[elsif exp="f.jiyuu==8"]
第１０章　自由行動８
[elsif exp="f.jiyuu==9||f.jiyuu==9.5"]
第１２章　自由行動９
[elsif exp="f.jiyuu==10"]
第１３章　自由行動１０
[elsif exp="f.jiyuu==11"]
[r]
後編　ウェスタ　第１章　自由行動１
[elsif exp="f.jiyuu==12"]
[r]
後編　ウェスタ　第１章　自由行動２
[elsif exp="f.jiyuu==13"]
[r]
後編　ウェスタ　第１章　自由行動３
[elsif exp="f.jiyuu==14"]
[r]
後編　ウェスタ　第２章　自由行動１
[elsif exp="f.jiyuu==15"]
[r]後編　ウェスタ　第２章　自由行動２
[else]
[endif]
[button name="role_button" role="save" graphic="button/wesuta/kyuujitu_save.png" x=300 y=50] 
[button name="role_button" role="load" graphic="button/wesuta/kyuujitu_load.png" x=300 y=100] 
[button graphic="button/wesuta/kyuujitu_title.png" clickse="tm2_switch001_macchi.ogg" target=*title x=300 y=150]
[button name="role_button" role="sleepgame" fix="true" graphic="button/wesuta/kyuujitu_config.png" storage=config1.ks x=300 y=200]
[button graphic="button/wesuta/kyuujitu_modoru_small.png" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=260][s]

*title
@clearfix name="role_button"
[cm]
[irain][r]
「タイトルに戻る？」
[button graphic="button/ok.jpg" clickse="tm2_switch001_macchi.ogg" target=*title_ok x=250 y=110]
[button graphic="button/ng.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=250 y=170][s]


*title_ok
[stopbgm]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
@layopt layer=message1 visible=false

@clearfix name="kinou_button"
@clearfix name="role_button"
[cm]
[iscript]
location.reload()
[endscript]


*config
[cm]
[jump storage="config1.ks"]

*modoru
@clearfix name="role_button"
[cm]
 [jump target="*saisho"]
[s]
