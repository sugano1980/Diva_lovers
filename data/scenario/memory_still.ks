



*start

[bg storage="kaigan_ac.jpg"]





[button graphic="kaisou.jpg" clickse="tm2_switch001_macchi.ogg" target=*kaisou x=320 y=30]



[button graphic="still.jpg" clickse="tm2_switch001_macchi.ogg" target=*still x=320 y=130]


[button graphic="modoru_kaisou.jpg" clickse="tm2_switch001_macchi.ogg" target=*modoru x=320 y=130]



*kaisou
[stopbgm]
[layopt layer=message1 visible=false]
[jump storage="episode_k/collection.ks"]

*still
[stopbgm]
[layopt layer=message1 visible=false]
[jump storage="episode_k/memory_still.ks"]





*modoru

[freeimage layer=3]
@clearfix name="kinou_button"
@clearfix name="role_button"
[cm]
[jump storage="first.ks"]


