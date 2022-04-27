[macro name="lion_hair_comment"]


;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]


[elsif exp="f.equip_item_current==3"]

[elsif exp="f.equip_item_current==4&&f.lion_comment_hair_1==4"]



#ライオネス
「またその変な頭か。好きだなお前」[p]
#
#&f.name
（・・・・・・）[p]
#
[eval exp="f.lion_comment_hair_1=0"]
[elsif exp="f.equip_item_current==4]


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

[elsif exp="f.equip_item_current==5"]

[endif]


[endmacro]


[macro name="lion_equip_comment"]
;装備品
;---------------------
[if exp="f.equip_item_current_2==1"]

[elsif exp="f.equip_item_current_2==2&&f.lion_comment_equip_1==2"]

;----------

#ライオネス
「みどりのふく」[p]

#&f.name
「ワンピースだってば！」[p]


[eval exp="f.lion_comment_equip_1=0"]

;-----------
[elsif exp="f.equip_item_current_2==2"]
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



[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]





[endmacro]







[return]