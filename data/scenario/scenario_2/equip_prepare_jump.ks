


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
[elsif exp="f.event_epi5_rans_ok==9"]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*change_end]
[elsif exp="f.episode_flag==7"]
[jump storage="scenario_2/episode/epi7.ks" target=*equip]
[endif]
