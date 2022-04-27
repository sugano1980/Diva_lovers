
*saisho
[if exp="f.live2d_on==1"]
[ptext layer="3" page="fore" text="Live2D表示中は使えません" x="120" y="100" size="23" face="antique" edge="0x000000" name="live_boo"]
[w]
[free name="live_boo" layer=3]
;[freeimage layer="0"]
;[freeimage layer="1"]
;[freeimage layer="2"]
;[live2d_delete_all][live2d_off]
;[eval exp="f.live2d_on=0"]
[jump target=*return]
[elsif exp="f.chara_on==1"]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]

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
[jump storage="scenario_2/sub_story/sub_story_hantei.ks" target=*story2]

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




[elsif exp="f.choice==1"]
[reset]
[ka]
[cm]
[bg storage="black.png" method="shake" time=500]
[stopbgm][stopse]
[playbgm storage="dousureba_ontama.ogg" loop=true]
[cm]

@jump storage="scenario_2/sentaku.ks" target=*choice1




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
;[call storage="scenario_2/live2d_baka_macro.ks"]
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
[jump storage="scenario_2/sentaku.ks" target=*choice2]



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
[jump storage="scenario_2/episode/epi1.ks" target=*jump_map_choice_3]


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
[jump storage="scenario_2/sentaku.ks" target=*choice3]


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
[jump storage="scenario_2/episode/epi1.ks" target=*jump_map_choice_101]



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
[jump storage="scenario_2/sentaku.ks" target=*choice101]

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
[jump storage="scenario_2/episode/epi1.ks" target=*jump_map_choice_991]






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
[jump storage="scenario_2/sentaku.ks" target=*choice991]


