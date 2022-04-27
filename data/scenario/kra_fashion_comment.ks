[macro name="kra_hair_comment"]


;ヘアスタイル
[if exp="f.equip_item_current==1"]

[elsif exp="f.equip_item_current==2"]


[elsif exp="f.equip_item_current==3"]

[elsif exp="f.equip_item_current==4&&f.kra_comment_hair_1==4"]


[if exp="f.event_main_3==1"]
#？
[else]
#クライスト
[endif]
「その髪型、気に入ってるの？俺も好きだよ」[p]
#
[eval exp="f.kra_comment_hair_1=0"]
[elsif exp="f.equip_item_current==4]


[if exp="f.event_main_3==1"]
#？
[else]
#クライスト
[endif]

「・・・あれ？そういえば今日、感じが違うね。髪型のせいかな」[p]
#


[if exp="f.event_main_3==1"]

[aho_face_bisyou_youen]
#？
[else]
#クライスト
[endif]


「いいね、すごくかわいいよ。似合ってる」[p]
#
[aho_face_normal]
#&f.name
「あ・・・ありがとう・・・」[p]
#

[kra]
[koukando_up]

[eval exp="f.kra_comment_hair_1=4"]

[elsif exp="f.equip_item_current==5"]

[endif]


[endmacro]


[macro name="kra_equip_comment"]
;装備品
;---------------------
[if exp="f.equip_item_current_2==1"]

[elsif exp="f.equip_item_current_2==2&&f.kra_comment_equip_1==2"]

;----------

[if exp="f.event_main_3==1"]
#？
[else]
#クライスト
[endif]

「その服気に入ってるの？もっと目立つようなのも着てみたら？」[p]

[if exp="f.event_main_3==1"]
#？
[else]
#クライスト
[endif]

「きっと似合うよ」[p]


[eval exp="f.kra_comment_equip_1=0"]

;-----------
[elsif exp="f.equip_item_current_2==2"]
[if exp="f.event_main_3==1"]

[aho_face_yokome_warai]
#？
[else]
#クライスト
[endif]

「ワンピースっていいよね、でも俺は、もうちょっと派手目なのが好きかな」[p]
#

[if exp="f.event_main_3==1"]
#&f.name
（聞いてないんだけど・・・）[p]
#
[endif]

;ワンピースに対してコメントした記憶
[eval exp="f.kra_comment_equip_1=2"]



[elsif exp="f.equip_item_current_2==3"]

[elsif exp="f.equip_item_current_2==4"]

[elsif exp="f.equip_item_current_2==5"]

[endif]





[endmacro]







[return]