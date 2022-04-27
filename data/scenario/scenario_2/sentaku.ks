






*choice1
[clearstack][freeimage layer=0]
[ka]
[cm]
[bg storage="black.png" method="shake" time=500]
[cm]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【暗くなる前に帰りなさいといった母の顔を思い出す。】


[glink target=*a1_nigeru text="（に、にげなきゃ･･･！）" clickimg="kaiwa/kk1.jpg" size=17 height=15 width=600 x=65 y=200]


[glink target=*a1_yousu text="（こ、恐い･･･）" size=17 height=15 width=600 x=65 y=260]


[glink target=*a1_tatimukau text="（な、何か武器になりそうなものは･･･！）" size=17 height=15 width=600 x=65 y=320]


[mi]
[s]
*a1_nigeru
[eval exp="f.choice= 2 "]
[clearstack][freeimage layer=0]
[eval exp="f.s1=1"]
[cm][ka]
[atari]
[rans]
[koukando_up]

[eval exp="f.sentakuchuu= 0 "]
逃げようとしたが、腰がぬけてしまい足も全く動かない。[ikkatu][r]
@jump target=*a1_common

*a1_yousu
[eval exp="f.choice= 2 "]
[clearstack][freeimage layer=0]
[eval exp="f.s1=2"]
[cm][ka]
[atari]
[kra]
[koukando_up]
[eval exp="f.sentakuchuu= 0 "]
私は狼をじっとみた。見れば見るほど恐怖が増してくる。[ikkatu][r]
@jump target=*a1_common

*a1_tatimukau
[eval exp="f.choice= 2 "]
[clearstack][freeimage layer=0]
[eval exp="f.s1=3"]
[cm][ka]
[atari]
[lion]
[koukando_up]
[eval exp="f.sentakuchuu= 0 "]
怖いながらも立ち向かおうとするが、あたりには武器になりそうなものも見あたらない。[ikkatu][r]
@jump target=*a1_common


*a1_common
[jump storage="scenario_2/episode/epi0.ks" target=*a1_common]



*choice2
[clearstack]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【そういう私も汗びっしょりだ。】

[glink target=*a2_1 text="（早く帰って水浴びしたいなあ･･･）" size=17 width=600 x=65 y=200]
[glink target=*a2_2 text="（今日も訓練頑張ったな･･･）" size=17 width=600 x=65 y=260][link target=*a2_2]
[glink target=*a2_3 text="（訓練に夢中で気にしてなかったけど、結構汗かいてたんだ･･）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]

*a2_1

[eval exp="f.jump_map_choice_3=1"]
[eval exp="f.choice= 3 "]
[clearstack][free name="sentakusi" layer=0]
[eval exp="f.s2=1"]
[playse storage="tm2_switch001_macchi.ogg"]
[cm]
[live2d_fadein time=1000]
[ka]
[jump target=*a2_common]

*a2_2

[eval exp="f.jump_map_choice_3=1"]
[eval exp="f.choice= 3 "]
[clearstack][free name="sentakusi" layer=0]

[eval exp="f.s2=2"]
[playse storage="decision5_koukaonlabo.ogg"]
[rans]
[koukando_up]
[cm]
[live2d_fadein time=1000]
[ka]
[jump target=*a2_common]

*a2_3

[eval exp="f.jump_map_choice_3=1"]
[eval exp="f.choice= 3 "]
[clearstack][eval exp="f.s2=3"][free name="sentakusi" layer=0]
[playse storage="tm2_switch001_macchi.ogg"]
[cm]
[live2d_fadein time=1000]
[ka]
[jump target=*a2_common]


*a2_common
[jump storage="scenario_2/episode/epi1.ks" target=*a2_common]


*choice3
[clearstack][free name="sentakusi" layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【まだまだ子供だと思ってるんだろうか。】

[glink target=*a3_1 text="なんだか複雑な気分だ。" size=17 width=600 x=65 y=200]
[glink target=*a3_2 text="でも、仕方ないのかなとも思う" size=17 width=600 x=65 y=260]


[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]

*a3_1
[eval exp="f.jump_map_choice_101=1"]
[eval exp="f.choice= 101 "]
[clearstack][free name="sentakusi" layer=0]
[eval exp="f.s3=1"]
[cm]
[live2d_fadein time=1000]
[ka]
[playse storage="decision5_koukaonlabo.ogg"]
[rans]
[koukando_up]
[jump target=*a3_common]

*a3_2
[eval exp="f.jump_map_choice_101=1"]
[eval exp="f.choice= 101 "]
[clearstack][free name="sentakusi" layer=0][eval exp="f.s3=2"]
[cm]
[live2d_fadein time=1000]
[ka]
[playse storage="tm2_switch001_macchi.ogg"]
（ランスロットから見れば、私は子供だもんね･･･）[mil][button_menu][l][k][cm][ka]
[jump target=*a3_common]



*a3_common
[jump storage="scenario_2/episode/epi1.ks" target=*a3_common]


*choice101
[clearstack][episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color="blue"]【どうしよう･･･とめる？】

[if exp="sf.k1_1==1"]
[glink target=*k1_1 text="止める" size=17 width=600 x=65 y=200]
[else]
[glink target=*k1_1 color=blue text="止める" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k1_2==1"]
[glink target=*k1_2 text="止めない" size=17 width=600 x=65 y=260]
[else]
[glink target=*k1_2 color=blue text="止めない" size=17 width=600 x=65 y=260]
[endif]


[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]
[s]
*k1_1
[eval exp="sf.k1_1=1"]
;[eval exp="f.choice= 4 "]
[eval exp="f.choice= 991"]
[eval exp="f.jump_map_choice_991=1"]

[live2d_fadein time=1000]
;ジャンプ用

[clearstack][free name="sentakusi" layer=0]
[ka]
[playse storage="decision5_koukaonlabo.ogg"]
[kra]
[koukando_up]
[eval exp="f.a1= 1 "]
[cm][ka]
[stopbgm]
[jump storage="scenario_2/episode/epi1.ks" target=*k1_1]

*k1_2
[eval exp="f.choice= 991"]
[eval exp="f.jump_map_choice_991=1"]

[eval exp="sf.k1_2=1"]
;[eval exp="f.choice= 4 "]

[live2d_fadein time=1000]
[clearstack]
[free name="sentakusi" layer=0]
[eval exp="f.b1= 1 "]
[ka]
[playse storage="tm2_switch001_macchi.ogg"]
[cm][ka]
[jump storage="scenario_2/episode/epi1.ks" target=*k1_2]



*choice991
*main_event_1_choice_1
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【落ち込んでるみたいだけど・・・】

[glink target=*me1_1 text="（励ます）" size=17 width=600 x=65 y=200]
[glink target=*me1_2 text="（ただ見つめる）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[mi_live2d]
[else]
[mi]
[endif]

[s]

*me1_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.choice=0 "]
[eval exp="f.jiyuu=1"]

#&f.name
「あの、元気出して！その・・・大丈夫だよ」[mil][l][k][cm][ka]

#

;好感度アップ
[lion]
[koukando_up]
;[lioness_face_chottoikari]
;[lioness_eyes_normal]
;[lioness_head_above_y]
;[live2d_fadein time=1000]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「・・・勝手なこと言いやがって・・・俺の何がわかるってんだ」[mil][l][k][cm][ka]

#

;[lioness_head_normal]
#&f.name
（う・・・逆効果だった・・・？）[mil][l][k][cm][ka]

#

[jump storage="scenario_2/episode/epi1.ks" target=*choice991_kyoutuu]



*me1_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice= 0"]

[eval exp="f.jiyuu=1"]
;[lioness_face_ikari]
;[lioness_eyes_normal]



;[live2d_fadein time=1000]

[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「・・・」[mil][l][k][cm][ka]

#


#&f.name
（・・・なんか余計怒らせた・・・？）[mil][l][k][cm][ka]

#
[jump storage="scenario_2/episode/epi1.ks" target=*choice991_kyoutuu]

;カーニバル編

*choice992

*main_event_5_choice_1
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスのフォローを・・・】

[glink target=*me5_1 text="（する）" size=17 width=600 x=65 y=200]
[glink target=*me5_2 text="（しない）" size=17 width=600 x=65 y=260]


[mi]


[s]

*me5_1
[eval exp="f.sentakuchuu= 0 "]
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.sweet_event=1"]
[eval exp="f.choice=993 "]

;好感度アップ
[lion]
[koukando_up]



[jump storage="scenario_2/episode/epi2.ks" target=*choice992_1]




*me5_2
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.sweet_event=1"]
[eval exp="f.choice= 993"]



[jump storage="scenario_2/episode/epi2.ks" target=*choice992_2]




*choice993

*main_event_7_choice_1
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【誰かを誘う？・・・】

[glink target=*me7_1 text="（誘いに行く）" size=17 width=600 x=65 y=200]
[glink target=*me7_2 text="（行かない）" size=17 width=600 x=65 y=260]

[stopbgm]
[mi]


[s]

*me7_1

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;[eval exp="f.jiyuu=1"]
[eval exp="f.choice=994"]



*choice994

*main_event_7_choice_2
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【誰を誘いに行こう・・・】

[glink target=*me7_2_1 text="（ライオネス）" size=17 width=600 x=65 y=140]
[glink target=*me7_2_2 text="（ランスロット）" size=17 width=600 x=65 y=200]
[glink target=*me7_2_3 text="（クライスト）" size=17 width=600 x=65 y=260]

[if exp="f.gales_yes==1||f.glif_yes==1"]
[glink target=*me7_2_4 text="（その他の男性）" size=17 width=600 x=65 y=320]
[glink target=*me7_2_5 text="（やっぱり誘わない）" size=17 width=600 x=65 y=380]



[else]
[glink target=*me7_2_5 text="（やっぱり誘わない）" size=17 width=600 x=65 y=320]
[endif]


[mi]
[s]

*me7_2_1

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.jiyuu=1"]
[eval exp="f.choice=0"]
[eval exp="f.curnival_lion=1"]
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_7_lion]


*me7_2_2
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=995"]
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_7_rans]



*me7_2_3
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=997"]


[jump storage="scenario_2/episode/epi2.ks" target=*main_event_7_kra]


*me7_2_4
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;次自由行動
[eval exp="f.jiyuu=1"]
[eval exp="f.choice=0"]
[eval exp="f.osasoi_else=1"]
#&f.name
「誘うって言っても・・・そもそも、どこにいるかもわからない・・・」[p]
#&f.name
「仕方ないや・・・仕事の時、また会えるかな・・・」[p]
;カーニバル準備期間へ
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_8]

*me7_2_5
;下と同様なのでそのまま
*me7_2

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=0"]

[eval exp="f.jiyuu=1"]
#&f.name
「いかないほうがいいよね・・・だってあっちも仕事かもだし。こんなときだし・・・」[p]


[jump storage="scenario_2/episode/epi2.ks" target=*main_event_8]

*choice995
*main_event_7_rans_1
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【気になる・・・】

[glink target=*oikakeru text="（追いかける）" size=17 width=600 x=65 y=200]
[glink target=*oikakenai text="（追いかけない）" size=17 width=600 x=65 y=260]


[mi]


[s]

*oikakeru

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.choice=996"]


[jump storage="scenario_2/episode/epi_osasoi_rans.ks" target=*oikakeru]

*oikakenai

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.jiyuu=1"]
[eval exp="f.choice=0"]
[jump storage="scenario_2/episode/epi_osasoi_rans.ks" target=*oikakenai]


*choice996
*main_event_7_rans_2
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【店での話を・・・】

[glink target=*hear text="（聞いた）" size=17 width=600 x=65 y=200]
[glink target=*no_hear text="（聞いていない）" size=17 width=600 x=65 y=260]


[mi]


[s]

*hear

[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.choice=0"]
[eval exp="f.jiyuu=1"]
[eval exp="f.curnival_rans=1"]
[jump storage="scenario_2/episode/epi_osasoi_rans.ks" target=*hear]

*no_hear
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=0"]
[eval exp="f.jiyuu=1"]
[jump storage="scenario_2/episode/epi_osasoi_rans.ks" target=*no_hear]


*choice997
*main_event_7_kra
;選択肢
;キスする
;そこまでして行きたくない
[episode_hyouji_only][image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]
#
【き、キス・・・って・・・】

[glink target=*kiss text="（キスする）" size=17 width=600 x=65 y=200]
[glink target=*kiss_no text="（そこまでして行きたくない）" size=17 width=600 x=65 y=260]
[live2d_load][live2d_on]	
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]

[mi]


[s]

*kiss
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.choice=0"]
[eval exp="f.jiyuu=1"]
[eval exp="f.curnival_kra=1"]
[kra]
[jump storage="scenario_2/episode/epi_osasoi_kra.ks" target=*kiss]

*kiss_no
[free name="sentakusi" layer=0][eval exp="f.sentakuchuu= 0 "]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=0"]
[eval exp="f.jiyuu=1"]

[jump storage="scenario_2/episode/epi_osasoi_kra.ks" target=*kiss_no]

*choice998

*cur_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どこを回ろうかな？】

[glink target=*cur_1 text="（屋台）" size=17 width=600 x=65 y=80]
[glink target=*cur_2 text="（くじ引き）" size=17 width=600 x=65 y=140]
[glink target=*cur_3 text="（金魚すくい）" size=17 width=600 x=65 y=200]
[glink target=*cur_4 text="（モンスター箱ゲーム）" size=17 width=600 x=65 y=260]
[glink target=*cur_5 text="（装備のお店）" size=17 width=600 x=65 y=320]
[glink target=*cur_6 text="（もう飽きた）" size=17 width=600 x=65 y=380]



[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*cur_1
*yatai
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.yatai=1"]
[jump target=*kettei]


*cur_2
*kujibiki
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.kujibiki=1"]
[jump target=*kettei]

*cur_3
*kingyo
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.kingyo=1"]
[jump target=*kettei]

*cur_4
*monster
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.monster=1"]
[jump target=*kettei]

*cur_5
*soubi
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.soubi=1"]
[jump target=*kettei]

*cur_6
*akita
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.choice=999"]
[if exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*akitayo]
[elsif exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*akitayo]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*akitayo]
[else]

[jump storage="scenario_2/episode/normal_curnival.ks" target=*akitayo]
[endif]



*kettei
[eval exp="f.choice=999"][eval exp="f.sentakuchuu= 0 "]
[if exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*kettei]
[elsif exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*kettei]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*kettei]
[else]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*kettei]
[endif]

*choice999
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【これからどうしよう？】