;カーニバル編
[elsif exp="f.choice==992"]
[eval exp="f.live2d_on=0"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[agata_tatie_touroku]
[agata_tatie_show]
[bg storage="sekishoura_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice992]

[elsif exp="f.sweet_event==1"]
[eval exp="f.live2d_on=0"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[jump storage="scenario_2/episode/epi2.ks" target=*creru_res_1]

[elsif exp="f.store_event==1"]
;お店で買い物途中でガレスフラグ
[if exp="f.irain_brain>25"]
[call storage="scenario_2/live2d_gales_macro.ks"]
[eval exp="f.event_gales_1=1"]
[endif]
[clearstack]
[button_clear]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[cera_tatie_touroku]
[playbgm storage="lunch_musmus.ogg"]
[bg storage="sitateya_tasogare.jpg" time=100]
[eval exp="f.store_event=0"]
[eval exp="f.monster_event=1"]
[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

[jump storage="scenario_2/episode/epi2.ks" target=*store_event]

[elsif exp="f.monster_event==1"]
;カーニバル前のモンスター事件
[clearstack]
[button_clear]
[snowfall_0]
[stopbgm][stopse]
[message_settei_ad]
[playbgm storage="struggle.ogg" loop="true"]
[cm]
[eval exp="f.monster_event=2"]
[eval exp="f.tokei_no=1"]
[jump storage="scenario_2/episode/epi2.ks" target=*jump_event_5]

[elsif exp="f.monster_event==2"]
;カーニバル前のモンスター事件2
[clearstack]
[button_clear]
[call storage="scenario_2/live2d_glif_macro.ks"]
[glif_tatie_touroku]
[cm]
[eval exp="f.glif_yes=1"]
[eval exp="f.glifkonkando=0"]
[eval exp="f.glifrenailevel=1"]
[eval exp="f.glifrenaikando=0"]
[eval exp="f.monster_event=0"]
[eval exp="f.event_glif_1=1"]
[jump storage="scenario_2/episode/epi2.ks" target=*glif_battle]




[elsif exp="f.choice==993"]
;カーニバルの相手を誘う
;mapのフラグ消去
[eval exp="f.event_glif_1=0"]
[eval exp="f.map=0"]
[eval exp="f.place_creru_oukyu=0"]
[eval exp="f.place_creru_hunsui=0"]
[eval exp="f.place_creru_sakaba=0"]
[eval exp="f.place_creru_gaia=0"]
[eval exp="f.place_creru_uradoori=0"]
[eval exp="f.place_creru_out=0"]
[eval exp="f.event_main_8_days=7"]
[eval exp="f.tokei_no=0"]
[eval exp="f.glif_yes=1"]
[eval exp="f.gales_yes=1"]
[eval exp="f.event_gales_1=0"]
[eval exp="f.event_main_5=0"]
[eval exp="f.event_main_5_1=0"]
[eval exp="f.event_main_6=1"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[snowfall_0]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice993]

[elsif exp="f.choice==994"]
;誰を誘うか
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice994]

[elsif exp="f.choice==995"]
;ランス、追いかける
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[creru_sakaba_yuu]
[jump storage="scenario_2/sentaku.ks" target=*choice995]


[elsif exp="f.choice==996"]
;ランス、話を・・・
[clearstack]
[ka]
[rans_tatie_touroku]
[rans_tatie_show]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[creru_sakaba_yuu]
[jump storage="scenario_2/sentaku.ks" target=*choice996]


[elsif exp="f.choice==997"]
;クラ、キス・・・
[clearstack]
[ka]

[stopbgm][stopse]
[message_settei_ad]
[cm]
[bg storage="hune_souko_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice997]

[elsif exp="f.choice==998"]
;どこを回る？
[clearstack][eval exp="f.cook_item_stock[29]=1"]
[ka][config_true]
[creru_hunsui_3]
[stopbgm][stopse][playbgm storage="maturi_musmus.ogg"]
[message_settei_ad]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*choice998]


[elsif exp="f.choice==999"]
;どうしよう？
[clearstack]
[ka]
[config_true]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[creru_hunsui_yuu]
[jump storage="scenario_2/sentaku.ks" target=*choice999]


[elsif exp="f.cur_battle==1"]
;異形戦闘
[clearstack][snowfall_0][config_true]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[call storage="scenario_2/live2d_sub_macro.ks"]

[cm]

[if exp="f.friend==3"]
[eval exp="f.event_main_9_kra=0"]
[eval exp="f.event_main_10_kra=1"]
[eval exp="f.event_main_10=1"][call storage="scenario_2/episode/scenario_macro.ks"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*igyou_battle]
[elsif exp="f.friend==2"]
[eval exp="f.event_main_9_lion=0"]
[eval exp="f.event_main_10_lion=1"]
[eval exp="f.event_main_10=1"][call storage="scenario_2/episode/scenario_macro.ks"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*igyou_battle]
[elsif exp="f.friend==1"]
[eval exp="f.event_main_9_rans=0"]
[eval exp="f.event_main_10_rans=1"]
[eval exp="f.event_main_10=1"][call storage="scenario_2/episode/scenario_macro.ks"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*igyou_battle]
[elsif exp="f.osasoi_else==1&&f.glif_yes==1"]
[call storage="scenario_2/live2d_glif_macro.ks"][glif_tatie_rei_touroku]
[eval exp="f.friend=5"][eval exp="f.glif_rei=1"]
[eval exp="f.event_main_9_normal=0"]
[eval exp="f.event_main_10_normal=1"]
[eval exp="f.event_main_10=1"][call storage="scenario_2/episode/scenario_macro.ks"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*igyou_battle]
[else]
[eval exp="f.event_main_9_normal=0"]
[eval exp="f.event_main_10_normal=1"]
[eval exp="f.event_main_10=1"]
[eval exp="f.friend=3"][call storage="scenario_2/live2d_aho_macro.ks"][call storage="scenario_2/episode/scenario_macro.ks"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*igyou_battle_no]
[endif]

[elsif exp="f.cur_battle==2"]
;ルシア戦闘
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm][eval exp="f.cur_battle=0"]

[if exp="f.friend==3"]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_kra=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_kra=1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*curnival_end]
[elsif exp="f.friend==2"]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_lion=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_lion=1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*curnival_end]
[elsif exp="f.friend==1"]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_rans=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_rans=1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*curnival_end]
[elsif exp="f.osasoi_else==1&&f.glif_yes==1"]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_normal=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_normal=1"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*curnival_end]
[elsif exp="f.event_main_10==1"]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_normal=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_normal=1"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*curnival_end]
[endif]




[elsif exp="f.choice==1000"]
;声をかけてみようかな
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[gales_tatie_touroku]
[gales_tatie_show]
[cm]
[creru_hunsui_3]
[jump storage="scenario_2/sentaku.ks" target=*choice1000]

[elsif exp="f.choice==1001"]
;話を続けない方が・・・
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[gales_tatie_touroku]
[gales_tatie_show]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*choice1001]

;ここからエルムナード編


;前線にするか後方か
[elsif exp="f.event_main_14_days==0&&f.episode_flag==3&&f.irain_tec>199&&f.irain_brain>199"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*main_event_14_last_day]



