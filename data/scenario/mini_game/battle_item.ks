*item_hyouji






[iscript]

tf.battle_item_1_name = this.kag.stat.f["battle_item_list"][1].name;
tf.item_file_no_1 = this.kag.stat.f["battle_item_list"][1].storage;
tf.item_explain_no_1 = this.kag.stat.f["battle_item_list"][1].explain;

tf.battle_item_2_name = this.kag.stat.f["battle_item_list"][2].name;
tf.item_file_no_2 = this.kag.stat.f["battle_item_list"][2].storage;
tf.item_explain_no_2 = this.kag.stat.f["battle_item_list"][2].explain;

tf.battle_item_3_name =this.kag.stat.f["battle_item_list"][3].name;
tf.item_file_no_3 = this.kag.stat.f["battle_item_list"][3].storage;
tf.item_explain_no_3 = this.kag.stat.f["battle_item_list"][3].explain;

tf.battle_item_4_name = this.kag.stat.f["battle_item_list"][4].name;
tf.item_file_no_4 = this.kag.stat.f["battle_item_list"][4].storage;
tf.item_explain_no_4 = this.kag.stat.f["battle_item_list"][4].explain;

tf.battle_item_5_name = this.kag.stat.f["battle_item_list"][5].name;
tf.item_file_no_5 = this.kag.stat.f["battle_item_list"][5].storage;
tf.item_explain_no_5 = this.kag.stat.f["battle_item_list"][5].explain;

tf.battle_item_6_name = this.kag.stat.f["battle_item_list"][6].name;
tf.item_file_no_6 = this.kag.stat.f["battle_item_list"][6].storage;
tf.item_explain_no_6 = this.kag.stat.f["battle_item_list"][6].explain;



[endscript]



;アイテム表示用の変数に初期値入力
[eval exp="tf.battle_item_hyouji_1_number=0"]
[eval exp="tf.battle_item_hyouji_2_number=0"]
[eval exp="tf.battle_item_hyouji_3_number=0"]
[eval exp="tf.battle_item_hyouji_4_number=0"]
[eval exp="tf.battle_item_hyouji_5_number=0"]
[eval exp="tf.battle_item_hyouji_6_number=0"]






;ステータス画面を移動、代わりにアイテム用画面を表示
[item_window_open]
;[anim layer="message1" left="+=800" time=100] 
;[wa]
[image layer=2 page=fore visible=true storage="message_sample2.png" name="item_window" x=100 y=380]

;他のボタンを消去
[clearfix name="escape"]
[free layer=2 name="escape"]
[free layer=3 name="escape"]
[clearfix name="guard"]
[free layer=2 name="guard"]
[free layer=3 name="guard"]
[item_idou]



;カーソルの大きさとアイテム画面の大きさ（カーソルなど要素の表示座標計算に必要）を代入
[eval exp="tf.cursor_width=30"]
[eval exp="tf.message_width=599"]
[eval exp="tf.message_height=148"]
[eval exp="tf.item_gamen_width=543"]
;アイテム表示のフラグ
[eval exp="tf.item_hyouji=1"]
[eval exp="tf.cursor=0"]
[eval exp="tf.cursor_down=0"]
;アイテムを表示する座標を代入
[eval exp="tf.place_0_x=tf.message_left+tf.message_left*1.5"]
[eval exp="tf.place_0_y=400"]
[eval exp="tf.place_1_x=tf.message_left+tf.message_left*1.5"]
[eval exp="tf.place_1_y=tf.place_0_y+40"]
[eval exp="tf.place_2_x=tf.message_left+tf.message_left*1.5"]
[eval exp="tf.place_2_y=tf.place_1_y+40"]
[eval exp="tf.place_3_x=tf.message_left+tf.message_left*1.5"]
[eval exp="tf.place_3_y=tf.place_2_y+40"]


;cursorカーソルの横が３０なので真ん中に表示させるためこの計算、それにカーソルの横幅をマイナス
[eval exp="tf.cursor_x=tf.message_width/2+tf.message_left-tf.cursor_width/2"]
;カーソルはメッセージウィンドウの真ん中に表示させる。マイナス１０は調整
[eval exp="tf.cursor_y=tf.message_top+tf.message_height-10"]




