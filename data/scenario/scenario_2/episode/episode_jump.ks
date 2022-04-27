[message_settei_ad]

セーブしますか？[p]

*save

【セーブしますか？・・・】

[glink target=*save_yes text="（セーブする）" size=17 width=600 x=65 y=200]
[glink target=*save_no text="（しない）" size=17 width=600 x=65 y=260]


[s]

*save_yes
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[showsave]
[jump target=*scenario_choice]

*save_no
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*scenario_choice]


;ここからは行替え厳禁
*scenario_choice


[jump storage="scenario_2/episode/episode_choice.ks"]