;侵攻前、隊の選択へ
[elsif exp="f.event_war_glif!=1&&f.event_war_rans!=1&&f.event_war_lion!=1&&f.event_war_kra!=1&&f.episode_flag==3"]

[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*main_event_14_last_day_tec]

;隊の選択後、自由行動
[elsif exp="f.event_war_glif==1&&f.episode_flag==3||f.event_war_rans==1&&f.episode_flag==3||f.event_war_lion==1&&f.episode_flag==3||f.event_war_kra==1&&f.episode_flag==3"]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]



[elsif exp="f.episode_flag==4&&f.event_war_battle_end==1"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[button_hyouji]
[cm]
[jump storage="scenario_2/episode/epi_flag_check.ks"]

;マナー講習前日
[elsif exp="f.episode_flag==5&&f.mannar_zenjitu==1"]
[clearstack]
[ka]
[stopbgm][stopse]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]



;ランス戦争シナリオ戦闘
[elsif exp="f.event_war_rans==1&&f.episode_flag==4"]
[clearstack]
[ka]
[freeimage layer="3"]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[chara_on][chara_new name="rans_war" storage="rans_tatie/rans_normal_war.gif"]
[cm]
[jump storage="scenario_2/episode/event_war_rans.ks" target=*rans_battle_start]

[elsif exp="f.event_war_lion==1&&f.episode_flag==4"]
[clearstack]
[ka]
[freeimage layer="3"]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/episode/event_war_lion.ks" target=*lion_battle_start]

[elsif exp="f.event_war_kra==1&&f.episode_flag==4&&f.epi4_battle_kra==1"]
[clearstack]
[ka]
[freeimage layer="3"]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]

[jump storage="scenario_2/episode/event_war_kra.ks" target=*kra_battle_start]

[elsif exp="f.event_war_kra==1&&f.episode_flag==4"]
[freeimage layer="3"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]

[jump storage="scenario_2/episode/event_war_kra.ks" target=*igyou_battle_1]

[elsif exp="f.event_war_glif==1&&f.episode_flag==4"]
[freeimage layer="3"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]

[jump storage="scenario_2/episode/event_war_glif.ks" target=*glif_battle_start]



;ランスを探してみようか
[elsif exp="f.episode_flag==5&&f.event_war_rans_sumi==1&&f.choice_rans_find==1&&f.town_trust>4"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[eval exp="f.choice_rans_find=0"]
[bg storage="rans_jikka_shokudou_tasogare.jpg"]
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans]

;ランス探索左みぎ
[elsif exp="f.episode_flag==5&&f.event_rans_search_yes==1"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[bg storage="rans_jikka_tukiatari.jpg"]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_2]

;本当に処刑されちゃうの
[elsif exp="f.episode_flag==5&&f.event_rans_search_yes==2"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on!=1"]
[live2d_on]
[live2d_rans_touroku]
[live2d_fadeout time=500]
[live2d_rans_show_sekkin]
[endif]
[bg storage="rans_jikka_heya.jpg"]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_3]

;ランスロットは私の・・・
[elsif exp="f.episode_flag==5&&f.event_rans_search_yes==3"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
;[if exp="f.live2d_on==1"]
;[live2d_delete_all][live2d_off]
;[endif]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*event_main_epi5_rans_4]

;ランス、ヴァン、エクターと食事に・・・
[elsif exp="f.episode_flag==5&&f.event_epi5_rans_ok==9"]
[clearstack]
[ka]
[stopbgm][stopse]
[bg storage="irainheya_tasogare.jpg"]
[message_settei_ad]
[if exp="f.live2d_on!=1"]
[live2d_rans_touroku]
[live2d_fadeout time=500]
[live2d_rans_show_sekkin]
[endif]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*rans_ector_van_shokuji]




[elsif exp="f.episode_flag==5"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]



[elsif exp="f.episode_flag==6&&f.event_main_epi6_1==2"]
;epi6から自由行動へ
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/episode/epi_flag_check.ks"]




;----------男性フラグあるか確認、あればダンス前のエピへ
;[if exp="f.event_war_rans_sumi==1&&f.event_epi5_rans_ok==10||f.event_war_kra_sumi==1||f.event_sub_14_sumi[2]==1||f.glif_battle_kizuna==1"]
;[eval exp="f.event_main_epi6_1=3"]
;[jump storage="scenario_2/episode/epi6.ks" target=*dance]
;[endif]
;-----------------------------------