;戻るボタンの表示
;位置は右側モンスターX座標、メッセージ画面の下方位置Y座標

;右側モンスターがいなかったときのためにもう一度計算
[eval exp="tf.x_4bunno3=tf.x_4_n*3-64"]

[eval exp="tf.modoru_y=tf.message_top+tf.message_height"]
[button graphic="button/menu_button_modoru.jpg" name="modoru" fix=true storage="scenario_2/mini_game/battle.ks" exp="tf.item_hyouji=0" target=*guard_escape_return_item x=&tf.x_4bunno3 y=&tf.modoru_y]
;[button graphic="&tf.monster_graphic_1" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]


;アイテムボタンを押したときの変数、exp=１でアイテム説明、２でアイテム効果
[eval exp="tf.explain_no_1=0"]
[eval exp="tf.explain_no_2=0"]
[eval exp="tf.explain_no_3=0"]
[eval exp="tf.explain_no_4=0"]
[eval exp="tf.explain_no_5=0"]
[eval exp="tf.explain_no_6=0"]

;アイテム表示の座標
[eval exp="tf.place_0_item_x=tf.place_0_x"]
[eval exp="tf.place_0_item_y=tf.place_0_y-5"]
[eval exp="tf.place_0_item_number_x=tf.place_0_item_x+250"]
[eval exp="tf.place_0_item_kosuu_x=tf.place_0_item_number_x+30"]

[eval exp="tf.place_1_item_x=tf.place_1_x"]
[eval exp="tf.place_1_item_y=tf.place_1_y-5"]
[eval exp="tf.place_1_item_number_x=tf.place_1_item_x+250"]
[eval exp="tf.place_1_item_kosuu_x=tf.place_1_item_number_x+30"]

[eval exp="tf.place_2_item_x=tf.place_2_x"]
[eval exp="tf.place_2_item_y=tf.place_2_y-5"]
[eval exp="tf.place_2_item_number_x=tf.place_2_item_x+250"]
[eval exp="tf.place_2_item_kosuu_x=tf.place_2_item_number_x+30"]

[eval exp="tf.place_3_item_x=tf.place_3_x"]
[eval exp="tf.place_3_item_y=tf.place_3_y-5"]
[eval exp="tf.place_3_item_number_x=tf.place_3_item_x+250"]
[eval exp="tf.place_3_item_kosuu_x=tf.place_3_item_number_x+30"]

[eval exp="tf.place_4_item_x=tf.place_4_x"]
[eval exp="tf.place_4_item_y=tf.place_4_y-5"]
[eval exp="tf.place_4_item_number_x=tf.place_4_item_x+250"]
[eval exp="tf.place_4_item_kosuu_x=tf.place_4_item_number_x+30"]

[eval exp="tf.place_5_item_x=tf.place_5_x"]
[eval exp="tf.place_5_item_y=tf.place_5_y-5"]
[eval exp="tf.place_5_item_number_x=tf.place_5_item_x+250"]
[eval exp="tf.place_5_item_kosuu_x=tf.place_5_item_number_x+30"]


;アイテム効果アニメーションのための座標計算
[eval exp="tf.status_height=175"]
[eval exp="tf.status_width=306"]


[eval exp="tf.anime_item_x=tf.status_x+tf.status_width/2+150"]
[eval exp="tf.anime_item_y=tf.status_y"]



*item

;





;アイテム、表示されているかいないかを確認、表示されていなければデータを入力


;アイテム欄１
[if exp="tf.battle_item_hyouji_1_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_1"]

;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_2"]

