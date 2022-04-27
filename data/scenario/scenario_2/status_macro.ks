


[macro name="status_hyouji"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
*first



[call storage="scenario_2/status_macro_macro.ks"]



[call storage="scenario_2/item_hyouji_macro.ks"]
[call storage="scenario_2/equip_change_macro_data.ks"]
[call storage="scenario_2/map_macro.ks"]
[call storage="scenario_2/map_macro_2.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]

[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[call storage="scenario_2/map_wesuta_macro.ks"]
[elsif exp="f.s_wesuta==1"]
[call storage="scenario_2/map_hune_macro.ks"]
[endif]

[if exp="f.disc_4!=1"]
[call storage="scenario_2/map_event/kisidanhonbu_event_macro.ks"]
[call storage="scenario_2/map_event/kisidanhonbu_event_iriguti.ks"]
[call storage="scenario_2/map_event/kisidanhonbu_event_back.ks"]
[endif]

;特典
[if exp="sf.tokuten==2"]
[iscript]
f.cusine =[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
f.toast =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.cake =[0,1,1,0,0,0,0,0,0,0];
f.cook_item_stock =[50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50]
[endscript]
[endif]


;自由行動中のフラグ
[eval exp="f.kyuujitu=1"]

;自分部屋にいるフラグ
[eval exp="f.irain_heya=1"]

;占い関係のフラグおふ
[eval exp="f.uranai_status=0"]
[hidemenubutton][hidemenu]

[if exp="f.skip_on==1"]
[clearfix name="skip_button"]
[endif]

;メニューボタンの表示
[button_menu]
;試験用
;[eval exp="f.event_main_8_days=1"]
;[eval exp="f.irain_move=100"]

;装備アイテムデータを読み込み,パラメータ計算マクロ
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/skill_calc_current.ks"]

;[eval exp="f.other_item_stock[15]=1"]

[if exp="f.stock_sumi!=1"]
[call storage="scenario_2/diva_system/stock_value_array.ks"]
[endif]

[if exp="f.stock_cook_sumi!=1"]
[iscript]
this.kag.stat.f["cook_item_stock"] =[
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
];
[endscript]
[eval exp="f.stock_cook_sumi=1"]
[endif]

;信頼度
;[eval exp="f.town_trust=0"]
;お金
;[eval exp="f.money=0"]
;[name]能力値
;給料
[if exp="f.event_main_8==1&&f.money_yet!=1"]
[money_calc]
[eval exp="f.money_yet=1"]
[elsif exp="f.free_first==1"]
[money_calc]
[endif]



[if exp="f.workefficiency<=0"]
[eval exp="f.workefficiency=1"]
[endif]

[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

[if exp="f.irain_out==1"]
[eval exp="f.irain_out=0"]
[endif]

;最初の場合ジャンプ
[if exp="f.free_first==1"]
[jump target=*town_sasiire]
[endif]

;部屋の画像表示
[if exp="f.disc_4==1"]
[heya_hyouji_w]
[elsif exp="f.disc_4!=1"]
[heya_hyouji]
[endif]




*town_sasiire
;街の人からの差し入れ
[if exp="f.disc_4!=1"]
[message_settei_ad]
[town_sasiire]
[message_kakusu_ad]
[endif]


*status



[hidemenubutton][hidemenu]
[button_menu]
;サブイベント用のフラグ
[if exp="f.event_2_gaia==2"]
[eval exp="f.event_2_gaia=0"]
[endif]

;恋愛かんどレベル

[call storage="scenario_2/uranai/renaikandokousin.ks"]
[call storage="scenario_2/renaikousin.ks"]


*task_confirm
[task_confirm]


;お誘いイベント
[if exp="f.free_first!=1&&f.s_wesuta==1&&f.friend==0&&f.sasoi!=1&&f.irain_move>1||f.s_oukyu==1&&f.friend==0&&f.sasoi!=1&&f.free_first!=1&&f.irain_move>1"]
[call storage="scenario_2/date/date_go_lib.ks"]
[eval exp="tf.akuma=1"]
;確率３割
[iscript]
tf.akuma = tf.random(3)
[endscript]
[freeimage layer=1]
[freeimage layer=2]
[osasoi]
[endif]


;外出してきて行動回数０なら強制的に一日が終わる
[if exp="f.irain_move<1&&f.free_first!=1"]
[day_end]
[elsif exp="f.free_first==1"]
[eval exp="f.free_first=0"]
[endif]


;一日の始まりイベント
[jump storage="scenario_2/day_start_event.ks"]




*event_modotta

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

[eval exp="tf.command_x_8=10"]
[eval exp="tf.command_x_8_moji=tf.command_x_moji"]
[eval exp="tf.command_y_8_button=tf.command_y_7_button+60"]
[eval exp="tf.command_y_8=tf.command_y_7+60"]
[eval exp="tf.command_y_8_moji=tf.command_y_7_moji+60"]



[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[playbgm storage="wesuta_ontama.ogg"]
[elsif exp="f.s_wesuta==1"]
[playbgm storage="hune_ontama.ogg"]
[else]
[playbgm storage="boukennojunbi_ontama.ogg"]
[endif]


[if exp="f.s_wesuta==1"]
[eval exp="tf.com_color='blue'"]
[else]
[eval exp="tf.com_color='brown'"]
[endif]





;外出

[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x y=&tf.command_y]

[if exp="f.siken_taiki!=1"]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" enterimg="" target=*odekake x=&tf.command_x y=&tf.command_y_button]
[endif]

[ptext layer=2 page=fore text="外出" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_moji y=&tf.command_y_moji]

;稽古
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_2 y=&tf.command_y_2]
[if exp="f.siken_taiki!=1"]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*keiko x=&tf.command_x_2 y=&tf.command_y_2_button]
[endif]

[ptext layer=2 page=fore text="稽古" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_2_moji y=&tf.command_y_2_moji]

;課題
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_3 y=&tf.command_y_3]

[if exp="f.siken_taiki!=1"]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*kadai x=&tf.command_x_3 y=&tf.command_y_3_button]
[endif]

[ptext layer=2 page=fore text="課題" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_3_moji y=&tf.command_y_3_moji]


[eval exp="tf.command_x_4_moji=tf.command_x_4_moji-10"]

;闘技場;料理
[if exp="f.tougijou_heisa==1"]
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_4 y=&tf.command_y_4]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*cook x=&tf.command_x_4 y=&tf.command_y_4_button]
[ptext layer=2 page=fore text="料理" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_3_moji y=&tf.command_y_4_moji]
[elsif exp="f.tougijou_heisa!=1"]
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_4 y=&tf.command_y_4]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*tougijou x=&tf.command_x_4 y=&tf.command_y_4_button]
[ptext layer=2 page=fore text="闘技場" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_4_moji y=&tf.command_y_4_moji]
[endif]

