
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic]){
			tf.is_cg_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=125 height=105 preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=125 height=105 storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=125 height=105 preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=125 height=105 storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]



;ティラノ内のマクロ（更新した場合はこちらにも反映させること）








;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;;このファイルは削除しないでください！
;



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

[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]


[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[else]

;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]


[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]


[endif]

[button_menu]

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[endmacro]


[macro name="ka"]
;ジャンプ、設定ボタンをオフに
[clearfix name="kinou_button"]
;ダミージャンプ
;選択中だった場合にジャンプがダミーのため一度クリアしてから表示
[freeimage layer=3]
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
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
[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]

[endmacro]

[macro name="mil_role"]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]
[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[if exp="f.wait==1"][button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3][else][button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3][endif]

[endmacro]


;通常文用機能ボタンオフ。milの後ろに加える形で
[macro name="k"]


[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[eval exp="f.sentakuchuu= 0 "]
[clearfix name="kinou_button"]

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
[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" ＂fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]
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
[clearfix name="kinou_button"]

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


[macro name="route_modoru"]
[cm]
[if exp="tf.route==1"]
[eval exp="tf.route=0"]
[glink text="戻る" size=10 width=100 x=530 y=450 storage="kaisou_epi/ruite_kaisou1.ks" color=pink]
[elsif exp="tf.route==2"]
[eval exp="tf.route=0"]
[glink text="戻る" size=10 width=100 x=530 y=450 storage="kaisou_epi/ruite_kaisou2.ks" color=pink]
[else]

[glink text="戻る" size=10 width=100 x=530 y=450 storage="kaisou_epi/ruite_kaisou.ks" color=pink]
[endif]
[s]
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
[eval exp="f.ryourirans=f.ryourirans-1"]

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
[eval exp="f.ryourilion=f.ryourilion-1]

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

[macro name="ryouri_kra1"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「ああ、うん・・・好きな人は好きだろうね、こういうの。
[chara_mod name="klaist" face="normal"]ありがとう[name]ちゃん。おいしかったよ」[l]
[cm]
[name_kra][r]
「じゃあね」
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="ryouri_kra2"]
[chara_show name="klaist"]
[name_kra][r]
「おいしかったよ、ありがとう、[name]ちゃん」[l]
[cm]
[chara_mod name="klaist" face="bisyou_youen_kutiake"]
[name_kra][r]
「じゃあね」
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="ryouri_kra3_1"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome"]
[name_kra][r]
「あ、俺こういうの好きだな。店で食べるよりも、女の子の手料理だともっとおいしく感じるね」[p]
[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「すごくおいしかった。よかったらさ、また作って。」[p]
[chara_mod name="klaist" face="smile"]
[name_kra][r]
「じゃあね」
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="ryouri_kra3_2"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「えっ、これって手料理で作れるんだね。すごいよ。[name]ちゃん」[p]

[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「それに店のなんかより絶品だし。ああ、また君の料理が食べたいな」[p]

[chara_mod name="klaist" face="smile"]
[name_kra][r]
「ありがとう、すごくうれしかった」[p]


[name_kra][r]
「じゃあね」
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="ryouri_kra3_3"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="smile"]
[name_kra][r]
「この料理、俺のためだけに作ってくれたんだよね？」[p]

[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「ありがとう・・・俺、なんていったらいいのか・・・
[r]いつもこうやって・・・毎日、君の料理が食べれたらなって」[p]

[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「ああ、もちろん・・・もしかしたら君はそんなじゃないかもだけど」[p]
[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「だけど俺は、君が料理を作ってくれるたびに、いつも思うんだ」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「君が・・・少しでもそんなことを考えてくれたら、いいなって・・・」[p]
[chara_mod name="klaist" face="mehuse_warai_kutiake"]
[name_kra][r]
「・・・ごめん。これは、俺の勝手な願いだね」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「・・・今度は俺が君のために、何かしたいな」[p]
[chara_mod name="klaist" face="yokome"]
[name_kra][r]
「あ、一緒に料理するってのも、楽しそうだね」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「今度、俺にも料理教えてよ。
[r]君にも何か美味しいものを作ってあげたいから。[chara_mod name="klaist" face="smile"]ね？」[p]
[chara_mod name="klaist" face="metoji_warai"]
[name_kra][r]
「・・・[chara_mod name="klaist" face="bisyou_hutuu"]本当にありがとう」[p]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="ryouri_lion1"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「もうちょっと、俺はパンチの効いたもんのほうが好きだな。でもま、うまかったぜ」[p]

[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「ありがとな、[name]」[p]

[lioness][r]
「じゃあな」
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="ryouri_lion2"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「うまかった。どーもな」[p]

[chara_mod name="lioness" face="yokome_warai"]
[lioness][r]
「じゃあな」[p]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]



[macro name="ryouri_lion3_1"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="warai_kutiake"]
[lioness][r]
「すっげーうまかった！！俺こういう、がっつりしたやつ好きなんだよな」[p]

[chara_mod name="lioness" face="warai"]
[chara_mod name="lioness" face="warai_kutiake"]

[lioness][r]
「スタミナわくっていうかよ。どーもな、[name]」[p]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「じゃあな」
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="ryouri_lion3_2"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="tere_kutiake"]
[lioness][r]
「うまかった・・・まじで。あのよ・・・もしよかったら、明日も作ってくんねえ・・・？これ」[p]

[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「それじゃな」
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]



[macro name="ryouri_lion3_3"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「俺・・・時々思うことあんだ。
[r]もし・・・もし、だ。お前がいつも一緒にいて・・・」[p]

[chara_mod name="lioness" face="sinnpai_kutiake"]
[lioness][r]
「そいでこんな美味いものたくさん作ってくれて・・・」[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「そんなんだったら、いいのにな、なんて・・・」[p]
[chara_mod name="lioness" face="tere_kutiake"]
[lioness][r]
「ほ、ほんと美味いからよ、お前の・・・作る料理・・・」[p]

[lioness][r]
「こんな俺の好みばっか作るなんて、反則だろ・・・」[p]
[chara_mod name="lioness" face="tere_kutitoji"]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
[lioness][r]
「お、お前わかっててやってんのか？その・・・」[p]
[chara_mod name="lioness" face="tere_kutiake"]
[lioness][r]
「俺がこういうの、好きだって。だから、たくさん作ってくれたのか？」[p]
[chara_mod name="lioness" face="yokome_otikomi_kutitoji"]
[chara_mod name="lioness" face="yareyare_kutiake"]
[lioness][r]
「・・・・・。あぁ・・・なんかもう・・・わけわかんね・・・」[p]
[chara_mod name="lioness" face="yareyare_kutitoji"]
[lioness][r]
「はあ・・・」[p]

[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
[lioness][r]
「お前、俺のためだけにメシ作ってくれりゃあいいのになあ・・・」[p]
[chara_mod name="lioness" face="sinnpai_kutiake"]
[lioness][r]
「もしそうだったら俺、お前のこと絶対離しやしねえのに・・・」[p]

[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「なんかつれえ。[chara_mod name="lioness" face="yokome_otikomi_kutiake"]つれえけど、また食いてえ。お前の料理」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「俺は、いつでも待ってるから。

[chara_mod name="lioness" face="normal_warai_kutiake"]
また、うまいもん作ってくれよな」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="ryouri_rans1"]
[chara_show name="ranslott" reflect=true]
[ranslott][r]
「そうだな、こういうものも悪くはないな・・・。一生懸命作ってくれて、ありがとう」[p]

[ranslott][r]
「お前の心遣いに感謝する」[p]

[ranslott][r]
「じゃあな」
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans2"]
[chara_show name="ranslott" reflect=true]]
[ranslott][r]
「とてもおいしかった。ありがとう、[name]」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「じゃあな」
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans3_1"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「こういう、さっぱりしたものは好きだな。どうもありがとう、[name]」[p]

[ranslott][r]
「よければ、また作ってくれないか」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「それじゃ、またな」
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans3_2"]

[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「ああ、煮物か・・・食べるとほっとするな。お前が作った手料理だから、よりそう思える」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「・・・ありがとう、また、よければ作ってくれ」[p]


[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「それじゃ、またな」
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans3_3"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「こういうものは、食べるとほっとするな。お前が作ったと思うとより美味しく思える」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「・・・ありがとう」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「それじゃ、またな」
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
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
	[position layer="message1" frame="message1.png" margint="60" marginl="30" marginr="30" page="fore"]

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


[macro name="tomato_rans"]
[chara_show name="ranslott" reflect=true]


[ranslott][r]
「なかなかきれいに飾り付けられているな。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
だが、味のほうも申し分ない」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「さっぱりしていて口当たりもいい。こういうものは好きだな」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="marine_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="yokome_warai"]
[ranslott][r]
「マリネか・・・酢の物はいいな。
[chara_mod name="ranslott" face="komari_warai_kutiake"]
食欲を増進する効果もあるしな」[p]

[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「それに、この味つけは酸味もちょうどいい。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
また、作ってくれないか。
[chara_mod name="ranslott" face="bisyou"]
お前の料理を楽しみにしている」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="sinsen_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「刺身は新鮮さが命だ。
[chara_mod name="ranslott" face="mehuse_kutiake"]
仕入れるのも大変だっただろう」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「なかなかだったぞ。ありがとう、[name]」[p]
[chara_mod name="ranslott" face="normal"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="atugiri_rans"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「肉か・・・ライオネスあたりが好きそうな料理だな・・・」[p]
[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「精はつきそうな気がするが私は・・・ほどほどでいい」[p]
[chara_mod name="ranslott" face="komari_warai"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="nimono_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「こういうものは、食べるとほっとするな。
[chara_mod name="ranslott" face="normal_kutiake"]
味付けも私好みだが・・・
[chara_mod name="ranslott" face="yokome_kutiake"]
いろいろ研究しているのか・・・？」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「これだけの種類の野菜が入っていれば、体にもよさそうだ。
また、お前の料理が食べたいな」[p]

[if exp="f.ranskonkando>18"]
[chara_mod name="ranslott" face="mehuse_warai_kutiake"]
[ranslott][r]
「そうだなできれば、ふたりきりで・・・」[p]

[else]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「作ったときには、声をかけてくれ」[p]

[endif]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="guratan_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="metoji_warai"]
[ranslott][r]
「チーズとホワイトソースのまろやかさが絶妙なバランスだ。
[chara_mod name="ranslott" face="bisyou_kutiake"]
こういった優しい味は好きだな・・・」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「店でも食べられるし、私はたまに食するのだが・・・
[chara_mod name="ranslott" face="komari_warai_kutiake"]
もうお前の料理しか食べられなくなりそうだ」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「また作ったときには声をかけてくれ。いつでも食べに行く」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="karei_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「煮魚か。私の好物だな。お前も好きだろう？
[chara_mod name="ranslott" face="mehuse_warai_kutiake"]
同じものが好きだというのは、それだけで何かうれしいものだな」[p]

[chara_mod name="ranslott" face="yokome_warai_kutiake"]
[ranslott][r]
「そうだ、知っていたか？
[chara_mod name="ranslott" face="normal_warai_kutiake"]
[r]おいしそうに煮魚を食べるお前の顔を見るのも私は好きなんだが・・・」[p]
[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「・・・すまない、困らせてしまったか。
[chara_mod name="ranslott" face="bisyou"]
またお前とともに食事がしたい。誘ってもいいだろうか？」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="tenpura_rans"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「てんぷらか・・・サクっとした食感は嫌いではないのだが・・・
[chara_mod name="ranslott" face="mehuse_kutiake"]
脂が・・・
[chara_mod name="ranslott" face="komari_warai_kutiake"]
あまりたくさんは無理だな」[p]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「い、いや、もういい、これくらいで・・・。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
ありがとう、[name]」[p]
[chara_mod name="ranslott" face="normal"]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="unajuu_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「こんな高級食材を、いったいどこから仕入れたというんだ？
[chara_mod name="ranslott" face="mehuse_muzukasii_kutiake"]
お前まさか・・・」[p]

[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「いや、お前がやましいことをするはずがないよな。信じている。
[chara_mod name="ranslott" face="yokome_kutiake"]
話には聞いていたが、思ったよりがっつりした料理なのだな・・・」[p]
[chara_mod name="ranslott" face="normal"]
[ranslott][r]
「ありがとう、[name]。おいしかった」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="oden_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「このスープも美味だが、スープのしみこんだ具材はもっと美味だな。
[chara_mod name="ranslott" face="yokome_warai_kutiake"]
特にこの練り物・・・
[chara_mod name="ranslott" face="normal_kutiake"]
なに？ちくわというのか・・・」[p]
[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「これならいくらでも食べられそうだ。
[chara_mod name="ranslott" face="bisyou_kutiake"]
ありがとう[name]」[p]
[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「とてもおいしい。毎日でもいいくらいだ」[p]
[chara_mod name="ranslott" face="bisyou"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="kare_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_majime"]
[ranslott][r]
「独特の風味のある料理だな。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
だが、うまいぞ。
ライスにこのソースがよくあうのだな」[p]
[chara_mod name="ranslott" face="mehuse_kutiake"]

[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「が・・・一杯くらいで私はいいな。
[chara_mod name="ranslott" face="normal"]
じゅうぶんだ。ありがとう、[name]」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="sichu_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「野菜と肉のうまみがホワイトソースに
よくなじんでいて、とてもうまいぞ」[p]

[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「このスープの味は絶品だ。・・・
[chara_mod name="ranslott" face="yokome_kutiake"]
そうか、お前にしか出せない味なのだな・・・」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「また作ってくれないか。
[chara_mod name="ranslott" face="mehuse_warai_kutiake"]
できれば、私だけのために・・・」[p]
[chara_mod name="ranslott" face="bisyou"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="nikujaga_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「肉じゃが？
[chara_mod name="ranslott" face="normal_warai_kutiake"]
そうか、ジャガイモと肉がメインなのだな」[p]

[chara_mod name="ranslott" face="mehuse_warai_kutiake"]
[ranslott][r]
「なかなか合うな。
ジャガイモもちょうどよく煮えているし、味もしみこんで・・・」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「この肉ともとても相性がいい。とても美味だな。
食堂の料理よりも、お前の料理のほうが毎日食べたいくらいだ」[p]

[chara_mod name="ranslott" face="normal_kutiake"]
[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「はは、困らせてしまったか、すまない。
[chara_mod name="ranslott" face="bisyou"]
また作ってくれ。期待している」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="takikomi_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「こう、米に味をしみこませるというのは、とてもいい考えだな」[p]

[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「細かく切った具と一緒に炊けば、うまみも凝縮されるしな。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
これなら何杯でも食べられそうな気がする」[p]

[chara_mod name="ranslott" face="mehuse_kutiake"]
[ranslott][r]
「・・・その、
[chara_mod name="ranslott" face="komari_warai_kutiake"]
もう一杯、いいだろうか・・・。

[chara_mod name="ranslott" face="bisyou"]
[r]ありがとう、[name]」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="itamesi_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「これもなかなかの美味だな。米は油とも相性がいいらしい。
[chara_mod name="ranslott" face="mehuse_kutiake"]
しかしその・・・
[chara_mod name="ranslott" face="yokome_warai_kutiake"]
少しでいいな。私は」[p]

[chara_mod name="ranslott" face="mousiwakenai_kutiake"]
[ranslott][r]
「おいしいことはおいしいのだが・・・。
[chara_mod name="ranslott" face="komari_warai_kutiake"]
ありがとう[name]。お前の心遣いに感謝する」[p]
[chara_mod name="ranslott" face="mehuse_warai_kutiake"]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="gyooza_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="mehuse_kutiake"]
[ranslott][r]
「これはまたなんというか・・・油の多い料理だな・・・。
[chara_mod name="ranslott" face="yokome_kutiake"]
いや、油は嫌いではないのだが・・・」[p]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「あ、ああ、それくらいでいい。あまり多くなくて・・・
[chara_mod name="ranslott" face="normal_warai_kutiake"]
あとは、ライオネスにもわけてやるといいだろう」[p]
[chara_mod name="ranslott" face="normal"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="sakanahurai_rans"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「魚を揚げるというのもまたいいな。
油とあわせることで、魚のうまみがより増す気がする」[p]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「だが・・・やはり少し、脂っこいな・・・」[p]
[chara_mod name="ranslott" face="yokome"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="karaage_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「鶏肉は嫌いではない。衣をつけるのも上手いな。
厚すぎず薄すぎずそれでいてカラっと揚がっていて・・・
[chara_mod name="ranslott" face="metoji_warai"]
いい色だ」[p]

[chara_mod name="ranslott" face="komari_warai_kutiake"]
[ranslott][r]
「だが・・・私はその・・・これくらいで、いい」[p]
[chara_mod name="ranslott" face="komari_warai"]
[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="siizaa_rans"]
[chara_show name="ranslott" reflect=true]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「ジャガイモをサラダにするというのはいい考えだ。
腹持ちもよくなるしな。私の好物のひとつだな・・・」[p]

[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「これが食事のメインでもいいくらいだ。
[chara_mod name="ranslott" face="normal_warai_kutiake"]
また作ったら、食べさせてくれないか。
[chara_mod name="ranslott" face="bisyou"]
待っている」[p]

[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans3_4"]
[chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「・・・今日は、ずいぶんと豪勢だな。どうしたんだ？」[p]

[chara_mod name="ranslott" face="yokome"]
[ranslott][r]
「・・・・・・・」

[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「・・・その・・・
[chara_mod name="ranslott" face="metoji_kutiake"]
なあ、[name]」
[chara_mod name="ranslott" face="sinnpai_kutiake"]
[ranslott][r]
「お前はそんなつもりはないのかもしれないが・・・」[p]
[chara_mod name="ranslott" face="mehuse_kutiake"]
[ranslott][r]
「あまり男の好物を作ると、いろいろと期待させてしまうこともあるんだぞ？」[p]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「・・・もちろん、それは私も例外ではない」[p]

[chara_mod name="ranslott" face="normal_kutiake"]
[ranslott][r]
「な、なにを、期待って・・・それは・・・」[p]
[chara_mod name="ranslott" face="yokome"]
[ranslott][r]
「・・・その」[p]

[chara_mod name="ranslott" face="metoji"]
[ranslott][r]
「・・・・・・・」[p]

[chara_mod name="ranslott" face="yokome_warai_kutiake"]
[ranslott][r]
「な、なかなかうまくできているな。この料理、作るのに手間取っただろう」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「料理の腕もだいぶあがったな。お前の成長が嬉しい」[p]

[chara_mod name="ranslott" face="mehuse_kutiake"]
[ranslott][r]
「これから先も・・・ずっとそばで見守っていられたらと思う」[p]

[chara_mod name="ranslott" face="metoji_kutiake"]
[ranslott][r]
「お前も、私に隣にいてほしいと考えてくれていたらいいのだが」[p]

[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「・・・そうだな、できたら・・・師匠として、ではなく・・・」[p]
[chara_mod name="ranslott" face="yokome"]

[chara_mod name="ranslott" face="metoji"]
[chara_mod name="ranslott" face="yokome_kutiake"]
[ranslott][r]
「ああ、いや、[chara_mod name="ranslott" face="komari_warai_kutiake"]なんでもないんだ・・・」[p]

[chara_mod name="ranslott" face="komari_warai"]
[ranslott][r]
「お前は、気にしなくていい」[p]
[chara_mod name="ranslott" face="mehuse_warai_kutiake"]
[ranslott][r]
「また、お前の料理に期待してもいいか？」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「・・・いつもありがとう、[name]」[p]


[chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]








;料理用台詞ライオネス
[macro name="tomato_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="mehuse_kutiake"]
[lioness][r]
「なあ俺・・・トマトだけはだめなんだよ・・・」[p]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
[lioness][r]
「なあ、やっぱり食べなきゃだめか・・・？」[p]
[chara_mod name="lioness" face="yareyare_kutiake"]
[lioness][r]
「・・・・・・・。だめか・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]



[macro name="marine_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="wakewakaran_kutiake"]
[lioness][r]
「マリネってよお・・・なんで魚をすっぱくすんだ？
俺には全然わかんねえ・・・」[p]
[chara_mod name="lioness" face="akireru_kutiake"]
[lioness][r]
「すっぱくするとうめえのか？」[p]
[chara_mod name="lioness" face="metoji_kutiake"]
[lioness][r]
「俺には全然わかんねえ・・・」[p]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="sinsen_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「刺身かあ・・・嫌いじゃねえけど、
[chara_mod name="lioness" face="mehuse_kutiake"]
なんかこうもっと・・・パンチがほしいな・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="atugiri_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="odoroki_kutiake"]
[lioness][r]
「うおっ・・・こ、こんな分厚い肉、お前どっから手に入れたんだよ！！」[p]
[chara_mod name="lioness" face="warai_kutiake"]
[lioness][r]
「すっげーうまい！このソースと焼き加減、最高だぜ！！」[p]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「ありがとな[name]、お前の肉、また食いてえ！」[p]
[chara_mod name="lioness" face="normal_warai"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="nimono_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="sinnpai_kutiake"]
[lioness][r]
「なあこの煮物って・・・肉は・・・入ってねえのか・・・？」[p]
[chara_mod name="lioness" face="sinnpai"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="guratan_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「グラタン、嫌いじゃねえぞ。マカロニもうまいしな」[p]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「だけどやっぱ、肉がな・・・」[p]
[chara_mod name="lioness" face="yokome"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="karei_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「なあ煮魚って、そんなうまいか・・・？
[chara_mod name="lioness" face="odoroki_kutitoji"]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
い、いやまあ、うまい、けどよ・・・」[p]
[chara_mod name="lioness" face="mehuse_kutiake"]
[lioness][r]
「もうちょっとなんつーかがっつりと・・・」[p]
[chara_mod name="lioness" face="yokome_otikomi_kutitoji"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="tenpura_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「てんぷらうめえ！このサクサクっつうのがたまらないんだよなー！
これなら野菜だってガンガンいけるぜ！」[p]
[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「ありがとな、[name]！」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="unajuu_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="odoroki_kutiake"]
[lioness][r]
「お、お前うなぎなんてどっから仕入れたんだよ・・・。
[chara_mod name="lioness" face="akireru_kutiake"]
つ、つかいいのかこんな高級なもん・・・」[p]
[chara_mod name="lioness" face="odoroki_kutiake"]
[lioness][r]
「う、うまいってか？
[chara_mod name="lioness" face="normal_warai_kutiake"]
うまいけどよ・・・」[p]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
[lioness][r]
「なんつーか、ホント、いいのか？
俺なんかが食って・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="oden_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「おでんかー。寒い日にはいいよなこれ。
俺の好きな具はやっぱソーセージだな」[p]
[chara_mod name="lioness" face="odoroki_kutiake"]
[lioness][r]
「ま、また肉とか思ってんだろ。
[chara_mod name="lioness" face="akireru_kutiake"]
仕方ねえだろ俺は肉が好きなんだからよ・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="kare_lion"]
[chara_show name="lioness"]
[lioness][r]
[chara_mod name="lioness" face="tere_kutiake"]
「うまかった、まじで。あのよ・・・
もしよかったら、明日も作ってくんねえ・・・？これ」[p]
[chara_mod name="lioness" face="tere_kutitoji"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="sichu_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「これ・・・カレー粉入れたらカレーにならねえか・・・？」[p]
[chara_mod name="lioness" face="odoroki_kutitoji"]
[lioness][r]
「う、
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
わ、わーったよ、食うよ。お、俺が悪かった・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="nikujaga_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「肉はいいんだけどよ、これはどっちかってーと野菜メインなのか・・・？」[p]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「ま、まあなかなかうまいけどよ・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="takikomi_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「結構いけるな、これ。まあ俺的には肉が入ってるともっと・・・」[p]
[chara_mod name="lioness" face="sekimen_odoroki_kutiake1"]
[lioness][r]
「な、なんだよ、また肉って言うなよ！！」[p]
[chara_mod name="lioness" face="muzukasii_kutitoji"]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="itamesi_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="warai_kutiake"]
[lioness][r]
「このにんにくの香りがまたいいな！！俺こういうがっつりした料理好きだぜ！」[p]
[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「ありがとな、[name]！」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="gyooza_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_warai"]
[lioness][r]
「皮も好きだけど、なんたって具だよな、
[chara_mod name="lioness" face="normal_warai_kutiake"]
うめえー！！ありがとな、[name]！！」[p]
[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="sakanahurai_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「肉にはかなわねえけど、魚もフライにするとやっぱりパンチあるよな」[p]
[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「この食感がたまんねえ！こういうの好きだ、俺」[p]
[lioness][r]
「ありがとな、[name]」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="karaage_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「俺、これ毎日でもいいな・・・
[chara_mod name="lioness" face="normal_warai_kutiake"]
これと、あとカレーつけたら最高だよな！
[chara_mod name="lioness" face="yokome_warai"]
できればハンバーグも・・・」[p]
[chara_mod name="lioness" face="odoroki_kutitoji"]
[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「て、また肉ばっかりっていうなよな！」[p]
[chara_mod name="lioness" face="muzukasii_kutitoji"]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="siizaa_lion"]
[chara_show name="lioness"]
[chara_mod name="lioness" face="yokome_kutiake"]
[lioness][r]
「サラダって食べ応えあんまねえなって思ってるんだけどよ、
これはそれなりに・・・」[p]
[chara_mod name="lioness" face="mehuse_kutiake"]
[lioness][r]
「ううーん、だけどよもうちょっとハムがほしいかな・・・」[p]

[chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]




;料理用台詞：クライスト

[macro name="tomato_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「サラダかあ・・・まあ、うん。嫌いじゃないけどさ
ありがとう、[name]ちゃん」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「おいしかったよ。じゃあね」[p]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="marine_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「なんかちょっとすっぱくない？これ」[p]
[chara_mod name="klaist" face="mihiraki"]
[name_kra][r]
「え？マリネってこういうものなの？
[chara_mod name="klaist" face="yokome_kutiake"]
そうなんだ・・・。ふーん・・・」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「まぁいいか。おいしかったよ、
[name]ちゃん。ありがとう」[p]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="sinsen_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
[name_kra][r]
「新鮮ですごくおいしいよ。こんなにいい魚仕入れるの、大変だったんじゃない？」[p]
[chara_mod name="klaist" face="smile"]
[name_kra][r]
「やっぱり獲れたては最高だね。ありがとう[name]ちゃん。すごくおいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="atugiri_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「こんな分厚い肉、どこから手に入れたの？というか、焼くの大変だったんじゃない？」[p]
[chara_mod name="klaist" face="smile"]
[name_kra][r]
「このソースもにんにくが利いてておいしいね。店でも滅多に食べられないよ、こんないいステーキ」[p]
[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
[name_kra][r]
「ありがとう[name]ちゃん。もしまた肉が手に入ったら、俺に作ってよ。楽しみにしてる」[p]
[chara_mod name="klaist" face="bisyou_hutuu"]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="nimono_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「煮物かあ・・・。
[chara_mod name="klaist" face="normal_kutiake"]
あ、嫌いじゃないよ。
[chara_mod name="klaist" face="yokome_kutiake"]
嫌いじゃないんだけど・・・。煮物かあ・・・」[p]

[chara_mod name="klaist" face="normal"]
[name_kra][r]
「あ、でもこういうのって食べるとほっとした気分になるよね。
[chara_mod name="klaist" face="yokome"]
まあでも俺、君と食べるならどんな料理でもいいけどね」[p]

[chara_mod name="klaist" face="normal"]
[name_kra][r]「ありがとう[name]ちゃん。おいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]



[macro name="guratan_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「あ、これ、俺よく店でも注文するよ。たいていの店にあるからさ。
[chara_mod name="klaist" face="normal"]
店によって味が違って面白いんだよ」[p]
[chara_mod name="klaist" face="metoji_warai_kutiake"]
[name_kra][r]
「ま、[name]ちゃんの料理にはかなわないけどね。
[chara_mod name="klaist" face="normal"]
ありがとう、おいしかった」[p]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="karei_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「煮魚って、[name]ちゃん好きだよね。
煮魚のおいしいところってどんなとこ？」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「やっぱり魚の身に味がしみてるところとか？」[p]
[chara_mod name="klaist" face="mehuse_warai_kutiake"]
[name_kra][r]
「・・・うん。優しい味って感じがするね。
[chara_mod name="klaist" face="normal"]
[r][name]ちゃんが作るからそうなのかな。ありがとう」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="tenpura_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「てんぷらって、サクサクしておいしいよねー」[p]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「俺もたまに食べるけど、ほどほどにしておかないと胸焼けするよね」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「ありがとう[name]ちゃん、おいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="unajuu_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「えっ・・・これって手作りでつくれるんだ・・・！それにうなぎ、どこから手に入れたの？」[p]
[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
[name_kra][r]
「感激だな、俺のためにこんな・・・」[p]
[chara_mod name="klaist" face="metoji_warai_kutiake"]
[name_kra][r]
「・・・うん。すごく美味しい。
[chara_mod name="klaist" face="bisyou_hutuu_kutiake"]
ほんと・・・こんな食事で感動したのって久しぶりだ・・・」[p]
[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「本当にありがとう。[name]ちゃん」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="oden_kra"]
[chara_show name="klaist"]
[name_kra][r]
「王都の屋台でもたまに見るよね。こういうの売ってるお店」[p]
[name_kra][r]
「寒いときなんか特にいいよね。
[chara_mod name="klaist" face="yokome_kutiake"]
俺が好きなのは卵かなぁ。
[chara_mod name="klaist" face="normal"]
あ、きんちゃく餅もいいよね」[p]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「ソーセージ入れる屋台もあるみたいだよ。
[chara_mod name="klaist" face="normal"]
手作りしてもおいしいね」[p]
[chara_mod name="klaist" face="metoji_warai_kutiake"]
[name_kra][r]
「ありがとう、[name]ちゃん」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="kare_kra"]
[chara_show name="klaist"]
[name_kra][r]
「カレーかあ・・・。よくわかってるね、[name]ちゃん」[p]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「そりゃ、男の好物の代表って言ったらカレーだよ」[p]
[chara_mod name="klaist" face="metoji"]
[name_kra][r]
「んんーでも俺は、何杯もおかわりはしないな・・・。
せめて一杯くらいでいいよ」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「うん。ありがとう、[name]ちゃん」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="sichu_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome"]
[name_kra][r]
「シチューも優しい味でいいよね。[name]ちゃんみたい」[p]
[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「え？どういう意味かって・・・？」[p]
[chara_mod name="klaist" face="smile"]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「ありがとう[name]ちゃん。おいしかったよ」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="nikujaga_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「ジャガイモと肉かあ。こういうのって、お母さんの味ーって感じがする」[p]
[chara_mod name="klaist" face="metoji_warai_kutiake"]
[name_kra][r]
「[name]ちゃんの料理の腕も、お母さん直伝なのかな？
[chara_mod name="klaist" face="normal"]
[r]ありがとう[name]ちゃん。おいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="takikomi_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「好きな人は好きだろうね、こういうの。何杯でも食べてそう。
[chara_mod name="klaist" face="normal_kutiake"]
でもまあ俺は・・・一杯くらいでいいかな」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「ありがとう[name]ちゃん。おいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="itamesi_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「イタメシかあ。誰かさんががっつり食べてそうな料理だね」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「店でもよくあるメニューのひとつだよ。
作りやすいのもあるんだろうね」[p]
[chara_mod name="klaist" face="mehuse_warai_kutiake"]
[name_kra][r]
「ありがとう[name]ちゃん、おいしかった」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="gyooza_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome"]
[name_kra][r]
「ぎょうざか。嫌いじゃないよ。すごく好き・・・ってほどでもないけどね」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「まあ、それなりに美味しいよね。ありがとう[name]ちゃん」[p]
[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="sakanahurai_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="yokome_kutiake"]
[name_kra][r]
「魚の揚げ物かあ。味付けにも左右される気がするけど、
[chara_mod name="klaist" face="normal"]
さすがは[name]ちゃん、ちょうどいい味になってる」[p]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「あんまりたくさんは食べられないけど、
[chara_mod name="klaist" face="normal"]
おいしいね。ありがとう」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="karaage_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="metoji"]
[name_kra][r]
「鶏肉の揚げ物か。誰かさんが喜びそうな料理だね。
[chara_mod name="klaist" face="yokome_kutiake"]
俺はそれなりに・・・かな」[p]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「でも[name]ちゃんのなら毎日食べたいくらいだよ。
ありがとう」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]



[macro name="siizaa_kra"]
[chara_show name="klaist"]
[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「サラダの中でもボリュームあるよね、これって。
食べ応えあるっていうかさ。これだけでおなかいっぱいになりそう」[p]
[chara_mod name="klaist" face="metoji_warai_kutiake"]
[name_kra][r]
「うん。俺はこれくらいでいいかな」[p]

[chara_hide name="klaist"]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


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

[live2d_mod name="irain" idle="Lose" no=0]
[live2d_show name="irain" y=0.2 x=-0.4 scale=0.6]
[p]
[live2d_motion name="irain" mtn="Lose" no=0]

;[live2d_motion name="irain" mtn="Lose"]



[p]
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

[jump storage="first.ks"]




[endmacro]


[macro name="mi_live2d"]
[if exp="f.sentakuchuu!= 1 "]
[freeimage layer=3]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]

[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[else]

;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]

[if exp="f.live2d_on!=1"][button name="kinou_button"  fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="config1.ks"][endif]
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
[endmacro]

[macro name="live2d_off"]
[eval exp="f.live2d_on=0"]
[endmacro]

;[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]

[macro name="live2d_load"]
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
[eval exp="f.battle_item_1_stock=f.battle_item_1_stock+1"]
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
[free name="icon_hyouji" layer=1]
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



[image layer=1 name="icon_hyouji" page=fore visible=true storage=&f.irain_style_gra width="120" height="142" x=300 y=380]
[eval exp="tf.irain_style=1"]
[endmacro]

[macro name="tougijou_event"]

[if exp="f.tougijou_battle_time>2"]
[bg storage="tougijou_ac.jpg"]
[message_settei_ad]
#&f.name
「よーし、頑張るぞ！・・・ん？」[p]
#

[if exp="f.tougijou_rans_eve==1&&f.tougijou_lion_eve==1"]
[jump target=*eve]
[endif]

[if exp="f.lionkonkando==0"]

[chara_show name="lion" height="698" width="456" top=-35]

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
[chara_hide name="lion"]
[eval exp="f.tougijou_battle_time=0"]
[day_end]

[elsif exp="f.ranskonkando>2"]

[chara_show name="rans" top=10]

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
[chara_hide name="rans"]
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

[button fix="true" role="menu" name="menu_button" graphic=button/button_menu.png x=10 y=10]

[endmacro]

[macro name="hidemenu"]

[clearfix name="menu_button"]

[endmacro]

[macro name="skip_button"]

[button fix="true" role="skip" graphic=config_sound_large.png x=500 y=10]

[endmacro]






[return]