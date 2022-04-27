


[macro name="item_hyouji"]


[clearstack]
[call storage="item/other_item_data_new.ks"]
[call storage="item/item_data.ks"]
[call storage="item/cook_item_data_new.ks"]
[call storage="item/battle_item_data.ks"]
[call storage="item/equip_item_data_new.ks"]






;試験用
;[eval exp="f.battle_item_3_stock=f.battle_item_1_stock+1"]
;[eval exp="f.battle_item_4_stock=f.battle_item_1_stock+1"]
;[eval exp="f.battle_item_5_stock=f.battle_item_1_stock+1"]
;[eval exp="f.battle_item_6_stock=f.battle_item_1_stock+1"]




;other
;すでに取得済み

;equip

;すでに取得済み


;battle
;すでに取得済み

;cook
;すでに取得済み

*item
;アイテム、ステータス以外の他のコマンドを移動
[eval exp="tf.item_hyouji=1"]
;アイテムチョイス欄ベース
[image layer=1 page=fore storage="item_choice_window.png" name="other" x=840 y=300]

;戻るボタン
[button graphic="button/toumei.png" fix="true" name="command_item_button" clickse="tm2_switch001_macchi.ogg" storage="item_hyouji_macro.ks" target=*item_modoru x=&tf.command_x_7 y=&tf.command_y_7]


[anim name="other" left="-=790" time=200]
[anim name="other_moji" left="-=790" time=200]



[anim name="command_item" top="-=350" time=200]
[anim name="command_item_button" top="-=410" time=200]


[anim name="status" top="-=70" time=200]
[anim name="status" left="-=130" time=200]
[anim name="status_hp" top="-=70" time=200]
[anim name="status_hp" left="-=130" time=200]

[anim name="status_skill" top="-=70" time=200]
[anim name="status_skill" left="-=130" time=200]

;ステータス表示の座標を更新

[eval exp="tf.irain_hp_x=tf.irain_hp_x-130"]
[eval exp="tf.irain_hp_y=tf.irain_hp_y-70"]


[eval exp="tf.irain_tec_x=360-130"]
[eval exp="tf.irain_tec_number_x=415-130"]

[eval exp="tf.irain_tec_y=225-70"]
[eval exp="tf.irain_tec_number_y=225-70"]


[eval exp="tf.irain_brain_x=360-130"]
[eval exp="tf.irain_brain_number_x=415-130"]

[eval exp="tf.irain_brain_y=250-70"]
[eval exp="tf.irain_brain_number_y=250-70"]


[eval exp="tf.irain_charm_x=360-130"]
[eval exp="tf.irain_charm_number_x=415-130"]

[eval exp="tf.irain_charm_y=275-70"]
[eval exp="tf.irain_charm_number_y=275-70"]






[clearfix name="change_button"]

[anim name="command" left="-=400" time=200]

[anim name="money" left="-=800" time=200]

[anim name="soubi" left="+=480" time=200]

[anim name="soubi1" left="+=480" time=200]


[anim name="soubi2" left="+=480" time=200]

[anim name="equip" left="-=430" time=200]



[anim name="change_button" left="+=480" time=200]





[anim name="mokuhyou" left="+=300" time=200]






;その他アイテムあっぷ数値表示ように座標を計算

[eval exp="tf.irain_tec_suuti_x=tf.irain_tec_number_x+40"]
[eval exp="tf.irain_brain_suuti_x=tf.irain_brain_number_x+40"]
[eval exp="tf.irain_charm_suuti_x=tf.irain_charm_number_x+40"]

[eval exp="tf.irain_tec_suuti_number_x=tf.irain_tec_number_x+57"]
[eval exp="tf.irain_brain_suuti_number_x=tf.irain_brain_number_x+57"]
[eval exp="tf.irain_charm_suuti_number_x=tf.irain_charm_number_x+57"]


;選択ボタン用座標
[eval exp="tf.item_choice_x=120"]
[eval exp="tf.item_choice_y=324"]
[eval exp="tf.item_choice_x_2=tf.item_choice_x"]
[eval exp="tf.item_choice_y_2=tf.item_choice_y+25"]
[eval exp="tf.item_choice_x_3=tf.item_choice_x_2"]
[eval exp="tf.item_choice_y_3=tf.item_choice_y_2+25"]
[eval exp="tf.item_choice_x_4=tf.item_choice_x_3"]
[eval exp="tf.item_choice_y_4=tf.item_choice_y_3+25"]



