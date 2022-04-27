

[if exp="f.kyuujitu==1"]
[jump target=*font]
[else]
[return]
[endif]

*font
;フォントサイズ
[if exp="tf.font==19"]
[deffont size="20"]
[resetfont]
[elsif exp="tf.font==17"]
[deffont size="17"]
[resetfont]
[else]
[deffont size="15"]
[resetfont]
[endif]

[return]