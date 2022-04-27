*trush



*process_item_1_trush
[cm]
[eval exp="tf.stock_memori=0"]
[iscript]

if(tf.item_battle_hyouji===1){

tf.item_list = f.battle_item_list;

}else if(tf.item_equip_hyouji===1){

tf.item_list = f.equip_item_list;

}else if(tf.item_cook_hyouji===1){

tf.item_list = f.cook_item_list;

}else if(tf.item_other_hyouji===1){

tf.item_list = f.other_item_list;

}



for(a=1;a<=tf.item_list.length;a++){
   if(tyrano.plugin.kag.variable.tf.process_trush_value==a){
      for(i=1;i<=tf.item_list.length;i++){
if(tyrano.plugin.kag.variable.tf.process_item_number[a]==i){

            if(tf.item_equip_hyouji===1){
              this.kag.stat.f["equip_item_stock"][i]-=1;
               tf.stock_memori = this.kag.stat.f["equip_item_stock"][i];

            }else if(tf.item_battle_hyouji===1){
                this.kag.stat.f["battle_item_stock"][i]-=1;
                tf.stock_memori = this.kag.stat.f["battle_item_stock"][i];
            }else if(tf.item_cook_hyouji===1){
                this.kag.stat.f["cook_item_stock"][i]-=1;
                tf.stock_memori = this.kag.stat.f["cook_item_stock"][i];
            }else if(tf.item_other_hyouji===1){
                this.kag.stat.f["other_item_stock"][i]-=1;
                tf.stock_memori = this.kag.stat.f["other_item_stock"][i];
            }
            



         }
      }
   }
}
[endscript]

[clearfix name="process"]
[free name="key" layer=2][item_suuti_delete]
[jump storage="scenario_2/item_hyouji.ks" target=*item_hyouji2_trush]




[return]



