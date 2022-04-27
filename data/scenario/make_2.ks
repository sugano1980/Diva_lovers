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


[if exp="f.disc_2==1||f.disc_num>1"]
[call storage="scenario_2/make_2.ks"]
[jump target=*return]
[endif]

[eval exp="sf.game_current=0"]
;行動画面のリフレッシュはローダー
[image layer=3 page=fore visible=true storage="loader.gif" name="loader" x=370 y=250]


[call storage="macro.ks"]
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
;[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]



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


[call storage="item/equip_item_data_new.ks"]
[call storage="status_macro_macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="skill_calc_current.ks"]
[call storage="map_macro.ks"]
[call storage="store_macro.ks"]
[call storage="store_macro_kioku.ks"]
[call storage="rans_fashion_comment.ks"]
[call storage="status_macro.ks"]


[call storage="live2d_lioness_macro.ks"]
[call storage="live2d_aho_macro.ks"]
[call storage="live2d_sub_macro.ks"]
[call storage="live2d_baka_macro.ks"]



[if exp="sf.live2d_on==1"]
[preload storage="data/others/plugin/live2d/model/rans2/rans2.4096/texture_00.png"]
[preload storage="data/others/plugin/live2d/model/rans3/rans3.4096/texture_00.png"]
[preload storage="data/others/plugin/live2d/model/lioness/lioness.4096/texture_00.png"]
[preload storage="data/others/plugin/live2d/model/aho/aho.4096/texture_00.png"]
[preload storage="data/others/plugin/live2d/model/miko/miko.2048/texture_00.png"]
[eval exp="sf.live2d_on=0"]
[endif]

[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]


;[live2d_restore]


;ロード完了の合図
[free name="load" layer=3]
[ptext layer=3 page=fore text="Load Complete" size="13" name="load" x=720 y=550]
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
[free name="kuro" layer=3 time=500]




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



