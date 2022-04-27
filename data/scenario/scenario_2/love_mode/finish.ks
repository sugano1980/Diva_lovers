*timeup

[timer_delete]

[action_hyouji_delete]
[eval exp="tf.act_turn=0"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*love_mode]


*command_0
;見つめる
[if exp="tf.act_turn==1&&tf.act_num==1"]
[timer_delete]
[atari_shori]
[endif]

[eval exp="tf.irain_act=0"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_1
;微笑む

[if exp="tf.act_turn==1&&tf.act_num==2"]
[timer_delete][atari_shori]
[endif]

[eval exp="tf.irain_act=1"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_2
;上目遣い
[if exp="tf.act_turn==1&&tf.act_num==3"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=2"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_3
;首傾げる
[if exp="tf.act_turn==1&&tf.act_num==4"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=3"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_4
;そっぽを向く
[if exp="tf.act_turn==1&&tf.act_num==5"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=4"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_5
;触れる
[if exp="tf.act_turn==1&&tf.act_num==6"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=5"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_6
;手を繋ぐ
[if exp="tf.act_turn==1&&tf.act_num==7"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=6"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_7
;寄りかかる
[if exp="tf.act_turn==1&&tf.act_num==8"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=7"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_8
;腕ぎゅ
[if exp="tf.act_turn==1&&tf.act_num==9"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=8"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_9
;悪戯
[if exp="tf.act_turn==1&&tf.act_num==10"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=9"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]

*command_10
;？？？
[if exp="tf.act_turn==1&&tf.act_num==11"]
[timer_delete][atari_shori]
[endif]
[eval exp="tf.irain_act=10"]
[jump storage="scenario_2/love_mode/love_mode_run.ks" target=*react]
*command_11
