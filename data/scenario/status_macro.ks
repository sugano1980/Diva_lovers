


[macro name="status_hyouji"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
*first
[if exp="f.disc_num>1"]
[jump storage="scenario_2/status_macro.ks" target=*first]
[endif]
[if exp="f.array_shokika_sumi!=1"]
[call storage="array_shokika.ks"]
[endif]

[call storage="item/equip_item_data_new.ks"]
[call storage="item/battle_item_data.ks"]
[call storage="item/other_item_data_new.ks"]

[call storage="status_macro_macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="equip_change_macro_data.ks"]
[call storage="map_macro.ks"]



;自由行動中のフラグ
[eval exp="f.kyuujitu=1"]
[hidemenubutton][hidemenu]
;メニューボタンの表示
[button_menu]




;装備アイテムデータを読み込み,パラメータ計算マクロ
[call storage="item/equip_item_data_new.ks"]
[call storage="skill_calc_current.ks"]

;信頼度
;[eval exp="f.town_trust=0"]
;お金
;[eval exp="f.money=0"]
;[name]能力値


[if exp="f.workefficiency<=0"]
[eval exp="f.workefficiency=1"]
[endif]


[if exp="f.irain_out==1"]
[eval exp="f.irain_out=0"]
[endif]

[if exp="f.irain_move==0||f.tougijou_battle_time>2"]
[eval exp="f.irain_move=0"]
[bg storage="irainheya_yoru_tasogare.jpg" time=50]
[elsif exp="f.irain_move==1||f.tougijou_battle_time>1"]
[eval exp="f.irain_move=1"]
[bg storage="irainheya_yuu_tasogare.jpg" time=50]

[else]
[bg storage="irainheya_tasogare.jpg" time=50]
[endif]


*town_sasiire
;街の人からの差し入れ
[message_settei_ad]
[if exp="f.town_trust>=5&&f.trust_sasiire>=3"]
街から地方騎士団に差し入れがありました！[p]
[eval exp="f.battle_item_stock[1]=f.battle_item_stock[1]+1"]
[playse storage="item_status_up_onjin.ogg"]
キャラメルを１つ手に入れた！[p]
[eval exp="f.trust_sasiire=0"]
[else]
[eval exp="f.trust_sasiire=f.trust_sasiire+1"]
[endif]
[message_kakusu_ad]


*status
[hidemenubutton][hidemenu]
[button_menu]
;サブイベント用のフラグ
[if exp="f.event_2_gaia==2"]
[eval exp="f.event_2_gaia=0"]
[endif]




;外出してきて行動回数０なら強制的に一日が終わる
[if exp="f.irain_move<1"]
[eval exp="f.irain_move=2"]
[day_end]
[endif]


[eval exp="tf.command_x=10"]
[eval exp="tf.command_y=70"]
[eval exp="tf.command_y_button=75"]
[eval exp="tf.command_x_moji=tf.command_x+45"]
[eval exp="tf.command_y_moji=tf.command_y+10"]

[eval exp="tf.command_x_2=10"]
[eval exp="tf.command_x_2_moji=tf.command_x_moji"]
[eval exp="tf.command_y_2_button=tf.command_y_button+60"]
[eval exp="tf.command_y_2=tf.command_y+60"]
[eval exp="tf.command_y_2_moji=tf.command_y_moji+60"]

[eval exp="tf.command_x_3=10"]
[eval exp="tf.command_x_3_moji=tf.command_x_moji"]
[eval exp="tf.command_y_3_button=tf.command_y_2_button+60"]
[eval exp="tf.command_y_3=tf.command_y_2+60"]
[eval exp="tf.command_y_3_moji=tf.command_y_2_moji+60"]

[eval exp="tf.command_x_4=10"]
[eval exp="tf.command_x_4_moji=tf.command_x_moji"]
[eval exp="tf.command_y_4_button=tf.command_y_3_button+60"]
[eval exp="tf.command_y_4=tf.command_y_3+60"]
[eval exp="tf.command_y_4_moji=tf.command_y_3_moji+60"]

[eval exp="tf.command_x_5=10"]
[eval exp="tf.command_x_5_moji=tf.command_x_moji"]
[eval exp="tf.command_y_5_button=tf.command_y_4_button+60"]
[eval exp="tf.command_y_5=tf.command_y_4+60"]
[eval exp="tf.command_y_5_moji=tf.command_y_4_moji+60"]

[eval exp="tf.command_x_6=10"]
[eval exp="tf.command_x_6_moji=tf.command_x_moji"]
[eval exp="tf.command_y_6_button=tf.command_y_5_button+65"]
[eval exp="tf.command_y_6=tf.command_y_5+60"]
[eval exp="tf.command_y_6_moji=tf.command_y_5_moji+60"]

[eval exp="tf.command_x_7=10"]
[eval exp="tf.command_x_7_moji=tf.command_x_moji"]
[eval exp="tf.command_y_7_button=tf.command_y_6_button+60"]
[eval exp="tf.command_y_7=tf.command_y_6+60"]
[eval exp="tf.command_y_7_moji=tf.command_y_6_moji+60"]













[playbgm storage="boukennojunbi_ontama.ogg"]



;外出

[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x y=&tf.command_y]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" enterimg="" target=*odekake x=&tf.command_x y=&tf.command_y_button]


[ptext layer=2 page=fore text="外出" face=antique name="command" color="brown" size=20 x=&tf.command_x_moji y=&tf.command_y_moji]

;稽古
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_2 y=&tf.command_y_2]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*keiko x=&tf.command_x_2 y=&tf.command_y_2_button]


[ptext layer=2 page=fore text="稽古" face=antique name="command" color="brown" size=20 x=&tf.command_x_2_moji y=&tf.command_y_2_moji]

;課題
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_3 y=&tf.command_y_3]

[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*kadai x=&tf.command_x_3 y=&tf.command_y_3_button]


[ptext layer=2 page=fore text="課題" face=antique name="command" color="brown" size=20 x=&tf.command_x_3_moji y=&tf.command_y_3_moji]


[eval exp="tf.command_x_4_moji=tf.command_x_4_moji-10"]

;闘技場
[if exp="f.rans_tutrial_no==1"]
[ptext layer=2 page=fore text="？？？" face=antique name="command" color="brown" size=20 x=&tf.command_x_4_moji y=&tf.command_y_4_moji]
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_4 y=&tf.command_y_4]

[else]
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_4 y=&tf.command_y_4]


[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*tougijou x=&tf.command_x_4 y=&tf.command_y_4_button]


[ptext layer=2 page=fore text="闘技場" face=antique name="command" color="brown" size=20 x=&tf.command_x_4_moji y=&tf.command_y_4_moji]
[endif]

