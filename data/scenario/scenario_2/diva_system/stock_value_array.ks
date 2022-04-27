
[iscript]

//配列初期化すみの場合

if(this.kag.stat.f["array_shokika_sumi"]==1){

}else{


//配列初期化すみじゃない場合
this.kag.stat.f["battle_item_stock"] =[
0,
this.kag.stat.f["battle_item_1_stock"],
this.kag.stat.f["battle_item_2_stock"],
this.kag.stat.f["battle_item_3_stock"],
this.kag.stat.f["battle_item_4_stock"],
this.kag.stat.f["battle_item_5_stock"],
this.kag.stat.f["battle_item_6_stock"]
];



}



if(this.kag.stat.f["array_shokika_sumi"]==1){

}else{


this.kag.stat.f["equip_item_stock"] =[
0,
this.kag.stat.f["equip_item_1_stock"],
this.kag.stat.f["equip_item_2_stock"],
this.kag.stat.f["equip_item_3_stock"],
this.kag.stat.f["equip_item_4_stock"],
this.kag.stat.f["equip_item_5_stock"],
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
];
}


if(this.kag.stat.f["array_shokika_sumi"]!=1){


this.kag.stat.f["other_item_stock"] =[
0,
this.kag.stat.f["other_item_1_stock"],
this.kag.stat.f["other_item_2_stock"],
this.kag.stat.f["other_item_3_stock"],
this.kag.stat.f["other_item_4_stock"],
this.kag.stat.f["other_item_5_stock"],
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
];



this.kag.stat.f["other_item_27_stock"]=0;
this.kag.stat.f["other_item_28_stock"]=0;
this.kag.stat.f["other_item_29_stock"]=0;
this.kag.stat.f["other_item_30_stock"]=0;
}




if(this.kag.stat.f["array_shokika_sumi"]!=1){
this.kag.stat.f["cook_item_stock"] =[
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
];

}


[endscript]

[eval exp="f.stock_sumi=1"]

[return]