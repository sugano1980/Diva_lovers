

[macro name="date_osasoi"]


;[snowfall_0]
[message_settei_ad]
#&f.name
「あ、[chara]・・・」[p]
#

[chara_date_live2d]
;[call storage="scenario_2/date/date_sel_serihu_data.ks"]
[call storage="scenario_2/date/date_macro.ks"]
;[call storage="scenario_2/date/date_sel_macro.ks"]
[loadjs storage="date_sel_serihu_data.js"]
[loadjs storage="date_sel_serihu_data_2.js"]
[call storage="scenario_2/date/date_sel_serihu_data.ks"]
[serihu_chara]

;声をかけるか選択肢
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【声をかける？】

[glink target=*koe_1 text="（声をかける）" size=17 width=600 x=65 y=200]
[glink target=*koe_2 text="（何もしない）" size=17 width=600 x=65 y=260]

[if exp="f.target_chara==1"]
[eval exp="f.friend_n='ランスロット'"]
[elsif exp="f.target_chara==2"]
[eval exp="f.friend_n='ライオネス'"]
[elsif exp="f.target_chara==3"]
[eval exp="f.friend_n='クライスト'"]
[endif]

[s]

*koe_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#&f.name
「[emb exp=f.friend_name]！」[p]
[friend_hentou]
[jump target=*owari]




*koe_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[live2d_delete_all][live2d_off]



[endmacro]



[macro name="friend_hentou"]




[friend_hannou]

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【えーと・・・】

[glink target=*sasoi_1 text="（今からどこか行かない？）" size=17 width=600 x=65 y=200]
[glink target=*sasoi_2 text="（何してたの？）" size=17 width=600 x=65 y=260]

[s]

*sasoi_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[if exp="f.event_epi5_rans_ok>0&&f.event_epi5_rans_ok<8||f.event_main_15_days>0&&f.event_rans_search_yes==-1"]
[if exp="f.target_chara==2"]
[lioness_face_mehuse_dai]
#ライオネス
「悪いが・・・そんな気分じゃねえ」[p]
#
#&f.name
「あ・・・ごめんね、そうだよね・・・」[p]
#
#ライオネス
「気にすんな・・・お前のせいじゃねえ」[p]
#
#&f.name
（ライオネス・・・）[p]
#
[live2d_delete_all][live2d_off]
[jump target =*owari]
[endif]
[endif]
[friend_sasoi_kekka]

[jump target =*owari]

*sasoi_2
[free name="sentakusi" layer=0]
[cm][ka]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[friend_zatudan_serihu]

[live2d_delete_all][live2d_off]

*owari

[endmacro]


[return]
