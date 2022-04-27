[eval exp="f.yatai_kaisuu=f.yatai_kaisuu+1"]
[button_clear]
[snowfall_0]

[if exp="f.yatai==1"]
[eval exp="f.curnival_yatai=1"]

[store_money]

[jump target=*modoru]

[elsif exp="f.kujibiki==1"]
[eval exp="f.yatai_kaisuu=f.yatai_kaisuu+1"]

[jump storage="scenario_2/mini_game/kujibiki.ks"]

[elsif exp="f.kingyo==1"]
[eval exp="f.yatai_kaisuu=f.yatai_kaisuu+1"]

[jump storage="scenario_2/mini_game/mini_game.ks"]

[elsif exp="f.monster==1"]
[eval exp="f.yatai_kaisuu=f.yatai_kaisuu+1"]

[jump storage="scenario_2/mini_game/hako_game.ks"]

[elsif exp="f.soubi==1"]
[eval exp="f.yatai_kaisuu=f.yatai_kaisuu+1"]
[eval exp="f.store_curnival_sale=1"]


[if exp="f.friend==1||f.friend==3"]
[eval exp="f.muryou=1"]
[endif]

[store_money]

[else]

[endif]



*modoru
[fadeoutbgm time=1000]
[refresh_hanyou]
[if exp="f.curnival_yoru==1"]
[bg storage="crerumatinaka3_yoru_tasogare.jpg" time=50]
[else]
[bg storage="crerumatinaka3_tasogare.jpg" time=50]
[endif]
[snowfall]
[button_hyouji]
[message_settei_ad]
[playbgm storage="maturi_musmus.ogg"]
[eval exp="f.curnival_yatai=0"]
[eval exp="f.store_curnival_sale=0"]
[if exp="f.curnival_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*play_end]
[elsif exp="f.curnival_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*play_end]
[elsif exp="f.curnival_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*play_end]
[else]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*play_end]
[endif]




