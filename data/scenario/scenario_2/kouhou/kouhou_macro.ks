
[macro name="kisi_anime"]

[if exp="tf.kouhou_event>1"]
[jump target=*end]
[endif]
*kisi_anime
[eval exp="tf.kisi_kaisuu=5"]
[eval exp="tf.kisi_x=800"]
*kisi_hyouji
[eval exp="tf.kisi_y=200"]

;出撃騎士表示
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[eval exp="tf.kisi_y=tf.kisi_y+50"]
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[eval exp="tf.kisi_y=tf.kisi_y+50"]
[image layer=0 page=fore storage="kouhou/kisi_kiiro.gif" height="67" width="55" name="kisi" x=&tf.kisi_x y=&tf.kisi_y]

[if exp="tf.kisi_kaisuu>0"]
[eval exp="tf.kisi_kaisuu=tf.kisi_kaisuu-1"]
[eval exp="tf.kisi_x=tf.kisi_x+50"]
[jump target=*kisi_hyouji]
[endif]



;隊長騎士表示
[eval exp="tf.kisi_x_t=tf.kisi_x-350"]
[eval exp="tf.kisi_y_t=tf.kisi_y-50"]
[image layer=0 page=fore storage="kouhou/kisi_midori_g.gif" height="67" width="55" name="kisi_t" x=&tf.kisi_x_t y=&tf.kisi_y_t]

;アニメーションで出撃していく
[anim name="kisi" left="-=1000" time=7000]
[anim name="kisi_t" left="-=1000" time=7000]
[wait time=5000]
[free name="kisi" layer=0]
[free name="kisi_t" layer=0]
;イベント計算
[kouhou_random_keisan]
[if exp="tf.kouhou_event==1"]
[jump target=*kisi_anime]
[endif]
*end
[endmacro]



[macro name="kisi_onaka"]
;onaka
[image layer=0 page=fore storage="kouhou/pan_anime.gif" name="kisi_o" x=714 y=350]
[image layer=0 page=fore storage="kouhou/pan_anime.gif" name="kisi_o" x=649 y=350]
[image layer=0 page=fore storage="kouhou/pan_anime.gif" name="kisi_o" x=584 y=350]
[image layer=0 page=fore storage="kouhou/pan_anime.gif" name="kisi_o" x=519 y=350]


[image layer=0 page=fore storage="kouhou/kisi_onaka.gif" height="67" width="55" name="kisi_o" x=705 y=390]
[image layer=0 page=fore storage="kouhou/kisi_onaka.gif" height="67" width="55" name="kisi_o" x=640 y=390]
[image layer=0 page=fore storage="kouhou/kisi_onaka.gif" height="67" width="55" name="kisi_o" x=575 y=390]
[image layer=0 page=fore storage="kouhou/kisi_onaka.gif" height="67" width="55" name="kisi_o" x=510 y=390]


[endmacro]

[macro name="onaka_delete"]
[free name="kisi_o" layer=0]
[endmacro]



[macro name="kisi_kega"]
;kega
[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=712 y=5]
[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=617 y=5]
[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=520 y=5]

[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=703 y=32]
[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=608 y=32]
[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=511 y=32]

[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=712 y=100]
[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=617 y=100]
[image layer=0 page=fore storage="kouhou/kega.gif" name="kisi_k" x=520 y=100]


[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=703 y=135]
[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=608 y=135]
[image layer=0 page=fore storage="kouhou/kisi_kega.png" height="67" width="55" name="kisi_k" x=511 y=135]


[endmacro]

[macro name="kega_delete"]
[free name="kisi_k" layer=0]
[endmacro]


;物資
[macro name="busshi"]
[eval exp="tf.busshi_kaisuu=9"]
[eval exp="tf.busshi_x=120"]
[eval exp="tf.busshi_y=410"]

*busshi_hyouji
[if exp="tf.busshi_kaisuu==4"]
[eval exp="tf.busshi_y=470"]
[eval exp="tf.busshi_x=120"]
[endif]
[image layer=0 page=fore storage="kouhou/busshi.png" height=102 width=89 name="busshi" x=&tf.busshi_x y=&tf.busshi_y]


[if exp="tf.busshi_kaisuu>0"]
[eval exp="tf.busshi_x=tf.busshi_x+60"]
[eval exp="tf.busshi_kaisuu=tf.busshi_kaisuu-1"]
[jump target=*busshi_hyouji]
[endif]


[endmacro]

[macro name="busshi_delete"]
[if exp="tf.busshi_hyouji_0>0"]
[eval exp="tf.busshi_hyouji_0=0"]
[free name="busshi" layer=0]
[endif]
[free name="busshi" layer=0]
[endmacro]


;ランダム計算
[macro name="kouhou_random_keisan"]
[eval exp="tf.kouhou_event =5"]

[iscript]
tf.kouhou_event = Math.floor( Math.random() * tf.kouhou_event) + 1
[endscript]

[if exp="tf.kouhou_event==2"]
[eval exp="tf.kisi_onaka=1"]
[kisi_onaka]
[jump storage="scenario_2/kouhou/kouhou_command.ks"]
;
[elsif exp="tf.kouhou_event==3"]
[eval exp="tf.kisi_kega=1"]
[kisi_kega]
[jump storage="scenario_2/kouhou/kouhou_command.ks"]

[elsif exp="tf.kouhou_event==4"]
[eval exp="tf.kisi_busshi=1"]
[busshi_delete]
[jump storage="scenario_2/kouhou/kouhou_command.ks"]

[endif]

[endmacro]

[macro name="gauge_width"]


[iscript]
tf.intent = tf.gauge_how/5;
[endscript]

[eval exp="tf.gauge_size_h =24 "]
[eval exp="tf.gauge_size_w =200/20*tf.intent "]

[endmacro]


[macro name="end_gauge_width"]
[iscript]
tf.intent_e = tf.gauge_how_e*10;
[endscript]

[eval exp="tf.gauge_size_h =24 "]
[eval exp="tf.gauge_size_w_e =600-tf.intent_e "]

[if exp="tf.gauge_size_w_e<395&&tf.size_sumi!=1&&tf.size_sumi!=2"]
[eval exp="tf.gauge_e_x_i=tf.gauge_e_x_i+20"]
[eval exp="tf.size_sumi=1"]
[endif]

[if exp="tf.gauge_size_w_e<181&&tf.size_sumi==1"]
[eval exp="tf.gauge_e_x_i=tf.gauge_e_x_i+20"]
[eval exp="tf.size_sumi=2"]
[endif]

[endmacro]




[return]
