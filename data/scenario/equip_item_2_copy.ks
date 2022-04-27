*equip_item_2
[clearstack]
[if exp="tf.equip_item_current_1_click==1"]
[eval exp="tf.equip_item_change_1=1"]
[elsif exp="tf.equip_item_current_2_click==1"]
[eval exp="tf.equip_item_change_2=1"]
[endif]


;ブッキング防止
[if exp="tf.equip_item_1==1"]
;ただの２回なら消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_1=0"]


[endif]



[if exp="tf.equip_item_2==2&&tf.equip_item_current_1_click==1"]
;----------------------------------------------------------------------------------
;2クリック,なおかつ装備欄をクリックしていれば装備変更
[jump target=*equip_change]

[endif]

[if exp="tf.equip_item_current_2_click==1&&tf.equip_item_2==2"]
;2クリック,なおかつ装備欄をクリックしていれば装備変更2
[jump target=*equip_change2]
[endif]


[if exp="tf.equip_item_2==2"]
;ただの２回なら消去
[free name="key" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_2=0"]
[jump storage="status_macro.ks" target=*equip_button_return]
[endif]

;-----------------------------------------------------------------------------------------

[if exp="tf.equip_item_2==1&&tf.equip_item_hyouji_2==1&&tf.equip_item_current_1_click==1"]
;装備欄とアイテム欄１回ずつでアップステータス数値表示
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.equip_1_key_x y=&tf.equip_2_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
;アイテム説明
[ptext layer=2 page=fore text=&tf.equip_item_explain_2 face=antique name="item_suuti_2" size=20 x=450 y=520]

[skill_calc_hyouji_2_current_1]
[jump storage="status_macro.ks" target=*equip_button_return]

;装備欄２とアイテム欄１回ずつクリックの場合
[elsif exp="tf.equip_item_2==1&&tf.equip_item_hyouji_2==1&&tf.equip_item_current_2_click==1"]
;-----------
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.equip_1_key_x y=&tf.equip_2_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
;アイテム説明
[ptext layer=2 page=fore text=&tf.equip_item_explain_2 face=antique name="item_suuti_2" size=20 x=450 y=520]

[skill_calc_hyouji_2_current_2]
[jump storage="status_macro.ks" target=*equip_button_return]
;------






;アイテム欄だけのクリックの場合、アイテム説明を表示
[elsif exp="tf.equip_item_2==1&&tf.equip_item_hyouji_1==1"]

*only_explain
;------
[ptext layer=2 page=fore text=&tf.equip_item_explain_2 face=antique name="item_suuti_2" size=20 x=450 y=520]

[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.equip_1_key_x y=&tf.equip_2_key_y]

;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.equip_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.equip_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.equip_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.equip_item_5>0"]
[free name="item_suuti_5" layer=2]
[endif]
;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]

[jump storage="status_macro.ks" target=*equip_button_return]


[endif]



[jump storage="status_macro.ks" target=*item_shokika]








;装備変更
*equip_change

;装備変更後、アイテム欄に装備１のアイテム表示のためのフラグ
[eval exp="tf.equip_item_change_1=1"]


;クリックされたのが装備１の時
[free name="item_suuti_2" layer=2]
;------------------------------------------------------------------------
;装備１がなんのアイテムか番号でチェック

