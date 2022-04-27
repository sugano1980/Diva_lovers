[macro name="rans_hair_comment"]
;ヘアスタイル
[iscript]
for(i=1;i<f.equip_item_list.length;i++){

if(i==4){

if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["rans_comment_hair_1"]==i){
tyrano.plugin.kag.variable.tf.rans_comment_4_2=1;
}else if(this.kag.stat.f["equip_item_current"] ==i){
tyrano.plugin.kag.variable.tf.rans_comment_4=1;
}

}else if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='hair'&&this.kag.stat.f["equip_item_list"][i].attribute==='pure'){

tyrano.plugin.kag.variable.tf.rans_comment_hair_pure=1;


}else if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='hair'&&this.kag.stat.f["equip_item_list"][i].attribute==='cute'){

tyrano.plugin.kag.variable.tf.rans_comment_hair_cute=1;

}


}

[endscript]

[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
[rans_arms_normal]

[if exp="tf.rans_comment_4_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_4_2=0"]
[rans_equip_4_comment_2]
[elsif exp="tf.rans_comment_4==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_4=0"]
[rans_equip_4_comment]
[elsif exp="tf.rans_comment_hair_pure==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_hair_pure=0"]
[rans_hair_comment_pure]
[elsif exp="tf.rans_comment_hair_cute==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_hair_cute=0"]
[rans_hair_comment_cute]
[endif]

[endmacro]


[macro name="rans_equip_comment"]

[iscript]

for(i=1;i<f.equip_item_list.length;i++){

if(i==2){

if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["rans_comment_equip_1"]==i){
tyrano.plugin.kag.variable.tf.rans_comment_2_2=1;
}else if(this.kag.stat.f["equip_item_current_2"] ==i){
tyrano.plugin.kag.variable.tf.rans_comment_2=1;
}

}else if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='equip'&&this.kag.stat.f["equip_item_list"][i].attribute==='pure'){

tyrano.plugin.kag.variable.tf.rans_comment_equip_pure=1;


}else if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='equip'&&this.kag.stat.f["equip_item_list"][i].attribute==='cute'){

tyrano.plugin.kag.variable.tf.rans_comment_equip_cute=1;

}

}

[endscript]

[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
[rans_arms_normal]
[if exp="tf.rans_comment_2_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_2_2=0"]
[rans_equip_2_comment_2]
[elsif exp="tf.rans_comment_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_2=0"]
[rans_equip_2_comment]
[elsif exp="tf.rans_comment_equip_pure==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_equip_pure=0"]
[rans_equip_comment_pure]
[elsif exp="tf.rans_comment_equip_cute==1"]
[live2d_fadein time=1000]
[eval exp="tf.rans_comment_equip_cute=0"]
[rans_equip_comment_cute]
[endif]

[live2d_fadeout time=1000]
[endmacro]


;コメントマクロ

[macro name="rans_equip_4_comment"]
[rans_fashion_jizen_hair]

[rans_exp_normal]

#ランスロット
「今日はずいぶんと雰囲気が違うな・・・その髪型のせいか？」[p]

[rans_body_left_x]
[rans_body_right_z]
[rans_head_left_x]
[rans_exp_yokome]
[rans_exp_mehuse_muzukasii]
[rans_arms_udekumi]
[rans_mod_idle_no_move_mehuse]

#
#ランスロット
「少し、落ち着かないな・・・お前ではない感じがして」[p]
#

[rans_mod_idle]

[eval exp="f.rans_comment_hair_1=4"]


[endmacro]


[macro name="rans_equip_4_comment_2"]


[rans_exp_metoji]

#ランスロット
「どうにも落ち着かないな・・・」[p]
#
#&f.name
（ん？髪型のせい？）[p]
#
[eval exp="f.rans_comment_hair_1=0"]

[endmacro]

[macro name="rans_equip_2_comment"]
[rans_fashion_jizen_equip]


[rans_body_left_z]
[rans_head_left_z]
[rans_exp_bisyo]


#ランスロット
「いい服だ。お前によく似合っているぞ」[p]
#
#&f.name
「そうかな？ありがとう！」[p]
#
[rans]
[koukando_up]


[rans_exp_normal_warai]
[rans_mod_idle]

;ワンピースに対してコメントした記憶
[eval exp="f.rans_comment_equip_1=2"]


[endmacro]

[macro name="rans_equip_2_comment_2"]

[rans_exp_normal_warai]

#ランスロット
「その服、以前も着ていたな。気に入っているのか？」[p]
#
#ランスロット
「私も嫌いではない」[p]
#

[eval exp="f.rans_comment_equip_1=0"]

[endmacro]


[macro name="rans_hair_comment_pure"]
[rans_fashion_jizen_hair]
[if exp="f.hair_kioku==f.equip_item_current"]

[rans_exp_normal_warai]

#ランスロット
「この前と同じ髪型だな。気に入っているのか？」[p]
#
#ランスロット
「私も嫌いではない」[p]
#


[else]

[rans_exp_normal_warai]
#ランスロット
「いつもと少し感じが違うな。ああ、その髪型のせいか」[p]
#
[rans_eyes_right]
[rans_eyes_normal]
[rans_head_under_y]
[rans_head_right_x]
[rans_exp_mehuse_warai]
#ランスロット
「お前の・・・その、雰囲気によく合っている」[p]
#
[rans]
[koukando_up]

[endif]
[eval exp="f.hair_kioku=f.equip_item_current"]
[endmacro]

[macro name="rans_hair_comment_cute"]
[rans_fashion_jizen_hair]

[if exp="f.hair_kioku==f.equip_item_current"]

[rans_exp_normal_warai]
#ランスロット
「この前と同じ髪型だな。気に入っているのか？」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット
「私も嫌いではない」[p]
#


[else]
[rans_exp_mihiraki]
#ランスロット
「いつもと少し感じが違うな。[rans_exp_normal_warai]ああ、その髪型のせいか」[p]
#
[rans_eyes_right]
[rans_eyes_normal]
#ランスロット
「・・・似合っている。
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_bisyo]
その・・・可愛らしい・・・感じが特に」[p]
#
[rans]
[koukando_up]

