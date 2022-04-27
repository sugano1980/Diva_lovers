

[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]


[if exp="f.disc_2==1"]
*epi3_ikou
;ディスク１、２のフラグを消去する
;[bg storage="black.png"]
[eval exp="f.disc_1=0"]
[eval exp="f.disc_2=0"]
[eval exp="f.disc_3=1"]
[eval exp="f.disc_num=3"]
 ;-------
;３も更新されてた場合ジャンプ
[eval exp="f.episode_flag=3"]
[call storage="scenario_2/item_get_macro.ks"]
[call storage="scenario_2/status_up_macro.ks"]
[iscript]
f.cusine =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
f.toast =[0,0,0,0,0];
f.cake[5]=0;
f.cake[6]=0;
f.cake[7] =0;
[endscript]
[fadeoutbgm time=6000]
[jump target=*episode_call]

[elsif exp="f.disc_3==1"]
;[message_settei_ad]
;to be continued........最終章「ウェスタ、王宮編」へ続く[p]
;f.s_wesuta=1
;f.s_oukyu=1
*epi8_ikou
;ディスク１、２のフラグを消去する
;[bg storage="black.png"]
[eval exp="f.disc_1=0"]
[eval exp="f.disc_2=0"]
[eval exp="f.disc_3=0"]
[eval exp="f.disc_4=1"]
[eval exp="f.disc_num=4"]
 ;-------
;３も更新されてた場合ジャンプ
[eval exp="f.episode_flag=8"]

;キャラエンドフラグ
[if exp="f.event_epi5_rans_ok==10"]
[eval exp="f.rans_flag=1"]
[endif]

[if exp="f.event_sub_14_mother_kaiwa==1"]
[eval exp="f.lion_flag=1"]
[endif]

[if exp="f.event_epi7_kra_ok==7"]
[eval exp="f.kra_flag=1"]
[endif]

[if exp="f.glif_battle_kizuna==1"]
[eval exp="f.glif_flag=1"]
[endif]

[iscript]

[endscript]

[fadeoutbgm time=6000]
[jump target=*episode_call]







[endif]
;--------













*end
[iscript]
location.reload()
[endscript]

[s]

;ここでエピソード判定ファイルに飛ぶ
*episode_call
[autosave]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_go]

