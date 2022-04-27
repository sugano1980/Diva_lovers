


[macro name="item_hyouji"]


[clearstack]

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

[anim name="other" left="-=790" time=200]
[anim name="other_moji" left="-=790" time=200]

[anim name="command_item" top="-=400" time=200]
[anim name="command_item_button" top="-=390" time=200]

[anim name="status" top="-=70" time=200]
[anim name="status" left="-=130" time=200]
[anim name="status_hp" top="-=70" time=200]
[anim name="status_hp" left="-=130" time=200]

[anim name="status_skill" top="-=70" time=200]
[anim name="status_skill" left="-=130" time=200]

[anim name="letter" top="-=270" time=200]
[anim name="letter" left="-=130" time=200]



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



*sell_start

[call storage="scenario_2/item/other_item_data_new.ks"]
[call storage="scenario_2/item/item_data.ks"]
[call storage="scenario_2/item/cook_item_data_new.ks"]
[call storage="scenario_2/item/battle_item_data.ks"]
[call storage="scenario_2/item/equip_item_data_new.ks"]

;選択ボタン用座標
[if exp="tf.sell==1"]

[call storage="scenario_2/item_sell_macro.ks"]
[eval exp="tf.item_choice_x=60"]
[eval exp="tf.item_choice_y=124"]

[else]

[eval exp="tf.item_choice_x=120"]
[eval exp="tf.item_choice_y=324"]

[endif]

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


[if exp="tf.sell==1"]

;アイテムチョイス欄ベース
[image layer=1 page=fore storage="item_sell_window.png" name="other" x=0 y=100]

[image layer=1 page=fore storage="item_window_sell.png" name="equip" x=220 y=50]

;売却画面
[eval exp="tf.item_explain_x=245"]
[eval exp="tf.item_explain_y=500"]
[eval exp="tf.item_font_size=18"]

;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=&tf.money_x y=&tf.money_y_g]

[image layer=1 page=fore visible=true  storage="okane.png" name="money" x=&tf.money_window_x y=&tf.money_window_y]

;戻るボタン
[image layer=1 page=fore visible=true  storage="return.png" name="money" x=600 y=70]
[button graphic="button/toumei.png" fix=true enterimg="button/toumei.png" storage="scenario_2/item_hyouji_macro.ks" target=*item_modoru name="store" x=600 y=70]
[ptext layer=2 page=fore visible=true  text="戻る" face=antique name="store" size=15 x=623 y=75]


[else]

;アイテムチョイス欄ベース
[image layer=1 page=fore storage="item_choice_window.png" name="other" x=40 y=300]

;戻るボタン
[button graphic="button/toumei.png" fix="true" name="command_item_button" clickse="tm2_switch001_macchi.ogg" storage="scenario_2/item_hyouji_macro.ks" target=*item_modoru x=&tf.command_x_7 y=40]



[eval exp="tf.item_explain_x=430"]
[eval exp="tf.item_explain_y=500"]
[eval exp="tf.item_font_size=18"]

[endif]









[message_kakusu_ad]

*first


;アイテム欄選択表示;初期化の処置



