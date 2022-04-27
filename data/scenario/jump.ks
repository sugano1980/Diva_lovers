
*saisho
[if exp="f.live2d_on==1"]
[elsif exp="f.chara_on==1"]
[else]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[endif]


;自由行動フラグあったばあい自由行動画面へ
*ok

;サブフラグあった場合サブストの判定ｋｓに戻る
[if exp="f.sub==1"]
[eval exp="f.sub=0"]
[jump storage="sub_story/sub_story_hantei.ks" target=*story2]

[endif]







;エピソードイメージ表示切り替え
;ランスチュートリアル、試験、試験待機中はエピ表示なし
[if exp="f.event_main_3_days==5||f.event_main_3_days==0||f.siken_taiki==1"]
[jump target=*koudou]
[endif]

[if exp="f.choice==2&&f.epi!=1"]
[episode_hyouji]
[elsif exp="f.choice==5&&f.epi!=2"]
[episode_hyouji]

[elsif exp="f.choice==15&&f.jiyuu!=5&&f.epi!=6"]
[episode_hyouji]

[elsif exp="f.choice==25&&f.epi!=8"]
[episode_hyouji]
[elsif exp="f.choice==107&&f.epi!=9"]
[episode_hyouji]
[elsif exp="f.choice==117&&f.epi==12"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi13_hyouji.png" x=510 y=3]
[eval exp="f.epi=13"]


[elsif exp="f.choice==118"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi16_hyouji.png" x=510 y=3]
[eval exp="f.epi=15"]
[elsif exp="f.choice==125"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi_kra1_hyouji.png" x=510 y=3]
[eval exp="f.krakettei1=1"]
[elsif exp="f.choice==128"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi_lion1_hyouji.png" x=510 y=3]
[eval exp="f.lionkettei=1"]
[elsif exp="f.choice==131"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi_rans1_hyouji.png" x=510 y=3]
[eval exp="f.ranskettei=1"]
[elsif exp="f.choice==133"]
[eval exp="f.epi_van=1"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi_van_hyouji.png" x=510 y=3]

[endif]

*koudou

[if exp="f.jiyuu>= 1 "]

[cm]
[ka]
[freeimage layer=3]
@clearfix name="kinou_button"
@clearfix name="role_button"
[skipstop]
[jump target=*jiyuu]


[elsif exp="f.choice==0"]

[jump target=*return]



[elsif exp="f.choice==1"]
[reset]
[ka]
[cm]
[bg storage="black.png" method="shake" time=500]
[stopbgm][stopse]
[playbgm storage="struggle.ogg" loop=true]
[cm]

@jump storage="sentaku.ks" target=*choice1




[elsif exp="f.choice==2"]
[reset]
[ka]
[cm]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]
[message_settei_ad]
;[call storage="live2d_baka_macro.ks"]
[if exp="sf.live2d==1"]
;[live2d_load]
;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off]
;[live2d_on];[live2d_show name="baka0" y=-1.7 x=0.0 scale=3.9]
[else]
[endif]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_on][chara_show name="rans" top=50]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_metoji_warai.gif"]
[stopbgm][stopse]

[bg storage="keiko_tasogare.jpg" time=100]
[playbgm storage="07_romanntisutosann_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice2]



;map
[elsif exp="f.jump_map_choice_3==1"]
[reset]
#
[clearstack]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]
[ka]
[cm]

[if exp="sf.live2d==1"]
;[live2d_load]
;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off]
[else]
[endif]
[stopbgm][stopse]
[eval exp="f.jump_map_choice_3=0"]
[jump storage="episode/epi1.ks" target=*jump_map_choice_3]


[elsif exp="f.choice==3"]
[reset]
;map
[ka]
[cm]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]

[if exp="sf.live2d==1"]
;[live2d_load]
;[live2d_on];[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_load_off]
;[live2d_show name="baka0" y=-1.9 x=0.0 scale=4.3]
[else]
[endif]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_on][chara_show name="rans" top=50]
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_bisyo.gif"]
[stopbgm][stopse]
[message_settei_ad]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[playbgm storage="tw074_musmus.ogg"]
[jump storage="sentaku.ks" target=*choice3]


;map
[elsif exp="f.jump_map_choice_101==1"]
[reset]
#
[clearstack]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]
[ka]
[cm]
[stopbgm][stopse]
[eval exp="f.jump_map_choice_101=0"]
[jump storage="episode/epi1.ks" target=*jump_map_choice_101]



[elsif exp="f.choice==101"]
[reset]
;MAP
[ka]
[cm]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]

