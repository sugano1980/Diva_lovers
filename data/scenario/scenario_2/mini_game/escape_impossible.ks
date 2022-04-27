
*first
[if exp="f.rusia_battle==1&&f.tougijou!=1"]
逃げられない！[p]
[clearfix_menu]
[monster_attack_prepare]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]

[if exp="f.monster_igyou==1&&f.tougijou!=1"]
逃げられない！[p]
[clearfix_menu]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]



[if exp="f.event_main_10==1&&f.tougijou!=1"]
逃げられない！[p]
[clearfix_menu]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]

[if exp="f.event_main_5_1==1&&f.tougijou!=1"]
逃げられない！[p]
[clearfix_menu]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]


[if exp="f.event_main_3_days>8&&f.tougijou!=1"]
逃げられない！[p]
[clearfix_menu]
[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[endif]

;[jump storage="scenario_2/mini_game/battle2.ks" target=*monster_turn]
[jump storage="scenario_2/mini_game/battle2.ks" target=*escape_yes]