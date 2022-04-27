*title_new



*title_hyouji
[position opacity=0]
[hidemenubutton]
[bg storage ="logo.png" time=50]
[bg storage ="divalove.png"]
@clearstack
 

*title
[title name="diva;lovers"]
[eval exp="sf.new=1"]
[eval exp="sf.game_current=0"]
  [iscript]
 TG.kag.menu.setQuickSave();
 [endscript]
 
[if exp="sf.system.autosave ==true"]
[glink target="autoload" text="自動保存データの読み込み" size=13 width="100" x=16 y=300]
[endif]
[eval exp="sf.data_kanryo=1"]
[button graphic="button/newgame.png" enterimg="button/newgame2.png" enterse="tm2_switch001_macchi.ogg" clickse="tm2_switch001_macchi.ogg" target="*newgame" x=302 y=400]
[button graphic="button/loadgame.png" enterimg="button/loadgame2.png" enterse="tm2_switch001_macchi.ogg" clickse="tm2_switch001_macchi.ogg" target=*loadgame x=302 y=430]
;[button graphic="button/recollection.png" enterimg="button/recollection2.png" enterse="tm2_switch001_macchi.ogg" clickse="tm2_switch001_macchi.ogg" target="*collection" x=302 y=460]
[button graphic="button/config.png" enterimg="button/config2.png" enterse="tm2_switch001_macchi.ogg" clickse="tm2_switch001_macchi.ogg" target="*config" x=302 y=460]

[free name="data" layer=3]

[s]


*newgame
;------シナリオの最初にジャンプする
[eval exp="sf.new=0"]

@clearfix name="config_button"
@jump storage="episode/epi0.ks"


*loadgame
[cm]

;[eval exp="sf.load_confirm=1"]
[iscript]
TG.kag.menu.displayLoad_2();
[endscript]
@jump target=*title

*collection

[cm]
@clearfix name="config_button"
[jump storage="collection0.ks"]

*config
[cm]
[jump storage="config.ks"]

[jump target=*title]

*autoload

[autoloader]

[cm]

[cm]

@clearstack
@bg storage ="title.png" time=100
@wait time = 200

*start 

[button x=166 y=304 graphic="title/button_start.gif" target="gamestart"]
[button x=166 y=408 graphic="title/button_cg.gif"  storage=cg.ks"]
[button x=166 y=507 graphic="title/button_config.gif" storage="config.ks"]
[button x=486 y=304 graphic="title/button_load.gif" role="load"]
[button x=486 y=408 graphic="title/button_replay.gif" storage="replay.ks"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"