[if exp="sf.live2d==1"]
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_on];[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[live2d_load_off]
;[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]
[else]
[endif]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_on][chara_show name="kra" top=50]
[chara_mod name="kra" storage="kra_tatie/Idle_gif_metoji.gif"]
[stopbgm][stopse]
[message_settei_ad]
[playbgm storage="korehaittai_ontama.ogg"]
[bg storage="sakaba2_kaiwa_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice101]

;------------------------

;map
[elsif exp="f.jump_map_choice_991==1"]
[reset]
#
[clearstack]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]

[ka]
[cm]
[stopbgm][stopse]
[eval exp="f.jump_map_choice_991=0"]
[jump storage="episode/epi1.ks" target=*jump_map_choice_991]






[elsif exp="f.choice==991"]
[reset]
;次自由行動

#
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[if exp="f.live2d_on==1"]
;[live2d_off]
;[live2d_delete_all]
[else]
[endif]

[if exp="sf.live2d==1"]
;[live2d_load]
;[live2d_on];[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[live2d_load_off]
;[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[else]
[endif]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_on][chara_show name="lion" height="698" width="456" top=-35]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice991]



;騎士団試験ここまで
[elsif exp="f.choice==4"]
[ka]
[stopbgm][stopse]
[cm]
[fadeinbgm storage="kanashimi_ontama.ogg" time=1000]
[bg storage="uranomori_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice4]


[elsif exp="f.choice==5"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="tw074_musmus.ogg"]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice5]


[elsif exp="f.choice==102"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="mori2_pakutaso.jpg" time=100]
[jump storage="sentaku.ks" target=*choice102]