;アイテム選択キーカーソルの座標
[eval exp="tf.item_choice_key_x=tf.item_choice_x-10"]
[eval exp="tf.item_choice_key_y=tf.item_choice_y+4"]
[eval exp="tf.item_choice_key_y_2=tf.item_choice_key_y+25"]
[eval exp="tf.item_choice_key_y_3=tf.item_choice_key_y_2+25"]
[eval exp="tf.item_choice_key_y_4=tf.item_choice_key_y_3+25"]


[eval exp="tf.item_explain_x=430"]
[eval exp="tf.item_explain_y=500"]
[eval exp="tf.item_font_size=18"]










[message_kakusu_ad]

*first


;アイテム欄選択表示


[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="battle_item_hyouji.ks" name="battle_moji_choice" x=&tf.item_choice_x y=&tf.item_choice_y]
[ptext layer=2 page=fore text='戦闘アイテム' face=antique name="battle_hyouji_moji" size=18 x=&tf.item_choice_x y=&tf.item_choice_y]

[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="equip_item_hyouji.ks"  name="equip_moji_choice" x=&tf.item_choice_x_2 y=&tf.item_choice_y_2]
[ptext layer=2 page=fore text='装備アイテム' face=antique name="equip_hyouji_moji" size=18 x=&tf.item_choice_x_2 y=&tf.item_choice_y_2]

[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="cook_item_hyouji.ks"  name="cook_moji_choice" x=&tf.item_choice_x_3 y=&tf.item_choice_y_3]

