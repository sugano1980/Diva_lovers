


;王都
[macro name="map_event_outo_macro"]
[if exp="f.irain_move<2"]
[bg storage="creru_gate_yuu_tasogare.jpg"]
[else]
[bg storage="creru_gate_tasogare.jpg"]
[endif]


[if exp="f.event_sakaba==1"]



;[elsif exp=""]

[else]




[endif]

*map

[eval exp="f.place_creru_out=1"]
[message_kakusu_ad]
[creru_outo_map]





[endmacro]





[return]