;休む
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_5 y=&tf.command_y_5]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*rest x=&tf.command_x_5 y=&tf.command_y_5_button]
[ptext layer=2 page=fore text="休む" face=antique name="command" color="brown" size=20 x=&tf.command_x_5_moji y=&tf.command_y_5_moji]

[eval exp="tf.command_x_6_moji=tf.command_x_6_moji-15"]

;アイテム
[image layer=1 page=fore storage="button/command.png" name="command_item" x=&tf.command_x_6 y=&tf.command_y_6]

[if exp="tf.item_hyouji==1"]
[button graphic="button/command.png" fix="true" name="command_item_button" enterse="tm2_switch001_macchi.ogg" target=*item_modoru x=&tf.command_x_6 y=&tf.command_y_6_button]
[else]
[button graphic="button/toumei.png" name="command_item_button" enterse="tm2_switch001_macchi.ogg" target=*item x=&tf.command_x_6 y=&tf.command_y_6]
[endif]

[ptext layer=2 page=fore text="アイテム" face=antique name="command_item" color="brown" size=20 x=&tf.command_x_6_moji y=&tf.command_y_6_moji]

;記録・設定
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_7 y=&tf.command_y_7]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*config x=&tf.command_x_7 y=&tf.command_y_7_button]
[ptext layer=2 page=fore text="設定" face=antique name="command" color="brown" size=20 x=&tf.command_x_7_moji y=&tf.command_y_7_moji]





;隣のだん

;[button graphic="button/command.png" enterimg="button/command.png" clickse="tm2_;switch001_macchi.ogg" target=*kaisou x=150 y=30]

;[button graphic="button/command.png" enterimg="button/command.png" clickse="tm2_;switch001_macchi.ogg" target=*kaisou x=150 y=90]

;[button graphic="button/command.png" enterimg="button/command.png" clickse="tm2_;switch001_macchi.ogg" target=*kaisou x=150 y=150]




*kaisou


[clearstack]

;
;[image layer=1 page=fore storage="equip_window.png" name="status" x=172 y=270]

;装備
[image layer=1 page=fore storage="shozoku_window.png" name="soubi" x=530 y=250]
[image layer=1 page=fore storage="equip_huda.png" name="soubi" x=530 y=260]
[button name="change_button" graphic="soubi_change.png" clickse="tm2_switch001_macchi.ogg" fix=true target=*return x=670 y=270]



[ptext layer=2 page=fore text="装備" size=20 face=antique color="brown" name="soubi" x=570 y=265]
[image layer=2 page=fore name="soubi1" name="soubi" storage="hair_icon.png" x=560 y=300]
[image layer=2 page=fore name="soubi2" name="soubi" storage="equip_icon.png" x=560 y=330]




;[eval exp="tf.soubi1_x=590"]
;[eval exp="tf.soubi2_x=590"]
;[eval exp="tf.soubi1_y=300"]
;[eval exp="tf.soubi2_y=330"]

;装備欄アイテム表示装備欄１
[free name="soubi1" layer=2]

;装備欄のアイテム名表示
;-------------------------------------------------------------------------
[genzai_soubi_hyouji]

;-------------------------------------------------------------------------
;お金の表示
[money_hyouji]



;ステータス表示

[status_hyouji_kousin]




;装備欄
[image layer=1 page=fore storage="item_window.png" name="equip" x=840 y=50]

;装備中み

;お知らせ


;イベントフラグの確認
[event_check]

[if exp="tf.attention_sumi!==1&&f.attention_ok==1"]
[attention]
[endif]

*button_hyouji

;目標張り紙

[mokuhyou]

*attention_return





[s]


*condition




[eval exp="f.jouken_hyouji=1"]
[clearfix name="mokuhyou"]
[free name="mokuhyou" layer=1]
[free name="mokuhyou" layer=2]
[clearstack]
[jump target="*button_hyouji"]

*condition_2



[eval exp="f.jouken_hyouji=0"]
[clearfix name="mokuhyou"]
[free name="mokuhyou" layer=1]
[free name="mokuhyou" layer=2]
[clearstack]
[jump target="*button_hyouji"]








*return

[hidemenubutton][hidemenu]

[eval exp="tf.first_data_read=1"]
[jump  target=*item_shokika]

*item_data_read_return
[cm]
[clearstack]

;irain表示
[irain_style_image]
[free name="attention" layer=1]
[free name="attention" layer=2]
[clearfix name="attention"]
[clearfix name="change_button"]
[button graphic="soubi_ok.png" clickse="tm2_switch001_macchi.ogg" fix=true name="change_button" target=*equip_ok x=210 y=293]


;装備の説明表示と旧ヴァージョンのcssを削除

[ptext layer=3 name="soubi_setumei" text="※装備欄のアイテムをクリックすると装備可能なアイテムを表示" color="#b8860b" x=100 y=560]
[loadcss file="./data/scenario/mini_game/item_css/item_delete.css" ]
[anim name="command" left="-=400" time=200]

[anim name="command_item" left="-=400" time=200]
[anim name="command_item_button" left="-=400" time=200]


[anim name="money" left="-=800" time=200]


;--------------
[anim name="status" left="-=125" time=200]
[anim name="status" top="-=100" time=200]

[anim name="status_hp" left="-=125" time=200]
[anim name="status_hp" top="-=100" time=200]

[anim name="status_skill" left="-=125" time=200]
[anim name="status_skill" top="-=100" time=200]



[anim name="soubi" left="-=480" time=200]
[anim name="soubi" top="+=20" time=200]

[anim name="soubi1" left="-=480" time=200]
[anim name="soubi1" top="+=20" time=200]


[anim name="soubi2" left="-=480" time=200]
[anim name="soubi2" top="+=20" time=200]


[anim name="equip" left="-=430" time=200]






[anim name="mokuhyou" left="+=300" time=200]






[eval exp="tf.irain_hp_x=tf.irain_hp_x-125"]
[eval exp="tf.irain_hp_y=tf.irain_hp_y-100"]



