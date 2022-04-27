

;一番最初に呼び出されるファイル
;強制終了によるエラー対処用



[eval exp="sf.config=0"]
[eval exp="sf.game_current=0"]
[eval exp="sf.system_awake=0"]
[eval exp="sf.tougijou=0"]
[eval exp="sf.return=0"]
;[eval exp="sf.load=0"]
[eval exp="sf.return_hanyou=0"]
[eval exp="sf.hanyou=0"]
[eval exp="sf.chokki=0"]
[iscript]
tyrano.plugin.kag.variable.sf.hogehoge =  "./index.html";
[endscript]


;最初のロード画面から戻った時は読み込みなし
;[if exp="sf.new==1&&sf.back==2"]
;[eval exp="sf.back=0"];
;@jump storage="title.ks" target=*title_hyouji
;[endif]

*first
[if exp="sf.load==1"]
[eval exp="sf.load=0"]
[iscript]
location.reload();
[endscript]

[endif]


*start


[title name="Diva_love_ver"]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
[call storage="tyrano.ks"]
 









;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
[loadcss file="./data/others/font.css" ]
[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
;ティラノスクリプト　ブースターパック




;メニューボタン非表示
[hidemenubutton]


;ゲームに必要なライブラリ読み込み
[call storage="tyrano.ks"]
;[call storage="key_mouse/key_mouse.ks"]


;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
[eval exp="f.ranskonkando= 0 "]
[eval exp="f.lionkonkando= 0 "]
[eval exp="f.krakonkando= 0 "]
[eval exp="f.vankonkando= 0 "]
[eval exp="f.ransrenaikando= 0 "]
[eval exp="f.lionrenaikando= 0 "]
[eval exp="f.krarenaikando= 0 "]
[eval exp="f.choice= 1 "]
[eval exp="f.jiyuu=0"]

[eval exp="f.gyousuu=0"]



*start




[glink target=*test_2 text="（タイトルへ）" size=17 width=600 x=65 y=260]
[glink target=*test_3 text="（ゲームデータ事前読み込み）" size=17 width=600 x=65 y=320]
[glink target=*test_4 text="（テスト）" size=17 width=600 x=65 y=380]

[s]

;テスト
*test_4
[jump storage="scenario_2/test_erumu.ks"]

*test_2

[cm]
[playse storage="tm2_switch001_macchi.ogg"]


;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
;タイトル画面へ移動
@jump storage="title.ks"



*test_3
 [layopt layer=3 visible=true]
; [if exp="sf.data_kanryo==1"]
;[jump target=*title_hyouji]
;[endif]
[eval exp="tf.value=0"]

[ptext layer=3 page=fore visible="true" text="データを読み込んでいます・・・" size=30 name="data" x=200 y=200]
[image layer=3 page=fore storage="loader.gif" name="data" x=150 y=250]

[call storage="scenario_2/title_2.ks"]


[loadjs storage="diva_data_yomikomi.js"]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_dai.png" x=350 y=350]
[preload storage="data/others/hannari.ttf"]
[preload storage="data/others/Mamelon.ttf"]
[preload storage="data/others/mgenplus-1m-bold.ttf"]
[preload storage="data/others/font_1_ant-maru.woff"]

[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_0.png" x=350 y=350]
[preload storage=&f.diva_data]

[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_1.png" x=350 y=350]

[ptext layer=3 page=fore visible="true" text="画像素材読み込み完了" size=15 name="gauge_word" x=200 y=280]
[wait time=300]

[free name="gauge_word" layer=3]
[ptext layer=3 page=fore visible="true" text="音素材読み込み中" size=15 name="gauge_word" x=200 y=280]

[preload storage=&f.diva_data_2]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_2.png" x=350 y=350]

[free name="gauge_word" layer=3]
[ptext layer=3 page=fore visible="true" text="音素材読み込み完了" size=15 name="gauge_word" x=200 y=280]
[wait time=300]
[playse storage="load_complete.ogg"]
[wait time=900]
[free name="gauge" layer=2]
[free name="gauge" layer=3]
[free name="gauge_word" layer=3]

;fgimage



[free name="data" layer=3]
[ptext layer=3 visible=true page=fore face=antique text="読み込み完了" size=30 name="data" x=200 y=200]
[wait time=600]
[free name="data" layer=3]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