[if exp="f.friend!=0"]
[if exp="f.curnival_flower_1==1||f.curnival_flower_2==1||f.curnival_flower_3==1"]
[glink target=*gaia_2 text="（花を渡す）" size=17 width=600 x=65 y=200]
[endif]
[endif]
[glink target=*gaia_3 text="（ガイアの森にいく）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*gaia_1

[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.choice=0"]
[chara_kakusu]
[eval exp="f.curnival_yoru=1"]
[if exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*cur_choice]
[elsif exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*cur_choice]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*cur_choice]
[else]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*cur_choice]
[endif]




*gaia_2
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[if exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*hana_watasu]
[elsif exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*hana_watasu]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*hana_watasu]
[else]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*hana_watasu]
[endif]

*gaia_3
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.muryou=0"]
[eval exp="f.muryou_yatai=0"]
[eval exp="f.choice=0"][eval exp="f.cur_battle=1"]
[if exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*gaia]
[elsif exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*gaia_mori]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*gaia]
[else]
[eval exp="f.gaia_hotaru=1"]
[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/others/snowfall/images/hotaru.png",
    flakeCount : 17,
    minSize: 20, 
    maxSize: 32,
    maxspeed:3,
    minspeed:1
    });
[endscript]

[jump storage="scenario_2/episode/normal_curnival.ks" target=*gaia]
[endif]

*choice1000
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【声をかけてみようかな】

[glink target=*koe_1 text="（声をかける）" size=17 width=600 x=65 y=200]
[glink target=*koe_2 text="（かけない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*koe_2
[eval exp="f.choice=998"]
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#&f.name	
「・・・セレさんに機嫌損ねるとどうなるかわからないって言われたし・・・声はかけないでおこう」[p]
#
[chara_kakusu]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*gales_end_2]

*koe_1
[eval exp="f.choice=1001"]
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*koe_1]

*choice1001
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【話を続けない方が・・・】

[glink target=*hanasi_1 text="（続ける）" size=17 width=600 x=65 y=200]
[glink target=*hanasi_2 text="（立ち去る）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*hanasi_1
[eval exp="f.choice=998"]
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*hanasi_1]

*hanasi_2
[eval exp="f.choice=998"]
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*hanasi_2]

;カーニバル編ここまで

;エルムナード編
*main_event_15_choice_1
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【祝賀会の話を・・・】

[glink target=*shukuga_1 text="（引き受ける）" size=17 width=600 x=65 y=200]
[glink target=*shukuga_2 text="（断る）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*shukuga_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/epi5.ks" target=*hikiuke]



*shukuga_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi5.ks" target=*kotowaru]


*main_event_14_last_day_tec
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どの隊に入ろう？】
;テストコード
;[eval exp="f.glif_battle_kizuna=1"]
[glink target=*war_1 text="（第一大隊）" size=17 width=600 x=65 y=140]
[image storage="battle_face/ranslott_face.png" layer="2" page="fore" visible="true" height=50 width=50 x="745" y="140" name="icon"]

[glink target=*war_2 text="（第二大隊）" size=17 width=600 x=65 y=200]
[image storage="battle_face/lioness_face.png" layer="2" page="fore" visible="true" height=50 width=50 x="745" y="200" name="icon"]

[glink target=*war_3 text="（第三大隊）" size=17 width=600 x=65 y=260]
[image storage="battle_face/klaist_face.png" layer="2" page="fore" visible="true" height=50 width=50 x="745" y="260" name="icon"]