[eval exp="tf.irain_tec_x=tf.irain_tec_x-125"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_number_x-125"]
[eval exp="tf.irain_tec_y=tf.irain_tec_y-100"]
[eval exp="tf.irain_tec_number_y=tf.irain_tec_number_y-100"]


[eval exp="tf.irain_brain_x=tf.irain_brain_x-125"]
[eval exp="tf.irain_brain_number_x=tf.irain_brain_number_x-125"]

[eval exp="tf.irain_brain_y=tf.irain_brain_y-100"]
[eval exp="tf.irain_brain_number_y=tf.irain_brain_number_y-100"]



[eval exp="tf.irain_charm_x=tf.irain_charm_x-125"]
[eval exp="tf.irain_charm_number_x=tf.irain_charm_number_x-125"]

[eval exp="tf.irain_charm_y=tf.irain_charm_y-100"]
[eval exp="tf.irain_charm_number_y=tf.irain_charm_number_y-100"]




[message_kakusu_ad]



[eval exp="tf.irain_tec_suuti_x=tf.irain_tec_number_x+40"]
[eval exp="tf.irain_brain_suuti_x=tf.irain_brain_number_x+40"]
[eval exp="tf.irain_charm_suuti_x=tf.irain_charm_number_x+40"]

[eval exp="tf.irain_tec_suuti_number_x=tf.irain_tec_number_x+52"]
[eval exp="tf.irain_brain_suuti_number_x=tf.irain_brain_number_x+52"]
[eval exp="tf.irain_charm_suuti_number_x=tf.irain_charm_number_x+52"]





;装備欄のボタン

;アイテム表示用の変数に初期値入力
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]
[eval exp="tf.equip_item_6=0"]
[eval exp="tf.equip_item_7=0"]
[eval exp="tf.equip_item_8=0"]
[eval exp="tf.equip_item_9=0"]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]
[eval exp="tf.equip_item_19=0"]
[eval exp="tf.equip_item_20=0"]
[eval exp="tf.equip_item_21=0"]
[eval exp="tf.equip_item_22=0"]
[eval exp="tf.equip_item_23=0"]
[eval exp="tf.equip_item_24=0"]
[eval exp="tf.equip_item_25=0"]
[eval exp="tf.equip_item_26=0"]
[eval exp="tf.equip_item_27=0"]
[eval exp="tf.equip_item_28=0"]
[eval exp="tf.equip_item_29=0"]
[eval exp="tf.equip_item_30=0"]
[eval exp="tf.equip_item_31=0"]
[eval exp="tf.equip_item_32=0"]
[eval exp="tf.equip_item_33=0"]
[eval exp="tf.equip_item_34=0"]
[eval exp="tf.equip_item_35=0"]

[iscript]
tyrano.plugin.kag.variable.tf.equip_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.equip_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]



[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]


[eval exp="tf.soubi1_x=110"]
[eval exp="tf.soubi2_x=110"]
[eval exp="tf.soubi1_y=320"]
[eval exp="tf.soubi2_y=350"]

[eval exp="tf.soubi1_key_x=tf.soubi1_x-5"]
[eval exp="tf.soubi1_key_y=tf.soubi1_y+3"]

[eval exp="tf.soubi2_key_x=tf.soubi2_x-5"]
[eval exp="tf.soubi2_key_y=tf.soubi2_y+3"]

[eval exp="tf.equip_item_y=80"]
[eval exp="tf.equip_item_x=490"]

[eval exp="tf.equip_1_key_x=tf.equip_item_x-5"]
[eval exp="tf.equip_1_key_y=tf.equip_item_y+3"]
[eval exp="tf.equip_2_key_y=tf.equip_1_key_y+45"]
[eval exp="tf.equip_3_key_y=tf.equip_2_key_y+45"]
[eval exp="tf.equip_4_key_y=tf.equip_3_key_y+45"]
[eval exp="tf.equip_5_key_y=tf.equip_4_key_y+45"]
[eval exp="tf.equip_6_key_y=tf.equip_5_key_y+45"]
[eval exp="tf.equip_7_key_y=tf.equip_6_key_y+45"]
[eval exp="tf.equip_8_key_y=tf.equip_7_key_y+45"]
[eval exp="tf.equip_9_key_y=tf.equip_8_key_y+45"]



[eval exp="tf.equip_item_y_2=tf.equip_item_y+45"]
[eval exp="tf.equip_item_y_3=tf.equip_item_y_2+45"]
[eval exp="tf.equip_item_y_4=tf.equip_item_y_3+45"]
[eval exp="tf.equip_item_y_5=tf.equip_item_y_4+45"]
[eval exp="tf.equip_item_y_6=tf.equip_item_y_5+45"]
[eval exp="tf.equip_item_y_7=tf.equip_item_y_6+45"]
[eval exp="tf.equip_item_y_8=tf.equip_item_y_7+45"]
[eval exp="tf.equip_item_y_9=tf.equip_item_y_8+45"]

;アイテム説明表示の座標
[eval exp="tf.explain_x=430"]
[eval exp="tf.explain_y=520"]
;アイテム文字大きさ
[eval exp="tf.font_size=16"]

;アイテムページ遷移用
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.equip_item_back_page=0"]


*equip_button_return
[clearstack]
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.equip_item_back_page=0"]
[button graphic="button/toumei.png" exp="tf.equip_item_current_1_click=tf.equip_item_current_1_click+1" fix="true" target=*soubi_1  name="soubi1_button" x=&tf.soubi1_x y=&tf.soubi1_y]

[button graphic="button/toumei.png" exp="tf.equip_item_current_2_click=tf.equip_item_current_2_click+1" fix="true" target=*soubi_2  name="soubi2_button" x=&tf.soubi2_x y=&tf.soubi2_y]





[s]



*equip_ok




[eval exp="tf.equip_item_choice=0"]
[clearstack]
[free name="key" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_2=0"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_1=0"]

[free name="soubi_setumei" layer=3]

[anim name="command" left="+=400" time=200]

[anim name="command_item" left="+=400" time=200]
[anim name="command_item_button" left="+=400" time=200]

[anim name="money" left="+=800" time=200]


;----------
[anim name="status" left="+=125" time=200]
[anim name="status" top="+=100" time=200]

[anim name="status_hp" left="+=125" time=200]
[anim name="status_hp" top="+=100" time=200]


[anim name="status_skill" left="+=125" time=200]
[anim name="status_skill" top="+=100" time=200]

;------------


[anim name="soubi" left="+=480" time=200]
[anim name="soubi" top="-=20" time=200]

[anim name="soubi1" left="+=480" time=200]
[anim name="soubi1" top="-=20" time=200]


[anim name="soubi2" left="+=480" time=200]
[anim name="soubi2" top="-=20" time=200]


[anim name="equip" left="+=430" time=200]
[anim name="equip_moji" left="+=430" time=200]
[anim name="equip_moji_2" left="+=430" time=200]





[anim name="mokuhyou" left="-=300" time=200]


[eval exp="tf.irain_hp_x=tf.irain_hp_x+125"]
[eval exp="tf.irain_hp_y=tf.irain_hp_y+100"]