;占い
;[if exp="f.uranai!=1"]
;[ptext layer=2 page=fore text="？？" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_5_moji y=&tf.command_y_5_moji]
;[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_5 y=&tf.command_y_5]

;[else]
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_5 y=&tf.command_y_5]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*uranai x=&tf.command_x_5 y=&tf.command_y_5_button]
[ptext layer=2 page=fore text="占い" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_5_moji y=&tf.command_y_5_moji]
;[endif]





;休む
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_6 y=&tf.command_y_6]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*rest x=&tf.command_x_6 y=&tf.command_y_6_button]
[ptext layer=2 page=fore text="休む" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_6_moji y=&tf.command_y_6_moji]

[eval exp="tf.command_x_7_moji=tf.command_x_7_moji-15"]

;アイテム
[image layer=1 page=fore storage="button/command.png" name="command_item" x=&tf.command_x_7 y=&tf.command_y_7]

[if exp="tf.item_hyouji==1"]
[button graphic="button/command.png" fix="true" name="command_item_button" enterse="tm2_switch001_macchi.ogg" target=*item_modoru x=&tf.command_x_7 y=&tf.command_y_7_button]
[else]
[button graphic="button/toumei.png" name="command_item_button" enterse="tm2_switch001_macchi.ogg" target=*item x=&tf.command_x_7 y=&tf.command_y_7]
[endif]

[ptext layer=2 page=fore text="アイテム" face=antique name="command_item" color=&tf.com_color size=20 x=&tf.command_x_7_moji y=&tf.command_y_7_moji]

;記録・設定
[image layer=1 page=fore storage="button/command.png" name="command" x=&tf.command_x_8 y=&tf.command_y_8]
[button graphic="button/toumei.png" name="command" enterse="tm2_switch001_macchi.ogg" target=*config x=&tf.command_x_8 y=&tf.command_y_8_button]
[ptext layer=2 page=fore text="設定" face=antique name="command" color=&tf.com_color size=20 x=&tf.command_x_8_moji y=&tf.command_y_8_moji]







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



[ptext layer=2 page=fore text="装備" size=20 face=antique color=&tf.com_color name="soubi" x=570 y=265]


