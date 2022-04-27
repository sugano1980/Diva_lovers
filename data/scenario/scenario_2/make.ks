;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;;このファイルは削除しないでください！

[if exp="sf.return==1"]
[stopbgm]
[endif]
[iscript]
$(".layer_free").css("pointer-events","none");
[endscript]

;[if exp="sf.new==1&&sf.back==2"]

;[iscript]
; TG.kag.backRitle();
;[endscript]
;[s]

;[endif]

[if exp="sf.config==1"]
[eval exp="sf.config=0"]
[jump target=*end_make_2]
[endif]

[if exp="sf.system_awake==1"]
[eval exp="sf.system_awake=0"]
[jump target=*end_make]
[endif]

[eval exp="sf.back=0"]
[call storage="scenario_2/macro.ks"]



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
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]
[elsif exp="tf.riorio==2"]
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]
[elsif exp="tf.riorio==3"]
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]
[else]
[image layer=3 page=fore storage="black_load.png" name="kuro" x=0 y=0]
[endif]
;-------------------
[eval exp="sf.system_awake=0"]
[eval exp="sf.system_save=0"]
[ptext layer=3 page=fore text="ゲーム画面に戻ります。しばらくお待ちください・・・" size="22" name="load" x=50 y=200]

[endif]

;Live2Dプラグインの読み込み
[plugin name="live2d"]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="glif" storage="glif_tatie/glif_normal.gif"]
[chara_new name="gales" storage="gales_tatie/gales_normal.gif"]

[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]




;フォントサイズ未定義のエラー対策
[if exp="sf.font==undefined"]
[eval exp="sf.font=22"]
[eval exp="sf.font_f=1"]
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

[eval exp="tf.command_x_8=10"]
[eval exp="tf.command_x_8_moji=tf.command_x_moji"]
[eval exp="tf.command_y_8_button=tf.command_y_7_button+60"]
[eval exp="tf.command_y_8=tf.command_y_7+60"]
[eval exp="tf.command_y_8_moji=tf.command_y_7_moji+60"]



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



[if exp="f.kyuujitu>0&&f.irain_heya!=1&&f.sentakuchuu==1"]
[skip_button]

[elsif exp="f.map==1&&f.irain_heya!=1||f.kyuujitu>0"]
@clearfix name="kinou_button"
@clearfix name="role_button"
[free name="jump_off" layer=3]
;@clearfix name="kinou_button"
;@clearfix name="role_button"
;[free name="jump_off" layer=3]
[elsif exp="f.sentakuchuu!= 1&&f.memory!=1"]
;通常文のところでセーブしたデータをロードの場合
;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]
@clearfix name="kinou_button"
@clearfix name="role_button"
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[elsif exp="f.sentakuchuu== 1&&f.live2d_on==1"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[elsif exp="f.memory!=1"]
;選択肢のところでセーブした場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[else]
[endif]

[if exp="f.sentakuchuu== 1 &&f.sub_event==1"]
[skip_button]
[elsif exp="tf.sentakuchuu== 1 "]
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
    image :  "./data/others/snowfall/images/sakura5.gif",
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
    image :  "./data/others/snowfall/images/sakura5.gif",
    flakeCount : 7,
    minSize: 10, 
    maxSize: 32
    });
[endscript]

[else]

[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/others/snowfall/images/sakura5.gif",
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

[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/status_macro_macro.ks"]
[call storage="scenario_2/item_hyouji_macro.ks"]
;map
[call storage="scenario_2/map_macro.ks"]
[call storage="scenario_2/map_event/map_flag_macro.ks"]
[call storage="scenario_2/map_event/map_disc_tuika.ks"]
[call storage="scenario_2/map_macro_irain_hyouji.ks"]
[call storage="scenario_2/episode/event_15_sub_story.ks"]
[call storage="scenario_2/map_macro_2.ks"]
[call storage="scenario_2/map_event/map_event_sakaba_macro.ks"]
[call storage="scenario_2/map_event/map_event_hunsui_macro.ks"]
[call storage="scenario_2/map_event/map_event_oukyu_macro.ks"]
[call storage="scenario_2/map_event/hunsui_event_macro.ks"]
[call storage="scenario_2/map_event/uradoori_event_macro.ks"]
[call storage="scenario_2/map_event/sakaba_event_macro.ks"]
[call storage="scenario_2/map_event/oukyu_event_macro.ks"]
[call storage="scenario_2/map_event/iriguti_event.ks"]
[call storage="scenario_2/map_event/map_event_gaia_macro.ks"]
[call storage="scenario_2/map_event/map_event_uradoori_macro.ks"]
[call storage="scenario_2/map_event/map_event_honbu_macro.ks"]
[call storage="scenario_2/map_event/map_event_out_macro.ks"]
;map_W


[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[call storage="scenario_2/map_wesuta_macro.ks"]
[endif]
[if exp="f.s_wesuta==1"]
[call storage="scenario_2/map_event/map_flag_macro_w.ks"]
[call storage="scenario_2/map_hune_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_kanpan_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_rouka_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_jisitu_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_nakama_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_shokudo_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_yadoya_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_kouen_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_honya_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_toshokan_macro.ks"]
[call storage="scenario_2/map_event/map_event_w/map_event_kusuri_macro.ks"]
[endif]

[call storage="scenario_2/item_get_macro.ks"]
[call storage="scenario_2/status_up_macro.ks"]
[call storage="scenario_2/store_macro.ks"]
[call storage="scenario_2/store_macro_kioku.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/chara_para_kioku.ks"]
[call storage="scenario_2/menu_kioku_hikitugi.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_kra_macro.ks"]
[call storage="scenario_2/live2d_glif_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_gales_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]





[if exp="f.data_yomikomi_2!=1"]
[call storage="scenario_2/diva_system/tatie_yomikomi_2.ks"]
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
[if exp="f.kyuujitu==1&&f.irain_heya==1&&f.irain_out!=1&&f.sentakuchuu!=1&&f.place_creru_oukyu!=1&&f.place_creru_hunsui!=1&&f.place_creru_sakaba!=1&&f.place_creru_gaia!=1&&f.place_creru_uradoori!=1&&f.place_creru_out!=1"]
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
[if exp="f.map==1&&f.irain_heya!=1"]
[skip_button]
[endif]
;黒画面を解除
[free name="kuro" layer=3 time=1000]


[return]





