[eval exp="tf.irain_tec_x=tf.irain_tec_x+125"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_number_x+125"]
[eval exp="tf.irain_tec_y=tf.irain_tec_y+100"]
[eval exp="tf.irain_tec_number_y=tf.irain_tec_number_y+100"]


[eval exp="tf.irain_brain_x=tf.irain_brain_x+125"]
[eval exp="tf.irain_brain_number_x=tf.irain_brain_number_x+125"]

[eval exp="tf.irain_brain_y=tf.irain_brain_y+100"]
[eval exp="tf.irain_brain_number_y=tf.irain_brain_number_y+100"]



[eval exp="tf.irain_charm_x=tf.irain_charm_x+125"]
[eval exp="tf.irain_charm_number_x=tf.irain_charm_number_x+125"]

[eval exp="tf.irain_charm_y=tf.irain_charm_y+100"]
[eval exp="tf.irain_charm_number_y=tf.irain_charm_number_y+100"]







[button graphic="soubi_change.png" clickse="tm2_switch001_macchi.ogg" name="change_button" target=*return x=670 y=270]

[cm]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]


[jump target=*status]

[s]



*soubi_1
[cm]

;装備１クリックしたスイッチ
[eval exp="f.soubi_1=1"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.hair_hyouji=1"]

[equip_item_shoki]

;ブッキング防止
[if exp="tf.equip_item_current_2_click>0"]
;消去
[free name="key" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[eval exp="tf.hair_hyouji=1"]

[equip_item_shoki]
[jump target=*mokemoke]

[endif]




[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;

for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_1_click==2){
tyrano.plugin.kag.variable.tf.choice_number= tyrano.plugin.kag.variable.tf.equip_item_number[i];
tyrano.plugin.kag.variable.tf.jump_change = 1;//装備変更にジャンプ
}
}
[endscript]
[if exp="tf.jump_change==1"]
[eval exp="tf.jump_change=0"]
[jump storage="equip_change_macro.ks" target=*equip_change]
[endif]


[iscript]
for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_1_click==1){

				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;		

}
}
[endscript]
[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;装備欄両方クリックで消去
[if exp="tf.equip_item_current_1_click==1&&tf.equip_item_current_2_click==1"]
[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[elsif exp="tf.equip_item_current_1_click==2"]

[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

;[equip_button_process_1]

[clearstack]
[jump target=*equip_button_return]
[s]

[endif]


[if exp="tf.equip_item_current_1_click==1"]
*mokemoke
;[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
[endif]

;アイテムを表示
;------------
*soubi1_hyouji
;ここからボタン処理
[jump target=*item_shokika]
;ヘアアレンジ装備

*item_hyouji

[clearstack]
[jump target=*equip_button_return]
[s]


*soubi_2

[cm]
;消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_current_1_click=0"]

[equip_item_shoki]

[eval exp="tf.hair_hyouji=0"]


;ブッキング防止
[if exp="tf.equip_item_current_1_click>0"]
;消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[equip_item_shoki]

[eval exp="tf.hair_hyouji=0"]
[jump target=*moke]

[endif]



;装備2クリックしたスイッチ
[eval exp="f.soubi_2=1"]

[iscript]

tyrano.plugin.kag.variable.tf.choice_number= 0;

for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_2_click==2){
tyrano.plugin.kag.variable.tf.choice_number= tyrano.plugin.kag.variable.tf.equip_item_number[i];
tyrano.plugin.kag.variable.tf.jump_change = 1;//装備変更にジャンプ
}
}
[endscript]
[if exp="tf.jump_change==1"]
[eval exp="tf.jump_change=0"]
[jump storage="equip_change_macro.ks" target=*equip_change_2]
[endif]


[iscript]
for(i=1;i<19;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_2_click==1){

				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;		

}
}
[endscript]
[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]



;装備欄両方クリックで消去
[if exp="tf.equip_item_current_1_click==1&&tf.equip_item_current_2_click==1"]
[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[elsif exp="tf.equip_item_current_2_click==2"]

[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

;[equip_button_process_1]

[clearstack]
[jump target=*equip_button_return]
[s]

[endif]


[if exp="tf.equip_item_current_2_click==1"]
*moke
;[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[endif]
;

;アイテムを表示
;------------
*soubi2_hyouji
;ここからボタン処理
[jump target=*item_shokika]
;ヘアアレンジ装備

*item_hyouji2

[clearstack]
[jump target=*equip_button_return]
[s]

[clearstack]
[jump target=*equip_button_return]


[s]



;--------











;外出
*odekake
[taikichu]
[clearstack]
;現在の場所フラグ
[eval exp="f.place_creru_honbu=1"]
;外出フラグ（イベント以外である証明）
[eval exp="f.irain_out=1"]


[clearfix]
[clearfix name="change_button"]
[freeimage layer=1]
[freeimage layer=2]
[playbgm storage="guild_ontama.ogg"]
[creru_outo_map]


;稽古
*keiko
[taikichu]

[hidemenubutton][hidemenu]
;スキップボタン

[eval exp="tf.command_x_2_skip=tf.command_x_2 +127"]
[eval exp="tf.command_y_2_skip=tf.command_y_2"]


;[button graphic="button/toumei.png" name="skip_command" enterse="tm2_switch001_macchi.ogg" fix=true target=*tec_calc x=&tf.command_x_2_skip y=&tf.command_y_2_skip]
;[ptext layer=2 page=fore text="Skip" face=makinas name="skip_command" color="white" size=30 x=&tf.command_x_2_skip y=&tf.command_y_2_skip]



;[free name="skip_command" layer=2 time=3000]
;[clearfix name="skip_command"]


[cm]



;ステータス画面を上に避ける
;[anim name="status" top="-=500" time=200]
;[anim name="status_hp" top="-=500" time=200]
;[anim name="status_skill" top="-=500" time=200]

[cm]

[clearfix]
;[freeimage layer=1]
;[freeimage layer=2]

[clearstack]
;イレイン表示
[image layer=1 page=fore visible=true storage="pose_keiko.gif" width=240 height=155 x=250 y=5]

;[playse storage="battle_se/irain_sword_0.ogg"]
;[wait time=50]
;[playse storage="katana1_tairakomori.ogg"]
;[wait time=70]
;[playse storage="katana1_tairakomori.ogg"]
;[w]
;[cm]

[clearfix]
;[freeimage layer=1]
;[freeimage layer=2]
;[image layer=2 storage="siro.jpg" name="back_siro" page=fore time=2000 x=0 y=0]

[playse storage="item_status_up_onjin.ogg"]
[wait time=600]
[playse storage="keiko_onjin.ogg"]

;ステータス画面もどす
;[anim name="status" top="+=500" time=200]
;[anim name="status_hp" top="+=500" time=200]
;[anim name="status_skill" top="+=500" time=200]
;[free name="back_siro" layer=2]
;[live2d_fadeout time=1000]
;[live2d_delete_all]

*tec_calc

;作業効率の計算

[iscript]
f.point = Math.floor( Math.random() * 5) + 1;
[endscript]

[eval exp="f.point=f.point*f.work efficiency"]
[eval exp="f.irain_tec=f.irain_tec+f.point"]

[eval exp="tf.irain_tec_number_x_up=tf.irain_tec_number_x+20"]





[stopbgm]



;---------


[status_hyouji_kousin]
[irain_kousin]



;------------



[image layer=1 page=fore storage="status_up.gif" x=&tf.irain_tec_number_x_up y=&tf.irain_tec_number_y]

[message_settei_ad]
#
技術が[emb exp="f.point"]ポイントアップ！！[p]
#





[cm]
[day_end]




;[image layer=2 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]
;[bg storage="bukiko_tasogare.jpg" time=50]
;[live2d_irain_command]
;[live2d_motion name="irain" mtn="Pose_keiko" no=0]


;[free name="back_siro" layer=2 time=3000]

;[anim name="irain" top="-=125" time=200]

;剣げき

;[if exp="tf.anime_irain==1"]
;[loadcss file="./data/scenario/mini_game/battle_anime_delete.css"]
;[eval exp="tf.anime_irain=0"]
;[endif]

;[jump target=*anime_irain]

*anime_irain_2

;[loadcss file="./data/scenario/mini_game/battle_anime.css"]


*anime_irain


;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_0.png" x=350 y=50]
;[free layer=3 name="anime" time=20]

;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_1.png" x=350 y=50]
;[free layer=3 name="anime" time=20]


;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_2.png" x=350 y=50]
;[free layer=3 name="anime" time=20]


;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_3.png" x=350 y=50]
;[free layer=3 name="anime" time=20]

;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_4.png" x=350 y=50]
;[free layer=3 name="anime" time=20]

;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_5.png" x=350 y=50]
;[free layer=3 name="anime" time=20]


;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_6.png" x=350 y=50]
;[free layer=3 name="anime" time=20]

;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_7.png" x=350 y=50]
;[free layer=3 name="anime" time=20]


;[image layer=3 page=fore visible=true name="anime" storage="battle_animation/irain/irain_sword_8.png" x=350 y=50]
;[free layer=3 name="anime" time=20]

;[if exp="tf.anime_irain!=1"]
;[eval exp="tf.anime_irain=1"]
;[jump target=*anime_irain_2]
;[endif]




;[bg storage="siro.jpg" time=200]
;[bg storage="bukiko_tasogare.jpg" time=50]
;[bg storage="siro.jpg" time=50]
;[bg storage="bukiko_tasogare.jpg" time=50]


;[anim name="irain" top="+=125" time=200]

;[wait time=1000]
;-----------------------------------


;課題
*kadai
[taikichu]
[hidemenubutton][hidemenu]
;スキップボタン

[eval exp="tf.command_x_3_skip=tf.command_x_3 +122"]
[eval exp="tf.command_y_3_skip=tf.command_y_3"]


;[button graphic="button/toumei.png" name="skip_command" enterse="tm2_switch001_macchi.ogg" fix=true target=*brain_calc x=&tf.command_x_3_skip y=&tf.command_y_3_skip]
;[ptext layer=2 page=fore text="Skip" face=makinas name="skip_command" color="white" size=30 x=&tf.command_x_3_skip y=&tf.command_y_3_skip]



;[free name="skip_command" layer=2 time=3000]
;[clearfix name="skip_command"]


;----------------


[cm]
;イレイン表示
[image layer=1 page=fore visible=true storage="pose_kadai.gif" width=240 height=135 x=250 y=5]


;ステータス画面を上に避ける
;[anim name="status" top="-=500" time=200]
;[anim name="status_hp" top="-=500" time=200]
;[anim name="status_skill" top="-=500" time=200]


[clearfix]
;[freeimage layer=1]
;[freeimage layer=2]

[cm]
;[image layer=2 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]

;[bg storage="kisidan_toshositu_tasogare.jpg" time=50]
[clearstack]

;[name]表示
;[live2d_irain_command];[live2d_motion name="irain" mtn="Pose_kadai" no=0]
;[wait time=1000]
;[free name="back_siro" layer=2 time=1000]

;[w][w][w][w][w][w]
;[cm]



;[image layer=2 storage="siro.jpg" name="back_siro" page=fore time=2000 x=0 y=0]

;ステータス画面もどす
;[anim name="status" top="+=500" time=500]
;[anim name="status_hp" top="+=500" time=500]
;[anim name="status_skill" top="+=500" time=500]

;[free name="back_siro" layer=2]
;[live2d_fadeout time=1000]
;[live2d_delete_all]



*brain_calc

[iscript]
f.point = Math.floor( Math.random() * 5) + 1
[endscript]

[eval exp="f.point=f.point*f.work efficiency"]
[eval exp="f.irain_brain=f.irain_brain+f.point"]

[eval exp="tf.irain_brain_number_x_up=tf.irain_brain_number_x+20"]
;[cm]
;[bg storage="siro.jpg" time=30]
;[bg storage="irainheya_tasogare.jpg" time=30]
;[bg storage="siro.jpg" time=30]
;[bg storage="irainheya_tasogare.jpg" time=30]

[stopbgm]
[playse storage="item_status_up_onjin.ogg"]
[wait time=700]
[playse storage="kadai_onjin.ogg"]

[image layer=1 page=fore storage="status_up.gif" x=&tf.irain_brain_number_x_up y=&tf.irain_brain_number_y]

[message_settei_ad]
#
頭脳が[emb exp="f.point"]ポイントアップ！！[p]
#

[clearstack]

;---------

[status_hyouji_kousin]
[irain_kousin]

;------------







[cm]
[day_end]



;闘技場
*tougijou
[taikichu]
[hidemenubutton][hidemenu]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[stopbgm]
[message_kakusu_ad]
[eval exp="f.tougijou=1"]
[bg storage="tougijou_ac.jpg"]
*choice_level
;れべる選択

[clearstack][freeimage layer=0]

[cm]
[bg storage="black.png" method="shake" time=500]
[cm]


;[eval exp="f.tougijou_win_3=1"];[eval exp="f.tougijou_win_2=1"];[eval exp="f.tougijou_win_1=0"]
;[eval exp="f.tougijou_win_4=1"]
;[eval exp="f.tougijou_win_5=1"]
;[eval exp="f.tougijou_win_6=1"]
;[eval exp="f.tougijou_win_7=1"];[eval exp="f.tougijou_win_8=1"]
;[eval exp="f.tougijou_win_9=1"]
;[eval exp="f.tougijou_win_10=1"]
;[eval exp="f.tougijou_win_11=1"]
;[eval exp="f.tougijou_win_12=1"]
[episode_hyouji_only][image layer=0 page=fore visible=true storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]
[ptext layer=0 page=fore visible=true text="どのレベルで挑戦しますか？" face="antique" size=22 x=63 y=103]
[if exp="f.tougijou_kunshou==1"]
[image layer=0 page=fore visible=true storage=torofi.png x=330 y=100]
[endif]

[if exp="f.tougijou_win_1!=1||f.tougijou_kunshou==1"]
[glink target=*a1 text="（レベル１）" size=17 height=15 width=300 x=25 y=200]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=180]
[endif]

[if exp="f.tougijou_win_2!=1||f.tougijou_kunshou==1"]
[glink target=*a2 text="（レベル２）" size=17 height=15 width=300 x=25 y=260]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=240]
[endif]

[if exp="f.tougijou_win_3!=1||f.tougijou_kunshou==1"]
[glink target=*a3 text="（レベル３）" size=17 height=15 width=300 x=25 y=320]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=300]
[endif]

[if exp="f.tougijou_win_4!=1||f.tougijou_kunshou==1"]
[glink target=*a4 text="（レベル４）" size=17 height=15 width=300 x=25 y=380]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=360]
[endif]

