
[cm]
[clearfix]


[edit name="f.pass" longth="120" left="387" top="10" maxchars="6"]
[locate x=200 y=330 ]
[button graphic="button/kettei.png" name="f.pass" target=*commit x=600 y=10]

[iscript]
$(".text_box").val("");
[endscript]


[s]

*commit

[commit name="f.pass"]
[freeimage layer=1]

[if exp="f.pass=='divalo'"]
[eval exp="sf.tokuten=1"]
[playse storage="atari_koukaonlabo.ogg"]
[else]
[playse storage="hazure_koukaonlabo.ogg"]
[endif]

[clearfix]
[cm]

[jump storage="first.ks" target=*start]

*timeup

[clearfix]
[cm]
[jump storage="first.ks" target=*start]

[return]


