

[macro name="product_data_macro_cook"]
;商品データダウンロード
;商品のデータをダウンロード
[call storage="scenario_2/item/cook_item_data.ks"]
[call storage="scenario_2/item/cook_item_data_new.ks"]
[call storage="scenario_2/store_macro_add.ks"]
;名前と値段
;所持数
;支払いとアイテム増やす用の処理
[eval exp="tf.cook_item_stock=[]"]
;-------------
[iscript]

tyrano.plugin.kag.variable.tf.cook_item_stock = [];

for(i=1;i<=f.cook_item_list.length;i++){

   if(typeof f.cook_item_stock[i]==='undefined'){
tyrano.plugin.kag.variable.tf.cook_item_stock.push(0)
   }else{
tyrano.plugin.kag.variable.tf.cook_item_stock.push(this.kag.stat.f["cook_item_stock"][i])
   }

 
}
[endscript]

[eval exp="tf.item_len=f.cook_item_list.length"]
[eval exp="tf.item_stock=0"]
[eval exp="tf.item_stock=f.cook_item_stock"]
[stock_nyuryoku]

[eval exp="tf.item_list=f.cook_item_list"]
[eval exp="tf.item_value=0"]
[value_nyuryoku]

[iscript]

tyrano.plugin.kag.variable.tf.store_item_value = [];


for(i=0;i<f.cook_item_list.length;i++){
	 tyrano.plugin.kag.variable.tf.store_item_value[i] = tyrano.plugin.kag.variable.tf.value[i];

}

[endscript]


[endmacro]








[return]