[elsif exp="f.choice==7"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerushokudou_yoru_tasogare.jpg" time=100]
[playbgm storage="or_raina_p_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice7]


[elsif exp="f.choice==6"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba1_kaiwa_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice6]


[elsif exp="f.choice== 8"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="tw074_musmus.ogg"]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice8]


[elsif exp="f.choice== 9 "]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_yoru_tasogare_ao.jpg" time=100]
[jump storage="sentaku.ks" target=*choice9]


[elsif exp="f.choice==10"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="kokoronomeiro_ontama.ogg"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg" time=100]	
[jump storage="sentaku.ks" target=*choice10]


[elsif exp="f.choice==103"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_kanasimi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice103]	


[elsif exp="f.choice==104"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice104]



[elsif exp="f.choice==11"]
[ka]
[cm]
[stopbgm][stopse]
[fadeinbgm storage="sharomu_musmus.ogg" time=4000 volume=30]
[bg storage="sharomusanbasi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice11]

[elsif exp="f.choice==12"]
[ka]
[cm]
[bg storage="sharomudoukutunaka_tasogare.jpg" time=100]
[stopbgm][stopse]
[jump storage="sentaku.ks" target=*choice12]

[elsif exp="f.choice==13"]
[ka]
[cm]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[stopbgm][stopse]
[jump storage="sentaku.ks" target=*choice13]

[elsif exp="f.choice==14"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kajiya_tasogare.jpg" time=100]
[fadeinbgm storage="koubou_ontama.ogg" time=3000]
[jump storage="sentaku.ks" target=*choice14]

[elsif exp="f.choice==15"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice15]

[elsif exp="f.choice==16"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice16]

[elsif exp="f.choice==17"]
[ka]
[cm]
[stopbgm][stopse]
[jump storage="sentaku.ks" target=*choice17]

[elsif exp="f.choice==18"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice18]

[elsif exp="f.choice==19"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="kaze_onjin.ogg" loop=true]
[bg storage="sougen_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice19]

[elsif exp="f.choice==20"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishonaka_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice20]

[elsif exp="f.choice==21"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="black.png" time=50]
[fadeinbgm storage="yochou_musmus.ogg" time=2000]
[jump storage="sentaku.ks" target=*choice21]

[elsif exp="f.choice==22"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumusekisho_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice22]

[elsif exp="f.choice==23"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumumatinaka1_tasogare.jpg" time=100 time=1000]
[image layer=1 page=fore visible=true storage="vaerumahoujin1.png" top=40 time=2000]
[playbgm storage="sinzou_onjin.ogg"]
[jump storage="sentaku.ks" target=*choice23]

[elsif exp="f.choice==24"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="struggle_sougetuon.ogg"]
[bg storage="erumumatinaka_tasogare.jpg" time=100 time=1000]
[jump storage="sentaku.ks" target=*choice24]

[elsif exp="f.choice==25"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumuhayasi_yuu_tasogare.jpg" time=100]
[playbgm storage="kaze1_onjin.ogg"]
[jump storage="sentaku.ks" target=*choice25]


[elsif exp="f.choice==26"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="takibi_onjin.ogg" volume=50]
[bg storage="erumuhayasi_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice26]

[elsif exp="f.choice==27"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sougen1_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice27]

[elsif exp="f.choice==28"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice28]

[elsif exp="f.choice==105"]
[ka]
[cm]
[stopbgm][stopse]
[anten]
[jump storage="sentaku.ks" target=*choice105]

[elsif exp="f.choice==1055"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishoooheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice1055]


[elsif exp="f.choice==106"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="irainheya_yuu_tasogare.jpg" time=100]
[playbgm storage="raina_sora_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice106]

[elsif exp="f.choice==29"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanshokudo_tasogare.jpg" time=100]
[fadeinbgm storage="tw44_musmus.ogg" time=3000]
[jump storage="sentaku.ks" target=*choice29]

[elsif exp="f.choice==30"]
[ka]
[cm]
[jump storage="sentaku.ks" target=*choice30]

[elsif exp="f.choice==31"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba1_kaiwa_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice31]

[elsif exp="f.choice==32"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="omoi_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice32]

[elsif exp="f.choice==33"]
[ka]
[cm]
[stopbgm][stopse]
[jump storage="sentaku.ks" target=*choice33]

[elsif exp="f.choice==34"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg" time=100]
[playbgm storage="bacchus_sougetuon.ogg"]
[jump storage="sentaku.ks" target=*choice34]

[elsif exp="f.choice==35"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice35]

[elsif exp="f.choice==36"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="omoidenobasyo_ontama.ogg"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice36]

[elsif exp="f.choice==37"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="irainheya_yoru_tasogare.jpg" time=100]
[fadeinbgm storage="odai07_ontama.ogg" time=3000]
[jump storage="sentaku.ks" target=*choice37]

[elsif exp="f.choice==107"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="black.png" time=50]
[playbgm storage="darkhowring_sougetuon.ogg"]
[jump storage="sentaku.ks" target=*choice107]

[elsif exp="f.choice==38&&f.d6==1&&f.snowfall==1||f.choice38&&f.e6== 1&&f.snowfall==1"]

[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[eval exp="f.snowfall=0"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="gaiamori_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice38]

[elsif exp="f.choice==38&&f.snowfall==1"]

[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[eval exp="f.snowfall= 0 "]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="gaiamori_yuu_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice38]


[elsif exp="f.choice==38"]


[ka]
[cm]
[stopbgm][stopse]
[bg storage="gaiamori_yuu_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice38]


[elsif exp="f.choice==39"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice39]


[elsif exp="f.choice==108"]
[ka]
[cm]
[stopbgm]
[jump storage="sentaku.ks" target=*choice108]


[elsif exp="f.choice==109"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_kanasimi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice109]


[elsif exp="f.choice==110"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka1_kanasimi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice110]


[elsif exp="f.choice==111"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka1_kanasimi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice111]


[elsif exp="f.choice==40"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_kanasimi_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice40]


[elsif exp="f.choice==112"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishonaka_tasogare.jpg" time=100]
[playbgm storage="kokusei_musmus.ogg"]
[jump storage="sentaku.ks" target=*choice112]


[elsif exp="f.choice==901"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="vanhayasi_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice901]

[elsif exp="f.choice==902"]
[ka]
[cm]
[stopbgm][stopse]
[fadeinbgm storage="takibi_onjin.ogg" time=4000]
[jump storage="sentaku.ks" target=*choice902]

[elsif exp="f.choice==113"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="oukyuu_tasogare.jpg" time=100]
[playbgm storage="kabocha_musmus.ogg"]
[jump storage="sentaku.ks" target=*choice113]

[elsif exp="f.choice==41"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba2_kaiwa_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice41]

[elsif exp="f.choice==42"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice42]

[elsif exp="f.choice==43"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="oukyuushokudou_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice43]

[elsif exp="f.choice==903"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sensou_lion.jpg" time=100]
[jump storage="sentaku.ks" target=*choice903]



[elsif exp="f.choice==114"]

[jump target="*nomaen"]
;ノマエン判定



[elsif exp="f.choice==117"]
[ka]
[cm]
[stopbgm][stopse]
[anten]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice117]


;ここからウェスタ編選択肢

[elsif exp="f.choice==118"]
[resetfont]
[ka]
[cm]
;メッセージ画面の表示

[stopbgm]
[stopse]
[bg storage="kanpan_tasogare.jpg" time=100]
[playbgm storage="dousureba_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice118]

[elsif exp="f.choice==119&&f.a13!=1"]
[eval exp="f.jiyuu=12"]
[eval exp="f.choice=120"]
[ka]
[cm]
[jump target=*ok]


[elsif exp="f.choice==119"]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="kanpan_tasogare.jpg" time=100]
[playbgm storage="umi_onjin.ogg"]
[jump storage="sentaku.ks" target=*choice119]




;選択肢120
[elsif exp="f.choice==120"]
*sentaku120
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="toshokan_tika_tasogare.jpg" time=100]
[playbgm storage="traditional_sougetuon.ogg"]
[jump storage="sentaku.ks" target=*choice120]



;選択肢121
[elsif exp="f.choice==121"]
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="toshokan_tika_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice121]



;選択肢122
[elsif exp="f.choice==122"]
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="toshokan_tika_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="sentaku.ks" target=*choice122]



;選択肢123
[elsif exp="f.choice==123"]
[message_settei]

[ka]
[cm]
;メッセージ画面変更

[stopbgm]
[stopse]
[bg storage="westa_sakaba_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice123]


;選択肢124
[elsif exp="f.choice==124"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="kokusei_musmus.ogg"]
[bg storage="oka_ac.jpg" time=100]
[jump storage="sentaku.ks" target=*choice124]



;選択肢125

[elsif exp="f.choice==125"]
*sentaku125
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="umi_onjin.ogg"]
[bg storage="romana_tasogare_ac.jpg" time=100]
[jump storage="sentaku.ks" target=*choice125]


;選択肢126

[elsif exp="f.choice==126"]
*sentaku126
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="romana_mizuumi_hotori_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice126]

;選択肢127

[elsif exp="f.choice==127"]
[message_settei]
*sentaku127
[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="umi_onjin.ogg"]
[bg storage="kanpan_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice127]




[elsif exp="f.choice==128"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="mujintou1_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice128]

[elsif exp="f.choice==129"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="rakuyou_ontama.ogg"]
[bg storage="kanpan_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice129]

[elsif exp="f.choice==130"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="hune_naka_yuu_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice130]

[elsif exp="f.choice==131"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="kanpan_yoru_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice131]

[elsif exp="f.choice==132"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="sekishoooheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice132]

[elsif exp="f.choice==133"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="kanpan_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice133]



[elsif exp="f.choice==333"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="komorebi_ac.jpg" time=100]
[jump storage="sentaku.ks" target=*choice333]

[elsif exp="f.choice==444"]
[message_settei_ad]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="hune_bed_tasogare.jpg" time=100]
[chara_on][chara_show name="klaist" face="normal_kutiake"]
[jump storage="sentaku.ks" target=*choice444]







[else]
[endif]
*nomaen
;試験用の好感度入力


[if exp="f.choice==999"]
;ノマエン判定婚約式選択しの前に。


;まだ試験中のためコメントの状態にしておきます
;ノマエン判定
[elsif exp="f.krakonkando>30&&f.a13==1&&f.choice==114"]
[ka]
[cm]
;エピソード表示
[image layer=0 page=fore visible=true storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[eval exp="f.epi=12"]
[stopbgm][stopse]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice114]

[elsif exp="f.ranskonkando>19&&f.b4==1&&f.choice==114||f.lionkonkando>19&&f.a8==1&&f.choice==114"]

[ka]
[cm]
;エピソード表示
[image layer=0 page=fore visible=true storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[eval exp="f.epi=12"]
[stopbgm][stopse]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="sentaku.ks" target=*choice114]

[else]
;エピソード表示消去
;[freeimage layer=0]
;[eval exp="f.epi=0"]
;[jump storage="episode/epi_normalend.ks" target=*normalend]

[endif]


;自由行動を前編か後編かで分ける
*jiyuu
[if exp="f.jiyuu==1"]
[if exp="f.live2d_on==1"]
[live2d_off][live2d_delete_all]
[else]
[endif]
[call storage="status_macro.ks"]
[call storage="item_check.ks"]
[call storage="item_check_other.ks"]
[call storage="item_check_battle.ks"]
[call storage="item_check_equip_hyouji.ks"]
[call storage="item_check_soubi_2.ks"]

[call storage="item/equip_item_data.ks"]
[call storage="status_macro_macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="map_macro.ks"]

[bg storage="irainheya_tasogare.jpg" time=100]
[message_settei_ad]
[jump storage="episode/epi1.ks" target=*jiyuu1]
[endif]
;[if exp="f.jiyuu>10&&f.a17==1"]
;[resetfont]
;[jump storage="kyuujitu_w.ks" target=*honban]
;[elsif exp="f.jiyuu>10&&f.b17==1"]
;[jump storage="kyuujitu_o.ks" target=*honban]
;[elsif exp="f.jiyuu<=10&&f.jiyuu>=1"]
;[jump storage="kyuujitu.ks" target=*honban]
;[endif]


*return
[return]



