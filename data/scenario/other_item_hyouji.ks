

;---------------------------------------------------------------
*item_other


[other_hyouji_delete]
[cm]
[clearstack]
[free name="key" layer=2]
[clearfix name="equip"]
[clearfix name="equip_cursor"]
[clearfix name="battle"]
[clearfix name="other"]
[clearfix name="other_cursor"]
[clearfix name="cook"]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item_choice_key_x y=&tf.item_choice_key_y_4]



[if exp="tf.item_battle_hyouji==1"]

[free name="battle" layer=2]
[clearfix name="battle_moji"]

[battle_hyouji_delete]

[elsif exp="tf.item_equip_hyouji==1"]

[free name="equip" layer=2]
[clearfix name="equip_moji"]

[equip_hyouji_delete]

[elsif exp="tf.item_cook_hyouji==1"]

[free name="cook" layer=2]
[clearfix name="cook_moji"]

[cook_hyouji_delete]



[endif]

[eval exp="tf.other_item_all_stock=0"]
[eval exp="tf.item_battle_hyouji=0"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_cook_hyouji=0"]
[eval exp="tf.item_other_hyouji=1"]
[eval exp="tf.equip_item_next_page=0"]

[eval exp="f.other_item_6_stock=0"]
[eval exp="f.other_item_7_stock=0"]
[eval exp="f.other_item_8_stock=0"]
[eval exp="f.other_item_9_stock=0"]
[eval exp="f.other_item_10_stock=0"]
[eval exp="f.other_item_11_stock=0"]
[eval exp="f.other_item_12_stock=0"]
[eval exp="f.other_item_13_stock=0"]
[eval exp="f.other_item_14_stock=0"]
[eval exp="f.other_item_15_stock=0"]
[eval exp="f.other_item_16_stock=0"]
[eval exp="f.other_item_17_stock=0"]
[eval exp="f.other_item_18_stock=0"]
[eval exp="f.other_item_19_stock=0"]
[eval exp="f.other_item_20_stock=0"]
[eval exp="f.other_item_21_stock=0"]
[eval exp="f.other_item_22_stock=0"]
[eval exp="f.other_item_23_stock=0"]
[eval exp="f.other_item_24_stock=0"]
[eval exp="f.other_item_25_stock=0"]
[eval exp="f.other_item_26_stock=0"]
[eval exp="f.other_item_27_stock=0"]
[eval exp="f.other_item_28_stock=0"]
[eval exp="f.other_item_29_stock=0"]
[eval exp="f.other_item_30_stock=0"]
[eval exp="f.other_item_31_stock=0"]
[eval exp="f.other_item_32_stock=0"]
[eval exp="f.other_item_33_stock=0"]
[eval exp="f.other_item_34_stock=0"]
[eval exp="tf.other_item_back_page=0"]
[eval exp="tf.other_item_next_page=0"]







;試験用アイテム入力
[eval exp="f.other_item_1_stock=f.other_item_1_stock+1"]
[eval exp="f.other_item_2_stock=f.other_item_2_stock+1"]
[eval exp="f.other_item_3_stock=f.other_item_3_stock+1"]
[eval exp="f.other_item_4_stock=f.other_item_4_stock+1"]
[eval exp="f.other_item_5_stock=f.other_item_5_stock+1"]
[eval exp="f.other_item_6_stock=f.other_item_6_stock+1"]
[eval exp="f.other_item_7_stock=f.other_item_7_stock+1"]
[eval exp="f.other_item_8_stock=f.other_item_8_stock+1"]
[eval exp="f.other_item_9_stock=f.other_item_9_stock+1"]
;試験用アイテム入力
[eval exp="f.other_item_10_stock=f.other_item_10_stock+1"]
[eval exp="f.other_item_11_stock=f.other_item_11_stock+1"]
[eval exp="f.other_item_12_stock=f.other_item_12_stock+1"]
[eval exp="f.other_item_13_stock=f.other_item_13_stock+1"]
[eval exp="f.other_item_14_stock=f.other_item_14_stock+1"]
[eval exp="f.other_item_15_stock=f.other_item_15_stock+1"]
[eval exp="f.other_item_16_stock=f.other_item_16_stock+1"]
[eval exp="f.other_item_17_stock=f.other_item_17_stock+1"]
[eval exp="f.other_item_18_stock=f.other_item_18_stock+1"]
[eval exp="f.other_item_19_stock=f.other_item_19_stock+1"]
[eval exp="f.other_item_20_stock=f.other_item_20_stock+1"]

;試験用アイテム入力
[eval exp="f.other_item_21_stock=f.other_item_21_stock+1"]
[eval exp="f.other_item_22_stock=f.other_item_22_stock+1"]
[eval exp="f.other_item_23_stock=f.other_item_23_stock+1"]
[eval exp="f.other_item_24_stock=f.other_item_24_stock+1"]
[eval exp="f.other_item_25_stock=f.other_item_25_stock+1"]
[eval exp="f.other_item_26_stock=f.other_item_26_stock+1"]
[eval exp="f.other_item_27_stock=f.other_item_27_stock+1"]
[eval exp="f.other_item_28_stock=f.other_item_28_stock+1"]
[eval exp="f.other_item_29_stock=f.other_item_29_stock+1"]

;試験用アイテム入力
[eval exp="f.other_item_30_stock=f.other_item_30_stock+1"]






*item_shokika
*item_hyouji2_trush
;アイテム表示用の変数に初期値入力
[other_number_shoki]
[eval exp="tf.other_item_all_stock=0"]

*item_hyouji2

[clearstack]
[clearfix name="other_moji" ]
[free name="other" layer=2]



;アイテム欄表じフラグ初期化

;個々のアイテムの表示フラグ（これがあると同じ名前ならまとめられる）tf.other_item_hyouji1_number

;アイテム説明表示の座標
[eval exp="tf.explain_x=430"]
[eval exp="tf.explain_y=520"]
;アイテム文字大きさ
[eval exp="tf.font_size=16"]





[eval  exp="tf.other_item_x=490"]
[eval  exp="tf.other_item_x_stock=tf.other_item_x+200"]
[eval exp="tf.other_item_x_trush=tf.other_item_x_stock+30"]
[eval exp="tf.other_item_y=80"]
[eval exp="tf.other_1_key_x=tf.other_item_x-5"]
[eval exp="tf.other_1_key_y=tf.other_item_y+3"]
[eval exp="tf.other_item_y_2=tf.other_item_y+45"]
[eval exp="tf.other_item_y_3=tf.other_item_y_2+45"]
[eval exp="tf.other_item_y_4=tf.other_item_y_3+45"]
[eval exp="tf.other_item_y_5=tf.other_item_y_4+45"]
[eval exp="tf.other_item_y_6=tf.other_item_y_5+45"]
[eval exp="tf.other_item_y_7=tf.other_item_y_6+45"]
[eval exp="tf.other_item_y_8=tf.other_item_y_7+45"]
[eval exp="tf.other_item_y_9=tf.other_item_y_8+45"]

[eval exp="tf.item1_key_x=490-5"]
[eval exp="tf.item1_key_y=tf.other_item_y+3"]
[eval exp="tf.other_item_y_trush=tf.other_item_y-10"]





[call storage="scenario_2/item_check_other.ks"]
;アイテムがない場合
[if exp="tf.other_item_all_stock==0"]
[clearfix name="other_cursor"]
[clearfix name="other"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="other" size=20 x=490 y=&tf.other_item_y_2]

[endif]

[clearstack]

[if exp="tf.other_item_next_page==0"]
[elsif exp="tf.other_item_next_page==1"]
[clearfix name="other_cursor"]

;アイテム１0より多い
[if exp="tf.other_item_all_stock>10"]
[jump storage="other_item_hyouji.ks" target=*item_hyouji_10]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]
[endif]



