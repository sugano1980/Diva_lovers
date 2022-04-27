[macro name="up_para_calc"]

;効果量変数
[eval exp="tf.effect_number_1=0"]
[eval exp="tf.effect_number_2=0"]
[eval exp="tf.effect_number_3=0"]
;装備欄アイテムのアップパラメータと選択アイテムのアップパラメータが同じなら選択アイテムのアップ数値から装備アイテムのアップ数値を引いて変数に代入


;現在のアイテムがアップパラメータ魅力のみなのでparameter3だけ（本来は１も２も確認、effect_number_1,2で対応）

[eval exp="tf.effect_number_3=tf.equip_item_effect_number_3-tf.current_3_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入



;パラメータ２

[eval exp="tf.effect_number_2=tf.equip_item_effect_number_2-tf.current_2_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入


;パラメータ１

[eval exp="tf.effect_number_1=tf.equip_item_effect_number_1-tf.current_1_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入




;効果数値、パラメータにより表示いちが違うので場合わけ後、アップ数値を表示；現在は魅力のアイテムしかないので場合わけは３のみにしています

;-----
[if exp="tf.effect_number_3<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[endif]
[if exp="tf.effect_number_3==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_3" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[endif]

;-----



;-----
[if exp="tf.effect_number_2<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[endif]
[if exp="tf.effect_number_2==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_2" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]

[endif]
;-----



;-----
[if exp="tf.effect_number_1<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[endif]

[if exp="tf.effect_number_1==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_1" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]
[endif]




[endmacro]

;-----------------------------

[macro name="soubi_number_para_confirm"]

[iscript]
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.current_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.current_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.current_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.current_1_effect_number=0;
 tyrano.plugin.kag.variable.tf.current_2_effect_number=0;
 tyrano.plugin.kag.variable.tf.current_3_effect_number=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<35;i++){
if(this.kag.stat.f["equip_item_current"]==i){

 tyrano.plugin.kag.variable.tf.current_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.current_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.current_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.current_1_effect_number=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.current_2_effect_number= tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.current_3_effect_number = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];
   
}
}
[endscript]
[endmacro]
;---------------------------------------


;;アップパラメータ表示用
[macro name="skill_calc_hyouji_current_1"]

[eval exp="tf.item_kazu='item_suuti'"]

[iscript]
var id = tyrano.plugin.kag.variable.tf.skill;

for(i=1;i<35;i++){

//アイテムnumberでパラメータを取得
if(tyrano.plugin.kag.variable.tf.equip_item_number[id] ==i){

tyrano.plugin.kag.variable.tf.equip_item_parameter_number_2=this.kag.stat.f["equip_item_list"][i].parameter_2;
tyrano.plugin.kag.variable.tf.equip_item_parameter_number_3=this.kag.stat.f["equip_item_list"][i].parameter_3;
tyrano.plugin.kag.variable.tf.equip_item_parameter_number_1=this.kag.stat.f["equip_item_list"][i].parameter_1;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=this.kag.stat.f["equip_item_list"][i].effect_3_number;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=this.kag.stat.f["equip_item_list"][i].effect_2_number;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=this.kag.stat.f["equip_item_list"][i].effect_1_number;

}
}
[endscript]

;アップパラメータ計算

;現在の装備ナンバーを確認してパラメータの種類も確認する

[soubi_number_para_confirm]

[up_para_calc]

[endmacro]



;---------------------------------------------------------------------------------------
;装備服欄current_2
[macro name="soubi_number_para_confirm_2"]

[iscript]
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.current_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.current_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.current_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.current_1_effect_number=0;
 tyrano.plugin.kag.variable.tf.current_2_effect_number=0;
 tyrano.plugin.kag.variable.tf.current_3_effect_number=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<35;i++){
if(this.kag.stat.f["equip_item_current_2"]==i){

 tyrano.plugin.kag.variable.tf.current_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.current_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.current_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.current_1_effect_number=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.current_2_effect_number= tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.current_3_effect_number = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];
   
}
}
[endscript]

[endmacro]


[macro name="up_para_calc_2"]

;効果量変数
[eval exp="tf.effect_number_1=0"]
[eval exp="tf.effect_number_2=0"]
[eval exp="tf.effect_number_3=0"]
;装備欄アイテムのアップパラメータと選択アイテムのアップパラメータが同じなら選択アイテムのアップ数値から装備アイテムのアップ数値を引いて変数に代入


;現在のアイテムがアップパラメータ魅力のみなのでparameter3だけ（本来は１も２も確認、effect_number_1,2で対応）

[eval exp="tf.effect_number_3=tf.equip_item_effect_number_3-tf.current_3_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入
;パラメータ２

[eval exp="tf.effect_number_2=tf.equip_item_effect_number_2-tf.current_2_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入
;パラメータ１
[eval exp="tf.effect_number_1=tf.equip_item_effect_number_1-tf.current_1_effect_number"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入




;効果数値、パラメータにより表示いちが違うので場合わけ後、アップ数値を表示；現在は魅力のアイテムしかないので場合わけは３のみにしています

[if exp="tf.effect_number_3<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[endif]
[if exp="tf.effect_number_3==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_3" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[endif]



[if exp="tf.effect_number_2<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[endif]
[if exp="tf.effect_number_2==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_2" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]

[endif]




[if exp="tf.effect_number_1<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[endif]
[if exp="tf.effect_number_1==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_1" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]

[endif]




[endmacro]


;-------------------------------------------------------------------------
;アイテム欄1行目;装備欄２
;;アップパラメータ表示用
[macro name="skill_calc_hyouji_current_2"]

[eval exp="tf.item_kazu='item_suuti'"]

[iscript]
var id = tyrano.plugin.kag.variable.tf.skill;

for(i=1;i<35;i++){

//アイテムnumberでパラメータを取得
if(tyrano.plugin.kag.variable.tf.equip_item_number[id] ==i){

tyrano.plugin.kag.variable.tf.equip_item_parameter_number_2=this.kag.stat.f["equip_item_list"][i].parameter_2;
tyrano.plugin.kag.variable.tf.equip_item_parameter_number_3=this.kag.stat.f["equip_item_list"][i].parameter_3;
tyrano.plugin.kag.variable.tf.equip_item_parameter_number_1=this.kag.stat.f["equip_item_list"][i].parameter_1;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=this.kag.stat.f["equip_item_list"][i].effect_3_number;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=this.kag.stat.f["equip_item_list"][i].effect_2_number;
tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=this.kag.stat.f["equip_item_list"][i].effect_1_number;

}
}
[endscript]

;アップパラメータ計算

;現在の装備ナンバーを確認してパラメータの種類も確認する

[soubi_number_para_confirm_2]

[up_para_calc_2]

[endmacro]

;装備の効果計算

[macro name="equip_kouka_calc"]
[if exp="tf.equip_item_parameter_3_number==1"]
[eval exp="f.irain_charm=f.irain_charm+tf.equip_item_effect_3"]
[endif]
[if exp="tf.equip_item_parameter_2_number==1"]
[eval exp="f.irain_brain=f.irain_brain+tf.equip_item_effect_2"]
[endif]
[if exp="tf.equip_item_parameter_1_number==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.equip_item_effect_1"]
[endif]

[endmacro]


;その他アイテム用計算

;;アップパラメータ表示用
[macro name="skill_calc_hyouji_other"]

[eval exp="tf.item_kazu='item_suuti'"]

[iscript]
var id = tyrano.plugin.kag.variable.tf.skill;

for(i=1;i<35;i++){

//アイテムnumberでパラメータを取得
if(tyrano.plugin.kag.variable.tf.other_item_number[id] ==i){

tyrano.plugin.kag.variable.tf.other_item_parameter_number_2=this.kag.stat.f["other_item_list"][i].parameter_2;
tyrano.plugin.kag.variable.tf.other_item_parameter_number_3=this.kag.stat.f["other_item_list"][i].parameter_3;
tyrano.plugin.kag.variable.tf.other_item_parameter_number_1=this.kag.stat.f["other_item_list"][i].parameter_1;
tyrano.plugin.kag.variable.tf.other_item_effect_number_3=this.kag.stat.f["other_item_list"][i].effect_3_number;
tyrano.plugin.kag.variable.tf.other_item_effect_number_2=this.kag.stat.f["other_item_list"][i].effect_2_number;
tyrano.plugin.kag.variable.tf.other_item_effect_number_1=this.kag.stat.f["other_item_list"][i].effect_1_number;

}
}
[endscript]

;アップパラメータ計算
[up_para_calc_other]

[endmacro]



[macro name="up_para_calc_other"]

;効果量変数
[eval exp="tf.effect_number_1=0"]
[eval exp="tf.effect_number_2=0"]
[eval exp="tf.effect_number_3=0"]

;現在のアイテムがアップパラメータ魅力のみなのでparameter3だけ（本来は１も２も確認、effect_number_1,2で対応）

[eval exp="tf.effect_number_3=tf.other_item_effect_number_3"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入

;パラメータ２

[eval exp="tf.effect_number_2=tf.other_item_effect_number_2"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入

;パラメータ１

[eval exp="tf.effect_number_1=tf.other_item_effect_number_1"]

;アップパラメータが異なる場合には選択アイテムのアップパラメータ数値をそのまま変数に代入

;効果数値、パラメータにより表示いちが違うので場合わけ後、アップ数値を表示；現在は魅力のアイテムしかないので場合わけは３のみにしています

;-----
[if exp="tf.effect_number_3<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_x y=&tf.irain_charm_y]
[endif]
[if exp="tf.effect_number_3==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_3" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_charm_suuti_number_x y=&tf.irain_charm_y]
[endif]

;-----

;-----
[if exp="tf.effect_number_2<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_x y=&tf.irain_brain_y]
[endif]
[if exp="tf.effect_number_2==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_2" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_brain_suuti_number_x y=&tf.irain_brain_y]

[endif]
;-----

;-----
[if exp="tf.effect_number_1<0"]
[ptext layer=2 page=fore text="-" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="+" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_x y=&tf.irain_tec_y]
[endif]

[if exp="tf.effect_number_1==0"]
[ptext layer=2 page=fore text="0" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]
[else]
[ptext layer=2 page=fore text="&tf.effect_number_1" face=antique name="&tf.item_kazu" size=20 x=&tf.irain_tec_suuti_number_x y=&tf.irain_tec_y]
[endif]
[endmacro]









[return]






