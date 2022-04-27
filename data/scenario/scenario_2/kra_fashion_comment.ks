[macro name="kra_hair_comment"]



;ヘアスタイル
[iscript]

for(i=1;i<f.equip_item_list.length;i++){

if(i==4){

if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["kra_comment_hair_1"]==i){
tyrano.plugin.kag.variable.tf.kra_comment_4_2=1;
}else if(this.kag.stat.f["equip_item_current"] ==i){
tyrano.plugin.kag.variable.tf.kra_comment_4=1;
}


}else if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='hair'&&this.kag.stat.f["equip_item_list"][i].attribute==='elegant'){

tyrano.plugin.kag.variable.tf.kra_comment_hair_elegant=1;

}else if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='hair'&&this.kag.stat.f["equip_item_list"][i].attribute==='rare'){

tyrano.plugin.kag.variable.tf.kra_comment_hair_rare=1;

}


}
[endscript]

[if exp="tf.kra_comment_4_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_4_2=0"]
[kra_equip_4_comment_2]
[elsif exp="tf.kra_comment_4==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_4=0"]
[kra_equip_4_comment]
[elsif exp="tf.kra_comment_hair_elegant==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_hair_elegant=0"]
[kra_hair_comment_word]
[elsif exp="tf.kra_comment_hair_rare==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_hair_rare=0"]
[kra_hair_comment_word]

[endif]

[endmacro]


[macro name="kra_equip_comment"]
[eval exp="tf.kra_comment_equip_elegant=0"]

[iscript]

for(i=1;i<f.equip_item_list.length;i++){

if(i==2){

if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["kra_comment_equip_1"]==i){
tyrano.plugin.kag.variable.tf.kra_comment_2_2=1;
}else if(this.kag.stat.f["equip_item_current_2"] ==i){
tyrano.plugin.kag.variable.tf.kra_comment_2=1;
}

}else if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["equip_item_list"][i].type==='equip'&&this.kag.stat.f["equip_item_list"][i].attribute==='elegant'){

tyrano.plugin.kag.variable.tf.kra_comment_equip_elegant=1;

}

}



[endscript]

[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[aho_arms_normal]

[if exp="tf.kra_comment_2_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_2_2=0"]
[kra_equip_2_comment_2]
[elsif exp="tf.kra_comment_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_2=0"]
[kra_equip_2_comment]
[elsif exp="tf.kra_comment_equip_elegant==1"]
[live2d_fadein time=1000]
[eval exp="tf.kra_comment_equip_elegant=0"]
[kra_equip_comment_word]
[endif]


[endmacro]


;コメントマクロ

[macro name="kra_equip_4_comment_2"]
[aho_face_bisyou_youen]
#クライスト
「その髪型、気に入ってるの？俺も好きだよ」[p]
#
[eval exp="f.kra_comment_hair_1=0"]
[endmacro]


[macro name="kra_equip_4_comment"]
#クライスト
「・・・あれ？そういえば今日、感じが違うね。髪型のせいかな」[p]
#
[aho_face_bisyou_youen]
#クライスト
「いいね、すごくかわいいよ。似合ってる」[p]
#
[aho_face_normal]
#&f.name
「あ・・・ありがとう・・・」[p]
#

[eval exp="f.kra_comment_hair_1=4"]
[kra]
[koukando_up]
[endmacro]



[macro name="kra_equip_2_comment_2"]
#クライスト
「その服気に入ってるの？もっと目立つようなのも着てみたら？」[p]
[aho_face_bisyou_youen]
#クライスト
「きっと似合うよ」[p]
[eval exp="f.kra_comment_equip_1=0"]

[endmacro]



[macro name="kra_equip_2_comment"]
[aho_face_yokome_warai]
#クライスト
「ワンピースっていいよね、でも俺は、もうちょっと派手目なのが好きかな」[p]
#
;ワンピースに対してコメントした記憶
[eval exp="f.kra_comment_equip_1=2"]

[endmacro]



[macro name="kra_hair_comment_word"]

[if exp="f.equip_kioku==f.equip_item_current"]

[aho_face_bisyou_youen]
#クライスト
「その髪型、気に入ってるの？俺も好きだよ」[p]
#

[elsif exp="f.equip_item_current==5"]

[aho_face_mihiraki]
#クライスト
「・・・あれ？もしかしてそれって・・・俺があげたやつ？」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_arms_udekumi]
[aho_face_mehuse_warai]
#クライスト
「・・・つけてくれてるんだ。
[aho_face_hutuu_bisyou]
ありがとう、嬉しいな」[p]
#


[kra]
[koukando_up]
[live2d_fadeout time=1000]
[aho_face_normal]
;レアアイテム
[elsif exp="f.equip_item_current==12"]

[aho_face_mihiraki]
#クライスト
「・・・どうしたの？今日はすごい、気合入ってるね」[p]
#
[aho_head_under_y]
[aho_face_mehuse]
#クライスト
「・・・もしかしてそのヘアクリップ、
[aho_head_normal]
[aho_face_normal]
俺のためにつけてくれたの？
[aho_head_right_z]
[aho_face_hutuu_warai]
その髪型もすごく、可愛い・・・」[p]
#
[live2d_fadeout time=1000]
[live2d_kra_mod_sekkin_2]
[live2d_fadein time=1000]
[aho_eyes_left]
[aho_face_mehuse]
#クライスト
「ね、このまま・・・[w]
[aho_head_normal]
[aho_eyes_normal]
[aho_head_under_y]
[aho_face_bisyou_youen]
食べちゃってもいい？」[p]
#
[aho_face_hutuu_warai]
[aho_head_left_z]
[aho_body_left_z]
[kra]
[koukando_up]
[live2d_fadeout time=1000]
[aho_face_normal]

[else]

[aho_face_mihiraki]
#クライスト
「・・・あれ？そういえば今日、感じが違うね。髪型のせいかな」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_arms_udekumi]
[aho_face_bisyou_youen]
#クライスト
「いいね、すごくかわいいよ。似合ってる」[p]
#
[aho_face_normal]
#&f.name
「あ・・・ありがとう・・・」[p]
#
[kra]
[koukando_up]
[live2d_fadeout time=1000]
[endif]
[eval exp="f.equip_kioku=f.equip_item_current"]
[endmacro]





[macro name="kra_equip_comment_word"]

[if exp="f.equip_kioku==f.equip_item_current_2"]


[aho_face_bisyou_youen]
#クライスト
「その服、気に入ってるの？可愛いよね」[p]
#



[else]
#クライスト
「あれ、今日の服、いいね。すごく可愛い」[p]
#

[aho_face_bisyou_youen]
#クライスト
「俺、そういうの好きだな」[p]
#


[kra]
[koukando_up]

[endif]
[eval exp="f.equip_kioku=f.equip_item_current_2"]


[endmacro]













[return]