
;お知らせ
[macro name="attention"]

[eval exp="tf.attention_x=800"]
[eval exp="tf.attention_y=150"]
[eval exp="tf.attention_x_tojiru=tf.attention_x+168"]
[eval exp="tf.attention_y_tojiru=tf.attention_y+10"]



[image layer=1 page=fore storage="attention.png" name="attention" x=&tf.attention_x y=&tf.attention_y]
[button graphic="button/tojiru.png" fix="true" name="attention" clickse="tm2_switch001_macchi.ogg" storage="scenario_2/attention.ks" x=&tf.attention_x_tojiru y=&tf.attention_y_tojiru]
[eval exp="tf.attention_x_moji=tf.attention_x+28"]
[eval exp="tf.attention_y_moji=tf.attention_y+28"]
[eval exp="tf.attention_x_image=tf.attention_x+10"]
[eval exp="tf.attention_y_image=tf.attention_y+10"]


[image layer=2 page=fore storage="warning.png" name="attention" x=&tf.attention_x_image y=&tf.attention_y_image]
[ptext layer=2 page=fore text="M A P上にイベントあり" name="attention" color="black" size=15 x=&tf.attention_x_moji y=&tf.attention_y_moji]


[anim name="attention" left="-=200" time=200]





[endmacro]





;目標表示
[macro name="mokuhyou"]
[eval exp="f.mokuhyou_mongon=''"]
[eval exp="f.mokuhyou_mongon_2=''"]
[eval exp="f.nokori_nissuu_0=''"]
[eval exp="f.nokori_nissuu=0"]
[eval exp="f.mongon_size=	0"]
;目標文言
[if exp="f.event_main_8==1"]
[eval exp="f.mokuhyou_mongon='カーニバル前日までに'"]
[eval exp="f.mokuhyou_mongon_2='街に出没するモンスターを全滅させる'"]
[eval exp="f.nokori_nissuu_0='カーニバルまであと'"]
[eval exp="f.nokori_nissuu=f.event_main_8_days"]
[eval exp="f.mongon_size=	13"]
[eval exp="f.mongon_size_nokori=	17"]
[elsif exp="f.event_main_14_days>0"]

