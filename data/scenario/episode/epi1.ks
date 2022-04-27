





[cm]
;sword-gesture2_koukaonlabo
;sword-clash4_koukaonlabo
;sword-clash1_koukaonlabo
;swing32_macchi
;swing37_a_macchi
;sword-clash2_koukaonlabo
;step12_macchi
[cm]

;[call storage="live2d_sub_macro.ks"]
;[call storage="live2d_lioness_macro.ks"]
;[call storage=live2d_rans_macro.ks]



;背景素材のプリロード
[preload storage="data/fgimage/button/click.png"]

;背景変更
[bg storage="black.png" time=5000]
[hidemenubutton][hidemenu]




*kyoutuu5
;[glyph fix=true line=bushou_cursor.png]
[rg][rg][rg][rg][episode_hyouji]
[rg]第1章　正騎士試験[autosave]
[mil][showmenubutton][button_menu][l][k][cm][ka]



[bg storage="sky_pakutaso.jpg"]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[playse storage="sword-gesture2_koukaonlabo.ogg"][w][playse storage="sword-gesture3_koukaonlabo.ogg"][w][playse storage="sword-gesture2_koukaonlabo.ogg"][w]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[position opacity=100]
[message_settei]
「やあっ！！」「たああっ！！！」[ikkatu]
[r]声とともに剣戟が耳に響く。[ikkatu]
[r]私はいつもの森で、ランスロットと訓練に明け暮れていた。[ikkatu]
[r]ランスロットは一年前、王宮警備を仕事とする、
[r]王宮騎士団の隊長に昇格した。[ikkatu]
[r]そんなだから、なかなか訓練の時間をとれることも
[r]少なくなったけれど、
[r]今日はひさしぶりに一日稽古につきあってくれていた。
[mil][showmenubutton][l][k][cm][ka]





[position opacity=0]
[eval exp="sf.still_1=1"]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[playse storage="sword-gesture2_koukaonlabo.ogg"][w][playse storage="sword-gesture3_koukaonlabo.ogg"][w][playse storage="sword-gesture2_koukaonlabo.ogg"][w]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[playse storage="sword-gesture2_koukaonlabo.ogg"][w][playse storage="sword-gesture3_koukaonlabo.ogg"][w][playse storage="sword-gesture2_koukaonlabo.ogg"][w]
[playse storage="sword-clash4_koukaonlabo.ogg"][w][w]
[playse storage="sword-clash2_koukaonlabo.ogg"]
[mil][showmenubutton][button_menu][l][k][cm][ka]
;ランス表示

;[call storage="live2d_baka_macro.ks"]
;;[live2d_load]
;;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;;[live2d_load_off]
[bg storage="keiko_tasogare.jpg"]
[message_settei_ad]


;;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]


;;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.5 scale=3.9]


;;[live2d_on];[live2d_show name="baka0" y=-1.9 x=0.0 scale=4.3]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_on][chara_show name="rans" top=50]
;;[baka_arms_kosinite_left_sitahuku]
;;[baka_arms_kosinite_right_sitahuku]
;;[baka_exp_metoji]

#ランスロット
「ようし！今日はここまで！」[mil][l][k][cm][ka]
#
;;[baka_head_under_y]
; ;[baka_head_normal]


[playse storage="katana-storage1_koukaonlabo.ogg"]

[playbgm storage="07_romanntisutosann_ontama.ogg"]
#&f.name
「･･･ありがとうございました！」[mil][l][k][cm][ka]
#


;;[baka_exp_normal_warai]
;;[baka_head_right_z]
;;[baka_body_right_x]
;;[baka_body_right_z]


#ランスロット
「よくがんばったな、[name]」[mil][l][k][cm][ka]
#
#&f.name
「疲れたあ･･･」[mil][l][k][cm][ka]
#
[playse storage="step14_macchi.ogg"]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_komari_warai.gif"]
;;[baka_head_normal]
;;[baka_body_normal]
#ランスロット
「これくらいでばててどうする。来週は正騎士承認の試験だろう？」[mil][l][k][cm][ka]
#

#&f.name
（････あれ？････ああ！！）[mil][l][k][cm][ka]
#
#&f.name
「そうだった。忘れてた！」[mil][l][k][cm][ka]
#

;;[baka_exp_sinpai]


#ランスロット
「忘れるなよ･･･」[mil][l][k][cm][ka]
#

;;[baka_exp_normal_warai]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「いよいよ、見習いから正騎士に承認だな」[mil][l][k][cm][ka]
#
#&f.name
「まだわからないよ、ランスロット」[mil][l][k][cm][ka]
#
#&f.name
（自信、そんなにあるわけじゃないし・・・頑張ってはきたけど）[mil][l][k][cm][ka]
#
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_bisyo.gif"]
;;[baka_head_under_y]
;;[baka_head_normal]
;;[baka_body_under_y]
;;[baka_body_normal]
#ランスロット
「お前なら大丈夫だ。[name]、自信をもっていってこい」[mil][l][k][cm][ka]
#
#&f.name
「う、うん･･･」[mil][l][k][cm][ka]
#
#&f.name
（ランスロットがそういうなら･･･大丈夫だよね、きっと）
#
[mil][l][k][cm][ka]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_metoji_warai.gif"]
;;[baka_arms_kosinite_right_sitahuku_modosu]
;;[baka_exp_normal]
;;[baka_head_right_x]
;;[baka_head_above_y]
;;[baka_body_right_z]
;;[baka_body_right_x]
;;[baka_eyes_right_above]
#ランスロット
「今日は少し暑いな」[mil][l][k][cm][ka]
#

;;[baka_body_kataage]
;;[baka_body_katasage]
;;[baka_body_normal]
;;[baka_body_left_x]
;;[baka_exp_normal_warai]





#&f.name
「もう少しで春だものね。日差しが暖かくなってきたよね」[mil][l][k][cm][ka]
#
;;[baka_head_normal]


;;[baka_mod_idle]
[eval exp="f.sentakuchuu= 1 "]
#
;[eval exp="sf.still_2=1"]
;[bg storage="still/still2.png"]
;[cg storage="still/still2.png"]
;[position opacity=0]
;[message_settei]
[jump storage="sentaku.ks" target=*choice2]



*a2_common
[ka]
;;[baka_exp_normal_warai]


