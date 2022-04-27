*trush



*equip_item_1_trush
[cm]
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

[clearfix name="equip"]
[free name="key" layer=2][item_suuti_delete]

[jump storage="equip_item_hyouji.ks" target=*item_hyouji2_trush]

*cook_item_1_trush

[cm]
[cook_item_trush]
[clearfix name="cook"]
[free name="key" layer=2][item_suuti_delete]
[jump storage="cook_item_hyouji.ks" target=*item_hyouji2_trush]





*battle_item_1_trush
[cm]
[battle_item_trush]
[clearfix name="battle"]
[free name="key" layer=2][item_suuti_delete]
[eval exp="tf.trush_sumi=1"]
[jump storage="battle_item_hyouji.ks" target=*item_hyouji2_trush]

*other_item_1_trush
[cm]
[other_item_trush][clearfix name="other"]
[free name="key" layer=2][item_suuti_delete]
[jump storage="other_item_hyouji.ks" target=*item_hyouji2_trush]




[return]



