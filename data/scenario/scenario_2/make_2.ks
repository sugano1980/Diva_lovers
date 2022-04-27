;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;;このファイルは削除しないでください！
;クリック禁止
;[iscript]
;$(".layer_free").css("pointer-events","none");
;[endscript]


;ロード中の表示;
;[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]



[eval exp="sf.game_current=0"]
;行動画面のリフレッシュはローダー
[image layer=3 page=fore visible=true storage="loader.gif" name="loader" x=400 y=250]


;アイテム量調整
;[call storage="scenario_2/item_chousei.ks"]
[call storage="scenario_2/macro.ks"]
;Live2Dプラグインの読み込み
[plugin name="live2d"]

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




;[live2d_restore]

[if exp="f.event_main_5_1==1"]
@clearfix name="kinou_button"
@clearfix name="role_button"
[free name="jump_off" layer=3]
[jump target=*event]
[endif]

[if exp="f.map==1||f.kyuujitu>0||f.sub_event==1"]
@clearfix name="kinou_button"
@clearfix name="role_button"
[free name="jump_off" layer=3]


[elsif exp="f.kyuujitu>0&&f.memory!=1"]

@clearfix name="kinou_button"
@clearfix name="role_button"
[free name="jump_off" layer=3]

[elsif exp="f.live2d_on== 1&&f.sub_event!=1"]
;live2d使用中
@clearfix name="kinou_button"
@clearfix name="role_button"
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[elsif exp="f.sentakuchuu!= 1"]
;通常文のところでセーブしたデータをロードの場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]




[elsif exp="f.sentakuchuu==1"]
;選択肢のところでセーブした場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]
[button name="kinou_button" role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[else]
[endif]


*event
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



[call storage="scenario_2/status_macro_macro.ks"]
[call storage="scenario_2/item_hyouji_macro.ks"]
[call storage="scenario_2/map_macro.ks"]
[call storage="scenario_2/store_macro.ks"]
[call storage="scenario_2/store_macro_kioku.ks"]
[call storage="scenario_2/status_up_macro.ks"]
[call storage="scenario_2/item_get_macro.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/chara_para_kioku.ks"]
[call storage="scenario_2/menu_kioku_hikitugi.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_glif_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]



[if exp="f.s_wesuta==1&&f.event_main_18_days>0"]
[call storage="scenario_2/map_wesuta_macro.ks"]
[elsif exp="f.s_wesuta==1"]
[call storage="scenario_2/map_hune_macro.ks"]
[endif]





[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="glif" storage="glif_tatie/glif_normal.gif"]
[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]
[chara_new name="gales" storage="gales_tatie/gales_normal.gif"]






;ロード完了の合図
[free name="load" layer=3]
[ptext layer=3 page=fore text="Load Complete" size="11" name="load" x=720 y=550]
[w]
[free name="load" layer=3]
[eval exp="sf.return=0"]
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
;[free name="kuro" layer=3 time=500]
;[ptext layer=3 page=fore text="Load Complete" size="23" name="load" x=350 y=250]
[w]
[free name="load" layer=3]




[return]









;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=scenario_2/config1.ks x=300 y=200]

;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=scenario_2/config1.ks x=300 y=200]
;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button" role="sleepgame" fix="true" graphic="button/kyuujitu_config.png" storage=scenario_2/config1.ks x=300 y=200]