;[button graphic="button/command.png" enterimg="button/toumei.png" fix="true" target=*item_cook" name="cook_moji_choice" x=155 y=390]
[ptext layer=2 page=fore text='料理アイテム' face=antique name="cook_hyouji_moji" size=18 x=&tf.item_choice_x_3 y=&tf.item_choice_y_3]

[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="other_item_hyouji.ks"  name="other_moji_choice" x=&tf.item_choice_x_4 y=&tf.item_choice_y_4]

;[button graphic="button/command.png" enterimg="button/toumei.png" fix="true" target=*item_other" name="other_moji_choice" x=155 y=390]
[ptext layer=2 page=fore text='その他アイテム' face=antique name="other_hyouji_moji" size=18 x=&tf.item_choice_x_4 y=&tf.item_choice_y_4]
[clearstack]

[s]























;アイテム戻す
*item_modoru
[eval exp="tf.item_hyouji=0"]


[clearfix name="battle_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]

[clearstack]

[anim name="other" left="+=790" time=200]
[anim name="other_moji" left="+=790" time=200]

[anim name="command_item" top="+=350" time=200]
[anim name="command_item_button" top="+=410" time=200]


[anim name="status" top="+=70" time=200]
[anim name="status" left="+=130" time=200]
[anim name="status_hp" top="+=70" time=200]
[anim name="status_hp" left="+=130" time=200]

[anim name="status_skill" top="+=70" time=200]
[anim name="status_skill" left="+=130" time=200]




;ステータス表示の座標を更新


[eval exp="tf.irain_hp_x=tf.irain_hp_x+130"]
[eval exp="tf.irain_hp_y=tf.irain_hp_y+70"]

[eval exp="tf.irain_tec_x=tf.irain_tec_x+130"]
[eval exp="tf.irain_brain_x=tf.irain_brain_x+130"]
[eval exp="tf.irain_charm_x=tf.irain_charm_x+130"]

[eval exp="tf.irain_tec_y=tf.irain_tec_y+70"]
[eval exp="tf.irain_brain_y=tf.irain_brain_y+70"]
[eval exp="tf.irain_charm_y=tf.irain_charm_y+70"]

[eval exp="tf.irain_tec_number_x=tf.irain_tec_number_x+130"]
[eval exp="tf.irain_brain_number_x=tf.irain_brain_number_x+130"]
[eval exp="tf.irain_charm_number_x=tf.irain_charm_number_x+130"]

[eval exp="tf.irain_tec_number_y=tf.irain_tec_number_y+70"]
[eval exp="tf.irain_brain_number_y=tf.irain_brain_number_y+70"]
[eval exp="tf.irain_charm_number_y=tf.irain_charm_number_y+70"]


[anim name="command" left="+=400" time=200]

[anim name="money" left="+=800" time=200]
[anim name="soubi" left="-=480" time=200]

[anim name="soubi1" left="-=480" time=200]


[anim name="soubi2" left="+=480" time=200]





[anim name="mokuhyou" left="-=300" time=200]






[button graphic="soubi_change.png" clickse="tm2_switch001_macchi.ogg" name="change_button" target=*return x=670 y=270]


[cm]
[clearfix]
[freeimage layer=2]
[freeimage layer=1]

[jump storage="status_macro.ks" target=*status]



[endmacro]




[macro name="other_hyouji_delete"]
[free name="other" layer=2]
[clearfix name="other_cursor"]
[clearfix name="other_moji"]
[free name="item_suuti" layer=2]
;--------------
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[other_number_shoki]
[eval exp=f.hogetto=0]
[endmacro]

[macro name="equip_hyouji_delete"]
[free name="equip" layer=2]
[clearfix name="equip_cursor"]
[clearfix name="equip_moji"]
[free name="item_suuti" layer=2]
;--------------
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[equip_number_shoki]
[eval exp=f.hogetto=0]
[endmacro]

[macro name="battle_hyouji_delete"]
[free name="battle" layer=2]
[clearfix name="battle_moji"]
[free name="item_suuti" layer=2][eval exp=f.hogetto=0]
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[battle_number_shoki]

[endmacro]


[macro name="cook_hyouji_delete"]

[free name="cook" layer=2]
[clearfix name="cook_moji"]
[clearfix name="cook_cursor"]
[free name="item_suuti" layer=2]
[cook_number_shoki]
[eval exp=f.hogetto=0]
[endmacro]

[macro name="equip_number_shoki"]
[free name="equip" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.equip_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.equip_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]


[endmacro]

[macro name="battle_number_shoki"]
[free name="battle" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.battle_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.battle_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]


[endmacro]

[macro name="cook_number_shoki"]
[free name="cook" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.cook_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.cook_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]


[endmacro]

[macro name="other_number_shoki"]
[free name="other" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.other_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.other_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]


[endmacro]






[macro name="equip_item_trush"]
[iscript]


for(a=1;a<35;a++){
   if(tyrano.plugin.kag.variable.tf.equip_trush_value==a){
      for(i=1;i<35;i++){
if(tyrano.plugin.kag.variable.tf.equip_item_number[a]==i){
              this.kag.stat.f["equip_item_stock"][i]-=1;
           }
        }
}
}
[endscript]

[endmacro]


[macro name="other_item_trush"]
[iscript]


for(a=1;a<35;a++){
   if(tyrano.plugin.kag.variable.tf.other_trush_value==a){
      for(i=1;i<35;i++){
if(tyrano.plugin.kag.variable.tf.other_item_number[a]==i){
              this.kag.stat.f["other_item_stock"][i]-=1;
           }
        }
}
}
[endscript]

[endmacro]


[macro name="cook_item_trush"]
[iscript]


for(a=1;a<35;a++){
   if(tyrano.plugin.kag.variable.tf.cook_trush_value==a){
      for(i=1;i<35;i++){
if(tyrano.plugin.kag.variable.tf.cook_item_number[a]==i){
              this.kag.stat.f["cook_item_stock"][i]-=1;
           }
        }
}
}
[endscript]

[endmacro]



[macro name="cook_item_trush_short_code"]
[iscript]


for(a=1;a<35;a++){
   if(tyrano.plugin.kag.variable.tf.cook_trush_value==a){
      for(i=1;i<35;i++){
      	a-=1;
if(tyrano.plugin.kag.variable.tf.cook_item_hyouji_number[a]==i){
              this.kag.stat.f["cook_item_stock"][i]-=1;       
           }
        a+=1;
        }
}
}
[endscript]

[endmacro]

[macro name="battle_item_trush"]
[iscript]


for(a=1;a<7;a++){
   if(tyrano.plugin.kag.variable.tf.battle_trush_value==a){
      for(i=1;i<35;i++){
      	a-=1;
if(tyrano.plugin.kag.variable.tf.battle_item_hyouji_number[a]==i){
              this.kag.stat.f["battle_item_stock"][i]-=1;       
           }
        a+=1;
        }
}
}
[endscript]


[endmacro]









[macro name="other_item_reading"]
;アイテム欄１アイテム欄に表示があるかないか

[image layer=2 page=fore storage="black.png" name="kuro" x=0 y=0]
[image layer=3 page=fore storage="pose_yasumu.gif" name="load" width="175" height="98" x=550 y=70]



[if exp="tf.other_item_hyouji_1<1"]

;----
[other_item_check_1]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄２
[if exp="tf.other_item_hyouji_2<1"]

;----
[other_item_check_2]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄３
[if exp="tf.other_item_hyouji_3<1"]

;----
[other_item_check_3]
;-----


[endif]

;------------------------------------------------------------------------------

;アイテム欄4
[if exp="tf.other_item_hyouji_4<1"]

;----
[other_item_check_4]
;-----


[endif]


;------------------------------------------------------------------------------

;アイテム欄5
[if exp="tf.other_item_hyouji_5<1"]

;----
[other_item_check_5]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄6
[if exp="tf.other_item_hyouji_6<1"]

;----
[other_item_check_6]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄7
[if exp="tf.other_item_hyouji_7<1"]

;----
[other_item_check_7]
;-----

[endif]

;アイテム欄8
[if exp="tf.other_item_hyouji_8<1"]

;----
[other_item_check_8]
;-----

[endif]

;アイテム欄9
[if exp="tf.other_item_hyouji_9<1"]

;----
[other_item_check_9]
;-----

[endif]





;アイテム欄10
[if exp="tf.other_item_hyouji_10<1"]

;----
[other_item_check_10]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄11
[if exp="tf.other_item_hyouji_11<1"]

;----
[other_item_check_11]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄12
[if exp="tf.other_item_hyouji_12<1"]

;----
[other_item_check_12]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄13
[if exp="tf.other_item_hyouji_13<1"]

;----
[other_item_check_13]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄14
[if exp="tf.other_item_hyouji_14<1"]

;----
[other_item_check_14]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄15
[if exp="tf.other_item_hyouji_15<1"]

;----
[other_item_check_15]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄16
[if exp="tf.other_item_hyouji_16<1"]

;----
[other_item_check_16]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄17
[if exp="tf.other_item_hyouji_17<1"]

;----
[other_item_check_17]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄18
[if exp="tf.other_item_hyouji_18<1"]

;----
[other_item_check_18]
;-----

[endif]




;------------------------------------------------------------------------------


;アイテム欄19
[if exp="tf.other_item_hyouji_19<1"]

;----
[other_item_check_19]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄20
[if exp="tf.other_item_hyouji_20<1"]

;----
[other_item_check_20]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄21
[if exp="tf.other_item_hyouji_21<1"]

;----
[other_item_check_21]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄22
[if exp="tf.other_item_hyouji_22<1"]

;----
[other_item_check_22]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄23
[if exp="tf.other_item_hyouji_23<1"]

;----
[other_item_check_23]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄24
[if exp="tf.other_item_hyouji_24<1"]

;----
[other_item_check_24]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄25
[if exp="tf.other_item_hyouji_25<1"]

;----
[other_item_check_25]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄26
[if exp="tf.other_item_hyouji_26<1"]

;----
[other_item_check_26]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄27
[if exp="tf.other_item_hyouji_27<1"]

;----
[other_item_check_27]
;-----

[endif]





;------------------------------------------------------------------------------

;アイテム欄28
[if exp="tf.other_item_hyouji_28<1"]

;----
[other_item_check_28]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄29
[if exp="tf.other_item_hyouji_29<1"]

;----
[other_item_check_29]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄30
[if exp="tf.other_item_hyouji_30<1"]

;----
[other_item_check_30]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄31
[if exp="tf.other_item_hyouji_31<1"]

;----
[other_item_check_31]
;-----

[endif]

;------------------------------------------------------------------------------

;アイテム欄32
[if exp="tf.other_item_hyouji_32<1"]

;----
[other_item_check_32]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄33
[if exp="tf.other_item_hyouji_33<1"]

;----
[other_item_check_33]
;-----

[endif]

;------------------------------------------------------------------------------
;アイテム欄34
[if exp="tf.other_item_hyouji_34<1"]

;----
[other_item_check_34]
;-----

[endif]

;------------------------------------------------------------------------------

[free name="kuro" layer=2 time=1000]
[free name="load" layer=3]
[w]
[image layer=3 page=fore storage="pose_stand.gif" width="175" height="98" name="load" x=550 y=70]
[w][w][w]
[free name="load" layer=3]





[endmacro]



[return]