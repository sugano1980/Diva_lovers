

[macro name="upstatus_random"]

[if exp="f.date_now!=1"]
;------------------------------
[message_settei_ad]
[iscript]
tf.upstatus = Math.floor( Math.random() * 3) + 1
//tf.upstatus_num = 3;
[endscript]

[eval exp="tf.upstatus_num=3"]

[if exp="f.disc_num>2"]
[eval exp="tf.upstatus_num = tf.upstatus_num*3"]
[endif]
[playse storage="item_status_up_onjin.ogg"]
[if exp="tf.upstatus==1"]


;もっと楽しむレストラン
[if exp="f.other_item_stock[34]>0"]
[eval exp="tf.upstatus_num=tf.upstatus_num*2"]
[endif]

[eval exp="f.irain_tec=f.irain_tec+tf.upstatus_num"]

[cm]技術が[emb exp="tf.upstatus_num"]ポイントアップ！[l]

[elsif exp="tf.upstatus==2"]

[eval exp="f.irain_brain=f.irain_brain+tf.upstatus_num"]

[cm]頭脳が[emb exp="tf.upstatus_num"]ポイントアップ！[l]


[elsif exp="tf.upstatus==3"]

[eval exp="f.irain_charm=f.irain_charm+tf.upstatus_num"]

[cm]魅力が[emb exp="tf.upstatus_num"]ポイントアップ！[l]


[endif]

;----------------
[endif]

[endmacro]




[macro name="restaurant_choice"]

;記憶ようのレストランフラグ
[eval exp="tf.rest_c = 1"]
[if exp="f.r_ika==1"]

[menu_choice]
[endif]




;どこのお店にしよう？
*restaurant_choice
[if exp="f.sweet_choice==1"]
[jump target=*restaurant_choice_sweet]
[endif]
[if exp="f.lunch_choice==1"]
[jump target=*restaurant_choice_lunch]
[endif]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【どのお店にしよう？】

[glink target=*r_1 text="（魚料理のお店）" size=17 width=600 x=65 y=200]
[glink target=*r_2 text="（肉料理のお店）" size=17 width=600 x=65 y=260]
[glink target=*r_3 text="（野菜料理のお店）" size=17 width=600 x=65 y=320]
[if exp="f.disc_num>2&&f.sweet_choice==1"]
[glink target=*r_4 text="（スイーツのお店）" size=17 width=600 x=65 y=380]
[endif]
[if exp="f.disc_num>2&&f.lunch_choice==1"]
[glink target=*r_5 text="（お弁当のお店）" size=17 width=600 x=65 y=440]
[endif]



[s]

*r_1


 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_sakana]


*r_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_niku]


*r_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_yasai]

*r_4
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_sweet]

*r_5
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_lunch]


*restaurant_choice_sakana
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【魚料理のどの店にしよう？】

[glink target=*sakana_1 text="（カジカジ亭）" size=17 width=600 x=65 y=200]
[glink target=*sakana_2 text="（ヒラヤマ亭）" size=17 width=600 x=65 y=260]
[glink target=*sakana_3 text="（オイカワ亭）" size=17 width=600 x=65 y=320]


[s]

*sakana_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_kajikaji=1"]
[kioku_kajikaji]
[jump target=*choice_end]
*sakana_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_hirayama=1"]
[kioku_hirayama]
[jump target=*choice_end]

*sakana_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_oikawa=1"]
[kioku_oikawa]
[jump target=*choice_end]


*restaurant_choice_niku
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【肉料理のどのお店にしよう？】


[glink target=*niku_1 text="（ロマナーデ）" size=17 width=600 x=65 y=200]
[glink target=*niku_2 text="（ベル族の牛）" size=17 width=600 x=65 y=260]
[glink target=*niku_3 text="（ムーン鶏）" size=17 width=600 x=65 y=320]


[s]

*niku_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_romana=1"]
[kioku_romana]
[jump target=*choice_end]

*niku_2
 [free name="sentakusi" layer=0]


