[macro name="lion_hair_comment"]


;ヘアスタイル

[iscript]

for(i=1;i<f.equip_item_list.length;i++){

if(i==4){

if(this.kag.stat.f["equip_item_current"] ==i&&this.kag.stat.f["lion_comment_hair_1"]==i){
tyrano.plugin.kag.variable.tf.lion_comment_4_2=1;
}else if(this.kag.stat.f["equip_item_current"] ==i){
tyrano.plugin.kag.variable.tf.lion_comment_4=1;
}


}
}

[endscript]

[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_arms_normal]
[if exp="f.lionkonkando>40"]

[lion_hair_comment_all]
[elsif exp="tf.lion_comment_4_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.lion_comment_4_2=0"]
[lion_equip_4_comment_2]
[elsif exp="tf.lion_comment_4==1"]
[live2d_fadein time=1000]
[eval exp="tf.lion_comment_4=0"]
[lion_equip_4_comment]
[endif]


[endmacro]



;----------------------------------------------------------------------------------------------------------



[macro name="lion_equip_comment"]
;装備品
;---------------------

[iscript]

for(i=1;i<f.equip_item_list.length;i++){

if(i==2){

if(this.kag.stat.f["equip_item_current_2"] ==i&&this.kag.stat.f["lion_comment_equip_1"]==i){
tyrano.plugin.kag.variable.tf.lion_comment_2_2=1;
}else if(this.kag.stat.f["equip_item_current_2"] ==i){
tyrano.plugin.kag.variable.tf.lion_comment_2=1;
}

}
}

[endscript]

[lioness_face_normal]
[lioness_body_normal]
[lioness_head_normal]
[lioness_arms_normal]
[if exp="f.lionkonkando>40"]

[lion_equip_comment_all]
[elsif exp="tf.lion_comment_2_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.lion_comment_2_2=0"]
[lion_equip_2_comment_2]
[elsif exp="tf.lion_comment_2==1"]
[live2d_fadein time=1000]
[eval exp="tf.lion_comment_2=0"]
[lion_equip_2_comment]
[endif]

[live2d_fadeout time=1000]
[endmacro]


;---------------------------------------------------------------------------------------------------------------------
;コメントマクロ
[macro name="lion_equip_2_comment"]

#ライオネス
「なんだ、それ」[p]
#

#&f.name
「え？」[p]
#


#ライオネス
「・・・みどりの、ふく」[p]
#

#&f.name
「・・・このワンピースのこと？」[p]
#


[lioness_head_right_z]
[lioness_body_right_z]
[lioness_face_ha]
#ライオネス
「なんだそれ？わんぴーす？」[p]
#

#&f.name
「知らないの？」[p]
#

[lioness_face_normal]
#ライオネス
「知らねえよ・・・異世界の海賊の話か？」[p]
#

#&f.name
（そっちの方が知らないよ・・・）[p]
#


;ワンピースに対してコメントした記憶
[eval exp="f.lion_comment_equip_1=2"]
[live2d_fadeout time=1000]
[endmacro]

[macro name="lion_equip_2_comment_2"]
;----------

#ライオネス
「みどりのふく」[p]

#&f.name
「ワンピースだってば！」[p]


[eval exp="f.lion_comment_equip_1=0"]
[endmacro]

[macro name="lion_equip_4_comment"]
#ライオネス
「なんでお前、そんな髪の毛してんだ？」[p]

#

#&f.name
「え、変かな？」[p]

#

#ライオネス
「いつものあの綱みたいなのも変だけどな」[p]

#

#&f.name
（・・・・・・）[p]

#

[eval exp="f.lion_comment_hair_1=4"]
[live2d_fadeout time=1000]
[endmacro]


[macro name="lion_equip_4_comment_2"]

#ライオネス
「またその変な頭か。好きだなお前」[p]
#
#&f.name
（・・・・・・）[p]
#
[eval exp="f.lion_comment_hair_1=0"]
[live2d_fadeout time=1000]
[endmacro]

[macro name="lion_hair_comment_all"]

[eval exp="tf.hair_come=2"]

[iscript]
tf.hair_come = Math.floor( Math.random() * tf.hair_come) + 1
[endscript]

[if exp="tf.hair_come==1"]
[live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「いいな、その髪型、好きだ」[p]
#
#&f.name
「えっ、本当？どんなところが？」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス
「わかんねーけど、なんかいい」[p]
#

#&f.name
（・・・それって・・・？）[p]
#
[lion]
[koukando_up]
[live2d_fadeout time=1000]
[endif]

[endmacro]


[macro name="lion_equip_comment_all"]

[eval exp="tf.equip_come=2"]

[iscript]
tf.equip_come = Math.floor( Math.random() * tf.equip_come) + 1
[endscript]

[if exp="tf.equip_come==1"]
[live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「いいな、その服、好きだ」[p]
#
#&f.name
「えっ、本当？」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス
「ああ。お前が着てるからな」[p]
#

#&f.name
（・・・それって・・・）[p]
#
[lion]
[koukando_up]
[live2d_fadeout time=1000]
[endif]

[endmacro]




[return]