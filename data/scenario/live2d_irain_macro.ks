;イレイン


;表示
[macro name="live2d_irain_hyouji"]


[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
[live2d_mod name="irain" idle="Idle_tuyoki" no=0]

[if exp="f.tougijou==1"]
[image layer=2 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]

[else]
[image layer=3 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]
[endif]

[live2d_show name="irain" y=-0.5 x=0.5 scale=0.7]
[w]

;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]

[elsif exp="f.equip_item_current==3"]
;いつものおさげ
[elsif exp="f.equip_item_current==4"]
;ツインウェーブ
[live2d_motion name="irain" mtn="Normal_wave"]

[elsif exp="f.equip_item_current==5"]


[endif]


;装備
[if exp="f.equip_item_current_2==1"]
;革の服
[elsif exp="f.equip_item_current_2==2"]
;ワンピース
[live2d_motion name="irain" mtn="Normal_one_piece"]

[elsif exp="f.equip_item_current_3==3"]

[elsif exp="f.equip_item_current_4==4"]

[elsif exp="f.equip_item_current_5==5"]

[endif]


[endmacro]

;------------------------

[macro name="live2d_irain_hyouji_end"]


[wait time=2500]
[if exp="f.tougijou==1"]
[free name="back_siro" layer=2 time=1000]
[else]
[free name="back_siro" layer=3 time=1000]
[endif]
[endmacro]


;-----------------------------



;装備欄用表示
[macro name="live2d_irain_style"]

[clearfix]
[image layer=3 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]
[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]

[live2d_mod name="irain" idle="Idle_tuyoki" no=0]
[live2d_show name="irain" y=-0.5 x=-0.15 scale=0.5][w]
;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]

[elsif exp="f.equip_item_current==3"]
;いつものおさげ
[elsif exp="f.equip_item_current==4"]
;ツインウェーブ
[live2d_motion name="irain" mtn="Normal_wave"]



[elsif exp="f.equip_item_current==5"]

[endif]

;装備
[if exp="f.equip_item_current_2==1"]
;革の服
[elsif exp="f.equip_item_current_2==2"]
;ワンピース
[live2d_motion name="irain" mtn="Normal_one_piece"]

[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]


[wait time=1000]
[free name="back_siro" layer=3 time=1000]
[button graphic="soubi_ok.png" clickse="tm2_switch001_macchi.ogg" fix=true name="change_button" target=*equip_ok x=210 y=293]


[endmacro]




[macro name="live2d_irain_style_change"]

[clearfix]
[image layer=3 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]
[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]

[live2d_mod name="irain" idle="Idle_tuyoki" no=0]
[live2d_show name="irain" y=-0.5 x=-0.15 scale=0.5][w]
;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]

[elsif exp="f.equip_item_current==3"]
;いつものおさげ
[elsif exp="f.equip_item_current==4"]
;ツインウェーブ
[live2d_motion name="irain" mtn="Normal_wave"]



[elsif exp="f.equip_item_current==5"]

[endif]

;装備
[if exp="f.equip_item_current_2==1"]
;革の服
[elsif exp="f.equip_item_current_2==2"]
;ワンピース
[live2d_motion name="irain" mtn="Normal_one_piece"]

[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]


[wait time=1000]
[free name="back_siro" layer=3 time=1000]
[button graphic="soubi_ok.png" clickse="tm2_switch001_macchi.ogg" fix=true name="change_button" target=*equip_ok x=210 y=293]


[endmacro]


;----------------------------

[macro name="live2d_irain_command"]

[live2d_load][w]
[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
[w]
[live2d_load_off]
[live2d_mod name="irain" idle="Idle_tuyoki" no=0]


[live2d_show name="irain" y=0.0 x=0.0 scale=0.7]
[w]

;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]

[elsif exp="f.equip_item_current==3"]
;いつものおさげ
[elsif exp="f.equip_item_current==4"]
;ツインウェーブ
[live2d_motion name="irain" mtn="Normal_wave"]

[elsif exp="f.equip_item_current==5"]


[endif]


;装備
[if exp="f.equip_item_current_2==1"]
;革の服
[elsif exp="f.equip_item_current_2==2"]
;ワンピース
[live2d_motion name="irain" mtn="Normal_one_piece"]

[elsif exp="f.equip_item_current_3==3"]

[elsif exp="f.equip_item_current_4==4"]

[elsif exp="f.equip_item_current_5==5"]

[endif]



[endmacro]



[return]