[if exp="f.equip_item_current==5"]
;ティーバッグの時
;ティーバッグのアイテムを装備してないアイテムへ
[eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
;能力値変更
[equip_effect_minus_5]

[elsif exp="f.equip_item_current==4"]
;ガードルの時
[eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
;能力値変更
[equip_effect_minus_4]


[elsif exp="f.equip_item_current==3"]
;ボンテージの時
[eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
;能力値変更
[equip_effect_minus_3]


[elsif exp="f.equip_item_current==2"]
;パンティの時
[eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
;能力値変更
[equip_effect_minus_2]



[elsif exp="f.equip_item_current==1"]
;ブラジャーの時
[eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
;能力値変更
[equip_effect_minus_1]


[endif]
;--------------------------------------------------------------------------


;選択されたアイテムを一つ減らして、現在装備のフラグにアイテム番号を代入
;-------------------------------------------------------------------------
;ブラジャーの時
[if exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==1"]


[eval exp="f.equip_item_1_stock=f.equip_item_1_stock-1"]

;能力値変更
[equip_effect_plus_1]

;アイテムナンバーを入力
[eval exp="f.equip_item_current=tf.equip_item_number_no_2"]


;パンティの時
[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==2"]


[eval exp="f.equip_item_2_stock=f.equip_item_2_stock-1"]
;能力値変更
[equip_effect_plus_2]

;アイテムナンバーを入力
[eval exp="f.equip_item_current=tf.equip_item_number_no_2"]

;ボンテージの時
[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==3"]

[eval exp="f.equip_item_3_stock=f.equip_item_3_stock-1"]
;能力値変更
[equip_effect_plus_3]

;アイテムナンバーを入力
[eval exp="f.equip_item_current=tf.equip_item_number_no_2"]



[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==4"]
;ガードルの時

[eval exp="f.equip_item_4_stock=f.equip_item_4_stock-1"]
;能力値変更
[equip_effect_plus_4]

;アイテムナンバーを入力
[eval exp="f.equip_item_current=tf.equip_item_number_no_2"]


[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==5"]
;ティーバックの時
[eval exp="f.equip_item_5_stock=f.equip_item_5_stock-1"]
;能力値変更
[equip_effect_plus_5]

;アイテムナンバーを入力
[eval exp="f.equip_item_current=tf.equip_item_number_no_2"]

[endif]
;-----------------------------------------------------------------------------


;名前を変更
[free name="soubi1" layer=2]





;-------------------------------------------------------------------------
;ブラジャーを装備欄へ表示
[if exp="f.equip_item_current==1"]
[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]

[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ティーバッグを装備らんへ表示
[elsif exp="f.equip_item_current==5"]

[ptext layer=2 page=fore text=&tf.equip_item_5_name face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]

[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ガードルを装備らんへ表示
[elsif exp="f.equip_item_current==4"]

[ptext layer=2 page=fore text=&tf.equip_item_4_name face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]

[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ボンテージを装備らんへ表示
[elsif exp="f.equip_item_current==3"]

[ptext layer=2 page=fore text=&tf.equip_item_3_name face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]

[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;パンティを装備らんへ表示
[elsif exp="f.equip_item_current==2"]

[ptext layer=2 page=fore text=&tf.equip_item_2_name face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]

[irain_kousin]
[live2d_delete_all]
[live2d_irain_style_change]
[jump storage="status_macro.ks" target=*item_shokika]



[endif]
;------------------------------------------------------------------------






;-----------------------------------------------------------------------------------------





;装備変更
*equip_change2


;装備変更後、アイテム欄に装備2のアイテム表示のためのフラグ
[eval exp="tf.equip_item_change_2=1"]


;クリックされたのが装備2の時
[free name="item_suuti_2" layer=2]
;------------------------------------------------------------------------
;装備2がなんのアイテムか番号でチェック

[if exp="f.equip_item_current_2==5"]
;ティーバッグの時
;ティーバッグのアイテムを装備してないアイテムへ
[eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
;能力値変更
[equip_effect_minus_5]


[elsif exp="f.equip_item_current_2==4"]
;ガードルの時
[eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
;能力値変更
[equip_effect_minus_4]



[elsif exp="f.equip_item_current_2==3"]
;ボンテージの時
[eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
;能力値変更
[equip_effect_minus_3]


[elsif exp="f.equip_item_current_2==2"]
;パンティの時
[eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
;能力値変更
[equip_effect_minus_2]



[elsif exp="f.equip_item_current_2==1"]
;ブラジャーの時
[eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
;能力値変更
[equip_effect_minus_1]


[endif]
;--------------------------------------------------------------------------


;選択されたアイテムを一つ減らして、現在装備のフラグにアイテム番号を代入
;-------------------------------------------------------------------------
;ブラジャーの時
[if exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==1"]


[eval exp="f.equip_item_2_stock=f.equip_item_1_stock-1"]
;能力値変更
[equip_effect_plus_1]

;アイテムナンバーを入力
[eval exp="f.equip_item_current_2=tf.equip_item_number_no_2"]


;パンティの時
[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==2"]


[eval exp="f.equip_item_2_stock=f.equip_item_2_stock-1"]
;能力値変更
[equip_effect_plus_2]
;アイテムナンバーを入力
[eval exp="f.equip_item_current_2=tf.equip_item_number_no_2"]

;ボンテージの時
[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==3"]

[eval exp="f.equip_item_3_stock=f.equip_item_3_stock-1"]
;能力値変更
[equip_effect_plus_3]
;アイテムナンバーを入力
[eval exp="f.equip_item_current_2=tf.equip_item_number_no_2"]



[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==4"]
;ガードルの時

[eval exp="f.equip_item_4_stock=f.equip_item_4_stock-1"]
;能力値変更
[equip_effect_plus_4]
;アイテムナンバーを入力
[eval exp="f.equip_item_current_2=tf.equip_item_number_no_2"]


[elsif exp="tf.equip_item_hyouji_2==1&&tf.equip_item_number_no_2==5"]
;ティーバックの時
[eval exp="f.equip_item_5_stock=f.equip_item_5_stock-1"]
;能力値変更
[equip_effect_plus_5]
;アイテムナンバーを入力
[eval exp="f.equip_item_current_2=tf.equip_item_number_no_2"]

[endif]
;-----------------------------------------------------------------------------

;名前を変更
[free name="soubi2" layer=2]





;-------------------------------------------------------------------------
;ブラジャーを装備欄へ表示
[if exp="f.equip_item_current_2==1"]
[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ティーバッグを装備らんへ表示
[elsif exp="f.equip_item_current_2==5"]

[ptext layer=2 page=fore text=&tf.equip_item_5_name face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ガードルを装備らんへ表示
[elsif exp="f.equip_item_current_2==4"]

[ptext layer=2 page=fore text=&tf.equip_item_4_name face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;ボンテージを装備らんへ表示
[elsif exp="f.equip_item_current_2==3"]

[ptext layer=2 page=fore text=&tf.equip_item_3_name face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]


;パンティを装備らんへ表示
[elsif exp="f.equip_item_current_2==2"]

[ptext layer=2 page=fore text=&tf.equip_item_2_name face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
[free name="key" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[irain_kousin]
[live2d_delete_all]
[live2d_irain_style]
[jump storage="status_macro.ks" target=*item_shokika]



[endif]
;---------------------------------------------------------------------









