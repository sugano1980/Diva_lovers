

;装備変更の中継シナリオ



[jump storage="scenario_2/equip_change.ks"]


*modoru
[eval exp="f.equip_change=0"]
[jump storage="scenario_2/equip_prepare_jump.ks"]

[if exp="f.curnival_bunki==1"]
[jump storage="scenario_2/episode/curnival_bunki.ks" target=*equip_end]
[elsif exp="f.event_main_10_rans==1"]
[jump storage="scenario_2/episode/rans_curnival.ks" target=*gate_sentou]
[elsif exp="f.event_main_10_lion==1"]
[jump storage="scenario_2/episode/lion_curnival.ks" target=*gate_sentou]
[elsif exp="f.event_main_10_kra==1"]
[jump storage="scenario_2/episode/kra_curnival.ks" target=*gate_sentou]
[elsif exp="f.event_main_10==1"]
[jump storage="scenario_2/episode/normal_curnival.ks" target=*gate_sentou]


[endif]




[return]