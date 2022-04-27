
[macro name="product_data_macro"]
;商品データダウンロード
;商品のデータをダウンロード
[call storage="item/equip_item_data.ks"]
;名前と値段
;所持数
[if exp="f.store_equip_1==1]

[iscript]
tf.store_item_1_name = f.equip_item_1.name;
tf.store_item_1_type = f.equip_item_1.type;
tf.store_item_1_value = f.equip_item_1.value;
tf.store_item_1_explain =  f.equip_item_1.explain;
tf.store_item_1_number =  f.equip_item_1.number;
tf.store_item_1_parameter_1 = f.equip_item_1.parameter_1;
tf.store_item_1_parameter_2 = f.equip_item_1.parameter_2;
tf.store_item_1_parameter_3 = f.equip_item_1.parameter_3;
tf.store_item_1_effect_1_number = f.equip_item_1.effect_1_number;
tf.store_item_1_effect_2_number = f.equip_item_1.effect_2_number;
tf.store_item_1_effect_3_number = f.equip_item_1.effect_3_number;


[endscript]

[eval exp="tf.store_item_1_stock=f.equip_item_1_stock"]

[endif]


[if exp="f.store_equip_2==1]


[iscript]
tf.store_item_2_name = f.equip_item_2.name;
tf.store_item_2_type = f.equip_item_2.type;
tf.store_item_2_value = f.equip_item_2.value;
tf.store_item_2_explain =  f.equip_item_2.explain;
tf.store_item_2_number =  f.equip_item_2.number;
tf.store_item_2_parameter_1 = f.equip_item_2.parameter_1;
tf.store_item_2_parameter_2 = f.equip_item_2.parameter_2;
tf.store_item_2_parameter_3 = f.equip_item_2.parameter_3;
tf.store_item_2_effect_1_number = f.equip_item_2.effect_1_number;
tf.store_item_2_effect_2_number = f.equip_item_2.effect_2_number;
tf.store_item_2_effect_3_number = f.equip_item_2.effect_3_number;


[endscript]

[eval exp="tf.store_item_2_stock=f.equip_item_2_stock"]

[endif]


[if exp="f.store_equip_3==1]


[iscript]
tf.store_item_3_name = f.equip_item_3.name;
tf.store_item_3_type = f.equip_item_3.type;
tf.store_item_3_value = f.equip_item_3.value;
tf.store_item_3_explain =  f.equip_item_3.explain;
tf.store_item_3_number =  f.equip_item_3.number;
tf.store_item_3_parameter_1 = f.equip_item_3.parameter_1;
tf.store_item_3_parameter_2 = f.equip_item_3.parameter_2;
tf.store_item_3_parameter_3 = f.equip_item_3.parameter_3;
tf.store_item_3_effect_1_number = f.equip_item_3.effect_1_number;
tf.store_item_3_effect_2_number = f.equip_item_3.effect_2_number;
tf.store_item_3_effect_3_number = f.equip_item_3.effect_3_number;


[endscript]

[eval exp="tf.store_item_3_stock=f.equip_item_3_stock"]

[endif]


[if exp="f.store_equip_4==1]


[iscript]
tf.store_item_4_name = f.equip_item_4.name;
tf.store_item_4_type = f.equip_item_4.type;
tf.store_item_4_value = f.equip_item_4.value;
tf.store_item_4_explain =  f.equip_item_4.explain;
tf.store_item_4_number =  f.equip_item_4.number;
tf.store_item_4_parameter_1 = f.equip_item_1.parameter_1;
tf.store_item_4_parameter_2 = f.equip_item_1.parameter_2;
tf.store_item_4_parameter_3 = f.equip_item_1.parameter_3;
tf.store_item_4_effect_1_number = f.equip_item_4.effect_1_number;
tf.store_item_4_effect_2_number = f.equip_item_4.effect_2_number;
tf.store_item_4_effect_3_number = f.equip_item_4.effect_3_number;

[endscript]

[eval exp="tf.store_item_4_stock=f.equip_item_4_stock"]

[endif]

[if exp="f.store_equip_5==1]


[iscript]
tf.store_item_5_name = f.equip_item_5.name;
tf.store_item_5_type = f.equip_item_5.type;
tf.store_item_5_value = f.equip_item_5.value;
tf.store_item_5_explain =  f.equip_item_5.explain;
tf.store_item_5_number =  f.equip_item_5.number;
tf.store_item_5_parameter_1 = f.equip_item_5.parameter_1;
tf.store_item_5_parameter_2 = f.equip_item_5.parameter_2;
tf.store_item_5_parameter_3 = f.equip_item_5.parameter_3;
tf.store_item_5_effect_1_number = f.equip_item_5.effect_1_number;
tf.store_item_5_effect_2_number = f.equip_item_5.effect_2_number;
tf.store_item_5_effect_3_number = f.equip_item_5.effect_3_number;

[endscript]

[eval exp="tf.store_item_5_stock=f.equip_item_5_stock"]

[endif]

[if exp="f.store_equip_6==1]


[iscript]
tf.store_item_6_name = f.equip_item_6.name;
tf.store_item_6_type = f.equip_item_6.type;
tf.store_item_6_value = f.equip_item_6.value;
tf.store_item_6_explain =  f.equip_item_6.explain;
tf.store_item_6_number =  f.equip_item_6.number;
tf.store_item_6_parameter_1 = f.equip_item_6.parameter_1;
tf.store_item_6_parameter_2 = f.equip_item_6.parameter_2;
tf.store_item_6_parameter_3 = f.equip_item_6.parameter_3;
tf.store_item_6_effect_1_number = f.equip_item_6.effect_1_number;
tf.store_item_6_effect_2_number = f.equip_item_6.effect_2_number;
tf.store_item_6_effect_3_number = f.equip_item_6.effect_3_number;

[endscript]


[eval exp="tf.store_item_6_stock=f.equip_item_6_stock"]

[endif]

[if exp="f.store_equip_7==1]


[iscript]
tf.store_item_7_name = f.equip_item_7.name;
tf.store_item_7_type = f.equip_item_7.type;
tf.store_item_7_value = f.equip_item_7.value;
tf.store_item_7_explain =  f.equip_item_7.explain;
tf.store_item_7_number =  f.equip_item_7.number;
tf.store_item_7_parameter_1 = f.equip_item_7.parameter_1;
tf.store_item_7_parameter_2 = f.equip_item_7.parameter_2;
tf.store_item_7_parameter_3 = f.equip_item_7.parameter_3;
tf.store_item_7_effect_1_number = f.equip_item_7.effect_1_number;
tf.store_item_7_effect_2_number = f.equip_item_7.effect_2_number;
tf.store_item_7_effect_3_number = f.equip_item_7.effect_3_number;

[endscript]

[eval exp="tf.store_item_7_stock=f.equip_item_7_stock"]

[endif]

[if exp="f.store_equip_8==1]


[iscript]
tf.store_item_8_name = f.equip_item_8.name;
tf.store_item_8_type = f.equip_item_8.type;
tf.store_item_8_value = f.equip_item_8.value;
tf.store_item_8_explain =  f.equip_item_8.explain;
tf.store_item_8_number =  f.equip_item_8.number;
tf.store_item_8_parameter_1 = f.equip_item_8.parameter_1;
tf.store_item_8_parameter_2 = f.equip_item_8.parameter_2;
tf.store_item_8_parameter_3 = f.equip_item_8.parameter_3;
tf.store_item_8_effect_1_number = f.equip_item_8.effect_1_number;
tf.store_item_8_effect_2_number = f.equip_item_8.effect_2_number;
tf.store_item_8_effect_3_number = f.equip_item_8.effect_3_number;

[endscript]

[eval exp="tf.store_item_8_stock=f.equip_item_8_stock"]

[endif]

[if exp="f.store_equip_9==1]


[iscript]
tf.store_item_9_name = f.equip_item_9.name;
tf.store_item_9_type = f.equip_item_9.type;
tf.store_item_9_value = f.equip_item_9.value;
tf.store_item_9_explain =  f.equip_item_9.explain;
tf.store_item_9_number =  f.equip_item_9.number;
tf.store_item_9_parameter_1 = f.equip_item_9.parameter_1;
tf.store_item_9_parameter_2 = f.equip_item_9.parameter_2;
tf.store_item_9_parameter_3 = f.equip_item_9.parameter_3;
tf.store_item_9_effect_1_number = f.equip_item_9.effect_1_number;
tf.store_item_9_effect_2_number = f.equip_item_9.effect_2_number;
tf.store_item_9_effect_3_number = f.equip_item_9.effect_3_number;

[endscript]

[eval exp="tf.store_item_9_stock=f.equip_item_9_stock"]

[endif]

[if exp="f.store_equip_10==1]


[iscript]
tf.store_item_10_name = f.equip_item_10.name;
tf.store_item_10_type = f.equip_item_10.type;
tf.store_item_10_value = f.equip_item_10.value;
tf.store_item_10_explain =  f.equip_item_10.explain;
tf.store_item_10_number =  f.equip_item_10.number;
tf.store_item_10_parameter_1 = f.equip_item_10.parameter_1;
tf.store_item_10_parameter_2 = f.equip_item_10.parameter_2;
tf.store_item_10_parameter_3 = f.equip_item_10.parameter_3;
tf.store_item_10_effect_1_number = f.equip_item_10.effect_1_number;
tf.store_item_10_effect_2_number = f.equip_item_10.effect_2_number;
tf.store_item_10_effect_3_number = f.equip_item_10.effect_3_number;


[endscript]

[eval exp="tf.store_item_10_stock=f.equip_item_10_stock"]

[endif]


[if exp="f.store_equip_11==1]


[iscript]
tf.store_item_11_name = f.equip_item_11.name;
tf.store_item_11_type = f.equip_item_11.type;
tf.store_item_11_value = f.equip_item_11.value;
tf.store_item_11_explain =  f.equip_item_11.explain;
tf.store_item_11_number =  f.equip_item_11.number;
tf.store_item_11_parameter_1 = f.equip_item_11.parameter_1;
tf.store_item_11_parameter_2 = f.equip_item_11.parameter_2;
tf.store_item_11_parameter_3 = f.equip_item_11.parameter_3;
tf.store_item_11_effect_1_number = f.equip_item_11.effect_1_number;
tf.store_item_11_effect_2_number = f.equip_item_11.effect_2_number;
tf.store_item_11_effect_3_number = f.equip_item_11.effect_3_number;

[endscript]

[eval exp="tf.store_item_11_stock=f.equip_item_11_stock"]
[endif]

[if exp="f.store_equip_12==1]


[iscript]
tf.store_item_12_name = f.equip_item_12.name;
tf.store_item_12_type = f.equip_item_12.type;
tf.store_item_12_value = f.equip_item_12.value;
tf.store_item_12_explain =  f.equip_item_12.explain;
tf.store_item_12_number =  f.equip_item_12.number;
tf.store_item_12_parameter_1 = f.equip_item_12.parameter_1;
tf.store_item_12_parameter_2 = f.equip_item_12.parameter_2;
tf.store_item_12_parameter_3 = f.equip_item_12.parameter_3;
tf.store_item_12_effect_1_number = f.equip_item_12.effect_1_number;
tf.store_item_12_effect_2_number = f.equip_item_12.effect_2_number;
tf.store_item_12_effect_3_number = f.equip_item_12.effect_3_number;

[endscript]

[eval exp="tf.store_item_12_stock=f.equip_item_12_stock"][endif]

[if exp="f.store_equip_13==1]


[iscript]
tf.store_item_13_name = f.equip_item_13.name;
tf.store_item_13_type = f.equip_item_13.type;
tf.store_item_13_value = f.equip_item_13.value;
tf.store_item_13_explain =  f.equip_item_13.explain;
tf.store_item_13_number =  f.equip_item_13.number;
tf.store_item_13_parameter_1 = f.equip_item_13.parameter_1;
tf.store_item_13_parameter_2 = f.equip_item_13.parameter_2;
tf.store_item_13_parameter_3 = f.equip_item_13.parameter_3;
tf.store_item_13_effect_1_number = f.equip_item_13.effect_1_number;
tf.store_item_13_effect_2_number = f.equip_item_13.effect_2_number;
tf.store_item_13_effect_3_number = f.equip_item_13.effect_3_number;

[endscript]

[eval exp="tf.store_item_13_stock=f.equip_item_13_stock"][endif]

[if exp="f.store_equip_14==1]


[iscript]
tf.store_item_14_name = f.equip_item_14.name;
tf.store_item_14_type = f.equip_item_14.type;
tf.store_item_14_value = f.equip_item_14.value;
tf.store_item_14_explain =  f.equip_item_14.explain;
tf.store_item_14_number =  f.equip_item_14.number;
tf.store_item_14_parameter_1 = f.equip_item_14.parameter_1;
tf.store_item_14_parameter_2 = f.equip_item_14.parameter_2;
tf.store_item_14_parameter_3 = f.equip_item_14.parameter_3;
tf.store_item_14_effect_1_number = f.equip_item_14.effect_1_number;
tf.store_item_14_effect_2_number = f.equip_item_14.effect_2_number;
tf.store_item_14_effect_3_number = f.equip_item_14.effect_3_number;

[endscript]

[eval exp="tf.store_item_14_stock=f.equip_item_14_stock"][endif]

[if exp="f.store_equip_15==1]


[iscript]
tf.store_item_15_name = f.equip_item_15.name;
tf.store_item_15_type = f.equip_item_15.type;
tf.store_item_15_value = f.equip_item_15.value;
tf.store_item_15_explain =  f.equip_item_15.explain;
tf.store_item_15_number =  f.equip_item_15.number;
tf.store_item_15_parameter_1 = f.equip_item_15.parameter_1;
tf.store_item_15_parameter_2 = f.equip_item_15.parameter_2;
tf.store_item_15_parameter_3 = f.equip_item_15.parameter_3;
tf.store_item_15_effect_1_number = f.equip_item_15.effect_1_number;
tf.store_item_15_effect_2_number = f.equip_item_15.effect_2_number;
tf.store_item_15_effect_3_number = f.equip_item_15.effect_3_number;

[endscript]

[eval exp="tf.store_item_15_stock=f.equip_item_15_stock"][endif]

[if exp="f.store_equip_16==1]


[iscript]
tf.store_item_16_name = f.equip_item_16.name;
tf.store_item_16_type = f.equip_item_16.type;
tf.store_item_16_value = f.equip_item_16.value;
tf.store_item_16_explain =  f.equip_item_16.explain;
tf.store_item_16_number =  f.equip_item_16.number;
tf.store_item_16_parameter_1 = f.equip_item_16.parameter_1;
tf.store_item_16_parameter_2 = f.equip_item_16.parameter_2;
tf.store_item_16_parameter_3 = f.equip_item_16.parameter_3;
tf.store_item_16_effect_1_number = f.equip_item_16.effect_1_number;
tf.store_item_16_effect_2_number = f.equip_item_16.effect_2_number;
tf.store_item_16_effect_3_number = f.equip_item_16.effect_3_number;

[endscript]

[eval exp="tf.store_item_16_stock=f.equip_item_16_stock"][endif]

[if exp="f.store_equip_17==1]


[iscript]
tf.store_item_17_name = f.equip_item_17.name;
tf.store_item_17_type = f.equip_item_17.type;
tf.store_item_17_value = f.equip_item_17.value;
tf.store_item_17_explain =  f.equip_item_17.explain;
tf.store_item_17_number =  f.equip_item_17.number;
tf.store_item_17_parameter_1 = f.equip_item_17.parameter_1;
tf.store_item_17_parameter_2 = f.equip_item_17.parameter_2;
tf.store_item_17_parameter_3 = f.equip_item_17.parameter_3;
tf.store_item_17_effect_1_number = f.equip_item_17.effect_1_number;
tf.store_item_17_effect_2_number = f.equip_item_17.effect_2_number;
tf.store_item_17_effect_3_number = f.equip_item_17.effect_3_number;

[endscript]

[eval exp="tf.store_item_17_stock=f.equip_item_17_stock"][endif]

[if exp="f.store_equip_18==1]


[iscript]
tf.store_item_18_name = f.equip_item_18.name;
tf.store_item_18_type = f.equip_item_18.type;
tf.store_item_18_value = f.equip_item_18.value;
tf.store_item_18_explain =  f.equip_item_18.explain;
tf.store_item_18_number =  f.equip_item_18.number;
tf.store_item_18_parameter_1 = f.equip_item_18.parameter_1;
tf.store_item_18_parameter_2 = f.equip_item_18.parameter_2;
tf.store_item_18_parameter_3 = f.equip_item_18.parameter_3;
tf.store_item_18_effect_1_number = f.equip_item_18.effect_1_number;
tf.store_item_18_effect_2_number = f.equip_item_18.effect_2_number;
tf.store_item_18_effect_3_number = f.equip_item_18.effect_3_number;

[endscript]

[eval exp="tf.store_item_18_stock=f.equip_item_18_stock"][endif]

[if exp="f.store_equip_19==1]


[iscript]
tf.store_item_19_name = f.equip_item_19.name;
tf.store_item_19_type = f.equip_item_19.type;
tf.store_item_19_value = f.equip_item_19.value;
tf.store_item_19_explain =  f.equip_item_19.explain;
tf.store_item_19_number =  f.equip_item_19.number;
tf.store_item_19_parameter_1 = f.equip_item_19.parameter_1;
tf.store_item_19_parameter_2 = f.equip_item_19.parameter_2;
tf.store_item_19_parameter_3 = f.equip_item_19.parameter_3;
tf.store_item_19_effect_1_number = f.equip_item_19.effect_1_number;
tf.store_item_19_effect_2_number = f.equip_item_19.effect_2_number;
tf.store_item_19_effect_3_number = f.equip_item_19.effect_3_number;

[endscript]

[eval exp="tf.store_item_19_stock=f.equip_item_19_stock"][endif]

[if exp="f.store_equip_20==1]


[iscript]
tf.store_item_20_name = f.equip_item_20.name;
tf.store_item_20_type = f.equip_item_20.type;
tf.store_item_20_value = f.equip_item_20.value;
tf.store_item_20_explain =  f.equip_item_20.explain;
tf.store_item_20_number =  f.equip_item_20.number;
tf.store_item_20_parameter_1 = f.equip_item_20.parameter_1;
tf.store_item_20_parameter_2 = f.equip_item_20.parameter_2;
tf.store_item_20_parameter_3 = f.equip_item_20.parameter_3;
tf.store_item_20_effect_1_number = f.equip_item_20.effect_1_number;
tf.store_item_20_effect_2_number = f.equip_item_20.effect_2_number;
tf.store_item_20_effect_3_number = f.equip_item_20.effect_3_number;

[endscript]

[eval exp="tf.store_item_20_stock=f.equip_item_20_stock"][endif]

[if exp="f.store_equip_21==1]


[iscript]
tf.store_item_21_name = f.equip_item_21.name;
tf.store_item_21_type = f.equip_item_21.type;
tf.store_item_21_value = f.equip_item_21.value;
tf.store_item_21_explain =  f.equip_item_21.explain;
tf.store_item_21_number =  f.equip_item_21.number;
tf.store_item_21_parameter_1 = f.equip_item_21.parameter_1;
tf.store_item_21_parameter_2 = f.equip_item_21.parameter_2;
tf.store_item_21_parameter_3 = f.equip_item_21.parameter_3;
tf.store_item_21_effect_1_number = f.equip_item_21.effect_1_number;
tf.store_item_21_effect_2_number = f.equip_item_21.effect_2_number;
tf.store_item_21_effect_3_number = f.equip_item_21.effect_3_number;

[endscript]

[eval exp="tf.store_item_21_stock=f.equip_item_21_stock"][endif]

[if exp="f.store_equip_22==1]


[iscript]
tf.store_item_22_name = f.equip_item_22.name;
tf.store_item_22_type = f.equip_item_22.type;
tf.store_item_22_value = f.equip_item_22.value;
tf.store_item_22_explain =  f.equip_item_22.explain;
tf.store_item_22_number =  f.equip_item_22.number;
tf.store_item_22_parameter_1 = f.equip_item_22.parameter_1;
tf.store_item_22_parameter_2 = f.equip_item_22.parameter_2;
tf.store_item_22_parameter_3 = f.equip_item_22.parameter_3;
tf.store_item_22_effect_1_number = f.equip_item_22.effect_1_number;
tf.store_item_22_effect_2_number = f.equip_item_22.effect_2_number;
tf.store_item_22_effect_3_number = f.equip_item_22.effect_3_number;

[endscript]

[eval exp="tf.store_item_22_stock=f.equip_item_22_stock"][endif]

[if exp="f.store_equip_23==1]


[iscript]
tf.store_item_23_name = f.equip_item_23.name;
tf.store_item_23_type = f.equip_item_23.type;
tf.store_item_23_value = f.equip_item_23.value;
tf.store_item_23_explain =  f.equip_item_23.explain;
tf.store_item_23_number =  f.equip_item_23.number;
tf.store_item_23_parameter_1 = f.equip_item_23.parameter_1;
tf.store_item_23_parameter_2 = f.equip_item_23.parameter_2;
tf.store_item_23_parameter_3 = f.equip_item_23.parameter_3;
tf.store_item_23_effect_1_number = f.equip_item_23.effect_1_number;
tf.store_item_23_effect_2_number = f.equip_item_23.effect_2_number;
tf.store_item_23_effect_3_number = f.equip_item_23.effect_3_number;

[endscript]

[eval exp="tf.store_item_23_stock=f.equip_item_23_stock"][endif]

[if exp="f.store_equip_24==1]


[iscript]
tf.store_item_24_name = f.equip_item_24.name;
tf.store_item_24_type = f.equip_item_24.type;
tf.store_item_24_value = f.equip_item_24.value;
tf.store_item_24_explain =  f.equip_item_24.explain;
tf.store_item_24_number =  f.equip_item_24.number;
tf.store_item_24_parameter_1 = f.equip_item_24.parameter_1;
tf.store_item_24_parameter_2 = f.equip_item_24.parameter_2;
tf.store_item_24_parameter_3 = f.equip_item_24.parameter_3;
tf.store_item_24_effect_1_number = f.equip_item_24.effect_1_number;
tf.store_item_24_effect_2_number = f.equip_item_24.effect_2_number;
tf.store_item_24_effect_3_number = f.equip_item_24.effect_3_number;

[endscript]

[eval exp="tf.store_item_24_stock=f.equip_item_24_stock"][endif]

[if exp="f.store_equip_25==1]


[iscript]
tf.store_item_25_name = f.equip_item_25.name;
tf.store_item_25_type = f.equip_item_25.type;
tf.store_item_25_value = f.equip_item_25.value;
tf.store_item_25_explain =  f.equip_item_25.explain;
tf.store_item_25_number =  f.equip_item_25.number;
tf.store_item_25_parameter_1 = f.equip_item_25.parameter_1;
tf.store_item_25_parameter_2 = f.equip_item_25.parameter_2;
tf.store_item_25_parameter_3 = f.equip_item_25.parameter_3;
tf.store_item_25_effect_1_number = f.equip_item_25.effect_1_number;
tf.store_item_25_effect_2_number = f.equip_item_25.effect_2_number;
tf.store_item_25_effect_3_number = f.equip_item_25.effect_3_number;

[endscript]

[eval exp="tf.store_item_25_stock=f.equip_item_25_stock"][endif]

[if exp="f.store_equip_26==1]


[iscript]
tf.store_item_26_name = f.equip_item_26.name;
tf.store_item_26_type = f.equip_item_26.type;
tf.store_item_26_value = f.equip_item_26.value;
tf.store_item_26_explain =  f.equip_item_26.explain;
tf.store_item_26_number =  f.equip_item_26.number;
tf.store_item_26_parameter_1 = f.equip_item_26.parameter_1;
tf.store_item_26_parameter_2 = f.equip_item_26.parameter_2;
tf.store_item_26_parameter_3 = f.equip_item_26.parameter_3;
tf.store_item_26_effect_1_number = f.equip_item_26.effect_1_number;
tf.store_item_26_effect_2_number = f.equip_item_26.effect_2_number;
tf.store_item_26_effect_3_number = f.equip_item_26.effect_3_number;

[endscript]

[eval exp="tf.store_item_26_stock=f.equip_item_26_stock"][endif]

[if exp="f.store_equip_27==1]


[iscript]
tf.store_item_27_name = f.equip_item_27.name;
tf.store_item_27_type = f.equip_item_27.type;
tf.store_item_27_value = f.equip_item_27.value;
tf.store_item_27_explain =  f.equip_item_27.explain;
tf.store_item_27_number =  f.equip_item_27.number;
tf.store_item_27_parameter_1 = f.equip_item_27.parameter_1;
tf.store_item_27_parameter_2 = f.equip_item_27.parameter_2;
tf.store_item_27_parameter_3 = f.equip_item_27.parameter_3;
tf.store_item_27_effect_1_number = f.equip_item_27.effect_1_number;
tf.store_item_27_effect_2_number = f.equip_item_27.effect_2_number;
tf.store_item_27_effect_3_number = f.equip_item_27.effect_3_number;

[endscript]

[eval exp="tf.store_item_27_stock=f.equip_item_27_stock"][endif]

[if exp="f.store_equip_28==1]


[iscript]
tf.store_item_28_name = f.equip_item_28.name;
tf.store_item_28_type = f.equip_item_28.type;
tf.store_item_28_value = f.equip_item_28.value;
tf.store_item_28_explain =  f.equip_item_28.explain;
tf.store_item_28_number =  f.equip_item_28.number;
tf.store_item_28_parameter_1 = f.equip_item_28.parameter_1;
tf.store_item_28_parameter_2 = f.equip_item_28.parameter_2;
tf.store_item_28_parameter_3 = f.equip_item_28.parameter_3;
tf.store_item_28_effect_1_number = f.equip_item_28.effect_1_number;
tf.store_item_28_effect_2_number = f.equip_item_28.effect_2_number;
tf.store_item_28_effect_3_number = f.equip_item_28.effect_3_number;

[endscript]

[eval exp="tf.store_item_28_stock=f.equip_item_28_stock"][endif]

[if exp="f.store_equip_29==1]


[iscript]
tf.store_item_29_name = f.equip_item_29.name;
tf.store_item_29_type = f.equip_item_29.type;
tf.store_item_29_value = f.equip_item_29.value;
tf.store_item_29_explain =  f.equip_item_29.explain;
tf.store_item_29_number =  f.equip_item_29.number;
tf.store_item_29_parameter_1 = f.equip_item_29.parameter_1;
tf.store_item_29_parameter_2 = f.equip_item_29.parameter_2;
tf.store_item_29_parameter_3 = f.equip_item_29.parameter_3;
tf.store_item_29_effect_1_number = f.equip_item_29.effect_1_number;
tf.store_item_29_effect_2_number = f.equip_item_29.effect_2_number;
tf.store_item_29_effect_3_number = f.equip_item_29.effect_3_number;

[endscript]

[eval exp="tf.store_item_29_stock=f.equip_item_29_stock"][endif]

[if exp="f.store_equip_30==1]


[iscript]
tf.store_item_30_name = f.equip_item_30.name;
tf.store_item_30_type = f.equip_item_30.type;
tf.store_item_30_value = f.equip_item_30.value;
tf.store_item_30_explain =  f.equip_item_30.explain;
tf.store_item_30_number =  f.equip_item_30.number;
tf.store_item_30_parameter_1 = f.equip_item_30.parameter_1;
tf.store_item_30_parameter_2 = f.equip_item_30.parameter_2;
tf.store_item_30_parameter_3 = f.equip_item_30.parameter_3;
tf.store_item_30_effect_1_number = f.equip_item_30.effect_1_number;
tf.store_item_30_effect_2_number = f.equip_item_30.effect_2_number;
tf.store_item_30_effect_3_number = f.equip_item_30.effect_3_number;

[endscript]

[eval exp="tf.store_item_30_stock=f.equip_item_30_stock"][endif]

[if exp="f.store_equip_31==1]


[iscript]
tf.store_item_31_name = f.equip_item_31.name;
tf.store_item_31_type = f.equip_item_31.type;
tf.store_item_31_value = f.equip_item_31.value;
tf.store_item_31_explain =  f.equip_item_31.explain;
tf.store_item_31_number =  f.equip_item_31.number;
tf.store_item_31_parameter_1 = f.equip_item_31.parameter_1;
tf.store_item_31_parameter_2 = f.equip_item_31.parameter_2;
tf.store_item_31_parameter_3 = f.equip_item_31.parameter_3;
tf.store_item_31_effect_1_number = f.equip_item_31.effect_1_number;
tf.store_item_31_effect_2_number = f.equip_item_31.effect_2_number;
tf.store_item_31_effect_3_number = f.equip_item_31.effect_3_number;

[endscript]

[eval exp="tf.store_item_31_stock=f.equip_item_31_stock"][endif]

[if exp="f.store_equip_32==1]


[iscript]
tf.store_item_32_name = f.equip_item_32.name;
tf.store_item_32_type = f.equip_item_32.type;
tf.store_item_32_value = f.equip_item_32.value;
tf.store_item_32_explain =  f.equip_item_32.explain;
tf.store_item_32_number =  f.equip_item_32.number;
tf.store_item_32_parameter_1 = f.equip_item_32.parameter_1;
tf.store_item_32_parameter_2 = f.equip_item_32.parameter_2;
tf.store_item_32_parameter_3 = f.equip_item_32.parameter_3;
tf.store_item_32_effect_1_number = f.equip_item_32.effect_1_number;
tf.store_item_32_effect_2_number = f.equip_item_32.effect_2_number;
tf.store_item_32_effect_3_number = f.equip_item_32.effect_3_number;

[endscript]

[eval exp="tf.store_item_32_stock=f.equip_item_32_stock"][endif]

[if exp="f.store_equip_33==1]


[iscript]
tf.store_item_33_name = f.equip_item_33.name;
tf.store_item_33_type = f.equip_item_33.type;
tf.store_item_33_value = f.equip_item_33.value;
tf.store_item_33_explain =  f.equip_item_33.explain;
tf.store_item_33_number =  f.equip_item_33.number;
tf.store_item_33_parameter_1 = f.equip_item_33.parameter_1;
tf.store_item_33_parameter_2 = f.equip_item_33.parameter_2;
tf.store_item_33_parameter_3 = f.equip_item_33.parameter_3;
tf.store_item_33_effect_1_number = f.equip_item_33.effect_1_number;
tf.store_item_33_effect_2_number = f.equip_item_33.effect_2_number;
tf.store_item_33_effect_3_number = f.equip_item_33.effect_3_number;

[endscript]

[eval exp="tf.store_item_33_stock=f.equip_item_33_stock"][endif]

[if exp="f.store_equip_34==1]


[iscript]
tf.store_item_34_name = f.equip_item_34.name;
tf.store_item_34_type = f.equip_item_34.type;
tf.store_item_34_value = f.equip_item_34.value;
tf.store_item_34_explain =  f.equip_item_34.explain;
tf.store_item_34_number =  f.equip_item_34.number;
tf.store_item_34_parameter_1 = f.equip_item_34.parameter_1;
tf.store_item_34_parameter_2 = f.equip_item_34.parameter_2;
tf.store_item_34_parameter_3 = f.equip_item_34.parameter_3;
tf.store_item_34_effect_1_number = f.equip_item_34.effect_1_number;
tf.store_item_34_effect_2_number = f.equip_item_34.effect_2_number;
tf.store_item_34_effect_3_number = f.equip_item_34.effect_3_number;

[endscript]

[eval exp="tf.store_item_34_stock=f.equip_item_34_stock"][endif]

[if exp="f.store_equip_35==1]


[iscript]
tf.store_item_35_name = f.equip_item_35.name;
tf.store_item_35_type = f.equip_item_35.type;
tf.store_item_35_value = f.equip_item_35.value;
tf.store_item_35_explain =  f.equip_item_35.explain;
tf.store_item_35_number =  f.equip_item_35.number;
tf.store_item_35_parameter_1 = f.equip_item_35.parameter_1;
tf.store_item_35_parameter_2 = f.equip_item_35.parameter_2;
tf.store_item_35_parameter_3 = f.equip_item_35.parameter_3;
tf.store_item_35_effect_1_number = f.equip_item_35.effect_1_number;
tf.store_item_35_effect_2_number = f.equip_item_35.effect_2_number;
tf.store_item_35_effect_3_number = f.equip_item_35.effect_3_number;

[endscript]

[eval exp="tf.store_item_35_stock=f.equip_item_35_stock"][endif]



;-------------

[endmacro]

;------------------------------------------------------------------------------------------------------------------------------





[macro name="store_product"]

;店の品揃え


;時期によって品揃えが違う

;戦争前
[if exp="f.store_season_1==1]

;店の品物数
[eval exp="f.store_item_number=10"]

;品揃えフラグ

;装備１のアイテムの場合
[eval exp="f.store_equip_1=0"]
;装備２のアイテムの場合
[eval exp="f.store_equip_2=0"]
;装備３のアイテムの場合
[eval exp="f.store_equip_3=1"]
[eval exp="f.store_equip_4=1"]
[eval exp="f.store_equip_5=0"]
[eval exp="f.store_equip_6=1"]
[eval exp="f.store_equip_7=1"]
[eval exp="f.store_equip_8=0"]
[eval exp="f.store_equip_9=0"]
[eval exp="f.store_equip_10=0"]
[eval exp="f.store_equip_11=0"]
[eval exp="f.store_equip_12=0"]
[eval exp="f.store_equip_13=0"]
[eval exp="f.store_equip_14=0"]
[eval exp="f.store_equip_15=0"]
[eval exp="f.store_equip_16=0"]
[eval exp="f.store_equip_17=0"]
[eval exp="f.store_equip_18=0"]
[eval exp="f.store_equip_19=0"]
[eval exp="f.store_equip_20=0"]
[eval exp="f.store_equip_21=0"]
[eval exp="f.store_equip_22=0"]
[eval exp="f.store_equip_23=0"]
[eval exp="f.store_equip_24=0"]
[eval exp="f.store_equip_25=0"]
[eval exp="f.store_equip_26=0"]
[eval exp="f.store_equip_27=0"]
[eval exp="f.store_equip_28=0"]
[eval exp="f.store_equip_29=0"]
[eval exp="f.store_equip_30=0"]
[eval exp="f.store_equip_31=0"]
[eval exp="f.store_equip_32=0"]
[eval exp="f.store_equip_33=0"]
[eval exp="f.store_equip_34=0"]
[eval exp="f.store_equip_35=0"]




;-----------------------------------------------------------------------------------------------------------------------
;フラグに沿って商品データを代入
[product_data_macro]


;---------------------------------------------------------------------------------------------------------------------
;戦争後
[elsif exp="f.store_season_2==1]
[eval exp="f.store_item_number=10"]

;騎士団解散後
[elsif exp="f.store_season_3==1]
[eval exp="f.store_item_number=10"]

[endif]

[endmacro]




;お金を減らす処理
[macro name="money_siharai_1"]

[if exp="tf.store_item_number_1==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_1==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_1==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_1==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_1==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_1==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_1==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_1==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_1==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_1==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_1==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_1==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_1==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_1==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_1==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_1==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_1==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_1==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_1==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_1==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_1==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_1==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_1==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_1==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_1==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_1==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_1==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_1==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_1==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_1==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_1==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_1==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_1==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_1==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_1==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]

[macro name="money_siharai_2"]

[if exp="tf.store_item_number_2==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_2==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_2==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_2==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_2==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_2==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_2==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_2==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_2==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_2==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_2==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_2==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_2==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_2==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_2==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_2==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_2==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_2==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_2==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_2==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_2==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_2==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_2==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_2==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_2==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_2==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_2==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_2==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_2==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_2==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_2==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_2==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_2==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_2==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_2==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_3"]

[if exp="tf.store_item_number_3==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_3==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_3==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_3==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_3==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_3==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_3==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_3==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_3==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_3==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_3==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_3==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_3==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_3==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_3==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_3==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_3==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_3==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_3==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_3==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_3==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_3==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_3==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_3==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_3==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_3==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_3==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_3==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_3==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_3==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_3==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_3==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_3==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_3==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_3==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]

[macro name="money_siharai_4"]

[if exp="tf.store_item_number_4==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_4==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_4==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_4==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_4==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_4==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_4==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_4==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_4==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_4==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_4==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_4==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_4==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_4==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_4==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_4==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_4==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_4==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_4==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_4==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_4==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_4==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_4==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_4==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_4==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_4==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_4==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_4==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_4==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_4==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_4==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_4==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_4==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_4==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_4==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_5"]

[if exp="tf.store_item_number_5==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_5==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_5==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_5==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_5==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_5==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_5==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_5==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_5==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_5==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_5==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_5==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_5==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_5==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_5==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_5==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_5==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_5==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_5==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_5==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_5==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_5==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_5==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_5==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_5==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_5==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_5==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_5==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_5==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_5==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_5==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_5==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_5==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_5==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_5==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_6"]

[if exp="tf.store_item_number_6==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_6==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_6==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_6==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_6==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_6==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_6==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_6==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_6==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_6==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_6==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_6==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_6==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_6==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_6==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_6==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_6==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_6==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_6==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_6==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_6==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_6==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_6==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_6==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_6==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_6==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_6==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_6==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_6==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_6==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_6==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_6==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_6==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_6==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_6==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_7"]

[if exp="tf.store_item_number_7==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_7==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_7==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_7==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_7==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_7==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_7==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_7==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_7==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_7==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_7==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_7==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_7==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_7==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_7==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_7==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_7==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_7==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_7==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_7==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_7==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_7==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_7==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_7==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_7==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_7==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_7==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_7==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_7==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_7==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_7==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_7==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_7==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_7==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_7==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]

[macro name="money_siharai_8"]

[if exp="tf.store_item_number_8==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_8==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_8==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_8==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_8==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_8==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_8==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_8==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_8==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_8==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_8==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_8==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_8==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_8==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_8==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_8==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_8==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_8==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_8==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_8==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_8==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_8==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_8==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_8==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_8==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_8==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_8==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_8==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_8==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_8==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_8==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_8==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_8==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_8==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_8==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_9"]

[if exp="tf.store_item_number_9==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_9==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_9==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_9==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_9==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_9==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_9==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_9==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_9==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_9==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_9==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_9==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_9==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_9==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_9==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_9==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_9==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_9==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_9==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_9==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_9==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_9==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_9==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_9==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_9==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_9==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_9==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_9==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_9==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_9==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_9==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_9==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_9==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_9==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_9==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]


[macro name="money_siharai_10"]

[if exp="tf.store_item_number_10==1"][eval exp="f.money=f.money-tf.store_item_1_value"]
[elsif exp="tf.store_item_number_10==2"][eval exp="f.money=f.money-tf.store_item_2_value"]
[elsif exp="tf.store_item_number_10==3"][eval exp="f.money=f.money-tf.store_item_3_value"]
[elsif exp="tf.store_item_number_10==4"][eval exp="f.money=f.money-tf.store_item_4_value"]
[elsif exp="tf.store_item_number_10==5"][eval exp="f.money=f.money-tf.store_item_5_value"]
[elsif exp="tf.store_item_number_10==6"][eval exp="f.money=f.money-tf.store_item_6_value"]
[elsif exp="tf.store_item_number_10==7"][eval exp="f.money=f.money-tf.store_item_7_value"]
[elsif exp="tf.store_item_number_10==8"][eval exp="f.money=f.money-tf.store_item_8_value"]
[elsif exp="tf.store_item_number_10==9"][eval exp="f.money=f.money-tf.store_item_9_value"]
[elsif exp="tf.store_item_number_10==10"][eval exp="f.money=f.money-tf.store_item_10_value"]
[elsif exp="tf.store_item_number_10==11"][eval exp="f.money=f.money-tf.store_item_11_value"]
[elsif exp="tf.store_item_number_10==12"][eval exp="f.money=f.money-tf.store_item_12_value"]
[elsif exp="tf.store_item_number_10==13"][eval exp="f.money=f.money-tf.store_item_13_value"]
[elsif exp="tf.store_item_number_10==14"][eval exp="f.money=f.money-tf.store_item_14_value"]
[elsif exp="tf.store_item_number_10==15"][eval exp="f.money=f.money-tf.store_item_15_value"]
[elsif exp="tf.store_item_number_10==16"][eval exp="f.money=f.money-tf.store_item_16_value"]
[elsif exp="tf.store_item_number_10==17"][eval exp="f.money=f.money-tf.store_item_17_value"]
[elsif exp="tf.store_item_number_10==18"][eval exp="f.money=f.money-tf.store_item_18_value"]
[elsif exp="tf.store_item_number_10==19"][eval exp="f.money=f.money-tf.store_item_19_value"]
[elsif exp="tf.store_item_number_10==20"][eval exp="f.money=f.money-tf.store_item_20_value"]
[elsif exp="tf.store_item_number_10==21"][eval exp="f.money=f.money-tf.store_item_21_value"]
[elsif exp="tf.store_item_number_10==22"][eval exp="f.money=f.money-tf.store_item_22_value"]
[elsif exp="tf.store_item_number_10==23"][eval exp="f.money=f.money-tf.store_item_23_value"]
[elsif exp="tf.store_item_number_10==24"][eval exp="f.money=f.money-tf.store_item_24_value"]
[elsif exp="tf.store_item_number_10==25"][eval exp="f.money=f.money-tf.store_item_25_value"]
[elsif exp="tf.store_item_number_10==26"][eval exp="f.money=f.money-tf.store_item_26_value"]
[elsif exp="tf.store_item_number_10==27"][eval exp="f.money=f.money-tf.store_item_27_value"]
[elsif exp="tf.store_item_number_10==28"][eval exp="f.money=f.money-tf.store_item_28_value"]
[elsif exp="tf.store_item_number_10==29"][eval exp="f.money=f.money-tf.store_item_29_value"]
[elsif exp="tf.store_item_number_10==30"][eval exp="f.money=f.money-tf.store_item_30_value"]
[elsif exp="tf.store_item_number_10==31"][eval exp="f.money=f.money-tf.store_item_31_value"]
[elsif exp="tf.store_item_number_10==32"][eval exp="f.money=f.money-tf.store_item_32_value"]
[elsif exp="tf.store_item_number_10==33"][eval exp="f.money=f.money-tf.store_item_33_value"]
[elsif exp="tf.store_item_number_10==34"][eval exp="f.money=f.money-tf.store_item_34_value"]
[elsif exp="tf.store_item_number_10==35"][eval exp="f.money=f.money-tf.store_item_35_value"]

[endif]


[endmacro]












;アイテム増
[macro name="item_get_1"]

[if exp="tf.store_item_number_1==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_1==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_1==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_1==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_1==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_1==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_1==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_1==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_1==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_1==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_1==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_1==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_1==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_1==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_1==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_1==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_1==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_1==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_1==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_1==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_1==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_1==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_1==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_1==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_1==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_1==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_1==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_1==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_1==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_1==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_1==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_1==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_1==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_1==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_1==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_2"]

[if exp="tf.store_item_number_2==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_2==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_2==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_2==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_2==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_2==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_2==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_2==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_2==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_2==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_2==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_2==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_2==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_2==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_2==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_2==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_2==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_2==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_2==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_2==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_2==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_2==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_2==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_2==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_2==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_2==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_2==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_2==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_2==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_2==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_2==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_2==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_2==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_2==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_2==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]

[macro name="item_get_3"]

[if exp="tf.store_item_number_3==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_3==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_3==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_3==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_3==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_3==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_3==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_3==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_3==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_3==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_3==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_3==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_3==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_3==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_3==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_3==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_3==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_3==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_3==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_3==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_3==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_3==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_3==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_3==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_3==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_3==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_3==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_3==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_3==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_3==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_3==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_3==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_3==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_3==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_3==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_4"]

[if exp="tf.store_item_number_4==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_4==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_4==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_4==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_4==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_4==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_4==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_4==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_4==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_4==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_4==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_4==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_4==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_4==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_4==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_4==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_4==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_4==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_4==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_4==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_4==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_4==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_4==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_4==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_4==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_4==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_4==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_4==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_4==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_4==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_4==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_4==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_4==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_4==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_4==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_5"]

[if exp="tf.store_item_number_5==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_5==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_5==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_5==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_5==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_5==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_5==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_5==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_5==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_5==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_5==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_5==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_5==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_5==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_5==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_5==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_5==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_5==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_5==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_5==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_5==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_5==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_5==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_5==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_5==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_5==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_5==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_5==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_5==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_5==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_5==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_5==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_5==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_5==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_5==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_6"]

[if exp="tf.store_item_number_6==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_6==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_6==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_6==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_6==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_6==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_6==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_6==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_6==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_6==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_6==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_6==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_6==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_6==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_6==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_6==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_6==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_6==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_6==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_6==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_6==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_6==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_6==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_6==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_6==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_6==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_6==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_6==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_6==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_6==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_6==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_6==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_6==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_6==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_6==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_7"]

[if exp="tf.store_item_number_7==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_7==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_7==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_7==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_7==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_7==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_7==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_7==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_7==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_7==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_7==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_7==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_7==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_7==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_7==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_7==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_7==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_7==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_7==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_7==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_7==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_7==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_7==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_7==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_7==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_7==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_7==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_7==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_7==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_7==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_7==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_7==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_7==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_7==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_7==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_8"]

[if exp="tf.store_item_number_8==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_8==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_8==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_8==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_8==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_8==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_8==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_8==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_8==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_8==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_8==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_8==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_8==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_8==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_8==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_8==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_8==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_8==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_8==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_8==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_8==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_8==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_8==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_8==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_8==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_8==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_8==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_8==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_8==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_8==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_8==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_8==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_8==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_8==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_8==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]


[macro name="item_get_9"]

[if exp="tf.store_item_number_9==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_9==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_9==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_9==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_9==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_9==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_9==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_9==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_9==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_9==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_9==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_9==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_9==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_9==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_9==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_9==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_9==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_9==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_9==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_9==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_9==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_9==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_9==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_9==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_9==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_9==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_9==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_9==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_9==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_9==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_9==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_9==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_9==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_9==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_9==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]





[endmacro]


[macro name="item_get_10"]

[if exp="tf.store_item_number_10==1"][eval exp="f.equip_item_1_stock=f.equip_item_1_stock+1"]
[elsif exp="tf.store_item_number_10==2"][eval exp="f.equip_item_2_stock=f.equip_item_2_stock+1"]
[elsif exp="tf.store_item_number_10==3"][eval exp="f.equip_item_3_stock=f.equip_item_3_stock+1"]
[elsif exp="tf.store_item_number_10==4"][eval exp="f.equip_item_4_stock=f.equip_item_4_stock+1"]
[elsif exp="tf.store_item_number_10==5"][eval exp="f.equip_item_5_stock=f.equip_item_5_stock+1"]
[elsif exp="tf.store_item_number_10==6"][eval exp="f.equip_item_6_stock=f.equip_item_6_stock+1"]
[elsif exp="tf.store_item_number_10==7"][eval exp="f.equip_item_7_stock=f.equip_item_7_stock+1"]
[elsif exp="tf.store_item_number_10==8"][eval exp="f.equip_item_8_stock=f.equip_item_8_stock+1"]
[elsif exp="tf.store_item_number_10==9"][eval exp="f.equip_item_9_stock=f.equip_item_9_stock+1"]
[elsif exp="tf.store_item_number_10==10"][eval exp="f.equip_item_10_stock=f.equip_item_10_stock+1"]
[elsif exp="tf.store_item_number_10==11"][eval exp="f.equip_item_11_stock=f.equip_item_11_stock+1"]
[elsif exp="tf.store_item_number_10==12"][eval exp="f.equip_item_12_stock=f.equip_item_12_stock+1"]
[elsif exp="tf.store_item_number_10==13"][eval exp="f.equip_item_13_stock=f.equip_item_13_stock+1"]
[elsif exp="tf.store_item_number_10==14"][eval exp="f.equip_item_14_stock=f.equip_item_14_stock+1"]
[elsif exp="tf.store_item_number_10==15"][eval exp="f.equip_item_15_stock=f.equip_item_15_stock+1"]
[elsif exp="tf.store_item_number_10==16"][eval exp="f.equip_item_16_stock=f.equip_item_16_stock+1"]
[elsif exp="tf.store_item_number_10==17"][eval exp="f.equip_item_17_stock=f.equip_item_17_stock+1"]
[elsif exp="tf.store_item_number_10==18"][eval exp="f.equip_item_18_stock=f.equip_item_18_stock+1"]
[elsif exp="tf.store_item_number_10==19"][eval exp="f.equip_item_19_stock=f.equip_item_19_stock+1"]
[elsif exp="tf.store_item_number_10==20"][eval exp="f.equip_item_20_stock=f.equip_item_20_stock+1"]
[elsif exp="tf.store_item_number_10==21"][eval exp="f.equip_item_21_stock=f.equip_item_21_stock+1"]
[elsif exp="tf.store_item_number_10==22"][eval exp="f.equip_item_22_stock=f.equip_item_22_stock+1"]
[elsif exp="tf.store_item_number_10==23"][eval exp="f.equip_item_23_stock=f.equip_item_23_stock+1"]
[elsif exp="tf.store_item_number_10==24"][eval exp="f.equip_item_24_stock=f.equip_item_24_stock+1"]
[elsif exp="tf.store_item_number_10==25"][eval exp="f.equip_item_25_stock=f.equip_item_25_stock+1"]
[elsif exp="tf.store_item_number_10==26"][eval exp="f.equip_item_26_stock=f.equip_item_26_stock+1"]
[elsif exp="tf.store_item_number_10==27"][eval exp="f.equip_item_27_stock=f.equip_item_27_stock+1"]
[elsif exp="tf.store_item_number_10==28"][eval exp="f.equip_item_28_stock=f.equip_item_28_stock+1"]
[elsif exp="tf.store_item_number_10==29"][eval exp="f.equip_item_29_stock=f.equip_item_29_stock+1"]
[elsif exp="tf.store_item_number_10==30"][eval exp="f.equip_item_30_stock=f.equip_item_30_stock+1"]
[elsif exp="tf.store_item_number_10==31"][eval exp="f.equip_item_31_stock=f.equip_item_31_stock+1"]
[elsif exp="tf.store_item_number_10==32"][eval exp="f.equip_item_32_stock=f.equip_item_32_stock+1"]
[elsif exp="tf.store_item_number_10==33"][eval exp="f.equip_item_33_stock=f.equip_item_33_stock+1"]
[elsif exp="tf.store_item_number_10==34"][eval exp="f.equip_item_34_stock=f.equip_item_34_stock+1"]
[elsif exp="tf.store_item_number_10==35"][eval exp="f.equip_item_35_stock=f.equip_item_35_stock+1"]

[endif]


[endmacro]










[macro name="product_hyouji"]


[if exp="tf.store_item_hyouji_1<1"]

;----
;アイテムNO１　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_1_type"]
[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_1_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_2_type"]
[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_2_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_3_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_4_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_5_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_6_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_7_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_8_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_9_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_1_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_1_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_1_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_1_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_1=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_1=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_1=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_1_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_1_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_1_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_1=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_1=tf.store_item_10_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_1=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]



[if exp="tf.store_item_hyouji_2<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_1_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_1_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_2_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_3_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_4_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_5_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_5_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_6_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_6_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_7_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_7_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_8_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_8_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_9_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_9_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_2_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_2_type_hyouji=tf.store_item_10_type"]
[eval exp="tf.store_item_2_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_2_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_2=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_2=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_2=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_2_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_2_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_2_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_2=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_2=tf.store_item_10_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_2=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]

;----------------------------------------------------------------------------------------------------------------



[if exp="tf.store_item_hyouji_3<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_1_type"]
[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_1_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_2_type"]
[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_2_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_3_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_4_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_5_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_6_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_7_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_8_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_9_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_3_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_3_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_3_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_3_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_3=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_3=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_3=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_3_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_3_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_3_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_3=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_3=tf.store_item_10_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_3=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]


;---------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_4<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_1_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_2_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_3_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_4_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_5_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_6_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_7_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_8_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_9_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_4_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_4_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_4_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_4_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_4=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_4=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_4=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_4_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_4_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_4_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_4=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_4=tf.store_item_10_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_4=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]


;-------------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_5<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_1_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_2_stock"]

[eval exp="tf.store_item_5_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_2_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_3_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_4_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_5_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_6_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_7_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_8_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_9_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_5_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_5_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_5_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_5_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_5=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_5=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_5=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_5_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_5_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_5_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_5=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_5=tf.store_item_10_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_5=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]

;---------------------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_6<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_1_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_2_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_3_number"]




;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_4_number"]




;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_5_number"]




;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_6_number"]




;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_7_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_8_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_9_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_6_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_6_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_6_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_6_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_6=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_6=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_6=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_6_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_6_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_6_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_6=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_6=tf.store_item_10_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_6=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]

;---------------------------------------------------------------------------------------------------------------



[if exp="tf.store_item_hyouji_7<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_1_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_2_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_3_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_4_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_5_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_6_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_7_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_8_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_9_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_7_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_7_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_7_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_7_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_7=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_7=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_7=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_7_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_7_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_7_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_7=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_7=tf.store_item_10_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_7=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]

;-----------------------------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_8<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_1_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_2_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_3_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_4_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_5_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_6_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_7_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_8_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_9_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_8_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_8_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_8_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_8_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_8=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_8=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_8=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_8_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_8_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_8_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_8=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_8=tf.store_item_10_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_8=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]


;----------------------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_9<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_1_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_2_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_3_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_4_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_5_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_6_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_7_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_8_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_9_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_9_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_9_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_9_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_9_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_9=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_9=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_9=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_9_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_9_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_9_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_9=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_9=tf.store_item_10_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_9=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]


;-------------------------------------------------------------------------------------------------

[if exp="tf.store_item_hyouji_10<1"]

;----
;アイテムNO2　１のアイテムが商品対象で、そのアイテムがなおかつ表示もされていない,
[if exp="f.store_equip_1==1&&tf.store_item_hyouji1_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_1_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_1_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_1_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_1_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_1_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_1_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_1_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_1_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_1_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_1_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_1_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_1_number"]



;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji1_number=1"]

[elsif exp="f.store_equip_2==1&&tf.store_item_hyouji2_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_2_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_2_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_2_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_2_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_2_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_2_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_2_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_2_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_2_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_2_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_2_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_2_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji2_number=1"]


[elsif exp="f.store_equip_3==1&&tf.store_item_hyouji3_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_3_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_3_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_3_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_3_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_3_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_3_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_3_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_3_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_3_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_3_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_3_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_3_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji3_number=1"]

[elsif exp="f.store_equip_4==1&&tf.store_item_hyouji4_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_4_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_4_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_4_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_4_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_4_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_4_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_4_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_4_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_4_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_4_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_4_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_4_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji4_number=1"]


[elsif exp="f.store_equip_5==1&&tf.store_item_hyouji5_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_5_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_5_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_5_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_5_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_5_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_5_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_5_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_5_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_5_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_5_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_5_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_5_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji5_number=1"]


[elsif exp="f.store_equip_6==1&&tf.store_item_hyouji6_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_6_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_6_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_6_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_6_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_6_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_6_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_6_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_6_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_6_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_6_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_6_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_6_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji6_number=1"]


[elsif exp="f.store_equip_7==1&&tf.store_item_hyouji7_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_7_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_7_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_7_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_7_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_7_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_7_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_7_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_7_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_7_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_7_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_7_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_7_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji7_number=1"]

[elsif exp="f.store_equip_8==1&&tf.store_item_hyouji8_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_8_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_8_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_8_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_8_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_8_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_8_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_8_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_8_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_8_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_8_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_8_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_8_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji8_number=1"]

[elsif exp="f.store_equip_9==1&&tf.store_item_hyouji9_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_9_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_9_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_9_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_9_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_9_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_9_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_9_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_9_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_9_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_9_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_9_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_9_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji9_number=1"]

[elsif exp="f.store_equip_10==1&&tf.store_item_hyouji10_number!=1"]

[eval exp="tf.store_item_10_name_hyouji=tf.store_item_10_name"]
[eval exp="tf.store_item_10_type_hyouji=tf.store_item_10_type"]

[eval exp="tf.store_item_10_stock_hyouji=tf.store_item_10_stock"]
[eval exp="tf.store_item_10_value_hyouji=tf.store_item_10_value"]
[eval exp="tf.store_item_parameter1_no_10=tf.store_item_10_parameter_1"]
[eval exp="tf.store_item_parameter2_no_10=tf.store_item_10_parameter_2"]
[eval exp="tf.store_item_parameter3_no_10=tf.store_item_10_parameter_3"]
[eval exp="tf.store_item_effect1_no_10_number=tf.store_item_10_effect_1_number"]
[eval exp="tf.store_item_effect2_no_10_number=tf.store_item_10_effect_2_number"]
[eval exp="tf.store_item_effect3_no_10_number=tf.store_item_10_effect_3_number"]
[eval exp="tf.store_item_explain_10=tf.store_item_10_explain"]
[eval exp="tf.store_item_number_10=tf.store_item_10_number"]


;表示済みのフラグ入力：アイテム欄１が表示されている。No.のアイテムが既に表示された
[eval exp="tf.store_item_hyouji_10=1"]
[eval exp="tf.store_item_hyouji10_number=1"]

[endif]
[endif]



[endmacro]








[return]