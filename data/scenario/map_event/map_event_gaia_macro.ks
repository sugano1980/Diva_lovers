


;ガイアの森
[macro name="map_event_gaia_macro"]

[free name="event" layer=2]
[message_kakusu_ad]
[call storage="live2d_baka_macro.ks"]



[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]

[elsif exp="f.event_2_gaia==2"]
[message_settei_ad][skip_button]

[if exp="f.irain_move==0"]
[bg storage="gaiamori_yuu_tasogare.jpg"]
[else]
[bg storage="gaiamori_tasogare.jpg"]
[endif]

[live2d_load]
[live2d_on][live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
[live2d_load_off]
[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]

#ランスロット
「やあ、[name]。どうした？」[p]
#
[jump target=*event_2_gaia]


[elsif exp="f.event_2_gaia==1"]
[live2d_load]
[live2d_on][live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
[live2d_load_off]

[message_settei_ad][skip_button]

[if exp="f.irain_move==0"]
[bg storage="gaiamori_yuu_tasogare.jpg"]
[else]
[bg storage="gaiamori_tasogare.jpg"]
[endif]


;ガイアのゴミ拾いイベント
#&f.name
「あれ、なんだろう。街の人たちが集まってる・・・」[p]
#
[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[baka_exp_normal_warai]

#ランスロット
「やあ、[name]」[p]
#
#&f.name
「ランスロット！今日って、何かあったっけ？」[p]
#


[baka_eyes_right]
#ランスロット
「ああ、秋冬、森に落ち葉がたまったからな」[p]




「掃除も兼ねて、落ち葉拾いだ」[p]

#
#&f.name
「掃除・・・」[p]
#

[baka_head_under_y]
[baka_head_normal]

#ランスロット
「ああ」[p]
#
#&f.name
「落ち葉拾いかあ・・・」[p]
#
#&f.name
（ガイアの森って結構広いんだよね・・・ちょっと大変かも）[p]
#

*event_2_gaia
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【落ち葉拾い】

[glink target=*e_2_1 text="（手伝う）" size=17 width=600 x=65 y=200]
[glink target=*e_2_2 text="（手伝わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]



*e_2_1
 [free name="sentakusi" layer=0]
[hidemenu][hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[baka_exp_normal_warai]
[endif]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[baka_exp_normal_warai]
#&f.name
「よし！頑張ろう！」[p]
#
[jump target=*gaia_otiba]

*e_2_2
[hidemenu][hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[baka_exp_normal_warai]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#&f.name
「大変そうだけど、頑張ってね」[p]
#
#ランスロット
「ああ」[p]
#

[live2d_hide name="baka0"]
[live2d_off][live2d_delete_all]
[eval exp="f.event_2_gaia=2"]
[creru_outo_map]




*gaia_otiba
[anten_live2d][free name="anten" layer=3]

#&f.name
「よーし、これくらいでいいかな」[p]
#


[baka_arms_kosinite_left_sitahuku]
[baka_body_left_z]
[baka_mod_idle_no_move]

#ランスロット
「ずいぶんきれいになったな」[p]
#

#&f.name
「うん！」[p]

街の人の信頼度がアップ！[p]
[town_trust_up]
魅力が3アップ！[p]
[eval exp="f.town_trust=f.town_trust+3"]
[eval exp="f.irain_charm=f.irain_charm+3"]

[live2d_on][live2d_new name="miko" model_id="miko" lip=true jname="ガイアの巫女"]
[live2d_show name="miko" y=-0.45 x=-0.7 scale=1.2]

[baka_body_normal]
[baka_mod_idle]
[live2d_motion name="baka0" mtn="idle"]
#
#ガイアの巫女
「皆様、ありがとうございました。
ガイア・・・精霊たちも喜んでいます。
来週末のカーニバルにはきっと、幸先のいいお告げが聞けるでしょう」[p]
#

#&f.name
「カーニバル？」[p]
#
[baka_head_under_y]
[baka_head_normal]

#ランスロット
「来週末は、国をあげての祭りだぞ。忘れてしまったか？」[p]
#
#&f.name
「あ・・・えーと・・・」[p]
#
#ランスロット
「この世界のあらゆるものに宿る神とも呼ばれる・・・精霊たちがカーニバルの日にここに集まるんだ」[p]
#
#&f.name
「それで、さっきのお告げだったっけ？」[p]
#

[baka_head_right_x]
[baka_body_right_z]
#ランスロット
「ああ、この国・・・クレール王国の未来を予言するんだ」[p]
#
[baka_body_normal]
[baka_head_normal]
#&f.name
「未来・・・そんなの、本当にわかるんだ・・・」[p]
#
[baka_head_under_y]
[baka_head_normal]
#ランスロット
「・・・そうだな」[p]
#

[miko_exp_warai]
[live2d_mod name="miko" jname="巫女"]
#ガイアの巫女
「ランスロット様、いつもありがとうございます。おかげで今年も助かりました」[p]
#

[baka_head_right_x]
[baka_body_right_x]
#ランスロット
「いえ、ガイアの森は広いですから・・・[r]
[baka_head_normal]
街の人たちの有志だけでは間に合わないところもあるでしょう」[p]
#
[baka_body_normal]
[live2d_mod name="miko" jname="ガイアの巫女"]

[miko_exp_normal]
[miko_exp_metoji]
#ガイアの巫女
「精霊たちも、貴方様に感謝していることでしょう。彼らの御加護が、あらんことを」[p]
#

[baka_exp_metoji_warai]
#ランスロット
「ありがとうございます」[p]
#

[live2d_hide name="miko"]
#&f.name
（毎年手伝ってたんだ・・・知らなかったな）[p]
#

[anten_live2d][free name="anten" layer=3]

[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[baka_exp_normal_warai]

[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]


#ランスロット
「ちょうど　夕食の時間だな」[p]
#

[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
#ランスロット
「ちょうど　昼食の時間だな」[p]
#

[endif]

#ランスロット
「もしよかったら食事でもしていくか。試験勉強の気晴らしにもなるだろう」[p]
#
*event_2_gaia_2
[sentakusi][r]【食事かあ・・・】

[glink target=*e_2_2_1 text="（一緒に食べにいく）" size=17 width=600 x=65 y=200]
[glink target=*e_2_2_2 text="（遠慮する）" size=17 width=600 x=65 y=260]
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*e_2_2_1
 [free name="sentakusi" layer=0]
[hidemenu][hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[baka_exp_normal_warai]
[endif]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;仲間フラグ
[eval exp="f.friend=1"]

[baka_exp_normal_warai]
#ランスロット
「よし、じゃあどこにするか」[p]
#
;店を選ぶ


[restaurant_choice]



[if exp="f.r_kajikaji==1||f.r_hirayama==1||f.r_oikawa==1"]

#ランスロット
「お前は魚料理が好きだな。私も好きだ」[p]
#
[rans]
[koukando_up]
[endif]


[live2d_fadeout time=1000]

[restaurant_haikei]


[call storage="live2d_baka_macro.ks"]

[call storage="kaiwa/ranskaiwa_new.ks"]

[live2d_mod name="baka0" y=-3.0 scale=6.5]

[live2d_fadein time=1000]



[baka_exp_normal_warai]
#ランスロット

「何でも好きなものを頼んでいいぞ」[p]
#
[live2d_fadeout time=1000]

[call storage="store_macro.ks"]
[menu_choice]



[bg storage="&f.shokuji_haikei"]
[live2d_fadein time=1000]
[baka_exp_normal]
#ランスロット
「ライオネスは停職扱いになったらしいな」[p]
#
#&f.name
「知ってたの？」[p]
#
#ランスロット
「昨日グレッグ団長から聞いた。
今は始末書と報告書に追われて多忙なようだ」[p]
「あと、試験の準備もあるだろうしな」[p]
#
#&f.name
「そうなんだ・・・」[p]
#

[if exp="f.equip_item_current!=3"]

[baka_mod_idle_no_move]
#ランスロット
「・・・・・・」[p]
#
#&f.name
「・・・・・・？どうしたの？」[p]
#
[rans_hair_comment]


#&f.name
（そうなのか・・・）[p]
#
[baka_exp_normal]
[endif]


[if exp="f.equip_item_current_2!=1"]
[baka_head_normal]
[baka_mod_idle_no_move]
[baka_exp_mihiraki]
[baka_arms_normal]
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
[rans_equip_comment]
[baka_exp_normal_warai]

[endif]


;会話イベント
[call storage="kaiwa/ranskaiwa_new.ks"]
[ranskaiwa]

[message_settei_ad]
[baka_exp_normal]
#ランスロット
「いい時間だな。そろそろいくか」[p]
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

;------------
[live2d_fadeout time=1000]

[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]



[live2d_mod name="baka0" y=-1.7 x=0.0 scale=4.3]
[live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「それじゃあ、引き続き頑張れよ」[p]
#
#&f.name
「はい！」[p]
#
;仲間フラグ
[eval exp="f.friend=0"]
[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]
[anten]
[eval exp="f.event_2_gaia=0"]
[eval exp="f.event_2_lioness_meal=1"][refresh_hanyou]
[jump target=*map]

;---------------
*e_2_2_2
 [free name="sentakusi" layer=0]
[hidemenu][hidemenubutton]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[baka_exp_normal_warai]
[endif]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[baka_exp_normal_warai]
#ランスロット
「そうか、わかった。頑張れよ」[p]
#

#&f.name
「うん！」[p]
#
[anten_live2d][free name="anten" layer=3]
[live2d_hide name="baka0"]
[live2d_off][live2d_delete_all]
[message_kakusu_ad]
[eval exp="f.event_2_gaia=0"]
[refresh_hanyou]
[jump target=*map]



;[elsif exp=""]

;[elsif exp=""]


[else]

[if exp="f.irain_move==0"]
[bg storage="gaiamori_yuu_tasogare.jpg"]
[else]
[bg storage="gaiamori_tasogare.jpg"]
[endif]
[message_settei_ad]

[item_get]

*map
[message_kakusu_ad]
[creru_outo_map]

[endif]


[endmacro]






[return]