[endif]
[eval exp="f.hair_kioku=f.equip_item_current"]

[endmacro]




[macro name="rans_equip_comment_pure"]
[rans_fashion_jizen_equip]
[if exp="f.equip_kioku==f.equip_item_current_2"]

[rans_exp_normal_warai]
#ランスロット
「この前と同じだな。気に入っているのか？」[p]
#
[rans_head_right_z]
[rans_body_right_z]
#ランスロット
「私も嫌いではない」[p]
#


[else]

[rans_exp_normal_warai]
#ランスロット
「よく似合っているぞ」[p]
#
[rans_eyes_right]
[rans_eyes_normal]
[rans_head_under_y]
[rans_head_right_x]
[rans_body_right_z]
[rans_exp_mehuse_warai]
#ランスロット
「その、何か・・・ほっとするな」[p]
#
[rans]
[koukando_up]

[endif]
[eval exp="f.equip_kioku=f.equip_item_current_2"]
[endmacro]

[macro name="rans_equip_comment_cute"]

[rans_fashion_jizen_equip]

[if exp="f.equip_kioku==f.equip_item_current_2"]

[rans_exp_normal_warai]
#ランスロット
「この前と同じだな。気に入っているのか？」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット
「私も、嫌いではない、いや、むしろ・・・」[p]
#


[else]


[rans_eyes_right]
[rans_eyes_normal]
[rans_eyes_right]
[rans_head_right_x]
[rans_head_under_y]
[rans_body_right_z]
#ランスロット
「・・・なんと言うか・・・」[p]
#
[rans_head_normal]
[rans_head_left_z]
[rans_body_left_z]
[rans_eyes_normal]
[rans_exp_bisyo]
#ランスロット
「服装を変えるだけでも、こんなに違うものなのだな・・・」[p]
#
[rans]
[koukando_up]
[rans_eyes_normal]
[endif]
[eval exp="f.equip_kioku=f.equip_item_current_2"]

[endmacro]


[macro name="rans_fashion_jizen_hair"]
[if exp="f.equip_item_current!=3"]
#ランスロット
「・・・・・・」[p]
#
#&f.name
「・・・・・・？どうしたの？」[p]
#
[endif]

[endmacro]

[macro name="rans_fashion_jizen_equip"]
[if exp="f.equip_item_current_2!=1"]
[rans_head_normal]
[rans_mod_idle_no_move]
[rans_exp_mihiraki]
[rans_arms_normal]
[w]
#ランスロット
「その服・・・いつものではないんだな」[p]
#
#&f.name
「あっえっと・・・ごめんなさい」[p]
#


#ランスロット
「どうして謝る？」[p]
#
[endif]
[endmacro]







[return]