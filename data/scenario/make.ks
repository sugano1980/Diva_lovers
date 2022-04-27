;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;;このファイルは削除しないでください！


[call storage="diva_system/game_version_check.ks"]


[if exp="f.disc_2==1||f.disc_num>1"]
[call storage="scenario_2/make.ks"]
[jump target=*return]
[elsif exp="f.cera_cake==1"]
[call storage="macro.ks"]
[jump storage="episode/epi1.ks" target=*epi2_ikou]
[elsif exp="f.disc_2==1"]
[call storage="scenario_2/make.ks"]
[jump target=*return]
[endif]
[if exp="sf.return==1"]
[stopbgm]
[endif]
[iscript]
$(".layer_free").css("pointer-events","none");
[endscript]

[if exp="sf.config==1"]
[eval exp="sf.config=0"]
[jump target=*end_make_2]
[endif]

[if exp="sf.system_awake==1"]
[eval exp="sf.system_awake=0"]
[jump target=*end_make]
[endif]

[eval exp="sf.back=0"]


[call storage="macro.ks"]


;ロード中の表示;行動画面リフレッシュ以外
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]


[if exp="sf.return!=1"]

[image layer=3 page=fore storage="pose_yasumu.gif" name="load" width="175" height="98" x=550 y=70]
[endif]

[clearfix]
[if exp="sf.game_current==2||sf.new==1&&sf.back!=2"]

[ptext layer=3 page=fore text="ロード中。ロード完了までしばらくお待ちください・・・" size="22" name="load" x=50 y=200]
[eval exp="sf.game_current=0"]

[elsif exp="sf.return==1"]
;行動画面のリフレッシュはローダー
[image layer=3 page=fore visible=true storage="loader.gif" name="loader" x=370 y=250]


[else]

;-------------------

[eval exp="tf.riorio=4"]

[iscript]
tf.riorio = Math.floor( Math.random() * 3) + 1
[endscript]


[if exp="tf.riorio==1"]
[image layer=3 page=fore storage="loading_kra.jpg" name="kuro" x=0 y=0]
[elsif exp="tf.riorio==2"]
[image layer=3 page=fore storage="loading_rans.jpg" name="kuro" x=0 y=0]
[elsif exp="tf.riorio==3"]
[image layer=3 page=fore storage="loading_lion.jpg" name="kuro" x=0 y=0]
[else]
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]
[endif]
;-------------------
[eval exp="sf.system_awake=0"]
[eval exp="sf.system_save=0"]
[ptext layer=3 page=fore text="ゲーム画面に戻ります。しばらくお待ちください・・・" size="22" name="load" x=50 y=200]

[endif]

;[call storage="tyrano.ks"]




;[call storage="item/equip_item_data.ks"]
;[call storage="status_macro_macro.ks"]
;[call storage="item_hyouji_macro.ks"]
;[call storage="item_check.ks"]
;[call storage="item_check_soubi_2.ks"]
;[call storage="item_check_battle.ks"]
;[call storage="item_check_other.ks"]
;[call storage="item_check_cook.ks"]
;[call storage="item_check_equip_hyouji.ks"]
;[call storage="map_macro.ks"]
;[call storage="store_macro.ks"]
;[call storage="store_macro_kioku.ks"]
;[call storage="rans_fashion_comment.ks"]
;[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal.gif""]
;[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
;[chara_new name="cera" storage="cera0_tatie/cera0_idle_normal.png"]
;[chara_new name="dancho" storage="dancho_normal_004.png"]
;[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
;[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]
;Live2Dプラグインの読み込み
[plugin name="live2d"]
;[call storage="live2d_baka_macro.ks"]
;[call storage="live2d_baka_macro.ks"]
;[call storage="live2d_aho_macro.ks"]
;[call storage=live2d_sub_macro.ks]
;[call storage=live2d_irain_macro.ks]

;[call storage=live2d_lioness_macro.ks]
;[call storage=live2d_kra_macro.ks]
;[call storage=live2d_rans_macro.ks]
;[call storage="status_macro.ks"]

[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]



;[if exp="f.disc_2!=1"]
;[message_settei]
;volが違います。ソフトを確認してください。
;[iscript]
;location.reload()
;[endscript]

;[jump storage="first.ks"]
;[endif]



;[if exp="f.live2d_on==1"]
;[live2d_delete_all]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
;[endif]
;[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]


;フォントサイズ未定義のエラー対策
[if exp="sf.font==undefined"]
[eval exp="sf.font=22"]
[eval exp="sf.font_f=6"]
[endif]



;自由行動の時の座標
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

[eval exp="tf.irain_hp_x=385"]
[eval exp="tf.irain_hp_y=200"]


[eval exp="tf.irain_tec_x=360"]
[eval exp="tf.irain_tec_number_x=415"]

[eval exp="tf.irain_tec_y=225"]
[eval exp="tf.irain_tec_number_y=225"]


[eval exp="tf.irain_brain_x=360"]
[eval exp="tf.irain_brain_number_x=415"]

[eval exp="tf.irain_brain_y=250"]
[eval exp="tf.irain_brain_number_y=250"]


[eval exp="tf.irain_charm_x=360"]
[eval exp="tf.irain_charm_number_x=415"]

[eval exp="tf.irain_charm_y=275"]
[eval exp="tf.irain_charm_number_y=275"]




[live2d_restore]




[if exp="f.map==1||f.kyuujitu>0"]
@clearfix name="kinou_button"
@clearfix name="role_button"
[free name="jump_off" layer=3]


[elsif exp="f.kyuujitu>0&&f.memory!=1"]

@clearfix name="kinou_button"
@clearfix name="role_button"
[elsif exp="f.sentakuchuu!= 1&&f.memory!=1"]
;通常文のところでセーブしたデータをロードの場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]
;[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"]
;[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
;[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
;[if exp="f.wait==1"]
;[button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3][else][button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3][endif]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]



[elsif exp="f.memory!=1"]
;選択肢のところでセーブした場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]
[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
;[if exp="f.wait==1"][button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3][else][button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3][endif]
[else]
[endif]


[if exp="tf.sentakuchuu== 1 "]
[iscript]
$("span[style^=cursor]").hover(
function() {$(this).css("color", "#70A9EF");
},
function() {
  $(this).css("color", "pink");　}
);
[endscript]
[endif]


[if exp="f.snowfall== 1 "]

[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/image/kakera5.png",
    flakeCount : 7,
    minSize: 10, 
    maxSize: 32
    });
[endscript]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/image/kakera5.png",
    flakeCount : 7,
    minSize: 10, 
    maxSize: 32
    });