[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" exp="tf.item_battle_first=1" storage="scenario_2/item_hyouji.ks" name="battle_moji_choice" x=&tf.item_choice_x y=&tf.item_choice_y]
[ptext layer=2 page=fore text='戦闘アイテム' face=antique name="battle_hyouji_moji" size=18 x=&tf.item_choice_x y=&tf.item_choice_y]

[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" exp="tf.item_equip_first=1" storage="scenario_2/item_hyouji.ks"  name="equip_moji_choice" x=&tf.item_choice_x_2 y=&tf.item_choice_y_2]
[ptext layer=2 page=fore text='装備アイテム' face=antique name="equip_hyouji_moji" size=18 x=&tf.item_choice_x_2 y=&tf.item_choice_y_2]

[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" exp="tf.item_cook_first=1" storage="scenario_2/item_hyouji.ks"  name="cook_moji_choice" x=&tf.item_choice_x_3 y=&tf.item_choice_y_3]
;[button graphic="button/command.png" enterimg="button/toumei.png" fix="true" target=*item_cook" name="cook_moji_choice" x=155 y=390]
[ptext layer=2 page=fore text='料理アイテム' face=antique name="cook_hyouji_moji" size=18 x=&tf.item_choice_x_3 y=&tf.item_choice_y_3]


[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" exp="tf.item_other_first=1" storage="scenario_2/item_hyouji.ks"  name="other_moji_choice" x=&tf.item_choice_x_4 y=&tf.item_choice_y_4]
;[button graphic="button/command.png" enterimg="button/toumei.png" fix="true" target=*item_other" name="other_moji_choice" x=155 y=390]
[ptext layer=2 page=fore text='その他アイテム' face=antique name="other_hyouji_moji" exp="tf.item_other_hyouji=1" size=18 x=&tf.item_choice_x_4 y=&tf.item_choice_y_4]
[clearstack]

[s]























;アイテム戻す
*item_modoru

;売却だった場合じゃんぷ
[if exp="tf.sell==1"]
[jump target=*sell_return]
[endif]


[eval exp="tf.item_hyouji=0"]

[clearfix name="battle_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]

[clearstack]

[anim name="other" left="+=790" time=200]
[anim name="other_moji" left="+=790" time=200]

[anim name="command_item" top="+=400" time=200]
[anim name="command_item_button" top="+=390" time=200]

[anim name="status" top="+=70" time=200]
[anim name="status" left="+=130" time=200]
[anim name="status_hp" top="+=70" time=200]
[anim name="status_hp" left="+=130" time=200]

[anim name="status_skill" top="+=70" time=200]
[anim name="status_skill" left="+=130" time=200]

[anim name="letter" top="+=270" time=200]
[anim name="letter" left="+=130" time=200]




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

*sell_return
[cm]
[clearfix]
[freeimage layer=2]
[freeimage layer=1]

[if exp="tf.sell==1"]
[message_settei_ad]
[jump storage="scenario_2/store_macro.ks" target=*store_return]
[else]
[jump storage="scenario_2/status_macro.ks" target=*status]
[endif]



[endmacro]




[macro name="other_hyouji_delete"]
[free name="other" layer=2]
[clearfix name="other_cursor"]
[clearfix name="other_moji"]
[free name="item_suuti" layer=2]
;--------------
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[other_number_shoki]
[item_number_shori]
[eval exp="f.hogetto=0"]
[endmacro]

[macro name="equip_hyouji_delete"]
[free name="equip" layer=2]
[clearfix name="equip_cursor"]
[clearfix name="equip_moji"]
[free name="item_suuti" layer=2]
;--------------
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[equip_number_shoki]
[item_number_shori]
[eval exp=f.hogetto=0]
[endmacro]

[macro name="battle_hyouji_delete"]
[free name="battle" layer=2]
[clearfix name="battle_moji"]
[free name="item_suuti" layer=2][eval exp=f.hogetto=0]
;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[battle_number_shoki]
[item_number_shori]
[endmacro]


[macro name="cook_hyouji_delete"]

[free name="cook" layer=2]
[clearfix name="cook_moji"]
[clearfix name="cook_cursor"]
[free name="item_suuti" layer=2]
[cook_number_shoki]
[item_number_shori]
[eval exp=f.hogetto=0]
[endmacro]

[macro name="equip_number_shoki"]
[free name="equip" layer=2]
[eval exp="tf.item_list=f.equip_item_list"]
[endmacro]

[macro name="battle_number_shoki"]
[free name="battle" layer=2]
[eval exp="tf.item_list=f.battle_item_list"]
[endmacro]

[macro name="cook_number_shoki"]
[free name="cook" layer=2]
[eval exp="tf.item_list=f.cook_item_list"]
[endmacro]

[macro name="other_number_shoki"]
[free name="other" layer=2]
[eval exp="tf.item_list=f.other_item_list"]
[endmacro]



[macro name="item_number_shori"]
[iscript]

tyrano.plugin.kag.variable.tf.process_item_no=[];
tyrano.plugin.kag.variable.tf.process_shori_no=[];


for(i=0;i<=tf.item_list.length;i++){

   tyrano.plugin.kag.variable.tf.process_item_no.push(0);
      tyrano.plugin.kag.variable.tf.process_shori_no.push(0);


}

[endscript]

[endmacro]






[macro name="equip_item_trush"]
[iscript]


for(a=1;a<=f.equip_item_list.length;a++){
   if(tyrano.plugin.kag.variable.tf.equip_trush_value==a){
      for(i=1;i<=f.equip_item_list.length;i++){
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


for(a=1;a<=f.other_item_list.length;a++){
   if(tyrano.plugin.kag.variable.tf.other_trush_value==a){
      for(i=1;i<=f.other_item_list.length;i++){
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


for(a=1;a<=f.cook_item_list.length;a++){
   if(tyrano.plugin.kag.variable.tf.cook_trush_value==a){
      for(i=1;i<=f.cook_item_list.length;i++){
if(tyrano.plugin.kag.variable.tf.cook_item_number[a]==i){
              this.kag.stat.f["cook_item_stock"][i]-=1;
           }
        }
}
}
[endscript]

[endmacro]




[macro name="battle_item_trush"]
[iscript]


for(a=1;a<=f.battle_item_list.length;a++){
   if(tyrano.plugin.kag.variable.tf.battle_trush_value==a){
      for(i=1;i<=f.battle_item_list.length;i++){
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








[return]