;アイテム取得実行マクロ；エルム編から

;パイのみマクロになし、酒場の手伝い

[macro name="recipe_get_1"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cusine[6]=1"]
[eval exp="f.cusine[7]=1"]
[eval exp="f.cusine[13]=1"]
煮魚、天ぷら、チャーハンのレシピを手に入れた！[p]
[endmacro]



;瓦礫の手伝い
[macro name="recipe_get_2"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cusine[10]=1"]
カレーのレシピを手に入れた！[p]
[endmacro]

;シャロームサブトロッコ
[macro name="recipe_get_3"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cusine[2]=1"]
お刺身のレシピを手に入れた！[p]
[endmacro]

;シャローム漁師
[macro name="recipe_get_4"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cusine[1]=1"]
魚介のマリネのレシピを手に入れた！[p]
[endmacro]

;グリフの差し入れ
[macro name="recipe_get_5"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cake[2]=1"]
クッキーのレシピを手に入れた！[p]
[endmacro]

;船厨房手伝い
[macro name="recipe_get_6"]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.cusine[3]=1"]
[eval exp="f.cusine[8]=1"]
[eval exp="f.cusine[15]=1"]
厚切りステーキ、うなじゅう、フライのレシピを手に入れた！[p]
[endmacro]



;酒場手伝い
[macro name="event_cook_item_get_1"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[2,7,8]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1,1,1]"]
;取得処理
[cook_item_get]
[emb exp="tf.item_name[0]"]、
[emb exp="tf.item_name[1]"]、
[emb exp="tf.item_name[2]"]
を手に入れた！！[p]
[endmacro]

;シャロームトロッコ
[macro name="event_equip_item_get_2"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[21]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[equip_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;シャローム漁師
[macro name="event_cook_item_get_3"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[18,19]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1,1]"]
;取得処理
[cook_item_get]
[emb exp="tf.item_name[0]"]、
[emb exp="tf.item_name[1]"]
を手に入れた！！[p]
[endmacro]


;裏通りモンスターたいじ
[macro name="event_battle_item_get_1"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[5]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[battle_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]


;稽古場モンスターたいじ
[macro name="event_battle_item_get_2"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[4]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[battle_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;グリフからの差し入れ
[macro name="event_other_item_get_1"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[21]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;グリフからの差し入れ2
[macro name="event_other_item_get_2"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[26]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;馬の仲買人プレゼント
[macro name="event_other_item_get_3"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[1]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]


;馬の世話係プレゼント
[macro name="event_cook_item_get_2"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[7,10]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1,1]"]
;取得処理
[cook_item_get]
[emb exp="tf.item_name[0]"]、
[emb exp="tf.item_name[1]"]
を手に入れた！！[p]
[endmacro]


;後方支援ランスプレゼント
[macro name="event_other_item_get_rans"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[14]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;後方支援らいプレゼント
[macro name="event_other_item_get_lion"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[13]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;後方支援クラプレゼント
[macro name="event_other_item_get_kra"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[16]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]

;後方支援グリフプレゼント
[macro name="event_other_item_get_glif"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[29]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[cook_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]


;図書ふぇあー
[macro name="event_other_item_get_tosho"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[10]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[1]"]
;取得処理
[other_item_get]
[emb exp="tf.item_name[0]"]
を手に入れた！！[p]
[endmacro]






;----------------
;騎士団本部の差し入れ
[macro name="sasiire_item_get"]
[playse storage="item_status_up_onjin.ogg"]
;取得するアイテムの番号
[eval exp="tf.itemget=[tf.item_get_no]"]
;取得するアイテムの個数
[eval exp="tf.itemquant=[tf.item_quant_num]"]
;取得処理
[if exp="tf.item_get_type=='battle'"]
[battle_item_get]
[elsif exp="tf.item_get_type=='equip'"]
[equip_item_get]
[elsif exp="tf.item_get_type=='cook'"]
[cook_item_get]
[elsif exp="tf.item_get_type=='other'"]
[other_item_get]
[endif]

[eval exp="tf.item_quant_num=tf.item_quant_num-1"]
[emb exp="tf.item_name[tf.item_quant_num]"]
を手に入れた！！[p]



[endmacro]



;----------------


[macro name="cook_item_get"]
[call storage="scenario_2/item/cook_item_data_new.ks"]
[iscript]
tf.item_name=[];

var len = tf.itemget.length;

for(i=0;i<len;i++){

f.cook_item_stock[tf.itemget[i]]+=tf.itemquant[i];
tf.item_name.push(f.cook_item_list[tf.itemget[i]].name);

}



tf.itemget=[];
tf.itemquant=[];

[endscript]
[endmacro]


[macro name="battle_item_get"]
[call storage="scenario_2/item/battle_item_data.ks"]
[iscript]
tf.item_name=[];

var len = tf.itemget.length;

for(i=0;i<len;i++){

f.battle_item_stock[tf.itemget[i]]+=tf.itemquant[i];
tf.item_name.push(f.battle_item_list[tf.itemget[i]].name);

}



tf.itemget=[];
tf.itemquant=[];

[endscript]
[endmacro]

[macro name="equip_item_get"]
[call storage="scenario_2/item/equip_item_data_new.ks"]
[iscript]
tf.item_name=[];

var len = tf.itemget.length;

for(i=0;i<len;i++){

f.equip_item_stock[tf.itemget[i]]+=tf.itemquant[i];
tf.item_name.push(f.equip_item_list[tf.itemget[i]].name);

}



tf.itemget=[];
tf.itemquant=[];

[endscript]
[endmacro]

[macro name="other_item_get"]
[call storage="scenario_2/item/other_item_data_new.ks"]
[iscript]
tf.item_name=[];

var len = tf.itemget.length;

for(i=0;i<len;i++){

f.other_item_stock[tf.itemget[i]]+=tf.itemquant[i];
tf.item_name.push(f.other_item_list[tf.itemget[i]].name);

}



tf.itemget=[];
tf.itemquant=[];

[endscript]
[endmacro]



[return]