[endscript]

[else]

[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/image/kakera5.png",
    flakeCount : 7,
    minSize: 10, 
    maxSize: 32
    });
[endscript]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]

[endif]



;[if exp="f.array_shokika_sumi!=1"]
;[call storage="array_shokika.ks"]
;[endif]


[call storage="item/equip_item_data_new.ks"]
[call storage="status_macro_macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="skill_calc_current.ks"]
[call storage="map_macro.ks"]
[call storage="store_macro.ks"]
[call storage="store_macro_kioku.ks"]
[call storage="rans_fashion_comment.ks"]
[call storage="status_macro.ks"]


[live2d_restore]


;ヴァージョン１アプデ、装備欄名前変更
;休日画面でなおかつマップ上やマップ内でない
[if exp="f.kyuujitu==1&&f.map!=1&&f.place_creru_oukyu!=1&&f.place_creru_hunsui!=1&&f.place_creru_sakaba!=1&&f.place_creru_gaia!=1&&f.place_creru_uradoori!=1&&f.place_creru_out!=1||sf.return==1"]


[free name="soubi1" layer=2]
[if exp="f.equip_item_current==34"]

[ptext layer=2 page=fore text=&tf.equip_item_34_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==33"]

[ptext layer=2 page=fore text=&tf.equip_item_33_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==32"]

[ptext layer=2 page=fore text=&tf.equip_item_32_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==31"]

[ptext layer=2 page=fore text=&tf.equip_item_31_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==30"]

[ptext layer=2 page=fore text=&tf.equip_item_30_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==29"]

[ptext layer=2 page=fore text=&tf.equip_item_29_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==28"]

[ptext layer=2 page=fore text=&tf.equip_item_28_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==27"]

[ptext layer=2 page=fore text=&tf.equip_item_27_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==26"]

[ptext layer=2 page=fore text=&tf.equip_item_26_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==25"]

[ptext layer=2 page=fore text=&tf.equip_item_25_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==24"]

[ptext layer=2 page=fore text=&tf.equip_item_24_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==23"]

[ptext layer=2 page=fore text=&tf.equip_item_23_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==22"]

[ptext layer=2 page=fore text=&tf.equip_item_22_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==21"]

[ptext layer=2 page=fore text=&tf.equip_item_21_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==20"]

[ptext layer=2 page=fore text=&tf.equip_item_20_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==19"]

[ptext layer=2 page=fore text=&tf.equip_item_19_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==18"]

[ptext layer=2 page=fore text=&tf.equip_item_18_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==17"]

[ptext layer=2 page=fore text=&tf.equip_item_17_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==16"]

[ptext layer=2 page=fore text=&tf.equip_item_16_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==15"]

[ptext layer=2 page=fore text=&tf.equip_item_15_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==14"]

[ptext layer=2 page=fore text=&tf.equip_item_14_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==13"]

[ptext layer=2 page=fore text=&tf.equip_item_13_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==12"]

[ptext layer=2 page=fore text=&tf.equip_item_12_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==11"]

[ptext layer=2 page=fore text=&tf.equip_item_11_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==10"]

[ptext layer=2 page=fore text=&tf.equip_item_10_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==9"]

[ptext layer=2 page=fore text=&tf.equip_item_9_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==8"]

[ptext layer=2 page=fore text=&tf.equip_item_8_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==7"]

[ptext layer=2 page=fore text=&tf.equip_item_7_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==6"]

[ptext layer=2 page=fore text=&tf.equip_item_6_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==5"]

[ptext layer=2 page=fore text=&tf.equip_item_5_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==4"]

[ptext layer=2 page=fore text=&tf.equip_item_4_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==3"]

[ptext layer=2 page=fore text=&tf.equip_item_3_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==2"]

[ptext layer=2 page=fore text=&tf.equip_item_2_name face=antique name="soubi1" size=20 x=590 y=300]

[elsif exp="f.equip_item_current==1"]

[ptext layer=2 page=fore text=&tf.equip_item_1_name face=antique name="soubi1" size=20 x=590 y=300]

[endif]


;---------------------
[endif]


[if exp="f.data_yomikomi!=1"]
[call storage="diva_system/tatie_yomikomi_1.ks"]
[endif]

;フォント再定義
[if exp="sf.font_f==6"]
[resetfont][deffont face="antique" bold=true][resetfont]
[elsif exp="sf.font_f==5"]
[deffont face="makinas"][resetfont]
[elsif exp="sf.font_f==3"]
[deffont face="mgenplus" bold=true][resetfont]
[elsif exp="sf.font_f==2"]
[deffont face="hannari" bold=true][resetfont]
[elsif exp="sf.font_f==1"]
[deffont face="MS PMincho"][resetfont]
[endif]


[eval exp="sf.new=0"]
;ロード完了の合図
[free name="load" layer=3]
[w]
[if exp="sf.return!=1"]
;行動画面のリフレッシュじゃない場合全部こっち
[image layer=3 page=fore storage="pose_stand.gif" width="175" height="98" name="load" x=550 y=70]
[w][w][w]
[free name="load" layer=3]
[playse storage="atari_koukaonlabo.ogg"]
[ptext layer=3 page=fore text="ロードが完了しました！" size="22" name="load" x=150 y=200]
[w][w]
[free name="load" layer=3]
[elsif exp="sf.return==1"]
;行動画面のリフレッシュ用
[eval exp="sf.return=0"]
[jump target=*koudou]
[endif]

;ロード先が行動画面の場合この処理
[if exp="f.kyuujitu==1&&f.map!=1&&f.place_creru_oukyu!=1&&f.place_creru_hunsui!=1&&f.place_creru_sakaba!=1&&f.place_creru_gaia!=1&&f.place_creru_uradoori!=1&&f.place_creru_out!=1"]
*koudou
[cm][clearfix][freeimage layer=0][freeimage layer=1][freeimage layer=2]
[iscript]
$(".layer_free").css("pointer-events","auto");
[endscript]
;システム待機用のアニメ消去
[free name="loader" layer=3]
[eval exp="sf.save_system=0"]
[eval exp="sf.system_awake=0"]
[eval exp="sf.game_current=0"]
[iscript]
$(".layer_free").css("pointer-events","auto");
[endscript]
[cm]
;黒画面を解除
[free name="kuro" layer=3 time=1000]

;行動画面表示へ
[status_hyouji]
[endif]


;ロード先が行動画面以外の場合
*end_make
;メニューボタン
[hidemenubutton][button_menu]
*end_make_2
[iscript]
$(".layer_free").css("pointer-events","auto");
[endscript]
;システム待機用のアニメ消去
[free name="loader" layer=3]
[eval exp="sf.save_system=0"]
[eval exp="sf.system_awake=0"]
[eval exp="sf.game_current=0"]
[eval exp="sf.config=0"]
;マップイベント用のスキップボタン
[if exp="f.map==1||f.place_creru_oukyu==1||f.place_creru_hunsui==1||f.place_creru_sakaba==1||f.place_creru_gaia==1||f.place_creru_uradoori==1||f.place_creru_out==1"]
[skip_button]
[endif]
;ヴァージョン対応
[if exp="f.rans_tutrial==1&&f.event_main_3_days==5&&f.test_return!=1"]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal.gif"]
[chara_on][chara_show name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif" top=10]
[endif]
;黒画面を解除
[free name="kuro" layer=3 time=1000]

*return
[return]









;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=config1.ks x=300 y=200]

;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=config1.ks x=300 y=200]
;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=config1.ks x=300 y=200]



