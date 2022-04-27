

;裏通り
[macro name="map_event_uradoori_macro"]


[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]

[elsif exp="f.event_2_kra==1"]

[if exp="f.irain_move==0"]
[bg storage="creru_uradoori_yuu.jpg"]
[else]
[bg storage="creru_uradoori.jpg"]

[endif]



;クライストイベント
[message_settei_ad][skip_button]
[call storage="live2d_aho_macro.ks"]
[stopbgm]
#&f.name	
（・・・ここって薄暗くてあんまり雰囲気よくないんだよね・・・）[p]
#
[playse storage="za_macchi.ogg"]
#&f.name	
「・・・？」[p]
#
#傭兵	１
「なんだあお嬢ちゃん。こんなとこで何してんの？」[p]
#
#&f.name	
「へ？えー・・・と」[p]
#
#傭兵	２
「なかなかかわいいツラしてんじゃねえか」[p]
#
#傭兵	２
「俺らと一緒に遊ばねえか？」[p]
#
#傭兵	１
「ほら、来いよ」[p]
#
[playse storage="tukamu_onjin.ogg"]

#&f.name	
「ちょっ・・・離っ・・・」[p]
#
#傭兵	２
「大人しくしてりゃ、悪いようにはしねえよ・・・」[p]
#
;[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
;[aho_mod_idle_normal]

[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
;[aho_face_mihiraki]
[chara_show name="kra" top=50]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_mihiraki.gif"]
#？	
「あれ？」[p]
#
;[live2d_motion name="aho" mtn="Idle_normal"]
;[live2d_mod name="aho" idle="Idle_normal"]


#傭兵	１
「うげっ・・・お前は・・・」[p]
#
#&f.name	
「あ・・・」[p]
#
#&f.name	
（この人、酒場で会った・・・あの時の）[p]
#
;[aho_face_yokome_warai]
;[aho_mod_idle_kokyu_only]
;[aho_arms_right_setumei]
;[aho_head_left_x]
;[aho_body_left_z]

[chara_mod name="kra" storage="kra_tatie/Idle_gif_yokome.gif"]
#？	
「・・・この娘、俺の彼女だからさ、触んないでくれる？」[p]
#


;[aho_body_right_z]
;[aho_face_normal]
;[aho_eyes_right]
#傭兵	２
「っ・・・マジかよオイ」[p]
#
;[aho_head_normal]
;[aho_eyes_normal]
#&f.name	
（えっ！？）[p]
#
#傭兵	１
「あいつの女かよ・・・」[p]
#

;[aho_face_yokome_majime]

#&f.name	
（ええっ！？）[p]
#

;[aho_face_normal]
;[aho_arms_normal]
;[aho_head_normal]
;[aho_body_normal]
;[aho_face_mehuse]
#&f.name	
「なっ・・・違・・・
[chara_hide_all]
;[live2d_fadeout time=1000]
[playse storage="za_macchi.ogg"]

;[aho_face_normal]
きゃっ！！」[p]
#
[playse storage="butukaru_onjin.ogg"]

[live2d_load]
[live2d_new name="aho" model_id="aho" lip=true jname="？"]
[live2d_load_off]
[live2d_show name="aho" y=-2.8 scale=6.2]

#&f.name	
「ちょ・・・ちょっと・・・」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
#？	
「ね、そうだよね？」[p]
#
#&f.name	
「あ、あの・・・」[p]
#
#&f.name	
（顔・・・近っ・・・）[p]
#

#傭兵	１
「・・・ちっ、なんだよ、ったくよお・・・」[p]
#

[aho_face_yokome_majime]
#傭兵	２
「行こうぜ、つまんねえ」[p]
#
[playse storage="tutiaruku_onjin.ogg"]

[fadeoutse time=1000]

[aho_face_metoji]



[aho_face_normal_majime]
#&f.name	
（えーと・・・この状況は・・・）[p]
#

[aho_head_right_x]
#？	
「・・・ここさ、危ないから女の子はひとりでこない方がいいよ」[p]
[aho_body_left_z]
[aho_head_left_x]
#
#？	
「俺が通り掛かったからよかったけど」[p]
#
[aho_head_normal]
[aho_body_normal]
[aho_mod_idle_normal]

#&f.name	
（・・・やっぱり・・・助けてくれた・・・んだよね？）[p]
#
#&f.name
（お礼を言ったほうがいいよね・・・）[p]
#
#&f.name	
「あ・・・ありがとうございます」[p]
#

#&f.name	
「あの、あなた、酒場で会った・・・」[p]
#

[aho_mod_idle_kokyu_only]
[aho_body_under_y]
[aho_head_under_y]
[aho_head_normal]

[aho_face_normal]
#？	
「うん、また会ったね。騎士団員って本当？」[p]
#
[aho_body_normal]
[aho_head_right_z]
#&f.name	
「は、はい、一応・・・」[p]
#
[aho_head_left_x]
[aho_body_left_z]
#？	
「・・・ふーん・・・」[p]
[aho_head_normal]
[aho_body_normal]
#
[aho_mabataki]
#&f.name	
「あ、あの・・・？」[p]
#
[aho_face_bisyou_youen]
#？	
「・・・ああ、うん、やっぱりかわいい」[p]
#

[live2d_fadeout time=1000]
#&f.name	
「へ？ひゃ・・・」[p]
#


[live2d_mod name="aho" y=-4.0 scale=8.2]
[playse storage="butukaru_onjin.ogg"]

[live2d_fadein time=1000]
#&f.name	
「ちょっ・・・」[p]
#

[aho_head_right_z]
[aho_body_right_z]
#？	
「・・・ホントのことにしちゃう？」[p]
#
#&f.name	
「・・・え？な、何・・・を・・・？」[p]
#
[aho_face_mehuse]
#？	
「ーーさっきの話」[p]
#
[aho_face_normal]
[aho_eyes_above]
#&f.name	
（さっきの・・・話って・・・）[p]
#
[aho_face_bisyou_youen]
#&f.name	
「えっ・・・」[p]
#

[playse storage="huku_koukaonlabo.ogg"]	
[live2d_mod name="aho" y=-5.3 scale=10.2]
[live2d_fadeout time=2000]
[anim name="aho" top="+=2" time=6000]

#&f.name	
「やっ、やめてっ！」[p]
#

;[aho_face_mihiraki]
[anim name="aho" top="-=2" time=50]
;[live2d_mod name="aho" y=-1.5 x=0.0 scale=3.5]
;[live2d_fadein time=1000]

;[aho_arms_udekumi]
;[aho_head_left_z]
;[aho_body_left_z]
;[aho_face_metoji_warai]
[live2d_off][live2d_delete_all]
[chara_show name="kra" top=50]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_yokome.gif"]

#？	
「なあんだ、残念」[p]
#
#&f.name	
「なっ・・・な・・・」[p]
#
;[aho_head_normal]
;[aho_face_normal]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_bisyou_youen.gif"]
#？	
「それじゃあね」[p]
#
#&f.name	
「ちょっ・・・」[p]
#
[chara_hide_all]
;[live2d_fadeout time=1000]

;クラ、去る
#&f.name	
「はぁ・・・」[p]
#
#&f.name
（なんだったんだろ・・・）[p]
#
#&f.name
（ん・・・？あれ、でも・・・そういえばあの時）[p]
#
[bg storage="kra_kaisou.jpg" time=50]


「傭兵の死体が発見されたと・・・！！」[p]


[bg storage="creru_uradoori.jpg"]
#&f.name
「酒場で争ってた人・・・あの人が今ここにいるってことは・・・
まさか・・・殺したとか・・・？」[p]
#
#&f.name
「・・・・・・」[p]
#
#&f.name
（・・・・あんまり、関わらないほうがいいのかな・・・）[p]
#


[eval exp="f.event_2_kra=0"]
;クラトであったフラグ
[eval exp="f.event_2_kra_sonogo=1"]
;クラト食事フラグ
[eval exp="f.event_2_kra_meal=1"]


[message_kakusu_ad][refresh_hanyou]


[jump target=*map]





;[elsif exp=""]

;[elsif exp=""]


[else]


[if exp="f.irain_move==0"]
[bg storage="creru_uradoori_yuu.jpg"]
[else]
[bg storage="creru_uradoori.jpg"]

[endif]

[message_settei_ad]
[item_get]
*map
[message_kakusu_ad]
[creru_outo_map]


[endif]



[endmacro]





[return]