;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_1_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_1_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_1=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_1=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄２
[if exp="tf.battle_item_hyouji_2_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_1"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_2"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_2_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_2_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_2=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_2=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄３
[if exp="tf.battle_item_hyouji_3_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_1"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_2"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_3_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_3_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_3=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_3=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄4
[if exp="tf.battle_item_hyouji_4_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_1"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_2"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_4_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_4_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_4=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_4=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]


;------------------------------------------------------------------------------

;アイテム欄5
[if exp="tf.battle_item_hyouji_5_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_1"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_2"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_5_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_5_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_5=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_5=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄6
[if exp="tf.battle_item_hyouji_6_number<1"]

;----
;アイテムNO１
[if exp="f.battle_item_stock[1]>=1&&tf.battle_item_1_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_1_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[1]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_1"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_1"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_1_hyouji=1"]

;アイテムNO２
[elsif exp="f.battle_item_stock[2]>=1&&tf.battle_item_2_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_2_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[2]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_2"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_2"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_2_hyouji=1"]

;アイテムNO３
[elsif exp="f.battle_item_stock[3]>=1&&tf.battle_item_3_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_3_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[3]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_3"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_3"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_3_hyouji=1"]

;アイテムNO４
[elsif exp="f.battle_item_stock[4]>=1&&tf.battle_item_4_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_4_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[4]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_4"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_4"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_4_hyouji=1"]

;アイテムNO５
[elsif exp="f.battle_item_stock[5]>=1&&tf.battle_item_5_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_5_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[5]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_5"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_5"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_5_hyouji=1"]

;アイテムNO６
[elsif exp="f.battle_item_stock[6]>=1&&tf.battle_item_6_hyouji!=1"]

[eval exp="tf.battle_item_hyouji_6_name=tf.battle_item_6_name"]
[eval exp="tf.battle_item_hyouji_6_number=f.battle_item_stock[6]"]
[eval exp="tf.battle_item_file_6=tf.item_file_no_6"]
[eval exp="tf.battle_item_explain_6=tf.item_explain_no_6"]
;表示済みのフラグ入力
[eval exp="tf.battle_item_6_hyouji=1"]


[endif]
;-----


[endif]


;---------------------------------------------------------------------



*item1
;アイテム表示
;itemのマーカーを消去
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css"]
[if exp="tf.cursor==0&&tf.cursor_down==0"]




;item_1_1

[if exp="tf.battle_item_hyouji_1_number>0"]

[button graphic="button/toumei.png" name="item_no_1" fix=true storage="&tf.battle_item_file_1" exp="tf.explain_no_1=tf.explain_no_1+1" target=*item x=&tf.place_0_x y=&tf.place_0_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_1_name" name="item_no_1_name" x=&tf.place_0_item_x y=&tf.place_0_item_y size=25]

;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_1_number" name="item_no_1" size=25 x=&tf.place_0_item_number_x y=&tf.place_0_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_1" size=25 x=&tf.place_0_item_kosuu_x y=&tf.place_0_item_y]

[endif]


;item_2_1

[if exp="tf.battle_item_hyouji_2_number>0"]

[button graphic="button/toumei.png" name="item_no_2" fix=true storage="&tf.battle_item_file_2" exp="tf.explain_no_2=tf.explain_no_2+1" target=*item x=&tf.place_1_x y=&tf.place_1_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_2_name" name="item_no_2_name" size=25 x=&tf.place_1_item_x y=&tf.place_1_item_y]
;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_2_number" name="item_no_2" size=25 x=&tf.place_1_item_number_x y=&tf.place_1_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_2" size=25 x=&tf.place_1_item_kosuu_x y=&tf.place_1_item_y]

[endif]



;item_3_1

[if exp="tf.battle_item_hyouji_3_number>0"]

[button graphic="button/toumei.png" name="item_no_3" fix=true storage="&tf.battle_item_file_3" exp="tf.explain_no_3=tf.explain_no_3+1" target=*item x=&tf.place_2_x y=&tf.place_2_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_3_name" name="item_no_3_name" size=25 x=&tf.place_2_item_x y=&tf.place_2_item_y]
;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_3_number" name="item_no_3" size=25 x=&tf.place_2_item_number_x y=&tf.place_2_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_3" size=25 x=&tf.place_2_item_kosuu_x y=&tf.place_2_item_y]

[endif]

[eval exp="tf.cursor_down=0"]
[if exp="tf.battle_item_hyouji_4_number>0"]
[button graphic="cursor.png" name="cursor" fix=true storage="scenario_2/mini_game/battle_item.ks" exp="tf.cursor=tf.cursor+1" target=*item x=&tf.cursor_x y=&tf.cursor_y]
[endif]



*cursor_return

[if exp="tf.cursor_down==4"]
[eval exp="tf.cursor_down=0"]
[eval exp="tf.cursor=0"]
[endif]



[elsif exp="tf.cursor==1"]



[clearfix name="item_no_1"][free layer=3 name="item_no_1"][free layer=3 name="item_no_1_name"]
[clearfix name="item_no_2"][free layer=3 name="item_no_2"][free layer=3 name="item_no_2_name"]
[clearfix name="item_no_3"][free layer=3 name="item_no_3"][free layer=3 name="item_no_3_name"]

;item_1_1

[if exp="tf.battle_item_hyouji_4_number>0"]

[button graphic="button/toumei.png" name="item_no_4" fix=true storage="&tf.battle_item_file_4" exp="tf.explain_no_4=tf.explain_no_4+1" target=*item x=&tf.place_3_x y=&tf.place_0_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_4_name" name="item_no_4_name" size=25 x=&tf.place_3_item_x y=&tf.place_0_item_y]
;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_4_number" name="item_no_4" size=25 x=&tf.place_3_item_number_x y=&tf.place_0_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_4" size=25 x=&tf.place_3_item_kosuu_x y=&tf.place_0_item_y]

[endif]

;item_2_1

[if exp="tf.battle_item_hyouji_5_number>0"]

[button graphic="button/toumei.png" name="item_no_5" fix=true storage="&tf.battle_item_file_5" exp="tf.explain_no_5=tf.explain_no_5+1" target=*item x=&tf.place_3_x y=&tf.place_1_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_5_name" name="item_no_5_name" size=25 x=&tf.place_3_item_x y=&tf.place_1_item_y]
;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_5_number" name="item_no_5" size=25 x=&tf.place_3_item_number_x y=&tf.place_1_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_5" size=25 x=&tf.place_3_item_kosuu_x y=&tf.place_1_item_y]

[endif]

;item_3_1

[if exp="tf.battle_item_hyouji_6_number>0"]

[button graphic="button/toumei.png" name="item_no_6" fix=true storage="&tf.battle_item_file_6" exp="tf.explain_no_6=tf.explain_no_6+1" target=*item x=&tf.place_3_x y=&tf.place_2_y]
;アイテム名　
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_6_name" name="item_no_6_name" size=25 x=&tf.place_3_item_x y=&tf.place_2_item_y]
;アイテム個数
[ptext layer=3 page=fore visible="true" text="&tf.battle_item_hyouji_6_number" name="item_no_6" size=25 x=&tf.place_3_item_number_x y=&tf.place_2_item_y]
[ptext layer=3 page=fore visible="true" text="こ" name="item_no_6" size=25 x=&tf.place_3_item_kosuu_x y=&tf.place_2_item_y]

[endif]

;上向きのカーソルを削除
[clearfix name="cursor"]
[eval exp="tf.cursor=0"]
[eval exp="tf.cursor_down=1"]
;下向きのカーソル表示

[button graphic="cursor_down.png" name="cursor_down" fix=true storage="scenario_2/mini_game/battle_item.ks" target=*item_modoru x=&tf.cursor_x y=&tf.cursor_y]
;item_6

[wait time=400]

[else]

[endif]

[clearstack]
[s]

*item_modoru
[eval exp="tf.cursor_down=0"]
[clearfix name="cursor_down"]
[clearfix name="item_no_4"][free layer=3 name="item_no_4"][free layer=3 name="item_no_4_name"]
[clearfix name="item_no_5"][free layer=3 name="item_no_5"][free layer=3 name="item_no_5_name"]
[clearfix name="item_no_6"][free layer=3 name="item_no_6"][free layer=3 name="item_no_6_name"]
[jump target=*item]



