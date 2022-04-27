



*equip_id_1
[eval exp="tf.id =1"]
[jump target=*end]
*equip_id_2
[eval exp="tf.id =2"]
[jump target=*end]
*equip_id_3
[eval exp="tf.id =3"]
[jump target=*end]
*equip_id_4
[eval exp="tf.id =4"]
[jump target=*end]
*equip_id_5
[eval exp="tf.id =5"]
[jump target=*end]
*equip_id_6
[eval exp="tf.id =6"]
[jump target=*end]
*equip_id_7
[eval exp="tf.id =7"]
[jump target=*end]
*equip_id_8
[eval exp="tf.id =8"]
[jump target=*end]
*equip_id_9
[eval exp="tf.id =9"]
[jump target=*end]

*end
;以前説明分等表記していればフラグオフ
[eval exp="tf.explain_true=0"]
;アイテムが９より多い時アイテム表示ようの番号から通し番号へ変換







[if exp="tf.item_space_full>0"]
[eval exp="tf.space_n = tf.item_space_full-tf.item_space"]

[if exp="tf.space_n>0"]
[eval exp="tf.id = tf.id + tf.space_n*9"]
[endif]

[endif]



;１ページの場合お
;最後番目
;confirm 9

;1,2,3,4,5,6,7,8,9
;9,10,11,12,13,14,15,16,17


;２ページの場合
;最後番目
;confirm17



[if exp="tf.item_hyouji==1||tf.sell==1"]
;---------------
[clearstack]
[eval exp="tf.process_item_no[tf.id]=tf.process_item_no[tf.id]+1"]
;売却措置
[if exp="tf.sell==1||tf.item_hyouji==1"]
[jump storage="scenario_2/item_1_hyouji.ks"]
[elsif exp="tf.sell!=1||tf.item_hyouji!=1"]
[jump storage="scenario_2/equip_change_macro.ks"]
[endif]



[elsif exp="tf.item_hyouji!=1"]
[clearstack]
[eval exp="tf.equip_item_no[tf.id]=tf.equip_item_no[tf.id]+1"]
[jump storage="scenario_2/equip_change_macro.ks"]

;----------------
[endif]




