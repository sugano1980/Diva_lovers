[macro name="product_data_macro"]
;商品データダウンロード
;商品のデータをダウンロード
[call storage="scenario_2/item/equip_item_data.ks"]
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/store_macro_add.ks"]



;支払いとアイテム増やす用の処理
;-------------

[iscript]


tyrano.plugin.kag.variable.tf.equip_item_stock = [];

for(i=1;i<=f.equip_item_list.length;i++){

   if(typeof f.equip_item_stock[i]==='undefined'){
tyrano.plugin.kag.variable.tf.equip_item_stock.push(0)
   }else{
tyrano.plugin.kag.variable.tf.equip_item_stock.push(this.kag.stat.f["equip_item_stock"][i])
   }

 
}

[endscript]


[eval exp="tf.item_len=f.equip_item_list.length"]
[eval exp="tf.item_stock=0"]
[eval exp="tf.item_stock=f.equip_item_stock"]
[stock_nyuryoku]
[eval exp="tf.item_list=f.equip_item_list"]
[eval exp="tf.item_value=0"] 
[value_nyuryoku]

[iscript]

tyrano.plugin.kag.variable.tf.store_item_value = [];

var equip_array = f.equip_item_list.length;
for(i=0;i<equip_array;i++){
	 tyrano.plugin.kag.variable.tf.store_item_value[i] = tyrano.plugin.kag.variable.tf.value[i];

}

[endscript]


[endmacro]

;------------------------------------------------------------------------------------------------------------------------------


[return]