[elsif exp="tf.other_item_next_page==2"]
[clearfix name="other_cursor"]
[if exp="tf.other_item_all_stock>18"]
[jump storage="other_item_hyouji.ks" target=*item_hyouji_19]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]
[jump storage="other_item_hyouji.ks" target=*item_hyouji_10]
[endif]

[elsif exp="tf.other_item_next_page==3"]
[clearfix name="other_cursor"]
[if exp="tf.other_item_all_stock>27"]
[jump storage="other_item_hyouji.ks" target=*item_hyouji_28]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]
[jump storage="other_item_hyouji.ks" target=*item_hyouji_19]
[endif]

[else]
[endif]





*first_page
[clearstack]
;一番目


[if exp="tf.item_hyouji_confirm[1]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[1]=tf.other_item_no[1]+1" fix="true" storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_1_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_1_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]

;-------

[endif]



;二番目
[if exp="tf.item_hyouji_confirm[2]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[2]=tf.other_item_no[2]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_2_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_2_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]

;-------

[endif]

;さん番目


[if exp="tf.item_hyouji_confirm[3]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[3]=tf.other_item_no[3]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_3_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_3_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]

;-------

[endif]


;よん番目

[if exp="tf.item_hyouji_confirm[4]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[4]=tf.other_item_no[4]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_4_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_4_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]

;-------

[endif]


;５番目
[if exp="tf.item_hyouji_confirm[5]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[5]=tf.other_item_no[5]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_5_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_5_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]

;-------

[endif]


;６番目


[if exp="tf.item_hyouji_confirm[6]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[6]=tf.other_item_no[6]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_6_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_6_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]

;-------

[endif]


;７番目

[if exp="tf.item_hyouji_confirm[7]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[7]=tf.other_item_no[7]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_7_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_7_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]

;-------

[endif]


;８番目

;------------------------------------------------------------------------------

[if exp="tf.item_hyouji_confirm[8]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[8]=tf.other_item_no[8]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_8_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_8_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]

;-------

[endif]

;９番目

[if exp="tf.item_hyouji_confirm[9]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[9]=tf.other_item_no[9]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_9_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]

[ptext layer=2 page=fore text=&tf.other_item_hyouji_9_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]

;-------

[endif]


;---------------------------------------------------------------------------------------------------------
;次のページボタン
[if exp="f.hogetto>9"]
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="other_item_hyouji.ks" target=*other_item_next_page x=750 y=&tf.other_item_y_9]
[endif]

[if exp="tf.other_item_next_page==0"]
[s]
[endif]
;二ページ目
*other_item_next_page
[clearstack]
[if exp="tf.other_item_next_page>=1"]
[clearstack]
[cm]
[clearfix name="other"][clearfix name="other_cursor"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[free name="other" layer=2]
[clearfix name="other_moji" ]


*item_hyouji_10

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;アイテム欄10

;------------------------------------------------------------------------------





;アイテム欄10

[if exp="tf.item_hyouji_confirm[10]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[10]=tf.other_item_no[10]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_10_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_10_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄11


[if exp="tf.item_hyouji_confirm[11]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[11]=tf.other_item_no[11]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_11_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_11_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄12


[if exp="tf.item_hyouji_confirm[12]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[12]=tf.other_item_no[12]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_12_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_12_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄13




[if exp="tf.item_hyouji_confirm[13]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[13]=tf.other_item_no[13]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_13_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_13_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄14

[if exp="tf.item_hyouji_confirm[14]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[14]=tf.other_item_no[14]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_14_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_14_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6

;アイテム欄15
[if exp="tf.item_hyouji_confirm[15]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[15]=tf.other_item_no[15]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_15_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_15_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄16


[if exp="tf.item_hyouji_confirm[16]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[16]=tf.other_item_no[16]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_16_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_16_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8
;アイテム欄17


[if exp="tf.item_hyouji_confirm[17]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[17]=tf.other_item_no[17]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_17_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_17_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄18


[if exp="tf.item_hyouji_confirm[18]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[18]=tf.other_item_no[18]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_18_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_18_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------








;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="other_item_hyouji.ks" target=*other_item_back_page x=750 y=&tf.other_item_y_8]
;次ページボタン
[if exp="f.hogetto>18"]
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="other_item_hyouji.ks" target=*other_item_next_page_2 x=750 y=&tf.other_item_y_9]
[endif]

[if exp="tf.other_item_next_page==1"]
[s]
[endif]
;------------
[endif]


*other_item_back_page

[if exp="tf.other_item_next_page==0"]
[eval exp="tf.other_item_next_page=0"]
[clearstack]
[cm]
[free name="item_suuti" layer=2]
[clearfix name="other"][clearfix name="other_cursor"]
[free name="key" layer=2]
[free name="other" layer=2]
[clearfix name="other_moji" ]



[jump storage="other_item_hyouji.ks" target=*first_page]
[endif]



*other_item_next_page_2
[if exp="tf.other_item_next_page>=2"]
[clearstack]
[cm]
[free name="item_suuti" layer=2]
[clearfix name="other"][clearfix name="other_cursor"]
[free name="key" layer=2]
[free name="other" layer=2]
[clearfix name="other_moji" ]


;アイテム欄１９から２７表示


*item_hyouji_19
[clearstack]

;アイテム欄19

;------------------------------------------------------------------------------

;アイテム欄19

[if exp="tf.item_hyouji_confirm[19]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[19]=tf.other_item_no[19]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_19_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_19_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄20

[if exp="tf.item_hyouji_confirm[20]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[20]=tf.other_item_no[20]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_20_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_20_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄21


[if exp="tf.item_hyouji_confirm[21]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[21]=tf.other_item_no[21]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_21_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_21_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄22


[if exp="tf.item_hyouji_confirm[22]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[22]=tf.other_item_no[22]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_22_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_22_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄23



[if exp="tf.item_hyouji_confirm[23]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[23]=tf.other_item_no[23]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_23_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_23_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄24

[if exp="tf.item_hyouji_confirm[24]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[24]=tf.other_item_no[24]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_24_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_24_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7

;アイテム欄25


[if exp="tf.item_hyouji_confirm[25]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[25]=tf.other_item_no[25]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_25_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_25_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8

;アイテム欄26

[if exp="tf.item_hyouji_confirm[26]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[26]=tf.other_item_no[26]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_26_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_26_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄27


[if exp="tf.item_hyouji_confirm[27]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[27]=tf.other_item_no[27]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_27_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_27_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------




;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="other_item_hyouji.ks"  target=*other_item_back_page_2 x=750 y=&tf.other_item_y_8]

[if exp="f.hogetto>27"]
;次ページボタン
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="other_item_hyouji.ks" target=*other_item_next_page_3 x=750 y=&tf.other_item_y_9]
[endif]

[if exp="tf.other_item_next_page==2"]
[s]
[endif]

[endif]

*other_item_back_page_2 

[if exp="tf.other_item_next_page==1"]
[clearstack]

[cm]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="item_suuti" layer=2]
[clearfix name="other" ][clearfix name="other_cursor" ]
[clearfix name="other_moji" ]


;10からの表示へ
[jump storage="other_item_hyouji.ks" target=*item_hyouji_10]
[endif]

*other_item_next_page_3 

[if exp="tf.other_item_next_page==3"]
[clearstack]

[cm]
[free name="item_suuti" layer=2]
[free name="key" layer=2]
[free name="other" layer=2]
[clearfix name="other" ][clearfix name="other_cursor" ]
[clearfix name="other_moji" ]


;28から36まで表示
*item_hyouji_28

[clearstack]
;アイテム欄28

;------------------------------------------------------------------------------
;アイテム欄29
;------------------------------------------------------------------------------

;1

;アイテム欄28

[if exp="tf.item_hyouji_confirm[28]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[28]=tf.other_item_no[28]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_28_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_28_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2


;アイテム欄29

[if exp="tf.item_hyouji_confirm[29]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[29]=tf.other_item_no[29]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_29_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_29_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3


;アイテム欄30

[if exp="tf.item_hyouji_confirm[30]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[30]=tf.other_item_no[30]+1" fix="true"  storage="other_item_1_hyouji.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_30_name face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_hyouji_30_stock face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------





;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="other_item_hyouji.ks" target=*other_item_back_page_3 x=750 y=&tf.other_item_y_8]

[if exp="tf.other_item_next_page==3"]
[s]
[endif]

[endif]


*other_item_back_page_3 

[if exp="tf.other_item_next_page==2"]


[cm]
[free name="item_suuti" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[clearfix name="other" ][clearfix name="other_cursor"]
[clearfix name="other_moji" ]

;19からの表示へ
[jump storage="other_item_hyouji.ks" target=*item_hyouji_19]
[endif]
*hyouji_end
[s]

*process_end
*other_process_end


[free name="battle_hyouji_moji" layer=2]
[free name="equip_hyouji_moji" layer=2]
[free name="other_hyouji_moji" layer=2]
[free name="cook_hyouji_moji" layer=2]


[clearfix name="battle_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]

[jump storage="item_hyouji_macro.ks" target=*first]