[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
;;[baka_mod_idle_no_move]
;;[baka_head_right_x]
;;[baka_body_right_x]
#ランスロット
「そうそう、試験官は私の弟、ライオネスに決まったよ」[mil][l][k][cm][ka]
#
;;[baka_eyes_left]
;;[baka_head_normal]
;;[baka_body_normal]
;;[baka_eyes_normal]
#&f.name
「ええっ！そうなの？」[mil][l][k][cm][ka]
#

;;[baka_head_under_y]
;;[baka_body_under_y]
;;[baka_head_normal]
;;[baka_body_above_y]
#&f.name
（ライオネスかあ･･･なんかすごく厳しくされそうな予感･･･）[mil][l][k][cm][ka]
#

;;[baka_exp_metoji_warai]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_metoji_warai.gif"]
#ランスロット
「ああ、手加減しないように言っておいた」[mil][l][k][cm][ka]
#
;;[baka_eyes_above]
;;[baka_eyes_normal]
;;[baka_body_normal]
#&f.name
「うう～･･」[mil][l][k][cm][ka]
#&f.name
（さらに追い討ちかけるようなこといわないでほしいと思う･･･）
#
[mil][l][k][cm][ka]

;;[baka_exp_normal_warai]
;;[baka_head_left_z]
;;[baka_body_left_x]
;;[baka_body_under_y]
;;[baka_arms_kosinite_right_sitahuku]
;;[live2d_fadeout time=1000 ]
;;[live2d_mod name="baka0" y=-2.0 scale=4.5]
[walkmori][chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
;;[live2d_fadein time=1000 ]
[stopse]
;;[baka_head_under_y]
;;[baka_body_under_y]
;;[baka_head_normal]
#ランスロット
「さ、そろそろクレールに帰るか。
ほら、疲れているのはわかるがちゃんと立てよ」[mil][l][k][cm][ka]
#
[fadeoutbgm time=3000]
#&f.name
（そうだよね、とにかく明日からがんばらないと！）[mil][l][k][cm][ka]
#&f.name
「はい！！」[mil][l][k][cm][ka]
#
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_bisyo.gif"]
;;[baka_head_left_z]
;;[baka_head_under_y]
;;[baka_body_under_y]
;;[baka_head_normal]
;;[live2d_fadeout time=3000 ]
[chara_off][chara_hide name="rans"]
;;[live2d_hide name="baka0"]

;ジャンプした時ここに移動
*jump_map_choice_3

[autosave]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[free name="jump_off" layer=3]


[eval exp="f.place_keiko=1"]
[eval exp="f.jump_map_choice_3=0"]
[playbgm storage="guild_ontama.ogg"]
[bg storage="creru_shuuhen.jpg"]
[call storage="map_macro_irain_hyouji.ks"]
[showmenubutton][button_menu]
[map_irain_hyouji]

王都に戻ります。
王都クレールにカーソルを合わせてクリックすると移動できます。
[p]

*map0



[message_kakusu_ad]

[locate x=300 y=200]
[clickable width=250 height=120 mouseopacity=37 opacity=0 color=gray target=*keiko]

[locate x=80 y=52]
[clickable width=190 height=170 mouseopacity=37 opacity=0 color=gray target=*outo]

[locate x=515 y=358]
[clickable width=220 height=130 mouseopacity=37 opacity=0 color=gray target=*sharome]
[s]

*keiko
[message_settei_ad]
#&f.name
「王都へ戻ろう！」[p]
　#
[jump target=*map0]


*outo
[jump target=*kyoutuu6]

*sharome
[message_settei_ad]

[hidemenubutton][hidemenu]
;;[live2d_show name="baka0" y=-1.9 x=0.0 scale=4.3]
;;[live2d_fadein time=1000]
;;[baka_arms_udekumi]
;;[baka_exp_sinpai]
;;[baka_head_right_z]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_idle_gif_komari_warai.gif" top=50  left=380]
#ランスロット
「？どこへ行くつもりだ、[name]」[p]
#
;;[live2d_hide name="baka0"]
[chara_off][chara_hide name="rans"]

[jump target=*map0]


*kyoutuu6
[hidemenubutton]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[eval exp="f.place_keiko=0"]
[free name="icon" layer=3]
[message_settei]
[bg storage="crerumatinaka2_tasogare.jpg"]
[playbgm storage="tw074_musmus.ogg"]
王都クレールはこのクレール王国の首都。[ikkatu]
[rg]小さい港町テーベから最初つれられてきたときには
[rg]その広さにすごくびっくりしたっけ･･･。[ikkatu]
[rg]石畳の道にレンガでできた家々が立ち並び、町並みは綺麗に整えられている。[ikkatu]
[rg]今日も街の大通りはわいわいとにぎやかそうだった。[ikkatu]
[mil][l][k][cm][ka]

[message_settei_ad]

[chara_on][chara_show name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif" top=50] 
;;[live2d_on];[live2d_show name="baka0" y=-1.9 x=0.0 scale=4.3]
;;[live2d_fadein time=1000 ]
;;[baka_arms_kosinite_left_sitahuku]
;;[baka_exp_metoji]
#ランスロット
「今日は寄り道せず早めに帰って、自分の部屋で休めよ。[w]
　帰ったら、グレッグ地方騎士団長に挨拶を忘れずにな」[mil][l][k][cm][ka]
#
;;[baka_exp_normal_warai]
#&f.name
「わかってるよそんなこと！
ランスロットはいつも同じことばっかりいうんだから」[mil][l][k][cm][ka]
#
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_mihiraki.gif"][chara_mod name="rans" storage="rans_tatie/rans_idle_gif_bisyo.gif"]
;;[baka_exp_mihiraki]
;;[baka_arms_right_x_right]
#ランスロット
「ははっ、そうか」[mil][l][k][cm][ka]
#
;;[baka_eyes_normal]
;;[baka_head_right_z]
;;[baka_head_under_y]
;;[baka_body_right_x]
;;[baka_arms_udekumi]
;;[baka_exp_normal_warai]

#&f.name
（いつまでも子供あつかいなんだから・・・）[mil][l][k][cm][ka]

#


[jump storage="sentaku.ks" target=*choice3]


*a3_common




;;[baka_exp_normal_warai]
;;[baka_head_under_y]
;;[baka_head_normal]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「それじゃ来週の試験まで頑張れよ」[mil][l][k][cm][ka]
#
#&f.name
「うん･･･」[mil][l][k][cm][ka]
#
;;[baka_arms_normal]
;;[baka_arms_right_x_left]
;;[baka_arms_left_x_right]
;;[baka_head_right_z]
;;[baka_body_right_z]
#ランスロット
「じゃあな」[mil][l][k][cm][ka]
#
[walk][chara_off][chara_hide name="rans"]
;;[live2d_fadeout time=1000 ]
;;[live2d_hide name="baka0"]
;;[live2d_off];[live2d_delete_all]

#&f.name
（･･･さて、早く帰って水浴びしよっと。[w]あ･･えっと、その前に団長に報告だっけ）
[mil][l][k][cm][ka]
#

[stopbgm]
;[quake count=3 time=100 hmax=20]
[playse storage="glass-break1_koukaonlabo.ogg"]
[bg storage="black.png" time=500]
「きゃあーーーー！！」[mil][l][k][cm][ka]

[playse storage="zawameki_tairakomori.ogg" time=1000]
[fadeoutse time=2000]
「なんだなんだ？」[mil][l][k][cm][ka]
「酒場のほうから聞こえてきたな･･」[mil][l][k][cm][ka]
#&f.name
「酒場･･･？」
[mil][l][k][cm][ka]

#&f.name
（ちょっと怖い気もするけど・・・私も見習いとはいえ、騎士・・・）[mil][l][k][cm][ka]
#&f.name
（街の人たちを守るのが仕事だし・・・ほっとくわけにもいかない、[w]よね･･）[mil][l][k][cm][ka]

#&f.name
「酒場の方から聞こえてきたって言ってたね・・・行ってみよう」[mil][l][k][cm][ka]
#
*jump_map_choice_101
[eval exp="f.place_creru_out=1"]

[eval exp="f.event_sakaba=1"]
[autosave]
*map

[call storage="map_macro.ks"]


[message_kakusu_ad]

[mi]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[eval exp="f.jump_map_choice_101=0"]
[creru_outo_map]





*sakaba
[ka]
[eval exp="f.place_creru_out=0"]
[free layer=2 name="event"]
[message_settei_ad]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[fadeoutbgm time=1000]
#&f.name
「確か・・・ここ・・・だよね・・・」[mil][l][k][cm][ka]
#
;;[live2d_load]
;;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;;[live2d_load_off]
[playse storage="door00_macchi.ogg"]

[playse storage="step05_macchi.ogg"]
[w]
[playse storage="step05_macchi.ogg"]
[w]
[playse storage="step05_macchi.ogg"]
[mil][l][k][cm][ka]
[message_settei]
[fadeinbgm storage="korehaittai_ontama.ogg" time=4000]
二階に上がると、左手奥のカウンターには誰もおらず、
[rg]ほぼ真ん中のテーブルに青い髪の青年が食事している。[ikkatu]
[playse storage="eat00_macchi.ogg"]
[rg]その脇にいかつい顔で筋肉隆々の男が立って、なにか青年にわめいていた。[ikkatu]
[rg]他のお客は姿が見えないと思ったら男の剣幕におびえて
[rg]遠巻きに眺めているらしい。[ikkatu]
[rg]「んだとてめえ！！！もう一回言ってみろ！！！」[ikkatu]
[rg]男ががらがらのだみ声で青年に怒鳴る。[ikkatu]
[rg]だが青年は全く気にしていない様子で、
[rg]フォークについたチキンのひときれを口に運んだ。[ikkatu]
[rg]もぐもぐと口を動かしごくりと飲み干したあと、
[rg]いかにもめんどくさそうに椅子から立ち上がる。
[playse storage="isu_tairakomori.ogg"]
[mil][l][k][cm][ka]


[message_settei_ad]
;;[live2d_load]
;;[live2d_on];[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;;[live2d_load_off]



;[call storage="live2d_aho_macro.ks"]
;;[live2d_on];[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"][chara_on][chara_show name="kra" top=50]
;;[live2d_mod name="aho" idle="Idle_normal_short" no=0]

#？
「･･･だからさ･･･俺はなにもしてないって」

[mil][l][ka][cm][ka]

;;[aho_face_akireru]
;;[live2d_mod name="aho" idle="Idle_normal_mehuse" no=0]
;;[aho_arms_udekumi]
;;[aho_body_right_x]
;;[aho_body_right_z]

;;[aho_head_above_y]
;;[aho_head_right_z]

#男
「嘘付けこの野郎！！！俺のスーリアに手出したのはてめえだろお！！」

[mil][l][ka][cm][ka]


;;[aho_head_left_z]
;;[aho_body_right_x]
;;[aho_body_right_z]
;;[aho_arms_right_setumei]


[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
#？
「なんのことだかさっぱりだ」

[mil][l][ka][cm][ka]



;;[aho_body_left_x]
;;[aho_body_normal]

[playse storage="hit20_macchi.ogg"]
[w]
[playse storage="glass-break4_koukaonlabo.ogg"]
#男
「うるせええ！！！ネタはあがってるんだ助平野郎！！」

[mil][l][ka][cm][ka]

;;[aho_face_metoji]
;;[aho_head_left_x]
;;[aho_head_right_x]
;;[aho_body_right_z]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
#？
「････君には言われたくないなあ。[w]
とりあえずさ、その怒鳴り声なんとかしてくれないか。[w]
俺は静かに食事したいんだ」
;;[aho_arms_normal_move]
[mil][l][ka][cm][ka]


;;[live2d_mod name="aho" idle="Idle_normal_short" no=0]



;;[aho_face_yokome_majime]
;;[aho_head_right_z]
;;[aho_body_left_x]
;;[aho_body_right_z]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_yokome.gif"]
#？
「･･それに･･俺は拒まなかっただけで、あのときは向こうから･･」[mil][l][ka][cm][ka]


;;[live2d_motion name="ossan" mtn="Idle_shokku" no=0]
#男
「！！！！！」[mil][l][ka][cm][ka]
#
;;[live2d_mod name="aho" idle="Idle_hard" no=0]


#男
「やっぱりてめえじゃねえか！胸に刺青のある男って言うから、
どんな奴かと思ってたが･･[w]こんなガキに俺のスーリアが･･･」
#
[mil][l][ka][cm][ka]

;;[live2d_mod name="aho" idle="Idle_kokyu_only" no=0]



;;[aho_head_left_x]
;;[aho_head_above_y]
;;[aho_eyes_above]

;;[aho_face_metoji]
;;[aho_arms_udekumi]

;;[aho_body_left_z]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
#？
「俺は一応、今年で２５なんだけどなあ･･」
#

[mil][l][ka][cm][ka]
[playse storage="hit20_macchi.ogg"]
[w]
[playse storage="glass-break4_koukaonlabo.ogg"]

;;[aho_body_normal]



#男
「んなこたあ聞いてねえんだよ！ともかく許せねえ、ここで袋にしてやる！！」
#
[mil][l][ka][cm][ka]
#店員
「お、お客さん、困りますよぅ･･････」
#
[mil][l][ka][cm][ka]






[jump storage="sentaku.ks" target=*choice101]


*k1_1
#&f.name
「やめて！！」[mil][l][k][cm][ka]




;;[live2d_motion name="aho" mtn="Head_normal"]
;;[aho_body_above_y]
;;[aho_eyes_normal]
;;[aho_face_mihiraki]
;;[aho_body_under_y]


;;[live2d_on];[live2d_show name="ossan" y=-1.3 x=-0.75 scale=1.6]
#男
「ああ？」[mil][l][k][cm][ka]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_mihiraki.gif"]
;;[aho_head_normal]
;;[aho_body_above_y]
;;[live2d_mod name="aho" idle="Idle_normal_short" no=0]
#？
「？」[mil][l][k][cm][ka]

;;[aho_head_right_z]
;;[aho_body_right_z]

#&f.name
（こ･･こわい･･･[w]でも言わなきゃ！！）[mil][l][k][cm][ka]
#&f.name
「他のお客さんが迷惑してるよ！！お店の人だって･･」[mil][l][k][cm][ka]

;;[live2d_motion name="ossan" mtn="Idle_ha"]
#男
「･･なんだあ？このちいせえガキは･･･」[mil][l][k][cm][ka]

;;[aho_eyes_under]
;;[aho_mabataki]

#&f.name
「ちいさいガキって･･[w]
私は、ち、地方騎士団の者です。市民に迷惑をかける行為は許しません！」
[mil][l][k][cm][ka]


;;[aho_eyes_normal]
;;[aho_arms_right_setumei]
;;[aho_body_left_x]
;;[aho_body_left_z]
;;[live2d_mod name="aho" idle="Idle_normal_short" no=0]


;;[live2d_motion name="ossan" mtn="Idle_warai"]
#男
「騎士団だあ？[w]っくくっ･･･はははははははははっ！！！
なんかのまちがいだろ？
おうちに帰ってお菓子でも食べてな、おじょーちゃん」[mil][l][k][cm][ka]

;;[aho_head_right_x]
;;[aho_body_right_x]
;;[aho_body_right_z]

;;[aho_head_under_y]
;;[aho_face_metoji]
;;[aho_mod_idle_kokyu_only]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
#&f.name
（わ･･笑われた････）[mil][l][k][cm][ka]

#&f.name
「っ･･･[w]とにかく、迷惑がかかるからもうやめて！」[mil][l][k][cm][ka]

;;[live2d_motion name="ossan" mtn="Idle_warai"]
#男
「やだって言ったら、おじょーちゃん何してくれんのかな？」[mil][l][k][cm][ka]
[playse storage="kennuku_tairakomori.ogg"]
[w]
[playse storage="kennuku_tairakomori.ogg"]

[chara_mod name="kra" storage="kra_tatie/Idle_gif_mihiraki.gif"]
;;[aho_eyes_mihiraki]
;;[aho_body_normal]
;;[aho_head_normal]
;;[aho_arms_normal]
#&f.name
「力ずくでも従わせます！･･･」[mil][l][k][cm][ka]

#男
「なんだそりゃ･･おもちゃの剣か？」[mil][l][k][cm][ka]

[chara_mod name="kra" storage="kra_tatie/Idle_gif_agonite.gif"]
;;[aho_eyes_normal]
;;[aho_body_right_x]
;;[aho_body_right_z]
;;[aho_head_right_z]
;;[aho_arms_agonite]
;;[aho_eyes_mehuse]
#？
「･･････へえ･･･双剣･･かな？珍しいな･･」[mil][l][k][cm][ka]


#男
「ガキが騎士なんかきどりやがって･･
誰がてめえの言うこと聞くかってんだ！ふっざけんな！！」[mil][l][k][cm][ka]
[w]
;;[aho_arms_normal]
;;[aho_body_left_z]
#&f.name
「！！！」[mil][l][k][cm][ka]

[playse storage="dimension-stop_koukaonlabo.ogg"]
#&f.name
「･････？」[mil][l][k][cm][ka]


[message_settei_ad]

;;[live2d_mod name="aho" x="-0.5" ]
#？？
「そこまでだ。てめえら」[mil][l][k][cm][ka]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"][chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-60]
[chara_move name="kra" height="690" width="530" left=320]
;;[live2d_on];[live2d_show name="lioness" y=-1.2 x=0.5 scale=3.3]
;;[live2d_mod name="lioness" idle="Idle_hard" no=0]

;;[live2d_motion name="lioness" mtn="Face_chottoikari"]

;;[live2d_motion name="lioness" mtn="Arms_kosinite_right"]

;;[live2d_motion name="lioness" mtn="Arms_left_x"]
;;[live2d_motion name="lioness" mtn="Body_right_z"]

;;[aho_mod_idle_coat]
;;[aho_head_right_z]
;;[aho_body_right_x]
;;[aho_body_right_z]
;;[aho_face_yokome_majime]

[chara_mod name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
#&f.name
「ライオネス！！」[mil][l][k][cm][ka]
;;[live2d_motion name="lioness" mtn="Body_left_z"]
;;[live2d_motion name="lioness" mtn="Arms_right_x"]
;;[live2d_motion name="lioness" mtn="Face_donari"]
[fadeinbgm storage="tw44_musmus.ogg" time=5000]
;;[live2d_mod name="lioness" idle="Idle_hard" no=0]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_donari.gif"]
#ライオネス
「この馬鹿野郎！！」[mil][l][k][cm][ka]
;[quake count=5 time=300 hmax=20]
;;[live2d_mod name="lioness" idle="Face_chottoikari" no="0"]
#&f.name
「ひゃ･･」[mil][l][k][cm][ka]
;;[live2d_motion name="lioness" mtn="normal"]
;;[live2d_motion name="lioness" mtn="Head_normal"]
;;[live2d_motion name="lioness" mtn="Face_donari"]
;;[live2d_motion name="lioness" mtn="Arms_right_x"]
;;[live2d_motion name="lioness" mtn="Arms_left_x"]
#ライオネス
「まだひよっこの癖に、こんなとこで剣なんか抜いてんじゃねえ！！」
[mil][l][k][cm][ka]

#&f.name
「ご･･･ごめんなさい･･･」[mil][l][k][cm][ka]

#&f.name
（結構怒ってるみたい･･･。[mil][l][k][cm][ka]
確かに剣を抜いたのは軽率だったかな･･･）[mil][l][k][cm][ka]

;;[live2d_motion name="lioness" mtn="normal"]
;;[live2d_mod name="lioness" idle="Face_yareyare"]
;[live2d_motion name="lioness" mtn="Face_yareyare"]
;[live2d_motion name="lioness" mtn="Breath"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Head_under_y"]
;[live2d_motion name="lioness" mtn="Head_left_x"]
;[live2d_motion name="lioness" mtn="Body_above_y"]
;[live2d_motion name="lioness" mtn="Body_under_y"]
;[live2d_motion name="lioness" mtn="Body_left_x"]
;[live2d_motion name="lioness" mtn="Body_right_x"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
#ライオネス
「ったく･･･兄貴も甘すぎだぜ･･どんな教育してんだよ･･」[mil][l][k][cm][ka]

;[live2d_motion name="lioness" mtn="Head_right_x"]
;[live2d_motion name="lioness" mtn="Head_left_x"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="normal"]
;;[live2d_mod name="lioness" idle="Face_normal"]
;[live2d_motion name="lioness" mtn="Face_normal"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
#ライオネス
「で、喧嘩の原因はなんなんだ？」[mil][l][k][cm][ka]
;[live2d_motion name="lioness" mtn="Arms_kosinite_right"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Body_under_y"]
;[live2d_motion name="lioness" mtn="Body_right_z"]

;[live2d_motion name="lioness" mtn="Head_above_y"]
;[live2d_motion name="lioness" mtn="Head_under_y"]
;[live2d_motion name="lioness" mtn="Face_ha"]
;;[live2d_mod name="lioness" idle="Face_ha"]

;;[aho_face_mehuse]
;;[aho_mod_idle_normal_mehuse]


;;[live2d_motion name="ossan" mtn="Face_ha"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
#男
「･･･なんだああんた？他人のことに首つっこんでんじゃねえよ」[mil][l][k][cm][ka]
[jump target="*k1_common"]

*k1_2
[stopbgm][stopse]




#？？
「･･･そこまでだ。てめえら！」[mil][l][k][cm][ka]
;[live2d_on];[live2d_show name="lioness" y=-1.2 x=0.5 scale=3.3]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"][chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-60][chara_move name="kra" height="690" width="530" left=320]
#&f.name
「ライオネス！！」[mil][l][k][cm][ka]
[fadeinbgm storage="tw44_musmus.ogg" time=5000]


;[lioness_head_right_z]
;[lioness_body_right_z]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]

#ライオネス
「なんだ[name]、お前もいたのか。
店のやつから通報があってよ･･」[mil][l][k][cm][ka]
;[live2d_motion name="lioness" mtn="Head_right_x"]
;[live2d_motion name="lioness" mtn="Head_left_x"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="normal"]
;;[live2d_mod name="lioness" idle="Face_normal"]
;[live2d_motion name="lioness" mtn="Face_normal"]

;[live2d_on];[live2d_show name="aho" y=-1.5 x=-0.5 scale=3.5]

#ライオネス
「他の客に迷惑かけてんのはてめえらか？喧嘩の原因はなんなんだ？」[mil][l][k][cm][ka]
;[live2d_motion name="lioness" mtn="Arms_kosinite_right"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Body_under_y"]
;[live2d_motion name="lioness" mtn="Body_right_z"]

;[live2d_motion name="lioness" mtn="Head_above_y"]
;[live2d_motion name="lioness" mtn="Head_under_y"]
;[live2d_motion name="lioness" mtn="Face_ha"]
;;[live2d_mod name="lioness" idle="Face_ha"]

;[aho_face_mehuse]
;[aho_mod_idle_normal_mehuse]



[chara_mod name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
;;[live2d_motion name="ossan" mtn="Idle_ha"]
#男
「なんだああんた？他人のことに首つっこんでんじゃねえよ」[mil][l][k][cm][ka]




[jump target=*k1_common]


*k1_common



;[live2d_motion name="lioness" mtn="normal"]
;[live2d_motion name="lioness" mtn="Arms_udekumi"]
;[live2d_motion name="lioness" mtn="Body_right_x"]
;[live2d_motion name="lioness" mtn="Head_right_x"]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]
#ライオネス
「そういうわけにもいかねんだ。俺ら地方騎士団は街の治安を守る義務がある。
;;[live2d_mod name="lioness" idle="Face_normal"]


;[live2d_motion name="lioness" mtn="Head_ normal"]
;[live2d_motion name="lioness" mtn="Face_normal"]


[mil][l][k][cm][ka]






#ライオネス
市民が迷惑するようなこたあやらねえでもらいたいんだ」[mil][l][k][cm][ka]

#男
「他の奴らなんか関係ねえ！俺はこいつに女を寝取られたんだぞ！！」
[mil][l][k][cm][ka]

;[aho_body_normal]
;[aho_eyes_normal]
;[aho_eyes_right]

;[aho_face_yokome_majime]
;[aho_body_normal]
;[aho_body_left_z]


;;[live2d_mod name="lioness" idle="Face_yareyare"]
;[live2d_motion name="lioness" mtn="Face_yareyare"]
;[live2d_motion name="lioness" mtn="Head_under"]
;[live2d_motion name="lioness" mtn="Breath"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_yareyare.gif"]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]
#ライオネス
「はあ･･･色恋沙汰かよ･･」[mil][l][k][cm][ka]

;[aho_head_above_y]
;[aho_head_left_x]
;[aho_face_mehuse]

;[aho_body_right_x]
;[aho_body_right_z]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]

#？
「だから･･俺が寝取ったんじゃない、あっちが勝手に･･･」[mil][l][k][cm][ka]

#男
「うるせえ同じだ！！」[mil][l][k][cm][ka]
[playse storage="hit20_macchi.ogg"]
[w]
[playse storage="glass-break4_koukaonlabo.ogg"]


;[aho_eyes_normal]
;[aho_head_left_x]
;[aho_head_above_y]
;[aho_eyes_left_above]
;[aho_body_left_x]
;[aho_body_right_z]




;[live2d_motion name="lioness" mtn="Head_normal"]

;[live2d_motion name="lioness" mtn="Body_under_y"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Body_normal"]


#ライオネス
「あー、落ち着け落ち着け。

;;[live2d_mod name="lioness" idle="Face_normal"]
;[live2d_motion name="lioness" mtn="Eyes_above"]
;[live2d_motion name="lioness" mtn="Breath"]
;[live2d_motion name="lioness" mtn="Face_normal"]

お前ら、どっちも傭兵だな？」
[mil][l][k][cm][ka]

#男
「･･･おう」[mil][l][k][cm][ka]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_yokome.gif"]
;[aho_head_normal]
;[aho_face_normal_majime]
;[aho_body_normal]
;[aho_head_under_y]
;[aho_body_under_y]
;[aho_head_above_y]
;[aho_body_above_y]
#？
「･･･うん、まあそうだね」[mil][l][k][cm][ka]

#&f.name
（傭兵さんなんだ･･･）[mil][l][k][cm][ka]

;[live2d_motion name="lioness" mtn="Head_left_x"]
;[live2d_motion name="lioness" mtn="Head_normal"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Face_normal"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]

#ライオネス
「じゃあとりあえず、街出ろ。
で、どっかの森で決闘でもしろ。俺が連れてってやる」[mil][l][k][cm][ka]
#&f.name
（決闘！？）[mil][l][k][cm][ka]
#&f.name
（そんなことしていいの？？）[mil][l][k][cm][ka]
#&f.name
「ちょ、ライオネス！？」[mil][l][k][cm][ka]

;[live2d_motion name="lioness" mtn="Head_above_y"]
;[live2d_motion name="lioness" mtn="Head_left_z"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_kosinite_left_x"]
;[live2d_motion name="lioness" mtn="Body_left_x"]
;[live2d_motion name="lioness" mtn="Breath"]


#ライオネス
「理由はどうあれ、そうでもしねえと気が晴れねえんだろ？」[mil][l][k][cm][ka]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
;;[live2d_motion name="ossan" mtn="Idle_yorokobi"]
;;[live2d_mod name="ossan" idle="Idle_yorokobi" no=0]
#男
「わかってるじゃねえか兄ちゃん！！」[mil][l][k][cm][ka]
#？
「やれやれ･･面倒くさいことになったなあ･･･」[mil][l][k][cm][ka]

;[live2d_motion name="lioness" mtn="Head_normal"]
;[live2d_motion name="lioness" mtn="Head_under_y"]
;[live2d_motion name="lioness" mtn="Eyes_right_above"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]

#ライオネス
「てめえも異存ないな？」[mil][l][k][cm][ka]


;[aho_face_metoji]
;[aho_head_under_y]
;[aho_head_left_x]
;[aho_body_left_z]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_normal.gif"]

#？
「･･わかったよ。

;[aho_face_normal_majime]

あ、でもその前にこのチキン定食食べてもいいかな？」[mil][l][k][cm][ka]

;[aho_body_right_z]
;[aho_head_right_z]
;[aho_arms_normal]



;[live2d_motion name="lioness" mtn="Face_metoji"]
;[live2d_motion name="lioness" mtn="Arms_kosinite_left"]
;[live2d_motion name="lioness" mtn="Arms_kosinite_right"]
#ライオネス
「さっさとかっこめ」[mil][l][k][cm][ka]
#&f.name
「ら、ライオネス･･･」[mil][l][k][cm][ka]

;[live2d_mod name="lioness" idle="Idle" no=0]



;[live2d_motion name="lioness" mtn="Head_right_x"]
;[live2d_motion name="lioness" mtn="Head_normal"]
;[live2d_motion name="lioness" mtn="Face_normal"]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_normal.gif"]

#ライオネス
「お前は
;[live2d_motion name="lioness" mtn="Breath"]
とっとと騎士団長のとこ挨拶して休めよ。
あとのことは俺が引き継ぐ」
[mil][l][k][cm][ka]

;[live2d_motion name="lioness" mtn="Head_above_y"]
;[live2d_motion name="lioness" mtn="Head_normal"]

#ライオネス
「てめえら、行くぞ」
#
[mil][l][k][cm][ka]
[chara_off][chara_hide_all]
;[live2d_hide name="aho"]
;[live2d_hide name="lioness"]

;[live2d_off];[live2d_delete_all]


[fadeoutbgm time=3000]
[playse storage="step05_macchi.ogg"]
[w]
[playse storage="step05_macchi.ogg"]
[w]
[playse storage="step05_macchi.ogg"]
[mil][l][k][cm][ka]
*jump_map_choice_991
[autosave]

;フラグ代入
[eval exp="f.place_creru_sakaba=1"]
[eval exp="f.place_creru_out=0"]
[eval exp="f.event_sakaba=0"]
[eval exp="f.event_main_1=1"]
[eval exp="f.event_1_maigo=1"]
[eval exp="f.town_trust=0"]



[playbgm storage="guild_ontama.ogg"]
[call storage="map_macro.ks"]

*map1

[mi]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[eval exp="f.jump_map_choice_991=0"]
[creru_outo_map]




[eval exp="f.event_1_maigo=0"]











*kyoutuu7

[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[message_settei]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[playbgm storage="tw074_musmus.ogg"]
地方騎士団の本部に着くと、グレッグ騎士団長の一人娘で、
[r]先輩でもあるセレさんが門の前に立っていた。[ikkatu]
[r]私に気がつくと、優しげに微笑んでくれる。[ikkatu][ikkatu]
[r]どんな表情をしても、セレさんは本当に美人だとつくづく思う。[ikkatu]
[r]つやのある長い髪、長い睫に切れ長の瞳。[ikkatu]透き通るような白肌。[ikkatu]
[r]加えて・・通った男の人がみんなふりむくような女性らしい身体つき。[ikkatu]
[r]だけど、男勝りというか、ものすごく気が強いから男たちは
[r]憧れながらもみんな近づけないようだった。[ikkatu]
[r]本当はすごく優しい人なんだけどね・・・。

[mil][l][k][cm][ka]

[message_settei_ad]
[call storage="live2d_sub_macro.ks"]
;[live2d_load]
;[live2d_on];[live2d_new name="cera0" model_id="cera0" lip=true jname="セレ"]
;[live2d_load_off]

#&f.name
「セレさん！」[mil][l][k][cm][ka]

#
[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
;[live2d_on];[live2d_show name="cera0" y=-0.2 x=0.0 scale=2.0]
;[live2d_mod name="cera0" Idle="Idle" no=0]
[chara_on][chara_show name="cera" width=336 height=482]
;[cera0_exp_mihiraki]
[chara_mod name="cera" storage="cera0_tatie/cera0_smile.png"]
;[cera0_smile]
#セレ
「やあ、[name]。ランスロットとの稽古が終わったのか？」」[mil][l][k][cm][ka]

#

#&f.name
「うん！それで、団長に挨拶に・・・」[mil][l][k][cm][ka]

#

;[cera0_exp_normal]
;[cera0_head_under_y]
;[cera0_body_under_y]
;[cera0_head_normal]
;[cera0_body_normal]
#セレ
「ああ。父さん・・・団長も待っている。来週の試験についての説明もしたいそうだ」[mil][l][k][cm][ka]

#

;[cera0_head_left_x]
;[cera0_body_under_y]
;[cera0_udekumi]
;[cera0_head_normal]
;[cera0_body_normal]
[chara_mod name="cera" storage="cera0_tatie/cera0_udekumi.png"]
#セレ
「私はお前が少し遅いから、様子を見るようにと言われて待っていたんだ」[mil][l][k][cm][ka]


#
#&f.name
「ごめんなさい、結構待たせちゃってたのかな」[mil][l][k][cm][ka]

#
[chara_mod name="cera" storage="cera0_tatie/cera0_smile.png"]
;[cera0_kubi_kasige]
;[cera0_smile]
#セレ
「いや大丈夫だ、ちょうど外に出たところだった」[mil][l][k][cm][ka]

#

#&f.name
「よかった。じゃあ、早く団長のところに行かなくちゃ」[mil][l][k][cm][ka]

#

;[cera0_head_under_y]
;[cera0_head_normal]
;[cera0_body_under_y]
;[cera0_body_normal]
#セレ
「ああ」[mil][l][k][cm][ka]

#
[chara_off][chara_hide_all]
;;[live2d_hide name="cera0"]
;;[live2d_off];[live2d_delete_all]

[image layer=0 visible=true name="anten" page=fore storage="black.png" time=2000]

[call storage="live2d_lioness_macro.ks"]
;[live2d_mod name="cera0" Idle="Idle_metoji" no=0]
;[cera0_exp_normal]
;[cera0_exp_otikomi]
;[cera0_head_under_y]
;[cera0_head_left_x]
;[cera0_body_under_y]

[bg storage="kisidanrouka_tasogare.jpg"]
[playse storage="walk-leather-shoes1_koukaonlabo.ogg"]
[w]
[playse storage="walk-leather-shoes1_koukaonlabo.ogg"]
[w][w][w]
[free name="anten" layer=0]
[chara_on][chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png"]
;[cera0_exp_otikomi]
#セレ
「・・・・・・」[mil][l][k][cm][ka]



#&f.name
「・・・・・・セレさん？なんか、沈んだ顔だけど・・・」[mil][l][k][cm][ka]

#
[chara_mod name="cera" storage="cera0_tatie/cera0_mihiraki.png"]
;[cera0_exp_mihiraki]
;[cera0_body_above_y]
#セレ
「あっ・・・ああ、すまない、
;[cera0_body_normal]
;[cera0_exp_otikomi]
[chara_mod name="cera" storage="cera0_tatie/cera0_komari.png]
その・・・今朝団長に言われたことを思い出してな」[mil][l][k][cm][ka]

#

;[cera0_head_normal]
;[cera0_body_normal]
#&f.name
「・・・団長に？・・・」[mil][l][k][cm][ka]



;[cera0_unaduki]
#セレ
「・・・ああ、実はな・・・」[mil][l][k][cm][ka]

#

[image layer=0 visible=true name="anten" page=fore storage="black.png" time=2000]
;[cera0_arms_normal]
[free name="anten" layer=0]

#&f.name
「えっと…傭兵？傭兵って・・・」[mil][l][k][cm][ka]


;[cera0_head_under_y]
;[cera0_head_left_x]
;[cera0_arms_kataude]
#セレ
「地方騎士団はずっとここのところ人手不足なんだ。お前も･･うすうす気づいていたかもしれないが」[mil][l][k][cm][ka]

#

;[cera0_head_normal]
;[cera0_udekumi]
#セレ
「・・・だから、父さんはとりあえずの不足を解消するために、傭兵を雇うことにしたんだ」[mil][l][k][cm][ka]

#
[chara_mod name="cera" storage="cera0_tatie/cera0_otikomi.png"]
;[cera0_head_under_y]
;[cera0_body_under_y]
#セレ
「苦肉の策だった。父さんもこれまでずっと悩んでいたのだけど・・・」[mil][l][k][cm][ka]

#
;[cera0_arms_normal]


;[cera0_exp_metoji]
;[cera0_idle_metoji]
#&f.name
「傭兵かあ･･･」[mil][l][k][cm][ka]

#

#&f.name
（もしかしてあのふたりも･･地方騎士団にきてたとか？）[mil][l][k][cm][ka]

#
[fadeoutbgm time=3000]
#&f.name
（だけどいきなり騎士団員のライオネスに世話になるくらいだし、
そういうわけでもないか･･･）[mil][l][k][cm][ka]

#

[image layer=0 visible=true name="anten" page=fore storage="black.png" time=2000]

[chara_off][chara_hide_all]
;[live2d_hide name="cera0"]
;[live2d_off];[live2d_delete_all]

[message_settei]
[bg storage="dancho_tasogare.jpg"]
[free name="anten" layer=0]
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
[l]



本部のグレッグ騎士団長の部屋につくと、
[rg]早速団長が来週の試験の説明をしてくれることになった。[ikkatu]
[rg]だが肝心の試験官のライオネスがいない。[ikkatu]
[mil][l][k][cm][ka]

[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_on][chara_show name="cera" width=336 height=482]
[chara_on][chara_show name="dancho" width=260 height=425 left=-3 top=175]



[message_settei_ad]
[position layer="message1" left=220 top=360]

#&f.name
「そういえば、酒場で傭兵さんたちの喧嘩があって、決闘させるって森に･･」[mil][l][k][cm][ka]

#

[chara_mod name="cera" storage="cera0_tatie/cera0_mihiraki.png"]
[chara_mod name="dancho" storage="dancho_ikari_004.png"]



;[cera0_exp_bikkuri]

;[cera0_exp_otikomi]

#セレ
「決闘だと！？」[mil][l][k][cm][ka]

#
[fadeinbgm storage="korehaittai_ontama.ogg" time=3000]


#団長
「ライオネス･･[w]やってくれたな」[mil][l][k][cm][ka]

#

;[cera0_body_under_y]
;[cera0_arms_kataude]

#&f.name
「なにか･･･[w]いけないんですか？」[mil][l][k][cm][ka]

#

;[cera0_head_left_x]
;[cera0_head_right_x]
;[cera0_head_normal]

;[cera0_body_above_y]
;[cera0_body_under_y]
;[cera0_body_normal]
[chara_mod name="cera" storage="cera0_tatie/cera0_donari.png"]
#セレ
「当たり前だろう！傭兵同士で決闘などしたら、死人が出て仲裁どころじゃ･･」[mil][l][k][cm][ka]

#
[chara_mod name="cera" storage="cera0_tatie/cera0_otikomi.png"]
;[cera0_head_under_y]
;[cera0_exp_otikomi]

[w]



[chara_move name="cera" left=-1][chara_on][chara_show name="lion" height="698" width="456" top=-35 left=360]
;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.5 scale=3.9]
;[live2d_mod name="cera0" x="-0.5" ]
#ライオネス
「ただいま戻りましたっと」[mil][l][k][cm][ka]

#
[chara_move name="cera" left=-1][chara_on][chara_show name="lion" height="698" width="456" top=-35 left=360]
;[cera0_head_normal]
;[cera0_arms_normal]
;[cera0_body_above_y]
;[cera0_body_under_y]
;[cera0_body_normal]
[chara_mod name="cera" storage="cera0_tatie/cera0_donari.png"]
#セレ
「ライオネス！傭兵同士で決闘させたというのは本当か！？」[mil][l][k][cm][ka]

#
[stopse]
[chara_mod name="cera" storage="cera0_tatie/cera0_otikomi.png"]
;;[lioness_body_above_y]
;[lioness_head_left_z]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]
#ライオネス
「なんか悪かったか？ああでもしなきゃあいつらずっとやってそうだったし･･」[mil][l][k][cm][ka]

#
;[lioness_face_normal]
;[lioness_body_normal]
;[lioness_head_normal]
[chara_mod name="dancho" storage="dancho_donari_004.png"]
#団長
「この馬鹿者めが！」[mil][l][k][cm][ka]

#
;[lioness_body_above_y]
;[lioness_face_odoroki]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]
;[quake count=5 time=300 hmax=20]

#団長
「殺し合いをしろ、というようなものだろう！
地方騎士団の騎士ともあろうものが、殺人を薦めてどうする！」[mil][l][k][cm][ka]

#
[chara_mod name="dancho" storage="dancho_ikari_004.png"]
;[lioness_body_right_x]
;[lioness_head_right_x]
;[lioness_head_right_z]
;[lioness_eyes_right]
;[lioness_arms_poripori]
;[lioness_face_yokome_otikomi]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kimazui.gif"]

#ライオネス
「いや、剣は使わないように言って･･･」[mil][l][k][cm][ka]

#
;[cera0_head_left_x]
;[cera0_udekumi]
;[cera0_head_normal]
[chara_mod name="cera" storage="cera0_tatie/cera0_udekumi.png"]
#セレ
「最後まで見届けたのか？」[mil][l][k][cm][ka]

#


;[lioness_head_normal]
;[lioness_body_normal]
;[lioness_head_under_y]
;[lioness_eyes_under]
;[lioness_face_mehuse_dai]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"][chara_mod name="lion" storage="lion_tatie/Idle_gif_kimazui.gif"]
#ライオネス
「いや････[w]その･･･」[mil][l][k][cm][ka]

#
;[live2d_mod name="cera0" Idle="Idle_metoji"]

;[cera0_exp_metoji]
;[cera0_idle_metoji]

;;[cera0_head_under_y]

[chara_mod name="cera" storage="cera0_tatie/cera0_metoji.png"]
;;[cera0_body_under_y]
#セレ
「はあ･･･」[mil][l][k][cm][ka]

#

[fadeinse storage="yukahasiru_onjin.ogg" time=3000]
[stopse]

;[cera0_body_normal]
;[cera0_head_normal]

#騎士
「大変です！今報告がありまして、[mil][l][k][cm][ka]

クレール近くの森にて傭兵の死体が発見されたと･･･！！」
#
[chara_mod name="cera" storage="cera0_tatie/cera0_mihiraki.png"][chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]
;[live2d_mod name="lioness" Idle="Face_otikomi"]
;[live2d_motion name="lioness" mtn="Arms_right_x"]
;[live2d_motion name="lioness" mtn="Arms_left_x"]
;[live2d_motion name="lioness" mtn="Body_normal"]
;[lioness_face_odoroki]
[mil][l][k][cm][ka]

#ライオネス
「！！！！」[mil][l][k][cm][ka]

#

[chara_mod name="dancho" storage="dancho_metoji_004.png"]
;[live2d_motion name="dancho" mtn="Metoji" no=0 ]
#団長
「･･わかった。あとで調査と回収にいくぞ。[w]･･･ライオネス」[mil][l][k][cm][ka]

#

;[lioness_eyes_under]
;[lioness_body_under_y]
;[lioness_head_under_y]
;[lioness_face_otikomi]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_otikomi.gif"]

#ライオネス
「は･･･[w]はい･･･」[mil][l][k][cm][ka]

#
[chara_mod name="dancho" storage="dancho_ikari_004.png"]
;[live2d_motion name="dancho" mtn="Ikari" no=0 ]
#団長
「来週の試験は予定通り行う。その後は当分停職扱いだ。
;[lioness_face_odoroki]
[w]いいな」[mil][l][k][cm][ka]

#
[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_otikomi.gif"]
#ライオネス
「て･･･停職････」[mil][l][k][cm][ka]

#
;[lioness_face_mehuse_dai]
;[lioness_face_otikomi]
[fadeoutbgm time=3000]


;[cera0_idle_metoji]
;[cera0_head_left_x]
;[cera0_head_right_x]
;[cera0_head_normal]
;[cera0_head_under_y]
;[cera0_body_under_y]
#セレ
「当たり前だ･････」[mil][l][k][cm][ka]

#
;[cera0_exp_metoji]
;[cera0_idle_metoji]
[image layer=0 visible=true name="anten" page=fore storage="black.png" time=2000]

;[live2d_hide name="cera0"]
;[live2d_hide name="lioness"]
;[live2d_hide name="dancho"]
[chara_off][chara_hide name="cera"]
[chara_off][chara_hide name="dancho"]
[chara_off][chara_hide name="lion"]
;[live2d_off];[live2d_delete_all]



[anten]
[mil][l]
;ライオネス現れる
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]

[k][cm][ka]





[free name="anten" layer=0]
[bg storage="irainheya_tasogare.jpg"]

[message_settei_ad]
#&f.name
「・・・はあ・・・」[mil][l][k][cm][ka]

#

#&f.name
「なんだか途中から大変なことになっちゃったけど・・・」[mil][l][k][cm][ka]

#

#&f.name
「結局、試験の説明はどうなるんだろ・・・今日じゃない日にやるのかな・・・」[mil][l][k][cm][ka]

#
[playse storage="nokku_tairakomori.ogg"]

#&f.name
「ん？はーい」[mil][l][k][cm][ka]

#

#&f.name
「ライオネス！？どうしたの？」[mil][l][k][cm][ka]

#



;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[chara_on][chara_show name="lion" height="698" width="456" top=-35]



#ライオネス
「・・・試験の説明がまだだっただろ」[mil][l][k][cm][ka]

#

#&f.name
「あれ、えっとそれは団長が・・・」[mil][l][k][cm][ka]

#


[chara_mod name="lion" storage="lion_tatie/Idle_gif_kimazui.gif"]
;[lioness_arms_udekumi]
;[lioness_face_mehuse_dai]
#ライオネス
「団長はさっきのアレで・・・それどころじゃなくなった」[mil][l][k][cm][ka]

#


#&f.name
（あ・・・）[mil][l][k][cm][ka]

#

[chara_mod name="lion" storage="lion_tatie/Idle_gif_otikomi.gif"]
;[lioness_head_under_y]
;[lioness_face_metoji]

#ライオネス
「・・・で、俺にやれって・・・」[mil][l][k][cm][ka]

#

#&f.name
「・・・・・・」[mil][l][k][cm][ka]

#


;[lioness_head_under_y]
;[lioness_face_otikomi]
;[lioness_eyes_left_under]

#ライオネス
「はあ・・・」[mil][l][k][cm][ka]

#


#&f.name
（だいぶ落ち込んでる・・・でも無理もないよね・・・）[mil][l][k][cm][ka]

#


[jump storage="sentaku.ks" target=*choice991]


*choice991_kyoutuu
*status

;[lioness_head_normal]
;[lioness_face_metoji]
#ライオネス
「はあ・・・ともかくだ。
;[lioness_face_normal]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]
;[lioness_arms_kosinite_right]
;[lioness_head_right_z]

お前、ステータスの見方くらいはわかんのか？」[mil][l][k][cm][ka]

#


#&f.name
「へ？ステータス？」[mil][l][k][cm][ka]

#

[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]
;[lioness_body_under_y]
;[lioness_head_under_y]
;[lioness_head_normal]
;[lioness_body_normal]
#ライオネス
「ステータスってのは、お前の能力を数字にしたやつだ」[mil][l][k][cm][ka]

#
#ライオネス
「部屋に戻ると、こういう画面になる」[mil][l][k][cm][ka]

#



;試験的に
;騎士団試験のフラグ
[eval exp="f.event_main_3=1"]

;騎士団試験残り日数
[eval exp="f.event_main_3_days=6"]
;サブイベントフラグ
[eval exp="f.event_1_maigo=0"]
[eval exp="f.event_2_kra=1"]
[eval exp="f.event_2_oyaji=1"]
[eval exp="f.event_2_gaia=1"]
[eval exp="f.rans_tutrial=1"]
;作業効率
[eval exp="f.work efficiency=1"]
;ポイント
[eval exp="f.point=1"]


[call storage="status_macro.ks"]
[call storage="item_check.ks"]
[call storage="item_check_other.ks"]
[call storage="item_check_cook.ks"]
[call storage="item_check_battle.ks"]
[call storage="item_check_equip_hyouji.ks"]
[call storage="item_check_soubi_2.ks"]

;[lion]


*status_setumei_return
;[live2d_fadeout time=1000 ]
[chara_off][chara_hide name="lion"]



;ここからステータス表示
[call storage="item/equip_item_data.ks"]
[call storage="status_macro_macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="map_macro.ks"]


[eval exp="f.rans_tutrial_no=1"]
;信頼度
;[eval exp="f.town_trust=0"]
;お金
[eval exp="f.money=0"]
;[name]能力値
[eval exp="f.irain_tec=5"]
[eval exp="f.irain_brain=10"]
[eval exp="f.irain_charm=5"]





[eval exp="tf.command_x=10"]
[eval exp="tf.command_y=30"]
[eval exp="tf.command_x_moji=tf.command_x+45"]
[eval exp="tf.command_y_moji=tf.command_y+10"]

[eval exp="tf.command_x_2=10"]
[eval exp="tf.command_x_2_moji=tf.command_x_moji"]
[eval exp="tf.command_y_2=tf.command_y+60"]
[eval exp="tf.command_y_2_moji=tf.command_y_moji+60"]

[eval exp="tf.command_x_3=10"]
[eval exp="tf.command_x_3_moji=tf.command_x_moji"]
[eval exp="tf.command_y_3=tf.command_y_2+60"]
[eval exp="tf.command_y_3_moji=tf.command_y_2_moji+60"]

[eval exp="tf.command_x_4=10"]
[eval exp="tf.command_x_4_moji=tf.command_x_moji"]
[eval exp="tf.command_y_4=tf.command_y_3+60"]
[eval exp="tf.command_y_4_moji=tf.command_y_3_moji+60"]

[eval exp="tf.command_x_5=10"]
[eval exp="tf.command_x_5_moji=tf.command_x_moji"]
[eval exp="tf.command_y_5=tf.command_y_4+60"]
[eval exp="tf.command_y_5_moji=tf.command_y_4_moji+60"]

[eval exp="tf.command_x_6=10"]
[eval exp="tf.command_x_6_moji=tf.command_x_moji"]
[eval exp="tf.command_y_6=tf.command_y_5+60"]
[eval exp="tf.command_y_6_moji=tf.command_y_5_moji+60"]

[eval exp="tf.command_x_7=10"]
[eval exp="tf.command_x_7_moji=tf.command_x_moji"]
[eval exp="tf.command_y_7=tf.command_y_6+60"]
[eval exp="tf.command_y_7_moji=tf.command_y_6_moji+60"]










[playbgm storage="boukennojunbi_ontama.ogg"]



;外出

[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x y=&tf.command_y]

[ptext layer=2 page=fore text="外出" face=antique name="command" color="brown" size=20 x=&tf.command_x_moji y=&tf.command_y_moji]

;稽古
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_2 y=&tf.command_y_2]
[ptext layer=2 page=fore text="稽古" face=antique name="command" color="brown" size=20 x=&tf.command_x_2_moji y=&tf.command_y_2_moji]

;課題
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_3 y=&tf.command_y_3]
[ptext layer=2 page=fore text="課題" face=antique name="command" color="brown" size=20 x=&tf.command_x_3_moji y=&tf.command_y_3_moji]


[eval exp="tf.command_x_4_moji=tf.command_x_4_moji-10"]

;闘技場
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_4 y=&tf.command_y_4]
[if exp="f.rans_tutrial_no==1"]
[ptext layer=2 page=fore text="？？？" face=antique name="command" color="brown" size=20 x=&tf.command_x_4_moji y=&tf.command_y_4_moji]

[else]
[ptext layer=2 page=fore text="闘技場" face=antique name="command" color="brown" size=20 x=&tf.command_x_4_moji y=&tf.command_y_4_moji]
[endif]


;休む
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_5 y=&tf.command_y_5]

[ptext layer=2 page=fore text="休む" face=antique name="command" color="brown" size=20 x=&tf.command_x_5_moji y=&tf.command_y_5_moji]

[eval exp="tf.command_x_6_moji=tf.command_x_6_moji-15"]

;アイテム
[image layer=1 page=fore storage="button/command.png" name="command_item" x=&tf.command_x_6 y=&tf.command_y_6]


[ptext layer=2 page=fore text="アイテム" face=antique name="command_item" color="brown" size=20 x=&tf.command_x_6_moji y=&tf.command_y_6_moji]

;記録・設定
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_7 y=&tf.command_y_7]
[ptext layer=2 page=fore text="設定" face=antique name="command" color="brown" size=20 x=&tf.command_x_7_moji y=&tf.command_y_7_moji]



;装備
[image layer=1 page=fore storage="shozoku_window.png" name="soubi" x=530 y=250]
[image layer=1 page=fore storage="equip_huda.png" name="soubi" x=530 y=260]



[ptext layer=2 page=fore text="装備" size=20 face=antique color="brown" name="soubi" x=570 y=265]
[eval exp="f.equip_item_current=3"]
;装備欄２にアイテムナンバー入力
[eval exp="f.equip_item_current_2=1"]

[if exp="tf.equip_item_3_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm+tf.equip_item_3_effect_3_number"]
[endif]
[if exp="tf.equip_item_3_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain+tf.equip_item_3_effect_2_number"]
[endif]
[if exp="tf.equip_item_3_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.equip_item_3_effect_1_number"]
[endif]

[if exp="tf.equip_item_1_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm+tf.equip_item_1_effect_3_number"]
[endif]
[if exp="tf.equip_item_1_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain+tf.equip_item_1_effect_2_number"]
[endif]
[if exp="tf.equip_item_1_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.equip_item_1_effect_1_number"]
[endif]

;ブラジャーを装備欄へ表示
[if exp="f.equip_item_current==1"]
[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=590 y=300]

;ティーバッグを装備らんへ表示
[elsif exp="f.equip_item_current==5"]

[ptext layer=2 page=fore text=&tf.equip_item_5_name face=antique name="soubi1" size=20 x=590 y=300]
;ガードルを装備らんへ表示
[elsif exp="f.equip_item_current==4"]

[ptext layer=2 page=fore text=&tf.equip_item_4_name face=antique name="soubi1" size=20 x=590 y=300]

;ボンテージを装備らんへ表示
[elsif exp="f.equip_item_current==3"]

[ptext layer=2 page=fore text=&tf.equip_item_3_name face=antique name="soubi1" size=20 x=590 y=300]

;パンティを装備らんへ表示
[elsif exp="f.equip_item_current==2"]

[ptext layer=2 page=fore text=&tf.equip_item_2_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==1"]

[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=590 y=300]




[endif]

;ブラジャーを装備欄へ表示
[if exp="f.equip_item_current_2==1"]
[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=590 y=330]

;ティーバッグを装備らんへ表示
[elsif exp="f.equip_item_current_2==5"]

[ptext layer=2 page=fore text=&tf.equip_item_5_name face=antique name="soubi1" size=20 x=590 y=330]
;ガードルを装備らんへ表示
[elsif exp="f.equip_item_current_2==4"]

[ptext layer=2 page=fore text=&tf.equip_item_4_name face=antique name="soubi1" size=20 x=590 y=330]

;ボンテージを装備らんへ表示
[elsif exp="f.equip_item_current_2==3"]

[ptext layer=2 page=fore text=&tf.equip_item_3_name face=antique name="soubi1" size=20 x=590 y=330]

;パンティを装備らんへ表示
[elsif exp="f.equip_item_current_2==2"]

[ptext layer=2 page=fore text=&tf.equip_item_2_name face=antique name="soubi1" size=20 x=590 y=330]

[elsif exp="f.equip_item_current_2==1"]

[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=590 y=330]




[endif]





;お金
[image layer=1 page=fore storage="okane.png" name="money" x=540 y=210]
;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=560 y=220]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=640 y=220]





;ステータスベース
[image layer=1 page=fore storage="status_window.png" name="status" x=175 y=140]

;[name]の顔画像
[image layer=2 page=fore storage="battle_face/irain_face.png" name="status" x=200 y=152]

[image layer=2 page=fore storage="trust_star_0.png" name="status" x=225 y=280]


;名前
[ptext layer=2 page=fore text="&f.name" name="status" size=21 x=370 y=163]


[ptext layer=2 page=fore visible="true" text="HP:" name="status" size=20 x=355 y=190]

[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]

[ptext layer=2 page=fore visible="true" text="&f.irain_hp" name="status_hp" size=30 x=395 y=190]


[eval exp="tf.irain_tec_x=360"]
[eval exp="tf.irain_tec_number_x=415"]

[eval exp="tf.irain_tec_y=225"]
[eval exp="tf.irain_tec_number_y=226"]


[eval exp="tf.irain_brain_x=360"]
[eval exp="tf.irain_brain_number_x=415"]

[eval exp="tf.irain_brain_y=250"]
[eval exp="tf.irain_brain_number_y=251"]


[eval exp="tf.irain_charm_x=360"]
[eval exp="tf.irain_charm_number_x=415"]

[eval exp="tf.irain_charm_y=275"]
[eval exp="tf.irain_charm_number_y=276"]



;技術
[ptext layer=2 page=fore text="技術" name="status_skill" size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

;所属
[ptext layer=2 page=fore text="所属:" name="status" size=20 x=215 y=305]

;所属名
[ptext layer=2 page=fore text="クレール王国地方騎士団" name="status" size=20 x=260 y=305]







;装備欄
[image layer=1 page=fore storage="item_window.png" name="equip" x=840 y=50]

;装備中み

;お知らせ

[eval exp="tf.attention_x=800"]
[eval exp="tf.attention_y=150"]
[eval exp="tf.attention_x_tojiru=tf.attention_x+168"]
[eval exp="tf.attention_y_tojiru=tf.attention_y+10"]

[image layer=1 page=fore storage="attention.png" name="attention" x=&tf.attention_x y=&tf.attention_y]
[eval exp="tf.attention_x_moji=tf.attention_x+28"]
[eval exp="tf.attention_y_moji=tf.attention_y+28"]
[eval exp="tf.attention_x_image=tf.attention_x+10"]
[eval exp="tf.attention_y_image=tf.attention_y+10"]


[image layer=2 page=fore storage="warning.png" name="attention" x=&tf.attention_x_image y=&tf.attention_y_image]
[ptext layer=2 page=fore text="M A P上にイベントあり" name="attention" color="black" size=15 x=&tf.attention_x_moji y=&tf.attention_y_moji]


[anim name="attention" left="-=200" time=200]






[eval exp="tf.mokuhyou_x=532"]
[eval exp="tf.mokuhyou_y=30"]

[eval exp="tf.mokuhyou_x_moji=552"]
[eval exp="tf.mokuhyou_y_moji=55"]

[eval exp="tf.mokuhyou_x_suuji=698"]
[eval exp="tf.mokuhyou_y_suuji=45"]

[eval exp="tf.mokuhyou_x_suuji_number=707"]
[eval exp="tf.mokuhyou_y_suuji_number=55"]


[eval exp="tf.mokuhyou_x_moji_2=730"]
[eval exp="tf.mokuhyou_y_moji_2=55"]



[eval exp="tf.mokuhyou_x_con=650"]
[eval exp="tf.mokuhyou_y_con=120"]

[eval exp="tf.mokuhyou_x_con_image=630"]
[eval exp="tf.mokuhyou_y_con_image=115"]



[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
[ptext layer=2 page=fore text="正騎士試験まであと" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
[image layer=2 page=fore storage="mokuhyou_suuji.png" name="mokuhyou" x=&tf.mokuhyou_x_suuji y=&tf.mokuhyou_y_suuji]
[ptext layer=2 page=fore text="&f.event_main_3_days" face=antique name="mokuhyou" size=23 x=&tf.mokuhyou_x_suuji_number y=&tf.mokuhyou_y_suuji_number]
[ptext layer=2 page=fore text="日" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji_2 y=&tf.mokuhyou_y_moji_2]

[ptext layer=2 page=fore text="条件を確認する" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]


*button_hyouji

;目標張り紙

[eval exp="tf.mokuhyou_x=532"]
[eval exp="tf.mokuhyou_y=30"]

[eval exp="tf.mokuhyou_x_moji=552"]
[eval exp="tf.mokuhyou_y_moji=55"]

[eval exp="tf.mokuhyou_x_suuji=698"]
[eval exp="tf.mokuhyou_y_suuji=45"]

[eval exp="tf.mokuhyou_x_suuji_number=707"]
[eval exp="tf.mokuhyou_y_suuji_number=55"]


[eval exp="tf.mokuhyou_x_moji_2=730"]
[eval exp="tf.mokuhyou_y_moji_2=55"]



[eval exp="tf.mokuhyou_x_con=650"]
[eval exp="tf.mokuhyou_y_con=120"]

[eval exp="tf.mokuhyou_x_con_image=630"]
[eval exp="tf.mokuhyou_y_con_image=115"]



[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
[ptext layer=2 page=fore text="正騎士試験まであと" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
[image layer=2 page=fore storage="mokuhyou_suuji.png" name="mokuhyou" x=&tf.mokuhyou_x_suuji y=&tf.mokuhyou_y_suuji]
[ptext layer=2 page=fore text="&f.event_main_3_days" face=antique name="mokuhyou" size=23 x=&tf.mokuhyou_x_suuji_number y=&tf.mokuhyou_y_suuji_number]
[ptext layer=2 page=fore text="日" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji_2 y=&tf.mokuhyou_y_moji_2]

[ptext layer=2 page=fore text="条件を確認する" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]




*attention_return



*status_setumei
[clearstack]






#ライオネス
「これ、お前のアホヅラの右にあるのが、ステータスだ」[mil][l][k][cm][ka]

[image layer=2 page=fore storage="setumei_yajirusi.png" name="cursor_setumei" x=300 y=223]

「技術、頭脳、魅力の３種類ある」[mil][l][k][cm][ka]

#
[anim name="cursor_setumei" left="+=150" time=200]

[anim name="cursor_setumei" top="+=23" time=300] 

[w]

[anim name="cursor_setumei" top="+=23" time=300] 






[if exp="tf.setumei_return!=1"]
#&f.name
（アホって・・・いちいち余計・・・）[mil][l][k][cm][ka]

#
[endif]

[anim name="cursor_setumei" top="-=23" time=300]
 [anim name="cursor_setumei" top="-=26" time=300] 

#ライオネス
「技術は、お前の剣の腕のことだ」[mil][l][k][cm][ka]

 [anim name="cursor_setumei" top="+=23" time=300] 

「頭脳は、どれだけ馬鹿かって話で・・・魅力は・・・」[mil][l][k][cm][ka]

#
 [anim name="cursor_setumei" top="+=23" time=300] 


[if exp="tf.setumei_return!=1"]
#&f.name
「・・・え？」[mil][l][k][cm][ka]

#
[endif]

#ライオネス
「・・・ま、お前にはねえけど、女としてどうこう・・・ってやつだな」[mil][l][k][cm][ka]

#


[if exp="tf.setumei_return!=1"]

#&f.name
（どうこう・・・？って、何・・・？）[mil][l][k][cm][ka]

#
[endif]

;ステータスについて説明パネル

[message_settei]
「主人公の能力値は、３種類。技術、頭脳、魅力があります。
[r]技術は騎士としての技量、剣の腕を表します。戦闘の時の攻撃力です。
[r]頭脳は知識の量や賢さを表します。
[r]魅力は女性として、人間としての魅力を表します」[mil][l][k][cm][ka]
[ikkatu]



[message_settei_ad]

#ライオネス
「正騎士承認試験に受かるためには、この能力値がそれぞれ一定数以上になってること」[mil][l][k][cm][ka]

「さらに戦闘試験でモンスターを倒すことが必要だ」[mil][l][k][cm][ka]

#


[if exp="tf.setumei_return!=1"]

#&f.name
「せ、戦闘・・・」[mil][l][k][cm][ka]

#

#ライオネス
「当然だ。騎士なら、戦いは避けて通れねえからな。
[r]最近はモンスターなんかあんまりいねえが・・・[mil][l][k][cm][ka]


「だからっていざって時に戦えなきゃ話になんねえ」[mil][l][k][cm][ka]


「・・・まあ、要は勝てばいい」[mil][l][k][cm][ka]

#
#&f.name
「えっと・・・能力値は、どうやってあげればいいの？」[mil][l][k][cm][ka]

#
[endif]

#ライオネス
[if exp="tf.setumei_return==1"]
「能力値のあげ方は・・・」[mil][l][k][cm][ka]

[endif]
「左端に縦にボタンが並んでんだろ。コマンドってやつだ」[mil][l][k][cm][ka]

#


[anim name="cursor_setumei" left="-=330" time=200]

[anim name="cursor_setumei" top="-=182" time=200]


[if exp="tf.setumei_return!=1"]
#&f.name
「コマンド・・・」[mil][l][k][cm][ka]

#
[endif]


#ライオネス
「技術をあげたいなら「稽古」[mil][l][k][cm][ka]

[anim name="cursor_setumei" top="+=60" time=200]
頭脳をあげたいなら「課題」のコマンドを押せばいい[mil][l][k][cm][ka]


「どれかのコマンドを押すと一日が終わって、
また次の日になる。試験日までその繰り返しだ」[mil][l][k][cm][ka]

#

[if exp="tf.setumei_return!=1"]
#&f.name
「はあ・・・あれ、でも魅力は？どうやって上げるの？」[mil][l][k][cm][ka]

#
#ライオネス
「魅力は・・・知らねえ。自分で探せ」[mil][l][k][cm][ka]

#
#&f.name
（ええ・・・）[mil][l][k][cm][ka]

#
[endif]


#ライオネス
「あああと、たまには休まねえと疲れて倒れちまうからな」[mil][l][k][cm][ka]

[anim name="cursor_setumei" top="+=120" time=200]
「休息の日はあったほうがいいんじゃねえか」[ikkatu][mil][l][k][cm][ka]


#

#&f.name
「休息かあ・・・」[mil][l][k][cm][ka]

#

#ライオネス
「休むと、稽古や課題の効果もちょっと上がるかもしれねえぜ」[mil][l][k][cm][ka]

#

[if exp="tf.setumei_return!=1"]
#&f.name
（でも、休んだら一日終わっちゃうんだよね・・・難しいな）[mil][l][k][cm][ka]

#
[endif]

[if exp="tf.setumei_return!=1"]
#&f.name
「あ、外出は・・・あんまりしないほうがいいんだよね？」[mil][l][k][cm][ka]

#
[endif]


[anim name="cursor_setumei" top="-=240" time=200]

#ライオネス
「あぁ・・・王都の散策もたまにはいいんじゃねえか」[mil][l][k][cm][ka]
#

#ライオネス
「ただし回るのは２箇所くらいにしとけ。夜出歩くなんざもってのほかだ」[mil][l][k][cm][ka]

#

#&f.name
「わ、わかりました・・・」[mil][l][k][cm][ka]

#





#ライオネス
「試験までの日数と、目標値は右上に表示されっから、
[anim name="cursor_setumei" top="+=20" time=200]
[anim name="cursor_setumei" left="+=620" time=200]

毎日確認して試験まで頑張れよ」[mil][l][k][cm][ka]

#
[anim name="cursor_setumei" top="+=60" time=200]

[message_settei]
「試験日まで、稽古や課題のコマンドを使って能力値をあげましょう。
[r]試験日までの日数と、課題は右上に表示されます」[ikkatu]


[message_settei_ad]
#ライオネス
「ああ後・・・試験には直接関係ねえが、仕事上重要なことだから説明しとく」[mil][l][k][cm][ka]

#

[anim name="cursor_setumei" left="-=450" time=200]
[anim name="cursor_setumei" top="+=160" time=200]

#ライオネス
「このお前の顔の下の星、これは街の人からの信頼度だ」[mil][l][k][cm][ka]

#

[if exp="tf.setumei_return!=1"]

#&f.name
「信頼度・・・？」[mil][l][k][cm][ka]

#
[endif]

#ライオネス
「俺らの仕事は王都の治安を守るだけじゃねえ」[mil][l][k][cm][ka]
「街中のトラブル対処や、困ってる街の人たちを助けることも大事な仕事だ」[mil][l][k][cm][ka]
「街で困ってる奴がいたらなるべく助けてやれ」[mil][l][k][cm][ka]
#

[if exp="tf.setumei_return!=1"]

#&f.name
「わかりました！」[mil][l][k][cm][ka]

#
[endif]





[clearstack]
[clearfix name="change_button"]
[freeimage layer=1]
[freeimage layer=2]

[chara_on][chara_show name="lion" height="698" width="456" top=-35]
;[live2d_fadein time=1000 ]

#ライオネス
「説明はこんなとこだ。分かったか？」[mil][l][k][cm][ka]

#



*main_event_2_choice_2
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【説明はもういいかな？】

[glink target=*me2_2_1 text="（もう一回聞く）" size=17 width=600 x=65 y=200]
[glink target=*me2_2_2 text="（大丈夫）" size=17 width=600 x=65 y=260]

[mi][s]

*me2_2_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;[lioness_eyes_left]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
#ライオネス
「めんどくせーな・・・」[mil][l][k][cm][ka]

#
;[lioness_eyes_normal]


[eval exp="tf.setumei_return=1"]
[jump target=*status_setumei_return]



*me2_2_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="tf.setumei_return=0"]
#&f.name
「は、はあ・・・」[mil][l][k][cm][ka]

#
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]
#ライオネス
「よし。それじゃま、試験日までせいぜい頑張れよ」[mil][l][k][cm][ka]

#


;ライオネスいなくなる
;[live2d_hide name="lioness"]
[chara_off][chara_hide name="lion"]
*jiyuu1
[eval exp="f.jiyuu=0"]

;[name]能力値
[eval exp="f.irain_tec=5"]
[eval exp="f.irain_brain=10"]
[eval exp="f.irain_charm=5"]

;外出回数
[eval exp="f.irain_move=2"]

;アイテム個数入力サンプル

;アイテム個数入力サンプル
;サンプルで個数をいれとく
[eval exp="f.battle_item_1_stock=3"]
;サンプルで個数をいれとく
[eval exp="f.battle_item_2_stock=12"]
[eval exp="f.battle_item_3_stock=0"]
[eval exp="f.battle_item_4_stock=0"]
[eval exp="f.battle_item_5_stock=0"]
[eval exp="f.battle_item_6_stock=0"]
;街の人の差し入れ回数チェックフラグ
[eval exp="f.trust_sasiire=0"]



;サンプルで個数をいれとく
[eval exp="f.equip_item_2_stock=1"][eval exp="f.equip_item_4_stock=1"]
[eval exp="f.equip_item_1_stock=0"][eval exp="f.equip_item_3_stock=0"]

[eval exp="f.equip_item_5_stock=0"]



;アイテムチェックの後に入れないとだめ
[eval exp="f.equip_item_current=tf.equip_item_3_number"]
;装備欄２にアイテムナンバー入力
[eval exp="f.equip_item_current_2=tf.equip_item_1_number"]

[if exp="tf.equip_item_3_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm+tf.equip_item_3_effect_3_number"]
[endif]
[if exp="tf.equip_item_3_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain+tf.equip_item_3_effect_2_number"]
[endif]
[if exp="tf.equip_item_3_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.equip_item_3_effect_1_number"]
[endif]

[if exp="tf.equip_item_1_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm+tf.equip_item_1_effect_3_number"]
[endif]
[if exp="tf.equip_item_1_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain+tf.equip_item_1_effect_2_number"]
[endif]
[if exp="tf.equip_item_1_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.equip_item_1_effect_1_number"]
[endif]




#&f.name
（よ、よーし、ともかく頑張るしかないよね！）[mil][l][k][cm][ka]

#
[clearfix name="role_button"]
[clearfix name="kinou_button"]
[free name="jump_off" layer=3]
[freeimage layer=0]
[autosave]
*test_week_start
[if exp="f.live2d_on==1"]
;[live2d_off];[live2d_delete_all]
[endif]
[if exp="f.test_return==1"][jump target=*momo][endif]
;フラグ処理
[eval exp="f.rans_tutrial_no=1"]

[eval exp="f.event_main_1=0"]
[eval exp="f.event_main_2=0"]
[eval exp="f.event_1_maigo=0"]
;サブイベントフラグ
[eval exp="f.event_2_kra=1"]
[eval exp="f.event_2_oyaji=1"]
[eval exp="f.event_2_gaia=1"]


;信頼度
;[eval exp="f.town_trust=0"]
;お金
[eval exp="f.money=0"]

;騎士団試験のフラグ
[eval exp="f.event_main_3=1"]



;作業効率
[eval exp="f.work efficiency=0"]
;アイテム個数入力サンプル
;サンプルで個数をいれとく
[eval exp="f.other_item_1_stock=1"]
[eval exp="f.other_item_2_stock=1"]
[eval exp="f.other_item_3_stock=0"]
[eval exp="f.other_item_4_stock=0"]
[eval exp="f.other_item_5_stock=0"]
*momo
[eval exp="f.event_main_3_days=6"]
[status_hyouji]




*rans_tutrial


;三日目くらいに

;[live2d_load]
;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off]
[eval exp="f.rans_tutrial=1"]
[hidemenubutton]



[bg storage="irainheya_tasogare.jpg"]
[playse storage="nokku_tairakomori.ogg"]



#&f.name
「あれ、誰だろう」[mil][l][k][cm][ka]

#
;ランス現れる
;;[live2d_on];[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3];;[baka_exp_normal_warai]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif" top=10]
#ランスロット
「おはよう、[name]」[mil][l][k][cm][ka]

#

#&f.name
「あ、ランスロット！」[mil][l][k][cm][ka]

#
;[baka_arms_kosinite_right_sitahuku]
;[baka_body_right_x]
;[baka_exp_normal_warai]
;[baka_head_left_z]
;[baka_body_left_z]

#ランスロット
「どうだ、試験の勉強は進んでいるか？」[mil][l][k][cm][ka]

#

#&f.name
「う、うんまあボチボチ・・・」[mil][l][k][cm][ka]

#

;[baka_head_normal]
;[baka_head_under_y]
;[baka_body_under_y]
;[baka_body_normal]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_metoji_warai.gif"]

#ランスロット
「なるほど。まあお前なら大丈夫だ。それほど心配するな」[mil][l][k][cm][ka]

#

#&f.name
「う、うん・・・」[mil][l][k][cm][ka]

#
;[baka_arms_udekumi];[baka_head_left_x];[baka_body_right_z]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
#ランスロット
「今日は、お前に実戦訓練をさせようと思ってな」[mil][l][k][cm][ka]

#

#&f.name
「じ、実戦って・・・」[mil][l][k][cm][ka]

#

;[baka_exp_normal]
;[baka_head_under_y]
;[baka_head_normal]
;[baka_body_normal]

#ランスロット
「実際にモンスターと戦うんだ。試験では戦って勝たなくてはならないだろう」[mil][l][k][cm][ka]

#

#&f.name
「そ、そうだけど・・・」[mil][l][k][cm][ka]

#
;[baka_exp_normal_warai]
;[baka_head_right_z]
;[baka_body_right_z]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_metoji_warai.gif"]
#ランスロット
「・・・不安そうな顔をするな。
[r]大丈夫だ、私もついているから、怖いことはない」[mil][l][k][cm][ka]

#

;[baka_arms_kosinite_right_sitahuku]
;[baka_arms_kosinite_left_sitahuku]

#&f.name
「う、うん・・・」[mil][l][k][cm][ka]

#

;[baka_body_left_x]
;[baka_eyes_left]
#ランスロット
「いざとなって慌てては困るからな。

;[baka_body_normal];[baka_eyes_normal];[baka_head_left_x]
;[baka_body_left_z]

[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
闘技場で模擬戦闘ができるから、これから行かないか」[mil][l][k][cm][ka]

#

#&f.name
「闘技場・・・」[mil][l][k][cm][ka]

#

*main_event_3_choice_1
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【闘技場へいく？・・・】

[glink target=*me_3_1 text="（行きます）" size=17 width=600 x=65 y=200]
[glink target=*me_3_2 text="（遠慮しとく）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]



 *me_3_1
 
 [free name="sentakusi" layer=0]

[cm][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;[live2d_fadein time=1000]
[clearstack][free name="sentakusi" layer=0]
;[baka_head_under_y]
;[baka_body_under_y]
;[baka_head_normal]
;[baka_body_normal]

[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「よし、それでは早速向かうか」[mil][l][k][cm][ka]

#
;[baka_body_right_z]
;[baka_head_right_z]

;[live2d_fadeout time=1000]

[chara_off][chara_hide name="rans"]
[jump target=*tougijou]


*me_3_2
[free name="sentakusi" layer=0]

[cm][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;[live2d_fadein time=1000]
;[baka_head_under_y]
;[baka_body_under_y];[baka_head_normal];[baka_body_normal]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「わかった。余裕だな。もしこの後自分でも訓練したかったら行くといいぞ」[mil][l][k][cm][ka]

#




[jump target=*tougijou_sonogo]



*tougijou
;闘技場

[bg storage="tougijou_ac.jpg"]
;[live2d_fadein time=1000];[baka_exp_normal_warai]
[chara_on][chara_show name="rans" top=10]


#ランスロット
「闘技場と言っても、今回はごく弱いモンスターしかいないから安心していい。
[r]もしも負けても何度でも挑戦ができるしな」[mil][l][k][cm][ka]

#


*main_event_3_choice_2
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【闘技場を利用する？・・・】

[glink target=*me3_2_1 text="（利用する）" size=17 width=600 x=65 y=200]
[glink target=*me3_2_2 text="（しない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]

*me3_2_1
 [free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;[live2d_fadein time=1000]
#ランスロット
「よし、頑張ってこい！」[mil][l][k][cm][ka]

#
;[live2d_fadeout time=1000]
;[live2d_off];[live2d_delete_all]
[chara_off][chara_hide name="rans"]
[cm]

[message_kakusu_ad]
@jump storage="mini_game/battle.ks"

*battle_end

[jump target=*tougijou_end]


*me3_2_2
 [free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;[live2d_fadein time=1000]
#ランスロット
「もういいのか。わかった。これでコツが掴めていればいいが」[mil][l][k][cm][ka]
#
#ランスロット
「次から利用するときは、モンスターレベルを選ぶことになる」[mil][l][k][cm][ka]
#
#ランスロット
「お前はまだ初心者だから、なるだけ低いレベルから挑戦するといいだろう」[mil][l][k][cm][ka]
#



[jump target=*tougijou_sonogo]



*tougijou_end
;[live2d_load]
;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off];[live2d_on];[live2d_show name="baka0" y=-1.7 x=0.0 scale=4.3]
[chara_on][chara_show name="rans" top=10]
#ランスロット
「これで戦闘は大丈夫そうだな。
;[baka_exp_normal_warai]
試験の時対峙するモンスターもそう強いものではないはずだから安心していい」[mil][l][k][cm][ka]

#
;#ランスロット
;「もう少し頑張っていくか？」[mil][l][k][cm][ka]

;#

;[jump target=*main_event_3_choice_2]






*tougijou_sonogo


[bg storage="irainheya_tasogare.jpg"]
;[baka_head_right_z];[baka_body_right_z]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
#ランスロット
「それじゃあ、引き続き頑張れよ」[mil][l][k][cm][ka]

#
コマンドに「闘技場」が追加されました。[mil][l][k][cm][ka]

;[live2d_fadeout time=1000]
;[live2d_off];[live2d_delete_all]
[chara_off][chara_hide name="rans"]
[eval exp="f.rans_tutrial=0"]
[eval exp="f.rans_tutrial_no=0"]
[clearfix name="role_button"]
[clearfix name="kinou_button"]
[free name="jump_off" layer=3]
[status_hyouji]





*siken

;試験当日
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
[message_settei_ad]

;やり直しならジャンプ
[if exp="f.test_return==1"][refresh_hanyou]
;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[jump target=*test_jump]
[endif]

[bg storage="irainheya_tasogare.jpg"]
[playse storage="spparows_tairakomori.ogg"]
#&f.name
「ん・・・んー・・・あれ？」[mil][l][k][cm][ka]

#
#&f.name
「あっ・・・えっ・・・もうこんな時間！！？？」[mil][l][k][cm][ka]

#
#&f.name
「寝坊しちゃったー！！！」[mil][l][k][cm][ka]

#
#&f.name
「とにかくも、門まで行かないと！！」[mil][l][k][cm][ka]

#
[refresh_hanyou]
[playse storage="yukahasiru_onjin.ogg"]

[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
;[lioness_head_above_y]
;[lioness_body_above_y]
;[lioness_face_donari]
[chara_on][chara_show name="lion" height="698" width="456" top=-35]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]
#ライオネス
「おせえ！！」[mil][l][k][cm][ka]

#
;[quake count=5 time=300 hmax=20]
;[lioness_body_under_y]
;[lioness_arms_udekumi]
;[lioness_face_ikari]

#
#ライオネス
「なんなんだてめーは！！！やる気あんのかあ！！」[mil][l][k][cm][ka]

#
#&f.name
（めちゃめちゃ怒ってるよう・・・）[mil][l][k][cm][ka]

#

;[lioness_head_normal]
;[lioness_face_gantobasi]
#ライオネス
「おい！！」[mil][l][k][cm][ka]

#
#&f.name

「はっ、はい！！」[mil][l][k][cm][ka]

#
#ライオネス
「やる気あんのかってきーてんだよ！！」[mil][l][k][cm][ka]

#
#&f.name
「あ、あります！！」[mil][l][k][cm][ka]

#

;[lioness_body_left_x]
;[lioness_body_right_z]
;[lioness_head_left_x]
;[lioness_arms_kosinite_right]
;[lioness_face_muzukasii]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]
#ライオネス
「・・・遅刻でマイナス１０点だな」[mil][l][k][cm][ka]

#
#&f.name
「ええー！！」[mil][l][k][cm][ka]

#

;[lioness_body_normal]
;[lioness_head_normal]
;[lioness_arms_kosinite_left]
;[lioness_face_ikari]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「何がええーっだ！！こんな日に遅刻する奴があるか！！
[r]騎士どうこう以前の問題だ！！」[mil][l][k][cm][ka]


;[lioness_head_under_y]
;[lioness_head_normal]
#
#&f.name
「うう・・・」[mil][l][k][cm][ka]

#

;[lioness_head_right_x]
;[lioness_head_right_z]
;[lioness_body_right_z]
;[lioness_eyes_left]
;[lioness_face_normal]
#ライオネス
「ったく・・・さっさと行くぞ！！」[mil][l][k][cm][ka]

#

[chara_off][chara_hide_all]
;[live2d_fadeout time=1000]
#&f.name
「は、はい・・・」[mil][l][k][cm][ka]

#

*test_jump

[bg storage="tougijou_ac.jpg"]


[chara_on][chara_show name="lion" height="698" width="456" top=-35]
;[live2d_fadein time=1000]
[if exp="f.irain_tec>19"]
#ライオネス
「よし、準備は問題なしだな。頑張ったじゃねえか」[mil][l][k][cm][ka]

#
;やり直しフラグ消去
[eval exp="f.test_return=0"]
[playse storage="fanfale.ogg"]
[image layer=3 page=fore name="success" storage="clear.png" x=200 y=250 time=1000]
目標値クリア！！[mil][l][k][cm][ka]

[free name="success" layer=3 time=1000]
[koukando_up]
[lion]
#ライオネス
「さあ、それじゃあ戦闘試験、いくぜ！」[mil][l][k][cm][ka]

#

;[live2d_fadeout time=1000]
;[live2d_off];[live2d_delete_all]
[chara_off][chara_hide_all]
　
[else]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
;[lioness_face_ha]
#ライオネス
「・・・おい・・・お前一週間何やってたんだ・・・？」[mil][l][k][cm][ka]

#


[image layer=3 page=fore name="failure" storage="failure.png" x=320 y=250 time=1000]
目標値クリア失敗・・・[mil][l][k][cm][ka]

[free name="failure" layer=3 time=1000]
[chara_off][chara_hide_all]


*siken_yarinaosi
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]
[r]【一週間前からやり直しますか？】

[glink target=*sy_1 text="（やり直し）" size=17 width=600 x=65 y=200]
[glink target=*sy_2 text="（やり直さない）" size=17 width=600 x=65 y=260]

;[if exp="f.live2d_on==1"]
;[mi_live2d]
;[else]
[mi]
;[endif]

[s]

*sy_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;[live2d_off];[live2d_delete_all]
[bg storage="irainheya_tasogare.jpg"]
[playbgm storage="boukennojunbi.ogg"]
[eval exp="f.event_2_kra=0"]
[eval exp="f.event_2_oyaji=0"]
[eval exp="f.event_2_gaia=0"]

;やり直しフラグ
[eval exp="f.test_return=1"][clearfix][freeimage layer=3]
[jump target=*test_week_start]

*sy_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]




[game_over]









[endif]

;戦闘


[message_kakusu_ad]

*battle
[jump storage="mini_game/battle.ks"]

;戦闘
*lose
[if exp="f.siken_win!=1"]
*result
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[free name="anten" layer=3 time=2000]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_akireru.gif"]
#ライオネス
「おいおい・・・まじかよ・・・」[mil][l][k][cm][ka]

#
[chara_off][chara_hide_all]
*siken_yarinaosi_battle
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]
[r]【やり直しますか？】

[glink target=*syb_1 text="（やり直し）" size=17 width=600 x=65 y=200]
[glink target=*syb_2 text="（やり直さない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]

*syb_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
;[live2d_off];[live2d_delete_all]
[message_kakusu_ad]
[jump target=*battle]


*syb_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[game_over]






[else]

;勝利
*win
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
;[live2d_on];[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[chara_on][chara_show name="lion" height="698" width="456" top=-35]

[bg storage="tougijou_ac.jpg"]
[eval exp="f.siken_win=0"]
[message_settei_ad]
[image layer=3 page=fore name="success" storage="clear.png" x=200 y=250 time=1000]
[free name="success" layer=3 time=1000]
[koukando_up]
[lion]

#ライオネス
「ま、当然だよな」[mil][l][k][cm][ka]

#
#&f.name
（少しは褒めてくれても・・・）[mil][l][k][cm][ka]

#
[endif]



[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]


#ライオネス
「さあて、それじゃ本部まで戻るぞ。
[r]一回戻ったらお前は部屋で休んでろ。
[r]団長に報告してくっからな」[mil][l][k][cm][ka]

#
#&f.name
「わ、わかりました！」[mil][l][k][cm][ka]

#

[chara_off][chara_hide_all]
;[live2d_fadeout time=1000]
;[live2d_off];[live2d_delete_all]



;騎士団試験のフラグ消去
[eval exp="f.event_main_3=0"]
;騎士団試験残り日数
[eval exp="f.event_main_3_days=0"]
;サブイベントフラグ消去
[eval exp="f.event_2_kra=0"]
[eval exp="f.event_2_oyaji=0"]
[eval exp="f.event_2_gaia=0"]
[eval exp="f.event_2_lioness_meal=0"]
[eval exp="f.event_2_kra_meal=0"]
[eval exp="f.rans_tutrial=0"]


;次イベントフラグ
[eval exp="f.event_main_4=1"]


[eval exp="f.siken_taiki=1"]
[clearfix name="role_button"]
[clearfix name="kinou_button"]
[free name="jump_off" layer=3]
[status_hyouji]

*event_main_4

[eval exp="f.siken_taiki=0"]
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_on];[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[live2d_load_off]
;[live2d_hide name="lioness" time=1000]
[refresh_hanyou]

#&f.name
「さて、そろそろ団長の部屋に行こうかな」[mil][l][k][cm][ka]

#
;団長の部屋
[call storage="live2d_aho_macro.ks"][live2d_on][live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]
[bg storage="dancho_tasogare.jpg"]

#&f.name
「ん？」[mil][l][k][cm][ka]

#

[chara_on][chara_show name="kra" top=50 left=360]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-60]






#？
「決闘していいって言ったのはそっちだろう？だから・・・」[mil][l][k][cm][ka]

#

[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「剣は使うなって言ってあったはずだろうが！」[mil][l][k][cm][ka]

#



[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]




#？
「・・正当防衛だ。得物を先に抜いたのはあっちだった。
[r]俺はやむなく・・」[mil][l][k][cm][ka]

#






#ライオネス
「証拠もねえのに信じられるか！」[mil][l][k][cm][ka]

#

[position layer="message1" left=240 top=360]
[position layer="message1" frame="message1.png" margint="60" marginl="30" marginr="30" page="fore"]

 [free name="chara_name_area" layer="message1"]
	[ptext name="chara_name_area" layer="message1" size="26" bold="bold" shadow="0x333333" x="290" y="390"]
	[chara_config ptext="chara_name_area"]

[chara_on][chara_show name="dancho" width=260 height=425 left=-3 top=175]



#団長
「まあまて。ライオネス。
[r]今回のことはお前にも責任があるのだからな」[mil][l][k][cm][ka]

「直接手を下したのが彼だったとしても、
[r]決闘を促し、放置した罪も軽くは無いぞ」[mil][l][k][cm][ka]

#


[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_otikomi.gif"]

#ライオネス
「う・・・」[mil][l][k][cm][ka]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_kimazui.gif"]
#
[chara_mod name="kra" storage="kra_tatie/Idle_gif_akireru.gif"]

#？
「それでも最強と謳われたクレール王国騎士団の騎士なのか？
噂で聞いてるよりたいしたことないな」[mil][l][k][cm][ka]

#
[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「！！！・・てめ・・」[mil][l][k][cm][ka]
#
[chara_mod name="dancho" storage="dancho_ikari_004.png"]
#団長
「国王陛下からは、こちらで処分を決めるようにとのお達しだ。
・・・クライストといったか、傭兵」[mil][l][k][cm][ka]

#
[chara_mod name="kra" storage="kra_tatie/Idle_gif_normal.gif"]

#クライスト
「はい」[mil][l][k][cm][ka]

#

#団長
「貴様には、国内で事件を起こした罰として、しばらくここの騎士団で働いてもらう」[mil][l][k][cm][ka]

#

[chara_mod name="lion" storage="lion_tatie/Idle_gif_odoroki.gif"]

#ライオネス
「団長！？本気ですか！？」[mil][l][k][cm][ka]

#
[chara_mod name="dancho" storage="dancho_metoji_004.png"]
#団長
「こちらは猫の手でも借りたいほどなんだ。騎士団内なら妙なまねもできんだろう」[mil][l][k][cm][ka]

[chara_mod name="dancho" storage="dancho_ikari_004.png"]
「もちろん監視役はつける。存分にこきつかってやるから、覚悟しておけ」[mil][l][k][cm][ka]

#



[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]

#クライスト
「・・・わかりました。
[r]やむなくだったとはいえ、罪は罪だ。裁きは受けますよ」[mil][l][k][cm][ka]

#

#団長
「・・うむ。トリスタン！」[mil][l][k][cm][ka]
#
[chara_config pos_mode=false]
[chara_config name="kra" pos_mode=false]
[chara_off][chara_hide name="lion"]
[chara_off][chara_hide name="dancho"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]
[chara_on][chara_show name="tris" height="546" width="380" zindex=0 top=50 left=-3][chara_on][chara_show name="dancho" width=260 height=425 zindex=1 left=-3 top=175]
#トリスタン
「お呼びでしょうか、団長」[mil][l][k][cm][ka]

#
[chara_mod name="dancho" storage="dancho_normal_004.png"]
#団長
「罪人だ。ここで働かせることにした。本来なら死罪だが、色々事情があってな」[mil][l][k][cm][ka]

「物置部屋がひとつあいていただろう、そこに案内してやれ。目を離すなよ」[mil][l][k][cm][ka]

#

;[live2d_motion name="tris" mtn="Ryokai"]
#トリスタン
「了解しました！ほら、さっさと来い！」[mil][l][k][cm][ka]

#
[playse storage="walkyuka_onjin.ogg"]

[chara_off][chara_hide_all]
[live2d_show name="aho" x=0.0 y=-2.8 scale=6.2]

[if exp="f.event_2_kra_sonogo==1"]
#&f.name
（あ・・・）[mil][l][k][cm][ka]

#
[aho_head_left_x]
[aho_head_under_y]
[aho_face_yokome_majime]

#クライスト
「・・・・・・」[mil][l][k][cm][ka]

#
[aho_head_normal]
[aho_face_normal]
#&f.name
（な、なんか気まずい・・・）[mil][l][k][cm][ka]

#
[else]
#&f.name
（確か、あの人酒場で会った・・・）[mil][l][k][cm][ka]

#
[endif]

[aho_eyes_normal]
[aho_face_bisyou_youen]
[aho_head_right_z]
#トリスタン
「何やってんだ！さっさとこい！！」[mil][l][k][cm][ka]

#
[aho_face_yareyare]
[aho_body_kataageru]
[w]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_face_mehuse]

[playse storage="walkyuka_onjin.ogg"]
[live2d_fadeout name="aho" time=1000]
[live2d_hide name="aho" time=1000]


[cm]
;[live2d_off];[live2d_delete_all]
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;;[live2d_on];[live2d_new name="dancho" model_id="dancho" lip=true jname="団長"]
;[live2d_load_off]

[anten]
[bg storage="dancho_tasogare.jpg"]

;[live2d_on];[live2d_show name="lioness" y=-1.3 x=0.0 scale=3.3]
;;[live2d_on];[live2d_show name="dancho" y=-0.45 x=-0.7 scale=0.8]
[chara_on][chara_show name="lion" height="698" width="456" top=-35]
[chara_on][chara_show name="dancho" width=260 height=425 left=-3 top=175]


[chara_mod name="dancho" storage="dancho_ikari_004.png"]
#団長
「・・・ずいぶんと素直だったな。正当防衛だというのは信じてもいいかもしれない」[mil][l][k][cm][ka]

#
;[lioness_arms_kosinite_right]
;[lioness_face_yareyare]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_yareyare.gif"]

#ライオネス
「まじかよ・・」[mil][l][k][cm][ka]

#


#&f.name
「あ、あの・・・」[mil][l][k][cm][ka]

#
;[lioness_face_normal]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_normal.gif"]


;;[live2d_motion name="dancho" mtn="Normal"]

[chara_mod name="dancho" storage="dancho_normal_004.png"]
#団長
「おお、[name]、すまないな。試験ご苦労だった」[mil][l][k][cm][ka]



「さて、結果は・・・だな・・・[mil][l][k][cm][ka]

;;[live2d_motion name="dancho" mtn="Metoji"]
[chara_mod name="dancho" storage="dancho_metoji_004.png"]


;[lioness_arms_udekumi]
;[lioness_head_left_x]
;[lioness_face_metoji]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_udekumi.gif"]
;;[live2d_motion name="dancho" mtn="Normal"]
[chara_mod name="dancho" storage="dancho_warai_004.png"]

[image layer=3 page=fore name="goukaku" storage="complete.png" x=150 y=250 time=1000]
[playse storage="battle_win2_onjin.ogg"]

「合格だ！！よく頑張ったな！！」[mil][l][k][cm][ka]

#

[free name="goukaku" layer=3 time=1000]
#&f.name
「やったー！！」[mil][l][k][cm][ka]

#
[playse storage="item_status_up_onjin.ogg"]
技術が10アップ！
頭脳が10アップ！[mil][l][k][cm][ka]

[lion]
[rans]
[kra]
[koukando_up]


[eval exp="f.irain_tec=f.irain_tec+10"]
[eval exp="f.irain_brain=f.irain_brain+10"]


#団長
「これからも、騎士としての自覚を常に持って行動してくれ」[mil][l][k][cm][ka]

#

;[lioness_head_above_y]
;[lioness_eyes_under]
[chara_mod name="lion" storage="lion_tatie/Idle_gif_kosinite.gif"]

#ライオネス
「これからお前と仕事することも
　あるかもしんねーな」[mil][l][k][cm][ka]

#
;[lioness_eyes_normal]
#ライオネス
「せいぜい足ひっぱんじゃねーぞ」[mil][l][k][cm][ka]

#

#&f.name
「は、はい！！」[mil][l][k][cm][ka]

#
;[live2d_fadeout time=1000]
[chara_off][chara_hide_all][clearfix name="kinou_button"][clearfix name="role_button"][free name="jump_off" layer=3][anten][playbgm storage="reina_ol_ontama.ogg"][bg storage="irainheya_yoru_tasogare.jpg"][chara_config pos_mode=true]
;[live2d_off];[live2d_delete_all]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[free name="jump_off" layer=3][anten][playbgm storage="reina_ol_ontama.ogg"][bg storage="irainheya_yoru_tasogare.jpg"][chara_config pos_mode=true][jump storage="disc1_ending.ks"]
;[name]部屋
*end

#&f.name

（ともかく今日から私も正騎士・・・）[p]
（なんだか信じられないけど・・・これから張り切って行こう！！）[p]
#

;[live2d_delete_all]
End.[p]
[anten]












セーブしますか？[p]
[glink target=*save_1 text="（はい）" size=17 width=600 x=65 y=200]
[glink target=*save_2 text="（いいえ）" size=17 width=600 x=65 y=260]


[s]

*save_1
[cm]
[showsave]

*save_2
[cm]


;エンディング

;[live2d_on];[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_mod name="irain" idle="Ojigi"]
;[live2d_on];[live2d_show name="irain" y=0.2 x=0.0 scale=0.6]



遊んでいただき、ありがとうございました！！！[p]
;[live2d_motion name="irain" mtn="Ojigi"]



感想、苦情、バグ報告などはブログまでお気軽に。[p]
ご興味持っていただけたら幸いです。
どうぞよろしくお願いします。[p]


製作者　すがの[p]

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
*epi2_ikou
[anten1]
[bg storage="black.png"]
[eval exp="f.disc_2=1"]

[jump storage="scenario_2/episode/epi2.ks"]
[fadeoutbgm time=6000]
[autosave]
;ここにvol.2に続くなどの表記。
;vol,2カーニバルに続きます。セーブデータを移し替えてゲームを起動してください。
;カーニバル編の最初、ロードしてvol2のフラグを確認（make.ksないに記述）して続きのシナリオへ進む。確認できなければvolが違うとのメッセージのち最初に戻る。

[iscript]
location.reload()
[endscript]

[jump storage="first.ks"]

[jump storage="scenario_2/episode/epi2.ks"]


[w]
[game_over]








;勝利
*win
[live2d_load]
[live2d_on][live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_load_off]
[live2d_on][live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[bg storage="tougijou_ac.jpg"]
[eval exp="f.siken_win=0"]
[message_settei_ad]
[image layer=3 page=fore name="success" storage="clear.png" x=200 y=250 time=1000]
[free name="success" layer=3 time=1000]
[koukando_up]
[lion]

#ライオネス
「ま、当然だよな」[mil][l][k][cm][ka]

#
#&f.name
（少しは褒めてくれても・・・）[mil][l][k][cm][ka]

#




[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
#ライオネス
「さあて、それじゃ本部まで戻るぞ。
[r]一回戻ったらお前は部屋で休んでろ。
[r]団長に報告してくっからな」[mil][l][k][cm][ka]

#
#&f.name
「わ、わかりました！」[mil][l][k][cm][ka]

#


[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]



;騎士団試験のフラグ消去
[eval exp="f.event_main_3=0"]
;騎士団試験残り日数
[eval exp="f.event_main_3_days=0"]
;サブイベントフラグ消去
[eval exp="f.event_2_kra=0"]
[eval exp="f.event_2_oyaji=0"]
[eval exp="f.event_2_gaia=0"]
[eval exp="f.event_2_lioness_meal=0"]
[eval exp="f.event_2_kra_meal=0"]
[eval exp="f.rans_tutrial=0"]


;次イベントフラグ
[eval exp="f.event_main_4=1"]


[eval exp="f.siken_taiki=1"]
[clearfix name="role_button"]
[clearfix name="kinou_button"]
[free name="jump_off" layer=3]
[status_hyouji]

*event_main_4

[eval exp="f.siken_taiki=0"]
[live2d_load]
[live2d_on][live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_on][live2d_new name="aho" model_id="aho" lip=true jname="？"]
[live2d_load_off]
[live2d_hide name="lioness" time=1000]





#&f.name
「さて、そろそろ団長の部屋に行こうかな」[mil][l][k][cm][ka]

#
;団長の部屋
[w][w][w]
[bg storage="dancho_tasogare.jpg"]


#&f.name
「ん？」[mil][l][k][cm][ka]

#


[live2d_on][live2d_show name="aho" y=-1.5 x=-0.5 scale=3.5]




#？
「決闘していいって言ったのはそっちだろう？だから・・・」[mil][l][k][cm][ka]

#
[live2d_on][live2d_show name="lioness" y=-1.3 x=0.5 scale=3.3]
#ライオネス
「剣は使うなって言ってあったはずだろうが！」[mil][l][k][cm][ka]

#
[lioness_arms_udekumi]
[lioness_face_chottoikari]

[live2d_on][live2d_new name="dancho" model_id="dancho" lip=true jname="団長"]
[aho_face_metoji]
#？
「・・正当防衛だ。得物を先に抜いたのはあっちだった。
[r]俺はやむなく・・」[mil][l][k][cm][ka]

#
[aho_face_normal]

[lioness_arms_left_x]
[lioness_arms_right_x]
[lioness_face_donari]

#ライオネス
「証拠もねえのに信じられるか！」[mil][l][k][cm][ka]

#


[live2d_on][live2d_show name="dancho" y=-0.45 x=-0.7 scale=0.8]



#団長
「まあまて。ライオネス。
[r]今回のことはお前にも責任があるのだからな」[mil][l][k][cm][ka]

「直接手を下したのが彼だったとしても、
[r]決闘を促し、放置した罪も軽くは無いぞ」[mil][l][k][cm][ka]

#
[lioness_arms_right_x]
[lioness_arms_left_x]
[lioness_face_odoroki]
#ライオネス
「う・・・」[mil][l][k][cm][ka]

[lioness_arms_poripori]
[lioness_face_otikomi]
[lioness_head_left_x]
#

[aho_arms_left_setumei]
[aho_head_left_x]
[aho_face_yokome_majime]
[aho_body_left_z]
[aho_body_right_z]

#？
「それでも最強と謳われたクレール王国騎士団の騎士なのか？
噂で聞いてるよりたいしたことないな」[mil][l][k][cm][ka]

#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[aho_arms_normal]

[lioness_arms_right_x]
[lioness_arms_left_x]
#ライオネス
「！！！・・てめ・・
[lioness_head_normal]
[lioness_body_above_y]
[lioness_face_ikari]

」[mil][l][k][cm][ka]

#

[aho_body_left_z]
[aho_body_right_z]

#団長
「国王陛下からは、こちらで処分を決めるようにとのお達しだ。
・・・クライストといったか、傭兵」[mil][l][k][cm][ka]

#
[live2d_mod name="aho" jname="クライスト"]

[aho_arms_normal]
[aho_body_normal]
[aho_head_normal]
[aho_face_normal]

#クライスト
「はい」[mil][l][k][cm][ka]

#
#団長
「貴様には、国内で事件を起こした罰として、しばらくここの騎士団で働いてもらう」[mil][l][k][cm][ka]

#

[lioness_arms_right_x]
[lioness_arms_left_x]
[lioness_face_odoroki]

#ライオネス
「団長！？本気ですか！？」[mil][l][k][cm][ka]

#
#団長
「こちらは猫の手でも借りたいほどなんだ。騎士団内なら妙なまねもできんだろう」[mil][l][k][cm][ka]

「もちろん監視役はつける。存分にこきつかってやるから、覚悟しておけ」[mil][l][k][cm][ka]

#

[aho_head_left_x]
[aho_body_left_z]
[aho_head_normal]
[aho_face_metoji]
#クライスト
「・・・わかりました。
[r]やむなくだったとはいえ、罪は罪だ。裁きは受けますよ」[mil][l][k][cm][ka]

#

#団長
「・・うむ。トリスタン！」[mil][l][k][cm][ka]

#

[live2d_on][live2d_new name="tris" model_id="tris" lip=true jname="トリスタン"]
[live2d_on][live2d_show name="tris" y=-0.2 x=0.5 scale=1.5]

[live2d_hide name="lioness" time=1000]

#トリスタン
「お呼びでしょうか、団長」[mil][l][k][cm][ka]

#
#団長
「罪人だ。ここで働かせることにした。本来なら死罪だが、色々事情があってな」[mil][l][k][cm][ka]

「物置部屋がひとつあいていただろう、そこに案内してやれ。目を離すなよ」[mil][l][k][cm][ka]

#

[live2d_motion name="tris" mtn="Ryokai"]
#トリスタン
「了解しました！ほら、さっさと来い！」[mil][l][k][cm][ka]

#
[playse storage="walkyuka_onjin.ogg"]
[live2d_hide name="tris"]
[live2d_hide name="dancho"]
[live2d_fadeout time=1000]
[live2d_mod name="aho" x=0.0 y=-2.8 scale=6.2]
[live2d_fadein name="aho" time=1000]
[if exp="f.event_2_kra_sonogo==1"]
#&f.name
（あ・・・）[mil][l][k][cm][ka]

#
[aho_head_left_x]
[aho_head_under_y]
[aho_face_yokome_majime]

#クライスト
「・・・・・・」[mil][l][k][cm][ka]

#
[aho_head_normal]
[aho_face_normal]
#&f.name
（な、なんか気まずい・・・）[mil][l][k][cm][ka]

#
[else]
#&f.name
（確か、あの人酒場で会った・・・）[mil][l][k][cm][ka]

#
[endif]

[aho_eyes_normal]
[aho_face_bisyou_youen]
[aho_head_right_z]



#トリスタン
「何やってんだ！さっさとこい！！」[mil][l][k][cm][ka]

#
[aho_face_yareyare]
[aho_body_kataageru]
[w]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_face_mehuse]

[playse storage="walkyuka_onjin.ogg"]
[live2d_fadeout name="aho" time=1000]
[live2d_hide name="aho" time=1000]




[lioness_head_left_x]
[lioness_face_metoji]

[live2d_motion name="dancho" mtn="Normal"]
[image layer=3 page=fore name="goukaku" storage="complete.png" x=150 y=250 time=1000]
[playse storage="battle_win2_onjin.ogg"]

「合格だ！！よく頑張ったな！！」[mil][l][k][cm][ka]

#

[free name="goukaku" layer=3 time=1000]
#&f.name
「やったー！！」[mil][l][k][cm][ka]

#
[playse storage="item_status_up_onjin.ogg"]
技術が10アップ！
頭脳が10アップ！[mil][l][k][cm][ka]

[lion]
[rans]
[kra]
[koukando_up]


[eval exp="f.irain_tec=f.irain_tec+10"]
[eval exp="f.irain_brain=f.irain_brain+10"]


#団長
「これからも、騎士としての自覚を常に持って行動してくれ」[mil][l][k][cm][ka]

#

[lioness_head_above_y]
[lioness_eyes_under]
#ライオネス
「これからお前と仕事することも
　あるかもしんねーな」[mil][l][k][cm][ka]

#
[lioness_eyes_normal]
#ライオネス
「せいぜい足ひっぱんじゃねーぞ」[mil][l][k][cm][ka]
[jump storage="scenario_2/episode/epi2.ks"]


