[if exp="f.tougijou_win_5!=1||f.tougijou_kunshou==1"]
[glink target=*a5 text="（レベル５）" size=17 height=15 width=300 x=25 y=440]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=420]
[endif]

[if exp="f.tougijou_win_6!=1||f.tougijou_kunshou==1"]
[glink target=*a6 text="（レベル６）" size=17 height=15 width=300 x=25 y=500]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=480]
[endif]

[if exp="f.tougijou_win_7!=1||f.tougijou_kunshou==1"]
[glink target=*a7 text="（レベル７）" size=17 height=15 width=300 x=400 y=200]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=180]
[endif]

[if exp="f.tougijou_win_8!=1||f.tougijou_kunshou==1"]
[glink target=*a8 text="（レベル８）" size=17 height=15 width=300 x=400 y=260]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=240]
[endif]

[if exp="f.tougijou_win_9!=1||f.tougijou_kunshou==1"]
[glink target=*a9 text="（レベル９）" size=17 height=15 width=300 x=400 y=320]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=300]
[endif]

[if exp="f.tougijou_win_10!=1||f.tougijou_kunshou==1"]
[glink target=*a10 text="（レベル１０）" size=17 height=15 width=300 x=400 y=380]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=360]
[endif]

[if exp="f.tougijou_win_11!=1||f.tougijou_kunshou==1"]
[glink target=*a11 text="（レベル１１）" size=17 height=15 width=300 x=400 y=440]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=420]
[endif]