;祝賀会、挨拶、御馳走、ウロウロ・・・
[elsif exp="f.episode_flag==6&&f.event_main_epi6_1==1"]

[if exp="f.event_epi5_rans_ok==10"]
[live2d_kra2_touroku]
[endif]


[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[bg storage="oukyuu_hall_tasogare.jpg"]
[cm]

;-----全部の選択肢を選択したら次の選択肢へのフラグ立てる
[if exp="f.shukuga_aisatu==1&&f.shukuga_gotisou==1&&f.shukuga_bal==1"]
[eval exp="f.shukuga_bal=0"]
[eval exp="f.shukuga_gotisou=0"]
[eval exp="f.shukuga_aisatu=0"]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[jump storage="scenario_2/episode/epi_flag_check.ks"]
[endif]


[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_3]



[elsif exp="f.episode_flag==6"]
;祝賀会、ライオネスの腕に・・・

[clearstack]
[ka]
[stopbgm][stopse]
[bg storage="oukyuu_yoru_tasogare.jpg"]
[playbgm storage="suijou_cra.ogg"]
[message_settei_ad]
[if exp="f.live2d_on!=1"]
[live2d_lion2_touroku]
[live2d_fadeout time=1000]
[live2d_lion2_show]
[endif]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_2]





[elsif exp="f.episode_flag==7"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]


[elsif exp="f.episode_flag==7.5"]
[clearstack]
[ka]
[stopbgm][stopse]
[message_settei_ad]
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*event_main_16_choice]


;０でどこも飛ばない
[elsif exp="f.choice==0"]

[jump target=*return]




;ここまで
[elsif exp="f.choice==4"]
[ka]
[stopbgm][stopse]
[cm]
[fadeinbgm storage="kanashimi_ontama.ogg" time=1000]
[bg storage="uranomori_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice4]


[elsif exp="f.choice==5"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="tw074_musmus.ogg"]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice5]


