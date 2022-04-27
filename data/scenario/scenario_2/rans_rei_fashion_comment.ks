[macro name="rans_rei_hair_comment"]


;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]


[elsif exp="f.equip_item_current==3"]

[elsif exp="f.equip_item_current==4&&f.rans_comment_hair_1==4"]


[rans_rei_exp_metoji]
#ランスロット
「どうにも落ち着かないな・・・」[p]
#
#&f.name
（ん？髪型のせい？）[p]
#
[eval exp="f.rans_comment_hair_1=0"]
[elsif exp="f.equip_item_current==4]


[rans_rei_exp_normal]
#ランスロット
「今日はずいぶんと雰囲気が違うな・・・その髪型のせいか？」[p]
[rans_rei_body_left_x]
[rans_rei_body_right_z]
[rans_rei_head_left_x]
[rans_rei_exp_yokome]
[rans_rei_exp_mehuse_muzukasii]
[rans_rei_arms_udekumi]
[rans_rei_mod_idle_no_move_mehuse]
#
#ランスロット
「少し、落ち着かないな・・・お前ではない感じがして」[p]
#

[rans_rei_mod_idle]

[eval exp="f.rans_comment_hair_1=4"]

[elsif exp="f.equip_item_current==5"]

[endif]


[endmacro]


[macro name="rans_rei_equip_comment"]
;装備品
;---------------------
[if exp="f.equip_item_current_2==1"]
;革の服なのでコメントなし
[elsif exp="f.equip_item_current_2==2&&f.rans_comment_equip_1==2"]

;----------
[rans_rei_exp_normal_warai]
#ランスロット
「その服、以前も着ていたな。気に入っているのか？」[p]
#
#ランスロット
「私も嫌いではない」[p]
#
[rans]
[koukando_up]
[eval exp="f.rans_comment_equip_1=0"]

;-----------
[elsif exp="f.equip_item_current_2==2"]
[rans_rei_body_left_z]
[rans_rei_head_left_z]
[rans_rei_exp_bisyo]


#ランスロット
「いい服だ。お前によく似合っているぞ」[p]
#
#&f.name
「そうかな？ありがとう！」[p]
#
[rans]
[koukando_up]
[rans_rei_exp_normal_warai]
[rans_rei_mod_idle]
;ワンピースに対してコメントした記憶
[eval exp="f.rans_comment_equip_1=2"]



[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]





[endmacro]

[macro name="rans_rei_para_word"]
[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_tec!=0"]
[live2d_fadein time=1000]
[rans_rei_exp_normal_warai]

#ランスロット
「[emb exp="f.rans_word_day_blank"][emb exp="f.rans_homekotoba_tec"]」[p]
#
[rans]
[koukando_up]
[rans_rei_exp_normal]
[eval exp="tf.rans_tec_home=1"]
[endif]

[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_brain!=0"]
[live2d_fadein time=1000]
[rans_rei_exp_normal_warai]
#ランスロット
「
[if exp="tf.rans_tec_home!=1"]
[emb exp="f.rans_word_day_blank"]
[endif]

[emb exp="f.rans_homekotoba_brain"]」[p]
#
[rans]
[koukando_up]
[rans_rei_exp_normal]
[endif]
[eval exp="tf.rans_tec_home=0"]
[endmacro]








[return]