[if exp="f.tougijou_win_12!=1||f.tougijou_kunshou==1"]
[glink target=*a12 text="（レベル１２）" size=17 height=15 width=300 x=400 y=500]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=480]
[endif]

[if exp="f.tougijou_win_13!=1||f.tougijou_kunshou==1"]
[glink target=*a13 text="（レベル１３）" size=17 height=15 width=300 x=65 y=623]
[else]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=65 y=623]
[endif]

[glink target=*a14 text="（やっぱりやめる）" size=17 height=15 width=300 x=400 y=100]



[s]

*a1
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=1"]
[cm]
@jump target=*a1_common

*a2
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=2"]
[cm]
@jump target=*a1_common


*a3
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=3"]
[cm]
@jump target=*a1_common


*a4
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=4"]
[cm]
@jump target=*a1_common


*a5
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=5"]
[cm]
@jump target=*a1_common


*a6
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=6"]
[cm]
@jump target=*a1_common


*a7
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=7"]
[cm]
@jump target=*a1_common


*a8
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=8"]
[cm]
@jump target=*a1_common


*a9
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=9"]
[cm]
@jump target=*a1_common


*a10
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=10"]
[cm]
@jump target=*a1_common


*a11
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=11"]
[cm]
@jump target=*a1_common


*a12
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=12"]
[cm]
@jump target=*a1_common


*a13
[clearstack][freeimage layer=0]
[eval exp="f.tougijou_level=13"]
[cm]
@jump target=*a1_common


*a14
[clearstack][freeimage layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[eval exp="f.tougijou=0"]
[eval exp="f.tougijou_level=0"]

[free name="clear" layer=0]
[jump target=**first]






*a1_common
[message_kakusu_ad]
@jump storage="mini_game/battle.ks"


;休む


*rest

[hidemenubutton][hidemenu]

[clearfix]
;[freeimage layer=1]
;[freeimage layer=2]


;[image layer=2 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]

;[name]表示
;[live2d_irain_command]
;[live2d_motion name="irain" mtn="Pose_yasumu" no=0]
;[wait time=1000]
;[free name="back_siro" layer=2 time=1000]


;[image layer=2 storage="siro.jpg" name="back_siro" page=fore time=2000 x=0 y=0]

;[free name="back_siro" layer=2]

;イレイン表示
[image layer=1 page=fore visible=true storage="pose_yasumu.gif" width=240 height=135 x=250 y=55]



[w][w]
[eval exp="f.work efficiency=f.work efficiency+4"]
[stopbgm]
[playse storage="yasumi_onjin.ogg"]
[cm]
;[live2d_fadeout time=1000]
;[live2d_delete_all]
[day_end]




;アイテム表示
*item
[hidemenubutton][hidemenu]
[eval exp="tf.item_hyouji=1"]
[free name="attention" layer=1]
[free name="attention" layer=2]
[clearfix name="attention"]

[item_hyouji]
[jump target=*status]






*config

[jump storage="config1.ks"]
;[clearfix]
;[freeimage layer=1]
;[freeimage layer=2]
;[jump target=*status]
[s]


;------------アイテム表示用



*item_data_read
*item_check

*item_shokika
[clearstack]


[if exp="tf.equip_item_current_1_click==1"]
[clearfix name="soubi1_button"]
[endif]

[if exp="tf.equip_item_current_2_click==1"]
[clearfix name="soubi2_button"]
[endif]
;アイテム欄表じフラグ初期化
[equip_item_shoki]
[clearfix name="equip_moji" ]
[clearfix name="equip_moji_2" ]
[clearfix name="equip_moji_3" ]
[clearfix name="equip_moji_4" ]
[clearfix name="equip_moji_5" ]
[clearfix name="equip_moji_6" ]
[clearfix name="equip_moji_7" ]
[clearfix name="equip_moji_8" ]
[clearfix name="equip_moji_9" ]

[free name="equip" layer=2]

;----------------------------------------------
;--------------------------------------------------------------
[if exp="tf.first_data_read==1"]
[eval exp="tf.first_data_read=0"]
[jump target=*item_data_read_return]
[endif]

[clearstack]



;装備欄１か２で場合わけ
[if exp="tf.equip_item_current_1_click>=1"]
[jump target=*front_hyouji]
[endif]

;装備変更後のアイテム欄表示。どちらの装備を変更したかで場合わけ
[if exp="tf.equip_item_change_1==1"]
[eval exp="tf.hair_hyouji=0"]
[eval exp="tf.equip_item_change_1=0"]
[jump target=*front_hyouji]
[elsif exp="tf.equip_item_change_2==1"]
[eval exp="tf.equip_item_change_2=0"]
[jump target=*click_soubi2]
[endif]
;装備欄をクリックしてなかった場合のジャンプ先
[if exp="tf.hair_hyouji==1"]
[eval exp="tf.hair_hyouji=0"]
[jump target=*front_hyouji]
[else]
[jump target=*click_soubi2]
[endif]


*click_soubi2
;装備欄２用アイテム表示
[call storage="soubi_item.ks"]


;--------------------------------------------------------------
[clearstack]
;一番目
;アイテム欄１アイテム欄に表示があるかないか

;-------------------------------------------------------------------------------------------------------------------------------------------------

[clearstack]
;一番目
;アイテム欄１アイテム欄に表示できるアイテムかhyouji_1==1ならアイテム表示。ここは繰り返し処理で変更できそう
[if exp="tf.item_hyouji_confirm[1]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[1]=tf.equip_item_no[1]+1" fix="true" storage="equip_change_macro.ks"  name="equip_moji" x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_1_name face=antique name="equip" size=20 x=490 y=80]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_1_stock face=antique name="equip" size=20 x=690 y=80]
[endif]
;------------------------------------------------------------------------------------------------------------------------------------------------------