[if exp="f.glif_battle_kizuna==1"]
[glink target=*war_4 text="（団長にお任せ）" size=17 width=600 x=65 y=320]
[image storage="battle_face/glif_face.png" layer="2" page="fore" visible="true" height=50 width=50 x="745" y="320" name="icon"]
[endif]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*war_1
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[eval exp="f.event_war_rans=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*war_start]



*war_2
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[eval exp="f.event_war_lion=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*war_start]


*war_3
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[eval exp="f.event_war_kra=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*war_start]

*war_4
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[eval exp="f.event_war_glif=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target=*war_start]


*war_start
[jump storage="scenario_2/episode/epi3.ks" target=*tec_sel_end]


*main_event_14_last_day
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【前線と後方支援、どちらを選ぶ？】

[glink target=*zensen_1 text="（前線に出る）" size=17 width=600 x=65 y=200]

[glink target=*kouhou_2 text="（後方支援に回る）" size=17 width=600 x=65 y=260]


[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*zensen_1
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/free_end_event.ks" target=*free_end_return]



*kouhou_2
[free name="icon" layer=2]
[free name="sentakusi" layer=0]
[eval exp="f.kouhou=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/free_end_event.ks" target=*free_end_return]


*event_main_epi5_rans
;ランスロットを探してみる？
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットを探してみる？】

[glink target=*search_yes text="（探してみようか）" size=17 width=600 x=65 y=200]
[glink target=*search_no text="（人の家だし、勝手に動き回るの良くないよね）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[eval exp="f.choice_rans_find=0"]
[s]

*search_yes

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=1"]
[jump storage="scenario_2/episode/epi5.ks" target=*yes]

*search_no

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=-1"]
[jump storage="scenario_2/episode/epi5.ks" target=*no]


;ランスロット探索；どっちに進もう・・・
*event_main_epi5_rans_2

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【どっちに進もう・・・】

[glink target=*left text="（左）" size=17 width=600 x=65 y=200]
[glink target=*right text="（右）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*left

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=-1"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*left]

*right

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=2"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*right]


;本当に処刑されちゃうの
*event_main_epi5_rans_3

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロット、本当に・・・】

[glink target=*sikei_no text="（死刑なんて嫌だよ！）" size=17 width=600 x=65 y=200]
[glink target=*sikei_yes text="（仕方、ないんだよね・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*sikei_no

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=3"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*shokei_no]

*sikei_yes

[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=-1"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*shokei_yes]



;ランスロットは、私の・・・
*event_main_epi5_rans_4
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットは、私の・・・】

[glink target=*ken_1 text="（剣の先生なんだから）" size=17 width=600 x=65 y=200]
[glink target=*taisetu_2 text="（大切な人なんだから）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*ken_1

[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_rans_search_yes=-1"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*sensei]

*taisetu_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ジャンプようフラグ
[eval exp="f.event_rans_search_yes=4"]
;ランス次へのフラグ
[eval exp="f.event_epi5_rans_ok=1"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*koibito]



*rans_ector_van_shokuji

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットとヴァンディットさん、エクターさんと食事に・・・】

[glink target=*ikitai_1 text="（行きたい）" size=17 width=600 x=65 y=200]
[glink target=*enryo_2 text="（ちょっと遠慮しようかな）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*ikitai_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ジャンプようフラグ
[eval exp="f.event_rans_search_yes=0"]
[eval exp="f.event_epi5_rans_shokuji=1"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*ikitai]

*enryo_2
[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ジャンプようフラグ
[eval exp="f.event_rans_search_yes=0"]
[eval exp="f.event_epi5_rans_ok=10"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*enryo]
	


*main_event_15_choice_2

;SEL　えーと・・・#ライオネスの腕に		
			
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【えーと、ライオネスの腕に】

[glink target=*esc_1 text="（そっと手を添える）" size=17 width=600 x=65 y=200]
[glink target=*esc_2 text="（ギュッと抱きつく）" size=17 width=600 x=65 y=260]
[glink target=*esc_3 text="（軽く腕を絡める	）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
;ジャンプ用フラグ
[eval exp="f.event_main_epi6_1=1"]

[s]

*esc_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi6.ks" target=*hand]


*esc_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi6.ks" target=*daki]

*esc_3

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/epi6.ks" target=*arm]


;SEL		
;御馳走を食べに行く				
;バルコニーで休む				
;挨拶回り		

*main_event_15_choice_3
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【これからどうしよう？】

[if exp="f.shukuga_aisatu!=1"]
[glink target=*aisatu_1 text="（挨拶回り）" size=17 width=600 x=65 y=200]
[endif]

[if exp="f.shukuga_gotisou!=1"]
[glink target=*gotisou_2 text="（御馳走を食べに行く）" size=17 width=600 x=65 y=260]
[endif]

[if exp="f.shukuga_bal!=1"]
[glink target=*bal_3 text="（うろうろする）" size=17 width=600 x=65 y=320]
[endif]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*aisatu_1

[free name="sentakusi" layer=0]
[eval exp="f.shukuga_aisatu=1"]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;------
[jump storage="scenario_2/episode/epi6.ks" target=*aisatu]


*gotisou_2
[eval exp="f.shukuga_gotisou=1"]
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;------
[jump storage="scenario_2/episode/epi6.ks" target=*gotisou]

*bal_3
[eval exp="f.shukuga_bal=1"]
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;------
[jump storage="scenario_2/episode/epi6.ks" target=*bal]


*main_event_15_choice_4_1
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【前菜はどれにしよう？	】

[glink target=*zensai_1 text="（香ばしく焼いたフロマージュ・ド・テット）" size=17 width=600 x=65 y=200]
[glink target=*zensai_2 text="（カジカジマグロ、スズキエビ、シャロームイカ、冷製魚介のカッペリーニ）" size=17 width=600 x=65 y=260]
[glink target=*zensai_3 text="（季節野菜のエチュベ、虹色あさりのポワレを添えて）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*zensai_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_tec_10]
[jump target=**main_event_15_choice_4_2]

*zensai_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_tec_10]
[jump target=**main_event_15_choice_4_2]

*zensai_3

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_tec_20]
[jump target=**main_event_15_choice_4_2]

	
			
			
		


*main_event_15_choice_4_2		

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【メインはどれにしよう？	】

[glink target=*main_1 text="（ロマナ豚ロース肉のロースト）" size=17 width=600 x=65 y=200]
[glink target=*main_2 text="（ムーン鶏　ロワイヤルのロースト）" size=17 width=600 x=65 y=260]
[glink target=*main_3 text="（ベル族の牛、ワインロマーナ赤ワイン煮込み）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*main_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_brain_10]
[jump target=**main_event_15_choice_4_3]

*main_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_brain_10]
[jump target=**main_event_15_choice_4_3]
*main_3			
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[status_up_brain_20]
[jump target=**main_event_15_choice_4_3]			
			
			

*main_event_15_choice_4_3		

;[eval exp="f.irain_tec=f.irain_tec+"]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【デザートはどれにしよう？】

[glink target=*dessert_1 text="（キャロルキャロットソルベ）" size=17 width=600 x=65 y=200]
[glink target=*dessert_2 text="（モイモ芋を使ったクリームスイートポテト）" size=17 width=600 x=65 y=260]
[glink target=*dessert_3 text="（幻のヨーグルト　金箔添え）" size=17 width=600 x=65 y=320]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*dessert_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]	
[status_up_charm_10]
[jump target=*meal_end]
			
*dessert_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]	
[status_up_charm_10]
[jump target=*meal_end]

*dessert_3	
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]	
	[status_up_charm_20]		
	[jump target=*meal_end]
			

*meal_end
[jump storage="scenario_2/episode/epi6.ks" target=*act_sel]		


*glif_dance_sel

;[eval exp="f.irain_tec=f.irain_tec+"]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【グリフとダンス・・・】

[glink target=*glif_dance_1 text="（喜んで）" size=17 width=600 x=65 y=200]
[glink target=*glif_dance_2 text="（ええと・・・ごめんなさい）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*glif_dance_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ダンスすみフラグ
[eval exp="f.event_main_15_dance_glif_sumi=1"]
[glif]
[koukando_up]
[jump storage="scenario_2/episode/epi6_glif.ks" target=*dance_ok]

*glif_dance_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi6_glif.ks" target=*dance_no]


;-----デートのお誘い
*glif_dance_sel_2

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【グリフと出かける約束・・・】

[glink target=*glif_date_1 text="（いいよ）" size=17 width=600 x=65 y=200]
[glink target=*glif_date_2 text="（ごめんなさい、その日はちょっと・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*glif_date_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[glif]
[koukando_up]
[jump storage="scenario_2/episode/epi6_glif.ks" target=*date_ok]

*glif_date_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi6_glif.ks" target=*date_no]


;ライオネスとダンス
*lion_dance_sel
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスとダンス・・・】
[glink target=*lion_dance_1 text="（嫌じゃないよ）" size=17 width=600 x=65 y=200]
[glink target=*lion_dance_2 text="（悪いけど、自信ないし・・・ごめんなさい）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*lion_dance_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ダンスすみフラグ
[eval exp="f.event_main_15_dance_lion_sumi=1"]
[lion]
[koukando_up]
[jump storage="scenario_2/episode/epi6_lion.ks" target=*dance_ok]

*lion_dance_2

[free name="sentakusi" layer=0]
[ka]
[cm]

[w]

[jump storage="scenario_2/episode/epi6_lion.ks" target=*dance_no]


;デートのお誘い
*lion_dance_sel_2
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ライオネスと一緒に出かける？】

[glink target=*lion_date_1 text="（いいよ）" size=17 width=600 x=65 y=200]
[glink target=*lion_date_2 text="（明日はちょっと・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*lion_date_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/epi6_lion.ks" target=*date_ok]

*lion_date_2

[free name="sentakusi" layer=0]
[ka]
[cm]

[w]
[jump storage="scenario_2/episode/epi6_lion.ks" target=*date_no]

;クライスト
*kra_dance_sel
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【クライストさんと明日・・・】

[glink target=*kra_date_1 text="（いいよ）" size=17 width=600 x=65 y=200]
[glink target=*kra_date_2 text="（それはちょっと・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*kra_date_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[kra]
[koukando_up]
[jump storage="scenario_2/episode/epi6_kra.ks" target=*date_ok]

*kra_date_2
[free name="sentakusi" layer=0]
[ka]
[cm]

[w]
[jump storage="scenario_2/episode/epi6_kra.ks" target=*date_no]


;ランスロット
*rans_dance_sel

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットとダンス・・・】

[glink target=*rans_dance_1 text="（はい）" size=17 width=600 x=65 y=200]
[glink target=*rans_dance_2 text="（・・・ごめんなさい）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*rans_dance_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;ダンスすみフラグ
[eval exp="f.event_main_15_dance_rans_sumi=1"]
[rans]
[koukando_up]
[jump storage="scenario_2/episode/epi6_rans.ks" target=*dance_ok]

*rans_dance_2

[free name="sentakusi" layer=0]
[ka]
[cm]

[w]
[jump storage="scenario_2/episode/epi6_rans.ks" target=*dance_no]



*rans_dance_sel_2
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットと一緒に・・・】

[glink target=*rans_date_1 text="（うん、いいよ）" size=17 width=600 x=65 y=200]
[glink target=*rans_date_2 text="（明日はちょっと・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*rans_date_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[rans]
[koukando_up]
[jump storage="scenario_2/episode/epi6_rans.ks" target=*date_ok]

*rans_date_2
[free name="sentakusi" layer=0]
[ka]
[cm]

[w]
[jump storage="scenario_2/episode/epi6_rans.ks" target=*date_no]




*event_main_16_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ウェスタに行く？それとも・・・】

[glink target=*wesuta text="（ウェスタに行く）" size=17 width=600 x=65 y=200]

[glink target=*oukyu text="（王宮騎士団に入る）" size=17 width=600 x=65 y=260]




[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*wesuta

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.s_wesuta=1"]
[jump storage="scenario_2/episode/episode_jump.ks"]



*oukyu

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.s_oukyu=1"]
[jump storage="scenario_2/episode/episode_jump.ks"]



*event_main_epi7_kra
;クライストエピ

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【クライストさんを・・・】

[glink target=*mon_1 text="（探しに出てみよう）" size=17 width=600 x=65 y=200]
[glink target=*mon_2 text="（行かない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*mon_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.event_epi7_kra_ok=6"]
[jump storage="scenario_2/episode/epi_7_kra_epi.ks" target=*sagasu]

*mon_2
[free name="sentakusi" layer=0]
[ka]
[cm]
;[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/epi_7_kra_epi.ks" target=*yameru]



*rans_westa_choice
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ランスロットと食事・・・】

[glink target=*rans_w_1 text="（うん、行きたい）" size=17 width=600 x=65 y=200]
[glink target=*rans_w_2 text="（・・・ごめんなさい）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*rans_w_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump storage="scenario_2/episode/epi8_w.ks" target=*rans_w_yes]

*rans_w_2

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump storage="scenario_2/episode/epi8_w.ks" target=*rans_w_no]


































;エルムナード編ここまで
*choice4
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【それは、少しだけ抱き寄せたような形になって･･･】

[glink target=*a4_1 text="（ちょっと、どきどきする･･･）" size=17 width=600 x=65 y=200]
[glink target=*a4_2 text="（少しだけど、安心するな･･･）" size=17 width=600 x=65 y=260]
[glink target=*a4_3 text="(慰めのつもりなのかもだけど、今はやめてほしい･･･）" size=17 width=600 x=65 y=320]



[mi][s]
*a4_1
[eval exp="f.choice= 5 "]
[clearstack][freeimage layer=0]
[ka]
[cm]
[lion]
[eval exp="f.s4= 1 "]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[jump target="*a4_common"]

*a4_2
[eval exp="f.choice= 5 "]
[clearstack][freeimage layer=0]
[eval exp="f.s4=2"]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target="*a4_common"]

*a4_3
[eval exp="f.choice= 5 "]
[clearstack][freeimage layer=0]
[eval exp="f.s4=3"]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump storage="scenario_2/episode/epi1.ks" target=*a4_common2]

*a4_common
[jump storage="scenario_2/episode/epi1.ks" target=*a4_common]







*choice5
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（前々から思ってたんだけど、ランスロットってすごく女の人に人気なんだよね･･）】

[glink target=*a5_1 text="（相変わらずだなあ･･･）" size=17 width=600 x=65 y=200]
[glink target=*a5_2 text="（ちょっと複雑かも･･･）" size=17 width=600 x=65 y=260]
[glink target=*a5_3 text="（そんなに格好いいのかな？）" size=17 width=600 x=65 y=320]



[mi]
[s]
*a5_1
[eval exp="f.choice= 102 "]
[clearstack][freeimage layer=0]
[eval exp="f.s5=1"]
[ka][cm]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a5_common]

*a5_2
[eval exp="f.choice= 102 "]
[clearstack][freeimage layer=0]
[eval exp="f.s5=2"]
[ka][cm]
[rans]
[playse storage="decision5_koukaonlabo.ogg"]
[jump target=*a5_common]

*a5_3
[eval exp="f.choice= 102 "]
[clearstack][freeimage layer=0]
[eval exp="f.s5=3"]
[ka][cm]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a5_common]


*a5_common
[jump storage="scenario_2/episode/epi2.ks" target=*a5_common]




*choice102
[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color="blue"]【（さっきセレさんと約束しちゃったなあ･･･どうしよう）】

[if exp="sf.k2_1==1"]
[glink target=*k2_1 text="セレさんとの約束が先だったし、ランスロットの誘いを断る" size=17 width=600 x=65 y=200]
[else]
[glink target=*k2_1 color=blue text="セレさんとの約束が先だったし、ランスロットの誘いを断る" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k2_2==1"]
[glink target=*k2_2 text="セレさんには悪いけどお断りして、ランスロットの誘いに応じる" size=17 width=600 x=65 y=260]
[else]
[glink target=*k2_2 color=blue text="セレさんには悪いけどお断りして、ランスロットの誘いに応じる" size=17 width=600 x=65 y=260]
[endif]


[mi][s]
*k2_1
[eval exp="sf.k2_1=1"]
[eval exp="f.choice= 6 "]
[clearstack][freeimage layer=0]
[eval exp="f.a2= 1 "]
[lion]
[playse storage="decision5_koukaonlabo.ogg"]
[cm][ka]

*k2_common
[jump storage="scenario_2/episode/epi2.ks" target=*k2_1]

*k2_2
[eval exp="sf.k2_2=1"]
[eval exp="f.choice= 7 "]
[clearstack][freeimage layer=0]
[eval exp="f.b2= 1 "]
[rans]
[playse storage="decision5_koukaonlabo.ogg"]
[cm][ka]

*k2_common2
[jump storage="scenario_2/episode/epi2.ks" target=*k2_2]


*choice7
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･あるだろう？」】

[glink target=*a7_1 text="「た･･確かにそうかもしれないけど･･･」" size=17 width=600 x=65 y=200]
[glink target=*a7_2 text="「そんなことないよ！」" size=17 width=600 x=65 y=260]
[glink target=*a7_3 text="「いつもそうやってからかうんだから･･･」" size=17 width=600 x=65 y=320]

;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 2 "]


[mi][s]
*a7_1
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s7=1"]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a7_common]

*a7_2
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s7=2"]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a7_common]

*a7_3
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s7=3"]
[rans]
[playse storage="decision5_koukaonlabo.ogg"]
[jump target=*a7_common]

*a7_common
[jump storage="scenario_2/episode/epi2.ks" target=*a7_common]


*choice6
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][font color=pink]そういえば･･･
[r]【ランスロットが一瞬だけ見せたさびしそうな表情･･･なんだったんだろう。】

[glink target=*a6_1 text="（たぶん気のせい･･･だよね？）" size=17 width=600 x=65 y=200]
[glink target=*a6_2 text="（何か悩みでもあるのかな）" size=17 width=600 x=65 y=260]
[glink target=*a6_3 text="（ランスロット、忙しいから疲れてるのかも）" size=17 width=600 x=65 y=320]

;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 2 "]
[mi]
[s]
*a6_1
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s6=1"]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a6_common]

*a6_2
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s6=2"]
[rans]
[playse storage="decision5_koukaonlabo.ogg"]
[jump target=*a6_common]

*a6_3
[eval exp="f.choice= 8 "]
[clearstack][freeimage layer=0]
[eval exp="f.s6=3"]
[playse storage="tm2_switch001_macchi.ogg"]
[jump target=*a6_common]

*a6_common
[jump storage="scenario_2/episode/epi2.ks" target=*a6_common]

*choice8
[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「す、好きな人なんて･･･まだ･･」】

[glink target=*a8_1 text="「全く考えたことがないわけじゃないけど･･」" size=17 width=600 x=65 y=200]
[glink target=*a8_2 text="「それに、あんまり興味もないし･･」" size=17 width=600 x=65 y=260]
[glink target=*a8_3 text="「こ、恋っていうの？してみたいとも思うけど･･」" size=17 width=600 x=65 y=320]



[mi][s]

*a8_1
[eval exp="f.choice= 9 "]
[clearstack][freeimage layer=0]
[eval exp="f.s8=1"]
[lion]
[playse storage="decision5_koukaonlabo.ogg"]
[cm]
[ka]
[jump target="*a8_common"]

*a8_2
[eval exp="f.choice= 9 "]
[clearstack][freeimage layer=0]
[eval exp="f.s8=2"]
[playse storage="tm2_switch001_macchi.ogg"]
[cm]
[ka]
[jump target="*a8_common"]

*a8_3
[eval exp="f.choice= 9 "]
[clearstack][freeimage layer=0]
[eval exp="f.s8=3"]
[kra]
[playse storage="decision5_koukaonlabo.ogg"]
[cm]
[ka]
[jump target="*a8_common"]

*a8_common
[jump storage="scenario_2/episode/epi3.ks" target=*a8_common]




*choice9
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【その剣は青く綺麗に発光し、呼吸するようにゆっくりと点滅している。】

[glink target=*a9_1 text="（･･･なに？･･･あの剣･･･）" size=17 width=600 x=65 y=200]
[glink target=*a9_2 text="（･･･不気味だな･･･）" size=17 width=600 x=65 y=260]
[glink target=*a9_3 text="（･･･なんだか綺麗･･･ちょっと怖いけど･･･）" size=17 width=600 x=65 y=320]




[mi]
[s]

*a9_1
[eval exp="f.choice= 10 "]
[clearstack][freeimage layer=0]
[eval exp="f.s9=1"]
[hazure]
[cm]
[ka]
[jump target=*a9_common]

*a9_2
[eval exp="f.choice= 10 "]
[clearstack][freeimage layer=0]
[eval exp="f.s9=2"]
[hazure]
[cm]
[ka]
[jump target=*a9_common]

*a9_3
[eval exp="f.choice= 10 "]
[clearstack][freeimage layer=0]
[eval exp="f.s9=3"]
[atari]
[kra]	
[cm]
[ka]
[jump target=*a9_common]

*a9_common
[jump storage="scenario_2/episode/epi3.ks" target=*a9_common]


*choice10
[clearstack][freeimage layer=0]
[cm]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【なぜだか無性に、悲しく思えた。】

[glink target=*a10_1 text="「そんなこと、どうして平気で言えるのよ！！！！！」" size=17 width=600 x=65 y=200]
[glink target=*a10_2 text="「馬鹿なこと言わないでよ！！」" size=17 width=600 x=65 y=260]
[glink target=*a10_3 text="「何言ってるの！？皆が心配してるのに･･それなのに･･」" size=17 width=600 x=65 y=320]

;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 3 "]

[mi]
[s]

*a10_1
[eval exp="f.choice= 103 "]
[clearstack][freeimage layer=0]
[eval exp="f.s10=1"]
[atari]
[lion]
[cm]
[ka]
[jump target="*a10_common"]

*a10_2
[eval exp="f.choice= 103 "]
[clearstack][freeimage layer=0]
[eval exp="f.s10=2"]
[hazure]
[cm]
[ka]
[jump target="*a10_common"]

*a10_3
[eval exp="f.choice= 103 "]
[clearstack][freeimage layer=0]
[eval exp="f.s10=3"]
[hazure]
[cm]
[ka]
[jump target="*a10_common"]	

*a10_common
[jump storage="scenario_2/episode/epi3.ks" target=*a10_common]


*choice103
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【彼の言葉に私はしばし躊躇して･･･】

[glink target=*k3_1 text="信用なんかできるわけない！" size=17 width=600 x=65 y=200]
[glink target=*k3_2 text="そんなことは･･ないけど･･" size=17 width=600 x=65 y=260]

[mi]
[s]
*k3_1
[eval exp="f.choice= 104 "]
[clearstack][freeimage layer=0]
[eval exp="f.s103=1"]
[atari]
[lion]
[rans]
[cm]
[ka]
*k3_common
[jump storage="scenario_2/episode/epi4.ks" target=*k3_1]	


*k3_2
[eval exp="f.choice= 104 "]
[clearstack][freeimage layer=0]
[eval exp="f.s103=2"]
[atari]
[kra]
[cm]
[ka]
*k3_common1
[jump storage="scenario_2/episode/epi4.ks" target=*k3_2]




	
*choice104
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【「･･･さて、[name]ちゃん。それで君はどうするの？」】

[if exp="sf.k4_1==1"]
[glink target=*k4_1 text="クライストと一緒に行く" size=17 width=600 x=65 y=200]
[else]
[glink target=*k4_1 color=blue text="クライストと一緒に行く" size=17 width=600 x=65 y=200]
[endif]
[if exp="sf.k4_2==1"]
[glink target=*k4_2 text="行かない" size=17 width=600 x=65 y=260]
[else]
[glink target=*k4_2 color=blue text="行かない" size=17 width=600 x=65 y=260]
[endif]

[mi]
[s]
*k4_1
[eval exp="sf.k4_1=1"]
[eval exp="f.choice= 11 "]
[clearstack][freeimage layer=0]
[atari]
[kra]
[eval exp="f.a4= 1 "]
[cm][ka]	
[jump storage="scenario_2/episode/epi4.ks" target=*k4_1]


*k4_2
[eval exp="sf.k4_2=1"]
[eval exp="f.choice= 14 "]
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 4 "]
[clearstack][freeimage layer=0]
[atari]
[rans]
[eval exp="f.b4= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi4.ks" target=*k4_2"]



*choice11
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･もしかして、俺にみとれてたとか？」】

[glink target=*a11_1 text="「うっ･･･うぬぼれないで！！」" size=17 width=600 x=65 y=200]
[glink target=*a11_2 text="「え･･えーと･･･はい？」" size=17 width=600 x=65 y=260]
[glink target=*a11_3 text="「うん。髪の色、なんか綺麗だし」" size=17 width=600 x=65 y=320]

[mi]
[s]

*a11_1
[eval exp="f.choice= 12 "]
[clearstack][freeimage layer=0]
[eval exp="f.s11=1"]
[atari]
[rans]
[ka]
[cm]
*a11_common
[jump storage="scenario_2/episode/epi4_k.ks" target=*a11_1]

*a11_2
[eval exp="f.choice= 12 "]
[clearstack][freeimage layer=0]
[eval exp="f.s11=2"]
[hazure]
[ka]
[cm]
*a11_common1
[jump storage="scenario_2/episode/epi4_k.ks" target=*a11_2]

*a11_3
[eval exp="f.choice= 12 "]
[clearstack][freeimage layer=0]
[eval exp="f.s11=3"]
[atari]
[kra]
[ka]
[cm]
*a11_common2
[jump storage="scenario_2/episode/epi4_k.ks" target=*a11_3]






*choice12
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（クライストさんに、いきなりこんなことされるなんて･･･！！）】


[glink target=*a12_1 text="（やっぱりランスロットの言うとおりにしておけばよかった･･！）" size=17 width=600 x=65 y=200]
[glink target=*a12_2 text="（いっ･･･いきなり、何？！）" size=17 width=600 x=65 y=260]
[glink target=*a12_3 text="（･･クライストさん、どういうつもり･･･！？）" size=17 width=600 x=65 y=320]

[mi]


[s]

*a12_1
[eval exp="f.choice= 13 "]
[clearstack][freeimage layer=0]
[eval exp="f.s12=1"]
[atari]
[rans]
[cm][ka]
[jump target="*a12_common"]

*a12_2
[eval exp="f.choice= 13 "]
[clearstack][freeimage layer=0]
[eval exp="f.s12=2"]
[hazure]
[cm][ka]
[jump target="*a12_common"]

*a12_3
[eval exp="f.choice= 13 "]
[clearstack][freeimage layer=0]
[eval exp="f.s12=3"]
[atari]
[kra]
[cm][ka][jump target="*a12_common"]

*a12_common
[jump storage="scenario_2/episode/epi4_k.ks" target=*a12_common]




*choice13
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【背の高低さもあってどうも詰問されているような感じがして落ち着かない。】

[glink target=*a13_1 text="（こ、怖いよ･･･）" size=17 width=600 x=65 y=200]
[glink target=*a13_2 text="（そんな顔で睨まなくてもいいのに）" size=17 width=600 x=65 y=260]
[glink target=*a13_3 text="（ライオネス大きいし、仕方ないんだろうけどね･･）" size=17 width=600 x=65 y=320]
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 4 "]

[mi]

[s]

*a13_1
[eval exp="f.choice= 14 "]
[clearstack][freeimage layer=0]
[eval exp="f.s13=1"]
[hazure]
[ka][cm]
[jump target=*a13_common]
*a13_2
[eval exp="f.choice= 14 "]
[clearstack][freeimage layer=0]
[eval exp="f.s13=2"]
[hazure]
[cm][ka]
[jump target=*a13_common]
*a13_3
[eval exp="f.choice= 14 "]
[clearstack][freeimage layer=0]
[eval exp="f.s13=3"]
[atari]
[lion]
[cm][ka]
[jump target=*a13_common]

*a13_common
[jump storage="scenario_2/episode/epi4_k.ks" target=*a13_common]


*choice14
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･････」】

[glink target=*a14_1 text="（ライオネスが大きすぎるんだと思うけど･･･）" size=17 width=600 x=65 y=200]
[glink target=*a14_2 text="（どーせ私は小さいですよ･･･）" size=17 width=600 x=65 y=260]
[glink target=*a14_3 text="「そんなにチビなんかじゃないよ！」" size=17 width=600 x=65 y=320]



;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 5 "]
[mi]
[s]

*a14_1
[eval exp="f.choice= 15 "]
[clearstack][freeimage layer=0]
[eval exp="f.s14=1"]
[hazure]
[cm][ka]
@jump target="*a14_common"

*a14_2
[eval exp="f.choice= 15 "]
[clearstack][freeimage layer=0]
[eval exp="f.s14=2"]
[hazure]
[cm][ka]
@jump target="*a14_common"

*a14_3
[eval exp="f.choice= 15 "]
[clearstack][freeimage layer=0]
[eval exp="f.s14=3"]
[atari]
[lion]
[cm][ka]
「へえへえ、わーったわーった」[ikkatu]
[r]「･･･もう･･･」[ikkatu][r]
@jump target="*a14_common"


*a14_common
[jump storage="scenario_2/episode/epi5.ks" target="*a14_common"]


*choice15
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「････････」】

[glink target=*a15_1 text="（なんか、モヤっとするっていうか･･･）" size=17 width=600 x=65 y=200]
[glink target=*a15_2 text="（ううーん、私こそやっぱりお邪魔だったかな？）" size=17 width=600 x=65 y=260]
[glink target=*a15_3 text="（やっぱり美人な人だなあ･･･）" size=17 width=600 x=65 y=320]


[mi]
[s]

*a15_1
[eval exp="f.choice= 16 "]
[clearstack][freeimage layer=0]
[eval exp="f.s15=1"]
[atari]
[rans]
[cm][ka]
@jump target=*a15_common
*a15_2
[eval exp="f.choice= 16 "]
[clearstack][freeimage layer=0]
[eval exp="f.s15=2"]
[hazure]
[cm][ka]
@jump target=*a15_common

*a15_3
[eval exp="f.choice= 16 "]
[clearstack][freeimage layer=0]
[eval exp="f.s15=3"]
[hazure]
[cm][ka]
@jump target=*a15_common

*a15_common
[jump storage="scenario_2/episode/epi6.ks" target=*a15_common]



*choice16
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【だが私には今更なんの感情もわかない。】



[glink target=*a16_1 text="（まあ･･･格好悪いってわけでもないとは思うけど･･･）" size=17 width=600 x=65 y=200]
[glink target=*a16_2 text="（一体ランスロットのどこが、いいんだろう･･･）" size=17 width=600 x=65 y=260]
[glink target=*a16_3 text="（確かに、まあ、しっかりした人だと思うけど･･先生だし）" size=17 width=600 x=65 y=320]



[mi]
[s]


*a16_1
[eval exp="f.choice= 17 "]
[clearstack][freeimage layer=0]
[eval exp="f.s16=1"]
[atari]
[rans]
[cm][ka]
@jump target=*a16_common
*a16_2
[eval exp="f.choice= 17 "]
[clearstack][freeimage layer=0]
[eval exp="f.s16=2"]
[hazure]
[cm][ka]
@jump target=*a16_common
*a16_3
[eval exp="f.choice= 17 "]
[clearstack][freeimage layer=0]
[eval exp="f.s16=3"]
[hazure]
[cm][ka]
@jump target=*a16_common

*a16_common
[jump storage="scenario_2/episode/epi6.ks" target=*a16_common]


*choice17
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【明日にはエルムナードにまで行くというのに、まだ半人前扱いしているのだろうか。】

[glink target=*a17_1 text="「･･･私、そんなに信用されてないってこと？」" size=17 width=600 x=65 y=200]
[glink target=*a17_2 text="「大丈夫だよ、変なのはやっつけちゃうし」" size=17 width=600 x=65 y=260]
[glink target=*a17_3 text="「私、頼りないものね･･･」" size=17 width=600 x=65 y=320]

[mi]
[s]

*a17_1
[eval exp="f.choice= 18 "]
[clearstack][freeimage layer=0]
[eval exp="f.s17=1"]
[hazure]
[cm][ka]
「･･･そういうわけではない」[ikkatu][r]
@jump target=*a17_common
*a17_2
[eval exp="f.choice= 18 "]
[clearstack][freeimage layer=0]
[eval exp="f.s17=2"]
[hazure]
[cm][ka]
「その自信が仇にならないといいがな･･･」[ikkatu]
[r]「･･･。そんなに頼りなく見えるの？」[ikkatu]
[r]「･･･そういうわけではない」[ikkatu][r]
@jump target=*a17_common
*a17_3
[eval exp="f.choice= 18 "]
[clearstack][freeimage layer=0]
[eval exp="f.s17=3"]
[atari]
[rans]
[cm][ka]
「･･･そういうわけではない」[ikkatu][r]
@jump target=*a17_common

*a17_common
[jump storage="scenario_2/episode/epi6.ks" target=*a17_common]


*choice18
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【なぜ昨日の夜、あんなに落ち着けなかったのだろう。】


[glink target=*a18_1 text="（まあでも、そういう日もたまには、あるんだろうけど）" size=17 width=600 x=65 y=200]
[glink target=*a18_2 text="（･･･ランスロットのこと、かな･･･）" size=17 width=600 x=65 y=260]
[glink target=*a18_3 text="（初任務だし、緊張してた･･･とか？）" size=17 width=600 x=65 y=320]


　
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 6 "]
[mi]
[s]

*a18_1
[eval exp="f.choice= 19 "]
[clearstack][freeimage layer=0]
[eval exp="f.s18=1"]
[hazure]
[cm][ka]
@jump target=*a18_common

*a18_2
[eval exp="f.choice= 19 "]
[clearstack][freeimage layer=0]
[eval exp="f.s18=2"]
[atari]
[rans]
[cm][ka]
（あんな表情･･･はじめてみた･･･けど）[ikkatu][r]
@jump target=*a18_common
*a18_3
[eval exp="f.choice= 19 "]
[clearstack][freeimage layer=0]
[eval exp="f.s18=3"]
[hazure]
[cm][ka]
@jump target=*a18_common

*a18_common
[jump storage="scenario_2/episode/epi6.ks" target=*a18_common]


*choice19
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「ましてや内容が内容だ。初めてにしちゃ、ちょっと酷かもな」】

[glink target=*a19_1 text="「ごめんなさい･･･本当は少し･･･不安で･･」" size=17 width=600 x=65 y=200]
[glink target=*a19_2 text="「わ、私･･･こ、こんなんじゃ･･･駄目だよね･･」" size=17 width=600 x=65 y=260]
[glink target=*a19_3 text="「そ、そんなことないよっ･･･頑張らなくちゃって･･･思ってるし」" size=17 width=600 x=65 y=320]

　
[mi]
[s]

*a19_1
[eval exp="f.choice= 20 "]
[clearstack][freeimage layer=0]
[eval exp="f.s19=1"]
[atari]
[lion]
[cm][ka]
@jump target=*a19_common
*a19_2
[eval exp="f.choice= 20 "]
[clearstack][freeimage layer=0]
[eval exp="f.s19=2"]
[hazure]
[cm][ka]
「･･････」[ikkatu][r]
@jump target=*a19_common

*a19_3
[eval exp="f.choice= 20 "]
[clearstack][freeimage layer=0]
[eval exp="f.s19=3"]
[hazure]
[cm][ka]
「･････。[w]ふーん」[ikkatu][r]

@jump target=*a19_common

*a19_common
[jump storage="scenario_2/episode/epi7.ks" target=*a19_common]




*choice20
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（ひ･･･ひとりで？）】

[glink target=*a20_1 text="「わかりました･･･」" size=17 width=600 x=65 y=200]
[glink target=*a20_2 text="「ライオネスと一緒がいい･･･」" size=17 width=600 x=65 y=260]
[glink target=*a20_3 text="「ひとりじゃ心細いな･･･」" size=17 width=600 x=65 y=320]


　
[mi]
[s]
*a20_1
[eval exp="f.choice= 105 "]
[clearstack][freeimage layer=0]
[eval exp="f.s20=1"]
[atari]
[lion]
[cm][ka]
@jump target=*a20_common
*a20_2
[eval exp="f.choice= 105 "]
[clearstack][freeimage layer=0]
[eval exp="f.s20=2"]
[hazure]
[cm][ka]
「何甘ったれたこと言ってんだ。さっさと行くぞ」[ikkatu]
[r]「････。わ、わかりました･･･」[r]
@jump target=*a20_common
*a20_3
[eval exp="f.choice= 105 "]
[clearstack][freeimage layer=0]
[eval exp="f.s20=3"]
[hazure]
[cm][ka]
「そりゃそうだろうな。それじゃ、二階は頼むぜ」[ikkatu]
[r]「･･･うう･･･。わ、わかりました･･･」[r]
@jump target=*a20_common

*a20_common
[jump storage="scenario_2/episode/epi7.ks" target=*a20_common]

*choice105
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【どちらに行こうか･･･】

[if exp="sf.k5_1==1"]
[glink target=*k5_1 text="大部屋" size=17 width=600 x=65 y=200]
[else]
[glink target=*k5_1 color=blue text="大部屋" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k5_2==1"]
[glink target=*k5_2 text="物置部屋" size=17 width=600 x=65 y=260]
[else]
[glink target=*k5_2 color=blue text="物置部屋" size=17 width=600 x=65 y=260]
[endif]


[mi]
[s]

*k5_1
[eval exp="sf.k5_1=1"]
[eval exp="f.choice= 1055 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.a5= 1 "]
[cm][ka]
@jump target=*k5_ooheya
*k5_2
[eval exp="sf.k5_2=1"]
[eval exp="f.choice= 21 "]
[clearstack][freeimage layer=0]
[atari]
[lion]
[eval exp="f.b5= 1 "]
[cm][ka]
@jump target=*k5_monooki

*k5_ooheya
[jump storage="scenario_2/episode/epi7.ks" target=*k5_ooheya]

*k5_monooki
[jump storage="scenario_2/episode/epi7.ks" target=*k5_monooki]


*choice1055
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【さて、物置部屋も調べたほうがいいのかな･･･】

[if exp="sf.k55_1==1"]
[glink target=*k55_1 text="一階に戻る" size=17 width=600 x=65 y=200]
[else]
[glink target=*k55_1 color=blue text="一階に戻る" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k55_2==1"]
[glink target=*k55_2 text="物置部屋へ行く" size=17 width=600 x=65 y=260]
[else]
[glink target=*k55_2 color=blue text="物置部屋へ行く" size=17 width=600 x=65 y=260]
[endif]


[mi]
[s]

*k55_1
[eval exp="sf.k55_1=1"]
[eval exp="f.choice= 23 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.s105_5= 1 "]
[cm][ka]
@jump target=*k5_common

*k55_2
[eval exp="sf.k55_2=1"]
[eval exp="f.choice= 21 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.s105_5= 2 "]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
@jump target=*k5_monooki2

*k5_common
[jump storage="scenario_2/episode/epi7.ks" target=*k5_common]

*k5_monooki2
[jump storage="scenario_2/episode/epi7.ks" target=*k5_monooki]



*choice21
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【私は鼻を覆う。胸焼けがして思わず咳き込んだ。】
[r]

[glink target=*a21_1 text="（と･･･とにかく立ち上がって剣を･･･！）" size=17 width=600 x=65 y=200]
[glink target=*a21_2 text="（は、早く逃げなきゃ！）" size=17 width=600 x=65 y=260]
[glink target=*a21_3 text="（ライオネスを呼ばないと！）" size=17 width=600 x=65 y=320]


[mi]
[s]

*a21_1
[eval exp="f.choice= 22 "]
[clearstack][freeimage layer=0]
[eval exp="f.s21=1"]
[hazure]
[cm][ka]
@jump target=*a21_common
*a21_2
[eval exp="f.choice= 22 "]
[clearstack][freeimage layer=0]
[eval exp="f.s21=2"]
[hazure]
[cm][ka]
@jump target=*a21_common
*a21_3
[eval exp="f.choice= 22 "]
[clearstack][freeimage layer=0]
[eval exp="f.s21=3"]
[atari]
[lion]
[cm][ka]
@jump target=*a21_common

*a21_common
[jump storage="scenario_2/episode/epi7.ks" target=*a21_common]


*choice22
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･ご･･･ごめんなさい」】


[glink target=*a22_1 text="（そんなに遅かった･･？待たせて悪いことしちゃったかな）" size=17 width=600 x=65 y=200]
[glink target=*a22_2 text="（そういう言い方しなくても･･･）" size=17 width=600 x=65 y=260]
[glink target=*a22_3 text="（何その態度･･こっちだって急いだのにライオネスの馬鹿！！）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a22_1
[eval exp="f.choice= 23 "]
[clearstack][freeimage layer=0]
[eval exp="f.s22=1"]
[hazure]
[cm][ka]
@jump target=*a22_common
*a22_2
[eval exp="f.choice= 23 "]
[clearstack][freeimage layer=0]
[eval exp="f.s22=2"]
[hazure]
[cm][ka]
@jump target=*a22_common
*a22_3
[eval exp="f.choice= 23 "]
[clearstack][freeimage layer=0]
[eval exp="f.s22=3"]
[atari]
[lion]
[cm][ka]
@jump target=*a22_common

*a22_common
[jump storage="scenario_2/episode/epi7.ks" target=*a22_common]


*choice23
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【次に狙われるのは･･･きっと―】


[glink target=*a23_1 text="（早く、早く逃げなきゃ･･･！）" size=17 width=600 x=65 y=200]
[glink target=*a23_2 text="（ライオネスの手当てをしないと！）" size=17 width=600 x=65 y=260]
[glink target=*a23_3 text="（一体どこから攻撃してきたっていうの･･･！？）" size=17 width=600 x=65 y=320]


[mi]
[s]

*a23_1
[eval exp="f.choice= 24 "]
[clearstack][freeimage layer=0]
[eval exp="f.s23=1"]
[hazure]
[cm][ka]
（でも･･･）[ikkatu][r]

@jump target=*a23_common

*a23_2
[eval exp="f.choice= 24 "]
[clearstack][freeimage layer=0]
[eval exp="f.s23=2"]
[atari]
[lion]
[cm][ka]
（でも、手当てしてる間にやられちゃうかも･･･[w]今のうちに逃げ･･･）[ikkatu][r]
@jump target=*a23_common

*a23_3
[eval exp="f.choice= 24 "]
[clearstack][freeimage layer=0]
[eval exp="f.s23=3"]
[hazure]
[cm][ka]
（いっそこのまま逃げたら･･･[w]ううんダメだ、ダメだよ･･･！）[ikkatu][r]
@jump target=*a23_common

*a23_common
[jump storage="scenario_2/episode/epi7.ks" target=*a23_common]




*choice24
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「クライストさん･･･」】


[glink target=*a24_1 text="（こんな･･･ピンチのときに来てくれるなんて、まるで･･）" size=17 width=600 x=65 y=200]
[glink target=*a24_2 text="（やだ･･･なんか格好いい･･･）" size=17 width=600 x=65 y=260]
[glink target=*a24_3 text="（本当にひとりで大丈夫なのかな･･･）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a24_1
[eval exp="f.choice= 25 "]
[clearstack][freeimage layer=0]
[eval exp="f.s24=1"]
[hazure]
[cm][ka]
@jump target=*a24_common

*a24_2
[eval exp="f.choice= 25 "]
[clearstack][freeimage layer=0]
[eval exp="f.s24=2"]
[hazure]
[cm][ka]
@jump target=*a24_common

*a24_3
[eval exp="f.choice= 25 "]
[clearstack][freeimage layer=0]
[eval exp="f.s24=3"]
[atari]
[kra]
[cm][ka]
@jump target=*a24_common

*a24_common
[jump storage="scenario_2/episode/epi7.ks" target=*a24_common]



*choice25
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【どう答えたらいいかわからず、困りつつも返事をした。】


[glink target=*a25_1 text="(そうだよ、置いていって死なれても、後味悪いし･･･）" size=17 width=600 x=65 y=200]
[glink target=*a25_2 text="（･･･それに、逃げようとしても私もやられてたかもだし･･･）" size=17 width=600 x=65 y=260]
[glink target=*a25_3 text="（そう･･･こんな状態のライオネスを私、置いてなんかいけない）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a25_1
[eval exp="f.choice= 26 "]
[clearstack][freeimage layer=0]
[eval exp="f.s25=1"]
[hazure]
[cm][ka]
@jump target=*a25_common
*a25_2
[eval exp="f.choice= 26 "]
[clearstack][freeimage layer=0]
[eval exp="f.s25=2"]
[hazure]
[cm][ka]
@jump target=*a25_common
*a25_3
[eval exp="f.choice= 26 "]
[clearstack][freeimage layer=0]
[eval exp="f.s25=3"]
[atari]
[lion]
[cm][ka]
@jump target=*a25_common

*a25_common
[jump storage="scenario_2/episode/epi8.ks" target=*a25_common]


*choice26
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･」】


[glink target=*a26_1 text="（なんなんだろう･･･なんか適当な人だなあ･･･）" size=17 width=600 x=65 y=200]
[glink target=*a26_2 text="（とりあえずともかくは、この人がいてくれてよかったかも･･･）" size=17 width=600 x=65 y=260]
[glink target=*a26_3 text="（いい加減そうだけど、まあ、親切な人ではあるよね）" size=17 width=600 x=65 y=320]



　
[mi]
[s]

*a26_1
[eval exp="f.choice= 27 "]
[clearstack][freeimage layer=0]
[eval exp="f.s26=1"]
[hazure]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
@jump target=*a26_common
*a26_2
[eval exp="f.choice= 27 "]
[clearstack][freeimage layer=0]
[eval exp="f.s26=2"]
[atari]
[van]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
@jump target=*a26_common
*a26_3
[eval exp="f.choice= 27 "]
[clearstack][freeimage layer=0]
[eval exp="f.s26=3"]
[hazure]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
@jump target=*a26_common

*a26_common
[jump storage="scenario_2/episode/epi8.ks" target=*a26_common]


*choice27
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]前を行く傭兵が振り返らないまま言って、[r]
【私は彼の背中をにらみつけた。】


[glink target=*a27_1 text="（むっかああああ～！！！）" size=17 width=600 x=65 y=200]
[glink target=*a27_2 text="（昨夜、絶対わざと起きなかったと思う･･･この人）" size=17 width=600 x=65 y=260]
[glink target=*a27_3 text="（･･むかつく･･けど･･でももしかしたら起きれない何か理由があったのかな）" size=17 width=600 x=65 y=320]

　
[mi]
[s]

*a27_1
[eval exp="f.choice= 28 "]
[clearstack][freeimage layer=0]
[eval exp="f.s27=1"]
[hazure]
[cm][ka]
@jump target=*a27_common
*a27_2
[eval exp="f.choice= 28 "]
[clearstack][freeimage layer=0]
[eval exp="f.s27=2"]
[hazure]
[cm][ka]
@jump target=*a27_common
*a27_3
[eval exp="f.choice= 28 "]
[clearstack][freeimage layer=0]
[eval exp="f.s27=3"]
[atari]
[van]
[cm][ka]
@jump target=*a27_common

*a27_common
[jump storage="scenario_2/episode/epi8.ks" target=*a27_common]


*choice28
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（･･･クライストさん･･･）】


[glink target=*a28_1 text="（私を不安にさせないように、大丈夫って言ってくれてたのかな･･･）" size=17 width=600 x=65 y=200]
[glink target=*a28_2 text="（あのルシアと戦えるなんて･･･クライストさんてすごく強いんだ･･･）" size=17 width=600 x=65 y=260]
[glink target=*a28_3 text="（どうして、ルシアの剣とクライストさんの剣が似てたんだろう）" size=17 width=600 x=65 y=320]


[mi]
[s]

*a28_1
[eval exp="f.choice= 106 "]
[clearstack][freeimage layer=0]
[eval exp="f.s28=1"]
[atari]
[kra]
[cm][ka]
@jump target=*a28_common

*a28_2
[eval exp="f.choice= 106 "]
[clearstack][freeimage layer=0]
[eval exp="f.s28=2"]
[hazure]
[cm][ka]
@jump target=*a28_common

*a28_3
[eval exp="f.choice= 106 "]
[clearstack][freeimage layer=0]
[eval exp="f.s28=3"]
[hazure]
[cm][ka]
@jump target=*a28_common


*a28_common
[jump storage="scenario_2/episode/epi8.ks" target=*a28_common]



*choice106
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【気になることはたくさんあるが･･･どうしようか。】

[if exp="sf.k6_1==1"]
[glink target=*k6_lion text="ライオネスはどうしたかな･･･救護室にいってみよう" size=17 width=600 x=65 y=197]
[else]

[glink target=*k6_lion color=blue text="ライオネスはどうしたかな･･･救護室にいってみよう" size=17 width=600 x=65 y=197]
[endif]

[if exp="sf.k6_2==1"]
[glink target=*k6_van text="あの傭兵さんはどこにいったのかな･･･街に出てみよう" size=17 width=600 x=65 y=257]

[else]
[glink target=*k6_van color=blue text="あの傭兵さんはどこにいったのかな･･･街に出てみよう" size=17 width=600 x=65 y=257]
[endif]


[if exp="sf.k6_3==1"]
[glink target=*k6_rans text="ルシアのことをランスロットに話したほうがいいかな･･･王宮に向かってみよう" size=17 width=600 x=65 y=317]

[else]
[glink target=*k6_rans color=blue text="ルシアのことをランスロットに話したほうがいいかな･･･王宮に向かってみよう" size=15 width=600 x=65 y=317]

[endif]

[if exp="sf.k6_4==1"]
[glink target=*k6_kra text="クライストさんは無事なのかな･･･探しに出てみよう" size=17 width=600 x=65 y=377]
[else]
[glink target=*k6_kra color=blue text="クライストさんは無事なのかな･･･探しに出てみよう" size=17 width=600 x=65 y=377]
[endif]


[if exp="sf.k6_5==1"]
[glink target=*k6_no text="もう疲れたし、このまま休もう" size=17 width=600 x=65 y=437]
[else]
[glink target=*k6_no color=blue text="もう疲れたし、このまま休もう" size=17 width=600 x=65 y=437]
[endif]


[mi]
[s]

*k6_lion
[eval exp="sf.k6_1=1"]
[eval exp="f.choice= 29 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.a6= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi8_k6_lion.ks" target=*start

*k6_van
[eval exp="sf.k6_2=1"]
[eval exp="f.choice= 31 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.b6= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi8_k6_van.ks" target=*start

*k6_rans
[eval exp="sf.k6_3=1"]
[eval exp="f.choice= 34 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.c6= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi8_k6_rans.ks" target=*start

*k6_kra
[eval exp="sf.k6_4=1"]
[eval exp="f.choice= 36 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.d6= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi8_k6_kra.ks" target=*kra2

*k6_no
[eval exp="sf.k6_5=1"]
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.e6= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi8_k6_no.ks" target=*start



*choice29
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【私は彼が口をつけたカップを見つめた。】



[glink target=*a29_1 text="（私の飲みかけだったのにな･･･あまりそういうこと気にしないのかな･･･）" size=17 width=600 x=65 y=200]
[glink target=*a29_2 text="（か･･･か･･･間接キス･･･って、何考えてるんだろ私っ･･）" size=17 width=600 x=65 y=260]
[glink target=*a29_3 text="（本人は気にしてないみたいだけど、正直やめてほしいなあ）" size=17 width=600 x=65 y=320]


[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*a29_1
[eval exp="f.choice= 30 "]
[clearstack][freeimage layer=0]
[eval exp="f.s29=1"]
[hazure]
[cm][ka]
@jump target=*a29_common

*a29_2
[eval exp="f.choice= 30 "]
[clearstack][freeimage layer=0]
[eval exp="f.s29=2"]
[atari]
[lion]
[cm][ka]
@jump target=*a29_common

*a29_3
[eval exp="f.choice= 30 "]
[clearstack][freeimage layer=0]
[eval exp="f.s29=3"]
[hazure]
[cm][ka]
@jump target=*a29_common


*a29_common
[jump storage="scenario_2/episode/epi8_k6_lion.ks" target=*a29_common]




*choice30
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･別に頼んでもねえし」】[stopbgm]


[glink target=*a30_1 text="「そんなの関係ないよ」" size=17 width=600 x=65 y=200]
[glink target=*a30_2 text="「それなら、やっぱり逃げたほうがよかったのかなあ」" size=17 width=600 x=65 y=260]
[glink target=*a30_3 text="（どうだろ、その態度･･･）" size=17 width=600 x=65 y=320]


[mi]
[s]

*a30_1
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s30=1"]
[atari]
[lion]
[cm][ka]
*a30_common
[jump storage="scenario_2/episode/epi8_k6_lion.ks" target=*a30_1]



*a30_2
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s30=2"]
[hazure]
[cm][ka]
*a30_common1
[jump storage="scenario_2/episode/epi8_k6_lion.ks" target=*a30_2]



*a30_3
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s30=3"]
[hazure]
[cm][ka]
*a30_common2
[jump storage="scenario_2/episode/epi8_k6_lion.ks" target=*a30_3]





*choice31
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【傷跡だらけの顔で、少しだけ微笑した。】


[glink target=*a31_1 text="（顔は傷だらけだけど、笑うと優しそうだな）" size=17 width=600 x=65 y=200]
[glink target=*a31_2 text="（こんな顔もするんだ･･･）" size=17 width=600 x=65 y=260]
[glink target=*a31_3 text="（笑いかけてくれた。ちょっと嬉しいかも）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a31_1
[eval exp="f.choice= 32 "]
[clearstack][freeimage layer=0]
[eval exp="f.s31=1"]
[hazure]
[cm][ka]
@jump target=*a31_common
*a31_2
[eval exp="f.choice= 32 "]
[clearstack][freeimage layer=0]
[eval exp="f.s31=2"]
[hazure]
[cm][ka]
@jump target=*a31_common
*a31_3
[eval exp="f.choice= 32 "]
[clearstack][freeimage layer=0]
[eval exp="f.s31=3"]
[atari]
[van]
[cm][ka]
@jump target=*a31_common

*a31_common
[jump storage="scenario_2/episode/epi8_k6_van.ks" target=*a31_common]



*choice32
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【傭兵が興味深そうに私たちを見つめている。】


[glink target=*a32_1 text="（相変わらず心配性だなあ･･･）" size=17 width=600 x=65 y=200]
[glink target=*a32_2 text="（傭兵さんの前で･･･ちょっと恥ずかしいかも）" size=17 width=600 x=65 y=260]
[glink target=*a32_3 text="（いつもの仕草のはずなのに･･少しドキドキするような）" size=17 width=600 x=65 y=320]


　
[mi]
[s]

*a32_1
[eval exp="f.choice= 33 "]
[clearstack][freeimage layer=0]
[eval exp="f.s32=1"]
[hazure]
[cm][ka]
@jump target=*a32_common
*a32_2
[eval exp="f.choice= 33 "]
[clearstack][freeimage layer=0]
[eval exp="f.s32=2"]
[hazure]
[cm][ka]
@jump target=*a32_common
*a32_3
[eval exp="f.choice= 33 "]
[clearstack][freeimage layer=0]
[eval exp="f.s32=3"]
[atari]
[rans]
[cm][ka]
@jump target=*a32_common

*a32_common
[jump storage="scenario_2/episode/epi8_k6_van.ks" target=*a32_common]




*choice33
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【悪魔なんて･･･そんなイメージではないと思うのだが･･･。】


[glink target=*a33_1 text="（でもまだつきあいも浅いし、わからないよね･･･）" size=17 width=600 x=65 y=200]
[glink target=*a33_2 text="（そうだよね･･･クライストさん優しいし、そんなことないと思うけど）" size=17 width=600 x=65 y=260]
[glink target=*a33_3 text="（クライストさんもしかして･･･実はすごく恐い人･･･なの･･･？）" size=17 width=600 x=65 y=320]



　
[mi]
[s]

*a33_1
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s33=1"]
[hazure]
[cm][ka]
@jump target=*a33_common
*a33_2
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s33=2"]
[atari]
[kra]
[cm][ka]
@jump target=*a33_common
*a33_3
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s33=3"]
[hazure]
[cm][ka]
@jump target=*a33_common

*a33_common
[jump storage="scenario_2/episode/epi8_k6_van.ks" target=*a33_common]


*choice34
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（何が、そういうわけ、なんだろう･･･）】


[glink target=*a34_1 text="（何か、変に疑われてる･･･？）" size=17 width=600 x=65 y=200]
[glink target=*a34_2 text="（すっごい勘違いされてる気がする･･･）" size=17 width=600 x=65 y=260]
[glink target=*a34_3 text="（わけわかんないや･･･）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a34_1
[eval exp="f.choice= 35 "]
[clearstack][freeimage layer=0]
[eval exp="f.s34=1"]
[atari]
[rans]
[cm][ka]
@jump target=*a34_common
*a34_2
[eval exp="f.choice= 35 "]
[clearstack][freeimage layer=0]
[eval exp="f.s34=2"]
[hazure]
[cm][ka]
@jump target=*a34_common
*a34_3
[eval exp="f.choice= 35 "]
[clearstack][freeimage layer=0]
[eval exp="f.s34=3"]
[hazure]
[cm][ka]
@jump target=*a34_common

*a34_common
[jump storage="scenario_2/episode/epi8_k6_rans.ks" target=*a34_common]




*choice35
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（変なの･･）】


[glink target=*a35_1 text="（なんだかランスロットらしくないけど･･･）" size=17 width=600 x=65 y=200]
[glink target=*a35_2 text="（･･･やっぱり気に入らないんじゃ･･･）" size=17 width=600 x=65 y=260]
[glink target=*a35_3 text="（ランスロット、体調でも悪いのかな･･･）" size=17 width=600 x=65 y=320]


　
[mi]
[s]

*a35_1
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s35=1"]
[atari]
[rans]
[cm][ka]
@jump target=*a35_common

*a35_2
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s35=2"]
[hazure]
[cm][ka]
@jump target=*a35_common

*a35_3
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s35=3"]
[hazure]
[cm][ka]
@jump target=*a35_common

*a35_common
[jump storage="scenario_2/episode/epi8_k6_rans.ks" target=*a35_common]



*choice36
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（怪我だけはしてないといいんだけど･･･）】


[glink target=*a36_1 text="（とにかく心配だな･･･）" size=17 width=600 x=65 y=200]
[glink target=*a36_2 text="（お願い･･･クライストさん･･･無事で戻ってきて･･･）" size=17 width=600 x=65 y=260]
[glink target=*a36_3 text="（私たちを助けたせいで、怪我でもされたらなんかめんどくさいし･･･）" size=17 width=600 x=65 y=320]
　

[mi]
[s]

*a36_1
[eval exp="f.choice= 37 "]
[clearstack][freeimage layer=0]
[eval exp="f.s36=1"]
[hazure]
[cm][ka]
@jump target=*a36_common
*a36_2
[eval exp="f.choice= 37 "]
[clearstack][freeimage layer=0]
[eval exp="f.s36=2"]
[atari]
[kra]
[cm][ka]
@jump target=*a36_common
*a36_3
[eval exp="f.choice= 37 "]
[clearstack][freeimage layer=0]
[eval exp="f.s36=3"]
[hazure]
[cm][ka]
@jump target=*a36_common

*a36_common
[jump storage="scenario_2/episode/epi8_k6_kra.ks" target=*a36_common]


*choice37
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（クライストさんが･･･[w]髪･･･髪に[w]き･･･キス･･･）】

[glink target=*a37_1 text="（うわああああっ･･･恥ずかしい･･･！）" size=17 width=600 x=65 y=200]
[glink target=*a37_2 text="（なっ･･･なんでいきなりこんな･･･）" size=17 width=600 x=65 y=260]
[glink target=*a37_3 text="（キッザー･･･）" size=17 width=600 x=65 y=320]

　
[mi]
[s]

*a37_1
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s37=1"]
[atari]
[kra]
[cm][ka]
@jump target=*a37_common
*a37_2
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s37=2"]
[hazure]
[cm][ka]
@jump target=*a37_common
*a37_3
[eval exp="f.choice= 107 "]
[clearstack][freeimage layer=0]
[eval exp="f.s37=3"]
[hazure]
[cm][ka]
@jump target=*a37_common

*a37_common
[jump storage="scenario_2/episode/epi8_k6_kra.ks" target=*a37_common]



*choice107
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color="blue"]【（もう･･･だめ･･･っ）】

[r]
[if exp="sf.k7_1==1"]
[glink target=*k7_1 text="（ランスロット！！）" size=17 width=600 x=65 y=197]
[else]
[glink target=*k7_1 color=blue text="（ランスロット！！）" size=17 width=600 x=65 y=197]
[endif]

[if exp="sf.k7_2==1"]
[glink target=*k7_2 text="（ライオネス！！）" size=17 width=600 x=65 y=257]
[else]
[glink target=*k7_2 color=blue text="（ライオネス！！）" size=17 width=600 x=65 y=257]
[endif]


[if exp="f.b6==1&&sf.k7_3==1"]
[glink target=*k7_3 text="（ヴァンディットさん！！）" size=17 width=600 x=65 y=317]
[elsif exp="f.b6==1"]
[glink target=*k7_3 color=blue text="（ヴァンディットさん！！）" size=17 width=600 x=65 y=317]
[endif]




[if exp="sf.k7_4==1&&f.b6!=1"]
[glink target=*k7_4 text="（クライストさん！！）" size=17 width=600 x=65 y=317]
[elsif exp="f.b6!=1"]
[glink target=*k7_4 color=blue text="（クライストさん！！）" size=17 width=600 x=65 y=317]
[elsif exp="sf.k7_4==1"]
[glink target=*k7_4 text="（クライストさん！！）" size=17 width=600 x=65 y=377]
[else]
[glink target=*k7_4 color=blue text="（クライストさん！！）" size=17 width=600 x=65 y=377]
[endif]


[if exp="sf.k7_5==1&&f.b6!=1"]
[glink target=*k7_5 text="（でも、こんなところで諦めない！！）" size=17 width=600 x=65 y=377]
[elsif exp="f.b6!=1"]
[glink target=*k7_5 color=blue text="（でも、こんなところで諦めない！！）" size=17 width=600 x=65 y=377]
[elsif exp="sf.k7_5==1"]
[glink target=*k7_5 text="（でも、こんなところで諦めない！！）" size=17 width=600 x=65 y=437]
[else]
[glink target=*k7_5 color=blue text="（でも、こんなところで諦めない！！）" size=17 width=600 x=65 y=437]
[endif]






[mi]
[s]

*k7_1
[eval exp="sf.k7_1=1"]
[eval exp="f.choice= 38 "]
[clearstack][freeimage layer=0]
[eval exp="f.a7= 1 "]
[rans]
[hazure]
[cm][ka]
@jump target=*k7_rans

*k7_2
[eval exp="sf.k7_2=1"]
[eval exp="f.choice= 38 "]
[clearstack][freeimage layer=0]
[eval exp="f.b7= 1 "]
[lion]
[hazure]
[cm][ka]
@jump target=*k7_lion

*k7_3
[eval exp="sf.k7_3=1"]
[eval exp="f.choice= 38 "]
[clearstack][freeimage layer=0]
[eval exp="f.c7= 1 "]
[van]
[hazure]
[cm][ka]
@jump target=*k7_van

*k7_4
[eval exp="sf.k7_4=1"]
[eval exp="f.choice= 38 "]
[clearstack][freeimage layer=0]
[eval exp="f.d7= 1 "]
[kra]
[hazure]
[cm][ka]
@jump target=*k7_kra

*k7_5
[eval exp="sf.k7_5=1"]
[eval exp="f.choice= 38 "]
[clearstack][freeimage layer=0]
[eval exp="f.e7= 1 "]
[hazure]
[cm][ka]
@jump target=*kyoutuu39

*k7_rans
[jump storage="scenario_2/episode/epi9.ks" target=*k7_rans]

*k7_lion
[jump storage="scenario_2/episode/epi9.ks" target=*k7_lion]

*k7_van
[jump storage="scenario_2/episode/epi9.ks" target=*k7_van]

*k7_kra
[jump storage="scenario_2/episode/epi9.ks" target=*k7_kra]

*kyoutuu39
[jump storage="scenario_2/episode/epi9.ks" target=*kyoutuu39]



*choice38
[clearstack][freeimage layer=0]
[eval exp="f.snowfall=0"]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【そんな気はするのだが･･･】
*a38

[glink target=*a38_1 text="「･･そんなこと、聞かなくても･･･クライストさんの気持ちは決まってるんだよね？」" size=17 width=600 x=65 y=200]
[glink target=*a38_2 text="「･･･ここまで引っ張っておいて･･･クライストさんは断る気なの？」" size=17 width=600 x=65 y=260]
[glink target=*a38_3 text="「お願い、クライストさん、私たちに力、貸して？」" size=17 width=600 x=65 y=320]

;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 7 "]

[mi]
[s]

*a38_1
[eval exp="f.choice= 39 "]
[clearstack][freeimage layer=0]
[eval exp="f.s38=1"]
[hazure]
[cm][ka]
「･･･[name]ちゃん･･･。[w]やれやれ、たとえそうでも、俺は君の口から聞きたかったのにな」[ikkatu]
[r]クライストが残念そうに笑う。[ikkatu][r]
@jump target=*a38_common
*a38_2
[eval exp="f.choice= 39 "]
[clearstack][freeimage layer=0]
[eval exp="f.s38=2"]
[hazure]
[cm][ka]
「･･･なかなかの駆け引き上手だね、君は。仕方ないな･･･」[ikkatu]
[r]クライストがあきらめたように笑う。[ikkatu][r]
@jump target=*a38_common
*a38_3
[eval exp="f.choice= 39 "]
[clearstack][freeimage layer=0]
[eval exp="f.s38=3"]
[atari]
[kra]
[cm][ka]
「･･･そんな可愛い顔でお願いされたら、断れないな。[w]･･･うん、いいよ」[ikkatu]
[r]クライストが微笑む。[ikkatu][r]
@jump target=*a38_common

*a38_common
[jump storage="scenario_2/episode/epi9.ks" target=*a38_common]


*choice39
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【あのときクライストがいった言葉がふいに思い出されて、ちょっと恥ずかしくなる】


[glink target=*a39_1 text="（で、でもクライストさんいつもあんなこと言ってるし･･･あんまり真に受けないほうがいいのかも）" size=17 width=600 x=65 y=200]
[glink target=*a39_2 text="（私のために･･･考えれば考えるほど恥ずかしい･･･）" size=17 width=600 x=65 y=260]
[glink target=*a39_3 text="（でも、クライストさん、どうして私のために･･･？）" size=17 width=600 x=65 y=320]




[mi]
[s]

*a39_1
[eval exp="f.choice= 108 "]
[clearstack][freeimage layer=0]
[eval exp="f.s39=1"]
[hazure]
[cm][ka]
@jump target=*a39_common
*a39_2
[eval exp="f.choice= 108 "]
[clearstack][freeimage layer=0]
[eval exp="f.s39=2"]
[atari]
[kra]
[cm][ka]
@jump target=*a39_common
*a39_3
[eval exp="f.choice= 108 "]
[clearstack][freeimage layer=0]
[eval exp="f.s39=3"]
[hazure]
[cm][ka]
@jump target=*a39_common

*a39_common
[jump storage="scenario_2/episode/epi10.ks" target=*a39_common]




*choice108
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【街に行く？】

[if exp="sf.k8_1==1"]
[glink target=*k8_1 text="ライオネスと一緒に街の人の手伝いをする" size=17 width=600 x=65 y=200]
[else]
[glink target=*k8_1 color=blue text="ライオネスと一緒に街の人の手伝いをする" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k8_2==1"]
[glink target=*k8_2 text="王宮に行ってみる" size=17 width=600 x=65 y=260]
[else]
[glink target=*k8_2 color=blue text="王宮に行ってみる" size=17 width=600 x=65 y=260]
[endif]

　
[mi]
[s]

*k8_1
[eval exp="sf.k8_1=1"]
[eval exp="f.choice= 109 "]
[clearstack][freeimage layer=0]
[atari]
[lion]
[eval exp="f.a8= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*kyoutuu43a

*k8_2
[eval exp="sf.k8_2=1"]
[eval exp="f.choice= 113 "]
[clearstack][freeimage layer=0]
[atari]
[kra]
[rans]
[eval exp="f.b8= 1 "]
[cm][ka]
@jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*kyoutuu43b



*choice109
[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【何をする？】

[if exp="sf.k9_1==1"]
[glink target=*k9_1 text="瓦礫の片づけをする" size=17 width=600 x=65 y=200]
[else]
[glink target=*k9_1 color=blue text="瓦礫の片づけをする" size=17 width=600 x=65 y=200]
[endif]
[if exp="sf.k9_2==1"]
[glink target=*k9_2 text="炊き出しを手伝う" size=17 width=600 x=65 y=260]
[else]
[glink target=*k9_2 color=blue text="炊き出しを手伝う" size=17 width=600 x=65 y=260]
[endif]


[mi]
[s]

*k9_1
[eval exp="sf.k9_1=1"]
[if exp="f.c7==1"]
[eval exp="f.choice= 110 "]
[else]
[eval exp="f.choice= 111 "]
[endif]
[clearstack][freeimage layer=0]
[hazure]
[cm][ka]
[eval exp="f.a9= 1 "]
@jump target=*k9_gareki

*k9_2
[eval exp="sf.k9_2=1"]
[eval exp="f.choice= 111 "]
[clearstack][freeimage layer=0]
[hazure]
[cm][ka]
[eval exp="f.b9= 1 "]
@jump target=*k9_takidasi

*k9_gareki
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k9_gareki]

*k9_takidasi
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k9_takidasi]


*choice110
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【気になるけど･･･】


[if exp="sf.k10_1==1"]
[glink target=*k10_1 text="追いかけてみる" size=17 width=600 x=65 y=200]
[else]
[glink target=*k10_1 color=blue text="追いかけてみる" size=17 width=600 x=65 y=200]
[endif]
[if exp="sf.k10_2==1"]
[glink target=*k10_2 text="追いかけない" size=17 width=600 x=65 y=260]
[else]
[glink target=*k10_2 color=blue text="追いかけない" size=17 width=600 x=65 y=260]
[endif]



[mi]
[s]

*k10_1
[eval exp="sf.k10_1=1"]
[eval exp="f.choice= 112 "]
[clearstack][freeimage layer=0]
[atari]
[van]
[eval exp="f.a10= 1 "]
[cm][ka]
@jump target=*k10_oikakeru
*k10_2
[eval exp="sf.k10_2=1"]
[eval exp="f.choice= 40 "]
[clearstack][freeimage layer=0]
[atari]
[lion]
[eval exp="f.b10= 1 "]
[cm][ka]
@jump target=*k9_takidasi_sonogo




*k10_oikakeru
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k10_oikakeru]

*k9_takidasi_sonogo
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k9_takidasi_sonogo]


*choice111
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【（ライオネス･･･どうしたんだろう。いつもと様子が･･･）】

[if exp="sf.k11_1==1"]
[glink target=*k11_1 text="聞いてみる" size=17 width=600 x=65 y=200]
[else]
[glink target=*k11_1 color=blue text="聞いてみる" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k11_2==1"]
[glink target=*k11_2 text="作業に戻る" size=17 width=600 x=65 y=260]
[else]
[glink target=*k11_2 color=blue text="作業に戻る" size=17 width=600 x=65 y=260]
[endif]


　
[mi]
[s]

*k11_1
[eval exp="sf.k11_1=1"]
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[atari]
[lion]
[eval exp="f.a11= 1 "]
[cm][ka]

*k11_common
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k11_1]

*k11_2
[eval exp="sf.k11_2=1"]
[eval exp="f.choice= 40 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.b11= 1 "]
[cm][ka]
*k9_takidasi_sonogo2
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k11_2]






*choice40
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]
【（私とライオネスがお似合いだなんて･･･そんなふうに見られてたの！？）】



[glink target=*a40_1 text="（は、恥ずかしい･･･）" size=17 width=600 x=65 y=200]
[glink target=*a40_2 text="（ちょっとやだな･･･）" size=17 width=600 x=65 y=260]
[glink target=*a40_3 text="（そんなにお似合いなのかな･･･）" size=17 width=600 x=65 y=320]



[mi]
[s]

*a40_1
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s40=1"]
[atari]
[lion]
[cm][ka]
@jump target=*a40_common
*a40_2
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s40=2"]
[hazure]
[cm][ka]
@jump target=*a40_common
*a40_3
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s40=3"]
[hazure]
[cm][ka]
@jump target=*a40_common

*a40_common
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*a40_common]


*choice112
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【（ヴァンディットさん･･･絶対何か隠してる･･･）】


[if exp="sf.k12_1==1"]
[glink target=*k12_1 text="ヴァンディットの言うとおり、王都に戻る" size=17 width=600 x=65 y=200]
[else]
[glink target=*k12_1 color=blue text="ヴァンディットの言うとおり、王都に戻る" size=17 width=600 x=65 y=200]
[endif]

[if exp="sf.k12_2==1"]
[glink target=*k12_2 text="戻らない" size=17 width=600 x=65 y=260]
[else]
[glink target=*k12_2 color=blue text="戻らない" size=17 width=600 x=65 y=260]
[endif]



[mi]
[s]

*k12_1
[eval exp="sf.k12_1=1"]
[eval exp="f.choice= 40 "]
[clearstack][freeimage layer=0]
[eval exp="f.a12= 1 "]
[hazure]
[cm][ka]
@jump target=*k12_modoru

*k12_2
[eval exp="sf.k12_2=1"]
[eval exp="f.choice= 901 "]
[clearstack][freeimage layer=0]
[eval exp="f.b12= 1 "]
[hazure]
[cm][ka]
@jump storage="scenario_2/episode/epi10_k12_van.ks" target=*modoranai


*k12_modoru
[jump storage="scenario_2/episode/epi10_k8_lion.ks" target=*k12_modoru]



*choice901
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（つまり･･･のろまってこと･･･？）】


[glink target=*a_van_sp text="（ちょっとムカッ･･･言い方もいやみくさいし･･･）" size=17 width=600 x=65 y=200]
[glink target=*a_van_sp1 text="（そんなに足遅いのかなぁ･･･なんだか複雑な気分）" size=17 width=600 x=65 y=260]



[mi]
[s]


*a_van_sp
[eval exp="f.choice= 902 "]
[clearstack][freeimage layer=0]
[eval exp="f.s901=1"]
[hazure]
[cm][ka]
@jump target=*a_van_sp_common

*a_van_sp1
[eval exp="f.choice= 902 "]
[clearstack][freeimage layer=0]
[eval exp="f.s901=2"]
[atari]
[van]
[cm][ka]
@jump target=*a_van_sp_common

*a_van_sp_common
[jump storage="scenario_2/episode/epi10_k12_van.ks" target=*a_van_sp_common]


*choice902
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【言いよどむ私に追い討ちをかけるようにヴァンディットは言葉を放った。】
[fadeoutbgm time=3000]


[glink target=*a_van1_sp text="（･･･そんなふうに言わなくても･･･）" size=17 width=600 x=65 y=200]
[glink target=*a_van1_sp1 text="（･･･きつい言い方だけど、当然の反応といえばそうなのかな･･･）" size=17 width=600 x=65 y=260]



[mi]
[s]

*a_van1_sp
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 903 "]
[clearstack][freeimage layer=0]
[eval exp="f.s902=1"]
[atari]
[van]
[cm][ka]
*a_van1_sp_common
[jump storage="scenario_2/episode/epi10_k12_van.ks" target=*a_van1_sp]

*a_van1_sp1
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 903 "]
[clearstack][freeimage layer=0]
[eval exp="f.s902=2"]
[hazure]
[cm][ka]
*a_van2_sp_common
[jump storage="scenario_2/episode/epi10_k12_van.ks" target=*a_van1_sp1]




*choice113
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【（･･･ど、どうしよう･･･とりあえず、どっちかと食事にいくしかないのかな･･･）】
[r]
[if exp="sf.k13_1==1"]
[glink target=*k13_1 text="クライストと食事に行く" size=17 width=600 x=65 y=200]
[else]
[glink target=*k13_1 color=blue text="クライストと食事に行く" size=17 width=600 x=65 y=200]
[endif]
[if exp="sf.k13_2==1"]
[glink target=*k13_2 text="ランスロットと一緒に行く" size=17 width=600 x=65 y=260]
[else]
[glink target=*k13_2 color=blue text="ランスロットと一緒に行く" size=17 width=600 x=65 y=260]
[endif]
[if exp="sf.k13_3==1"]
[glink target=*k13_3 text="ひとりで本部に帰る" size=17 width=600 x=65 y=320]
[else]
[glink target=*k13_3 color=blue text="ひとりで本部に帰る" size=17 width=600 x=65 y=320]
[endif]



　
[mi]
[s]

*k13_1
[eval exp="sf.k13_1=1"]
[eval exp="f.choice= 41 "]
[clearstack][freeimage layer=0]
[atari]
[kra]
[eval exp="f.a13= 1 "]
[cm][ka]
@jump target=*k13_kra

*k13_2
[eval exp="sf.k13_2=1"]
[eval exp="f.choice= 43 "]
[clearstack][freeimage layer=0]
[atari]
[rans]
[eval exp="f.b13= 1 "]
[cm][ka]
@jump target=*k13_rans

*k13_3
[eval exp="sf.k13_3=1"]
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.c13= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*k13_3]

*k13_kra
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*k13_kra]

*k13_rans
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*k13_rans]


*choice41
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「･･･ん？何？」】


[glink target=*a41_1 text="「あの･･･蒼い悪魔･･･って･･･？」" size=17 width=600 x=65 y=200]
[glink target=*a41_2 text="「女の子をとられたって･･･？」" size=17 width=600 x=65 y=260]



[mi]
[s]

*a41_1
[eval exp="f.choice= 42 "]
[clearstack][freeimage layer=0]
[eval exp="f.s41=1"]
[hazure]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a41_1]


*a41_2
[eval exp="f.choice= 42 "]
[clearstack][freeimage layer=0]
[eval exp="f.s41=2"]
[atari]
[kra]
[cm][ka]
[eval exp="tf.sentakuchuu= 0 "]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a41_2]

*choice42
[clearstack][freeimage layer=0]



[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（クライストさんが･･･私を守ってくれるって･･･？）】


[glink target=*a42_1 text="（嬉しい･･･）" size=17 width=600 x=65 y=200]
[glink target=*a42_2 text="（そんなこと、急に言われても･･）" size=17 width=600 x=65 y=260]
[mi]
[s]

*a42_1
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s42=1"]
[atari]
[kra]
[cm][ka]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a42_1]


*a42_2
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s42=2"]
[hazure]
[cm][ka]


*a42_common
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a42_2]


*choice43
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（･･･ランスロットだって、戦場に出るんだものね･･･）】


[glink target=*a43_1 text="（心配、だな･･･）" size=17 width=600 x=65 y=200]
[glink target=*a43_2 text="（でも、私より戦場慣れしてる彼のことだもの、私が心配することでもないよね･･･）" size=17 width=600 x=65 y=260]



[mi]
[s]

*a43_1
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s43=1"]
[atari]
[rans]
[cm][ka]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a43_1]


*a43_2
;次自由行動の場合自由行動フラグオン
[eval exp="f.jiyuu= 8 "]
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s43=2"]
[hazure]
[cm][ka]
[jump storage="scenario_2/episode/epi10_k8_rans.ks" target=*a43_2]


*choice903
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【ヴァンディットが私の腕をとって、強引に無理やり立ち上がらせる―。】

[glink target=*a_van2_sp text="その手を振り払う" size=17 width=600 x=65 y=200]
[glink target=*a_van2_sp1 text="ヴァンディットの言うことに従う" size=17 width=600 x=65 y=260]


[mi]
[s]

*a_van2_sp
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s903=1"]
[atari]
[van]
[cm][ka]
[eval exp="f.sentakuchuu= 0 "]
@jump target=*a_van2_sp_kekka

*a_van2_sp1
[eval exp="f.choice= 114 "]
[clearstack][freeimage layer=0]
[eval exp="f.s903=2"]
[hazure]
[cm][ka]
[eval exp="f.sentakuchuu= 0 "]
@jump target=*a_van2_sp1_kekka

*a_van2_sp_kekka
[jump storage="scenario_2/episode/epi11_c.ks" target=*a_van2_sp_kekka]
*a_van2_sp1_kekka
[jump storage="scenario_2/episode/epi11_c.ks" target=*a_van2_sp1_kekka]


*choice114
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【「ううーん･･･婚約式かあ･･･」】

[if exp="sf.k14_1==1"]
[glink target=*k14_1 text="婚約式に出る" size=17 width=600 x=65 y=200]
[else]
[glink target=*k14_1 color=blue text="婚約式に出る" size=17 width=600 x=65 y=200]
[endif]
[if exp="sf.k14_2==1"]
[glink target=*k14_2 text="婚約式に出ない" size=17 width=600 x=65 y=260]
[else]
[glink target=*k14_2 color=blue text="婚約式に出ない" size=17 width=600 x=65 y=260]
[endif]



;次自由行動の場合自由行動フラグオン
[mi]
[s]

*k14_1
[eval exp="sf.k14_1=1"]
[eval exp="f.jiyuu= 9.5 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.a14= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi12.ks" target=*k14_1]


*k14_2
[eval exp="sf.k14_2=1"]
[eval exp="f.jiyuu= 9 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.b14= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi12.ks" target=*k14_2]



*choice117
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【さんざん迷った末に、私が下した決断は･･･】


[if exp="sf.k17_1==1"]
[glink target=*k17_1 text="魔剣ヴァエルの具現化の方法を探しに、ウェスタへ行く" size=17 width=600 x=65 y=200][else]
[glink target=*k17_1 color=blue text="魔剣ヴァエルの具現化の方法を探しに、ウェスタへ行く" size=17 width=600; x=65 y=200]
[endif]

;[if exp="sf.k17_2==1"][gray][else][blue][endif]
;王宮騎士団に入る



[mi]
[s]

*k17_1

[eval exp="sf.k17_1=1"]
[eval exp="f.jiyuu=11"]
[eval exp="f.choice= 118 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.a17= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi14.ks" target=*k17_1]

*k17_2
[eval exp="sf.k17_2=1"]

[eval exp="f.choice= 200 "]
[clearstack][freeimage layer=0]
[hazure]
[eval exp="f.b17= 1 "]
[cm][ka]
[jump storage="scenario_2/episode/epi14.ks" target=*k17_2]


*choice118


[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（ら、ライオネス･･･た、確かにこのほうが安全は安全だけど･･･）】

[glink target=*w1_1 text="（で、でも･･･密着しすぎ･･･）" size=17 width=600 x=65 y=200]
[glink target=*w1_2 text="（ちょっと暑苦しい･･･）" size=17 width=600 x=65 y=260]



[mi]
[s]

*w1_1
[eval exp="f.choice= 119 "]
[clearstack][freeimage layer=0]
[eval exp="f.s118=1"]
[atari]
[lion]
[cm][ka]
[jump storage="scenario_2/episode/w_epi1.ks" target=*w1_1]

*w1_2
[eval exp="f.choice= 119 "]
[clearstack][freeimage layer=0]
[eval exp="f.s118=2"]
[hazure]
[cm][ka]
@jump target=*w1_common




*w1_common
[jump storage="scenario_2/episode/w_epi1.ks" target=*w1_common]



*choice119

[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【いまだ私の体をかかえたまま、ぼそりとつぶやくライオネス。】

[glink target=*w2_1 text="（確かに･･･そうかも･･でも）" size=17 width=600 x=65 y=200]
[glink target=*w2_2 text="（確かに･･･そうかも･･･）" size=17 width=600 x=65 y=260]



[mi]
[s]

*w2_1
[eval exp="f.jiyuu=12"]
[eval exp="f.choice= 120 "]
[clearstack][freeimage layer=0]
[eval exp="f.s119=1"]
[atari]
[kra]

[cm][ka]
[jump storage="scenario_2/episode/w_epi1.ks" target=*w2_1]



*w2_2
[eval exp="f.jiyuu=12"]
[eval exp="f.choice= 120 "]
[clearstack][freeimage layer=0]
[eval exp="f.s119=2"]
[hazure]
[cm][ka]
[jump storage="scenario_2/episode/w_epi1.ks" target=*w2_2]






*choice120
[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【私は首を傾げるばかりだ。反対に、クライストは楽しそうににこにこ笑っている。】

[glink target=*w3_1 text="（･･･もう･･･）" size=17 width=600 x=65 y=200]
[glink target=*w3_2 text="（･･･なんか、ちょっと馬鹿にされてる？）" size=17 width=600 x=65 y=260]


[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*w3_1
[eval exp="f.choice= 121 "]
[clearstack][freeimage layer=0]
[eval exp="f.s120=1"]
[atari]
[kra]
[cm][ka]
@jump target=*w3_common

*w3_2
[eval exp="f.choice= 121 "]
[clearstack][freeimage layer=0]
[eval exp="f.s120=2"]
[hazure]
[cm][ka]
@jump target=*w3_common




*w3_common
[jump storage="scenario_2/episode/w_epi2.ks" target=*w3_common]



*choice121

[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「ランスロットは剣の先生だよ？そんなんじゃ･･･」】

[glink target=*w4_1 text="（･･･そうだよ、そんなこと、あるわけない）" size=17 width=600 x=65 y=200]
[glink target=*w4_2 text="（･･･そんなんじゃ･･･ないはず･･･だよね、たぶん･･･）" size=17 width=600 x=65 y=260]


[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*w4_1
[eval exp="f.choice= 122 "]
[clearstack][freeimage layer=0]
[eval exp="f.s121=1"]
[hazure]
[cm][ka]
@jump target=*w4_common

*w4_2
[eval exp="f.choice= 122 "]
[clearstack][freeimage layer=0]
[eval exp="f.s121=2"]
[atari]
[rans]
[cm][ka]
@jump target=*w4_common




*w4_common
[jump storage="scenario_2/episode/w_epi2.ks" target=*w4_common]

*choice122

[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「ね、ダメ？」】

[glink target=*w5_1 text="ダメ" size=17 width=600 x=65 y=200]
[glink target=*w5_2 text="いいよ" size=17 width=600 x=65 y=260]


[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*w5_1
[eval exp="f.choice=123"]
[clearstack][freeimage layer=0]
[eval exp="f.s122=1"]
[hazure]
[cm][ka]
[jump storage="scenario_2/episode/w_epi2.ks" target=*w5_1]


*w5_2
[eval exp="f.choice=123"]
[clearstack][freeimage layer=0]
[eval exp="f.s122=2"]
[atari]
[kra]
[cm][ka]
[jump storage="scenario_2/episode/w_epi2.ks" target=*w5_2]








*choice123

[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（なんか･･･意外な感じもする）】
[glink target="*w6_1" text="なんだか、澄んだ色で綺麗･･･" size=17 width=600 x=65 y=200]
[glink target="*w6_2" text="やっぱり、顔、ランスロットに似てるなあ" size=17 width=600 x=65 y=260]





[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*w6_1
[eval exp="f.choice= 124 "]
[eval exp="f.jiyuu=13"]
[clearstack][freeimage layer=0]
[eval exp="f.s123=1"]
[atari]
[lion]
[cm][ka]
@jump target=*w6_common

*w6_2
[eval exp="f.choice= 124 "]
[eval exp="f.jiyuu=13"]
[clearstack][freeimage layer=0]
[eval exp="f.s123=2"]
[atari]
[rans]
[cm][ka]
@jump target=*w6_common



*w6_common
[jump storage="scenario_2/episode/w_epi2.ks" target=*w6_common]



*choice124

[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（･･････そんな･･･クライストさんが、まさか）】
[glink target="*w7_1" text="･･･でも、まさかそんなこと･･･ない、よね？" size=17 width=600 x=65 y=200]
[glink target="*w7_2" text="信じたくないけど･･･でもありえない話じゃない" size=17 width=600 x=65 y=260]






[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*w7_1

[clearstack][freeimage layer=0]

[eval exp="f.s124=1"]
[atari]
[kra]
[cm][ka]
[eval exp="f.jiyuu=14"]


@jump target=*w7_common

*w7_2

[clearstack][freeimage layer=0]
[eval exp="f.s124=2"]
[hazure]
[cm][ka]
;判定


[eval exp="f.jiyuu=14"]



@jump target=*w7_common




*w7_common
[jump storage="scenario_2/episode/w_epi3.ks" target=*w7_common]



*choice125
[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【クライストさんに･･･】
[glink target="*kra1_1" text="きいてみようかな" size=17 width=600 x=65 y=200]
[glink target="*kra1_2" text="やめておこう" size=17 width=600 x=65 y=260]

[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*kra1_1
[eval exp="f.choice=126"]
[clearstack][freeimage layer=0]
[eval exp="f.s125=1"]
[atari]
[kra]
[cm][ka]
[jump storage="scenario_2/episode/w_k_epi1.ks" target=*kra0_common]


*kra1_2
[eval exp="f.choice=126"]
[clearstack][freeimage layer=0]
[eval exp="f.s125=2"]
[hazure]
[cm][ka]
@jump target=*kra1_common


*kra1_common
[jump storage="scenario_2/episode/w_k_epi1.ks" target=*kra1_common]


*choice126

[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（自業自得･･･）】

[glink target=*kra2_1 text="（そう、なのかな･･･）" size=17 width=600 x=65 y=200]
[glink target=*kra2_2 text="（そんなんじゃない！）" size=17 width=600 x=65 y=260]
　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*kra2_1
[eval exp="f.choice=127"]
[clearstack][freeimage layer=0]
[eval exp="f.s126=1"]
[hazure]
[cm][ka]
[jump storage="scenario_2/episode/w_k_epi1.ks" target=*kra2_common]

*kra2_2
[eval exp="f.choice=127"]
[clearstack][freeimage layer=0]
[eval exp="f.s126=2"]
[atari]
[kra]
[cm][ka]
[jump storage="scenario_2/episode/w_k_epi1.ks" target=*kra2_common1]


*choice127

[clearstack][freeimage layer=0]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（クライストさんが、あんなふうに激するなんて･･･）】

[glink target=*kra3_1 text="あんなふうに、どならなくても･･･" size=17 width=600 x=65 y=200]
[glink target=*kra3_2 text="私･･･馬鹿だな･･･" size=17 width=600 x=65 y=260]


　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*kra3_1
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s127=1"]
[hazure]
[cm][ka]
@jump target=*kra3_common

*kra3_2
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s127=2"]
[atari]
[kra]
[cm][ka]
@jump target=*kra3_common


*kra3_common
[jump storage="scenario_2/episode/w_k_epi1.ks" target=*kra3_common]

*choice128

[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【そんな驚くことじゃない、って･･･】

[glink target=*l1_1 text="「う･･･ご、ごめんなさい･･･」" size=17 width=600 x=65 y=200]
[glink target=*l1_2 text="「だ、だって怖かったんだもの！」" size=17 width=600 x=65 y=260]

　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*l1_1
[eval exp="f.choice=129"]
[clearstack][freeimage layer=0]
[eval exp="f.s128=1"]
[atari]
[lion]
[cm][ka]
@jump target=*l1_common

*l1_2
[eval exp="f.choice=129"]
[clearstack][freeimage layer=0]
[eval exp="f.s128=2"]
[hazure]
[cm][ka]
@jump target=*l1_common


*l1_common
[jump storage="scenario_2/episode/w_l_epi1.ks" target=*l1_common]


*choice129

[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「守ってやる」って･･･】

[glink target=*l2_1 text="「そ、それはランスロットに頼まれたからでしょ？」" size=17 width=600 x=65 y=200]
[glink target=*l2_2 text="「わ、私だって自分の身くらい守れるよ！」" size=17 width=600 x=65 y=260]


　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*l2_1
[eval exp="f.choice=130"]
[clearstack][freeimage layer=0]
[eval exp="f.s129=1"]
[atari]
[lion]
[cm][ka]
@jump target=*l2_common

*l2_2
[eval exp="f.choice=130"]
[clearstack][freeimage layer=0]
[eval exp="f.s129=2"]
[hazure]
[cm][ka]
@jump target=*l2_common


*l2_common
[jump storage="scenario_2/episode/w_l_epi1.ks" target=*l2_common]




*choice130

[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【「どうしてほしい」って･･･】
[glink target="*l3_1" text="よく、わからない･･･" size=17 width=600 x=65 y=200]
[glink target="*l3_2" text="それはきっと･･･" size=17 width=600 x=65 y=260]



　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*l3_1
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s130=1"]
[hazure]
[cm][ka]
@jump target=*l3_common

*l3_2
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s130=2"]
[atari]
[lion]
[cm][ka]
@jump target=*l3_common


*l3_common
[jump storage="scenario_2/episode/w_l_epi1.ks" target=*l3_common]






*choice131

[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（ランスロット･･･）】

[glink target="*r1_1" text="どうしてる、かな･･･大丈夫かな" size=17 width=600 x=65 y=200]
[glink target="*r1_2" text="会いたい、な･･･" size=17 width=600 x=65 y=260]




　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*r1_1
[eval exp="f.choice=132"]
[clearstack][freeimage layer=0]
[eval exp="f.s131=1"]
[hazure]
[cm][ka]
@jump target=*r1_common

*r1_2
[eval exp="f.choice=132"]
[clearstack][freeimage layer=0]
[eval exp="f.s131=2"]
[atari]
[rans]
[cm][ka]
@jump target=*r1_common


*r1_common
[jump storage="scenario_2/episode/w_r_epi1.ks" target=*r1_common]



*choice132

[clearstack][freeimage layer=0]

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（誰に、されたかなんて･･･）】

[glink target=*r2_1 text="ら、ランスロットには関係ないじゃない" size=17 width=600 x=65 y=200]
[glink target=*r2_2 text="･･･そ、それはその･･･。･･･ごめんなさい･･･" size=17 width=600 x=65 y=260]

　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*r2_1
[eval exp="f.choice=133"]
[clearstack][freeimage layer=0]
[eval exp="f.s132=1"]
[hazure]
[cm][ka]
[jump storage="scenario_2/episode/w_r_epi1.ks" target=*r2_common]

*r2_2
[eval exp="f.choice=133"]
[clearstack][freeimage layer=0]
[eval exp="f.s132=2"]
[atari]
[rans]
[cm][ka]
@jump target=*r2_common


*r2_common
[jump storage="scenario_2/episode/w_r_epi1.ks" target=*r2_common]



*choice133

[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=pink]【（どうするって･･･）】

[glink target="*r3_1" text="ランスロットについて関所にいく" size=17 width=600 x=65 y=200]
[glink target="*r3_2" text="船にとどまる" size=17 width=600 x=65 y=260]


　　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*r3_1
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s133=1"]
[atari]
[rans]
[cm][ka]
[jump storage="scenario_2/episode/w_r_epi1.ks" target=*r3_common]

*r3_2
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s133=2"]
[hazure]
[cm][ka]
@jump target=*r3_common


*r3_common
[jump storage="scenario_2/episode/w_r_epi1.ks" target=*r3_common]





*choice333

[clearstack][freeimage layer=0]


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue]【私は･･･】
[glink target=*v_toku_1 text="ヴァンディットについていく" size=17 width=600 x=65 y=200]
[glink target=*v_toku_2 text="そんなことできない" size=17 width=600 x=65 y=260]

[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*v_toku_1
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s333=1"]
[hazure]
[cm][ka]
@jump target=*v_toku_common

*v_toku_2
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s333=2"]
[hazure]
[cm][ka]
@jump target=*v_toku_common


*v_toku_common
[jump storage="scenario_2/episode/epi_van.ks" target=*v_toku_common]

*choice444

[clearstack][freeimage layer=0 time=1000]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r][font color=blue][r]【クレールのことが落ち着いてから･･･】
[glink target="*rem_toku_1" text="･･･そう･･･だね･･･" size=17 width=600 x=65 y=200]
[glink target="*rem_toku_2" text="嫌！" size=17 width=600 x=65 y=260]
　
[eval exp="f.sentakuchuu= 1 ]
[mi]
[s]

*rem_toku_1
;他ルートになるため判定しなおし
[krahantei]
[if exp="f.krakettei==1"]
[eval exp="f.krakettei1=1"]
[eval exp="f.choice=125"]
[elsif exp="f.lionkonkando>=f.ranskonkando"]
[eval exp="f.lionkettei=1"]
[eval exp="f.choice=128"]
[else]
[eval exp="f.ranskettei=1"]
[eval exp="f.choice=131"]
[endif]

[clearstack][freeimage layer=0]
[eval exp="f.s444=1"]
[hazure]
[cm][ka]
@jump target=*rem_toku_common

*rem_toku_2
[eval exp="f.choice=999"]
[clearstack][freeimage layer=0]
[eval exp="f.s444=2"]
[hazure]
[cm][ka]
@jump target=*rem_toku_common


*rem_toku_common
[jump storage="scenario_2/episode/epi_rem.ks" target=*rem_toku_common]


[return]