;[eval exp="tf.soubi1_x=590"]
;[eval exp="tf.soubi2_x=590"]
;[eval exp="tf.soubi1_y=300"]
;[eval exp="tf.soubi2_y=330"]

;装備欄のアイテム名表示
[eval exp="tf.icon_hyouji_x=560"]
[eval exp="tf.icon_hyouji_y=300"]
[eval exp="tf.icon_hyouji_y_2=tf.icon_hyouji_y+30"]
;-------------------------------------------------------------------------
[genzai_soubi_hyouji]
[soubi_icon_hyouji]

;お金の表示
[money_hyouji]



;ステータス表示

[status_hyouji_kousin]


;装備欄
[image layer=1 page=fore storage="item_window.png" name="equip" x=840 y=50]

;装備中み

;お知らせ

[if exp="f.kaiwa_tuika_first_sumi!=1"]

[eval exp="tf.tuika_num=0"]
*re
[kaiwa_tuika][kaiwa_tuika_end_heya]
[eval exp="tf.tuika_num=tf.tuika_num+1"]
[if exp="tf.tuika_num<3"]
[jump target=*re]
[endif]
[endif]

;イベントフラグの確認
[event_check]

[if exp="tf.attention_sumi!==1&&f.attention_ok==1"]
[attention]
[endif]


[event_hyouji]

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

*item_data_read_return
[cm]
[clearstack]

;irain表示
;[irain_style_image]
[free name="attention" layer=1]
[free name="attention" layer=2]
[clearfix name="attention"]
;[clearfix name="change_button"]
;[button graphic="soubi_ok.png" clickse="tm2_switch001_macchi.ogg" fix=true name="change_button" target=*equip_ok x=210 y=293]


;装備の説明表示と旧ヴァージョンのcssを削除

;[ptext layer=3 name="soubi_setumei" text="※装備欄のアイテムをクリックすると装備可能なアイテムを表示" color="#b8860b" x=100 y=560]
;[loadcss file="./data/scenario/mini_game/item_css/item_delete.css" ]
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

[anim name="letter" top="-=270" time=200]
[anim name="letter" left="-=130" time=200]






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



[eval exp="tf.irain_tec_suuti_x=tf.irain_tec_number_x+50"]
[eval exp="tf.irain_brain_suuti_x=tf.irain_brain_number_x+50"]
[eval exp="tf.irain_charm_suuti_x=tf.irain_charm_number_x+50"]

[eval exp="tf.irain_tec_suuti_number_x=tf.irain_tec_number_x+62"]
[eval exp="tf.irain_brain_suuti_number_x=tf.irain_brain_number_x+62"]
[eval exp="tf.irain_charm_suuti_number_x=tf.irain_charm_number_x+62"]



