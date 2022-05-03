[anten][message_kakusu_ad][message_settei]
[cm][eval exp="f.s_wesuta=1"][refresh_hanyou]
[showmenubutton]
[r][r][r][r][r]研究都市ウェスタ[l]
[hidemenubutton][cm]

[jump storage="scenario_2/episode/epi9_w.ks"]

*last_scenario


[if exp="f.episode_flag==11&&f.kra_flag==1"]
*epi_kra
[anten][message_kakusu_ad][message_settei]
[cm][refresh_hanyou]
[showmenubutton]

[r][r][r][r][r]クライストルート　蒼き魔剣の主[l]
[hidemenubutton][cm]
[message_settei_ad]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*last_scenario_2]



[elsif exp="f.episode_flag==11&&f.lion_flag==1"]
*epi_lion
[anten][message_kakusu_ad][message_settei]
[cm][refresh_hanyou]
[showmenubutton]
[r][r][r][r][r]ライオネスルート　残酷な真実[l]
[hidemenubutton][cm]
[message_settei_ad]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*last_scenario_2]

[elsif exp="f.episode_flag==11&&f.rans_flag==1"]
*epi_rans
[anten][message_kakusu_ad][message_settei]
[cm][refresh_hanyou]
[showmenubutton]
[r][r][r][r][r]ランスロットルート　気まずい再会[l]
[hidemenubutton][cm]
[message_settei_ad]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*last_scenario_2]

[endif]