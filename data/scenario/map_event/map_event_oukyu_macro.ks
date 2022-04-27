

;王宮
[macro name="map_event_oukyu_macro"]

[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]

;[elsif exp=""]
;[elsif exp=""]

;[elsif exp=""]


[else]

[if exp="f.irain_move==0"]
[bg storage="oukyuu_yuu_tasogare.jpg"]
[else]
[bg storage="oukyuu_tasogare.jpg"]
[endif]

[message_settei_ad]
#&f.name
「王宮へはまだ行けないよ」[p]
#
*map
[message_kakusu_ad]
[creru_outo_map]

[endif]

[endmacro]




[return]
