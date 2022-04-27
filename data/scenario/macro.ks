;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;;このファイルは削除しないでください！
;
[if exp="f.disc_2==1"][call storage="scenario_2/macro.ks"][jump target=*return_macro][endif]
;ダミージャンプとコンフィグ、休日画面でセーブデータロード
[if exp="f.kyuujitu>0&&f.memory!=1"]
@clearfix name="kinou_button"
@clearfix name="role_button"
;[button name="role_button" role="save" graphic="button/save_jiyuu.png" x=300 y=50] 
;[button name="role_button" role="load" graphic="button/load_jiyuu.png" x=300 y=100] 
;[button name="role_button"  fix="true" graphic="button/kyuujitu_config.png" storage=config1.ks x=300 y=200]

[elsif exp="f.sentakuchuu!= 1&&f.memory!=1"]
;通常文のところでセーブしたデータをロードの場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]



[elsif exp="f.memory!=1"]
;選択肢のところでセーブした場合
@clearfix name="kinou_button"
@clearfix name="role_button"
;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]
[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

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


;ティラノ内のマクロ（更新した場合はこちらにも反映させること）



*start
[macro name="w"]
[if exp="f.wait==1"]
[else]
[wait time=350]
[endif]
[endmacro]








[macro name="mi"]
[if exp="f.sentakuchuu!= 1 "]
[freeimage layer=3]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]



[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[else]

;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]


[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]


[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]


[endif]

[button_menu]

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[endmacro]