[elsif exp="f.choice==102"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="mori2_pakutaso.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice102]


[elsif exp="f.choice==7"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerushokudou_yoru_tasogare.jpg" time=100]
[playbgm storage="or_raina_p_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice7]


[elsif exp="f.choice==6"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba1_kaiwa_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice6]


[elsif exp="f.choice== 8"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="tw074_musmus.ogg"]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice8]


[elsif exp="f.choice== 9 "]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_yoru_tasogare_ao.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice9]


[elsif exp="f.choice==10"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="kokoronomeiro_ontama.ogg"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg" time=100]	
[jump storage="scenario_2/sentaku.ks" target=*choice10]


[elsif exp="f.choice==103"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_kanasimi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice103]	


[elsif exp="f.choice==104"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice104]



[elsif exp="f.choice==11"]
[ka]
[cm]
[stopbgm][stopse]
[fadeinbgm storage="sharomu_musmus.ogg" time=4000 volume=30]
[bg storage="sharomusanbasi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice11]

[elsif exp="f.choice==12"]
[ka]
[cm]
[bg storage="sharomudoukutunaka_tasogare.jpg" time=100]
[stopbgm][stopse]
[jump storage="scenario_2/sentaku.ks" target=*choice12]

[elsif exp="f.choice==13"]
[ka]
[cm]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[stopbgm][stopse]
[jump storage="scenario_2/sentaku.ks" target=*choice13]

[elsif exp="f.choice==14"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kajiya_tasogare.jpg" time=100]
[fadeinbgm storage="koubou_ontama.ogg" time=3000]
[jump storage="scenario_2/sentaku.ks" target=*choice14]

[elsif exp="f.choice==15"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice15]

[elsif exp="f.choice==16"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice16]

[elsif exp="f.choice==17"]
[ka]
[cm]
[stopbgm][stopse]
[jump storage="scenario_2/sentaku.ks" target=*choice17]

[elsif exp="f.choice==18"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice18]

[elsif exp="f.choice==19"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="kaze_onjin.ogg" loop=true]
[bg storage="sougen_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice19]

[elsif exp="f.choice==20"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishonaka_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice20]

[elsif exp="f.choice==21"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="black.png" time=50]
[fadeinbgm storage="yochou_musmus.ogg" time=2000]
[jump storage="scenario_2/sentaku.ks" target=*choice21]

[elsif exp="f.choice==22"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumusekisho_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice22]

[elsif exp="f.choice==23"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumumatinaka1_tasogare.jpg" time=100 time=1000]
[image layer=1 page=fore visible=true storage="vaerumahoujin1.png" top=40 time=2000]
[playbgm storage="sinzou_onjin.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice23]

[elsif exp="f.choice==24"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="struggle_sougetuon.ogg"]
[bg storage="erumumatinaka_tasogare.jpg" time=100 time=1000]
[jump storage="scenario_2/sentaku.ks" target=*choice24]

[elsif exp="f.choice==25"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="erumuhayasi_yuu_tasogare.jpg" time=100]
[playbgm storage="kaze1_onjin.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice25]


[elsif exp="f.choice==26"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="takibi_onjin.ogg" volume=50]
[bg storage="erumuhayasi_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice26]

[elsif exp="f.choice==27"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sougen1_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice27]

[elsif exp="f.choice==28"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice28]

[elsif exp="f.choice==105"]
[ka]
[cm]
[stopbgm][stopse]
[anten]
[jump storage="scenario_2/sentaku.ks" target=*choice105]

[elsif exp="f.choice==1055"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishoooheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice1055]


[elsif exp="f.choice==106"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="irainheya_yuu_tasogare.jpg" time=100]
[playbgm storage="raina_sora_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice106]

[elsif exp="f.choice==29"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanshokudo_tasogare.jpg" time=100]
[fadeinbgm storage="tw44_musmus.ogg" time=3000]
[jump storage="scenario_2/sentaku.ks" target=*choice29]

[elsif exp="f.choice==30"]
[ka]
[cm]
[jump storage="scenario_2/sentaku.ks" target=*choice30]

[elsif exp="f.choice==31"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba1_kaiwa_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice31]

[elsif exp="f.choice==32"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="omoi_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice32]

[elsif exp="f.choice==33"]
[ka]
[cm]
[stopbgm][stopse]
[jump storage="scenario_2/sentaku.ks" target=*choice33]

[elsif exp="f.choice==34"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg" time=100]
[playbgm storage="bacchus_sougetuon.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice34]

[elsif exp="f.choice==35"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="ransheya_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice35]

[elsif exp="f.choice==36"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="omoidenobasyo_ontama.ogg"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice36]

[elsif exp="f.choice==37"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="irainheya_yoru_tasogare.jpg" time=100]
[fadeinbgm storage="odai07_ontama.ogg" time=3000]
[jump storage="scenario_2/sentaku.ks" target=*choice37]

[elsif exp="f.choice==107"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="black.png" time=50]
[playbgm storage="darkhowring_sougetuon.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice107]

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
[jump storage="scenario_2/sentaku.ks" target=*choice38]

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
[jump storage="scenario_2/sentaku.ks" target=*choice38]


[elsif exp="f.choice==38"]


[ka]
[cm]
[stopbgm][stopse]
[bg storage="gaiamori_yuu_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice38]


[elsif exp="f.choice==39"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="kisidanrouka_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice39]


[elsif exp="f.choice==108"]
[ka]
[cm]
[stopbgm]
[jump storage="scenario_2/sentaku.ks" target=*choice108]


[elsif exp="f.choice==109"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_kanasimi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice109]


[elsif exp="f.choice==110"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka1_kanasimi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice110]


[elsif exp="f.choice==111"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka1_kanasimi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice111]


[elsif exp="f.choice==40"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="crerumatinaka3_kanasimi_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice40]


[elsif exp="f.choice==112"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sekishonaka_tasogare.jpg" time=100]
[playbgm storage="kokusei_musmus.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice112]


[elsif exp="f.choice==901"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="vanhayasi_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice901]

[elsif exp="f.choice==902"]
[ka]
[cm]
[stopbgm][stopse]
[fadeinbgm storage="takibi_onjin.ogg" time=4000]
[jump storage="scenario_2/sentaku.ks" target=*choice902]

[elsif exp="f.choice==113"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="oukyuu_tasogare.jpg" time=100]
[playbgm storage="kabocha_musmus.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice113]

[elsif exp="f.choice==41"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sakaba2_kaiwa_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice41]

[elsif exp="f.choice==42"]
[ka]
[cm]
[stopbgm][stopse]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice42]

[elsif exp="f.choice==43"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="oukyuushokudou_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice43]

[elsif exp="f.choice==903"]
[ka]
[cm]
[stopbgm][stopse]
[bg storage="sensou_lion.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice903]



[elsif exp="f.choice==114"]

[jump target="*nomaen"]
;ノマエン判定



[elsif exp="f.choice==117"]
[ka]
[cm]
[stopbgm][stopse]
[anten]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice117]


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
[jump storage="scenario_2/sentaku.ks" target=*choice118]

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
[jump storage="scenario_2/sentaku.ks" target=*choice119]




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
[jump storage="scenario_2/sentaku.ks" target=*choice120]



;選択肢121
[elsif exp="f.choice==121"]
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="toshokan_tika_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice121]



;選択肢122
[elsif exp="f.choice==122"]
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="toshokan_tika_tasogare.jpg" time=100]
[playbgm storage="odai07_ontama.ogg"]
[jump storage="scenario_2/sentaku.ks" target=*choice122]



;選択肢123
[elsif exp="f.choice==123"]
[message_settei]

[ka]
[cm]
;メッセージ画面変更

[stopbgm]
[stopse]
[bg storage="westa_sakaba_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice123]


;選択肢124
[elsif exp="f.choice==124"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="kokusei_musmus.ogg"]
[bg storage="oka_ac.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice124]



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
[jump storage="scenario_2/sentaku.ks" target=*choice125]


;選択肢126

[elsif exp="f.choice==126"]
*sentaku126
[message_settei]
[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="romana_mizuumi_hotori_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice126]

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
[jump storage="scenario_2/sentaku.ks" target=*choice127]




[elsif exp="f.choice==128"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="mujintou1_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice128]

[elsif exp="f.choice==129"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[playbgm storage="rakuyou_ontama.ogg"]
[bg storage="kanpan_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice129]

[elsif exp="f.choice==130"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="hune_naka_yuu_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice130]

[elsif exp="f.choice==131"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="kanpan_yoru_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice131]

[elsif exp="f.choice==132"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="sekishoooheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice132]

[elsif exp="f.choice==133"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="kanpan_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice133]



[elsif exp="f.choice==333"]
[message_settei]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="komorebi_ac.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice333]

[elsif exp="f.choice==444"]
[message_settei_ad]

[ka]
[cm]
[stopbgm]
[stopse]
[bg storage="hune_bed_tasogare.jpg" time=100]
[chara_on][chara_show name="klaist" face="normal_kutiake"]
[jump storage="scenario_2/sentaku.ks" target=*choice444]







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
[jump storage="scenario_2/sentaku.ks" target=*choice114]

[elsif exp="f.ranskonkando>19&&f.b4==1&&f.choice==114||f.lionkonkando>19&&f.a8==1&&f.choice==114"]

[ka]
[cm]
;エピソード表示
[image layer=0 page=fore visible=true storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[eval exp="f.epi=12"]
[stopbgm][stopse]
[bg storage="irainheya_tasogare.jpg" time=100]
[jump storage="scenario_2/sentaku.ks" target=*choice114]

[else]
;エピソード表示消去
;[freeimage layer=0]
;[eval exp="f.epi=0"]
;[jump storage="scenario_2/episode/epi_normalend.ks" target=*normalend]

[endif]


;自由行動を前編か後編かで分ける
*jiyuu
[stopbgm]
[chara_config pos_mode=true]
[if exp="f.jiyuu==1&&f.event_main_8_days==7"]
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_8]
[else]
[if exp="f.live2d_on==1"]
[live2d_off][live2d_delete_all]
[else]
[endif]
[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/item_check.ks"]
[call storage="scenario_2/item_check_other.ks"]
[call storage="scenario_2/item_check_battle.ks"]
[call storage="scenario_2/item_check_equip_hyouji.ks"]
[call storage="scenario_2/item_check_soubi_2.ks"]

[call storage="scenario_2/item/equip_item_data.ks"]
[call storage="scenario_2/status_macro_macro.ks"]
[call storage="scenario_2/item_hyouji_macro.ks"]
[call storage="scenario_2/map_macro.ks"]

[bg storage="irainheya_tasogare.jpg"]
[message_settei_ad]
[jump storage="scenario_2/episode/epi1.ks" target=*jiyuu1]
[endif]
;[if exp="f.jiyuu>10&&f.a17==1"]
;[resetfont]
;[jump storage="scenario_2/kyuujitu_w.ks" target=*honban]
;[elsif exp="f.jiyuu>10&&f.b17==1"]
;[jump storage="scenario_2/kyuujitu_o.ks" target=*honban]
;[elsif exp="f.jiyuu<=10&&f.jiyuu>=1"]
;[jump storage="scenario_2/kyuujitu.ks" target=*honban]
;[endif]


*return
[return]