;二番目

;アイテム欄２

[if exp="tf.item_hyouji_confirm[2]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[2]=tf.equip_item_no[2]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_2" x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_2_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_2_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_2]
[endif]
;------------------------------------------------------------------------------------------------------------------------------------------------------------
;アイテム欄３


[if exp="tf.item_hyouji_confirm[3]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[3]=tf.equip_item_no[3]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_3" x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_3_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_3_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄４


[if exp="tf.item_hyouji_confirm[4]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[4]=tf.equip_item_no[4]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_4" x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_4_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_4_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄5



[if exp="tf.item_hyouji_confirm[5]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[5]=tf.equip_item_no[5]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_5" x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_5_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_5_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄6



[if exp="tf.item_hyouji_confirm[6]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[6]=tf.equip_item_no[6]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_6" x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_6_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_6_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄7



[if exp="tf.item_hyouji_confirm[7]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[7]=tf.equip_item_no[7]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_7" x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_7_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_7_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄8



[if exp="tf.item_hyouji_confirm[8]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[8]=tf.equip_item_no[8]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_8" x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_8_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_8_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄9



[if exp="tf.item_hyouji_confirm[9]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[9]=tf.equip_item_no[9]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_9" x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_9_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_9_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_9]
[endif]


;次のページボタン
[button graphic="cursor.gif" name="equip" fix=true  exp="tf.equip_item_next_page=tf.equip_item_next_page+1" target=*equip_item_next_page0 x=750 y=&tf.equip_item_y_9]

[jump target=*equip_process_end]


;ここから二ページ目1
*equip_item_next_page0
[clearstack]
[if exp="tf.equip_item_next_page==1"]
[clearstack]
[cm]
[item_suuti_delete]
[free name="equip" layer=2]
[free name="key" layer=2]
[clearfix name="equip_moji" ]
[clearfix name="equip_moji_2" ]
[clearfix name="equip_moji_3" ]
[clearfix name="equip_moji_4" ]
[clearfix name="equip_moji_5" ]
[clearfix name="equip_moji_6" ]
[clearfix name="equip_moji_7" ]
[clearfix name="equip_moji_8" ]
[clearfix name="equip_moji_9" ]
[eval exp="tf.equip_item_no[1]=0"]
[eval exp="tf.equip_item_no[2]=0"]
[eval exp="tf.equip_item_no[3]=0"]
[eval exp="tf.equip_item_no[4]=0"]
[eval exp="tf.equip_item_no[5]=0"]
[eval exp="tf.equip_item_no[6]=0"]
[eval exp="tf.equip_item_no[7]=0"]
[eval exp="tf.equip_item_no[8]=0"]
[eval exp="tf.equip_item_no[9]=0"]



[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;アイテム欄10



[if exp="tf.item_hyouji_confirm[10]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[10]=tf.equip_item_no[10]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_10" x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_10_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_10_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄11



[if exp="tf.item_hyouji_confirm[11]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[11]=tf.equip_item_no[11]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_11" x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_11_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_11_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄12



[if exp="tf.item_hyouji_confirm[12]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[12]=tf.equip_item_no[12]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_12" x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_12_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_12_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄13



[if exp="tf.item_hyouji_confirm[13]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[13]=tf.equip_item_no[13]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_13" x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_13_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_13_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄14



[if exp="tf.item_hyouji_confirm[14]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[14]=tf.equip_item_no[14]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_14" x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_14_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_14_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄15



[if exp="tf.item_hyouji_confirm[15]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[15]=tf.equip_item_no[15]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_15" x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_15_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_15_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄16



[if exp="tf.item_hyouji_confirm[16]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[16]=tf.equip_item_no[16]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_16" x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_16_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_16_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8
;アイテム欄17



[if exp="tf.item_hyouji_confirm[17]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[17]=tf.equip_item_no[17]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_17" x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_17_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_17_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9
;アイテム欄18



[if exp="tf.item_hyouji_confirm[18]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[18]=tf.equip_item_no[18]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_18" x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_18_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_18_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_9]
[endif]


;次のページボタン
[clearfix name="equip_cursor" ]
[button graphic="cursor_above.gif" name="equip_cursor" fix=true exp="tf.equip_item_back_page=tf.equip_item_back_page+1" target=*equip_item_back_page0 x=750 y=&tf.equip_item_y_9]




;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[jump target=*equip_process_end]
*equip_item_back_page0

[if exp="tf.equip_item_back_page==1"]
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.equip_item_back_page=0"]
[cm]


[item_suuti_delete]
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[free name="equip" layer=2]
[clearfix name="equip" ][clearfix name="equip_cursor" ]
[clearfix name="equip_moji_10" ]
[clearfix name="equip_moji_11" ]
[clearfix name="equip_moji_12" ]
[clearfix name="equip_moji_13" ]
[clearfix name="equip_moji_14" ]
[clearfix name="equip_moji_15" ]
[clearfix name="equip_moji_16" ]
[clearfix name="equip_moji_17" ]
[clearfix name="equip_moji_18" ]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]

[endif]

[jump target=*click_soubi2]




*equip_hyouji_end
[if exp="tf.equip_item_change_2==1"]
[eval exp="tf.equip_item_change_2=0"]
[jump target=*equip_process_end]
[endif]

;装備欄１か２で場合わけ
[if exp="tf.equip_item_current_2_click>=1"]
[jump target=*equip_process_end]
[endif]




;-----------------------------------------------------------------------------------------------------------------------------------------------------------------

;装備欄１用のアイテム表示

*front_hyouji

;装備欄１をクリックした時アイテム表示
;-------------------------------------------------------------------------------------------------------------------------------------------------

[eval exp="tf.hair_hyouji=1"][eval exp="tf.equip_item_choice=1"]
[call storage="soubi_item_hair.ks"]


[clearstack]
;一番目
;アイテム欄１アイテム欄に表示があるかないか,読み込み


[if exp="tf.item_hyouji_confirm[1]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[1]=tf.equip_item_no[1]+1" fix="true" storage="equip_change_macro.ks"  name="equip_moji" x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_1_name face=antique name="equip" size=20 x=490 y=80]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_1_stock face=antique name="equip" size=20 x=690 y=80]
[endif]
;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄２


;二番目
[if exp="tf.item_hyouji_confirm[2]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[2]=tf.equip_item_no[2]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_2" x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_2_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_2_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄３


[if exp="tf.item_hyouji_confirm[3]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[3]=tf.equip_item_no[3]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_3" x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_3_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_3_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄４


[if exp="tf.item_hyouji_confirm[4]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[4]=tf.equip_item_no[4]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_4" x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_4_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_4_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄5



[if exp="tf.item_hyouji_confirm[5]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[5]=tf.equip_item_no[5]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_5" x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_5_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_5_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄6



[if exp="tf.item_hyouji_confirm[6]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[6]=tf.equip_item_no[6]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_6" x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_6_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_6_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄7



[if exp="tf.item_hyouji_confirm[7]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[7]=tf.equip_item_no[7]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_7" x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_7_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_7_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄8



[if exp="tf.item_hyouji_confirm[8]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[8]=tf.equip_item_no[8]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_8" x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_8_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_8_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;アイテム欄9



[if exp="tf.item_hyouji_confirm[9]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[9]=tf.equip_item_no[9]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_9" x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_9_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_9_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_9]
[endif]
;-------------------------------------------------------------------------------------------------------------------------------------------------
;次のページボタン
[clearfix name="equip_cursor" ]
[button graphic="cursor.gif" name="equip" fix=true  exp="tf.equip_item_next_page=tf.equip_item_next_page+1" target=*equip_item_next_page x=750 y=&tf.equip_item_y_9]

;[jump target=*equip_process_end]


;ここから二ページ目1
*equip_item_next_page
[clearstack]
[if exp="tf.equip_item_next_page==1"]
[clearstack]
[cm]

[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
[item_suuti_delete]
[free name="equip" layer=2]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]
[eval exp="tf.equip_item_6=0"]
[eval exp="tf.equip_item_7=0"]
[eval exp="tf.equip_item_8=0"]
[eval exp="tf.equip_item_9=0"]

[clearfix name="equip_moji" ]
[clearfix name="equip_moji_2" ]
[clearfix name="equip_moji_3" ]
[clearfix name="equip_moji_4" ]
[clearfix name="equip_moji_5" ]
[clearfix name="equip_moji_6" ]
[clearfix name="equip_moji_7" ]
[clearfix name="equip_moji_8" ]
[clearfix name="equip_moji_9" ]





;アイテム欄10
[if exp="tf.item_hyouji_confirm[10]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[10]=tf.equip_item_no[10]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_10" x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_10_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_10_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄11



[if exp="tf.item_hyouji_confirm[11]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[11]=tf.equip_item_no[11]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_11" x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_11_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_11_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄12



[if exp="tf.item_hyouji_confirm[12]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[12]=tf.equip_item_no[12]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_12" x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_12_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_12_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄13



[if exp="tf.item_hyouji_confirm[13]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[13]=tf.equip_item_no[13]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_13" x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_13_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_13_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄14



[if exp="tf.item_hyouji_confirm[14]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[14]=tf.equip_item_no[14]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_14" x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_14_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_14_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄15



[if exp="tf.item_hyouji_confirm[15]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[15]=tf.equip_item_no[15]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_15" x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_15_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_15_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄16



[if exp="tf.item_hyouji_confirm[16]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[16]=tf.equip_item_no[16]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_16" x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_16_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_16_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8
;アイテム欄17



[if exp="tf.item_hyouji_confirm[17]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[17]=tf.equip_item_no[17]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_17" x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_17_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_17_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9
;アイテム欄18



[if exp="tf.item_hyouji_confirm[18]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[18]=tf.equip_item_no[18]+1" fix="true"  storage="equip_change_macro.ks"  name="equip_moji_18" x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_18_name face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_18_stock face=antique name="equip" size=20 x=690 y=&tf.equip_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;次のページボタン
;次のページボタン
[clearfix name="equip_cursor" ]
[button graphic="cursor_above.gif" name="equip_cursor" fix=true exp="tf.equip_item_back_page=tf.equip_item_back_page+1" target=*equip_item_back_page x=750 y=&tf.equip_item_y_9]


[endif]
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;[jump target=*equip_process_end]
*equip_item_back_page

[if exp="tf.equip_item_back_page==1"]
[eval exp="tf.equip_item_back_page=0"]
[eval exp="tf.equip_item_next_page=0"]

[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]
[item_suuti_delete]

[clearfix name="equip"][clearfix name="equip_cursor" ]
[clearfix name="equip_moji_10" ]
[clearfix name="equip_moji_11" ]
[clearfix name="equip_moji_12" ]
[clearfix name="equip_moji_13" ]
[clearfix name="equip_moji_14" ]
[clearfix name="equip_moji_15" ]
[clearfix name="equip_moji_16" ]
[clearfix name="equip_moji_17" ]
[clearfix name="equip_moji_18" ]


[jump target=*front_hyouji]
[endif]















*equip_process_end

;-------------------
[clearstack]






[if exp="f.soubi_2==1||tf.equip_item_current_2_click>=1"]
[eval exp="f.soubi_2=0"]
[jump target=*item_hyouji2]
[elsif exp="f.soubi_1==1||tf.equip_item_current_1_click>=1"]
[eval exp="f.soubi_1=0"]
[jump target=*item_hyouji]
[else]
[jump target=*equip_button_return]
[endif]



















[endmacro]













[return]