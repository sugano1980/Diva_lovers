
;酒場
[macro name="map_event_sakaba_macro"]
[call storage="live2d_lioness_macro.ks"]
[if exp="f.event_sakaba==1"]

[jump storage="episode/epi1.ks" target=*sakaba]

[elsif exp="f.event_2_lioness_meal==1"]
[live2d_load]
[live2d_on][live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_load_off]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka1_yuu_tasogare.jpg"]
[else]
[bg storage="crerumatinaka1_tasogare.jpg"]
[endif]



[message_settei_ad][skip_button]


#&f.name
「あれ？あれって・・・ライオネス？」[p]
#

[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]


#ライオネス
「うーん・・・やっぱ、肉だよな・・・」[p]
#
[lioness_face_muzukasii]
#&f.name
（なんかぶつぶつ言ってるけど・・・）[p]
#



*event_2_lioness_meal_choice
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【声をかける？】

[glink target=*l_m_1 text="（声をかける）" size=17 width=600 x=65 y=200]
[glink target=*l_m_2 text="（かけない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]



*l_m_1
 [free name="sentakusi" layer=0]
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#&f.name
「ライオネス！」[p]
#



#ライオネス
「ああ？・・・お、お前か」[p]
#

#&f.name
「何してるの？」[p]
#

[lioness_arms_kosinite_left]
#ライオネス
「飯を食いにきたんだよ」[p]
#

#&f.name
「騎士団の食堂でご飯出るよね？」[p]
#

[lioness_face_chottoikari]
#ライオネス
「バーカ！あんなチビッとで俺の腹が満たされるかっての！！いっつも追加で飯食いにきてんだ」[p]
#

#&f.name
（そうなんだ・・・）[p]
#

#&f.name
「そういえば、そろそろ

[if exp="f.irain_move==1"]
おひる
[else]
夕食の時間
[endif]


だよね」[p]
#

[lioness_face_normal]
[lioness_head_under_y]
[lioness_face_otikomi]


#ライオネス
「しかも今日は追加の報告書に手間取って飯食いそびれた・・・」[p]
#

#&f.name
（あ・・・ランスロットが言ってたっけ・・・）[p]
#

#&f.name
「お、お疲れ様・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_body_under_y]
[lioness_head_normal]
[lioness_face_warai]

#ライオネス
「よし！やっぱ肉だな！どうせならお前も付き合え」[p]
#

#&f.name
「えっ、な、なんで」[p]
#


[lioness_face_normal]
#ライオネス
「いいじゃねえか、お前も飯まだなんだろ？」[p]
#

#&f.name
「ま、まあ・・・」[p]
#


*event_2_lioness_meal_choice_2
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【食べにいく？】

[glink target=*l_m_2_1 text="（一緒に食べにいく）" size=17 width=600 x=65 y=200]
[glink target=*l_m_2_2 text="（いかない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]



*l_m_2_1
 [free name="sentakusi" layer=0]
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]
[call storage="store_macro.ks"]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;仲間フラグ
[eval exp="f.friend=2"]

[restaurant_choice]

[if exp="f.r_romana==1||f.r_beruzoku==1||f.r_moon==1"]
[lioness_face_normal_warai]
#ライオネス
「わかってるじゃねーか！やっぱ肉だよな！」[p]
#
[lion]
[koukando_up]
[endif]
[live2d_fadeout time=1000]

[restaurant_haikei]


[call storage="live2d_lioness_macro.ks"]

[call storage="kaiwa/lionkaiwa_new.ks"]

[live2d_mod name="lioness" y=-2.6 scale=5.7]
[live2d_fadein time=1000]


[lioness_arms_normal]

#ライオネス
「さーて、何食うか」[p]
#

[live2d_fadeout time=1000]

[menu_choice]



[bg storage="&f.shokuji_haikei"]
[live2d_fadein time=1000]
[lioness_face_normal]


[lion_hair_comment]
[lion_equip_comment]


#&f.name
「ランスロットから聞いたけど・・・始末書とかって・・・」[p]
#

[lioness_arms_poripori]
[lioness_eyes_right]
[lioness_head_right_x]
[lioness_body_right_z]
#ライオネス
「・・・・・・」[p]
#

#&f.name
「あっ・・・ごめんなさい」[p]
#

[lioness_face_yokome_otikomi]
#ライオネス
「兄貴のやつ余計なことをベラベラと・・・」[p]
#

