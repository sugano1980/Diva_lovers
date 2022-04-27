
 *first_3



[hidemenubutton]
;行動画面へのリフレッシュ用
[position opacity=0]
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[layopt layer=2 visible=true]
[layopt layer=3 visible=true]


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


[iscript]
history.replaceState( "hoge", "null", "./index.html" );
[endscript]

[if exp="sf.hanyou==1"]
[eval exp="sf.hanyou=0"]
[eval exp="sf.return_hanyou=1"]
[else]
[eval exp="sf.return=1"]
[endif]
[autoloader]
[s]



[iscript]
history.replaceState( "hoge", "null", "./index.html" ) ;
[endscript]

[call storage="tyrano.ks"]


;[iscript]
;history.replaceState( "hoge", "null", "./index.html" ) ;
;[endscript]



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
[eval exp="f.battle_kaisuu=0"]

[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="cera" storage="cera0_tatie/cera0_idle_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]




;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
;タイトル画面へ移動
@jump storage="title_2.ks"

[s]
[s]


