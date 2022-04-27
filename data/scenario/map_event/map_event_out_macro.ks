


;王都を出る
[macro name="map_event_out_macro"]

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
[bg storage="crerumatinaka2_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka2_tasogare.jpg"]
[endif]


[message_settei_ad]
#&f.name
「今は外に出ないほうが・・・」[p]
*map
[message_kakusu_ad]
[creru_outo_map]


[endif]







[endmacro]





[return]



