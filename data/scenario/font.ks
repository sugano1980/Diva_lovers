

[if exp="f.kyuujitu==1"]
[jump target=*font]
[else]
[return]
[endif]

*font
;�t�H���g�T�C�Y
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