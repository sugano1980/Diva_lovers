

;装備ナンバー確認及びパラメータ確認

[macro name="equip_current_1_confirm"]

[if exp="f.item_other!=1&&f.item_cook!=1"]
[iscript]


if(tyrano.plugin.kag.variable.tf.store_item_type[tf.store_id]=='hair'){
this.kag.stat.f["equip_item_current_store"]=this.kag.stat.f["equip_item_current"];
}else{

this.kag.stat.f["equip_item_current_store"]=this.kag.stat.f["equip_item_current_2"];

}







//アイテムnumberでパラメータを取得


tyrano.plugin.kag.variable.tf.current_parameter_2=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].parameter_2;
tyrano.plugin.kag.variable.tf.current_parameter_3=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].parameter_3;
tyrano.plugin.kag.variable.tf.current_parameter_1=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].parameter_1;
tyrano.plugin.kag.variable.tf.current_3_effect_number=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].effect_3_number;
tyrano.plugin.kag.variable.tf.current_2_effect_number=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].effect_2_number;
tyrano.plugin.kag.variable.tf.current_1_effect_number=this.kag.stat.f["equip_item_list"][f.equip_item_current_store].effect_1_number;


[endscript]
[else]

[iscript]
tyrano.plugin.kag.variable.tf.current_parameter_2=0;
tyrano.plugin.kag.variable.tf.current_parameter_3=0;
tyrano.plugin.kag.variable.tf.current_parameter_1=0;
tyrano.plugin.kag.variable.tf.current_3_effect_number=0;
tyrano.plugin.kag.variable.tf.current_2_effect_number=0;
tyrano.plugin.kag.variable.tf.current_1_effect_number=0;
[endscript]

[endif]
[endmacro]


;装備欄１
[macro name="skill_calc_store_1_current_1"]
;アップパラメータ計算

[eval exp="tf.store_item_number=tf.store_item_num[tf.store_id]"]
;現在の装備ナンバーを確認してパラメータの種類も確認する
[equip_current_1_confirm]
;効果量変数
[eval exp="tf.effect_number_1=0"]
[eval exp="tf.effect_number_2=0"]
[eval exp="tf.effect_number_3=0"]

;装備欄アイテムのアップパラメータと選択アイテムのアップパラメータが同じなら選択アイテムのアップ数値から装備アイテムのアップ数値を引いて変数に代入

;現在のアイテムがアップパラメータ魅力のみなのでparameter3だけ（本来は１も２も確認、effect_number_1,2で対応）

[eval exp="tf.effect_number_3=tf.store_item_effect3_number[tf.store_id]-tf.current_3_effect_number"]
;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入；

;パラメータ２
[eval exp="tf.effect_number_2=tf.store_item_effect2_number[tf.store_id]-tf.current_2_effect_number"]
;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入；

;パラメータ１
[eval exp="tf.effect_number_1=tf.store_item_effect1_number[tf.store_id]-tf.current_1_effect_number"]
;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入；




;効果数値、パラメータにより表示いちが違うので場合わけ後、アップ数値を表示；現在は魅力のアイテムしかないので場合わけは３のみにしています

;-----
[eval exp="tf.charm_x_suuti=tf.charm_x-3"]
[eval exp="tf.charm_y_suuti=tf.store_item_y"]
[if exp="tf.effect_number_3<0"]
[image layer=2 page=fore storage="para_down.png" name="item_suuti" x=&tf.charm_x_suuti y=&tf.charm_y_suuti]
;[ptext layer=2 page=fore text="-" face=antique name="item_suuti" size=13 x=&tf.charm_x y=&tf.store_item_y]
[elsif exp="tf.effect_number_3==0"]
[image layer=2 page=fore storage="para_0.png" name="item_suuti" x=&tf.charm_x_suuti y=&tf.charm_y_suuti]
[else]
[image layer=2 page=fore storage="para_up.png" name="item_suuti" x=&tf.charm_x_suuti y=&tf.charm_y_suuti]
;[ptext layer=2 page=fore text="+" face=antique name="item_suuti" size=13 x=&tf.charm_x y=&tf.store_item_y]
[endif]

;[ptext layer=2 page=fore text=&tf.effect_number_3 face=antique name="item_suuti" size=12 x=&tf.charm_x_suuti y=&tf.charm_y_suuti]
;-----



;-----
[if exp="tf.effect_number_2<0"]
[image layer=2 page=fore storage="para_down.png" name="item_suuti" x=&tf.brain_x y=&tf.store_item_y]
;[ptext layer=2 page=fore text="-" face=antique name="item_suuti" size=20 x=&tf.brain_x y=&tf.store_item_y]
[elsif exp="tf.effect_number_2==0"]
[image layer=2 page=fore storage="para_0.png" name="item_suuti" x=&tf.brain_x y=&tf.store_item_y]
[else]
[image layer=2 page=fore storage="para_up.png" name="item_suuti" x=&tf.brain_x y=&tf.store_item_y]

;[ptext layer=2 page=fore text="+" face=antique name="item_suuti" size=20 x=&tf.brain_x y=&tf.store_item_y]
[endif]
[eval exp="tf.brain_x_suuti=tf.brain_x+3"]
;[ptext layer=2 page=fore text="&tf.effect_number_2" face=antique name="item_suuti" size=20 x=&tf.brain_x_suuti y=&tf.store_item_y]
;-----



;-----
[if exp="tf.effect_number_1<0"]
[image layer=2 page=fore storage="para_down.png" name="item_suuti" x=&tf.tec_x y=&tf.store_item_y]

;[ptext layer=2 page=fore text="-" face=antique name="item_suuti" size=20 x=&tf.tec_x y=&tf.store_item_y]
[elsif exp="tf.effect_number_1==0"]
[image layer=2 page=fore storage="para_0.png" name="item_suuti" x=&tf.tec_x  y=&tf.store_item_y]
[else]
[image layer=2 page=fore storage="para_up.png" name="item_suuti" x=&tf.tec_x y=&tf.store_item_y]

;[ptext layer=2 page=fore text="+" face=antique name="item_suuti" size=20 x=&tf.tec_x y=&tf.store_item_y]
[endif]
[eval exp="tf.tec_x_suuti=tf.tec_x+3"]
;[ptext layer=2 page=fore text="&tf.effect_number_1" face=antique name="item_suuti" size=17 x=&tf.tec_x_suuti y=&tf.store_item_y]
;-----




[endmacro]




[return]
;-----------------------------------------------------------------------------------------------------------------------------------------------------------

