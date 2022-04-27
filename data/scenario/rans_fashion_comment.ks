[macro name="rans_hair_comment"]


;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]


[elsif exp="f.equip_item_current==3"]

[elsif exp="f.equip_item_current==4&&f.rans_comment_hair_1==4"]


[baka_exp_metoji]
#ランスロット
「どうにも落ち着かないな・・・」[p]
#
#&f.name
（ん？髪型のせい？）[p]
#
[eval exp="f.rans_comment_hair_1=0"]
[elsif exp="f.equip_item_current==4]


[baka_exp_normal]
#ランスロット
「今日はずいぶんと雰囲気が違うな・・・その髪型のせいか？」[p]
[baka_body_left_x]
[baka_body_right_z]
[baka_head_left_x]
[baka_exp_yokome]
[baka_exp_mehuse_muzukasii]
[baka_arms_udekumi]
[baka_mod_idle_no_move_mehuse]
#
#ランスロット
「少し、落ち着かないな・・・お前ではない感じがして」[p]
#

[baka_mod_idle]

[eval exp="f.rans_comment_hair_1=4"]

[elsif exp="f.equip_item_current==5"]

[endif]


[endmacro]


[macro name="rans_equip_comment"]
;装備品
;---------------------
[if exp="f.equip_item_current_2==1"]

[elsif exp="f.equip_item_current_2==2&&f.rans_comment_equip_1==2"]

;----------
[baka_exp_normal_warai]
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
[baka_body_left_z]
[baka_head_left_z]
[baka_exp_bisyo]


#ランスロット
「いい服だ。お前によく似合っているぞ」[p]
#
#&f.name
「そうかな？ありがとう！」[p]
#
[rans]
[koukando_up]
[baka_exp_normal_warai]
[baka_mod_idle]
;ワンピースに対してコメントした記憶
[eval exp="f.rans_comment_equip_1=2"]



[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]





[endmacro]







[return]