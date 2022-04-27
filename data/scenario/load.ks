
*menu

[hidemenubutton]

[clearfix]
[clearstack]
[iscript]
$(".layer_free").css("pointer-events","none");
[endscript]
[image layer=3 page=fore name="loader" visible=true storage="loader.gif" x=10 y=10]
 [wait time=2000]
[free name="loader" layer=3]
[hidemenubutton]
[hidemenu]
[cm]
[glink target=*load  text="ロード" size=13 width="50" x=10 y=10]
[glink target="awake" text="戻る" size=13 width="50" x=118 y=10]
[iscript]
$(".layer_free").css("pointer-events","auto");
[endscript]
[s]







*load
[cm]
[clearfix]
[clearstack]
[eval exp="sf.game_current=2"]
[iscript]
 TG.kag.backRitle();
[endscript]

*reload
[iscript]
 TG.kag.backRitle();
[endscript]
[s]

*awake
[cm]
[clearfix]
[clearstack]
[eval exp="sf.system_awake=1"]
[iscript]
 TG.kag.backRitle();
[endscript]
[s]



;-------------------------------------------



*return
[return]

[s]
[button fix="true" role="save" target=*save graphic=button/save_button.png x=0 y=10]
[button fix="true" target=*load graphic=button/load_button.png x=70 y=10]
[button fix="true" target=*title graphic=button/title_return.png x=140 y=10]
[button fix="true" target=*awake graphic=button/button_menu.png x=750 y=10]

[s]
*save
[clearfix]
[clearstack]
[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]
[showsave]
[eval exp="sf.save_system=1"]
;[iscript]
;location.reload()
;[endscript]
;[s]

*title
[clearfix]
[clearstack]
[eval exp="sf.save_system=0"]
[eval exp="sf.game_current=0"]
[iscript]
location.reload()
[endscript]
[s]


[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]
[eval exp="sf.system_awake=1"]
[clearfix]
[clearstack]
[iscript]
location.reload()
[endscript]
[s]