#&f.name
「た、大変そうだね・・・」[p]
#


[lioness_arms_normal]
[lioness_face_yareyare]
#ライオネス
「まあな・・・モンスター倒す方がよっぽど楽だぜ」[p]
#


[lioness_head_above_y]
[lioness_head_right_x]
[lioness_arms_udekumi]
[lioness_eyes_right_above]
#ライオネス
「団長には字が汚いから書き直せとか言われるし・・・読めりゃいいじゃねーかよってんだ」[p]
#

#&f.name
（・・・読めなかったんじゃ・・・）[p]
#

[lioness_arms_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_normal]

;会話イベント
[call storage="kaiwa/lionkaiwa_new.ks"]
[lionkaiwa]



[message_settei_ad]

[lioness_face_normal_warai]

#ライオネス
 「あー、ようやく腹が落ち着いたぜ。そろそろ出るか」[p]
 #
お腹がいっぱいになった！！[p]
[playse storage="item_status_up_onjin.ogg"]
;------------------能力値アップ
[if exp="f.r_kajikaji==1"]
;頭脳
[eval exp="f.irain_brain=f.irain_brain+3"]
頭脳が３アップ！！[p]
[elsif exp="f.r_hirayama==1"]
[eval exp="f.irain_brain=f.irain_brain+2"]
頭脳が２アップ！！[p]
[elsif exp="f.r_oikawa==1"]
[eval exp="f.irain_brain=f.irain_brain+1"]
頭脳が１アップ！！[p]



[elsif exp="f.r_romana==1"]
;技術
[eval exp="f.irain_tec=f.irain_tec+3"]
技術が３アップ！！[p]

[elsif exp="f.r_beruzoku==1"]
[eval exp="f.irain_tec=f.irain_tec+2"]
技術が２アップ！！[p]
[elsif exp="f.r_moon==1"]
[eval exp="f.irain_tec=f.irain_tec+1"]
技術が１アップ！！[p]
[elsif exp="f.r_bejibeji==1"]
[eval exp="f.irain_charm=f.irain_charm+1"]
魅力が１アップ！！[p]
;魅力

[elsif exp="f.r_poteto==1"]
[eval exp="f.irain_charm=f.irain_charm+2"]
魅力が２アップ！！[p]


[elsif exp="f.r_kyarokyaro==1"]
[eval exp="f.irain_charm=f.irain_charm+3"]
魅力が３アップ！！[p]


[endif]

;------------
[live2d_fadeout time=1000]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka1_yuu_tasogare.jpg"]
[else]
[bg storage="crerumatinaka1_tasogare.jpg"]
[endif]


[live2d_mod name="lioness" y=-1.7 x=0.0 scale=4.3]
[live2d_fadein time=1000]

#ライオネス
「そんじゃ、試験勉強ちゃんとやれよ」[p]
#


#&f.name
「わかってるよ！！」[p]
#
;フラグおふ
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]

[eval exp="f.r_romana=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_moon=0"]

[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]



;仲間フラグ
[eval exp="f.friend=0"]
[live2d_fadeout time=1000]
[anten]
[eval exp="f.event_2_lioness_meal=0"]
[live2d_hide name="lioness"]
[live2d_off][live2d_delete_all][refresh_hanyou]
[creru_outo_map]






;------------------------
*l_m_2_2
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#ライオネス
「なんだ、そうかよ。それなら俺だけで行ってくるわ。じゃな」[p]
#
[eval exp="f.event_2_lioness_meal=0"]
[live2d_hide name="lioness"]
[live2d_off][live2d_delete_all][refresh_hanyou]
[creru_outo_map]




;-------------------------

*l_m_2
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]

[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
#&f.name
（邪魔しないほうがいいのかもね）[p]
#

[eval exp="f.event_2_lioness_meal=0"]
[live2d_hide name="lioness"]
[live2d_off][live2d_delete_all][refresh_hanyou]
[creru_outo_map]













;[elsif exp=""]

;[elsif exp=""]


[else]


[if exp="f.irain_move==0"]
[bg storage="crerumatinaka1_yuu_tasogare.jpg"]
[else]
[bg storage="crerumatinaka1_tasogare.jpg"]
[endif]


[message_settei_ad]
[item_get]
#
[message_kakusu_ad]
[creru_outo_map]

[endif]








[endmacro]




[return]