[macro name="ka"]
;ジャンプ、設定ボタンをオフに
;[clearfix name="kinou_button"]
;ダミージャンプ
;選択中だった場合にジャンプがダミーのため一度クリアしてから表示
;[freeimage layer=3]
;[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
;選択中フラグをオフ
[eval exp="f.sentakuchuu= 0 "]
[hidemenubutton][hidemenu]



;エピソードイメージ表示

;ランスロットルート
[if exp="f.ranskettei==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_rans1_hyouji.png" x=510 y=3]

[elsif exp="f.ranskettei==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_rans2_hyouji.png" x=510 y=3]


;ライオネスルート
[elsif exp="f.lionkettei==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_lion1_hyouji.png" x=510 y=3]

[elsif exp="f.lionkettei==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_lion2_hyouji.png" x=510 y=3]


;クライストルート
[elsif exp="f.krakettei1==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_kra1_hyouji.png" x=510 y=3]

[elsif exp="f.krakettei1==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_kra2_hyouji.png" x=510 y=3]


;ヴァンルート
[elsif exp="f.epi_van==1"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi_van_hyouji.png" x=510 y=3]

[elsif exp="f.epi==1"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi1_hyouji.png" x=510 y=3]

[elsif exp="f.epi==2"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi2_hyouji.png" x=510 y=3]

[elsif exp="f.epi==3"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi3_hyouji.png" x=510 y=3]

[elsif exp="f.epi==4"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi4_hyouji.png" x=510 y=3]
[elsif exp="f.epi==5"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi5_hyouji.png" x=510 y=3]
[elsif exp="f.epi==6"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi6_hyouji.png" x=510 y=3]
[elsif exp="f.epi==7"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi7_hyouji.png" x=510 y=3]
[elsif exp="f.epi==8"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi8_hyouji.png" x=510 y=3]
[elsif exp="f.epi==9"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi9_hyouji.png" x=510 y=3]
[elsif exp="f.epi==10"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi10_hyouji.png" x=510 y=3]
[elsif exp="f.epi==11"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi11_hyouji.png" x=510 y=3]
[elsif exp="f.epi==12"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[elsif exp="f.epi==13"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi13_hyouji.png" x=510 y=3]
[elsif exp="f.epi==14"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi14_hyouji.png" x=510 y=3]
[elsif exp="f.epi==15"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi16_hyouji.png" x=510 y=3]
;ウェスタ１章
[elsif exp="f.epi==16"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi17_hyouji.png" x=510 y=3]
;ウェスタ２章


[endif]

[endmacro]

;通常文用ジャンプコンフィグオンとクリック待ち
[macro name="mil"]

;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]
[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]

[endmacro]

[macro name="mil_role"]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]
[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[if exp="f.wait==1"][button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3][else][button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3][endif]

[endmacro]


;通常文用機能ボタンオフ。milの後ろに加える形で
[macro name="k"]


;[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[eval exp="f.sentakuchuu= 0 "]
;[clearfix name="kinou_button"]

;フォントサイズ更新

[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]


[endmacro]

;追加機能、一括表示
[macro name="ikkatu"]

;システム一括なしの場合は[mil][button_menu][l][k]の処理
;[mil]の処理
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]
[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
[l]

;フォントサイズ更新

[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]

[resetfont]


[eval exp="f.sentakuchuu= 0 "]
;[clearfix name="kinou_button"]

[endmacro]












;回想モード用ボタン
[macro name="milk"]
[button name="memory_button" fix="true" graphic="button/modoru_memory.png" enterse="tm2_switch001_macchi.ogg" x=248 y=3 storage="episode_k/memory.ks" target=*first]
[button name="memory_button"  fix="true" graphic="button/config_memory.png" enterse="tm2_switch001_macchi.ogg" x=308 y=3 storage="config1.ks"]
[button name="memory_button" role="skip" graphic="button/skip_memory.png" enterse="tm2_switch001_macchi.ogg" x=338 y=3]
[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[freeimage layer=3]
[button_menu]

[endmacro]





;回想モード用ダミーボタン

[macro name="kk"]
[image layer=3 page=fore visible=true storage="jump_config_off_memory.png" x=278 y=3]
[clearfix name="memory_button"]

[endmacro]

;コレクション用ボタン
[macro name="collect"]
[if exp="tf.collect==1"]
[button name="memory_button" fix="true" graphic="button/modoru_memory.png" enterse="tm2_switch001_macchi.ogg" x=278 y=3 storage="collection.ks" target=*tugi]
[else]
[button name="memory_button" fix="true" graphic="button/modoru_memory.png" enterse="tm2_switch001_macchi.ogg" x=278 y=3 storage="collection.ks" target=*tochuu]
[endif]
[endmacro]

[macro name="rans"]
[if exp="f.ransrenailevel==1"]
[ptext layer=1 page=fore text="＋１" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+1"]
[elsif exp="f.ransrenailevel==2"]
[ptext layer=1 page=fore text="＋２" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==3"]
[ptext layer=1 page=fore text="＋３" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==4"]
[ptext layer=1 page=fore text="＋４" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==5"]
[ptext layer=1 page=fore text="＋５" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[else]
[ptext layer=1 page=fore text="＋１０" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[endif]
[image layer=1 page=fore visible=true storage="rans_icon.png"]
[freeimage layer=1 time=2000]
[endmacro]

[macro name="lion"]
[if exp="f.lionrenailevel==1"]
[ptext layer=1 page=fore text="＋１" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+1"]
[elsif exp="f.lionrenailevel==2"]
[ptext layer=1 page=fore text="＋２" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==3"]
[ptext layer=1 page=fore text="＋３" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==4"]
[ptext layer=1 page=fore text="＋４" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==5"]
[ptext layer=1 page=fore text="＋５" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[else]
[ptext layer=1 page=fore text="＋１０" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[endif]
[image layer=1 page=fore visible=true storage="lion_icon.png"]
[freeimage layer=1 time=2000]
[endmacro]

[macro name="kra"]
[if exp="f.krarenailevel==1"]
[ptext layer=1 page=fore text="＋１" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+1"]
[elsif exp="f.krarenailevel==2"]
[ptext layer=1 page=fore text="＋２" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==3"]
[ptext layer=1 page=fore text="＋３" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==4"]
[ptext layer=1 page=fore text="＋４" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==5"]
[ptext layer=1 page=fore text="＋５" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+5"]
[else]
[ptext layer=1 page=fore text="＋１０" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+10"]
[endif]
[image layer=1 page=fore visible=true storage="klaist_icon.png"]
[freeimage layer=1 time=2000]
[endmacro]

[macro name="van"]
[ptext layer=1 page=fore text="＋１" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.vankonkando=f.vankonkando+1"]
[image layer=1 page=fore visible=true storage="van_icon.png"]
[freeimage layer=1 time=2000]
[endmacro]

[macro name="walk"]
[fadeinse storage="walk-leather-shoes1_koukaonlabo.ogg" time=3000]
[endmacro]

[macro name="walksuna"]
[fadeinse storage="walk-gravel1_koukaonlabo.ogg" time=3000]
[endmacro]

[macro name="walkmori"]
[fadeinse storage="walk-tussock1_koukaonlabo.ogg" time=3000]
[endmacro]

[macro name="walkyuka"]
[playse storage="walkyuka_onjin.ogg"]
[endmacro]

[macro name="runsuna"]
[fadeinse storage="dash-gravel1_koukaonlabo.ogg" time=3000] 
[endmacro]

[macro name="runisi"]
[playse storage="dash-leather-shoes1_koukaonlabo.ogg"]
[endmacro]

[macro name="tutiaruku"]
[playse storage="asioto_tutiaruku_onjin.ogg"]
[endmacro]

[macro name="tutihasiru"]
[playse storage="asioto_tuti_onjin.ogg"]
[endmacro]

[macro name="asiotohibiku"]
[playse storage="walkhibiku_onjin.ogg"]
[endmacro]





[macro name="hazure"]
[playse storage="tm2_switch001_macchi.ogg"]
[endmacro]

[macro name="atari"]
[playse storage="decision5_koukaonlabo.ogg"]
[endmacro]

[macro name="anten"]
[bg storage="black.png"]
[endmacro]

[macro name="agureasu"]
[image layer="1" page=fore visible=true storage=ao.png time=1500]
[freeimage layer="1" time=1500]
[endmacro]

[macro name="icon"]

[endmacro]

[macro name="iconmodoru"]

[endmacro]


[macro name="kusahasiru"]
[playse storage="kusahasiru_onjin.ogg"]
[endmacro]

[macro name="lioness"]
[cm]
【ライオネス】
[endmacro]

[macro name="irain"]
[cm]
【[emb exp="f.name"]】
[endmacro]

[macro name="name"]
[w]
[emb exp="f.name"]
[endmacro]


[macro name="name_m"]
[emb exp="sf.name"]
[endmacro]

[macro name="uranai"]
【占いのおばあちゃん】
[endmacro]

[macro name="name_kra"]
[cm]
【クライスト】
[endmacro]

[macro name="vanditte"]
[cm]
【ヴァンディット】
[endmacro]

[macro name="ranslott"]
[cm]
【ランスロット】
[endmacro]

[macro name="borongo"]
[cm]
【ボロンゴ】
[endmacro]

[macro name="sencho"]
[cm]
【船長】
[endmacro]

[macro name="tris"]
[cm]
【トリスタン】
[endmacro]

[macro name="rem"]
[cm]
【レム】
[endmacro]


[macro name="raputa"]
[cm]
【ラプタ】
[endmacro]


[macro name="cera"]
[cm]
【セレ】
[endmacro]

[macro name="agata"]
[cm]
【アガタ】
[endmacro]

[macro name="werumu"]
[cm]
【ウェルム】
[endmacro]

[macro name="anis"]
[cm]
【アニス】
[endmacro]

[macro name="ector"]
[cm]
【エクター】
[endmacro]


[macro name="yuria"]
[cm]
【ユリア】
[endmacro]

[macro name="glif"]
[cm]
【グリフレット】
[endmacro]

[macro name="name_m"]
[emb exp="sf.name"]
[endmacro]

[macro name="irain_m"]
[cm]
[emb exp="sf.name"]
[endmacro]



[macro name="anten1"]
[freeimage layer=0]
[image layer=0 visible=true name="anten" page=fore storage="black.png" time=2000]
[endmacro]

[macro name="anten_live2d"]
[image layer=3 visible=true name="anten" page=fore storage="black.png" time=2000]
[endmacro]


[macro name="stack"]
[eval exp="f.jump= 0 "]
@clearstack
[endmacro]


[macro name="pink"]
[font color="pink"]
[endmacro]

[macro name="blue"]
[font color="blue"]
[endmacro]

[macro name="gray"]
[font color="gray"]
[endmacro]





[macro name="krahantei"]
[if exp="f.krakonkando>=43&&f.a13==1"]
[eval exp="f.krakettei=1"]
[endif]
[endmacro]

[macro name="ranshantei"]
[if exp="f.ranskonkando>=28"]
[eval exp="f.ranskettei=1"]
[endif]
[endmacro]

[macro name="lionhantei"]
[if exp="f.lionkonkando>48&&f.a8==1"]
[eval exp="f.lionkettei=1"]
[endif]
[endmacro]


;料理用





;[eval exp="f.renaikando=f.ransrenaikando"]
;[eval exp="f.renailevel=f.ransrenailevel"]

[macro name="renaikando_keisan"]
[if exp="f.renaikando=>5"]
[eval exp="f.renaikando=0"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]
[eval exp="f.renaikando=f.renaikando+1"]
[endif]
[endmacro]

;[eval exp="f.ransrenailevel=f.renailevel"]
;[eval exp="f.ransrenaikando=f.renaikando"]

[macro name="koukando1_rans"]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が１アップ！
[eval exp="f.ranskonkando=f.ranskonkando+1"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が２アップ！
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が３アップ！
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が４アップ！
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が５アップ！
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[else]
[r]好感度が１０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[endif]

;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]


;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan1
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan1]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]




[endmacro]

[macro name="koukando2_rans"]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が２アップ！
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が４アップ！
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が６アップ！
[eval exp="f.ranskonkando=f.ranskonkando+6"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が８アップ！
[eval exp="f.ranskonkando=f.ranskonkando+8"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が１０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[else]
[r]好感度が２０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan2
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]





[if exp="f.renaikando>=6"]
[jump target=*keisan2]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]
[endmacro]

[macro name="koukando3_rans"]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が３アップ！
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が６アップ！
[eval exp="f.ranskonkando=f.ranskonkando+6"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が９アップ！
[eval exp="f.ranskonkando=f.ranskonkando+9"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が１２アップ！
[eval exp="f.ranskonkando=f.ranskonkando+12"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が１５アップ！
[eval exp="f.ranskonkando=f.ranskonkando+15"]
[else]
[r]好感度が３０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan3
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan3]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]
[endmacro]

[macro name="koukando10_rans"]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が１０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が２０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+20"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が３０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+30"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が４０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+40"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が５０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+50"]
[else]
[r]好感度が５０アップ！
[eval exp="f.ranskonkando=f.ranskonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan4
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan4]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]
[endmacro]



[macro name="hantei_rans"]
[eval exp="f.ryouri=f.ryouri-1"]
[eval exp="f.ryourirans=f.ryourirans-1]

[if exp="f.ryouri==0&&f.a17==1"]
[stopbgm]
[jump storage=kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri]

[elsif exp="f.b17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri]

[else]

[jump storage=ryouri/ryouri.ks target=*ryouri]

[endif]
[endmacro]






[macro name="koukando1_kra"]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が１アップ！
[eval exp="f.krakonkando=f.krakonkando+1"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が２アップ！
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が３アップ！
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が４アップ！
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が５アップ！
[eval exp="f.krakonkando=f.krakonkando+5"]
[else]
[r]好感度が１０アップ！
[eval exp="f.krakonkando=f.krakonkando+10"]
[endif]

;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan5
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]

[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan5]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]

[macro name="koukando2_kra"]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が２アップ！
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が４アップ！
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が６アップ！
[eval exp="f.krakonkando=f.krakonkando+6"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が８アップ！
[eval exp="f.krakonkando=f.krakonkando+8"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が１０アップ！
[eval exp="f.krakonkando=f.krakonkando+10"]
[else]
[r]好感度が２０アップ！
[eval exp="f.krakonkando=f.krakonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan6
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan6]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]

[macro name="koukando3_kra"]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が３アップ！
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が６アップ！
[eval exp="f.krakonkando=f.krakonkando+6"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が９アップ！
[eval exp="f.krakonkando=f.krakonkando+9"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が１２アップ！
[eval exp="f.krakonkando=f.krakonkando+12"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が１５アップ！
[eval exp="f.krakonkando=f.krakonkando+15"]
[else]
[r]好感度が３０アップ！
[eval exp="f.krakonkando=f.krakonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan7
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan7]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]

[endmacro]

[macro name="koukando10_kra"]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が１０アップ！
[eval exp="f.krakonkando=f.krakonkando+10"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が２０アップ！
[eval exp="f.krakonkando=f.krakonkando+20"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が３０アップ！
[eval exp="f.krakonkando=f.krakonkando+30"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が４０アップ！
[eval exp="f.krakonkando=f.krakonkando+40"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が５０アップ！
[eval exp="f.krakonkando=f.krakonkando+50"]
[else]
[r]好感度が５０アップ！
[eval exp="f.krakonkando=f.krakonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan8
[if exp="f.renaikando>=6"]
[eval exp="f.renaikando=f.renaikando-6"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=6"]
[jump target=*keisan8]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]

[endmacro]


[macro name="hantei_kra"]
[eval exp="f.ryouri=f.ryouri-1"]
[eval exp="f.ryourikra=f.ryourikra-1]

[if exp="f.ryouri==0&&f.a17==1"]
[stopbgm]
[jump storage=kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri_return]

[elsif exp="f.b17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri_return]

[else]

[jump storage=ryouri/ryouri.ks target=*ryouri]

[endif]

[endmacro]







[macro name="koukando1_lion"]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が１アップ！
[eval exp="f.lionkonkando=f.lionkonkando+1"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が２アップ！
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が３アップ！
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が４アップ！
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が５アップ！
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[else]
[r]好感度が１０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[endif]

;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+2"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan9
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan9]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando2_lion"]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が２アップ！
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が４アップ！
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が６アップ！
[eval exp="f.lionkonkando=f.lionkonkando+6"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が８アップ！
[eval exp="f.lionkonkando=f.lionkonkando+8"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が１０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[else]
[r]好感度が２０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan10
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan10]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando3_lion"]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が３アップ！
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が６アップ！
[eval exp="f.lionkonkando=f.lionkonkando+6"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が９アップ！
[eval exp="f.lionkonkando=f.lionkonkando+9"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が１２アップ！
[eval exp="f.lionkonkando=f.lionkonkando+12"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が１５アップ！
[eval exp="f.lionkonkando=f.lionkonkando+15"]
[else]
[r]好感度が３０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan11
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan11]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando10_lion"]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が１０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が２０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+20"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が３０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+30"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が４０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+40"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が５０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+50"]
[else]
[r]好感度が５０アップ！
[eval exp="f.lionkonkando=f.lionkonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan12
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan12]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="hantei_lion"]
[eval exp="f.ryouri=f.ryouri-1"]
[eval exp="f.ryourilion=f.ryourilion-1"]

[if exp="f.ryouri==0&&f.a17==1"]
[stopbgm]
[jump storage=kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri_return]

[elsif exp="f.b17==1"]
[jump storage=ryouri/ryouri_w.ks target=*ryouri_return]

[else]

[jump storage=ryouri/ryouri.ks target=*ryouri]

[endif]
[endmacro]



[macro name="agattayo1"]
[cm]
[borongo][r]
「おめでとう！レベルがあがったわよ[r]
これでもっとこの彼ともらぶらぶね☆」[r]
[cm]
[endmacro]

[macro name="agattayo"]
[cm]
[uranai][r]
「おめでとう！レベルがあがったよ[r]
これでもっとこの男とも親密になれることだろうよ」[r]
[cm]
[endmacro]



[macro name="irain0"]
[freeimage layer=3]
[image layer=3 page=fore visible=true top=435 left=15 storage="chara/irain0.png"]
[endmacro]

[macro name="message_settei"]
[eval exp="f.ad=0"]
[layopt layer=message0 visible=true]
[current layer="message0"]
[layopt layer=message1 visible=false]
[position opacity=100]
[position width=730 height=570 left=35 marginl=10 marginr=10 marginb=30 top=30]

[freeimage layer=3]
;フォントサイズ更新
[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]

[endmacro]

[macro name="message_settei_ad"]
[layopt layer=message0 visible=false]
;	メッセージウィンドウの設定
	[position layer="message1" width="514" height="280" top="360" left="190"]
	[position layer="message1" frame="message1.png" margint="60" marginl="10" marginr="30" page="fore"]

;	名前枠の設定
    [free name="chara_name_area" layer="message1"]
	[ptext name="chara_name_area" layer="message1" size="26" bold="bold" shadow="0x333333" x="220" y="390"]
	[chara_config ptext="chara_name_area"]
[eval exp="f.ad=1"]
[layopt layer=message1 visible=true]
[current layer="message1"]


;フォントサイズ更新
[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]



[endmacro]



[macro name="message_kakusu"]
[layopt layer="message1" visible=false]
[position opacity=0]
[endmacro]


[macro name="message_kakusu_ad"]
[layopt layer="message1" visible=false]
[endmacro]


;イレイン表情表示登録

;通常まじめ
[macro name="normal_majime"]




[image layer=3 page=fore storage="chara/irain/irain_normal_majime.png" top=435 left=15 time=50]

[endmacro]

;困り笑い
[macro name="komariwarai"]




[image layer=3 page=fore storage="chara/irain/irain_komariwarai.png" top=435 left=15 time=50]

[endmacro]

;くちびるかみしめ
[macro name="kutibirukamisime"]




[image layer=3 page=fore storage="chara/irain/irain_kutibirukamisime.png" top=435 left=15 time=50]

[endmacro]

;きょとん
[macro name="kyoton"]




[image layer=3 page=fore storage="chara/irain/irain_kyoton.png" top=435 left=15 time=50]

[endmacro]

;めふせ
[macro name="mehuse"]




[image layer=3 page=fore storage="chara/irain/irain_mehuse.png" top=435 left=15 time=50]

[endmacro]

;めふせ赤面
[macro name="mehuse_sekimen"]




[image layer=3 page=fore storage="chara/irain/irain_mehuse_sekimen.png" top=435 left=15 time=50]

[endmacro]

;めとじ困り
[macro name="metoji_koma"]




[image layer=3 page=fore storage="chara/irain/irain_metoji_koma.png" top=435 left=15 time=50]

[endmacro]

;めとじ苦しい
[macro name="metoji_kurusii"]




[image layer=3 page=fore storage="chara/irain/irain_metoji_kurusii.png" top=435 left=15 time=50]

[endmacro]

;めとじくちあけ
[macro name="metoji_kutiake"]




[image layer=3 page=fore storage="chara/irain/irain_metoji_kutiake.png" top=435 left=15 time=50]

[endmacro]

;怒り本気くちあけ
[macro name="angry_honki_kutiake"]




[image layer=3 page=fore storage="chara/irain/irain_angry_honki_kutiake.png" top=435 left=15 time=50]

[endmacro]

;怒り本気
[macro name="angry_honki"]




[image layer=3 page=fore storage="chara/irain/irain_angry_honnki.png" top=435 left=15 time=50]

[endmacro]

;汗
[macro name="ase"]




[image layer=3 page=fore storage="chara/irain/irain_ase.png" top=435 left=15 time=50]

[endmacro]

;必死
[macro name="hisshi"]




[image layer=3 page=fore storage="chara/irain/irain_hisshi.png" top=435 left=15 time=50]

[endmacro]

;怒り
[macro name="ikari"]




[image layer=3 page=fore storage="chara/irain/irain_ikari.png" top=435 left=15 time=50]

[endmacro]

;決心
[macro name="kessin"]




[image layer=3 page=fore storage="chara/irain/irain_kessin.png" top=435 left=15 time=50]

[endmacro]


;泣き
[macro name="naki"]




[image layer=3 page=fore storage="chara/irain/irain_naki.png" top=435 left=15 time=50]

[endmacro]

;困り口開けだい
[macro name="komari_kutiake_dai"]




[image layer=3 page=fore storage="chara/irain/irain_komari_kutiake_dai.png" top=435 left=15 time=50]

[endmacro]

;困りくちとじ
[macro name="komari_kutitoji"]




[image layer=3 page=fore storage="chara/irain/irain_komari_kutitoji.png" top=435 left=15 time=50]

[endmacro]

;普通くちあけ
[macro name="normal_kutiake"]




[image layer=3 page=fore storage="chara/irain/irain_normal_kutiake.png" top=435 left=15 time=50]

[endmacro]

;困りくちあけ
[macro name="komarikutiake"]




[image layer=3 page=fore storage="chara/irain/irain_komarikutiake.png" top=435 left=15 time=50]

[endmacro]


;困り赤面くちとじ
[macro name="komarisekimen_kutitoji"]




[image layer=3 page=fore storage="chara/irain/irain_komarisekimen_kutitoji.png" top=435 left=15 time=50]

[endmacro]

;普通笑いくちあけ
[macro name="normal_warai_kutiake"]




[image layer=3 page=fore storage="chara/irain/irain_normal_warai_kutiake.png" top=435 left=15 time=50]

[endmacro]


;驚き
[macro name="odoroki"]




[image layer=3 page=fore storage="chara/irain/irain_odoroki.png" top=435 left=15 time=50]

[endmacro]

;おちこみ
[macro name="otikomi"]




[image layer=3 page=fore storage="chara/irain/irain_otikomi.png" top=435 left=15 time=50]

[endmacro]

;赤面
[macro name="sekimen"]




[image layer=3 page=fore storage="chara/irain/irain_sekimen.png" top=435 left=15 time=50]

[endmacro]

;赤面こまりくちあけ
[macro name="sekimen_komarikutiake"]




[image layer=3 page=fore storage="chara/irain/irain_sekimen_komarikutiake.png" top=435 left=15 time=50]

[endmacro]

;赤面驚きくちあけ
[macro name="sekimen_odorokikutiake"]




[image layer=3 page=fore storage="chara/irain/irain_sekimen_odorokikutiake.png" top=435 left=15 time=50]

[endmacro]

;赤面うれしそう
[macro name="sekimen_uresisou"]




[image layer=3 page=fore storage="chara/irain/irain_sekimen_uresisou.png" top=435 left=15 time=50]

[endmacro]

;赤面くちあけ
[macro name="sekimenkutiake"]




[image layer=3 page=fore storage="chara/irain/irain_sekimenkutiake.png" top=435 left=15 time=50]

[endmacro]

;深刻
[macro name="sinnkoku"]




[image layer=3 page=fore storage="chara/irain/irain_sinnkoku.png" top=435 left=15 time=50]

[endmacro]

;スマイル
[macro name="smile"]




[image layer=3 page=fore storage="chara/irain/irain_smile.png" top=435 left=15 time=50]

[endmacro]

;うっとり
[macro name="uttori"]




[image layer=3 page=fore storage="chara/irain/irain_uttori.png" top=435 left=15 time=50]

[endmacro]

;横目深刻
[macro name="yokome_sinnkoku"]




[image layer=3 page=fore storage="chara/irain/irain_yokome_sinnkoku.png" top=435 left=15 time=50]

[endmacro]

;普通
[macro name="normal"]




[image layer=3 page=fore storage="chara/irain0.png" top=435 left=15 time=50]

[endmacro]







;キャラ定義



;料理用台詞



;メニュー１
[macro name="random1"]
;トマトサラダ
[if exp="f.tomato==2"]
[button graphic="button/ryouri/tomato.jpg" clickse="tm2_switch001_macchi.ogg" target=*tomato x=70 y=90]
[elsif exp="f.tomato==1"]
[button graphic="button/ryouri/tomato0.jpg" clickse="tm2_switch001_macchi.ogg" target=*tomato0 x=70 y=90]
[else]
[endif]
;魚介のマリネ
[if exp="f.marine==2"]
[button graphic="button/ryouri/gyokainomarine.jpg" clickse="tm2_switch001_macchi.ogg" target=*marine x=315 y=90]
[elsif exp="f.marine==1"]
[button graphic="button/ryouri/gyokainomarine0.jpg" clickse="tm2_switch001_macchi.ogg" target=*marine0 x=315 y=90]
[else]
[endif]
;お刺身
[if exp="f.sinsen==2"]
[button graphic="button/ryouri/sinsen.jpg" clickse="tm2_switch001_macchi.ogg" target=*sinsen x=560 y=90]
[elsif exp="f.sinsen==1"]
[button graphic="button/ryouri/sinsen0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sinsen0 x=560 y=90]
[else]
[endif]
[endmacro]


;メニュー２

[macro name="random2"]

;厚切りステーキ
[if exp="f.atugiri==2"]
[button graphic="button/ryouri/atugiri.jpg" clickse="tm2_switch001_macchi.ogg" target=*atugiri x=70 y=90]
[elsif exp="f.atugiri==1"]
[button graphic="button/ryouri/atugiri0.jpg" clickse="tm2_switch001_macchi.ogg" target=*atugiri0 x=70 y=90]
[else]
[endif]

;定番煮物
[if exp="f.nimono==2"]
[button graphic="button/ryouri/nimono.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimono x=315 y=90]
[elsif exp="f.nimono==1"]
[button graphic="button/ryouri/nimono0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimono0 x=315 y=90]
[else]
[endif]


;グラタン
[if exp="f.guratan==2"]
[button graphic="button/ryouri/guratan.jpg" clickse="tm2_switch001_macchi.ogg" target=*guratan x=560 y=90]
[elsif exp="f.guratan==1"]
[button graphic="button/ryouri/guratan0.jpg" clickse="tm2_switch001_macchi.ogg" target=*guratan0 x=560 y=90]
[endif]

[endmacro]









;メニュー３
[macro name="random3"]

;からあげ
[if exp="f.karaage==2"]
[button graphic="button/ryouri/karaage.jpg" clickse="tm2_switch001_macchi.ogg" target=*karaage x=70 y=90]
[elsif exp="f.karaage==1"]
[button graphic="button/ryouri/karaage0.jpg" clickse="tm2_switch001_macchi.ogg" target=*karaage0 x=70 y=90]
[endif]

;にくじゃが
[if exp="f.nikujaga==2"]
[button graphic="button/ryouri/nikujaga.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga x=315 y=90]
[elsif exp="f.nikujaga==1"]
[button graphic="button/ryouri/nikujaga0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga0 x=315 y=90]
[else]
[endif]

;魚フライ
[if exp="f.sakanahurai==2"]
[button graphic="button/ryouri/sakanahurai.jpg" clickse="tm2_switch001_macchi.ogg" target=*sakanahurai x=560 y=90]
[elsif exp="f.sakanahurai==1"]
[button graphic="button/ryouri/sakanahurai0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sakanahurai0 x=560 y=90]
[else]
[endif]

[endmacro]



;メニュー４
[macro name="random4"]


;カレイのみぞれ煮
[if exp="f.karei==2"]
[button graphic="button/ryouri/karei.jpg" clickse="tm2_switch001_macchi.ogg" target=*karei x=70 y=90]
[elsif exp="f.karei==1"]
[button graphic="button/ryouri/karei0.jpg" clickse="tm2_switch001_macchi.ogg" target=*karei0 x=70 y=90]
[else]
[endif]

;てんぷら
[if exp="f.tenpura==2"]
[button graphic="button/ryouri/tenpura.jpg" clickse="tm2_switch001_macchi.ogg" target=*tenpura x=315 y=90]
[elsif exp="f.tenpura==1"]
[button graphic="button/ryouri/tenpura_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*tenpura0 x=315 y=90]
[else]
[endif]

;うなじゅう
[if exp="f.unajuu==2"]
[button graphic="button/ryouri/unajuu.jpg" clickse="tm2_switch001_macchi.ogg" target=*unajuu x=560 y=90]
[elsif exp="f.unajuu==1"]
[button graphic="button/ryouri/unajuu_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*unajuu0 x=560 y=90]
[else]
[endif]

[endmacro]


;メニュー５
[macro name="random5"]

;にくじゃが
[if exp="f.nikujaga==2"]
[button graphic="button/ryouri/nikujaga.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga x=70 y=90]
[elsif exp="f.nikujaga==1"]
[button graphic="button/ryouri/nikujaga0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga0 x=70 y=90]
[else]
[endif]

;ポテトサラダ
[if exp="f.siizaa==2"]
[button graphic="button/ryouri/siizaa.jpg" clickse="tm2_switch001_macchi.ogg" target=*siizaa x=315 y=90]
[elsif exp="f.siizaa==1"]
[button graphic="button/ryouri/siizaa0.jpg" clickse="tm2_switch001_macchi.ogg" target=*siizaa0 x=315 y=90]
[endif]



;カレー

[if exp="f.kare==2"]
[button graphic="button/ryouri/kare.jpg" clickse="tm2_switch001_macchi.ogg" target=*kare x=560 y=90]
[elsif exp="f.kare==1"]
[button graphic="button/ryouri/kare_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*kare0 x=560 y=90]
[else]
[endif]

[endmacro]


;メニュー６
[macro name="random6"]
;おでん
[if exp="f.oden==2"]
[button graphic="button/ryouri/oden.jpg" clickse="tm2_switch001_macchi.ogg" target=*oden x=70 y=90]
[elsif exp="f.oden==1"]
[button graphic="button/ryouri/oden_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*oden0 x=70 y=90]
[else]
[endif]

;カレー

[if exp="f.kare==2"]
[button graphic="button/ryouri/kare.jpg" clickse="tm2_switch001_macchi.ogg" target=*kare x=315 y=90]
[elsif exp="f.kare==1"]
[button graphic="button/ryouri/kare_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*kare0 x=315 y=90]
[else]
[endif]

;シチュー
[if exp="f.sichuu==2"]
[button graphic="button/ryouri/sichuu.jpg" clickse="tm2_switch001_macchi.ogg" target=*sichuu x=560 y=90]
[elsif exp="f.sichuu==1"]
[button graphic="button/ryouri/sichuu_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sichuu0 x=560 y=90]
[else]
[endif]
[endmacro]


;メニュー７
[macro name="random7"]

;炊き込みごはん
[if exp="f.takikomigohan==2"]
[button graphic="button/ryouri/takikomigohan.jpg" clickse="tm2_switch001_macchi.ogg" target=*takikomi x=70 y=90]
[elsif exp="f.takikomigohan==1"]
[button graphic="button/ryouri/takikomigohan0.jpg" clickse="tm2_switch001_macchi.ogg" target=*takikomi0 x=70 y=90]
[else]
[endif]

;イタメシ
[if exp="f.itamesi==2"]
[button graphic="button/ryouri/itamesi.jpg" clickse="tm2_switch001_macchi.ogg" target=*itamesi x=315 y=90]
[elsif exp="f.itamesi==1"]
[button graphic="button/ryouri/itamesi0.jpg" clickse="tm2_switch001_macchi.ogg" target=*itamesi0 x=315 y=90]
[else]
[endif]

;ぎょうざ
[if exp="f.gyooza==2"]
[button graphic="button/ryouri/gyooza.jpg" clickse="tm2_switch001_macchi.ogg" target=*gyooza x=560 y=90]
[elsif exp="f.gyooza==1"]
[button graphic="button/ryouri/gyooza_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*gyooza0 x=560 y=90]
[else]
[endif]

[endmacro]


;メニュー８
[macro name="random8"]

;にものスペシャル
[if exp="f.nimonosu==2"]
[button graphic="button/ryouri/nimono_s.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimonosu x=70 y=90]
[elsif exp="f.nimonosu==1"]
[button graphic="button/ryouri/nimono_s_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimonosu0 x=70 y=90]
[else]
[endif]

;あげものてんこもり
[if exp="f.agemonotenko==2"]
[button graphic="button/ryouri/agemonotenko.jpg" clickse="tm2_switch001_macchi.ogg" target=*agemonotenko x=315 y=90]
[elsif exp="f.agemonotenko==1"]
[button graphic="button/ryouri/agemonotenko_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*agemonotenko0 x=315 y=90]
[else]
[endif]
;セレブスペシャル
[if exp="f.serebu==2"]
[button graphic="button/ryouri/serebu.jpg" clickse="tm2_switch001_macchi.ogg" target=*serebu x=560 y=90]
[elsif exp="f.serebu==1"]
[button graphic="button/ryouri/serebu_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*serebu0 x=560 y=90]
[else]
[endif]

[endmacro]



;メニュー９
[macro name="random9"]



;サラダカーニバル
[if exp="f.saradakaanibaru==2"]
[button graphic="button/ryouri/sarada_c.jpg" clickse="tm2_switch001_macchi.ogg" target=*sarada_c x=70 y=90]
[elsif exp="f.saradakaanibaru==1"]
[button graphic="button/ryouri/sarada_c_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sarada_c0 x=70 y=90]
[else]
[endif]
;あげものてんこもり
[if exp="f.agemonotenko==2"]
[button graphic="button/ryouri/agemonotenko.jpg" clickse="tm2_switch001_macchi.ogg" target=*agemonotenko x=315 y=90]
[elsif exp="f.agemonotenko==1"]
[button graphic="button/ryouri/agemonotenko_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*agemonotenko0 x=315 y=90]
[else]
[endif]
;セレブスペシャル
[if exp="f.serebu==2"]
[button graphic="button/ryouri/serebu.jpg" clickse="tm2_switch001_macchi.ogg" target=*serebu x=560 y=90]
[elsif exp="f.serebu==1"]
[button graphic="button/ryouri/serebu_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*serebu0 x=560 y=90]
[else]
[endif]


[endmacro]

;メニュー１０
[macro name="random10"]

;じゅうじゅうセット

[if exp="f.juujuu==2"]
[button graphic="button/ryouri/juujuu.jpg" clickse="tm2_switch001_macchi.ogg" target=*juujuu x=315 y=90]
[elsif exp="f.juujuu==1"]
[button graphic="button/ryouri/juujuu_0.jpg" clickse="tm2_switch001_macchi.ogg" target=*juujuu0 x=315 y=90]
[else]
[endif]



[endmacro]























;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=150]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=180]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=210]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=240]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=270]

;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=30]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=60]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=90]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=120]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=150]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=180]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=210]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=240]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=270]



;占いメニュー
[macro name="uranai_menu"]

[button graphic="button/kininaruhito1_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*seikaku x=110 y=30]
[button graphic="button/kininaruhito2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*koukando x=110 y=110]
[button graphic="button/kininaruhito3_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*tabemono x=370 y=30]
[button graphic="button/kininaruhito4_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kaeru x=370 y=110]

[endmacro]

;誰を占う？
[macro name="dare_uranai"]

[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans x=30 y=80]
[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion x=220 y=80]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=410 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=220 y=230]

[endmacro]


;誰の気持ちを知りたい？
[macro name="dare_koukando"]

[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans x=30 y=80]
[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rai x=220 y=80]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=410 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=220 y=230]

[endmacro]


[macro name="rans_kaiwakousin"]
[if exp="f.ranskaiwa==0"]
[freeimage layer=1]
[elsif exp="f.ranskaiwa==1"]

[image layer=1 page=fore storage="kaiwa_kaisuu1.png" top=1 left=480]
[elsif exp="f.ranskaiwa==2"]

[image layer=1 page=fore storage="kaiwa_kaisuu2.png" top=1 left=450]
[elsif exp="f.ranskaiwa==3"]

[image layer=1 page=fore storage="kaiwa_kaisuu3.png" top=1 left=420]
[elsif exp="f.ranskaiwa==4"]

[image layer=1 page=fore storage="kaiwa_kaisuu4.png" top=1 left=390]
[elsif exp="f.ranskaiwa==5"]

[image layer=1 page=fore storage="kaiwa_kaisuu5.png" top=1 left=360]

[else]
[endif]
[endmacro]

[macro name="lion_kaiwakousin"]
[if exp="f.lionkaiwa==0"]
[freeimage layer=1]
[elsif exp="f.lionkaiwa==1"]

[image layer=1 page=fore storage="kaiwa_kaisuu1.png" top=1 left=480]
[elsif exp="f.lionkaiwa==2"]

[image layer=1 page=fore storage="kaiwa_kaisuu2.png" top=1 left=450]
[elsif exp="f.lionkaiwa==3"]

[image layer=1 page=fore storage="kaiwa_kaisuu3.png" top=1 left=420]
[elsif exp="f.lionkaiwa==4"]

[image layer=1 page=fore storage="kaiwa_kaisuu4.png" top=1 left=390]
[elsif exp="f.lionkaiwa==5"]

[image layer=1 page=fore storage="kaiwa_kaisuu5.png" top=1 left=360]

[else]
[endif]
[endmacro]

[macro name="kra_kaiwakousin"]
[if exp="f.krakaiwa==0"]
[freeimage layer=1]
[elsif exp="f.krakaiwa==1"]

[image layer=1 page=fore storage="kaiwa_kaisuu1.png" top=1 left=480]
[elsif exp="f.krakaiwa==2"]

[image layer=1 page=fore storage="kaiwa_kaisuu2.png" top=1 left=450]
[elsif exp="f.krakaiwa==3"]

[image layer=1 page=fore storage="kaiwa_kaisuu3.png" top=1 left=420]
[elsif exp="f.krakaiwa==4"]

[image layer=1 page=fore storage="kaiwa_kaisuu4.png" top=1 left=390]
[elsif exp="f.krakaiwa==5"]

[image layer=1 page=fore storage="kaiwa_kaisuu5.png" top=1 left=360]

[else]
[endif]
[endmacro]

[macro name="van_kaiwakousin"]
[if exp="f.vankaiwa==0"]
[freeimage layer=1]
[elsif exp="f.vankaiwa==1"]

[image layer=1 page=fore storage="kaiwa_kaisuu1.png" top=1 left=480]
[elsif exp="f.vankaiwa==2"]

[image layer=1 page=fore storage="kaiwa_kaisuu2.png" top=1 left=450]
[elsif exp="f.vankaiwa==3"]

[image layer=1 page=fore storage="kaiwa_kaisuu3.png" top=1 left=420]
[elsif exp="f.vankaiwa==4"]

[image layer=1 page=fore storage="kaiwa_kaisuu4.png" top=1 left=390]
[elsif exp="f.vankaiwa==5"]

[image layer=1 page=fore storage="kaiwa_kaisuu5.png" top=1 left=360]

[else]
[endif]
[endmacro]



[macro name="menu"]
;メニュー表示

;トマトサラダ
;[if exp="f.tomato==2"]
;[button graphic="button/sarada/tomato.jpg" clickse="tm2_switch001_macchi.ogg" target=*tomato x=10 y=30]
;[elsif exp="f.tomato==1"]
;[button graphic="button/sarada/tomato0.jpg" clickse="tm2_switch001_macchi.ogg" target=*tomato0 x=10 y=30]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=10 y=30]
;[endif]
;にくじゃが
[if exp="f.nikujaga==2"]
[button graphic="button/nimono/nikujaga.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga x=10 y=90]
[elsif exp="f.nikujaga==1"]
[button graphic="button/nimono/nikujaga0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nikujaga0 x=10 y=90]
[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=10 y=90]
[endif]
;ポテトサラダ
[if exp="f.siizaa==2"]
[button graphic="button/sarada/siizaa.jpg" clickse="tm2_switch001_macchi.ogg" target=*siizaa x=10 y=150]
[elsif exp="f.siizaa==1"]
[button graphic="button/sarada/siizaa0.jpg" clickse="tm2_switch001_macchi.ogg" target=*siizaa0 x=10 y=150]
[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=10 y=150]
[endif]
;イタメシ
;[if exp="f.itamesi==2"]
;[button graphic="button/agemono_itamemono/itamesi.jpg" clickse="tm2_switch001_macchi.ogg" target=*itamesi x=10 y=210]
;[elsif exp="f.itamesi==1"]
;[button graphic="button/agemono_itamemono/itamesi0.jpg" clickse="tm2_switch001_macchi.ogg" target=*itamesi0 x=10 y=210]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=10 y=210]
;[endif]
;魚フライ
;[if exp="f.sakanahurai==2"]
;[button graphic="button/agemono_itamemono/sakanahurai.jpg" clickse="tm2_switch001_macchi.ogg" target=*sakanahurai x=10 y=270]
;[elsif exp="f.sakanahurai==1"]
;[button graphic="button/agemono_itamemono/sakanahurai0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sakanahurai0 x=10 y=270]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=10 y=270]
;[endif]



;お刺身
[if exp="f.sinsen==2"]
[button graphic="button/koukyuu/sinsen.jpg" clickse="tm2_switch001_macchi.ogg" target=*sinsen x=190 y=30]
[elsif exp="f.sinsen==1"]
[button graphic="button/koukyuu/sinsen0.jpg" clickse="tm2_switch001_macchi.ogg" target=*sinsen0 x=190 y=30]
[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=30]
[endif]
;カレイのみぞれ煮
;[if exp="f.karei==2"]
;[button graphic="button/nimono/karei.jpg" clickse="tm2_switch001_macchi.ogg" target=*karei x=190 y=90]
;[elsif exp="f.karei==1"]
;[button graphic="button/nimono/karei0.jpg" clickse="tm2_switch001_macchi.ogg" target=*karei0 x=190 y=90]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=90]
;[endif]
;厚切りステーキ
;[if exp="f.atugiri==2"]
;[button graphic="button/koukyuu/atugiri.jpg" clickse="tm2_switch001_macchi.ogg" target=*atugiri x=190 y=150]
;[elsif exp="f.atugiri==1"]
;[button graphic="button/koukyuu/atugiri0.jpg" clickse="tm2_switch001_macchi.ogg" target=*atugiri0 x=190 y=150]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=150]
;[endif]
;定番煮物
;[if exp="f.nimono==2"]
;[button graphic="button/nimono/nimono.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimono x=190 y=210]
;[elsif exp="f.nimono==1"]
;[button graphic="button/nimono/nimono0.jpg" clickse="tm2_switch001_macchi.ogg" target=*nimono0 x=190 y=210]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=210]
;[endif]

;魚介のマリネ
[if exp="f.marine==2"]
[button graphic="button/sarada/gyokainomarine.jpg" clickse="tm2_switch001_macchi.ogg" target=*marine x=190 y=270]
[elsif exp="f.marine==1"]
[button graphic="button/sarada/gyokainomarine0.jpg" clickse="tm2_switch001_macchi.ogg" target=*marine0 x=190 y=270]
[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=270]
[endif]




;から揚げ
;[if exp="f.karaage==2"]
;[button graphic="button/agemono_itamemono/karaage.jpg" clickse="tm2_switch001_macchi.ogg" target=*karaage x=370 y=30]
;[elsif exp="f.karaage==1"]
;[button graphic="button/agemono_itamemono/karaage0.jpg" clickse="tm2_switch001_macchi.ogg" target=*karaage0 x=370 y=30]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=30]
;[endif]

;グラタン
;[if exp="f.guratan==2"]
;[button graphic="button/yakimono_hukasu/guratan.jpg" clickse="tm2_switch001_macchi.ogg" target=*guratan x=370 y=90]
;[elsif exp="f.guratan==1"]
;[button graphic="button/yakimono_hukasu/guratan0.jpg" clickse="tm2_switch001_macchi.ogg" target=*guratan0 x=370 y=90]
;[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=90]
;[endif]

;炊き込みごはん
[if exp="f.takikomigohan==2"]
[button graphic="button/yakimono_hukasu/takikomigohan.jpg" clickse="tm2_switch001_macchi.ogg" target=*takikomi x=370 y=150]
[elsif exp="f.takikomigohan==1"]
[button graphic="button/yakimono_hukasu/takikomigohan0.jpg" clickse="tm2_switch001_macchi.ogg" target=*takikomi0 x=370 y=150]
[else]
[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=150]
[endif]


;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=150]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=180]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=210]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=240]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=190 y=270]

;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=30]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=60]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=90]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=120]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=150]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=180]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=210]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=240]
;[button graphic="button/ryouri_kara.jpg" clickse="tm2_switch001_macchi.ogg" target=*mada x=370 y=270]


 
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*mae x=464 y=302]

;メニュー表示終わり

[endmacro]
;占いメニュー
[macro name="uranai_menu"]

[button graphic="button/kininaruhito1_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*seikaku x=110 y=30]
[button graphic="button/kininaruhito2_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*koukando x=110 y=110]
[button graphic="button/kininaruhito3_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*tabemono x=370 y=30]
[button graphic="button/kininaruhito4_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kaeru x=370 y=110]

[endmacro]

;誰を占う？
[macro name="dare_uranai"]

[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans x=30 y=80]
[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*lion x=220 y=80]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=410 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=220 y=230]

[endmacro]


;誰の気持ちを知りたい？
[macro name="dare_koukando"]

[button graphic="button/ransname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rans x=30 y=80]
[button graphic="button/lionname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*rai x=220 y=80]
[button graphic="button/kraname_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*kra x=410 y=80]
[button graphic="button/uranaimodoru_pakutaso.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=220 y=230]

[endmacro]

[macro name="episode_hyouji"]
[freeimage layer=0]
[eval exp="f.epi=f.epi+1"]


[endmacro]


[macro name="episode_hyouji_only"]

;エピソードイメージ表示

;ランスロットルート
[if exp="f.ranskettei==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_rans1_hyouji.png" x=510 y=3]

[elsif exp="f.ranskettei==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_rans2_hyouji.png" x=510 y=3]


;ライオネスルート
[elsif exp="f.lionkettei==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_lion1_hyouji.png" x=510 y=3]

[elsif exp="f.lionkettei==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_lion2_hyouji.png" x=510 y=3]


;クライストルート
[elsif exp="f.krakettei1==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_kra1_hyouji.png" x=510 y=3]

[elsif exp="f.krakettei1==2"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_kra2_hyouji.png" x=510 y=3]


;ヴァンルート
[elsif exp="f.epi_van==1"]

[image layer=0 page=fore visible=true storage="epi_hyouji/epi_van_hyouji.png" x=510 y=3]

[elsif exp="f.epi==1"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi1_hyouji.png" x=510 y=3]

[elsif exp="f.epi==2"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi2_hyouji.png" x=510 y=3]

[elsif exp="f.epi==3"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi3_hyouji.png" x=510 y=3]

[elsif exp="f.epi==4"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi4_hyouji.png" x=510 y=3]
[elsif exp="f.epi==5"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi5_hyouji.png" x=510 y=3]
[elsif exp="f.epi==6"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi6_hyouji.png" x=510 y=3]
[elsif exp="f.epi==7"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi7_hyouji.png" x=510 y=3]
[elsif exp="f.epi==8"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi8_hyouji.png" x=510 y=3]
[elsif exp="f.epi==9"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi9_hyouji.png" x=510 y=3]
[elsif exp="f.epi==10"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi10_hyouji.png" x=510 y=3]
[elsif exp="f.epi==11"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi11_hyouji.png" x=510 y=3]
[elsif exp="f.epi==12"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[elsif exp="f.epi==13"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi13_hyouji.png" x=510 y=3]
[elsif exp="f.epi==14"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi14_hyouji.png" x=510 y=3]
[elsif exp="f.epi==15"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi16_hyouji.png" x=510 y=3]
;ウェスタ１章
[elsif exp="f.epi==16"]
[image layer=0 page=fore visible=true storage="epi_hyouji/epi17_hyouji.png" x=510 y=3]
;ウェスタ２章


[endif]

[endmacro]

[macro name="rg"]
[if exp="f.rrr!=1"]
[r]
[else]
[eval exp="f.rrr=0"]
[endif]
[endmacro]


[macro name="message_settei_ad_uranai"]
[position opacity=0]
[eval exp="f.ad=1"]
[layopt layer=message1 visible=true]
[current layer="message1"]
[position layer=message1 width=550 height=280 top=358 left=175 margint=40 marginr=50 visible=true]
[position layer=message1 page=fore frame="messege1.png" width=620 height=280 top=358 left=175 margint=40 marginr=50]
[layopt layer=message0 visible=false]

;フォントサイズ更新
[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]



[endmacro]


[macro name="town_trust_up"]
[playse storage="kirakira_onjin.ogg"]
[image layer=3 page=fore name="kirakira" storage="kirakira.png"]
[image layer=3 page=fore name="kirakira" storage="kirakira_2.png"]

[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=400 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=450 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=250 y=50]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=50 y=450]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=0 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=650 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=20 y=550]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3.png" x=750 y=570]

[free name="kirakira3" layer=3 time=600]
[free name="kirakira" layer=3 time=600]

[endmacro]

[macro name="koukando_up"]
[playse storage="kirakira_onjin.ogg"]
[image layer=3 page=fore name="kirakira" storage="kirakira_love.png"]
[image layer=3 page=fore name="kirakira" storage="kirakira_2.png"]

[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=400 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=450 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=250 y=50]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=50 y=450]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=0 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=650 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=20 y=550]
[image layer=3 page=fore name="kirakira3" storage="kirakira_love_3.png" x=750 y=570]

[free name="kirakira3" layer=3 time=600]
[free name="kirakira" layer=3 time=600]

[endmacro]


[macro name="game_over"]

[message_kakusu_ad]

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]


;[live2d_delete_all]
;[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]

;[image layer=3 storage="black.png" name="back_siro" page=fore time=2000 x=0 y=0]

;[live2d_mod name="irain" idle="Lose" no=0]
;[live2d_show name="irain" y=0.2 x=-0.4 scale=0.6]
[p]
;[live2d_motion name="irain" mtn="Lose" no=0]

;[live2d_motion name="irain" mtn="Lose"]




;[free name="back_siro" layer=3]
[image layer=3 page=fore  name="lose" storage="game_over.png" x=150 y=-300]

[anim name="lose" top="+=500"]
[anim name="lose" top="-=100"]
[anim name="lose" top="+=100"]


[p]

[free name="lose" layer=3]
[fadeoutbgm time=6000]


[iscript]
location.reload()
[endscript]
[s]
;[jump storage="first.ks"]




[endmacro]


[macro name="mi_live2d"]
[if exp="f.sentakuchuu!= 1 "]
[freeimage layer=3]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]


[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[else]

;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]


[endif]

[button_menu]
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[endif]
[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[endmacro]


[macro name="live2d_on"]
[eval exp="f.live2d_on=1"]
[image storage="live2d_logo.png" layer="0" page="fore" height="25" width="100" visible="true" x="725" y="0" name="live2d_logo"]
[endmacro]

[macro name="live2d_off"]
[eval exp="f.live2d_on=0"]
[free name="live2d_logo" layer=0]
[endmacro]

;[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]

[macro name="live2d_load"]
[eval exp="sf.live2d_on=1"]
[ptext layer=3 page=fore text="Live2d Load" name="live2d_load" size=16 x=30 y=10 color=white visible=true]
[image layer=3 page=fore visible=true storage="loader.gif" name="load" x=380 y=300]
[endmacro]

[macro name="live2d_load_off"]
[free name="live2d_load" layer=3]
[free name="load" layer=3]
[ptext layer=3 page=fore text="Load Complete" name="live2d_load" size=16 x=30 y=10 color=white visible=true]
[w]
[free name="live2d_load" layer=3]
[endmacro]


[macro name="item_get"]

[if exp="f.town_trust>5"]
;-----------------------------------------------------------------------------------------------------
[eval exp="tf.item_get=0"]
[iscript]
tf.item_get = Math.floor( Math.random() * 2) + 1
[endscript]

[if exp="tf.item_get==1"]

;----------------------------------------------------------------

[eval exp="tf.item_person=0"]
[iscript]
tf.item_person = Math.floor( Math.random() * 2) + 1
[endscript]
;----------------------------
[if exp="tf.item_person==0"]
#街の人
「あんた、地方騎士団の人だよな？これ、よかったら使っておくれよ」[p]
#

#&f.name
「あ、ありがとうございます！」[p]
#
[elsif exp="tf.item_person==1"]

#街の子供
「きしのおねえちゃん、これあげる！」[p]
#
#&f.name
「あ、ありがとう！」[p]
#
[else]

#街の女性
「地方騎士団の方ですよね、いつもお世話になってます。頑張ってくださいね！」[p]
#
#&f.name
「あ、ありがとうございます！」[p]
#
[endif]
;--------------------------------------

キャラメルを手に入れた！[p]
[eval exp="f.battle_item_stock[1]=f.battle_item_stock[1]+1"]
[playse storage="item_status_up_onjin.ogg"]

[else]
;アイテムくじ外れ
#&f.name
「特に今は何もないみたい」[p]
#
;-------------------------------------------------
[endif]
;-------------------------------------------------------------------------------------
[else]
;信用度がひくい場合
#&f.name
「特に今は何もないみたい」[p]
#
[endif]

[endmacro]


;装備欄用表示
[macro name="irain_style_image"]

[if exp="tf.irain_style==1"]
[free name="irain_style" layer=1]
[eval exp="tf.irain_style=0"]
[endif]

[if exp="f.equip_item_current_2==1&&f.equip_item_current==3"]
;革の服といつものおさげ
[eval exp="f.irain_style_gra='irain_icon.png'"]

[elsif exp="f.equip_item_current_2==1&&f.equip_item_current==4"]
;革の服とツインウェーブ
[eval exp="f.irain_style_gra='irain_wave.png'"]


[elsif exp="f.equip_item_current_2==2&&f.equip_item_current==3"]
;ワンピースといつものおさげ
[eval exp="f.irain_style_gra='irain_one_piece.png'"]

[elsif exp="f.equip_item_current_2==2&&f.equip_item_current==4"]
;ワンピースとツインウェーブ
[eval exp="f.irain_style_gra='irain_one_piece_wave.png'"]
[else]
;革の服といつものおさげ
[eval exp="f.irain_style_gra='irain_icon.png'"]


[endif]



[image layer=1 name="irain_style" page=fore visible=true storage=&f.irain_style_gra width="120" height="142" x=300 y=380]
[eval exp="tf.irain_style=1"]
[endmacro]

[macro name="tougijou_event"]

[if exp="f.tougijou_battle_time>2"]
[bg storage="tougijou_ac.jpg"]
[message_settei_ad]
#&f.name
「よーし、頑張るぞ！・・・ん？」[p]
#

[if exp="f.lionkonkando>2"]

[chara_on][chara_show name="lion" height="698" width="456" top=-35]

#ライオネス
「・・・おい、お前いつまでやってんだ。外真っ暗だぞ」[p]
#

#&f.name
「あれ？ライオネス？なんで？」[p]
#
#ライオネス
「お前がいつまでも帰ってこないから探しに行けってセレに言われたんだよ」[p]
#
#&f.name
「え・・・」[p]
#
[chara_mod name="lion" storage="lion_tatie/Idle_gif_chottoikari.gif"]

#ライオネス
「何時だと思ってんだ！さっさと飯食って寝ろ！」[p]
#
#&f.name
「ご・・・ごめんなさい」[p]
#
#&f.name
（そんなに時間経ってたんだ・・・つい夢中で・・・）[p]
#
#&f.name
（心配かけちゃったみたい・・・気をつけよう・・・）[p]
#
[eval exp="tougijou_lion_eve=1"]
[chara_off][chara_hide name="lion"]
[eval exp="f.tougijou_battle_time=0"]
[day_end]

[elsif exp="f.ranskonkando>2"]

[chara_on][chara_show name="rans" top=10]

#ランスロット
「[name]、ここにいたのか、グレッグ団長が心配していた」[p]
#
#&f.name
「あれ？ランスロット、心配って・・・？」[p]
#
#ランスロット
「本部に用があったから立ち寄ったんだが・・・お前がまだ帰っていないと聞いてな」[p]
#
#&f.name
「まだ？って、なんで？」[p]
#
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_mihiraki.gif"]

#ランスロット
「お前・・・気付いていなかったのか、外はもう夜だぞ」[p]
#
#&f.name
「ええっ！？もうそんな時間！？」[p]
#
[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_komari_warai.gif"]
#ランスロット
「熱心なのはいいが・・・あまり周囲に心配をかけるんじゃないぞ」[p]
#
#&f.name
「ご、ごめんなさい・・・」[p]
#

[chara_mod name="rans" storage="rans_tatie/rans_idle_gif_bisyo.gif"]
#ランスロット
「一生懸命なのはお前のいいところだ。次から気をつければいい」[p]
#
#&f.name
「は、はい・・・」[p]
#
#&f.name
（そんなに時間経ってたんだ・・・つい夢中で・・・）[p]
#
#&f.name
（心配かけちゃったみたい・・・気をつけよう・・・）[p]
#

[eval exp="tougijou_rans_eve=1"]
[chara_off][chara_hide name="rans"]
[eval exp="f.tougijou_battle_time=0"]
[day_end]




[else]
*eve
#闘技場の管理人
「あの・・・申し訳ありません、そろそろ閉場の時間なんですが・・・」[p]
#
#&f.name
「えっ・・・！」[p]
#
#闘技場の管理人
「もう夜ですよ、お帰りになった方が・・・」[p]
#
#&f.name
「す、すみません、すぐ出ます！」[p]
#
#&f.name
（夢中でこんな時間まで戦ってたんだ・・・気を付けないと）[p]
#


[eval exp="f.tougijou_battle_time=0"]
[day_end]


[endif]

[endif]

[endmacro]

[macro name="tougijou_kunshou"]
[if exp="f.tougijou_kunshou!=1"]
[if exp="f.tougijou_win_1==1&&f.tougijou_win_2==1&&f.tougijou_win_3==1&&f.tougijou_win_4==1&&f.tougijou_win_5==1&&f.tougijou_win_6==1&&f.tougijou_win_7==1&&f.tougijou_win_8==1&&f.tougijou_win_9==1&&f.tougijou_win_10==1&&f.tougijou_win_11==1&&f.tougijou_win_12==1"]

[anten]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]

[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=150]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=210]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=270]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=330]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=390]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=125 y=450]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=150]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=210]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=270]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=330]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=390]
[image layer=0 page=fore visible=true name="clear" storage="stage_clear.png" x=500 y=450]

[eval exp="f.money=f.money+100000"]
[eval exp="f.tougijou_kunshou=1"]
[playbgm storage="shouri_ontama.ogg"]

[image layer=1 page=fore storage="complete.png" name="complete" visible=true x=120 y=150]
[bg storage="tougijou_ac.jpg"]

[message_settei_ad]
闘技場のモンスターを全制覇しました！[p]
金のトロフィーを手に入れた！[p]
賞金100000Gを手に入れた！！[p]
[rans]
[lion]
[kra]
[koukando_up]
以降闘技場の全てのレベルがいつでも挑戦可能になります。[p]
また、共に戦う男性キャラを自由に選ぶことができます。（カーニバル編以降）[p]
時間経過にはくれぐれもお気を付けください。[p]
[fadeoutbgm time=3000]
[cm]

;戻る処理

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]


[cm]

[eval exp="f.tougijou=0"]
[eval exp="tf.tougijou_level=0"]

[status_hyouji]

[endif]
[endif]

[endmacro]


[macro name="button_menu"]
[showmenubutton]
;[button fix="true" role="save" name="menu_button" target=*save graphic=button/save_button.png x=0 y=10]
;[button fix="true" role="menu"  name="menu_button" graphic=button/load_button.png x=70 y=10]
;[button fix="true" role="title"  name="menu_button" graphic=button/title_return.png x=140 y=10]

[endmacro]

[macro name="hidemenu"]
[hidemenubutton]
;[clearfix name="menu_button"]

[endmacro]

[macro name="skip_button"]

[button fix="true" role="skip" name="skip_button" visible=true graphic=skip.gif height="28" width="50" x=500 y=10]

[endmacro]

[macro name="sentakusi"]
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=343 y=3]
[endmacro]

[macro name="reset"]
[if exp="f.live2d_on!=1"]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[endif]

[endmacro]

[macro name="refresh"]
[fadeoutbgm time=1000]
[autosave]
[if exp="sf.return==1"]
[jump target=*modotta]
[endif]
[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]
[ptext layer=3 page=fore visible=true text="ロード中。お待ちください・・・" visible=true size="22" name="loader" face="antique" x=250 y=150]
[wait time=500]
[iscript]
TG.kag.backLitle();
[endscript]
[s]
*modotta
[eval exp="sf.return=0"]
[status_hyouji]
[endmacro]

[macro name="chara_on"]
[eval exp="f.chara_on=1"]
[endmacro]

[macro name="chara_off"]
[eval exp="f.chara_on=0"]
[endmacro]



[macro name="chara_show_rans"]

[endmacro]

[macro name="chara_show_lion"]

[endmacro]

[macro name="chara_show_kra"]

[endmacro]

[macro name="chara_show_dancho"]

[endmacro]

[macro name="chara_show_cera"]

[endmacro]

[macro name="chara_show_tris"]

[endmacro]

[macro name="refresh_hanyou"]

[autosave]

[eval exp="sf.hanyou=1"]
[if exp="sf.return_hanyou==1"]
[jump target=*modottayo]
[endif]
;[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]
[fadeoutbgm time=1000]
[iscript]
TG.kag.backLitle();
[endscript]
;[iscript]
;location.reload()
;[endscript]
[iscript]
history.replaceState( "hoge", "null", "./index.html" ) ;
[endscript]


[s]
*modottayo
[eval exp="sf.return_hanyou=0"]
[endmacro]


[macro name="click_stop"]
[iscript]
$(".layer_free").css("pointer-events","none");
[endscript]
[endmacro]


[macro name="click_ok"]
[iscript]
$(".layer_free").css("pointer-events","auto");
[endscript]
[endmacro]

[macro name="game_start"]
[iscript]
tyrano.plugin.kag.stat.is_stop = false;
[endscript]
[endmacro]

[macro name="tatie_yomikomi_1"]
[cm]
[bg storage="black.png" time=50]
[ptext layer=3 page=fore visible=true text="立ち絵のデータを読み込みます。お待ちください・・・" visible=true size="22" name="loader" face="antique" x=130 y=150]
;[if exp="f.data_yomikomi!=1"]
[loadjs storage="tatie_data.js"]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_dai.png" x=350 y=350]
;[preload storage=&f.rans_data]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_0.png" x=350 y=350]
[preload storage=&f.lion_data]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_1.png" x=350 y=350]
[preload storage=&f.kra_data]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_2.png" x=350 y=350]
[eval exp="f.data_yomikomi=1"]
[playse storage="load_complete.ogg"]
[free name="loader" layer=3]
[ptext layer=3 page=fore visible=true text="読み込み完了" visible=true size="22" name="loader" face="antique" x=10 y=150]
[free name="loader" layer=3]
[free name="gauge" layer=2]
[free name="gauge" layer=3]
;[endif]
[endmacro]


*return_macro
[return]