[iscript]
//テストコード
f.equip_item_stock = [0,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
[endscript]

;装備アイテムデータを読み込み
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/skill_calc_current.ks"]
[call storage="scenario_2/equip_change_macro_data.ks"]
[call storage="scenario_2/store_macro_add.ks"]
[equip_array_confirm]
[hair_array_confirm]


;装備欄のボタン
[jump storage="scenario_2/equip_change.ks" target=*soubi_start]
[s]



*equip_ok




[eval exp="tf.equip_item_choice=0"]
[clearstack]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.hair_hyouji=0"]
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

[anim name="letter" top="+=270" time=200]
[anim name="letter" left="+=130" time=200]



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



;装備欄両方クリックで消去

*soubi_2



[s]



;--------






;外出
*odekake



[if exp="f.mannar_zenjitu==1"]
[cm]
#&f.name
「明日はマナー講習だし、もう今日は休んだ方がいいかも・・・」[p]
#
[hidemenubutton][hidemenu]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[jump target=*first]
[endif]
[clearstack]

;外出フラグ（イベント以外である証明）
[eval exp="f.irain_out=1"]
[eval exp="f.irain_heya=0"]
;現在の場所フラグ
[if exp="f.s_wesuta!=1&&f.s_oukyu!=1"]
[eval exp="f.place_creru_honbu=1"]
[endif]

[clearfix]
[clearfix name="change_button"]
[freeimage layer=1]
[freeimage layer=2]

[if exp="f.event_main_8_days==7&&f.event_8_lion_friend==1"]
[event_8_lion_friend]
[endif]

;キャラから誘われたとき
*status_osasoi
[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[wesuta_map]
[elsif exp="f.s_wesuta==1"]
[hune_map]
[else]
;----

[honbu_normal_event]
[playbgm storage="guild_ontama.ogg"]
[if exp="f.irain_move>1"]
[honbu_iriguti_event]
[endif]
;----
[creru_outo_map]
[endif]


;稽古
*keiko


[hidemenubutton][hidemenu]
;スキップボタン

[eval exp="tf.command_x_2_skip=tf.command_x_2 +127"]
[eval exp="tf.command_y_2_skip=tf.command_y_2"]
[cm]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[clearstack]
;イレイン表示
[image layer=1 page=fore visible=true storage="pose_keiko.gif" width=240 height=155 x=250 y=5]
[clearfix]
[playse storage="item_status_up_onjin.ogg"]
[wait time=600]
[playse storage="keiko_onjin.ogg"]

*tec_calc

;作業効率の計算

;自学応援ドリンクあり
[if exp="f.jigaku_help==1"]
[eval exp="f.point = f.point*5"]
[eval exp="f.jigaku_help=0"]
[else]
[iscript]
f.point = Math.floor( Math.random() * 5) + 1;
[endscript]
[endif]

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
[wait time=300]
[cm]
[day_end]

;-----------------------------------


;課題
*kadai
[hidemenubutton][hidemenu]
;スキップボタン

[eval exp="tf.command_x_3_skip=tf.command_x_3 +122"]
[eval exp="tf.command_y_3_skip=tf.command_y_3"]

;----------------


[cm]
;イレイン表示
[image layer=1 page=fore visible=true storage="pose_kadai.gif" width=240 height=135 x=250 y=5]


[clearfix]
[cm]
[clearstack]
*brain_calc

;自学応援ドリンクあり
[if exp="f.jigaku_help==1"]
[eval exp="f.point = f.point*5"]
[eval exp="f.jigaku_help=0"]
[else]
[iscript]
f.point = Math.floor( Math.random() * 5) + 1;
[endscript]
[endif]

[eval exp="f.point=f.point*f.work efficiency"]
[eval exp="f.irain_brain=f.irain_brain+f.point"]

[eval exp="tf.irain_brain_number_x_up=tf.irain_brain_number_x+20"]
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
[wait time=300]
[cm]
[day_end]

;料理
*cook
[cm]




[hidemenubutton][hidemenu]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]

[if exp="f.ryouri_sumi>0"]
#&f.name
「あんまり厨房を占領するのも迷惑だよね・・・」[p]
#
[jump target=*first]

[elsif exp="f.event_main_18_days>0"]
#&f.name
「船に戻らないと料理はできないよね・・・」[p]
#
[jump target=*first]

[endif]


[stopbgm]
[eval exp="f.friend=0"]
[jump storage="scenario_2/ryouri/ryouri_run.ks"]



;闘技場
*tougijou
[hidemenubutton][hidemenu]
[clearfix]

[freeimage layer=1]
[freeimage layer=2]
[stopbgm]
[message_kakusu_ad]
[eval exp="f.tougijou=1"]
[eval exp="f.tougijou_kunshou=1"]
[bg storage="tougijou_ac.jpg"]

*choice_level
;れべる選択

[clearstack][freeimage layer=0]
;仲間が現在いる場合
[if exp="f.friend>0"]
[eval exp="f.friend_now = f.friend"]
[eval exp="f.friend = 0"]
[endif]
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
[image layer=0 page=fore visible=true storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "]
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
@jump storage="scenario_2/mini_game/battle.ks"

;占い
*uranai
[hidemenubutton]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[stopbgm]
[eval exp="f.uranai_status=1"]
[jump storage="scenario_2/uranai/uranai.ks" target=*uranai]




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
[cm][wait time=300]
[day_end]




;アイテム表示
*item
[hidemenubutton][hidemenu]
[eval exp="tf.item_hyouji=1"]
[free name="attention" layer=1]
[free name="attention" layer=2]
[clearfix name="attention"]
[clearfix]
[item_hyouji]
[jump target=*status]

*config

[jump storage="scenario_2/config1.ks"]




*letter
[cm]
[hidemenubutton][hidemenu]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[stopbgm]
[letter_macro]
[jump target=*status]

[s]


;------------アイテム表示用




;装備欄１か２で場合わけ

;装備変更後のアイテム欄表示。どちらの装備を変更したかで場合わけ

;装備欄をクリックしてなかった場合のジャンプ先



*click_soubi2
;装備欄２用アイテム表示

;[call storage="scenario_2/siken_item.ks"]

*equip_process_end


[endmacro]













[return]