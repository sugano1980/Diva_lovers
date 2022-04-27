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
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"][endif]



[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[else]

;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]


[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"][endif]


[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[endif]

[button_menu]

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]


[endmacro]

[macro name="button_clear"]
[clearfix name="kinou_button"]
[clearfix name="role_button"]
[free name="jump_off" layer=3]
[endmacro]

[macro name="ka"]
;ジャンプ、設定ボタンをオフに
;[clearfix name="kinou_button"]
;ダミージャンプ
;選択中だった場合にジャンプがダミーのため一度クリアしてから表示
;[free name="jump_off" layer=3]
;[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
;選択中フラグをオフ
[eval exp="f.sentakuchuu= 0 "]
[hidemenubutton][hidemenu]
;[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]

[endmacro]

;通常文用ジャンプコンフィグオンとクリック待ち
[macro name="mil"]
;ジャンプ、コンフィグ、スキップ

[if exp="sf.ikkatu==1"]
[skipstop]
[endif]

[endmacro]


[macro name="button_hyouji"]
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[if exp="sf.ikkatu==1"]
[skipstop]
[endif]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[endmacro]


;通常文用機能ボタンオフ。milの後ろに加える形で
[macro name="k"]




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
;;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
;[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"][endif]
;[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

;[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
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


[endmacro]












;回想モード用ボタン
[macro name="milk"]
[button name="memory_button" fix="true" graphic="button/modoru_memory.png" enterse="tm2_switch001_macchi.ogg" x=248 y=3 storage="episode_k/memory.ks" target=*first]
[button name="memory_button"  fix="true" graphic="button/config_memory.png" enterse="tm2_switch001_macchi.ogg" x=308 y=3 storage="scenario_2/config1.ks"]
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
[ptext layer=1 page=fore text="＋１"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+1"]
[elsif exp="f.ransrenailevel==2"]
[ptext layer=1 page=fore text="＋２"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==3"]
[ptext layer=1 page=fore text="＋３"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==4"]
[ptext layer=1 page=fore text="＋４"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==5"]
[ptext layer=1 page=fore text="＋５"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[else]
[ptext layer=1 page=fore text="＋５"  name="rans_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[endif]
[image layer=1 page=fore visible=true name="rans_icon" storage="rans_icon.png"]
[free name="rans_icon" layer=1 time=2000]

[endmacro]

[macro name="lion"]
[if exp="f.lionrenailevel==1"]
[ptext layer=1 page=fore text="＋１"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+1"]
[elsif exp="f.lionrenailevel==2"]
[ptext layer=1 page=fore text="＋２"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==3"]
[ptext layer=1 page=fore text="＋３"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==4"]
[ptext layer=1 page=fore text="＋４"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==5"]
[ptext layer=1 page=fore text="＋５"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[else]
[ptext layer=1 page=fore text="＋５"  name="lion_icon" size=16 x=30 y=10 color=black visible=true]
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[endif]
[image layer=1 page=fore visible=true name="lion_icon" storage="lion_icon.png"]
[free name="lion_icon" layer=1 time=2000]

[endmacro]

[macro name="kra"]
[if exp="f.krarenailevel==1"]
[ptext layer=1 page=fore text="＋１" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+1"]
[elsif exp="f.krarenailevel==2"]
[ptext layer=1 page=fore text="＋２" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==3"]
[ptext layer=1 page=fore text="＋３" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==4"]
[ptext layer=1 page=fore text="＋４" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==5"]
[ptext layer=1 page=fore text="＋５" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+5"]
[else]
[ptext layer=1 page=fore text="＋５" size=16  name="kra_icon" x=30 y=10 color=black visible=true]
[eval exp="f.krakonkando=f.krakonkando+5"]
[endif]
[image layer=1 page=fore visible=true name="kra_icon" storage="klaist_icon.png"]
[free name="kra_icon" layer=1 time=2000]

[endmacro]

[macro name="glif"]
[if exp="f.glifrenailevel==1"]
[ptext layer=1 page=fore text="＋１" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+1"]
[elsif exp="f.glifrenailevel==2"]
[ptext layer=1 page=fore text="＋２" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+2"]
[elsif exp="f.glifrenailevel==3"]
[ptext layer=1 page=fore text="＋３" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+3"]
[elsif exp="f.glifrenailevel==4"]
[ptext layer=1 page=fore text="＋４" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+4"]
[elsif exp="f.glifrenailevel==5"]
[ptext layer=1 page=fore text="＋５" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+5"]
[else]
[ptext layer=1 page=fore text="＋５" size=16  name="glif_icon" x=30 y=10 color=black visible=true]
[eval exp="f.glifkonkando=f.glifkonkando+5"]
[endif]
[image layer=1 page=fore visible=true name="glif_icon" storage="glif_icon.png"]
[free name="glif_icon" layer=1 time=2000]
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
[bg storage="black.png" time=50]
[endmacro]

[macro name="agureasu"]
[image layer="1" page=fore visible=true storage=ao.png time=1500]
[freeimage layer="1" time=1500]
[endmacro]


[macro name="kusahasiru"]
[playse storage="kusahasiru_onjin.ogg"]
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


[macro name="irain_m"]
[cm]
[emb exp="sf.name"]
[endmacro]



[macro name="anten1"]
[freeimage layer=0]
[image layer=0 visible=true name="anten" page=fore storage="black.png" time=500]
[endmacro]

[macro name="anten_live2d"]
[image layer=3 visible=true name="anten" page=fore storage="black.png" time=500]
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


;恋愛感度計算
;ランス

[macro name="renaikando_calc_rans"]
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan1
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]
[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]

[endmacro]

[macro name="renaikando_rans_nokori"]

[if exp="f.ransrenaikando<12"]
[eval exp="f.ransrenainokori=12-f.ransrenaikando"]
[endif]

[cm]


[if exp="f.ransrenainokori<=2&&f.ransrenainokori>=0"]
[ptext layer="1" page=fore text="あと1回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=4&&f.ransrenainokori>=3"]
[ptext layer="1" page=fore text="あと2回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=5&&f.ransrenainokori>=4"]
[ptext layer="1" page=fore text="あと2回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=6&&f.ransrenainokori>=5"]
[ptext layer="1" page=fore text="あと3回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=7&&f.ransrenainokori>=6"]
[ptext layer="1" page=fore text="あと3回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=8&&f.ransrenainokori>=7"]
[ptext layer="1" page=fore text="あと4回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=9&&f.ransrenainokori>=8"]
[ptext layer="1" page=fore text="あと4回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori<=10&&f.ransrenainokori>=9"]
[ptext layer="1" page=fore text="あと5回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.ransrenainokori>10"]
[ptext layer="1" page=fore text="あと6回でLvup!" size=15 x=622 y=127 color=black]
[endif]

[endmacro]

;ライオン

[macro name="renaikando_calc_lion"]
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan1
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]
[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]


[endmacro]


[macro name="renaikando_lion_nokori"]

[if exp="f.lionrenaikando<10"]
[eval exp="f.lionrenainokori=10-f.lionrenaikando"]
[endif]

[cm]
[if exp="f.lionrenainokori<=1"]
[ptext layer="1" page=fore text="あと1回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=2"]
[ptext layer="1" page=fore text="あと2回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=3"]
[ptext layer="1" page=fore text="あと3回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=4"]
[ptext layer="1" page=fore text="あと4回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=5"]
[ptext layer="1" page=fore text="あと5回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=6"]
[ptext layer="1" page=fore text="あと6回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=7"]
[ptext layer="1" page=fore text="あと7回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=8"]
[ptext layer="1" page=fore text="あと8回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=9"]
[ptext layer="1" page=fore text="あと9回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori<=10"]
[ptext layer="1" page=fore text="あと10回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.lionrenainokori>10"]
[ptext layer="1" page=fore text="あと10回でLvup!" size=15 x=622 y=127 color=black]
[endif]

[endmacro]



[macro name="renaikando_calc_kra"]

[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan1
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]
[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]



[macro name="renaikando_kra_nokori"]

[if exp="f.krarenaikando<12"]
[eval exp="f.krarenainokori=12-f.krarenaikando"]
[endif]

[cm]
[if exp="f.krarenainokori<=3&&f.krarenainokori>=0"]
[ptext layer="1" page=fore text="あと1回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.krarenainokori<=6&&f.krarenainokori>=4"]
[ptext layer="1" page=fore text="あと2回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.krarenainokori<=9&&f.krarenainokori>=7"]
[ptext layer="1" page=fore text="あと3回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.krarenainokori<=12&&f.krarenainokori>=10"]
[ptext layer="1" page=fore text="あと4回でLvup!" size=15 x=622 y=127 color=black]
[elsif exp="f.krarenainokori>12"]
[ptext layer="1" page=fore text="あと4回でLvup!" size=15 x=622 y=127 color=black]
[endif]

[endmacro]







[macro name="koukando1_rans"]
[koukando_up]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が１アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+1"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が２アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が３アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が４アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が５アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[else]
[r]好感度が５アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+5"]
[endif]

;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]


;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan1
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan1]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]




[endmacro]

[macro name="koukando2_rans"]
[koukando_up]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が２アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+2"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が４アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+4"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が６アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+6"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が８アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+8"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が１０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[else]
[r]好感度が２０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan2
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]





[if exp="f.renaikando>=12"]
[jump target=*keisan2]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]
[endmacro]

[macro name="koukando3_rans"]
[koukando_up]
;好感度をプラス

[if exp="f.ransrenailevel==1"]
[r]好感度が３アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+3"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が６アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+6"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が９アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+9"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が１２アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+12"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が１５アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+15"]
[else]
[r]好感度が３０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan3
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan3]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]
[endmacro]

[macro name="koukando10_rans"]
[koukando_up]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[r]好感度が１０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+10"]
[elsif exp="f.ransrenailevel==2"]
[r]好感度が２０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+20"]
[elsif exp="f.ransrenailevel==3"]
[r]好感度が３０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+30"]
[elsif exp="f.ransrenailevel==4"]
[r]好感度が４０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+40"]
[elsif exp="f.ransrenailevel==5"]
[r]好感度が５０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+50"]
[else]
[r]好感度が５０アップ！[p]
[eval exp="f.ranskonkando=f.ranskonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan4
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[else]

[endif]

[if exp="f.renaikando>=12"]
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
[jump storage=scenario_2/kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri]

[elsif exp="f.b17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri]

[else]

[jump storage=scenario_2/ryouri/ryouri.ks target=*ryouri]

[endif]
[endmacro]






[macro name="koukando1_kra"]
[koukando_up]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が１アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+1"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が２アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が３アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が４アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が５アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+5"]
[else]
[r]好感度が５アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+5"]
[endif]

;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan5
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]

[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan5]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]

[macro name="koukando2_kra"]
[koukando_up]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が２アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+2"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が４アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+4"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が６アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+6"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が８アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+8"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が１０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+10"]
[else]
[r]好感度が２０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan6
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan6]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]

[macro name="koukando3_kra"]
[koukando_up]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が３アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+3"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が６アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+6"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が９アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+9"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が１２アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+12"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が１５アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+15"]
[else]
[r]好感度が３０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan7
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan7]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]

[endmacro]

[macro name="koukando10_kra"]
[koukando_up]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[r]好感度が１０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+10"]
[elsif exp="f.krarenailevel==2"]
[r]好感度が２０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+20"]
[elsif exp="f.krarenailevel==3"]
[r]好感度が３０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+30"]
[elsif exp="f.krarenailevel==4"]
[r]好感度が４０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+40"]
[elsif exp="f.krarenailevel==5"]
[r]好感度が５０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+50"]
[else]
[r]好感度が５０アップ！[p]
[eval exp="f.krakonkando=f.krakonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan8
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan8]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]

[endmacro]


[macro name="hantei_kra"]
[eval exp="f.ryouri=f.ryouri-1"]
[eval exp="f.ryourikra=f.ryourikra-1"]

[if exp="f.ryouri==0&&f.a17==1"]
[stopbgm]
[jump storage=scenario_2/kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri_return]

[elsif exp="f.b17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri_return]

[else]

[jump storage=scenario_2/ryouri/ryouri.ks target=*ryouri]

[endif]

[endmacro]







[macro name="koukando1_lion"]
[koukando_up]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が１アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+1"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が２アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が３アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が４アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が５アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[else]
[r]好感度が５アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+5"]
[endif]

;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+1"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan9
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=10"]
[jump target=*keisan9]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando2_lion"]
[koukando_up]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が２アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+2"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が４アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+4"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が６アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+6"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が８アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+8"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が１０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[else]
[r]好感度が２０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+1"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan10
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=10"]
[jump target=*keisan10]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando3_lion"]
[koukando_up]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が３アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+3"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が６アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+6"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が９アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+9"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が１２アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+12"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が１５アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+15"]
[else]
[r]好感度が３０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+1"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan11
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=10"]
[jump target=*keisan11]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando10_lion"]
[koukando_up]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[r]好感度が１０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+10"]
[elsif exp="f.lionrenailevel==2"]
[r]好感度が２０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+20"]
[elsif exp="f.lionrenailevel==3"]
[r]好感度が３０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+30"]
[elsif exp="f.lionrenailevel==4"]
[r]好感度が４０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+40"]
[elsif exp="f.lionrenailevel==5"]
[r]好感度が５０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+50"]
[else]
[r]好感度が５０アップ！[p]
[eval exp="f.lionkonkando=f.lionkonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+1"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan12
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=10"]
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
[jump storage=scenario_2/kyuujitu_w.ks target=*start]

[elsif exp="f.ryouri==0&&f.b17==1"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.ryouri==0"]
[stopbgm]
[jump storage=scenario_2/kyuujitu.ks target=*start]

[elsif exp="f.a17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri_return]

[elsif exp="f.b17==1"]
[jump storage=scenario_2/ryouri/ryouri_w.ks target=*ryouri_return]

[else]

[jump storage=scenario_2/ryouri/ryouri.ks target=*ryouri]

[endif]
[endmacro]



[macro name="koukando1_glif"]
[koukando_up]
;好感度をプラス
[if exp="f.glifrenailevel==1"]
[r]好感度が１アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+1"]
[elsif exp="f.glifrenailevel==2"]
[r]好感度が２アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+2"]
[elsif exp="f.glifrenailevel==3"]
[r]好感度が３アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+3"]
[elsif exp="f.glifrenailevel==4"]
[r]好感度が４アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+4"]
[elsif exp="f.glifrenailevel==5"]
[r]好感度が５アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+5"]
[else]
[r]好感度が１０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+10"]
[endif]

;恋愛感度をプラス
[eval exp="f.glifrenaikando=f.glifrenaikando+2"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.glifrenaikando"]
[eval exp="f.renailevel=f.glifrenailevel"]
*keisan9
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan9]
[endif]

[eval exp="f.glifrenailevel=f.renailevel"]
[eval exp="f.glifrenaikando=f.renaikando"]
;グリフの恋愛レベル５より大きい場合５に直す
[if exp="f.glifrenailevel>5"]
[eval exp="f.glifrenailevel=5"]
[endif]

[endmacro]

[macro name="koukando2_glif"]
[koukando_up]
;好感度をプラス
[if exp="f.glifrenailevel==1"]
[r]好感度が２アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+2"]
[elsif exp="f.glifrenailevel==2"]
[r]好感度が４アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+4"]
[elsif exp="f.glifrenailevel==3"]
[r]好感度が６アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+6"]
[elsif exp="f.glifrenailevel==4"]
[r]好感度が８アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+8"]
[elsif exp="f.glifrenailevel==5"]
[r]好感度が１０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+10"]
[else]
[r]好感度が２０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+20"]
[endif]
;恋愛感度をプラス
[eval exp="f.glifrenaikando=f.glifrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.glifrenaikando"]
[eval exp="f.renailevel=f.glifrenailevel"]
*keisan10
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan10]
[endif]

[eval exp="f.glifrenailevel=f.renailevel"]
[eval exp="f.glifrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando3_glif"]
[koukando_up]
;好感度をプラス
[if exp="f.glifrenailevel==1"]
[r]好感度が３アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+3"]
[elsif exp="f.glifrenailevel==2"]
[r]好感度が６アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+6"]
[elsif exp="f.glifrenailevel==3"]
[r]好感度が９アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+9"]
[elsif exp="f.glifrenailevel==4"]
[r]好感度が１２アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+12"]
[elsif exp="f.glifrenailevel==5"]
[r]好感度が１５アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+15"]
[else]
[r]好感度が３０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+30"]
[endif]
;恋愛感度をプラス
[eval exp="f.glifrenaikando=f.glifrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.glifrenaikando"]
[eval exp="f.renailevel=f.glifrenailevel"]
*keisan11
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan11]
[endif]

[eval exp="f.glifrenailevel=f.renailevel"]
[eval exp="f.glifrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando10_glif"]
[koukando_up]
;好感度をプラス
[if exp="f.glifrenailevel==1"]
[r]好感度が１０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+10"]
[elsif exp="f.glifrenailevel==2"]
[r]好感度が２０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+20"]
[elsif exp="f.glifrenailevel==3"]
[r]好感度が３０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+30"]
[elsif exp="f.glifrenailevel==4"]
[r]好感度が４０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+40"]
[elsif exp="f.glifrenailevel==5"]
[r]好感度が５０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+50"]
[else]
[r]好感度が５０アップ！[p]
[eval exp="f.glifkonkando=f.glifkonkando+50"]
[endif]
;恋愛感度をプラス
[eval exp="f.glifrenaikando=f.glifrenaikando+2"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.glifrenaikando"]
[eval exp="f.renailevel=f.glifrenailevel"]
*keisan12
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan12]
[endif]

[eval exp="f.glifrenailevel=f.renailevel"]
[eval exp="f.glifrenaikando=f.renaikando"]

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

;[freeimage layer=3]
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
	[position layer="message1" width="514" height="280" top="360" left="210"]
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

[elsif exp="f.ranskaiwa==6]

[image layer=1 page=fore storage="kaiwa_kaisuu6.png" top=1 left=360]
[elsif exp="f.ranskaiwa==7]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
[else]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
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
[eval exp="f.lionkaiwa=5"]
[image layer=1 page=fore storage="kaiwa_kaisuu5.png" top=1 left=360]

[elsif exp="f.lionkaiwa==6"]
[image layer=1 page=fore storage="kaiwa_kaisuu6.png" top=1 left=360]
[elsif exp="f.lionkaiwa==7"]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
[else]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
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

[elsif exp="f.krakaiwa==6"]
[image layer=1 page=fore storage="kaiwa_kaisuu6.png" top=1 left=360]
[elsif exp="f.krakaiwa==7"]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
[else]
[image layer=1 page=fore storage="kaiwa_kaisuu7.png" top=1 left=360]
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
[free name="episode" layer=0]
[eval exp="f.epi=f.epi+2"]


[endmacro]


[macro name="episode_hyouji_only"]

;エピソードイメージ表示

[if exp="f.sub_event!=1"]

[if exp="f.epi==1"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi1_hyouji.png" x=510 y=3]

[elsif exp="f.epi==2"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi2_hyouji.png" x=510 y=3]

[elsif exp="f.epi==3"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi3_hyouji.png" x=510 y=3]

[elsif exp="f.epi==4"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi4_hyouji.png" x=510 y=3]
[elsif exp="f.epi==5"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi5_hyouji.png" x=510 y=3]
[elsif exp="f.epi==6"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi6_hyouji.png" x=510 y=3]
[elsif exp="f.epi==7"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi7_hyouji.png" x=510 y=3]
[elsif exp="f.epi==8"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi8_hyouji.png" x=510 y=3]
[elsif exp="f.epi==9"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi9_hyouji.png" x=510 y=3]
[elsif exp="f.epi==10"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi10_hyouji.png" x=510 y=3]
[elsif exp="f.epi==11"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi11_hyouji.png" x=510 y=3]
[elsif exp="f.epi==12"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi12_hyouji.png" x=510 y=3]
[elsif exp="f.epi==13"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi13_hyouji.png" x=510 y=3]
[elsif exp="f.epi==14"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi14_hyouji.png" x=510 y=3]
[elsif exp="f.epi==15"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi16_hyouji.png" x=510 y=3]
;ウェスタ１章
[elsif exp="f.epi==16"]
[image layer=0 page=fore visible=true name="episode" storage="epi_hyouji/epi17_hyouji.png" x=510 y=3]
;ウェスタ２章

[endif]
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
[eval exp="f.town_trust=f.town_trust+1"]
[eval exp="f.irain_charm=f.irain_charm+1"]
魅力が１アップ！[p]
街の人の信頼度アップ！[p]
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
;アップ回数カウント
[eval exp="f.love_up=f.love_up+1"]
[endmacro]

[macro name="koukando_g_up"]
[playse storage="kirakira_onjin.ogg"]
[image layer=3 page=fore name="kirakira" storage="kirakira_g.png"]
[image layer=3 page=fore name="kirakira" storage="kirakira_2_g.png"]

[if exp="tf.kizuna_half==1"]
[image layer=3 page=fore name="kirakira" storage="heart_kizuna_half.png" x=300 y=100]
[eval exp="tf.kizuna_half=0"]
[elsif exp="tf.kizuna_half!=1"]
[image layer=3 page=fore name="kirakira" storage="heart_kizuna_full.png" x=300 y=100]
[endif]

[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=400 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=450 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=250 y=50]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=50 y=450]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=0 y=100]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=100 y=250]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=650 y=350]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=20 y=550]
[image layer=3 page=fore name="kirakira3" storage="kirakira_3_g.png" x=750 y=570]

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
;[jump storage=scenario_2/"first.ks"]




[endmacro]


[macro name="mi_live2d"]
[if exp="f.sentakuchuu!= 1 "]
[freeimage layer=3]
;ジャンプ、コンフィグ、スキップ
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"][endif]


[button name="kinou_button" role="skip" fix="true" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]

[else]

;;[image layer=3 page=fore visible=true storage="jump_off.jpg" name="jump_off" x=278 y=3]

[if exp="f.live2d_on!=1"][button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"][endif]

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
[if exp="f.sub_event!=1"]
[clearfix name="kinou_button"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]

[endif]
[image storage="live2d_logo.png" layer="0" page="fore" height="25" width="100" visible="true" x="725" y="0" name="live2d_logo"]
[eval exp="f.live2d_on=1"]
[endmacro]

[macro name="live2d_off"]
[eval exp="f.live2d_on=0"]
[free name="live2d_logo" layer=0]
[if exp="f.sub_event!=1"]
@clearfix name="kinou_button"
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[endif]

[endmacro]

;[live2d_new name="baka0" model_id="baka0" lip=true jname="ランスロット"]
;[live2d_new name="aho" model_id="aho" lip=true jname="？"]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]

[macro name="live2d_load"]
[eval exp="sf.live2d_on=1"]
[eval exp="f.live2d_on=1"]
[image storage="live2d_logo.png" layer="0" page="fore" height="25" width="100" visible="true" x="725" y="0" name="live2d_logo"]

[image layer=3 page=fore visible=true storage="loader.gif" name="load" x=130 y=10]
[ptext layer=3 page=fore text="Live2d Load" name="live2d_load" size=16 x=30 y=10 color=white visible=true]
[endmacro]

[macro name="live2d_load_off"]
[free name="live2d_load" layer=3]

[ptext layer=3 page=fore text="Load Complete" name="live2d_load" size=16 x=30 y=10 color=white visible=true]
[w]
[free name="live2d_load" layer=3]
[free name="load" layer=3]
[endmacro]


[macro name="item_get"]

;-----ウェスタ

[if exp="f.s_wesuta==1"]

[eval exp="tf.item_get=0"]
[iscript]
tf.item_get = Math.floor( Math.random() * 3) + 1
[endscript]

[if exp="tf.item_get<3"]
[message_settei_ad]
#&f.name
「あれ？何か落ちてる・・・？」[p]
#
;-----
[if exp="tf.item_get==1&&f.place_rouka==1"]
[eval exp="f.cook_item_stock[31]=f.cook_item_stock[31]+1"]
スィートスパイスを手に入れた！[p]
[elsif exp="tf.item_get==2&&f.place_rouka==1"]
[eval exp="f.cook_item_stock[33]=f.cook_item_stock[33]+1"]
こってりスパイスを手に入れた！[p]
;------
[elsif exp="tf.item_get==1&&f.place_hune_nakama==1"]
[eval exp="f.other_item_stock[4]=f.other_item_stock[4]+1"]
モテ仕草の本を手に入れた！[p]
[elsif exp="tf.item_get==2&&f.place_hune_nakama==1"]
[eval exp="f.other_item_stock[12]=f.other_item_stock[12]+1"]
筋トレ効果UP本を手に入れた！[p]
[else]
[eval exp="f.other_item_stock[6]=f.other_item_stock[6]+1"]
プロテインを手に入れた！[p]
[endif]

[jump target=*item_end]
;----------------------------------------------------------------
[endif]

#&f.name
「今は特になにもないみたい」[p]
#
[jump target=*item_end]
[endif]
;-----ウェスタ

;---シャロむ
[if exp="f.place_sharomu==1&&f.event_main_8_days>0"]

[eval exp="tf.item_get=0"]
[iscript]
tf.item_get = Math.floor( Math.random() * 2) + 1
[endscript]

[if exp="tf.item_get==1"]
[message_settei_ad]
#&f.name
「あれ？何か落ちてる・・・？」[p]
#
[eval exp="f.other_item_stock[15]=f.other_item_stock[15]+1"]
くじ引き券を手に入れた！[p]
[jump target=*item_end]
;----------------------------------------------------------------
[endif]
#&f.name
「たまには実家のテーベに帰りたいなあ・・・今は仕方ないけど・・・」[p]
#
[jump target=*item_end]
[endif]
;----シャロむ


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
*item_end
[endmacro]


;装備欄用表示
[macro name="irain_style_image"]

[call storage="scenario_2/irain_icon_data.ks"]

;[if exp="tf.irain_style==1"]
[free name="icon_hyouji_1" layer=1]
[free name="icon_hyouji_2" layer=1]
[eval exp="tf.irain_style=0"]
;[endif]

[iscript]

var equip_array_len=f.equip_item_list.length;

for(i=1;i<equip_array_len;i++){

	if(this.kag.stat.f["equip_item_current"]==i){

    this.kag.stat.f["irain_style_gra"] = this.kag.stat.f["irain_icon"][i].storage;
}
	if(this.kag.stat.f["equip_item_current_2"]==i){

	this.kag.stat.f["irain_style_gra_2"] = this.kag.stat.f["irain_icon"][i].storage;
}
}

[endscript]

[if exp="f.equip_item_current==11||f.equip_item_current==13"]
[image layer=1 page=fore storage="irain_icon/hair_back_wave.png" name="icon_hyouji_1" width="107" height="142" x=300 y=380]
[elsif exp="f.equip_item_current==15"]
[image layer=1 page=fore storage="irain_icon/hair_gold_2.png" name="icon_hyouji_1" width="107" height="142" x=300 y=380]
[endif]

[image layer=1 name="icon_hyouji_2" page=fore visible=true storage=&f.irain_style_gra_2 width="107" height="142" x=300 y=380]

[image layer=1 name="icon_hyouji_1" page=fore visible=true storage=&f.irain_style_gra width="107" height="142" x=300 y=380]

[if exp="f.equip_item_current_2==20"]
[image layer=1 page=fore storage="irain_icon/body_odori_hair.png" name="icon_hyouji_1" width="107" height="142" x=300 y=380]
[endif]

[eval exp="tf.irain_style=1"]
[endmacro]

[macro name="tougijou_event"]

[if exp="f.tougijou_kunshou==1&&f.tougijou==1"]

[message_settei_ad]

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【仲間と共に戦いますか？】

[glink target=*nakama_1 text="（仲間と戦う）" size=17 width=600 x=65 y=200]
[glink target=*nakama_2 text="（一人で）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*nakama_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.friend_now = f.friend"]

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【仲間を選んでください】

[eval exp="f.glif_yes=1"]
[glink target=*f_1 text="（ランスロット）" size=17 width=600 x=65 y=200]
[glink target=*f_2 text="（ライオネス）" size=17 width=600 x=65 y=260]
[glink target=*f_3 text="（クライスト）" size=17 width=600 x=65 y=320]
[if exp="f.glif_yes==1"]
[glink target=*f_4 text="（グリフレット）" size=17 width=600 x=65 y=380]
[endif]
[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*f_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.friend = 1"]
[jump target=*event_end]
*f_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.friend = 2"]
[jump target=*event_end]
*f_3
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.friend = 3"]
[jump target=*event_end]
*f_4
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.friend = 5"]
[jump target=*event_end]

;-----
*nakama_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

;一人で
[eval exp="f.friend_now = f.friend"]
[eval exp="f.friend = 0"]



[endif]
*event_end


[if exp="f.tougijou_battle_time>2&&f.friend==0"]
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
[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
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
[chara_mod name="rans" storage="rans_tatie/rans_mihiraki.gif"]

#ランスロット
「お前・・・気付いていなかったのか、外はもう夜だぞ」[p]
#
#&f.name
「ええっ！？もうそんな時間！？」[p]
#
[chara_mod name="rans" storage="rans_tatie/rans_mehuse_warai.gif"]
#ランスロット
「熱心なのはいいが・・・あまり周囲に心配をかけるんじゃないぞ」[p]
#
#&f.name
「ご、ごめんなさい・・・」[p]
#

[chara_mod name="rans" storage="rans_tatie/rans_normal_warai.gif"]
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
[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
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


[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
[day_end]


[endif]

[endif]
;---------------------------------------------
[if exp="f.tougijou_battle_time>2&&f.friend==1"]
[bg storage="tougijou_ac.jpg"]
[message_settei_ad]
[rans_tatie_touroku]
[rans_tatie_show]
#ランスロット
「・・・そろそろ帰らないか。夜だぞ。
一生懸命なのは感心だが、適度な休息は必要だ」[p]
#

#&f.name
「えっ・・・もうそんな時間！？」[p]
#

[rans_tatie_normal_warai]
#ランスロット
「今日は部屋に戻って、ゆっくり休んだ方がいい」[p]
#

#&f.name
「わ、わかりました・・・」[p]
#

[chara_kakusu]
[eval exp="tougijou_rans_eve=1"]
[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
[day_end]



[elsif exp="f.tougijou_battle_time>2&&f.friend==2"]
[bg storage="tougijou_ac.jpg"]

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス 
「俺は腹減った。帰る！」[p]
#
#&f.name
「ちょ、ちょっとまってライオネス・・・」[p]
#
[lioness_tatie_chottoikari]
#ライオネス 
「お前何時だと思ってんだよ！夜だぞ！」[p]
#
#&f.name
「え、ええっ・・・もうそんな時間・・・」[p]
#
#&f.name
（部屋に戻らなきゃ・・・だよね・・・つい夢中になっちゃった・・・）[p]
#
[chara_kakusu]
[eval exp="tougijou_lion_eve=1"]

[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
[day_end]


[elsif exp="f.tougijou_battle_time>2&&f.friend==3"]
[bg storage="tougijou_ac.jpg"]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト 
「ねえ、もう帰らない？さすがにトリスタンも気付くかも」[p]
#

#&f.name
「あっ・・・そ、そうだね・・・」[p]
#
#&f.name
（・・・というか・・・どうやって出てきたんだろう・・・）[p]
#

[chara_kakusu]
[eval exp="tougijou_kra_eve=1"]
[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
[day_end]
[elsif exp="f.tougijou_battle_time>2&&f.friend==5"]

[bg storage="tougijou_ac.jpg"]
[glif_tatie_touroku]
[glif_tatie_show]
#グリフレット 
「すみません・・・僕はまだ王宮での仕事がありますので、辞退しても良いですか？」[p]
#


#&f.name
「あっ・・・ご、ごめんね、ありがとう」[p]
#

[glif_tatie_komari_warai]
#グリフレット 
「いえ・・・でも、もう帰った方がいいと思います。夜も更けましたし・・・」[p]
#
#&f.name
「えっ・・・もうそんな時間！？」[p]
#
[glif_tatie_normal_warai]
#&f.name
（か、帰らなきゃ・・・だよね）[p]
#
[chara_kakusu]

[eval exp="tougijou_glif_eve=1"]
[eval exp="f.tougijou_battle_time=0"][eval exp="f.tougijou=0"][eval exp="f.tougijou_level=0"]
[eval exp="f.friend = f.friend_now"]
[day_end]


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
以降闘技場の全てのレベルがいつでも挑戦可能になります。※経験値上昇はなし[p]
また、共に戦う男性キャラを自由に選ぶことができます。（カーニバル編以降）
※好感度は上昇しません
[p]
時間経過にはくれぐれもお気を付けください。[p]
[fadeoutbgm time=3000]
[cm]

;戻る処理

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[if exp="f.friend_now>0"]
[eval exp="f.friend = f.friend_now"]
[endif]
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
[eval exp="f.skip_on=1"]
[button fix="true" role="skip" name="skip_button" visible=true graphic=skip.gif height="28" width="50" x=500 y=10]

[endmacro]

[macro name="skip_button_off"]
[if exp="f.skip_on==1"]
[clearfix name="skip_button"][eval exp="f.skip_on=0"]
[endif]
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




[macro name="refresh_hanyou"]

[autosave]
[eval exp="sf.hanyou=1"]
[if exp="sf.return_hanyou==1"]
[jump target=*modottayo]
[endif]
;[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]

[iscript]
TG.kag.backLitle();
[endscript]
;[iscript]
;location.reload()
;[endscript]
[iscript]
history.replaceState( "hoge", "null", "./index_cur.html" ) ;
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

[macro name="snowfall"]
[eval exp="f.snowfall= 1 "]
[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall({

    image :  "./data/others/snowfall/images/sakura5.gif",
    flakeCount : 7,
    minSize: 10, 
    maxSize: 32

    });
[endscript]
[loadcss file="./data/scenario/snowfall.css"]
[endmacro]

[macro name="snowfall_0"]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[eval exp="f.snowfall= 0 "]
[endmacro]


[macro name="creru_uradoori"]
[bg storage="creru_uradoori.jpg"]
[endmacro]

[macro name="creru_uradoori_yuu"]
[bg storage="creru_uradoori_yuu.jpg"]
[endmacro]

[macro name="irain_heya"]
[bg storage="irainheya_tasogare.jpg"]
[endmacro]

[macro name="irain_heya_yuu"]
[bg storage="irainheya_yuu_tasogare.jpg"]
[endmacro]

[macro name="irain_heya_yoru"]
[bg storage="irainheya_yoru_tasogare.jpg"]
[endmacro]

[macro name="kisidaniriguti_hiru"]
[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
[endmacro]

[macro name="kisidaniriguti_yoru"]
[bg storage="kisidaniriguti_tasogare.jpg"]
[endmacro]


[macro name="creru_sakaba_1"]
[bg storage="crerushokudou_tasogare.jpg"]
[endmacro]

[macro name="creru_sakaba_1_yoru"]
[bg storage="crerushokudou_yoru_tasogare.jpg"]
[endmacro]



[macro name="creru_sakaba_2"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[endmacro]

[macro name="creru_sakaba_2_yoru"]
[bg storage="crerusakaba1_yoru.jpg"]
[endmacro]

[macro name="creru_sakaba_3"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[endmacro]

[macro name="creru_sakaba_3_yoru"]
[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[endmacro]

[macro name="creru_sakaba"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[endmacro]

[macro name="creru_sakaba_yuu"]
[bg storage="crerumatinaka1_yuu_tasogare.jpg"]
[endmacro]

[macro name="creru_iriguti"]
[if exp="f.irain_move==1"]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka2_tasogare.jpg"]
[endif]
[endmacro]

[macro name="creru_iriguti_yuu"]
[bg storage="crerumatinaka2_yuugata_tasogare.jpg"]
[endmacro]

[macro name="creru_iriguti_yoru"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg"]
[endmacro]

[macro name="creru_hunsui_3"]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endmacro]

[macro name="creru_hunsui_yuu"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[endmacro]

[macro name="creru_hunsui_yoru"]
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]
[endmacro]

[macro name="creru_oukyu"]
[bg storage="oukyuu_tasogare.jpg"]
[endmacro]


[macro name="creru_oukyu_yuu"]
[bg storage="oukyuu_yuu_tasogare.jpg"]
[endmacro]


[macro name="creru_oukyu_yoru"]
[bg storage="oukyuu_yoru_tasogare.jpg"]
[endmacro]

[macro name="sharomu"]
[bg storage="sharomu_tasogare.jpg"]
[endmacro]


[macro name="sharomu_sanbasi"]
[bg storage="sharomusanbasi_tasogare.jpg"]
[endmacro]

[macro name="sharomu_sanbasi_yoru"]
[bg storage="sharomusanbasi_yoru_tasogare.jpg"]

[endmacro]

[macro name="sharomu_shokudou"]
[bg storage="sharomushokudou_tasogare.jpg"]
[endmacro]

[macro name="dinner_bgm"]
[playbgm storage="dinner_musmus.ogg"]
[endmacro]

[macro name="lunch_bgm"]
[playbgm storage="lunch_musmus.ogg"]
[endmacro]



[macro name="boukennojunnbi_bgm"]
[playbgm storage="boukennojunbi_ontama.ogg"]
[endmacro]

[macro name="irain_tema"]
[playbgm storage="reina_ol_ontama.ogg"]
[endmacro]

[macro name="lioness_tema"]
[playbgm storage="tw44_musmus.ogg"]
[endmacro]

[macro name="rans_tema"]
[playbgm storage="omoi_ontama.ogg"]
[endmacro]

[macro name="struggle_bgm"]
[playbgm storage="struggle.ogg"]
[endmacro]

[macro name="shuuen_bgm"]
[playbgm storage="shuuen_musmus.ogg"]
[endmacro]

[macro name="sharomu_bgm"]
[playbgm storage="sharomu_musmus.ogg"]
[endmacro]


[macro name="refresh_hanyou_2"]
[autosave]

[eval exp="sf.hanyou=1"]
[if exp="sf.return_hanyou==1"]
[jump target=*modottayo]
[endif]
;[image layer=3 page=fore storage="black.png" name="kuro" x=0 y=0]

[iscript]
TG.kag.backCitle();
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


[macro name="loader_hyouji"]
[image layer=3 page=fore visible=true storage="loader.gif" name="load" x=350 y=280]
[endmacro]


[macro name="loader_delete"]
[free name="load" layer=3]
[endmacro]


[macro name="shokuji_osasoi_rans"]

[if exp="f.ranskonkando>4"]
[iscript]
tf.osasoi = Math.floor( Math.random() * 10) + 1
[endscript]
[endif]

;[eval exp="tf.osasoi=1"]
[if exp="tf.osasoi>2"]
[eval exp="tf.osasoi=1"]
#&f.name
「誘いたいけど・・・王宮にはいけないしなあ」[p]
#
#&f.name
「あれ？」[p]
#
[playse storage="nokku_tairakomori.ogg"]
[rans_tatie_touroku]
[rans_tatie_show]
[rans_tatie_normal_warai]
#ランスロット
「やあ[name]。調子はどうだ？」[p]
#
#&f.name
「ランスロット！」[p]
#

#ランスロット
「街に所用があったからな・・・お前の様子を見に来た。食事でもどうだ？」[p]
#
#&f.name
「うん！」[p]
#
[chara_kakusu]
[jump target=*osasoi_rans_end]

[endif]
#&f.name
「誘いたいけど・・・王宮にはいけないし・・・」[p]
#
#&f.name
「偶然来てくれる・・・なんてことないか」[p]
#
#&f.name
「仕方ない、一人でいこうっと」[p]
#
[eval exp="tf.osasoi=0"]
*osasoi_rans_end

[endmacro]



[macro name="shokuji_osasoi_lion"]

[if exp="f.lionkonkando>5"]
[iscript]
tf.osasoi = Math.floor( Math.random() * 10) + 1
[endscript]
[endif]

[if exp="tf.osasoi>2"]
[eval exp="tf.osasoi=1"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「飯？・・・ああ、いいぜ、どこにする」[p]
#
[chara_kakusu]
[jump target=*osasoi_lion_end]
[endif]
[eval exp="tf.osasoi=0"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「ああ、悪い、今日は用事がある。またな」[p]
#
#&f.name
（仕方ないや・・・一人で食べよう）[p]
#
[chara_kakusu]
*osasoi_lion_end

[endmacro]



[macro name="shokuji_osasoi_kra"]
[if exp="f.krakonkando>3"]
[iscript]
tf.osasoi = Math.floor( Math.random() * 10) + 1
[endscript]
[endif]

[if exp="tf.osasoi>2&&f.kra_osasoi!=1"]
[eval exp="tf.osasoi=1"]
[bg storage="hune_souko_tasogare.jpg"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_mihiraki]
#クライスト
「あれ？どうしたの？」[p]
#
#&f.name
「あの、一緒に食べようと思って・・・」[p]
#

[kra_tatie_smile]
#クライスト
「本当に？ありがとう。嬉しいな」[p]
#
[kra_tatie_yokome]
#クライスト
「正直、毎食パンしかもらえないから飽きちゃってて」[p]
#

[kra_tatie_komari]
#&f.name
（それは流石にかわいそうなような・・・）[p]
#
[kra_tatie_normal]
#&f.name
「ところでクライストさんて・・・ずっとここにいるの？
団長が働いてもらうって言ってたけど・・・」[p]
#

[kra_tatie_mihiraki]
#クライスト
「あ、朝は水汲みとか掃除とかしてるよ。お昼は靴磨きとか、鎧磨きとか」[p]
#
[kra_tatie_metoji]
#クライスト
「もちろん監視付きだけど」[p]
#
#&f.name
（雑用係ってことか・・・）[p]
#
[chara_kakusu]
[eval exp="f.kra_osasoi=1"]
[jump target=*osasoi_kra_end]


[elsif exp="tf.osasoi>2"]
[eval exp="tf.osasoi=1"]
[bg storage="hune_souko_tasogare.jpg"]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_smile]
#クライスト
「あ、ご飯？ありがとう、美味しそうだね。一緒に食べようか」[p]
#
[chara_kakusu]
[jump target=*osasoi_kra_end]

[endif]

[bg storage="hune_souko_tasogare.jpg"]
#&f.name
「クライストさん・・・？あれ、いない・・・」[p]
#
#&f.name
「うーん・・・仕方ないや」[p]
#
#&f.name
（というより・・・どこに行ったんだろ）[p]
#
#&f.name
（トリスタンもいないから、外で働かされてるのかな？）[p]
#

#&f.name
「仕方ない、一人で食べようっと」[p]
#
[eval exp="tf.osasoi=0"]
*osasoi_kra_end


[endmacro]


[macro name="restaurant_like_rans"]
[if exp="f.r_kajikaji==1||f.r_hirayama==1||f.r_oikawa==1"]

[if exp="tf.hyouji_sumi!=1"]
[rans_tatie_touroku]
[rans_tatie_show]
[endif]
[rans_tatie_normal_warai]
#ランスロット
「お前は魚料理が好きだな。私も好きだ」[p]
#
[rans]
[koukando_up]
[chara_kakusu]
[endif]

[endmacro]

[macro name="restaurant_like_lion"]
[if exp="f.r_romana==1||f.r_beruzoku==1||f.r_moon==1"]
[if exp="tf.hyouji_sumi!=1"]
[lioness_tatie_touroku]
[lioness_tatie_show]
[endif]
[lioness_tatie_warai]

#ライオネス
「やっぱ肉だよな！」[p]
#
[lion]
[koukando_up]
[chara_kakusu]
[endif]

[endmacro]

[macro name="restaurant_like_kra"]
[if exp="f.r_moon==1"]
[if exp="tf.hyouji_sumi!=1"]
[kra_tatie_touroku]
[kra_tatie_show]
[endif]
[kra_tatie_bisyou_youen]
#クライスト
「このお店美味しいよね、俺も好きだな」[p]
#
[kra]
[koukando_up]
[chara_kakusu]
[endif]

[endmacro]



[macro name="rans_para_kioku"]
[eval exp="tf.rans_kioku_para=1"]
[chara_para_kioku]
[eval exp="tf.rans_kioku_para=0"]
[endmacro]

[macro name="lion_para_kioku"]
[eval exp="tf.lion_kioku_para=1"]
[chara_para_kioku]
[eval exp="tf.lion_kioku_para=0"]
[endmacro]

[macro name="kra_para_kioku"]
[eval exp="tf.kra_kioku_para=1"]
[chara_para_kioku]
[eval exp="tf.kra_kioku_para=0"]
[endmacro]


[macro name="rans_para_word"]
[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_tec!=0"]
[live2d_fadein time=1000]
[rans_exp_normal_warai]

#ランスロット
「[emb exp="f.rans_word_day_blank"][emb exp="f.rans_homekotoba_tec"]」[p]
#
[rans_exp_normal]
[rans]
[koukando_up]
[eval exp="tf.rans_tec_home=1"]
[endif]

[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_brain!=0"]
[live2d_fadein time=1000]
[rans_exp_normal_warai]
#ランスロット
「
[if exp="tf.rans_tec_home!=1"]
[emb exp="f.rans_word_day_blank"]
[endif]

[emb exp="f.rans_homekotoba_brain"]」[p]
#
[rans_exp_normal]
[rans]
[koukando_up]

[endif]
[eval exp="tf.rans_tec_home=0"]
[endmacro]

[macro name="rans_rei_para_word"]
[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_tec!=0"]
[live2d_fadein time=1000]
[rans_rei_exp_normal_warai]

#ランスロット
「[emb exp="f.rans_word_day_blank"][emb exp="f.rans_homekotoba_tec"]」[p]
#
[rans_rei_exp_normal]
[rans]
[koukando_up]
[eval exp="tf.rans_tec_home=1"]
[endif]

[if exp="f.rans_word_day_blank!=0&&f.rans_homekotoba_brain!=0"]
[live2d_fadein time=1000]
[rans_rei_exp_normal_warai]
#ランスロット
「
[if exp="tf.rans_tec_home!=1"]
[emb exp="f.rans_word_day_blank"]
[endif]

[emb exp="f.rans_homekotoba_brain"]」[p]
#
[rans_rei_exp_normal]
[rans]
[koukando_up]
[endif]
[eval exp="tf.rans_tec_home=0"]
[eval exp="tf.rans_brain_home=0"]
[eval exp="f.rans_homekotoba_brain=0"]
[eval exp="f.rans_homekotoba_tec=0"]
[eval exp="f.rans_word_day_blank=0"]
[endmacro]



[macro name="lion_para_word"]

[if exp="f.lion_word_day_blank!=0&&f.lion_homekotoba_tec!=0"]
[live2d_fadein time=1000]
[lioness_face_normal_warai]

#ライオネス 
「[emb exp="f.lion_word_day_blank"][emb exp="f.lion_homekotoba_tec"]」[p]
#
[lioness_face_normal]
[eval exp="tf.lion_tec_home=1"]
[lion]
[koukando_up]

[endif]


[if exp="f.lion_word_day_blank!=0&&f.lion_homekotoba_charm!=0"]
[live2d_fadein time=1000]
[lioness_face_tere]

#ライオネス 
「
[if exp="tf.lion_tec_home!=1"]
[emb exp="f.lion_word_day_blank"]
[endif]
[emb exp="f.lion_homekotoba_charm"]」[p]
#
[lioness_face_normal]
[lion]
[koukando_up]
[endif]
[eval exp="f.lion_word_day_blank=0"]
[eval exp="tf.lion_tec_home=0"]
[eval exp="f.lion_homekotoba_tec=0"]
[eval exp="f.lion_homekotoba_charm=0"]
[endmacro]


[macro name="kra_para_word"]

[if exp="f.kra_word_day_blank!=0&&f.kra_homekotoba_brain!=0"]
[live2d_fadein time=1000]
[aho_face_mihiraki]
#クライスト
「[emb exp="f.kra_word_day_blank"][emb exp="f.kra_homekotoba_brain"]」[p]
#
[aho_face_bisyou_youen]
[eval exp="tf.kra_brain_home=1"]
[kra]
[koukando_up]
[endif]

[if exp="f.kra_word_day_blank!=0&&f.kra_homekotoba_charm!=0"]
[live2d_fadein time=1000]
[aho_face_normal]
#クライスト
「
[if exp="tf.kra_brain_home!=1"]
[emb exp="f.kra_word_day_blank"]
[endif]

[emb exp="f.kra_homekotoba_charm"]」[p]

[if exp="f.kra_homekotoba_charm_m==1"]
[aho_head_right_z]
[aho_face_bisyou_youen]
「[emb exp="f.kra_homekotoba_charm_2"]」[p]
[eval exp="f.kra_homekotoba_charm_m=0"]
[eval exp="f.kra_homekotoba_charm_2=0"]
[endif]
#
[kra]
[koukando_up]
[endif]
[eval exp="tf.kra_brain_home=0"]
[eval exp="f.kra_homekotoba_brain=0"]
[eval exp="f.kra_homekotoba_charm=0"]
[eval exp="f.kra_word_day_blank=0"]

[endmacro]



[macro name="rans_fashion_check"]
[rans_hair_comment]
[rans_equip_comment]
[endmacro]

[macro name="lion_fashion_check"]
[lion_hair_comment]
[lion_equip_comment]
[endmacro]

[macro name="kra_fashion_check"]
[kra_hair_comment]
[kra_equip_comment]
[endmacro]


[macro name="onaka_ippai"]

お腹がいっぱいになった！！[p]
[playse storage="item_status_up_onjin.ogg"]
;------------------能力値アップ
[if exp="f.r_kajikaji==1"]
;頭脳
[eval exp="tf.parameta = 2"]
[eval exp="tf.up_num=3"]

[elsif exp="f.r_hirayama==1"]

[eval exp="tf.parameta = 2"]
[eval exp="tf.up_num=2"]

[elsif exp="f.r_oikawa==1"]

[eval exp="tf.parameta = 2"]
[eval exp="tf.up_num=1"]

[elsif exp="f.r_ika==1"]

[eval exp="tf.parameta = 2"]
[eval exp="tf.up_num=1"]




[elsif exp="f.r_romana==1"]
;技術
[eval exp="tf.parameta = 1"]
[eval exp="tf.up_num=3"]

[elsif exp="f.r_beruzoku==1"]

[eval exp="tf.parameta = 1"]
[eval exp="tf.up_num=2"]

[elsif exp="f.r_moon==1"]

[eval exp="tf.parameta = 1"]
[eval exp="tf.up_num=1"]

[elsif exp="f.r_bejibeji==1"]

[eval exp="tf.parameta = 3"]
[eval exp="tf.up_num=1"]

[elsif exp="f.r_poteto==1"]

[eval exp="tf.parameta = 3"]
[eval exp="tf.up_num=2"]

[elsif exp="f.r_kyarokyaro==1"]

[eval exp="tf.parameta = 3"]

[eval exp="tf.up_num=3"]

;海鳴り
[elsif exp="f.r_uminari==1"]

[if exp="f.menu_num==68"]
[eval exp="tf.parameta = 2"]
[elsif exp="f.menu_num==69"]
[eval exp="tf.parameta = 2"]
[elsif exp="f.menu_num==70"]
[eval exp="tf.parameta = [1,2]"]
[elsif exp="f.menu_num==71"]
[eval exp="tf.parameta = [1,2,3]"]
[elsif exp="f.menu_num==72"]
[eval exp="tf.parameta = 2"]
[endif]
[eval exp="tf.up_num=12"]

[elsif exp="f.r_hukurou==1"]

[if exp="f.menu_num==73"]
[eval exp="tf.parameta = 1"]
[elsif exp="f.menu_num==74"]
[eval exp="tf.parameta = 1"]
[elsif exp="f.menu_num==75"]
[eval exp="tf.parameta = 2"]
[elsif exp="f.menu_num==76"]
[eval exp="tf.parameta = 3"]
[elsif exp="f.menu_num==77"]
[eval exp="tf.parameta = 2"]
[endif]
[eval exp="tf.up_num=18"]

;カフェ
[elsif exp="f.r_creammania==1"]

[iscript]
tf.parameta = Math.floor( Math.random() * 3) + 1
[endscript]

[eval exp="tf.up_num=6"]


[elsif exp="f.r_sweetvalue==1"]

[iscript]
tf.parameta = Math.floor( Math.random() * 3) + 1
[endscript]

[eval exp="tf.up_num=6"]

[endif]

;値が配列か、そうでないか判定ようフラグ
[eval exp="tf.arr_flag=0"]
[eval exp="tf.para_kaisu=0"]

[iscript]
var para_arr = Array.isArray(tf.parameta);

if(para_arr===true){
tf.arr_flag=1;
tf.para_kaisu = tf.parameta.length;
}
[endscript]

[if exp="f.disc_num>2"]
[eval exp="tf.up_num = tf.up_num*2"]
[endif]

;もっと楽しむレストラン
[if exp="f.other_item_stock[34]>0"]
[eval exp="tf.up_num = tf.up_num*2"]
[endif]


;配列でないばあいジャンプ
[if exp="tf.arr_flag!=1"]
[jump target=*only]
[endif]



*para_return

[eval exp="tf.para_num = tf.para_kaisu-1"]
[if exp="tf.parameta[tf.para_num]==3"]
[eval exp="tf.parameta_name = '魅力'"]
[eval exp="f.irain_charm=f.irain_charm+tf.up_num"]
[elsif exp="tf.parameta[tf.para_num]==2"]
[eval exp="tf.parameta_name = '頭脳'"]
[eval exp="f.irain_brain=f.irain_brain+tf.up_num"]
[elsif exp="tf.parameta[tf.para_num]==1"]
[eval exp="tf.parameta_name = '技術'"]
[eval exp="f.irain_tec=f.irain_tec+tf.up_num"]
[endif]

[emb exp="tf.parameta_name"]が[emb exp="tf.up_num"]アップ！[p]

[if exp="tf.para_kaisu>1"]
[eval exp="tf.para_kaisu=tf.para_kaisu-1"]
[jump target=*para_return]
[endif]
[jump target=*flag_off]

*only

;値のみの場合
[if exp="tf.parameta==3"]
[eval exp="tf.parameta_name = '魅力'"]
[eval exp="f.irain_charm=f.irain_charm+tf.up_num"]
[elsif exp="tf.parameta==2"]
[eval exp="tf.parameta_name = '頭脳'"]
[eval exp="f.irain_brain=f.irain_brain+tf.up_num"]
[elsif exp="tf.parameta==1"]
[eval exp="tf.parameta_name = '技術'"]
[eval exp="f.irain_tec=f.irain_tec+tf.up_num"]
[endif]

[emb exp="tf.parameta_name"]が[emb exp="tf.up_num"]アップ！[p]

*flag_off
;フラグおふ
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]
[eval exp="f.r_ika=0"]
[eval exp="f.r_uminari=0"]
[eval exp="f.r_hukurou=0"]

[eval exp="f.r_romana=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_moon=0"]

[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]
[eval exp="f.r_creammania=0"]
[eval exp="f.r_sweetvalue=0"]

[eval exp="f.r_uminari=0"]
[eval exp="f.r_hukurou=0"]

[endmacro]


[macro name="shokuji_rans"]
[eval exp="f.friend=1"]
[if exp="f.r_ika==1"]
[jump target=*rans_ika]
[endif]
[restaurant_choice]
[restaurant_like_rans]
*rans_ika

[chara_kakusu]
[restaurant_haikei]

[live2d_rans_touroku]
[live2d_fadeout time=1000]
[live2d_rans_show_sekkin]

[menu_choice]
[bg storage="&f.shokuji_haikei"]
[rans_para_word]
[rans_para_current_kioku]
[rans_fashion_check]
[call storage="scenario_2/kaiwa/ranskaiwa_new.ks"]
;会話イベント
[ranskaiwa]
[onaka_ippai]
[message_settei_ad]
[eval exp="f.friend=0"]

[eval exp="f.r_ika=0"]
[eval exp="f.r_moon=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_romana=0"]
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]
[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]
[endmacro]

[macro name="shokuji_lion"]
[eval exp="f.friend=2"]
[if exp="f.r_ika==1"]
[jump target=*lion_ika]
[endif]
[restaurant_choice]
[restaurant_like_lion]

*lion_ika
[chara_kakusu]
[restaurant_haikei]

[live2d_lion_touroku]
[live2d_fadeout time=1000]
[live2d_lion_show_sekkin]


[menu_choice]
[bg storage="&f.shokuji_haikei"]
[lion_para_word]
[lion_para_current_kioku]
[lion_fashion_check]
[call storage="scenario_2/kaiwa/lionkaiwa_new.ks"]
;会話イベント
[lionkaiwa]
[onaka_ippai]
[message_settei_ad]
[eval exp="f.friend=0"]

[eval exp="f.r_ika=0"]
[eval exp="f.r_moon=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_romana=0"]
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]
[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]
[endmacro]


[macro name="shokuji_kra"]
[eval exp="f.friend=3"]
[if exp="f.r_ika==1"]
[jump target=*kra_ika]
[endif]
[restaurant_choice]
[restaurant_like_kra]

*kra_ika
[chara_kakusu]
[restaurant_haikei]

[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show_sekkin]


[menu_choice]
[bg storage="&f.shokuji_haikei"]
[kra_para_word]
[kra_para_current_kioku]
[kra_fashion_check]
[call storage="scenario_2/kaiwa/krakaiwa_new.ks"]
;会話イベント
[krakaiwa]
[onaka_ippai]
[message_settei_ad]
[eval exp="f.friend=0"]

[eval exp="f.r_ika=0"]
[eval exp="f.r_moon=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_romana=0"]
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]
[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]
[endmacro]


[macro name="battle_start"]
[jump storage="scenario_2/mini_game/battle.ks"]
[endmacro]


[macro name="config_false"]
[chara_config pos_mode=false]
[endmacro]


[macro name="config_true"]
[chara_config pos_mode=true]
[endmacro]


[macro name="tatie_yomikomi_2"]
[if exp="f.data_yomikomi_2!=1&&f.data_yomikomi==1"]
[loadjs storage="tatie_data.js"]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_dai.png" x=350 y=350]
[preload storage=&f.rans_data_2]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_0.png" x=350 y=350]
[preload storage=&f.glif_data]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_1.png" x=350 y=350]
[preload storage=&f.gales_data]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_2.png" x=350 y=350]
[eval exp="f.data_yomikomi_2=1"]
[playse storage="load_complete.ogg"]
[free name="gauge" layer=2]
[free name="gauge" layer=3]
[elsif exp="f.data_yomikomi_2!=1&&f.data_yomikomi!=1"]
[loadjs storage="tatie_data.js"]
[image layer=3 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_dai.png" x=350 y=350]
[preload storage=&f.rans_data]
[preload storage=&f.rans_data_2]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_0.png" x=350 y=350]
[preload storage=&f.lion_data]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_1.png" x=350 y=350]
[preload storage=&f.kra_data]
[preload storage=&f.glif_data]
[preload storage=&f.gales_data]
[image layer=2 page=fore visible=true name="gauge" storage="data_gauge/data_gauge_2.png" x=350 y=350]
[eval exp="f.data_yomikomi=1"]
[eval exp="f.data_yomikomi_2=1"]
[playse storage="load_complete.ogg"]
[free name="gauge" layer=2]
[free name="gauge" layer=3]
[endif]
[endmacro]


[macro name="chara_kakusu"]
[chara_hide_all]
[chara_off]
[endmacro]

[macro name="action_return_rans"]
[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
[rans_arms_normal]
[endmacro]

[macro name="action_return_lion"]
[lioness_face_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_eyes_normal]
[lioness_arms_normal]
[endmacro]

[macro name="action_return_kra"]
[aho_face_normal]
[aho_head_normal]
[aho_body_normal]
[aho_eyes_normal]
[aho_arms_normal]
[endmacro]



[macro name="kaiwa_tuika"]
[call storage="scenario_2/kaiwa/kaiwa_button_macro.ks"]


[iscript]

f.kaiwawadai = [
[
0,
f.rans_kaiwa_1,
f.rans_kaiwa_2,
f.rans_kaiwa_3,
f.rans_kaiwa_4,
f.rans_kaiwa_5,
f.rans_kaiwa_6,
f.rans_kaiwa_7,
f.rans_kaiwa_8,
f.rans_kaiwa_9,
f.rans_kaiwa_10,
f.rans_kaiwa_11,
f.rans_kaiwa_12,
f.rans_kaiwa_13,
f.rans_kaiwa_14,
f.rans_kaiwa_15,
f.rans_kaiwa_16,
f.rans_kaiwa_17,
f.rans_kaiwa_18,
f.rans_kaiwa_19,
f.rans_kaiwa_20,
f.rans_kaiwa_21,
f.rans_kaiwa_22,
f.rans_kaiwa_23,
f.rans_kaiwa_24,
f.rans_kaiwa_25,
f.rans_kaiwa_26,
],
[
0,
f.lion_kaiwa_1,
f.lion_kaiwa_2,
f.lion_kaiwa_3,
f.lion_kaiwa_4,
f.lion_kaiwa_5,
f.lion_kaiwa_6,
f.lion_kaiwa_7,
f.lion_kaiwa_8,
f.lion_kaiwa_9,
f.lion_kaiwa_10,
f.lion_kaiwa_11,
f.lion_kaiwa_12,
f.lion_kaiwa_13,
f.lion_kaiwa_14,
f.lion_kaiwa_15,
f.lion_kaiwa_16,
f.lion_kaiwa_17,
f.lion_kaiwa_18,
f.lion_kaiwa_19,
f.lion_kaiwa_20,
f.lion_kaiwa_21,
f.lion_kaiwa_22,
f.lion_kaiwa_23,
f.lion_kaiwa_24,
f.lion_kaiwa_25,
f.lion_kaiwa_26,
f.lion_kaiwa_27,
],
[
0,
f.kra_kaiwa_1,
f.kra_kaiwa_2,
f.kra_kaiwa_3,
f.kra_kaiwa_4,
f.kra_kaiwa_5,
f.kra_kaiwa_6,
f.kra_kaiwa_7,
f.kra_kaiwa_8,
f.kra_kaiwa_9,
f.kra_kaiwa_10,
f.kra_kaiwa_11,
f.kra_kaiwa_12,
f.kra_kaiwa_13,
f.kra_kaiwa_14,
f.kra_kaiwa_15,
f.kra_kaiwa_16,
f.kra_kaiwa_17,
f.kra_kaiwa_18,
f.kra_kaiwa_19,
f.kra_kaiwa_20,
f.kra_kaiwa_21,
f.kra_kaiwa_22,
f.kra_kaiwa_23,
f.kra_kaiwa_24,
f.kra_kaiwa_25,
f.kra_kaiwa_26,
f.kra_kaiwa_27,
f.kra_kaiwa_28,

],
];

tf.kaiwaname = [
'ランスロット',
'ライオネス',
'クライスト'
];

//自由行動のときの会話追加じょうほう
f.kaiwa_tuika_kaisu = [
[5,3,5],
[0,4,3],
[1,2,1],
];


[endscript]





;[eval exp="tf.tuika_num = 0"]
;[eval exp="tf.kaiwa_num  = 10"]






[eval exp="tf.kaiwatuika_x=800"]
[eval exp="tf.kaiwatuika_y=150"]
[eval exp="tf.kaiwatuika_x_tojiru=tf.kaiwatuika_x+178"]
[eval exp="tf.kaiwatuika_y_tojiru=tf.kaiwatuika_y+10"]


[eval exp="tf.kaiwatuika_x_moji=tf.kaiwatuika_x+11"]
[eval exp="tf.kaiwatuika_x_moji_2=tf.kaiwatuika_x_moji+90"]
[eval exp="tf.kaiwatuika_x_moji_3=tf.kaiwatuika_x_moji_2+30"]
[eval exp="tf.kaiwatuika_y_moji=tf.kaiwatuika_y+13"]
[eval exp="tf.kaiwatuika_y_moji_2=tf.kaiwatuika_y_moji+15"]
[eval exp="tf.kaiwatuika_x_image=tf.kaiwatuika_x+10"]
[eval exp="tf.kaiwatuika_y_image=tf.kaiwatuika_y+10"]


;[image layer=2 page=fore storage="warning.png" name="kaiwatuika" x=&tf.kaiwatuika_x_image y=&tf.kaiwatuika_y_image]

[if exp="f.irain_heya!=1"]

[image layer=1 page=fore storage="attention.png" name="kaiwatuika" x=&tf.kaiwatuika_x y=&tf.kaiwatuika_y]
;[button graphic="button/tojiru.png" fix="true" name="kaiwatuika" clickse="tm2_switch001_macchi.ogg" storage="scenario_2/kaiwa_tuika.ks" x=&tf.kaiwatuika_x_tojiru y=&tf.kaiwatuika_y_tojiru]

[ptext layer=2 page=fore text="会話話題追加:" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji y=&tf.kaiwatuika_y_moji]
[ptext layer=2 page=fore text= &tf.kaiwaname[tf.tuika_num] name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji_2 y=&tf.kaiwatuika_y_moji]

[ptext layer=2 page=fore text="&f.kaiwawadai[tf.tuika_num][tf.kaiwa_num]" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji y=&tf.kaiwatuika_y_moji_2]



[elsif exp="f.irain_heya==1"]

;--------------


[if exp="f.event_main_14_days>0"]
[eval exp="tf.event_no  = 0"]
[elsif exp="f.event_main_15_days>0"]
[eval exp="tf.event_no  = 1"]
[elsif exp="f.event_main_16_days>0"]
[eval exp="tf.event_no  = 2"]
[endif]
;---------------
[if exp="f.kaiwa_tuika_kaisu[tf.tuika_num][tf.event_no]!=0"]

;ベース表示
[image layer=1 page=fore storage="attention.png" name="kaiwatuika" x=&tf.kaiwatuika_x y=&tf.kaiwatuika_y]
;[button graphic="button/tojiru.png" fix="true" name="kaiwatuika" clickse="tm2_switch001_macchi.ogg" storage="scenario_2/kaiwa_tuika.ks" x=&tf.kaiwatuika_x_tojiru y=&tf.kaiwatuika_y_tojiru]

[ptext layer=2 page=fore text="会話話題が" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji y=&tf.kaiwatuika_y_moji]


[ptext layer=2 page=fore text="&f.kaiwa_tuika_kaisu[tf.tuika_num][tf.event_no]" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji_2 y=&tf.kaiwatuika_y_moji]


[ptext layer=2 page=fore text="追加" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji_3 y=&tf.kaiwatuika_y_moji]

[ptext layer=2 page=fore text="&tf.kaiwaname[tf.tuika_num]" name="kaiwatuika" color="black" size=14 x=&tf.kaiwatuika_x_moji y=&tf.kaiwatuika_y_moji_2]
[endif]

[endif]

[eval exp="f.kaiwa_tuika_huda=1"]
[eval exp="f.kaiwa_tuika_first_sumi=1"]
[anim name="kaiwatuika" left="-=200" time=200]

[endmacro]

[macro name="kaiwa_tuika_end_heya"]
[wait time=500]
[free name="kaiwatuika" layer=2]
[free name="kaiwatuika" layer=1]
;[clearfix name="kaiwatuika"]
[eval exp="f.kaiwa_tuika_huda=0"]
[endmacro]





[macro name="kaiwa_tuika_end"]
*kaiwa_tuika
[anim name="kaiwatuika" left="+=200" time=200]
[eval exp="f.kaiwa_tuika_huda=0"]
[endmacro]



[macro name="approach_kekka"]
;仲間フラグと好感度アップ
[if exp="f.target_chara==1"]
[eval exp="f.friend = 1"]
[koukando1_rans]
[elsif exp="f.target_chara==2"]
[eval exp="f.friend = 2"]
[koukando1_lion]
[elsif exp="f.target_chara==3"]
[eval exp="f.friend = 3"]
[koukando1_kra]
[endif]
;デート中のフラグ
[eval exp="f.date_now = 1"]
[if exp="f.target_chara==1"]
[rans_exp_normal_warai]
[w]
[rans_exp_normal]
[elsif exp="f.target_chara==2"]
[lioness_face_normal]
[elsif exp="f.target_chara==3"]
[aho_face_normal]
[endif]

[endmacro]


[eval exp="tf.random=0"]
[eval exp="tf.reply=0"]
[iscript]

tf.random = function random(x){
  Math.floor( Math.random() * x) + 1
}

[endscript]



[return]