[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_beruzoku=1"]
[kioku_beruzoku]
[jump target=*choice_end]

*niku_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_moon=1"]
[kioku_moon]
[jump target=*choice_end]




*restaurant_choice_yasai
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【野菜料理のどのお店にしよう？】



[glink target=*yasai_1 text="（ベジベジ食堂）" size=17 width=600 x=65 y=200]
[glink target=*yasai_2 text="（レストランポテトマニア）" size=17 width=600 x=65 y=260]
[glink target=*yasai_3 text="（キャロキャロ食堂）" size=17 width=600 x=65 y=320]


[s]

*yasai_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_bejibeji=1"]
[kioku_bejibeji]
[jump target=*choice_end]

*yasai_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_poteto=1"]
[kioku_poteto]
[jump target=*choice_end]

*yasai_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_kyarokyaro=1"]
[kioku_kyarokyaro]
[jump target=*choice_end]

*restaurant_choice_sweet
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【スイーツのどのお店にしよう？】



[glink target=*sweet_1 text="（スイーツストック）" size=17 width=600 x=65 y=200]
[glink target=*sweet_2 text="（クリームマニア）" size=17 width=600 x=65 y=260]



[s]


*sweet_1
 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_sweetvalue=1"]
[kioku_sweet]
[jump target=*choice_end]


*sweet_2
[free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_creammania=1"]
[kioku_cream]
[jump target=*choice_end]



*restaurant_choice_lunch
[call storage="scenario_2/menu_hyouji_data.ks"]
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【どのお弁当にしよう？】
[eval exp="f.lunch=[0,0,0]"]


[glink target=*lunch_1 text=&tf.menu_gohan[12][0] size=17 width=600 x=65 y=200]
[glink target=*lunch_2 text=&tf.menu_gohan[12][1] size=17 width=600 x=65 y=260]
[glink target=*lunch_3 text=&tf.menu_gohan[12][2] size=17 width=600 x=65 y=320]

[s]

*lunch_1
[cm]
 [free name="sentakusi" layer=0]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_lunch=0"]
[kioku_lunch_menu_1]

[if exp="f.date_now==1"]
[eval exp="f.lunch_pack=1"]
[endif]

[eval exp="f.lunch[0]=1"]
[if exp="f.friend==1"]
[live2d_fadein time=1000]
[rans_exp_normal_warai]
#ランスロット
「美味しそうだな。こういった料理は好きだ」[p]
[rans]
[koukando_up]
[live2d_fadeout time=1000]
[action_return_rans]
[endif]

[jump target=*choice_end]

*lunch_2
 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[eval exp="f.r_lunch=0"]
[kioku_lunch_menu_2]

[if exp="f.date_now==1"]
[eval exp="f.lunch_pack=1"]
[endif]

[eval exp="f.lunch[1]=1"]

[if exp="f.friend==2"]
[live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「いいな！その弁当！！」[p]
[lion]
[koukando_up]
[live2d_fadeout time=1000]
[action_return_lion]
[endif]

[jump target=*choice_end]

*lunch_3
 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[eval exp="f.r_lunch=0"]
[kioku_lunch_menu_3]

[if exp="f.date_now==1"]
[eval exp="f.lunch_pack=1"]
[endif]

[eval exp="f.lunch[2]=1"]
[if exp="f.friend==3"]
[live2d_fadein time=1000]
[aho_face_normal]
#クライスト
「俺そういうの好きだな。もしかして知ってた？」[p]
[kra]
[koukando_up]
[live2d_fadeout time=1000]
[action_return_kra]
[endif]

[jump target=*choice_end]



*choice_end
[cm][free name="menu_moji" layer=1]
[message_settei_ad]
[if exp="f.date_now!=1"]
;デート中の時は処理を一本化しているため分岐ように残す
[eval exp="f.lunch_choice=0"]
[endif]


[endmacro]



[macro name="restaurant_random_choice"]


;何料理のお店
[iscript]
f. restaurant= Math.floor(Math.random() * 2) + 1
[endscript]

[if exp="f.restaurant==1"]
;魚料理の中で店を選ぶ
[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_kajikaji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_hirayama=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_oikawa=1"]
[endif]


[elsif exp="f.restaurant==2"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_romana=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_beruzoku=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_moon=1"]
[endif]


[elsif exp="f.restaurant==3"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_bejibeji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_poteto=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_kyarokyaro=1"]
[endif]


[endif]








[endmacro]

[macro name="menu_choice"]

[call storage="scenario_2/menu_hyouji.ks"]
;メニュー透明ボタンの位置座標
[eval exp="tf.menu_x=440"]
[eval exp="tf.menu_y=92"]
;メニュー文字の位置座標
[eval exp="tf.menu_x_moji=460"]
[eval exp="tf.menu_y_moji=90"]

[bg storage="menu_haikei.png"]

[message_settei_ad]

#&f.name
「どの料理にしよう？」[p]
#
[message_kakusu_ad]

[if exp="f.r_kajikaji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_3.png" x=150 y=300]

[image layer=1 name="menu_moji" page=fore storage="kajituna.png" x=70 y=50]

[menu_gohan]

[s]


[elsif exp="f.r_hirayama==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_1.png" x=80 y=300]

[image layer=1 name="menu_moji" page=fore storage="hirayama.png" x=90 y=0]

[menu_gohan]

[s]


[elsif exp="f.r_oikawa==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_2.png" x=90 y=200]

[image layer=1 name="menu_moji" page=fore storage="oikawa.png" x=70 y=80]

[menu_gohan]

[s]



[elsif exp="f.r_romana==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_4.png" x=150 y=300]

[image layer=1 name="menu_moji" page=fore storage="romanade.png" x=90 y=20]

[menu_gohan]

[s]




[elsif exp="f.r_beruzoku==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_5.png" x=80 y=300]

[image layer=1 name="menu_moji" page=fore storage="beruushi.png" x=35 y=30]

[menu_gohan]

[s]



[elsif exp="f.r_moon==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_6.png" x=150 y=350]

[image layer=1 name="menu_moji" page=fore storage="moon.png" x=80 y=30]


[menu_gohan]
[s]





[elsif exp="f.r_bejibeji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_7.png" x=160 y=380]

[image layer=1 name="menu_moji" page=fore storage="bejibeji.png" x=80 y=40]

[menu_gohan]

[s]

[elsif exp="f.r_poteto==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_8.png" x=165 y=450]

[image layer=1 name="menu_moji" page=fore storage="poteto.png" x=90 y=100]

[menu_gohan]

[s]

[elsif exp="f.r_kyarokyaro==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_9.png" x=160 y=350]

[image layer=1 name="menu_moji" page=fore storage="kyarokyaro.png" x=130 y=100]

[menu_gohan]

[s]

[elsif exp="f.r_ika==1"]
*ika_menu
[image layer=1 name="menu_moji" page=fore storage="menu_10.png" x=120 y=150]

[image layer=1 name="menu_moji" page=fore storage="ika_tei.png" height="150" width="150" x=190 y=70]

[menu_gohan]

[s]

[elsif exp="f.r_uminari==1"]
*uminari_menu
[image layer=1 name="menu_moji" page=fore storage="menu_11.png" height="338" width="450" x=20 y=260]

[image layer=1 name="menu_moji" page=fore storage="uminari.png" height="375" width="500" x=0 y=50]

[menu_gohan]

[s]

[elsif exp="f.r_hukurou==1"]
*hukurou_menu
[image layer=1 name="menu_moji" page=fore storage="menu_12.png" height="338" width="450" x=10 y=235]

[image layer=1 name="menu_moji" page=fore storage="hukurou.png" height="291" width="300" x=95 y=50]

[menu_gohan]


[endif]


[s]
;-----------------------------------
*menu_kajikaji_1
[kioku_kajikaji_menu_1]
[jump target=*end]
;------------------
*menu_kajikaji_2
[kioku_kajikaji_menu_2]
[jump target=*end]
;---------------------
*menu_kajikaji_3
[kioku_kajikaji_menu_3]
[jump target=*end]
;----------------------
*menu_kajikaji_4
[kioku_kajikaji_menu_4]
[jump target=*end]
;---------------------
*menu_kajikaji_5
[kioku_kajikaji_menu_5]
[jump target=*end]
;---------------------------------

*menu_hirayama_1
[kioku_hirayama_menu_1]
[jump target=*end]
;-----------------------
*menu_hirayama_2
[kioku_hirayama_menu_2]
[jump target=*end]
;---------------------
*menu_hirayama_3
[kioku_hirayama_menu_3]
[jump target=*end]
;---------------------------
*menu_hirayama_4
[kioku_hirayama_menu_4]
[jump target=*end]
;-----------------------------
*menu_hirayama_5
[kioku_hirayama_menu_5]
[jump target=*end]
;----------------------------

*menu_oikawa_1
[kioku_oikawa_menu_1]
[jump target=*end]
;------------------------------
*menu_oikawa_2
[kioku_oikawa_menu_2]
[jump target=*end]
;------------------------------
*menu_oikawa_3
[kioku_oikawa_menu_3]
[jump target=*end]
;--------------------------------
*menu_oikawa_4
[kioku_oikawa_menu_4]
[jump target=*end]
;--------------------------------
*menu_oikawa_5
[kioku_oikawa_menu_5]
[jump target=*end]
;--------------------------

*menu_romana_1
[kioku_romana_menu_1]
[jump target=*end]
;--------------------------
*menu_romana_2
[kioku_romana_menu_2]
[jump target=*end]
;---------------------------
*menu_romana_3
[kioku_romana_menu_3]
[jump target=*end]
;----------------------------
*menu_romana_4
[kioku_romana_menu_4]
[jump target=*end]
;-------------------------------
*menu_romana_5
[kioku_romana_menu_5]
[jump target=*end]

;-----------------------------
*menu_beruzoku_1
[kioku_beruzoku_menu_1]
[jump target=*end]
;-----------------------------
*menu_beruzoku_2
[kioku_beruzoku_menu_2]
[jump target=*end]
;------------------------------
*menu_beruzoku_3
[kioku_beruzoku_menu_3]
[jump target=*end]
;-------------------------------
*menu_beruzoku_4
[kioku_beruzoku_menu_4]
[jump target=*end]
;---------------------------------
*menu_beruzoku_5
[kioku_beruzoku_menu_5]
[jump target=*end]

;---------------------------------
*menu_moon_1
[kioku_moon_menu_1]
[jump target=*end]
;--------------------------------
*menu_moon_2
[kioku_moon_menu_2]
[jump target=*end]
;-----------------------------
*menu_moon_3
[kioku_moon_menu_3]
[jump target=*end]
;------------------------------
*menu_moon_4
[kioku_moon_menu_4]
[jump target=*end]
;-----------------------------
*menu_moon_5
[kioku_moon_menu_5]
[jump target=*end]
;------------------------------

*menu_bejibeji_1
[kioku_bejibeji_menu_1]
[jump target=*end]
;------------------------------
*menu_bejibeji_2
[kioku_bejibeji_menu_2]
[jump target=*end]
;---------------------------
*menu_bejibeji_3
[kioku_bejibeji_menu_3]
[jump target=*end]
;----------------------------
*menu_bejibeji_4
[kioku_bejibeji_menu_4]
[jump target=*end]
;---------------------------------------------------------
*menu_bejibeji_5
[kioku_bejibeji_menu_5]
[jump target=*end]
;------------------------------------------------------------------

*menu_poteto_1
[kioku_poteto_menu_1]
[jump target=*end]
;--------------------------------------------------------------------
*menu_poteto_2
[kioku_poteto_menu_2]
[jump target=*end]
;--------------------------------------
*menu_poteto_3
[kioku_poteto_menu_3]
[jump target=*end]
;---------------------------------
*menu_poteto_4
[kioku_poteto_menu_4]
[jump target=*end]
;-----------------------------------
*menu_poteto_5
[kioku_poteto_menu_5]
[jump target=*end]
;---------------------------------

*menu_kyarokyaro_1
[kioku_kyarokyaro_menu_1]
[jump target=*end]
;--------------------------------
*menu_kyarokyaro_2
[kioku_kyarokyaro_menu_2]
[jump target=*end]
;--------------------------------
*menu_kyarokyaro_3
[kioku_kyarokyaro_menu_3]
[jump target=*end]
;---------------------------------------
*menu_kyarokyaro_4
[kioku_kyarokyaro_menu_4]
[jump target=*end]
;------------------------------------------
*menu_kyarokyaro_5
[kioku_kyarokyaro_menu_5]
[jump target=*end]
;-----------------------------------------

*menu_ika_1
[kioku_ika_menu_1]
[jump target=*end]
;--------------------------------
*menu_ika_2
[kioku_ika_menu_2]
[jump target=*end]
;--------------------------------
*menu_ika_3
[kioku_ika_menu_3]
[jump target=*end]
;---------------------------------------
*menu_ika_4
[kioku_ika_menu_4]
[jump target=*end]
;------------------------------------------
*menu_ika_5
[kioku_ika_menu_5]
[jump target=*end]
;-----------------------------------------

*menu_uminari_1
[kioku_uminari_menu_1]
[jump target=*end]
;--------------------------------
*menu_uminari_2
[kioku_uminari_menu_2]
[jump target=*end]
;--------------------------------
*menu_uminari_3
[kioku_uminari_menu_3]
[jump target=*end]
;---------------------------------------
*menu_uminari_4
[kioku_uminari_menu_4]
[jump target=*end]
;------------------------------------------
*menu_uminari_5
[kioku_uminari_menu_5]
[jump target=*end]
;-----------------------------------------

*menu_hukurou_1
[kioku_hukurou_menu_1]
[jump target=*end]
;--------------------------------
*menu_hukurou_2
[kioku_hukurou_menu_2]
[jump target=*end]
;--------------------------------
*menu_hukurou_3
[kioku_hukurou_menu_3]
[jump target=*end]
;---------------------------------------
*menu_hukurou_4
[kioku_hukurou_menu_4]
[jump target=*end]
;------------------------------------------
*menu_hukurou_5
[kioku_hukurou_menu_5]
[jump target=*end]
;-----------------------------------------


*end
[cm][free name="menu_moji" layer=1]
[menu_chara_like]
[eval exp="tf.serihu_sumi=0"]
[message_settei_ad]

[endmacro]


[macro name="restaurant_haikei"]

[if exp="f.irain_move==0"]

[playbgm storage="dinner_musmus.ogg"]

[else]

[playbgm storage="lunch_musmus.ogg"]

[endif]



[if exp="f.r_kajikaji==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_hirayama==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_oikawa==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_romana==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_beruzoku==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_moon==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]


[elsif exp="f.r_bejibeji==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_poteto==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_kyarokyaro==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_ika==1&&f.irain_move==0"]

[bg storage="sharomushokudou_yoru.jpg"]
[eval exp="f.shokuji_haikei='sharomushokudou_yoru.jpg'"]

[elsif exp="f.r_hukurou==1&&f.irain_move==0"]

[bg storage="wesuta_sakaba_yoru.jpg"]
[eval exp="f.shokuji_haikei='wesuta_sakaba_yoru.jpg'"]


[elsif exp="f.r_kajikaji==1"]

[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_hirayama==1"]
[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_oikawa==1"]
[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_romana==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]
[elsif exp="f.r_beruzoku==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]
[elsif exp="f.r_moon==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_bejibeji==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_poteto==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_kyarokyaro==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]

[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_ika==1"]

[bg storage="sharomushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sharomushokudou_tasogare.jpg'"]

[elsif exp="f.r_uminari==1"]

[bg storage="hune_shokudou.jpg"]
[eval exp="f.shokuji_haikei='hune_shokudou.jpg'"]

[elsif exp="f.r_hukurou==1"]

[bg storage="wesuta_sakaba.jpg"]
[eval exp="f.shokuji_haikei='wesuta_sakaba.jpg'"]

[elsif exp="f.r_sweetvalue==1"]

[bg storage="creru_cafe.jpg"]
[eval exp="f.shokuji_haikei='creru_cafe.jpg'"]

[elsif exp="f.r_creammania==1"]

[bg storage="creru_cafe.jpg"]
[eval exp="f.shokuji_haikei='creru_cafe.jpg'"]


[endif]







[endmacro]



[macro name="menu_choice_cafe"]

[call storage="scenario_2/menu_hyouji.ks"]
;メニュー透明ボタンの位置座標
[eval exp="tf.menu_x=440"]
[eval exp="tf.menu_y=87"]
;メニュー文字の位置座標
[eval exp="tf.menu_x_moji=460"]
[eval exp="tf.menu_y_moji=80"]



[bg storage="menu_haikei.png"]

[message_settei_ad]

#&f.name
「どれにしようかな？」[p]
#
[message_kakusu_ad]

[if exp="f.r_sweetvalue==1"]

[image layer=1 visible=true name="menu_moji" page=fore storage="sweet_stock.png" x=70 y=20]

[menu_gohan]



[elsif exp="f.r_creammania==1"]

[image layer=1 name="menu_moji" page=fore storage="cream_mania.png" x=90 y=20]

[menu_gohan]



[endif]
[s]


*menu_value_1


[kioku_sweet_menu_1]
[upstatus_random][jump target=*cafe_end]



*menu_value_2

[kioku_sweet_menu_2]
[upstatus_random][jump target=*cafe_end]


*menu_value_3

[kioku_sweet_menu_3]
[upstatus_random][jump target=*cafe_end]



*menu_value_4

[kioku_sweet_menu_4]
[upstatus_random][jump target=*cafe_end]



*menu_value_5

[kioku_sweet_menu_5]
[upstatus_random][jump target=*cafe_end]



*menu_value_6

[kioku_sweet_menu_6]
[upstatus_random][jump target=*cafe_end]


*menu_value_7

[kioku_sweet_menu_7]
[upstatus_random][jump target=*cafe_end]




*menu_cream_1

[kioku_cream_menu_1]
[upstatus_random][jump target=*cafe_end]



*menu_cream_2

[kioku_cream_menu_2]
[upstatus_random][jump target=*cafe_end]



*menu_cream_3
[kioku_cream_menu_3]
[upstatus_random][jump target=*cafe_end]



*menu_cream_4
[kioku_cream_menu_4]
[upstatus_random][jump target=*cafe_end]



*menu_cream_5
[kioku_cream_menu_5]
[upstatus_random][jump target=*cafe_end]



*menu_cream_6
[kioku_cream_menu_6]
[upstatus_random][jump target=*cafe_end]


*menu_cream_7
[kioku_cream_menu_7]
[upstatus_random][jump target=*cafe_end]




*cafe_end
[cm][free name="menu_moji" layer=1]
[menu_chara_like]
[eval exp="tf.serihu_sumi=0"]
[message_settei_ad]

[if exp="f.date_now!=1"]
[eval exp="f.r_sweetvalue=0"]
[eval exp="f.r_creammania=0"]
[eval exp="f.sweet_choice=0"]
[endif]



[endmacro]





[macro name="store_money"]


[eval exp="f.store=1"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[call storage="scenario_2/item_sell_macro.ks"]
[call storage="scenario_2/irain_icon_data.ks"]
[call storage="scenario_2/store_macro_add.ks"]

[message_settei_ad]


;店員セリフ
;[if exp="f.test_link!=1"]
;[showmenubutton]
;[endif]


[if exp="f.gales_hanbai==1"]
[eval exp="f.store_season_1=0"]
[eval exp="f.store_first=0"]
[eval exp="f.item_other=1"]


[elsif exp="f.curnival_yatai==1"]

[eval exp="f.store_season_1=0"]
[eval exp="f.store_first=0"]
[eval exp="f.store_yatai=1"]
[eval exp="f.item_other=1"]

[elsif exp="f.store_curnival_sale==1"]
[eval exp="f.store_first=0"]
[eval exp="f.store_season_1=0"]

[elsif exp="f.store_first==1"]

[eval exp="f.store_season_1=1"]


[else]
[endif]

*store_return
[eval exp="tf.sell=0"][message_settei_ad]
[store_message_first]

[store_event_start]
[if exp="f.store_first==1"]
[jump  target=*store_first]
[endif]

*store_choice_1
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【購入しますか？】

[glink target=*store_c_1 text="（購入する）" size=17 width=600 x=65 y=200]
[if exp="f.gales_hanbai!=1"]
[glink target=*store_c_2 text="（売却する）" size=17 width=600 x=65 y=260]
[endif]
[glink target=*store_c_3 text="（やめる）" size=17 width=600 x=65 y=320]

[s]

*store_c_1
 [free name="sentakusi" layer=0]
[clearstack]
[cm][eval exp="f.sentakuchuu= 0 "][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[if exp="f.curnival_yatai==1&&f.friend!=0"]
[friend_present]
[endif]

[jump target=*store_first]



*store_c_2
 [free name="sentakusi" layer=0]

[cm][eval exp="f.sentakuchuu= 0 "][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[eval exp="tf.sell=1"]
[jump target=*store_first]



*store_c_3

 [free name="sentakusi" layer=0]

[cm][eval exp="f.sentakuchuu= 0 "][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*store_choice_end]


*store_first
*window_hyouji
;装備変更から戻るとここに来る

[message_kakusu_ad]

[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]





*store
[iscript]

for(i=0;i<tf.store_item_number;i++){
tf.store_item_hyouji[i]=0;
}

[endscript]



[eval exp="tf.store_item_hyouji1_number=0"]
[eval exp="tf.store_item_hyouji2_number=0"]
[eval exp="tf.store_item_hyouji3_number=0"]
[eval exp="tf.store_item_hyouji4_number=0"]
[eval exp="tf.store_item_hyouji5_number=0"]
[eval exp="tf.store_item_hyouji6_number=0"]
[eval exp="tf.store_item_hyouji7_number=0"]
[eval exp="tf.store_item_hyouji8_number=0"]
[eval exp="tf.store_item_hyouji9_number=0"]
[eval exp="tf.store_item_hyouji10_number=0"]


;お金のウィンドウ表示


[eval exp="tf.money_window_x=600"]
[eval exp="tf.money_window_y=175"]

[eval exp="tf.money_x_g=620"]
[eval exp="tf.money_y_g=185"]

[eval exp="tf.money_x=650"]





;売却の場合ジャンプ
[if exp="tf.sell==1"]
[jump target=*sell]
[endif]








;販売アイテムデータをマクロからダウンロード
[if exp="f.item_other==1"]
[call storage="scenario_2/store_product_macro_other_data.ks"]
[elsif exp="f.item_cook==1"]
[call storage="scenario_2/store_product_macro_cook_data.ks"]
[else]

[call storage="scenario_2/store_product_macro_data.ks"]
[endif]
[call storage="scenario_2/store_product_macro.ks"]
[call storage="scenario_2/store_product_para.ks"]


[store_product]
[product_hyouji]

;販売アイテム表示

[eval exp="tf.store_window_x=50"]
[eval exp="tf.store_window_y=70"]

[eval exp="tf.store_item_x=tf.store_window_x+60"]
[eval exp="tf.store_item_y=tf.store_window_y+45"]
[eval exp="tf.store_item_y_d=tf.store_window_y+45"]
[eval exp="tf.store_item_y_button=tf.store_window_y+45"]

[eval exp="tf.store_item_x_icon=tf.store_item_x-40"]

[eval exp="tf.store_price_y=tf.store_item_y-30"]
[eval exp="tf.store_item_x_price=tf.store_item_x+200"]

[eval exp="tf.store_item_x_have=tf.store_item_x_price+85"]
[eval exp="tf.friend_face_y=tf.money_window_y-135"]

[eval exp="tf.store_tadasi_y=500"]



[image layer=1 page=fore visible=true  storage="store_window.png" name="store" x=&tf.store_window_x y=&tf.store_window_y]
;[bg storage="config_back.png"]




*hyouji
;お金
[image layer=1 page=fore visible=true  storage="okane.png" name="money" x=&tf.money_window_x y=&tf.money_window_y]
;お金数値
[ptext layer=2 page=fore visible=true  text="G" face=antique name="money" size=20 x=&tf.money_x_g y=&tf.money_y_g]
[if exp="f.money==0"]
[ptext layer=2 page=fore visible=true  text="0" face=antique name="money_kingaku" size=20 x=&tf.money_x y=&tf.money_y_g]
[else]
[ptext layer=2 page=fore visible=true  text="&f.money" face=antique name="money" size=20 x=&tf.money_x y=&tf.money_y_g]
[endif]
;装備の場合は画像表示


[if exp="f.item_other!=1&&f.item_cook!=1"]
[eval exp="tf.item_image_hyouji_x=tf.money_window_x-20"]
[eval exp="tf.item_image_hyouji_y=tf.money_window_y+70"]

[eval exp="tf.equip_item_id = f.equip_item_current"]
[eval exp="f.hyouji_item_1 =f.irain_icon[tf.equip_item_id].storage"]
[eval exp="tf.equip_item_id = f.equip_item_current_2"]
[eval exp="f.hyouji_item_2 =f.irain_icon[tf.equip_item_id].storage"]

[icon_hyouji_e_f]
[endif]

;プレゼント

[if exp="f.friend_present==1"]
[if exp="f.friend==1"]
[eval exp="f.friend_face='battle_face/ranslott_face.png'"]
[elsif exp="f.friend==2"]
[eval exp="f.friend_face='battle_face/lioness_face.png'"]
[elsif exp="f.friend==3"]
[eval exp="f.friend_face='battle_face/klaist_face.png'"]
[endif]
[image layer=1 page=fore visible=true  storage=&f.friend_face name="money" height="120" width="120" x=&tf.store_item_x y=1]
[endif]

;戻るボタン
[image layer=1 page=fore visible=true  storage="return.png" name="money" x=600 y=70]
[button graphic="button/toumei.png" fix=true enterimg="button/toumei.png" storage="scenario_2/store_macro.ks" target=*store_choice_end name="store" x=600 y=70]
[ptext layer=2 page=fore visible=true  text="店を出る" face=antique name="store" size=15 x=618 y=75]

;装備変更ボタン
[if exp="f.item_other!=1&&f.item_cook!=1"]
[image layer=1 page=fore visible=true  storage="return.png" name="money" x=600 y=120]
[button graphic="button/toumei.png" fix=true enterimg="button/toumei.png" storage="scenario_2/equip_change.ks" target=*first name="store" x=600 y=120]
[ptext layer=2 page=fore visible=true  text="装備変更" face=antique name="store" size=15 x=616 y=125]

;所持数の但書
[ptext layer=2 page=fore visible=true  text="※装備中のアイテムは所持数に入りません" face=antique color="#330000" name="money" size=15 x=&tf.store_item_x y=&tf.store_tadasi_y]

[endif]

[ptext layer=2 page=fore visible=true  text="値段" face=antique color="black" name="store" size=15 x=&tf.store_item_x_price y=&tf.store_price_y]

[ptext layer=2 page=fore visible=true  text="所持数" face=antique color="black" name="store" size=15 x=&tf.store_item_x_have  y=&tf.store_price_y]
;------


;ターゲット配列


[eval exp="tf.store_target=[]"]
[eval exp="tf.item_suuti=[]"]
[eval exp="tf.store_item_no=[]"]
[eval exp="tf.store_item_buy=[]"]

[iscript]
tf.store_target=[
'*store_item_1',
'*store_item_2',
'*store_item_3',
'*store_item_4',
'*store_item_5',
'*store_item_6',
'*store_item_7',
'*store_item_8',
'*store_item_9',
'*store_item_10'
];


tf.item_suuti=[
'item_suuti',
'item_suuti_2',
'item_suuti_3',
'item_suuti_4',
'item_suuti_5',
'item_suuti_6',
'item_suuti_7',
'item_suuti_8',
'item_suuti_9',
'item_suuti_10'
];



for(i=0;i<f.store_item_number;i++){

tf.store_item_no.push(0);
tf.store_item_buy.push(0);



}

[endscript]




;装備品アイコン
[eval exp="tf.store_item_y_icon=tf.store_item_y"]
[if exp="f.item_other!=1"]
[item_icon]
[endif]

;パラメータ表示
[eval exp="tf.icon_para_y=tf.store_item_y-35"]
[eval exp="tf.charm_x=tf.store_item_x_have+130"]
[eval exp="tf.brain_x=tf.store_item_x_have+90"]
[eval exp="tf.tec_x=tf.store_item_x_have+50"]

[image layer=2 page=fore visible=true  storage="tec_icon.png" x=&tf.tec_x y=&tf.icon_para_y]
[image layer=2 page=fore visible=true  storage="brain_icon.png" x=&tf.brain_x y=&tf.icon_para_y]
[image layer=2 page=fore visible=true  storage="charm_icon.png" x=&tf.charm_x y=&tf.icon_para_y]



[eval exp="tf.store_item_x_money=tf.store_item_x+200"]
[eval exp="tf.store_item_x_have_number=tf.store_item_x_money+100"]
[eval exp="tf.store_id_b = 0"]

*modotta

[eval exp="tf.product_kaisuu=0"]

[eval exp="tf.hyouji_kaisuu = tf.product_kaisuu+1"]

*product_hyouji_return

;----------商品表示-----------------------------------------------------------------------



[button graphic="button/toumei.png" enterimg="button/toumei_2.png" target=&tf.store_target[tf.product_kaisuu] name="store_moji" x=&tf.store_item_x y=&tf.store_item_y_button]


[if exp="tf.store_item_no[tf.store_id_b]==0"]

[ptext layer=2 page=fore visible=true  text=&tf.store_item_name_hyouji[tf.product_kaisuu] face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y]
[ptext layer=2 page=fore visible=true  text=&tf.store_item_value_hyouji[tf.product_kaisuu] face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y]

;所持数
[if exp="tf.store_item_stock_hyouji[tf.product_kaisuu]==0"]
[ptext layer=2 page=fore visible=true  text="0" face=antique color="#330000" name="store_stock" size=20 x=&tf.store_item_x_have_number y=&tf.store_item_y]
[elsif exp="tf.store_item_stock_hyouji[tf.product_kaisuu]!=0"]
[ptext layer=2 page=fore visible=true  text=&tf.store_item_stock_hyouji[tf.product_kaisuu] face=antique color="#330000" name="store_stock" size=20 x=&tf.store_item_x_have_number y=&tf.store_item_y]
[endif]


[endif]


;----------------------------------------------------------------------------------------

[if exp="tf.hyouji_kaisuu<f.store_item_number"]
[eval exp="tf.product_kaisuu = tf.product_kaisuu + 1"]
[eval exp="tf.hyouji_kaisuu = tf.hyouji_kaisuu + 1"]

[eval exp="tf.store_item_y=tf.store_item_y+30"]
[eval exp="tf.store_item_y_button=tf.store_item_y_button+30"]

[jump target=*product_hyouji_return]
[endif]



;-------




[eval exp="tf.store_explain_y=450"]

[eval exp="tf.store_explain_simbol_x=tf.store_item_x-30"]
[eval exp="tf.store_explain_simbol_y=tf.store_explain_y-10"]
[image layer=2 page=fore visible=true  storage="explain_wing.png" name="store" x=&tf.store_explain_simbol_x y=&tf.store_explain_simbol_y]



*hyouji_end
[s]







*store_item_1
[cm]
[eval exp="tf.store_id =0"]
[jump target=*store_next]
*store_item_2
[cm]
[eval exp="tf.store_id =1"]
[jump target=*store_next]
*store_item_3
[cm]
[eval exp="tf.store_id =2"]
[jump target=*store_next]
*store_item_4
[cm]
[eval exp="tf.store_id =3"]
[jump target=*store_next]
*store_item_5
[cm]
[eval exp="tf.store_id =4"]
[jump target=*store_next]
*store_item_6
[cm]
[eval exp="tf.store_id =5"]
[jump target=*store_next]
*store_item_7
[cm]
[eval exp="tf.store_id =6"]
[jump target=*store_next]
*store_item_8
[cm]
[eval exp="tf.store_id =7"]
[jump target=*store_next]
*store_item_9
[cm]
[eval exp="tf.store_id =8"]
[jump target=*store_next]
*store_item_10
[cm]
[eval exp="tf.store_id =9"]
[jump target=*store_next]



*store_next

;他のアイテムの説明が表示してあれば消去
[eval exp="tf.item_suuti_de =[]"]

;-------------
[iscript]
//初期化
tf.store_item_buy = tf.store_item_buy.map(function(x) {return 0})

for(i=0;i<f.store_item_number;i++){
 
 if(tf.store_item_no[i]===1){
    tf.item_suuti_de.push(i);
    tf.store_item_no[i]=0;
    tf.store_item_buy[i]=1;

    }

 
}
[endscript]

[eval exp="tf.suuti_delete=tf.item_suuti_de.length"]


[if exp="tf.suuti_delete>0"]

[eval exp="tf.suuti_delete_id = tf.suuti_delete-1"]


*delete_re


[free name=&tf.item_suuti[tf.suuti_delete_id] layer=2]


[endif]

;--------------
;*store_next

[eval exp="tf.store_item_y = tf.store_item_y_d+30*tf.store_id"]




[if exp="tf.store_item_buy[tf.store_id]==1"]
[jump target=*buy_1]
[endif]



;ワンクリックでは説明のみ
[ptext layer=2 page=fore visible=true  text="&tf.store_item_explain[tf.store_id]" face=antique color="#330000" name="item_suuti" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore visible=true  storage="key_cursor.png" name="item_suuti" x=&tf.store_key y=&tf.store_item_y]


;パラメータ表示
[para_calc_1]

;現在の装備アイテムであればEを表示;同時に画像表示
[if exp="f.item_other!=1&&f.item_cook!=1"]
;画像表示マクロ;-----
[equip_hyouji_shokika]
[eval exp="tf.equip_item_kind =tf.store_item_type_hyouji[tf.store_id]"]
[eval exp="tf.equip_item_id = tf.store_item_num[tf.store_id]"]
[eval exp="tf.suuti_name = 'item_suuti'"]
[equip_hyouji_item]
[icon_hyouji_e]
;--------
;現在装備の場合Eを表示
[eval exp="tf.store_item_y_v=tf.store_item_y"]
[current_e_hyouji]
[endif]


[eval exp="tf.store_id_b = tf.store_id"]
[eval exp="tf.store_item_no[tf.store_id]=1"]


[eval exp="tf.store_item_y=tf.store_item_y_d"]
[eval exp="tf.store_item_y_button=tf.store_window_y+45"]
;[free name="store" layer=2]


[jump target=*modotta]
;[button_hyouji_store]
[jump target=*hyouji_end]






*buy_1
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_value[tf.store_id]>f.money"]
[message_settei_ad]
[if exp="f.gales_hanbai==1"]
#？
「・・・・・・」[p]
#
#&f.name
（あっ、お金が足りない・・・）
#
[else]
お金が足りないよ。
[endif]

[l][message_kakusu_ad]
;[clearfix]
[eval exp="tf.store_item_y=tf.store_item_y_d"]
[eval exp="tf.store_item_y_button=tf.store_window_y+45"]
[eval exp="tf.store_item_buy[tf.store_id]=0"]
[eval exp="tf.store_item_no[tf.store_id]=0"]
[eval exp="tf.store_id=0"]
;[free name="store" layer=2]
[jump target=*modotta]

[jump target=*hyouji_end]

[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_store]

;お金を減らす
[playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.siharai_num =0"]

[money_siharai_1]

[eval exp="tf.store_item_no[tf.store_id]=0"]



[freeimage layer=0]
[freeimage layer=2]
[free name="icon_hyouji_1" layer=1]
[free name="icon_hyouji_2" layer=1]
[store_kousin]

[eval exp="tf.store_item_y=tf.store_item_y_d"]
[eval exp="tf.store_item_y_button=tf.store_window_y+45"]

[jump target=*hyouji]


;----------------------------------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------------------------------

*sell


[jump storage="scenario_2/item_hyouji_macro.ks" target=*sell_start]



*store_choice_end

[cm]
[message_settei_ad]
;また来て
[store_message_last]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[clearfix]
[store_event_end]
*store_event_end
[message_kakusu_ad]
[jump target=*store_last]

*store_back
[if exp="f.equip_change==1"]
[clearstack]
[eval exp="f.equip_change=0"]
[eval exp="f.equip_change_yes=1"]

[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[clearfix]
[jump target=*window_hyouji]
[endif]

*store_last
[eval exp="f.store=0"]
[eval exp="f.item_other=0"]
[eval exp="f.item_cook=0"]
;フリーズ対策のため消さないこと：コメント
[iscript]
this.kag.stat.f["store_other_1"]=0;
this.kag.stat.f["store_other_2"]=0;
this.kag.stat.f["store_other_3"]=0;
this.kag.stat.f["store_other_4"]=0;
this.kag.stat.f["store_other_5"]=0;
this.kag.stat.f["store_other_6"]=0;
this.kag.stat.f["store_other_7"]=0;
this.kag.stat.f["store_other_8"]=0;
this.kag.stat.f["store_other_9"]=0;
this.kag.stat.f["store_other_10"]=0;
this.kag.stat.f["store_other_11"]=0;
this.kag.stat.f["store_other_12"]=0;
this.kag.stat.f["store_other_13"]=0;
this.kag.stat.f["store_other_14"]=0;
this.kag.stat.f["store_other_15"]=0;
this.kag.stat.f["store_other_16"]=0;
this.kag.stat.f["store_other_17"]=0;
this.kag.stat.f["store_other_18"]=0;
this.kag.stat.f["store_other_19"]=0;
this.kag.stat.f["store_other_20"]=0;
this.kag.stat.f["store_other_21"]=0;
this.kag.stat.f["store_other_22"]=0;
this.kag.stat.f["store_other_23"]=0;
this.kag.stat.f["store_other_24"]=0;
this.kag.stat.f["store_other_25"]=0;
this.kag.stat.f["store_other_26"]=0;
this.kag.stat.f["store_other_27"]=0;
this.kag.stat.f["store_other_28"]=0;
this.kag.stat.f["store_other_29"]=0;
this.kag.stat.f["store_other_30"]=0;
this.kag.stat.f["store_other_31"]=0;
this.kag.stat.f["store_other_32"]=0;
this.kag.stat.f["store_other_33"]=0;
this.kag.stat.f["store_other_34"]=0;
this.kag.stat.f["store_other_35"]=0;
this.kag.stat.f["store_other_36"]=0;
this.kag.stat.f["store_other_37"]=0;
this.kag.stat.f["store_other_38"]=0;
this.kag.stat.f["store_other_39"]=0;
[endscript]

[iscript]
this.kag.stat.f["store_equip_1"]=0;
this.kag.stat.f["store_equip_2"]=0;
this.kag.stat.f["store_equip_3"]=0;
this.kag.stat.f["store_equip_4"]=0;
this.kag.stat.f["store_equip_5"]=0;
this.kag.stat.f["store_equip_6"]=0;
this.kag.stat.f["store_equip_7"]=0;
this.kag.stat.f["store_equip_8"]=0;
this.kag.stat.f["store_equip_9"]=0;
this.kag.stat.f["store_equip_10"]=0;
this.kag.stat.f["store_equip_11"]=0;
this.kag.stat.f["store_equip_12"]=0;
this.kag.stat.f["store_equip_13"]=0;
this.kag.stat.f["store_equip_14"]=0;
this.kag.stat.f["store_equip_15"]=0;
this.kag.stat.f["store_equip_16"]=0;
this.kag.stat.f["store_equip_17"]=0;
this.kag.stat.f["store_equip_18"]=0;
this.kag.stat.f["store_equip_19"]=0;
this.kag.stat.f["store_equip_20"]=0;
this.kag.stat.f["store_equip_21"]=0;
this.kag.stat.f["store_equip_22"]=0;
this.kag.stat.f["store_equip_23"]=0;
this.kag.stat.f["store_equip_24"]=0;
this.kag.stat.f["store_equip_25"]=0;
this.kag.stat.f["store_equip_26"]=0;
this.kag.stat.f["store_equip_27"]=0;
this.kag.stat.f["store_equip_28"]=0;
this.kag.stat.f["store_equip_29"]=0;
this.kag.stat.f["store_equip_30"]=0;
this.kag.stat.f["store_equip_31"]=0;
this.kag.stat.f["store_equip_32"]=0;
this.kag.stat.f["store_equip_33"]=0;
this.kag.stat.f["store_equip_34"]=0;
[endscript]

[iscript]
this.kag.stat.f["store_cook_1"]=0;
this.kag.stat.f["store_cook_2"]=0;
this.kag.stat.f["store_cook_3"]=0;
this.kag.stat.f["store_cook_4"]=0;
this.kag.stat.f["store_cook_5"]=0;
this.kag.stat.f["store_cook_6"]=0;
this.kag.stat.f["store_cook_7"]=0;
this.kag.stat.f["store_cook_8"]=0;
this.kag.stat.f["store_cook_9"]=0;
this.kag.stat.f["store_cook_10"]=0;
this.kag.stat.f["store_cook_11"]=0;
this.kag.stat.f["store_cook_12"]=0;
this.kag.stat.f["store_cook_13"]=0;
this.kag.stat.f["store_cook_14"]=0;
this.kag.stat.f["store_cook_15"]=0;
this.kag.stat.f["store_cook_16"]=0;
this.kag.stat.f["store_cook_17"]=0;
this.kag.stat.f["store_cook_18"]=0;
this.kag.stat.f["store_cook_19"]=0;
this.kag.stat.f["store_cook_20"]=0;
this.kag.stat.f["store_cook_21"]=0;
this.kag.stat.f["store_cook_22"]=0;
this.kag.stat.f["store_cook_23"]=0;
this.kag.stat.f["store_cook_24"]=0;
this.kag.stat.f["store_cook_25"]=0;
this.kag.stat.f["store_cook_26"]=0;
this.kag.stat.f["store_cook_27"]=0;
this.kag.stat.f["store_cook_28"]=0;
this.kag.stat.f["store_cook_29"]=0;
this.kag.stat.f["store_cook_30"]=0;
this.kag.stat.f["store_cook_31"]=0;
this.kag.stat.f["store_cook_32"]=0;
this.kag.stat.f["store_cook_33"]=0;
this.kag.stat.f["store_cook_34"]=0;
[endscript]



;元のシナリオに飛ぶ（マクロにしたかったよ・・・）

;-------

[eval exp="f.equip_change_yes=0"]

;テスト用
;[if exp="f.test_link==1"]
;[iscript]
;location.reload()
;[endscript]
;[endif]
;


[if exp="f.store_season_1==1&&f.store_first==1"]

[eval exp="f.store_season_1=0"]
[eval exp="f.store_first=0"]
[jump storage="scenario_2/episode/epi2.ks" target=*store_end]

[elsif exp="f.gales_hanbai==1&&f.event_main_9_normal==1"]
[eval exp="f.gales_hanbai=0"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*gales_hanbai_end]

[elsif exp="f.store_curnival_sale==1||f.curnival_yatai==1"]
[eval exp="f.friend_present=0"]
[eval exp="f.store_curnival_sale=0"]
[eval exp="f.curnival_yatai=0"]
[eval exp="f.store_yatai=0"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]

[elsif exp="f.disc_num>2&&f.s_wesuta==1&&f.event_main_18_days>0&&f.place_w_honya==1"]
[refresh_hanyou]
[jump storage="scenario_2/map_event/map_event_w/map_event_honya_macro.ks" target=*store_jump]
[jump target=*store_return]

[elsif exp="f.disc_num>2&&f.s_wesuta==1&&f.event_main_18_days>0&&f.place_w_kusuri==1"]
[refresh_hanyou]
[jump storage="scenario_2/map_event/map_event_w/map_event_kusuri_macro.ks" target=*store_jump]
[jump target=*store_return]


[elsif exp="f.disc_num>2&&f.s_wesuta==1&&f.event_main_17_days>0||f.event_main_19_days>0"]
[refresh_hanyou]
[jump storage="scenario_2/map_event/map_event_w/map_event_shokudo_macro.ks" target=*store_jump]
[jump target=*store_return]

[elsif exp="f.disc_num>2||f.disc_2==1"]
[refresh_hanyou]
[jump storage="scenario_2/map_event/map_event_hunsui_macro.ks" target=*store_jump]
[jump target=*store_return]

[endif]

;--------

;店の品揃えおふ
[eval exp="f.store_season_1=0"]
[eval exp="f.friend_present=0"]
[eval exp="f.store_curnival_sale=0"]
[eval exp="f.curnival_yatai=0"]
[eval exp="f.store_yatai=0"]
[eval exp="f.gales_hanbai=0"]

[endmacro]








[return]