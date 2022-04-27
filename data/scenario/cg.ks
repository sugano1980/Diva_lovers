;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[bg storage="kaigan_ac.jpg" time=70]
[layopt layer=1 visible=true]
[image layer=1 page=fore storage="still.jpg" x=20 y=20 visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[cm]
[button graphic="modoru_kaisou.jpg" target="*backtitle" x=430 y=550]
[if exp="tf.page==2"]
[button graphic="mae_kaisou.png" target=*backpage x=120 y=550]

[elsif exp="tf.page>0"]
[button graphic="tugi_kaisou.png" target=*nextpage x=270 y=550]
[button graphic="mae_kaisou.png" target=*backpage x=120 y=550]
[else]
[button graphic="tugi_kaisou.png" target=*nextpage x=270 y=550]
[endif]


[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 70;
    tf.left = 30;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]



*cgview
@jump target=&tf.target_page

*page_0


[cg_image_button graphic="still/still0.png" no_graphic="noise.jpg" x=120 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still1.png" no_graphic="noise.jpg" x=270 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still2.png" no_graphic="noise.jpg" x=420 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still3.png" no_graphic="noise.jpg" x=570 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still4.png" no_graphic="noise.jpg" x=120 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still5.png" no_graphic="noise.jpg" x=270 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still6.png" no_graphic="noise.jpg" x=420 y=185 width=125 height=105 folder="bgimage" ]


[cg_image_button graphic="still/still7.png" no_graphic="noise.jpg" x=570 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still8.png" no_graphic="noise.jpg" x=120 y=300 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still9.png" no_graphic="noise.jpg" x=270 y=300 width=125 height=105 folder="bgimage" ]

[cg_image_button graphic="still/still10.png" no_graphic="noise.jpg" x=420 y=300 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still11.png" no_graphic="noise.jpg" x=570 y=300 width=125 height=105 folder="bgimage" ]



[cg_image_button graphic="still/still12.png" no_graphic="noise.jpg" x=120 y=415 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still13.png" no_graphic="noise.jpg" x=270 y=415 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still14.png" no_graphic="noise.jpg" x=420 y=415 width=125 height=105 folder="bgimage" ]

[cg_image_button graphic="still/still15.png" no_graphic="noise.jpg" x=570 y=415 width=125 height=105 folder="bgimage" ]

[s]


*page_1

[cg_image_button graphic="still/still_sub_rans3.png" no_graphic="noise.jpg" x=120 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still16.png" no_graphic="noise.jpg" x=270 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still17.png" no_graphic="noise.jpg" x=420 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still18.png" no_graphic="noise.jpg" x=570 y=70 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_rans_route1.png" no_graphic="noise.jpg" x=120 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_rans_route2.png" no_graphic="noise.jpg" x=270 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_lion_route1.png" no_graphic="noise.jpg" x=420 y=185 width=125 height=105 folder="bgimage" ]

[cg_image_button graphic="still/still_lion_route2.png" no_graphic="noise.jpg" x=570 y=185 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_lion_route3.png" no_graphic="noise.jpg" x=120 y=300 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_kra_route1.png" no_graphic="noise.jpg" x=270 y=300 width=125 height=105 folder="bgimage" ]

[cg_image_button graphic="still/still_kra_route2.png" no_graphic="noise.jpg" x=420 y=300 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_kra_route3.png" no_graphic="noise.jpg" x=570 y=300 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_kra_route4.png" no_graphic="noise.jpg" x=120 y=415 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_kra_route5.png" no_graphic="noise.jpg" x=270 y=415 width=125 height=105 folder="bgimage" ]

[cg_image_button graphic="still/still_van_last.png" no_graphic="noise.jpg" x=420 y=415 width=125 height=105 folder="bgimage" ]
[cg_image_button graphic="still/still_sub_lion1.png" no_graphic="noise.jpg" x=570 y=415 width=125 height=105 folder="bgimage" ]

[s]


*page_2
[cg_image_button graphic="rem_still_1.png" no_graphic="noise.jpg" x=120 y=70 width=125 height=105 folder="bgimage"]

[cg_image_button graphic="rem_still_2.png" no_graphic="noise.jpg" x=270 y=70 width=125 height=105 folder="bgimage"]

[s]






@jump target="*common"







*common







*endpage



[s]


*backtitle
[eval exp="tf.cg_page=0"]
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[eval exp="tf.cg_page=tf.cg_page+1"]
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[eval exp="tf.cg_page=tf.cg_page-1"]
[emb exp="tf.page--;"]
@jump target="*cgpage"






*clickcg
[cm]

[image storage=&tf.selected_cg_image folder="bgimage"  ]
[l]
[bg storage="kaigan_ac.jpg" time=10]
@jump  target=*cgpage
[s]







*no_image

@jump  target=*cgpage





;[cg_image_button graphic="still/still_kra_route1.png" no_graphic="noise.jpg" x=150 y=185 width=125 height=105; folder="bgimage" ]
;[cg_image_button graphic="still/still_kra_route2.png" no_graphic="noise.jpg" x=300 y=185 width=125 height=105; folder="bgimage" ]
;[cg_image_button graphic="still/still_kra_route3.png" no_graphic="noise.jpg" x=450 y=185 width=125 height=105 ;folder="bgimage" ]
;[cg_image_button graphic="still/still_kra_route4.png" no_graphic="noise.jpg" x=0 y=70 width=125 height=105; folder="bgimage" ]
;[cg_image_button graphic="still/still_kra_route5.png" no_graphic="noise.jpg" x=150 y=70 width=125 height=105; folder="bgimage" ]
;[cg_image_button graphic="still/still_van_last.png" no_graphic="noise.jpg" x=300 y=70 width=125 height=105 f;older="bgimage" ]

[s]


