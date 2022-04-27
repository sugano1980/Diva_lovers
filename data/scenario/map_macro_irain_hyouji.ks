
[macro name="map_irain_hyouji"]

*live2d_hyouji

;live2d表示;
;王とクレール

[if exp="f.equip_item_current_2==1&&f.equip_item_current==3"]
;革の服といつものおさげ
[eval exp="f.place_icon='irain_icon.png'"]

[elsif exp="f.equip_item_current_2==1&&f.equip_item_current==4"]
;革の服とツインウェーブ
[eval exp="f.place_icon='irain_wave.png'"]


[elsif exp="f.equip_item_current_2==2&&f.equip_item_current==3"]
;ワンピースといつものおさげ
[eval exp="f.place_icon='irain_one_piece.png'"]

[elsif exp="f.equip_item_current_2==2&&f.equip_item_current==4"]
;ワンピースとツインウェーブ
[eval exp="f.place_icon='irain_one_piece_wave.png'"]
[else]
;革の服といつものおさげ
[eval exp="f.place_icon='irain_icon.png'"]


[endif]





[if exp="f.place_creru_sakaba==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=580 y=190]

;;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;;[live2d_show name="irain" y=0.5 x=0.56 scale=0.4]
;;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]



[elsif exp="f.place_creru_out==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=320 y=430]

;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=-0.5 x=0.0 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]

[elsif exp="f.place_creru_oukyu==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=350 y=20]


;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=0.8 x=0.0 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]


[elsif exp="f.place_creru_hunsui==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=330 y=220]


;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=0.1 x=0.0 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]

[elsif exp="f.place_creru_uradoori==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=180 y=180]


;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=0.5 x=-0.42 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]


[elsif exp="f.place_creru_honbu==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=560 y=330]

;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=-0.35 x=0.6 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]


[elsif exp="f.place_creru_gaia==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore name="icon" storage="&f.place_icon" width="80" height="95"  x=20 y=330]

;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=-0 x=-0.8 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]



[else]


[endif]

;王と周辺
[if exp="f.place_keiko==1"]
[eval exp="f.map=0"]
[image layer=3 page=fore storage="&f.place_icon" width="80" height="95"  x=300 y=200]


;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_show name="irain" y=0.5 x=0.56 scale=0.4]
;[live2d_mod name="irain" idle="Idle_tuyoki" no=0]

[elsif exp="f.place_outo==1"]

[elsif exp="f.place_sharomu==1"]

[else]

[endif]

[endmacro]

[return]