[eval exp="f.mokuhyou_mongon='エルムナードへの出撃日までに'"]
[eval exp="f.mokuhyou_mongon_2='技術か頭脳を200以上にする'"]
[eval exp="f.nokori_nissuu_0='エルムナード侵攻まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_14_days"]
[eval exp="tf.jouken_hyouji_kai=1"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.mannar_zenjitu==1"]

[eval exp="f.mokuhyou_mongon=''"]
[eval exp="f.mokuhyou_mongon_2=''"]
[eval exp="f.nokori_nissuu_0='マナー講習まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=1"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.event_main_15_days>0"]

[eval exp="f.mokuhyou_mongon='祝賀会までに'"]
[eval exp="f.mokuhyou_mongon_2='魅力を200以上にする'"]
[eval exp="f.nokori_nissuu_0='祝賀会まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_15_days"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.event_main_16_days>0"]

[eval exp="f.mokuhyou_mongon='ウェスタへ出港までに'"]
[eval exp="f.mokuhyou_mongon_2='ウェスタか騎士団に残るか決める'"]
[eval exp="f.nokori_nissuu_0='ウェスタへ出港まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_16_days"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.event_main_17_days>0"]

[eval exp="f.mokuhyou_mongon=''"]
[eval exp="f.mokuhyou_mongon_2=''"]
[eval exp="f.nokori_nissuu_0='ウェスタへ到着まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_17_days"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.event_main_18_days>0"]

[eval exp="f.mokuhyou_mongon=''"]
[eval exp="f.mokuhyou_mongon_2=''"]
[eval exp="f.nokori_nissuu_0='出港まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_18_days"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[elsif exp="f.event_main_19_days>0"]

[eval exp="f.mokuhyou_mongon=''"]
[eval exp="f.mokuhyou_mongon_2=''"]
[eval exp="f.nokori_nissuu_0='目的地まで'"]
[eval exp="f.nokori_nissuu_1='あと'"]
[eval exp="f.nokori_nissuu=f.event_main_19_days"]
[eval exp="f.mongon_size=	15"]
[eval exp="f.mongon_size_nokori=	15"]

[endif]


[eval exp="tf.mokuhyou_x=532"]
[eval exp="tf.mokuhyou_y=30"]

[eval exp="tf.mokuhyou_x_moji=552"]
[eval exp="tf.mokuhyou_y_moji=55"]

[eval exp="tf.mokuhyou_x_suuji=698"]
[eval exp="tf.mokuhyou_y_suuji=45"]

[eval exp="tf.mokuhyou_x_suuji_number=707"]
[eval exp="tf.mokuhyou_y_suuji_number=55"]


[if exp="f.nokori_nissuu<10"]
[eval exp="tf.mokuhyou_x_moji_2=730"]
[elsif exp="f.nokori_nissuu>9"]
[eval exp="tf.mokuhyou_x_moji_2=740"]
[endif]

[eval exp="tf.mokuhyou_y_moji_2=55"]
[eval exp="tf.mokuhyou_x_con=650"]
[eval exp="tf.mokuhyou_y_con=120"]

[eval exp="tf.mokuhyou_x_con_image=630"]
[eval exp="tf.mokuhyou_y_con_image=115"]




[if exp="f.jouken_hyouji==1"]

[eval exp="tf.mokuhyou_x_moji_3=552"]
[eval exp="tf.mokuhyou_y_moji_3=85"]
;目標文言
[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
[ptext layer=2 page=fore text="&f.mokuhyou_mongon" face=antique name="mokuhyou" color="black" size=&f.mongon_size x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
[ptext layer=2 page=fore text="&f.mokuhyou_mongon_2" face=antique name="mokuhyou" color="black" size=&f.mongon_size  x=&tf.mokuhyou_x_moji_3 y=&tf.mokuhyou_y_moji_3]


[button graphic="button/toumei.png" fix="true" name="mokuhyou" clickse="tm2_switch001_macchi.ogg" target=*condition_2 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[ptext layer=2 page=fore text="残り日数表示" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]


[elsif exp="f.jouken_hyouji!=1"]

[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
;イベントまであと
[ptext layer=2 page=fore text="&f.nokori_nissuu_0" face=antique name="mokuhyou" color="black" size=&f.mongon_size_nokori x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
;改行する場合
[if exp="tf.jouken_hyouji_kai==1"]
[eval exp="tf.mokuhyou_y_moji_kai=tf.mokuhyou_y_moji+20"]
[r]
[ptext layer=2 page=fore text="&f.nokori_nissuu_1" face=antique name="mokuhyou" color="black" size=&f.mongon_size_nokori  x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji_kai]
[endif]



[if exp="f.nokori_nissuu>9"]
[image layer=2 page=fore storage="mokuhyou_suuji_d.png" name="mokuhyou" x=&tf.mokuhyou_x_suuji y=&tf.mokuhyou_y_suuji]
[elsif exp="f.nokori_nissuu<10"]
[image layer=2 page=fore storage="mokuhyou_suuji.png" name="mokuhyou" x=&tf.mokuhyou_x_suuji y=&tf.mokuhyou_y_suuji]
[endif]

;何日
[ptext layer=2 page=fore text="&f.nokori_nissuu" face=antique name="mokuhyou" size=23 x=&tf.mokuhyou_x_suuji_number y=&tf.mokuhyou_y_suuji_number]

[ptext layer=2 page=fore text="日" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji_2 y=&tf.mokuhyou_y_moji_2]


[if exp="f.disc_4!=1"]
[button graphic="button/toumei.png" fix="true" name="mokuhyou" clickse="tm2_switch001_macchi.ogg" target=*condition x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[ptext layer=2 page=fore text="条件を確認する" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]
[endif]

;---------
[endif]





[endmacro]


[macro name="event_hyouji"]

[eval exp="f.image=0"]
[eval exp="f.image_2=0"]
[eval exp="tf.event_image_x_simbol=400"]
[eval exp="tf.event_image_x=420"]
[eval exp="tf.event_image_x_2=455"]
[eval exp="tf.event_image_y=15"]

[eval exp="tf.event_letter_x = 435"]
[eval exp="tf.event_letter_x_button = 450"]
[eval exp="tf.event_letter_y = 30"]
[eval exp="tf.event_letter_y_button = tf.event_letter_y + 10"]
[eval exp="tf.event_letter_y_2 = tf.event_letter_y + 70"]




[if exp="f.event_main_8==1"]

[eval exp="tf.image_height=70"]
[eval exp="tf.image_width=70"]

;カーニバルデート約束の表示/////
[if exp="f.curnival_rans==1"]
[eval exp="f.image='battle_face/ranslott_face.png'"]
[elsif exp="f.curnival_lion==1"]
[eval exp="f.image='battle_face/lioness_face.png'"]
[elsif exp="f.curnival_kra==1"]
[eval exp="f.image='battle_face/klaist_face.png'"]
[elsif exp="f.curnival_rans!=1&&f.curnival_lion!=1&&f.curnival_kra!=1"]
[eval exp="f.image=0"]
[endif]

;カーニバルの花持ってると表示
[if exp="f.curnival_flower_1==1"]
[eval exp="f.image_2='hanataba/hanataba_1.png'"]
[elsif exp="f.curnival_flower_2==1"]
[eval exp="f.image_2='hanataba/hanataba_2.png'"]
[elsif exp="f.curnival_flower_3==1"]
[eval exp="f.image_2='hanataba/hanataba_3.png'"]
[elsif exp="f.curnival_flower_1!=1&&f.curnival_flower_2!=1&&f.curnival_flower_3!=1"]
[eval exp="f.image_2=0"]
[endif]


[elsif exp="f.event_main_14_days>0"]

[eval exp="tf.image_height=70"]
[eval exp="tf.image_width=70"]

[if exp="f.event_war_rans==1"]
[eval exp="f.image='battle_face/ranslott_face.png'"]
[elsif exp="f.event_war_lion==1"]
[eval exp="f.image='battle_face/lioness_face.png'"]
[elsif exp="f.event_war_kra==1"]
[eval exp="f.image='battle_face/klaist_face.png'"]
[elsif exp="f.event_war_glif==1"]
[eval exp="f.image='battle_face/glif_face.png'"]
[endif]




[elsif exp="f.event_main_15_days>0"]

[eval exp="tf.image_height=30"]
[eval exp="tf.image_width=30"]

[if exp="f.dress_pure==1"]
[eval exp="f.image='icon/equip_icon_pure.png'"]
[elsif exp="f.dress_cute==1"]
[eval exp="f.image='icon/equip_icon_cute.png'"]
[elsif exp="f.dress_elegant==1"]
[eval exp="f.image='icon/equip_icon_elegant.png'"]
[endif]

[elsif exp="f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0"]




[if exp="f.write_on==1"]
[eval exp="f.button_image='button/letter_button.png'"]
[elsif exp="f.write_on!=1"]
[eval exp="f.button_image='button/letter_hane.png'"]
[endif]

;//////

[else]

[endif]



[if exp="f.image!=0"]
[image layer=2 page=fore visible=true storage="date_simbol.png" name="status" x=&tf.event_image_x_simbol y=&tf.event_image_y]
[endif]
;名前は目標と同じ
[if exp="f.image!=0"]
[image layer=2 page=fore visible=true storage="&f.image" name="status" height=&tf.image_height width=&tf.image_width x=&tf.event_image_x y=&tf.event_image_y]
[endif]
[if exp="f.image_2!=0"]
[image layer=2 page=fore visible=true storage="&f.image_2" name="status" width="100" height="75" x=&tf.event_image_x_2 y=&tf.event_image_y]
[endif]

;手紙表示
[if exp="f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0"]
;----------------------
;&&f.rans_flag==1

[image layer=2 page=fore visible=true storage="ryouri/ryouri_waku.png" name="letter" x=&tf.event_letter_x y=&tf.event_letter_y]


[if exp="f.write_on!=1&&f.letter_day==0"]
[ptext layer="2" page="fore" text="手紙を書く" x=&tf.event_letter_x_button y=&tf.event_letter_y_2 size="14" face="antique" color="brown" bold="true" edge="white" name="letter"]
[button graphic="&f.button_image" storage="scenario_2/status_macro.ks" target="*letter" hint="手紙をかきます" name="letter" width="" height="" fix="" exp="" visible="true" x=&tf.event_letter_x_button y=&tf.event_letter_y_button]

[elsif exp="f.write_on==1&&f.letter_day==3&&f.event_main_19_days!=1"]

[eval exp="tf.event_letter_x_button_w = tf.event_letter_x_button-6"]
[eval exp="tf.event_letter_x_button_r = tf.event_letter_x_button+2"]

[ptext layer="2" page="fore" text="手紙をよむ" x=&tf.event_letter_x_button_r y=&tf.event_letter_y_2 size="14" face="antique" color="brown" bold="true" edge="white" name="letter"]
[button graphic="&f.button_image" storage="scenario_2/status_macro.ks" target="*letter" hint="手紙をよみます" name="letter" width="80" height="60" fix="" exp="" visible="true" x=&tf.event_letter_x_button_w y=&tf.event_letter_y_button]

[elsif exp="f.write_on==1&&f.letter_day<=2"]

[eval exp="tf.event_letter_x_button_r = tf.event_letter_x_button+5"]
[eval exp="tf.event_letter_x_button_w = tf.event_letter_x_button+12"]

[image storage="hato.png" layer="2" page="fore" visible="true" x="&tf.event_letter_x_button_r" y="&tf.event_letter_y_button" name="letter"]

[ptext layer="2" page="fore" text="配達中" x=&tf.event_letter_x_button_w y=&tf.event_letter_y_2 size="14" face="antique" color="brown" bold="true" edge="white" name="letter"]

[endif]

;------------------
[endif]


[endmacro]











;---------------------------------------

;イレインの能力値更新
[macro name="irain_kousin"]

[free name="status_skill" layer=2]
[free name="status_hp" layer=2]

[if exp="f.irain_tec>998"]
[eval exp="f.irain_tec=998"]
[endif]

[if exp="f.irain_brain>998"]
[eval exp="f.irain_brain=999"]
[endif]

[if exp="f.irain_charm>998"]
[eval exp="f.irain_charm=999"]
[endif]




;能力値更新
;能力値更新
;技術
[ptext layer=2 page=fore text="技術" name="status_skill" face=antique size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" face=antique size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" face=antique size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" face=antique name="status_skill" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" face=antique name="status_skill" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" face=antique name="status_skill" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]

[if exp="f.irain_hp>9999"]
[eval exp="f.irain_hp=9999"]
[endif]


[ptext layer=2 page=fore visible="true" text="&f.irain_hp" face=antique name="status_hp" size=30 x=&tf.irain_hp_x y=&tf.irain_hp_y]


[endmacro]


;----------------------------------------------------------
;---------------------------------------


[macro name="day_minus"]

[if exp="f.event_main_8==1"]
[eval exp="f.event_main_8_days=f.event_main_8_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_14_days>0"]
[eval exp="f.event_main_14_days=f.event_main_14_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_15_days>0"]
[eval exp="f.event_main_15_days=f.event_main_15_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_16_days>0"]
[eval exp="f.event_main_16_days=f.event_main_16_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_17_days>0"]
[eval exp="f.event_main_17_days=f.event_main_17_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_18_days>0"]
[eval exp="f.event_main_18_days=f.event_main_18_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.event_main_19_days>0"]
[eval exp="f.event_main_19_days=f.event_main_19_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.work efficiency<0"]
[eval exp="f.work efficiency=1"]
[endif]



[endmacro]




[macro name="day_end"]
[fadeoutbgm time=1000]

[call storage="scenario_2/day_end_macro.ks"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[day_minus]
[day_end_system]
[day_end_honbu_event]


;ウェスタ編、クライストと船長
[if exp="f.event_main_17_days==4&&f.kra_flag==1&&f.event_sub_17_sumi[1]!=1"]
[skip_button]
[message_settei_ad]
[call storage="scenario_2/episode/epi_w_sub_story_auto.ks"]
[sencho_kra]
[eval exp="f.event_sub_17[1]=0"]
[eval exp="f.event_sub_17_sumi[1]=1"]
[endif]
;ウェスタ編、クライスト抱擁
[if exp="f.event_main_17_days==3&&f.kra_flag==1&&f.event_sub_17_sumi[6]!=1"]
[skip_button]
[message_settei_ad]
[call storage="scenario_2/episode/epi_w_sub_story_auto.ks"]
[kra_houyou]
[eval exp="f.event_sub_17[6]=0"]
[eval exp="f.event_sub_17_sumi[6]=1"]
[endif]

;クラフラグあり
[if exp="f.event_main_16_days==0&&f.event_epi7_kra_ok!=7&&f.event_war_kra_sumi==1"]
[skip_button]
[message_settei_ad]
[call storage="scenario_2/episode/epi_7_kra_epi.ks"]

[kra_epi_end]
[eval exp="f.event_epi7_kra_ok=-1"]

[elsif exp="f.event_epi7_kra_ok==3"]
[skip_button]
[message_settei_ad]
[kra_epi_4]
[eval exp="f.event_epi7_kra_ok=4"]

[elsif exp="f.event_epi7_kra_ok==5"]
[skip_button]
[message_settei_ad]
[kra_epi_6]

[elsif exp="f.event_epi7_kra_ok==6"]
[skip_button]
[message_settei_ad]
[eval exp="f.event_epi7_kra_ok=7"]
[call storage="scenario_2/episode/epi_7_kra_epi.ks"]
[kra_epi_7]
[endif]


;ランスフラグあり
[if exp="f.event_epi5_rans_ok>0"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[endif]

[if exp="f.event_rans_search_yes==-1||f.event_main_15_days<7&&f.event_epi5_rans_ok==1"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[rans_kouryaku_end]
[eval exp="f.event_rans_search_yes=0"]

[elsif exp="f.event_epi5_rans_ok==3"]
[eval exp="f.map=0"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[bg storage="kisidanrouka_tasogare.jpg"]
[dancho_tetudai]
[eval exp="f.event_epi5_rans_ok=4"]
[jump target=*kra_night]
[elsif exp="f.event_epi5_rans_ok==4"]
*kra_night
[kra_night]
[eval exp="f.event_epi5_rans_ok=5"]
[elsif exp="f.event_epi5_rans_ok==5"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[yuria_kra]
[eval exp="f.event_epi5_rans_ok=6"]
[elsif exp="f.event_epi5_rans_ok==6"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[lion_shomei]
[eval exp="f.event_epi5_rans_ok=7"]
[elsif exp="f.event_epi5_rans_ok==9"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[rans_saikai_shokuji]
*saikai_shokuji_re

[eval exp="tf.event_num = "]

[eval exp="f.event_epi5_rans_ok=10"]
[endif]

[eval exp="f.tougijou_battle_time=0"]
[eval exp="f.tougijou=0"]
[eval exp="f.tougijou_level=0"]

[anten]

;-------通常背景と、ウェスタでは返事が届くまでの日数

[if exp="f.event_main_18_days>=0&&f.s_wesuta==1"]
[bg storage="wesuta_yado.jpg" time=50]
[elsif exp="f.s_wesuta==1"]
[bg storage="hune_room.jpg" time=50]
[elsif exp="f.s_wesuta!=1"]
[bg storage="irainheya_tasogare.jpg" time=50]
[endif]

[if exp="f.letter_day>=0&&f.s_wesuta==1&&f.write_on==1"]
[eval exp="f.letter_day = f.letter_day + 1"]
[endif]




;イレインの外出回数追加
[eval exp="f.irain_move=2"]
;お誘いイベントフラグ消去
[if exp="f.s_wesuta==1||f.s_oukyu==1"]
[eval exp="f.sasoi=0"]
[endif]
;マップフラグ消去
[eval exp="f.map=0"]
[map_flag_delete]
[last_day_event]

;当日朝一番イベント
[if exp="f.event_epi5_rans_ok==7"]
[call storage="scenario_2/episode/epi_5_rans_epi.ks"]
[shokei_toujitu]
[eval exp="f.event_epi5_rans_ok=8"]
[bg storage="irainheya_tasogare.jpg"]


[endif]

[if exp="sf.chokki!=1"]
[refresh_hanyou]
[endif]
[message_settei_ad]
[eval exp="sf.chokki=0"]
[if exp="f.skip_on==1"]
[clearfix name="skip_button"]
[eval exp="f.skip_on=0"]
[endif]
[jump storage="scenario_2/status_macro.ks" target=*status]

[endmacro]



[macro name="status_hyouji_kousin"]

;ステータス再表示
;ステータスベース
[image layer=1 page=fore storage="status_window.png" name="status" x=175 y=140]

;イレインの顔画像
[image layer=2 page=fore storage="battle_face/irain_face.png" name="status" x=200 y=152]


;街の人の信頼度
[image layer=2 page=fore storage="trust_star_0.png" name="status" x=225 y=280]


[if exp="f.town_trust>=2"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=225 y=280]

[endif]

[if exp="f.town_trust>=5"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=237 y=280]

[endif]

[if exp="f.town_trust>=7"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=249 y=280]

[endif]


[if exp="f.town_trust>=10"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=261 y=280]

[endif]

[if exp="f.town_trust>=12"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=273 y=280]

[endif]

[if exp="f.town_trust>=15"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=285 y=280]

[endif]



;名前
[ptext layer=2 page=fore text="&f.name" face="antique" name="status" size=21 x=370 y=163]


[ptext layer=2 page=fore visible="true" text="HP:" face="antique" name="status" size=20 x=355 y=190]


[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]

[ptext layer=2 page=fore visible="true" text="&f.irain_hp" face="antique" name="status_hp" size=30 x=395 y=190]

;トロフィ
[if exp="f.tougijou_kunshou==1"]
[image layer=2 page=fore storage="torofi.png" name="status" x=458 y=188]
[endif]
[eval exp="tf.irain_hp_x=395"]
[eval exp="tf.irain_hp_y=190"]


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
[ptext layer=2 page=fore text="技術" name="status_skill" face="antique" size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" face="antique" size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" face="antique" size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" face="antique" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" face="antique" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" face="antique" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

;所属
[ptext layer=2 page=fore text="所属:" name="status" face="antique" size=20 x=215 y=305]

;所属名
[ptext layer=2 page=fore text="クレール王国地方騎士団" name="status" face="antique" size=20 x=260 y=305]




[endmacro]




[macro name="event_check"]

[eval exp="f.attention_ok=0"]

;王宮
[if exp="f.event_8_oukyu==2&&f.event_main_8_days>4"]
[eval exp="f.attention_ok=1"]
[endif]




;酒場
[if exp="f.event_8_oogui==1&&f.friend==0||f.event_8_nusutto==1&&f.event_main_8_days<6&&f.event_main_8_days>1"]

[eval exp="f.attention_ok=1"]

[elsif exp="f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_rans==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_lion==1||f.event_8_curnival_hana==1&&f.event_main_8_days<2&&f.curnival_kra==1"]

[eval exp="f.attention_ok=1"]

[endif]

;噴水広場
[if exp="f.event_8_hanakazari==1||f.event_8_hanacha==1&&f.event_main_8_days<5&&f.friend==0||f.event_8_unpan==1||f.event_8_gotisou==1&&f.event_main_8_days<2"]
[eval exp="f.attention_ok=1"]


[endif]

;ガイアの森


;裏通り
[if exp="f.event_8_help==1&&f.friend==0&&f.event_main_8_days<3"]
[eval exp="f.attention_ok=1"]
[endif]


;王都入り口
[if exp="f.event_8_sharomu_tegami==1&&f.irain_move>1"]
[eval exp="f.attention_ok=1"]
[endif]

;---------エルムナード編
;侵攻前
[if exp="f.event_main_14_days>0"]
[eval exp="tf.event_num=15"]
;--------------------------------------
*mata
[if exp="f.event_sub_14[tf.event_num]==1&&f.irain_move>0"]

;-----
[if exp="tf.event_num==0&&f.irain_move==1||tf.event_num==0&&f.friend>0||tf.event_num==3&&f.irain_move==1||tf.event_num==8&&f.irain_move==1"]
[jump target=*mata_d]
[endif]
[if exp="tf.event_num==7"]
[jump target=*mata_d]
[endif]
[if exp="tf.event_num==2&&f.friend>0||tf.event_num==5&&f.friend>0||tf.event_num==6&&f.friend!=3||tf.event_num==7||tf.event_num>8&&f.friend>0"]
[jump target=*mata_d]
[endif]
[if exp="tf.event_num==9||tf.event_num==15&&f.friend==0&&f.event_main_14_days<9"]
[jump target=*mata_d]
[endif]
;-----
[eval exp="f.attention_ok=1"]
[endif]

*mata_d
[if exp="tf.event_num>0"]
[eval exp="tf.event_num=tf.event_num-1"]
[jump target=*mata]
[endif]
;-------------------------------------------
[endif]

;祝賀会前
[if exp="f.event_main_15_days>0"]

[if exp="f.event_epi5_rans_ok==1&&f.irain_move==1&&f.event_main_15_days==7||f.event_epi5_rans_ok==3||f.event_sub_15[0]==1&&f.friend==0&&f.krakonkando>30"]
[eval exp="f.attention_ok=1"]
[endif]
[endif]
;騎士団解散前

;ウェスタ
[if exp="f.event_main_17_days>0"]

[if exp="f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5"]
[eval exp="f.attention_ok=1"]
[endif]

[if exp="f.event_sub_17_sumi[3]!=1&&f.event_main_17_days==2"]
[eval exp="f.attention_ok=1"]
[endif]

[if exp="f.kra_flag==1&&f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5"]
[eval exp="f.attention_ok=1"]
[endif]

[if exp="f.lion_flag==1&&f.event_sub_17_sumi[0]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[4]!=1&&f.event_main_17_days==5||f.lion_flag==1&&f.event_sub_17_sumi[5]!=1&&f.event_main_17_days==4||f.lion_flag==1&&f.event_sub_17_sumi[2]!=1&&f.event_main_17_days==3"]
[eval exp="f.attention_ok=1"]
[endif]
[endif]


[endmacro]


[macro name="equip_current_1_check"]
;現在の装備ナンバーを確認、変数に代入
[iscript]

tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<f.equip_item_list.length;i++){
if(this.kag.stat.f["equip_item_current"]==i){

	this.kag.stat.f["equip_item_stock"][i]+=1;

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2 = tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3 = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];

    
}


}

[endscript]

;能力値を変更
[if exp="tf.equip_item_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm-tf.equip_item_effect_number_3"]
[endif]
[if exp="tf.equip_item_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain-tf.equip_item_effect_number_2"]
[endif]
[if exp="tf.equip_item_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec-tf.equip_item_effect_number_1"]
[endif]




[endmacro]


;装備欄１の装備変更時の名前変更
[macro name="equip_change_item_name_1"]
[iscript]
tyrano.plugin.kag.variable.tf.item_name =0;

var equip_item = this.kag.stat.f["equip_item_current"];

tyrano.plugin.kag.variable.tf.item_name= this.kag.stat.f["equip_item_list"].map(function(x) {return x.name})
tyrano.plugin.kag.variable.tf.item_attribute= this.kag.stat.f["equip_item_list"].map(function(x) {return x.attribute})

for(i=1;i<f.equip_item_list.length;i++){

	if(equip_item==i){
		
	tyrano.plugin.kag.variable.tf.aiko = tyrano.plugin.kag.variable.tf.item_name[i];
	tyrano.plugin.kag.variable.tf.aiko_zokusei = tyrano.plugin.kag.variable.tf.item_attribute[i];
	
	
	if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='cute'){
    this.kag.stat.f["hair_image"]='icon/hair_icon_cute.png';
    }else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='pure'){
	this.kag.stat.f["hair_image"]='icon/hair_icon_pure.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='elegant'){
	this.kag.stat.f["hair_image"]='icon/hair_icon_elegant.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='simple'){
	this.kag.stat.f["hair_image"]='icon/hair_icon.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='rare'){
	this.kag.stat.f["hair_image"]='icon/hair_icon_rare.png';
	}



	
	}

}

[endscript]
;装備欄へ表示
[eval exp="tf.icon_hyouji_x=80"]
[eval exp="tf.icon_hyouji_y=320"]
[eval exp="tf.icon_hyouji_y_2=tf.icon_hyouji_y+30"]

[ptext layer=2 page=fore text=&tf.aiko face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]
[image layer=2 page=fore name="soubi1"  storage=&f.hair_image x=&tf.icon_hyouji_x y=&tf.icon_hyouji_y]
;アイテム欄再表示
[free name="key" layer=2]
[equip_item_shoki]

[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[irain_kousin]
[irain_style_image]
[eval exp="tf.hair_hyouji=0"]
[clearfix]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]



[if exp="f.equip_change==1"]
[button graphic="soubi_ok.png" fix="true" name="store" target=*soubi_end x=210 y=293]
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[else]
[button graphic="soubi_ok.png" fix="true" name="store" target=*equip_ok x=210 y=293]
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[endif]

[endmacro]


[macro name="equip_current_2_check"]

;--------------------------------------------------------------------------
[iscript]

tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<f.equip_item_list.length;i++){
if(this.kag.stat.f["equip_item_current_2"]==i){

	this.kag.stat.f["equip_item_stock"][i]+=1;

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2 = tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3 = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];

    
}


}

[endscript]

;能力値を変更
[if exp="tf.equip_item_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm-tf.equip_item_effect_number_3"]
[endif]
[if exp="tf.equip_item_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain-tf.equip_item_effect_number_2"]
[endif]
[if exp="tf.equip_item_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec-tf.equip_item_effect_number_1"]
[endif]

[endmacro]

[macro name="equip_change_item_name_2"]

;現在の装備ナンバーを確認、変数に代入
[iscript]

var equip_item_2 = this.kag.stat.f["equip_item_current_2"];

tyrano.plugin.kag.variable.tf.item_name= this.kag.stat.f["equip_item_list"].map(function(x) {return x.name})
tyrano.plugin.kag.variable.tf.item_attribute= this.kag.stat.f["equip_item_list"].map(function(x) {return x.attribute})

for(i=1;i<f.equip_item_list.length;i++){

	if(equip_item_2==i){
	equip_item_2 = tyrano.plugin.kag.variable.tf.item_name[i];
	tyrano.plugin.kag.variable.tf.aiko_zokusei = tyrano.plugin.kag.variable.tf.item_attribute[i];
	
	
	if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='cute'){
    this.kag.stat.f["equip_image"]='icon/equip_icon_cute.png';
    }else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='pure'){
	this.kag.stat.f["equip_image"]='icon/equip_icon_pure.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='elegant'){
	this.kag.stat.f["equip_image"]='icon/equip_icon_elegant.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='simple'){
	this.kag.stat.f["equip_image"]='icon/equip_icon.png';
	}else if(tyrano.plugin.kag.variable.tf.aiko_zokusei=='rare'){
	this.kag.stat.f["hair_image"]='icon/equip_icon_rare.png';
	}
	
	}

}

tf.aiko_2 = equip_item_2

[endscript]

[eval exp="tf.icon_hyouji_x=80"]
[eval exp="tf.icon_hyouji_y=320"]
[eval exp="tf.icon_hyouji_y_2=tf.icon_hyouji_y+30"]

[ptext layer=2 page=fore text=&tf.aiko_2 face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]
[image layer=2 page=fore name="soubi2" storage=&f.equip_image x=&tf.icon_hyouji_x  y=&tf.icon_hyouji_y_2]

;アイテム欄再表示
;アイテム欄再表示
[free name="key" layer=2]
[equip_item_shoki]
[eval exp="tf.equip_item_current_1_click=0"]

[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[irain_kousin]
[irain_style_image]
[clearfix]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]

[if exp="f.equip_change==1"]
[button graphic="soubi_ok.png" fix="true" name="store" target=*soubi_end x=210 y=293]
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[else]
[button graphic="soubi_ok.png" fix="true" name="store" target=*equip_ok x=210 y=293]
[jump storage="scenario_2/equip_change.ks" target=*item_shokika]
[endif]


[endmacro]


[macro name="item_suuti_delete"]
[free name="item_suuti" layer=2]
[endmacro]


[macro name="equip_flag_delete"]
[endmacro]



;新しく新規;カーニバル編より


[macro name="money_calc"]
[if exp="f.town_trust>14"]
[eval exp="f.money_level=6"]
[eval exp="f.money=f.money+10000"]
[elsif exp="f.town_trust>11"]
[eval exp="f.money_level=5"]
[eval exp="f.money=f.money+5000"]
[elsif exp="f.town_trust>9"]
[eval exp="f.money_level=4"]
[eval exp="f.money=f.money+3000"]
[elsif exp="f.town_trust>6"]
[eval exp="f.money_level=3"]
[eval exp="f.money=f.money+2000"]
[elsif exp="f.town_trust>4"]
[eval exp="f.money_level=2"]
[eval exp="f.money=f.money+1000"]
[elsif exp="f.town_trust>1"]
[eval exp="f.money_level=1"]
[eval exp="f.money=f.money+500"]
[else]
[eval exp="f.money=f.money+500"]
[endif]

[playse storage="store_money_koukaonlabo.ogg"]
[message_settei_ad]
[if exp="f.money_level_current<f.money_level"]
お給料がアップしました！！[p]
[endif]
[free name="money" layer=1]
[free name="money" layer=2]
[eval exp="f.money_level_current=f.money_level"]
[money_hyouji]
お給料が支払われました。[p]
[if exp="f.first_money!=1"]
お給料は街の人からの信頼度によって上がります。[p]
頑張って信頼度を上げていきましょう！[p]
[eval exp="f.first_money=1"]
[endif]
[endmacro]

[macro name="money_hyouji"]
;お金
[image layer=1 page=fore storage="okane.png" name="money" x=540 y=210]
;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=550 y=220]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=575 y=220]

[endmacro]



[macro name="genzai_soubi_hyouji"]

[free name="soubi1" layer=2]

[iscript]
var current_name=0;
for(i=1;i<f.equip_item_list.length;i++){
	if(this.kag.stat.f["equip_item_current"]==i){		
		tyrano.plugin.kag.variable.tf.equip_item_name_current = this.kag.stat.f["equip_item_list"][i].name;
	    tyrano.plugin.kag.variable.tf.equip_item_zokusei_current = this.kag.stat.f["equip_item_list"][i].attribute;

	}
		if(this.kag.stat.f["equip_item_current_2"]==i){		
		tyrano.plugin.kag.variable.tf.equip_item_name_current_2 = this.kag.stat.f["equip_item_list"][i].name;
	    tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2 = this.kag.stat.f["equip_item_list"][i].attribute;

	}

}
[endscript]

[if exp="f.equip_change==1"]
[ptext layer=2 page=fore text=&tf.equip_item_name_current face=antique name="soubi1" size=20 x=110 y=320]
[else]
[ptext layer=2 page=fore text=&tf.equip_item_name_current face=antique name="soubi1" size=20 x=590 y=300]
[endif]

;装備欄２表示
[if exp="f.equip_change==1"]
[ptext layer=2 page=fore text=&tf.equip_item_name_current_2 face=antique name="soubi2" size=20 x=110 y=350]
[else]
[free name="soubi2" layer=2]
[ptext layer=2 page=fore text=&tf.equip_item_name_current_2 face=antique name="soubi2" size=20 x=590 y=330]
[endif]
;-------------------------------------------------------------------------

[endmacro]

[macro name="soubi_icon_hyouji"]
[iscript]
if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current=='cute'){
this.kag.stat.f["hair_image"]='icon/hair_icon_cute.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current=='pure'){
this.kag.stat.f["hair_image"]='icon/hair_icon_pure.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current=='elegant'){
this.kag.stat.f["hair_image"]='icon/hair_icon_elegant.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current=='simple'){
this.kag.stat.f["hair_image"]='icon/hair_icon.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current=='rare'){
this.kag.stat.f["hair_image"]='icon/hair_icon_rare.png';
}


if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2=='cute'){
this.kag.stat.f["equip_image"]='icon/equip_icon_cute.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2=='pure'){
this.kag.stat.f["equip_image"]='icon/equip_icon_pure.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2=='elegant'){
this.kag.stat.f["equip_image"]='icon/equip_icon_elegant.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2=='simple'){
this.kag.stat.f["equip_image"]='icon/equip_icon.png';
}else if(tyrano.plugin.kag.variable.tf.equip_item_zokusei_current_2=='rare'){
this.kag.stat.f["equip_image"]='icon/equip_icon_rare.png';
}



[endscript]

[image layer=2 page=fore name="soubi1"  storage=&f.hair_image x=&tf.icon_hyouji_x y=&tf.icon_hyouji_y]
[image layer=2 page=fore name="soubi2" storage=&f.equip_image x=&tf.icon_hyouji_x  y=&tf.icon_hyouji_y_2]

[endmacro]


[macro name="task_confirm"]

[message_settei_ad]

[if exp="f.event_8_oukyu==2&&f.event_main_8_days>4"]
#&f.name
「あ・・・王宮に行かなくちゃならないんだっけ。忘れないようにしないと」[p]
#
[endif]

[if exp="f.event_8_otukai==2&&f.task_irai_simekiri== f.event_main_8_days-1"]
#&f.name
「セレさんに頼まれた仕事があるんだよね。王都の門前に行かなくちゃ」[p]
#

[endif]

[endmacro]

[macro name="soubi_henkou"]
;装備変更
;装備変更
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【装備を変更しますか？】

[glink target=*soubi_1 text="（変更する）" size=17 width=600 x=65 y=200]
[glink target=*soubi_2 text="（しない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*soubi_1

[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.equip_change=1"]
[jump storage="scenario_2/equip_prepare.ks"]
[eval exp="f.equip_change=0"]
[jump target=*henkou_end]


*soubi_2
[free name="sentakusi" layer=0]
[ka][eval exp="f.sentakuchuu= 0 "]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


*henkou_end
[endmacro]



[macro name="item_change_shori"]

[iscript]

var item_stock =[];
tyrano.plugin.kag.variable.tf.item_number =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;

tyrano.plugin.kag.variable.tf.item_number_array =[];
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];




//パラメータとエフェクトナンバー、所有数を抽出
tyrano.plugin.kag.variable.tf.item_number_array= this.kag.stat.f["equip_item_list"].map(function(x) {return x.number})
tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})
tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



	for(a=1;a<f.equip_item_list.length;a++){
	
	  if(tyrano.plugin.kag.variable.tf.choice_number==a){
	
         this.kag.stat.f["equip_item_stock"][a]-=1;	

	       if(tyrano.plugin.kag.variable.tf.item_parameter_3[a]==1){
	    	this.kag.stat.f["irain_charm"]+=tyrano.plugin.kag.variable.tf.item_effect_number_3[a];	    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_2[a]==1){
	    	this.kag.stat.f["irain_brain"]+=tyrano.plugin.kag.variable.tf.item_effect_number_2[a];		    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_1[a]==1){
	    	this.kag.stat.f["irain_tec"]+=tyrano.plugin.kag.variable.tf.item_effect_number_1[a];    		    	
	       }
           
	       if(tyrano.plugin.kag.variable.tf.equip_item_change_2!=1){
	    	this.kag.stat.f["equip_item_current"] = a;
	       }else{
	       this.kag.stat.f["equip_item_current_2"] = a;		
	       }
	    
	   
	    
	    
	    	
	  }
	
	}




[endscript]





[endmacro]


[macro name="equip_item_shoki"]
[free name="equip" layer=2]
[eval exp="tf.equip_item_no =[]"]
[eval exp="tf.equip_shori_no =[]"]

[iscript]


for(i=1;i<f.equip_item_list.length;i++){
tyrano.plugin.kag.variable.tf.equip_item_no.push(0);
tyrano.plugin.kag.variable.tf.equip_shori_no.push(0);
}

[endscript]
[endmacro]

[macro name="other_item_shoki"]
[free name="process" layer=2]
[eval exp="tf.process_item_no =[]"]
[eval exp="tf.process_shori_no =[]"]

[iscript]


for(i=1;i<f.other_item_list.length;i++){
tyrano.plugin.kag.variable.tf.process_item_no.push(0);
tyrano.plugin.kag.variable.tf.process_shori_no.push(0);
}

[endscript]
[endmacro]



;---------
[macro name="item_use_shori"]
[eval exp="tf.use_no=0"]
[eval exp="f.jigaku_help=0"]
[iscript]

var item_stock =[];
tyrano.plugin.kag.variable.tf.item_number =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_3=0;

tyrano.plugin.kag.variable.tf.item_number_array =[];
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];




//パラメータとエフェクトナンバー、所有数を抽出
tyrano.plugin.kag.variable.tf.item_number_array= this.kag.stat.f["other_item_list"].map(function(x) {return x.number})
tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_3})
tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_3_number})


var len =f.other_item_list.length;

	for(a=1;a<len;a++){
	
	  if(tyrano.plugin.kag.variable.tf.choice_number==a&&a!=31&&a!=32&&a!=33&&a!=34&&a!=35){
	
         this.kag.stat.f["other_item_stock"][a]-=1;	

		 if(a===39){
			 f.jigaku_help=1;
		 }

		 if(a===31||a===32||a===33||a===34||a===35){
			tf.use_no=1; 
		 }


	       if(tyrano.plugin.kag.variable.tf.item_parameter_3[a]==1){
	    	this.kag.stat.f["irain_charm"]+=tyrano.plugin.kag.variable.tf.item_effect_number_3[a];	    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_2[a]==1){
	    	this.kag.stat.f["irain_brain"]+=tyrano.plugin.kag.variable.tf.item_effect_number_2[a];		    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_1[a]==1){
	    	this.kag.stat.f["irain_tec"]+=tyrano.plugin.kag.variable.tf.item_effect_number_1[a];    		    	
	       }
           

	    
	   
	    
	    
	    	
	  }
	
	}




[endscript]





[endmacro]



[macro name="soubi_item_icon_hyouji"]


[eval exp="tf.icon_kaisuu= tf.item_hyouji_kaisu"]

[if exp="tf.item_equip_hyouji==1"]

[if exp="tf.process_item_type_no[tf.toosi]=='hair'"]
[eval exp="tf.hair_hyouji =1"]
[eval exp="tf.type_zokusei_hair = tf.type_zokusei"]
[else]
[eval exp="tf.type_zokusei_equip = tf.type_zokusei"]
[endif]
[elsif exp="tf.item_battle_hyouji==1||tf.item_cook_hyouji==1||tf.item_other_hyouji==1"]
[jump target=*fin]
[endif]


*icon_modoru
[iscript]


if(tyrano.plugin.kag.variable.tf.hair_hyouji===1){

	 if(tyrano.plugin.kag.variable.tf.type_zokusei_hair[tyrano.plugin.kag.variable.tf.toosi]=='pure'){
 	
 		tyrano.plugin.kag.variable.tf.hair_image='icon/hair_icon_pure.png';
 		
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_hair[tyrano.plugin.kag.variable.tf.toosi]=='cute'){
 	
 		tyrano.plugin.kag.variable.tf.hair_image='icon/hair_icon_cute.png';
 	
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_hair[tyrano.plugin.kag.variable.tf.toosi]=='elegant'){
 	
 		tyrano.plugin.kag.variable.tf.hair_image='icon/hair_icon_elegant.png';
 		
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_hair[tyrano.plugin.kag.variable.tf.toosi]=='simple'){ 	
 		tyrano.plugin.kag.variable.tf.hair_image='icon/hair_icon.png';
 	
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_hair[tyrano.plugin.kag.variable.tf.toosi]=='rare'){ 	
 		tyrano.plugin.kag.variable.tf.hair_image='icon/hair_icon_rare.png';
 	
 		}
 
 }else if(tyrano.plugin.kag.variable.tf.hair_hyouji!=1){
 	
 		 if(tyrano.plugin.kag.variable.tf.type_zokusei_equip[tyrano.plugin.kag.variable.tf.toosi]=='pure'){
 	
 		tyrano.plugin.kag.variable.tf.equip_image='icon/equip_icon_pure.png';
 		
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_equip[tyrano.plugin.kag.variable.tf.toosi]=='cute'){
 	
 		tyrano.plugin.kag.variable.tf.equip_image='icon/equip_icon_cute.png';
 	
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_equip[tyrano.plugin.kag.variable.tf.toosi]=='elegant'){
 	
 		tyrano.plugin.kag.variable.tf.equip_image='icon/equip_icon_elegant.png';
 		
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_equip[tyrano.plugin.kag.variable.tf.toosi]=='simple'){ 	
 		tyrano.plugin.kag.variable.tf.equip_image='icon/equip_icon.png';
 	
 	}else if(tyrano.plugin.kag.variable.tf.type_zokusei_equip[tyrano.plugin.kag.variable.tf.toosi]=='rare'){ 	
 		tyrano.plugin.kag.variable.tf.equip_image='icon/equip_icon_rare.png';
 	
 		}


 	
 	
 }
 




[endscript]



[if exp="tf.item_equip_hyouji==1&&tf.hair_hyouji==1"]
[eval exp="tf.item_image=tf.hair_image"]
[elsif exp="tf.item_equip_hyouji==1"]
[eval exp="tf.item_image=tf.equip_image"]
[endif]


[if exp="tf.item_equip_hyouji==1"]
[eval exp="tf.hair_hyouji=0"]
[eval exp="tf.icon_x =tf.process_item_x_icon"]
[image layer=2 page=fore visible=true  storage=&tf.item_image name="process" x=&tf.icon_x y=&tf.process_item_y]
[eval exp="tf.icon_y=tf.icon_y+45"]

[elsif exp="tf.hair_hyouji==1"]
[image layer=2 page=fore visible=true  storage=&tf.hair_image name="equip" x=&tf.equip_item_x_icon y=&tf.equip_item_y_icon]
[eval exp="tf.equip_item_y_icon=tf.equip_item_y_icon+45"]

[elsif exp="tf.hair_hyouji!=1"]
[image layer=2 page=fore visible=true  storage=&tf.equip_image name="equip" x=&tf.equip_item_x_icon y=&tf.equip_item_y_icon]
[eval exp="tf.equip_item_y_icon=tf.equip_item_y_icon+45"]

[endif]





*fin



[endmacro]

[macro name="town_sasiire"]

;天井ストッパ

[if exp="f.trust_sasiire>4"]
[eval exp="f.trust_sasiire=3"]
[endif]


[if exp="f.town_trust>=5&&f.trust_sasiire>=3"]
街から地方騎士団に差し入れがありました！[p]

;-------アイテムガチャ
[iscript]
tf.sasiire = Math.floor( Math.random() * 10) + 1
[endscript]

;テストコード
;[eval exp="tf.sasiire=10"]
;[eval exp="f.town_trust=5"]
;

[if exp="tf.sasiire<8"]
;共通キャラメル
;アイテムNo
[eval exp="tf.item_get_no =1"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='battle'"]

;---------------------------------------
[elsif exp="tf.sasiire==8&&f.town_trust>14"]

;アイテムNo
[eval exp="tf.item_get_no =16"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='other'"]

[elsif exp="tf.sasiire==8&&f.town_trust>9"]

;アイテムNo
[eval exp="tf.item_get_no =29"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]
;--------------------------------------------

[elsif exp="tf.sasiire==9&&f.town_trust>14"]

;アイテムNo
[eval exp="tf.item_get_no =25"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]

[elsif exp="tf.sasiire==9&&f.town_trust>9"]

;アイテムNo
[eval exp="tf.item_get_no =5"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='battle'"]

;----------------------------------------------

[elsif exp="tf.sasiire==10&&f.town_trust>14"]

;アイテムNo
[eval exp="tf.item_get_no =29"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]


[elsif exp="tf.sasiire==10&&f.town_trust>9"]

;アイテムNo
[eval exp="tf.item_get_no =21"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]

;---------------------------------------------

[elsif exp="tf.sasiire==8"]

;アイテムNo
[eval exp="tf.item_get_no =31"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]

[elsif exp="tf.sasiire==9"]

;アイテムNo
[eval exp="tf.item_get_no =32"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]

[elsif exp="tf.sasiire==10"]

;アイテムNo
[eval exp="tf.item_get_no =33"]
;アイテムの個数
[eval exp="tf.item_quant_num =1"]
;アイテムのタイプ
[eval exp="tf.item_get_type ='cook'"]

[endif]

[sasiire_item_get]
;-------------------



[eval exp="f.trust_sasiire=0"]
[endif]

[if exp="f.trust_sasiire<3"]
[eval exp="f.trust_sasiire=f.trust_sasiire+1"]
[endif]



[endmacro]


[macro name="heya_hyouji"]
[if exp="f.irain_move==0||f.tougijou_battle_time>2"]
[eval exp="f.irain_move=0"]
[bg storage="irainheya_yoru_tasogare.jpg" time=50]
[elsif exp="f.irain_move==1||f.tougijou_battle_time>1"]
[eval exp="f.irain_move=1"]
[bg storage="irainheya_yuu_tasogare.jpg" time=50]

[else]
[bg storage="irainheya_tasogare.jpg" time=50]
[endif]
[endmacro]

[macro name="heya_hyouji_w"]

[if exp="f.event_main_18_days>0&&f.irain_move==0"]
[bg storage="wesuta_yado_yoru.jpg" time=50]

[elsif exp="f.event_main_18_days>0&&f.irain_move==1"]

[bg storage="wesuta_yado_yuu.jpg" time=50]

[elsif exp="f.event_main_18_days>0"]

[bg storage="wesuta_yado.jpg" time=50]

[elsif exp="f.irain_move==0||f.tougijou_battle_time>2"]

[eval exp="f.irain_move=0"]
[bg storage="hune_yoru_room.jpg" time=50]

[elsif exp="f.irain_move==1||f.tougijou_battle_time>1"]

[eval exp="f.irain_move=1"]
[bg storage="hune_yuu_room.jpg" time=50]

[else]

[bg storage="hune_room.jpg" time=50]
[endif]
[endmacro]



[macro name="letter_macro"]
[if exp="f.write_on!=1"]
[message_settei_ad]
#&f.name
「ランスロットに手紙を書いてみよう！」[p]
#
#&f.name
「えーと・・・」[p]
#

・[r]
・[r]
・[r]
[p]
#&f.name
「よし！できた！！ランスロット、喜んでくれるといいな・・・」[p]
#
手紙を出しました[p]

;返事が届くまでの変数;日付が変わるごとにプラスで、3になれば返事が届く
[eval exp="f.letter_day =1"]

[if exp="f.letter_no==1"]
[eval exp="f.letter_no=2"]
[elsif exp="f.letter_no==2"]
[eval exp="f.letter_no=3"]
[elsif exp="f.letter_no==3"]
[eval exp="f.letter_no=4"]
[else]
[eval exp="f.letter_no=1"]
[endif]

[eval exp="f.write_on=1"]


[eval exp="f.irain_move=f.irain_move-1"]

[elsif exp="f.write_on==1&&f.letter_day==3"]

#&f.name
「あ！！手紙がきてる！！」[p]
#
#&f.name
「えーと・・・」[p]
#
;手紙の内容
[letter_naiyou]

[if exp="f.letter_no!=4"]
#&f.name
「・・・ランスロット・・・」[p]
#
#&f.name
（嬉しいな・・・返事、早いうちにかかないとだね。待ってるかもだし）[p]
#
[elsif exp="f.letter_no==4"]
#&f.name
「・・・ランスロット・・・エルムナード関所に・・・」[p]
#
#&f.name
（・・・ウェルム団長が急に・・・？どういうことなんだろう・・・）[p]
#

[endif]


[eval exp="f.write_on=0"]
[eval exp="f.letter_day=0"]
[endif]
[heya_hyouji_w]

[endmacro]


[macro name="letter_naiyou"]

[anten]
[message_settei_ad]

[live2d_rans_touroku]
[live2d_rans_show_sekkin]
[playbgm storage="koucha_ontama.ogg"]

[if exp="f.letter_no==1&&f.event_main_17_days>0"]

#ランスロット
[rans_unaduki]
[rans_exp_normal_warai]
手紙をありがとう。とても嬉しかった。[p]
[rans_head_right_z]
船旅はどうだ？困ったことは起きていないか？[p]
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_body_left_z_half]
船ではおそらく男所帯だろうから、苦労もあるだろう。[p]
[rans_exp_mehuse_mousiwakenai]
・・・とても心配だ。[p]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
お前のことだから、きっとうまくやるのだろうと思ってはいるが・・・[p]
[rans_mod_idle]
[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
こちらはセレの入団も無事すんで、
[rans_unaduki]
彼女はアニス副団長の部隊に所属された。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
上司が女性ならば安心だと思ったが、女性同士は女性同士でいろいろあるようだな・・・。[p]
[rans_head_right_x]
[rans_eyes_right]
[rans_exp_normal_warai]
グレッグ団長は騎士を引退し、王都の家でひとりぐらしらしい。[p]
[rans_eyes_normal]
[rans_head_normal]
王都での所用のついでに尋ねたら、楽しそうに料理をしていた。振る舞ってもらったが、なかなかの腕だったぞ。[p]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
娘のセレの趣味も料理だというから、あれは血なのだろうな。[p]
[rans_mod_idle]
[rans_head_normal]
[rans_body_normal]
[rans_exp_normal]
私のほうは地方騎士団と王宮騎士団の合併による人員確保や調整、配属の人事関係の仕事も加わって忙しくしている。[p]
[rans_head_under_y]
[rans_head_left_x]
[rans_body_left_z_half]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
地方騎士団との合併とはいえ、この機にやめていった者たちも多かったから、一時的に人手不足にもなっている。[p]
[rans_head_right_z]
[rans_eyes_right]
[rans_exp_komari_warai]
[rans_body_right_z_half]
お前やライオネスがいれば、安心できる戦力になったと思うんだが。[p]
[rans_eyes_normal]
[rans_head_normal]
[rans_body_normal]
[rans_exp_normal]
街のほうはいまのところは異形の被害はほとんどない。
[rans_unaduki]
モンスターも最近は落ち着いているしな。[p]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
[rans_mod_idle_no_move_mehuse]
エルムナード女王ルシアが手にしていた、魔剣ヴァエルがさまようなど・・・にわかには信じがたい話だが
王都に危険が迫っているのは間違い無いのだろう。[p]
[rans_exp_normal]
[rans_head_normal]
[rans_mod_idle]
ウェスタで、よい手がかりが見つかることを祈っている。[p]
[rans_eyes_left]
[rans_head_left_z]
王都では近頃夜風が冷たくなってきた。[p]
[rans_eyes_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
夜勤のとき、ひとりで事務仕事をしているとき、また夜寝る前・・・
必ずお前のことを思い出す。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
いや、そんなときだけではないな。[p]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
いつでも何かふとした瞬間に、お前の顔を思い出すんだ。[p]
[rans_exp_mehuse_mousiwakenai]
まだ王都をたって、少ししか経っていないと言うのに。[p]
[rans_head_normal]
[rans_exp_normal_warai]
[rans_mod_idle]
お前の声は、いつでも私の頭の中にある、その笑顔も、忘れることはないだろう。[p]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse_mousiwakenai]
[rans_mod_idle_no_move_mehuse]
だがやはり、直に顔をみたい。お前の声が聞きたい。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
自分でも情けないことだと思ったが・・・
[rans_head_normal]
[rans_head_right_z]
[rans_exp_komari_warai]
[rans_mod_idle]
それだけお前は私にとって・・・大切な存在なのだろう。[p]
[rans_head_left_z]
[rans_body_left_z_half]
[rans_exp_bisyo]
お前の笑顔が一日でも早く見られるよう願っている。
[rans_head_normal]
[rans_unaduki]
また、よければ返事を書いてくれ。[p]




ランスロット[p]
#


[elsif exp="f.letter_no==2&&f.event_main_17_days>0"]

[rans_exp_normal_warai]
[rans_head_right_z]
#ランスロット
返事をありがとう。[p]
[rans_head_normal]
[rans_exp_komari]
[rans_unaduki]
体調はどうだ？疲れてはいないか？[p]
[rans_exp_normal]
[rans_head_left_z]
[rans_eyes_left]
緊張もとけてくるころに、体の調子は崩れやすい。気をつけろよ。[p]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
そういえば先日、噴水広場にぬいぐるみの行商が来ていたな。[p]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
子供たちが親にせがんで買ってもらっては、満足した顔でぬいぐるみを抱えて、それは和む風景だった。[p]
[rans_mod_idle]
[rans_exp_normal_warai]
それをみて思い出したんだが・・・お前は覚えているか？[p]
[rans_head_under_y]
[rans_head_left_x]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
故郷のテーベから王都へきたばかりのころ・・・[p]
[rans_mod_idle]
[rans_head_normal]
[rans_head_right_z]
[rans_eyes_right]
お前はいつも一緒に寝ているうさぎのぬいぐるみを忘れてきたといって、騒いだことがあっただろう。[p]
[rans_exp_mehuse_warai]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
ぬいぐるみのかわりに一緒に寝てくれとまで言われて・・・[p]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]
せめて手に入らないかと王都はその周辺を探し回って、ようやく街道を歩いている行商人を見つけたんだった。[p]
[rans_mod_idle]
[rans_eyes_right]
[rans_exp_komari_warai]
いまはどうかわからないが、お前の部屋に飾ってあったな。[p]
[rans_exp_mehuse_warai]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
それを見て、ようやくうさぎがなくても眠れるようになったんだなと安心したものだ。[p]
[rans_mod_idle]
[rans_exp_normal_warai]
[rans_head_normal]
すまない、ただの思い出話だ。
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
だが・・・あれから随分と月日がたってしまったように思える。[p]
お前が私のもとを離れて、こうやって航海をしていることも、あのときは予想もしなかった。[p]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]
お前の成長が嬉しいと同時に、寂しくもある。[p]
[rans_exp_metoji]
私の力が必要なくなっても、お前は私を慕い続けてくれるのだろうか。[p]
[rans_mod_idle]
[rans_exp_normal_warai]
[rans_head_left_x]
[rans_body_left_z_half]
願わくば、そうであってほしい。
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
そしてもう少し欲を言うなら・・・。[p]
[rans_head_normal]
[rans_head_under_y]
お前の目に、私はどううつるのだろうか。今まで通り、師匠という私がうつっているのだろうか。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
それとも、今は違うのだろうか。
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
後者であってほしいと思うのは、さすがに欲深すぎるな。[p]
[rans_mod_idle]
[rans_head_normal]
[rans_exp_normal]
仕事が忙しいのは相変わらずだが、その中でもお前のことを思い出さない日は一日としてない。[p]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
ひとりで困っていることはないか？心細くは、ないのだろうか？[p]
[rans_eyes_left]
特に、船内は男ばかりだろうから・・・その、非常に心配している。[p]
[rans_head_right_x]
[rans_eyes_right]
ライオネスのやつは信用できるが、四六時中見張ってるわけにはいかないだろうし・・・[p]
[rans_mod_idle]
[rans_exp_normal]
お前はわかっているだろうが、いろいろと、気を付けろよ。[p]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
私がそばにいれば、危険な目になど合わせたりはしないのだが・・・[p]
[rans_exp_komari_warai]
[rans_head_left_z]
[rans_eyes_left]
[rans_mod_idle]
すまない、そんなことを言ったらお前はきっと怒るのだろうな。[p]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
長くなってしまった、それではまたな。[p]
[rans_mod_idle]
[rans_unaduki]
[rans_exp_normal_warai]
お前からの返事を楽しみにしている。[p]




ランスロット[p]
#


[elsif exp="f.letter_no==3&&f.event_main_18_days>0"]

#ランスロット
[rans_exp_bisyo]
手紙をありがとう。[p]
[rans_head_right_z]
近頃多忙で疲れ気味だったが、届いていた手紙をみてそれも吹き飛んだ。[p]
[rans_exp_normal_warai]
[rans_head_normal]
ウェスタはどうだ？私も訪れたことはないのだが、小さな島ながら街並みは整えられていてとても美しいそうだ。[p]
[rans_unaduki]
大きな図書館もあるというから、さまざまな知識に触れてくるとよいだろう。[p]
[rans_unaduki]
[rans_head_right_z]
[rans_exp_komari]
手紙の文では元気そうだが、なにか困ったこと、
[rans_head_normal]
[rans_eyes_right]
[rans_eyes_left]
悩んでいることなどはないか？
[rans_eyes_normal]
[p]
[rans_exp_mehuse_warai]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
お前の力になりたいと、いつも思っている。
[rans_exp_mehuse_mousiwakenai]
そばにいれば、いつでもそうできるのにな・・・[p]
[rans_head_normal]
[rans_exp_normal]
[rans_mod_idle]
王宮騎士団は人員の数も落ち着いてきて、そろそろ忙しい日々から解放されそうだ。[p]
[rans_exp_normal_warai]
[rans_eyes_right]
もちろん、お前やライオネス、トリスタンが戻ってきたときの席はあけてあるから安心していい。[p]
[rans_eyes_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_muzukasii]
ただ・・・少々気になるのは、近頃の父上の様子だ。[p]
[rans_mod_idle]
[rans_exp_normal]
[rans_eyes_right]
[rans_head_right_z]
気のせい・・・なのかもしれないが、以前よりも何か・・・雰囲気が変わった気がする。[p]
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii
[rans_mod_idle_no_move_mehuse]]
それがなにかは、はっきりとは言えないのだが・・・。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
つねに近くにいるアニス副団長も、気づいているのかいないのか・・・普段通りだから
私の気のせいかとも思えたのだが・・・。[p]
[rans_head_normal]
[rans_exp_normal]
[rans_mod_idle]
すまない、ここでお前にそんなことを書いても、困らせるだけだな。[p]
[rans_exp_normal_warai]
私の方は変わらず元気でやっている。騎士団も統制がとれてきているし、王都も変わったことは特に無い。[p]
[rans_eyes_left]
時々、モンスターが出る程度で、
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
異形は・・・ごくごくたまに、生き残りなのか顔を出すこともあるが・・・[p]
[rans_unaduki]
[rans_exp_normal]
[rans_mod_idle]
私の隊だけでも対応できるくらいの強さで、問題視するほどのことではなさそうだ。[p]
[rans_exp_normal_warai]
春のカーニバルのときに壊れた街の一部も、もうすっかり元どおりになって、人々も平穏な日々を送っている。[p]
[rans_head_normal]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]
街を歩くと子供たちの笑う声が聞こえるのは、平和な証拠だ。そうしてそれが、一番大切なことだ。[p]
[rans_head_under_y]
[rans_exp_ketui]
もし、この平和な王都をヴァエルが狙っているとしたら・・・必ず阻止しなければならない。[p]
[rans_exp_normal]
[rans_unaduki]
ウェスタで何か手がかりは得られそうか？よい成果があるよう願っている。[p]
[rans_head_right_z]
[rans_eyes_right]
[rans_body_right_z_half]
今ウェスタにいるとしたら、お前が帰ってくるまであと半分だな・・・[p]
[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
そう考えると、待ち遠しくはあるが・・・お前は、どう、思っているのだろうな・・・。[p]
[rans_head_left_z]
[rans_eyes_normal]
[rans_exp_komari_warai]
少しでも私のことを思い出してくれていたら、いいのだが。[p]
[rans_head_normal]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
航海の無事を、祈っている。[p]
[rans_head_normal]
[rans_mod_idle]
[rans_exp_normal]
ライオネスたちがいるから、そうそう簡単にはやられないと思うが・・・
[rans_exp_ketui]
十分に気を付けてくれ。[p]
[rans_head_right_z]
[rans_exp_normal_warai]
それじゃ、またな。[p]
#
ランスロット[p]

[elsif exp="f.letter_no==4&&f.event_main_19_days>=0"]


#ランスロット
[rans_exp_normal_warai]
手紙をありがとう。
[rans_exp_normal]
[rans_eyes_right]
・・・今頃はどうしているのだろうか。[p]
[rans_exp_normal]
[rans_unaduki]
王都へむかっているところか？[p]
[rans_exp_komari]
[rans_head_left_z]
[rans_body_right_z_half]
長い船旅で、疲れてはいないか？お前は頑張りすぎるところがあるから、気を付けろよ。[p]
[rans_head_under_y]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
ウェスタではなにか収穫があったのだろうか？それとも・・・[p]
[rans_mod_idle]
[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
いや、もしもなかったとしても、怯むわけにはいかないな。
[rans_unaduki]
他の方法を探して、王都は守らなくてはならない。[p]
[rans_head_left_z]
[rans_eyes_left]
王都自体は今までどおりだが、王宮騎士団は今、父上の命で隊の再編成に追われている。[p]
[rans_head_normal]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
なぜ父上が急にそんなことを命令したのか・・・実のところ私にもわからない。[p]
[rans_exp_mehuse_muzukasii]
[rans_mod_idle_no_move_mehuse]
私の隊も少しメンバーが変わり・・・副隊長のエクターは今まで通りだが、任務内容が
王都、王宮の警備からエルムナード関所の守備に変更された。[p]
[rans_mod_idle]
[rans_exp_normal]
すでに準備はできていて、私もこの手紙を書き終えたら、エルムナード関所へ出発する。[p]
[rans_exp_mehuse_mousiwakenai]
[rans_mod_idle_no_move_mehuse]
[rans_body_right_z_half]
すまない、お前が王都に到着しても、私は騎士団にはいないかもしれないな・・・。[p]
[rans_unaduki]
[rans_body_normal]
[rans_mod_idle]
だが、知らせを受ければすぐに駆けつける。国民もいないエルムナード国境の警備だ、エクターに任せておけば問題ない。[p]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_muzukasii]
問題は、なぜ今更エルムナードへ私を派遣しようと父上が思い立ったのか・・・。[p]
もちろん、理由を問いただしはしたが・・・とりあってはもらえなかった。[p]
[rans_eyes_left]
父上には昔からそう言う部分はあったが、意味のない命令を出すような人物ではない。[p]
[rans_eyes_normal]
だが今回はなにか・・・なにかが引っかかる気がする・・・軍事上の理由以外のなにかが・・・[p]
[rans_mod_idle]
[rans_exp_normal]
[rans_eyes_left]
加えて言うと、最近の父上は今までと何かが違う感じがする。曖昧な言い方しかできないんだが・・・[p]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
なにかが・・・朝も夜も寝ずに仕事をしていたり、妙に人の感情に聡かったり・・・[p]
[rans_exp_mehuse_muzukasii]
まるでどこか・・・別人になったのかと思えるくらいのときもある。[p]
[rans_head_normal]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_kunou]
こんなことをここで書いても、しかたないんだが・・・ここだから書くが・・・不安なんだ。[p]
[rans_head_left_z]
[rans_head_normal]
[rans_head_under_y]
[rans_eyes_left]
こう、はっきりと言えるものではないんだが・・・なにか、なにかいやな予感がする。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
杞憂であってほしい・・・願うばかりだ。[p]
[rans_mod_idle]
[rans_exp_normal]
王都にはあとどれくらいで着きそうか？
[rans_exp_mehuse_muzukasii]
[rans_eyes_left]
[rans_mod_idle_no_move_mehuse]
王宮騎士団へくることになるだろうが・・・父上にはくれぐれも気を付けてくれ。[p]
[rans_head_normal]
[rans_eyes_normal]
本当に私の、杞憂であったらいいんだが・・・用心するにこしたことはない。[p]
[rans_exp_normal]
[rans_mod_idle]
王都についたら、エルムナード関所に知らせを送ってくれ。すぐに会いにいく。[p]
[rans_head_right_z]
[rans_exp_sinpai]
もうすぐお前が帰るというのに、王都にいられないのが本当に歯痒い。[p]
[rans_mod_idle_no_move_mehuse]
[rans_head_left_z]
[rans_exp_mehuse]
お前が王都を発ってから、一日たりともお前の顔と声を忘れたことなどないというのに・・・。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
お前にとって私は・・・もしかしたら「師匠」に過ぎないのかもしれない。いや、きっとそうなのだろうが・・・[p]
[rans_mod_idle]
[rans_head_normal]
[rans_exp_normal]
私にとってお前は・・・特別な存在だ。
[rans_unaduki]
[rans_exp_sinpai]
[rans_mod_idle_no_move_mehuse_2]
師弟という関係がなく出会っていたとしても、きっとこんな気持ちになっただろう。[p]
[rans_head_right_x]
[rans_head_under_y]
[rans_eyes_right]
お前が私の命を救ってくれたあのときから、いや本当はもっと前から・・・私のお前に対する気持ちはきっと微妙に変化していたのだろう。[p]

[rans_mod_idle_no_move_mehuse]
[rans_eyes_normal]
[rans_exp_mehuse]
私がお前の師匠であったこと
、そしてお前が私の弟子であったことは、今やきっかけにすぎない。[p]
[rans_head_normal]
[rans_mod_idle_no_move_mehuse_2]
[rans_exp_komari]
[name]・・・もし私が師匠とは異なる視線で見つめ、触れることを許してくれるなら・・・[p]
[rans_body_right_x_half]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
こんなことは、手紙でいうべきではないな。[p]
[rans_exp_sinpai]
[rans_mod_idle_no_move_mehuse_2]
[rans_head_normal]
[rans_body_normal]
お前に伝えたいことがある。お前がもし聞いてくれるなら、その目を見て告げたい。[p]
[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]
必ず無事に戻ってきてくれ。
[rans_mod_idle]
[rans_exp_normal]
・・・待っている。[p]
#
ランスロット[p]


[endif]

[fadeoutbgm time=1000]
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]


[endmacro]







[return]