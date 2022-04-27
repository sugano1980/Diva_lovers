


[macro name="confirm_value"]
[iscript]
tyrano.plugin.kag.variable.tf.equip_item_value_no =[];




tyrano.plugin.kag.variable.tf.equip_item_value_all= this.kag.stat.f["equip_item_list"].map(function(x) {return x.value})

[endscript]

[endmacro]




;--------------------------------------------

[macro name="confirm_cook_value"]
[iscript]
tyrano.plugin.kag.variable.tf.cook_item_value_no =[];

tyrano.plugin.kag.variable.tf.cook_item_value_all= this.kag.stat.f["cook_item_list"].map(function(x) {return x.value})

[endscript]

[endmacro]





[macro name="confirm_battle_value"]
[iscript]
tyrano.plugin.kag.variable.tf.battle_item_value_no =[];

tyrano.plugin.kag.variable.tf.battle_item_value_all= this.kag.stat.f["battle_item_list"].map(function(x) {return x.value})

[endscript]
[endmacro]


[macro name="confirm_other_value"]
[iscript]
tyrano.plugin.kag.variable.tf.other_item_value_no =[];

tyrano.plugin.kag.variable.tf.other_item_value_all= this.kag.stat.f["other_item_list"].map(function(x) {return x.value})

[endscript]


[endmacro]









[return]