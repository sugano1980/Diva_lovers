;=========================================
; 回想モード　画面作成
;=========================================
*start

@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]


[back storage="kaigan_ac.png" time=100]
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="回想モード" x=20 y=20 size=26 color=0xA8401C visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[cm]
[button graphic="back_title.gif" target="*backtitle" x=500 y=20 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

*cgview
@jump target=&tf.target_page
;この部分を増やせば回想を増やせるみたい・・・
*page_0
[replay_image_button name="w_rans" graphic="cat.jpg" no_graphic="noise.jpg" x=60 y=100 width=160 height=140 folder="bgimage" ]
[replay_image_button name="w_lion" graphic="toile.jpg" no_graphic="noise.jpg" x=260 y=100 width=160 height=140 folder="bgimage" ]
[replay_image_button name="w_kra" graphic="toile.jpg" no_graphic="noise.jpg" x=320 y=100 width=160 height=140 folder="bgimage" ]
[replay_image_button name="w_rans1" graphic="toile.jpg" no_graphic="noise.jpg" x=380 y=100 width=160 height=140 folder="bgimage" ]
[replay_image_button name="w_lion1" graphic="toile.jpg" no_graphic="noise.jpg" x=440 y=100 width=160 height=140 folder="bgimage" ]
[replay_image_button name="w_kra1" graphic="toile.jpg" no_graphic="noise.jpg" x=500 y=100 width=160 height=140 folder="bgimage" ]


@jump target ="*common"


*common

[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    tf.flag_replay = true;
[endscript]


@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage


