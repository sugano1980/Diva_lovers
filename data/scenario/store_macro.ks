

[macro name="upstatus_random"]


[message_settei_ad]
[iscript]
tf.upstatus = Math.floor( Math.random() * 3) + 1
[endscript]

[playse storage="item_status_up_onjin.ogg"]
[if exp="tf.upstatus==1"]

[eval exp="f.irain_tec=f.irain_tec+3"]

[cm]技術が３ポイントアップ！[l]

[elsif exp="tf.upstatus==2"]

[eval exp="f.irain_brain=f.irain_brain+3"]

[cm]頭脳が３ポイントアップ！[l]


[elsif exp="tf.upstatus==3"]

[eval exp="f.irain_charm=f.irain_charm+3"]

[cm]魅力が３ポイントアップ！[l]


[endif]



[endmacro]




[macro name="restaurant_choice"]



;どこのお店にしよう？
*restaurant_choice
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【どのお店にしよう？】

[glink target=*r_1 text="（魚料理のお店）" size=17 width=600 x=65 y=200]
[glink target=*r_2 text="（肉料理のお店）" size=17 width=600 x=65 y=260]
[glink target=*r_3 text="（野菜料理のお店）" size=17 width=600 x=65 y=320]


[s]

*r_1


 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_sakana]


*r_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_niku]


*r_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[jump target=*restaurant_choice_yasai]


*restaurant_choice_sakana
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【魚料理のどの店にしよう？】

[glink target=*sakana_1 text="（カジカジ亭）" size=17 width=600 x=65 y=200]
[glink target=*sakana_2 text="（ヒラヤマ亭）" size=17 width=600 x=65 y=260]
[glink target=*sakana_3 text="（オイカワ亭）" size=17 width=600 x=65 y=320]


[s]

*sakana_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_kajikaji=1"]
[kioku_kajikaji]
[jump target=*choice_end]
*sakana_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_hirayama=1"]
[kioku_hirayama]
[jump target=*choice_end]

*sakana_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_oikawa=1"]
[kioku_oikawa]
[jump target=*choice_end]


*restaurant_choice_niku
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【肉料理のどのお店にしよう？】


[glink target=*niku_1 text="（ロマナーデ）" size=17 width=600 x=65 y=200]
[glink target=*niku_2 text="（ベル族の牛）" size=17 width=600 x=65 y=260]
[glink target=*niku_3 text="（ムーン鶏）" size=17 width=600 x=65 y=320]


[s]

*niku_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_romana=1"]
[kioku_romana]
[jump target=*choice_end]

*niku_2
 [free name="sentakusi" layer=0]


[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_beruzoku=1"]
[kioku_beruzoku]
[jump target=*choice_end]

*niku_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_moon=1"]
[kioku_moon]
[jump target=*choice_end]




*restaurant_choice_yasai
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【野菜料理のどのお店にしよう？】



[glink target=*yasai_1 text="（ベジベジ食堂）" size=17 width=600 x=65 y=200]
[glink target=*yasai_2 text="（レストランポテトマニア）" size=17 width=600 x=65 y=260]
[glink target=*yasai_3 text="（キャロキャロ食堂）" size=17 width=600 x=65 y=320]


[s]

*yasai_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_bejibeji=1"]
[kioku_bejibeji]
[jump target=*choice_end]

*yasai_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_poteto=1"]
[kioku_poteto]
[jump target=*choice_end]

*yasai_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_kyarokyaro=1"]
[kioku_kyarokyaro]


*choice_end


[endmacro]



[macro name="restaurant_random_choice"]


;何料理のお店
[iscript]
f. restaurant= Math.floor(Math.random() * 2) + 1
[endscript]

[if exp="f.restaurant==1"]
;魚料理の中で店を選ぶ
[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_kajikaji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_hirayama=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_oikawa=1"]
[endif]


[elsif exp="f.restaurant==2"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_romana=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_beruzoku=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_moon=1"]
[endif]


[elsif exp="f.restaurant==3"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_bejibeji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_poteto=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_kyarokyaro=1"]
[endif]


[endif]








[endmacro]

[macro name="menu_choice"]


[bg storage="menu_haikei.png"]

[message_settei_ad]

#&f.name
「どの料理にしよう？」[p]
#
[message_kakusu_ad]

[if exp="f.r_kajikaji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_3.png" x=150 y=300]

[image layer=1 name="menu_moji" page=fore storage="kajituna.png" x=70 y=50]




[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_1 x=440 y=87]
[ptext layer=1 name="menu_moji" name="menu_moji" page=fore color="#000000" text="刺身盛り合わせ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カジカジマグロ定食" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カジカジマグロの漬け丼" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="海鮮丼" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="握り寿司盛り合わせ" face="antique" size="20" x=460 y=410]

[s]


[elsif exp="f.r_hirayama==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_1.png" x=80 y=300]

[image layer=1 name="menu_moji" page=fore storage="hirayama.png" x=90 y=0]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="平山ウオのフライ定食" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="たっぷりアジフライ定食" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="がめついホッケ定食" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ビッグエビフライ定食" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉厚帆立のバター焼き定食" face="antique" size="20" x=460 y=410]

[s]









[elsif exp="f.r_oikawa==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_2.png" x=90 y=200]

[image layer=1 name="menu_moji" page=fore storage="oikawa.png" x=70 y=80]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="サバ味噌煮" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カレイのミゾレ煮" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="及川の焼き魚定食" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="虹色あさりのアクアパッツァ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ニシンの醤油煮" face="antique" size="20" x=460 y=410]

[s]














[elsif exp="f.r_romana==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_4.png" x=150 y=300]

[image layer=1 name="menu_moji" page=fore storage="romanade.png" x=90 y=20]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ロマナ豚の生姜焼き" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚のしゃぶしゃぶ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="特選ロマナ豚カレー" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚のロールキャベツ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚カツ" face="antique" size="20" x=460 y=410]

[s]




[elsif exp="f.r_beruzoku==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_5.png" x=80 y=300]

[image layer=1 name="menu_moji" page=fore storage="beruushi.png" x=35 y=30]



[button graphic="button/toumei_2.png" width="300" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_1 x=420 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ベル族チーズのクラムチャウダー" face="antique" size="20" x=430 y=90]
[button graphic="button/toumei_2.png" width="300" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_2 x=420 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族チーズ入りのハンバーグ" face="antique" size="20" x=430 y=170]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛のビーフシチュー" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛ステーキ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛たん" face="antique" size="20" x=460 y=410]

[s]



[elsif exp="f.r_moon==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_6.png" x=150 y=350]

[image layer=1 name="menu_moji" page=fore storage="moon.png" x=80 y=30]



[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ムーン鶏のチキンカレー" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏のチキンソテー" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏のケチャップ焼き" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏の唐揚げ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏の南蛮漬け" face="antique" size="20" x=460 y=410]

[s]









[elsif exp="f.r_bejibeji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_7.png" x=160 y=380]

[image layer=1 name="menu_moji" page=fore storage="bejibeji.png" x=80 y=40]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="グリーンサラダ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="シーザーサラダ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="わかめサラダ" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="エビのシュリンプサラダ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉サラダ" face="antique" size="20" x=460 y=410]

[s]














[elsif exp="f.r_poteto==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_8.png" x=165 y=450]

[image layer=1 name="menu_moji" page=fore storage="poteto.png" x=90 y=100]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ポテトサラダ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="マッシュポテト" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="芋の煮っ転がし" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉じゃが" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="粉吹き芋" face="antique" size="20" x=460 y=410]



[s]

[elsif exp="f.r_kyarokyaro==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_9.png" x=160 y=350]

[image layer=1 name="menu_moji" page=fore storage="kyarokyaro.png" x=130 y=100]


[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="キャロルキャロットケーキ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜の唐揚げ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜の天ぷら" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜のあんかけ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ポトフ" face="antique" size="20" x=460 y=410]





[endif]


[s]
;-----------------------------------
*menu_kajikaji_1

[kioku_kajikaji_menu_1]
[cm][free name="menu_moji" layer=1]
[if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
　「刺身の盛り合わせか、いいね。俺もそれにしよう」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000]
[jump target=*end]
[else]
[jump target=*end]
[endif]


;------------------
*menu_kajikaji_2
[kioku_kajikaji_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「俺、マグロ好きなんだよね、君も好き？」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;---------------------
*menu_kajikaji_3
[kioku_kajikaji_menu_3]
[jump target=*end]
;----------------------
*menu_kajikaji_4
[kioku_kajikaji_menu_4]
[jump target=*end]
;---------------------
*menu_kajikaji_5
[kioku_kajikaji_menu_5]
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「あ、俺もそれにしようと思ってた。お寿司っておいしいよね」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------

*menu_hirayama_1
[kioku_hirayama_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「魚でも油で揚げればパンチあるよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------
*menu_hirayama_2
[kioku_hirayama_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「こう言うボリュームのあるのは好きだぜ。お前もか？」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------
*menu_hirayama_3
[kioku_hirayama_menu_3]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「ホッケが山盛りなんだぜ、この料理」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------
*menu_hirayama_4
[kioku_hirayama_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「エビもフライにすると最高だよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_hirayama_5
[kioku_hirayama_menu_5]
[jump target=*end]
;----------------------------


*menu_oikawa_1
[kioku_oikawa_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「魚を味噌で煮込むのは悪くない。私も同じメニューにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_oikawa_2
[kioku_oikawa_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「カレイの煮魚、お前も好物だったな」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_oikawa_3
[kioku_oikawa_menu_3]
[jump target=*end]
;--------------------------------
*menu_oikawa_4
[kioku_oikawa_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「あさりの料理だね、俺、これ好きだな。君も？」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;--------------------------------

*menu_oikawa_5
[kioku_oikawa_menu_5]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「にしんを醤油で煮込むのか。この料理もうまそうだな。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------



*menu_romana_1
[kioku_romana_menu_1]
[jump target=*end]
;--------------------------
*menu_romana_2
[kioku_romana_menu_2]
[jump target=*end]
;---------------------------
*menu_romana_3
[kioku_romana_menu_3]

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「カレーだな！やっぱりこれだよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;----------------------------
*menu_romana_4
[kioku_romana_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「ロールキャベツか。いいな。私も同じものを頼むとしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-------------------------------
*menu_romana_5
[kioku_romana_menu_5]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「このロマナ豚って揚げ物にすると最高に美味いんだよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_beruzoku_1
[kioku_beruzoku_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「クラムチャウダーか。悪くない選択だ。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;-----------------------------
*menu_beruzoku_2
[kioku_beruzoku_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「チーズ入りってのがまたいいよな！俺もこれ頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;------------------------------
*menu_beruzoku_3
[kioku_beruzoku_menu_3]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「牛肉の旨味が溶け出したシチューは絶品だ。私も同じものを頼もうと思っていた」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;-------------------------------
*menu_beruzoku_4
[kioku_beruzoku_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「この厚切りの肉を焼いたのがまたいいんだよな。俺は2つ頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;---------------------------------
*menu_beruzoku_5
[kioku_beruzoku_menu_5]
[jump target=*end]

;---------------------------------


*menu_moon_1

[kioku_moon_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「カレーにすりゃあなんだっていけるよな！俺も食う！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------------
*menu_moon_2
[kioku_moon_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「俺このチキンソテー好きなんだよね」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------

*menu_moon_3
[kioku_moon_menu_3]
[jump target=*end]

;------------------------------
*menu_moon_4
[kioku_moon_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「やっぱ揚げ物はいいよなー。俺は２０個頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_moon_5
[kioku_moon_menu_5]
[jump target=*end]
;------------------------------



*menu_bejibeji_1
[kioku_bejibeji_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「野菜がたくさん入っていて健康的なメニューだな。感心だ」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_bejibeji_2
[kioku_bejibeji_menu_2]
[jump target=*end]
;---------------------------
*menu_bejibeji_3
[kioku_bejibeji_menu_3]
[jump target=*end]
;----------------------------
*menu_bejibeji_4
[kioku_bejibeji_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「エビをサラダに入れるのっていいアイデアだよね」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------------------------------

*menu_bejibeji_5
[kioku_bejibeji_menu_5]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「サラダは好きじゃねえけど、肉が入ってるならいいな」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------------------------------------------
*menu_poteto_1

[kioku_poteto_menu_1]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「腹持ちもいいし、栄養バランスも優れている。いい選択だ」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------------------------------------------------
*menu_poteto_2
[kioku_poteto_menu_2]
[jump target=*end]
;--------------------------------------
*menu_poteto_3
[kioku_poteto_menu_3]
[jump target=*end]
;---------------------------------
*menu_poteto_4
[kioku_poteto_menu_4]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「こう言う、食べると落ち着く料理は好きだな」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------------
*menu_poteto_5
[kioku_poteto_menu_5]
[jump target=*end]
;---------------------------------
*menu_kyarokyaro_1

[kioku_kyarokyaro_menu_1]
[jump target=*end]
;--------------------------------
*menu_kyarokyaro_2
[kioku_kyarokyaro_menu_2]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「野菜は好きじゃねえけど、油で揚げるならいいな」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;--------------------------------
*menu_kyarokyaro_3
[kioku_kyarokyaro_menu_3]
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「野菜は好きじゃねえけど、天ぷらにすればいけるぜ！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------------
*menu_kyarokyaro_4
[kioku_kyarokyaro_menu_4]
[jump target=*end]
;------------------------------------------
*menu_kyarokyaro_5
[kioku_kyarokyaro_menu_5]
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「ポトフか。いいな。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------------------




*end

[cm][free name="menu_moji" layer=1]
[message_settei_ad]




[endmacro]


[macro name="restaurant_haikei"]

[if exp="f.irain_move==0"]

[playbgm storage="dinner_musmus.ogg"]

[else]

[playbgm storage="lunch_musmus.ogg"]

[endif]



[if exp="f.r_kajikaji==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_hirayama==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_oikawa==1&&f.irain_move==0"]

[bg storage="crerushokudou_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_yoru_tasogare.jpg'"]

[elsif exp="f.r_romana==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_beruzoku==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_moon==1&&f.irain_move==0"]

[bg storage="sakaba1_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_yoru_tasogare.jpg'"]


[elsif exp="f.r_bejibeji==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_poteto==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_kyarokyaro==1&&f.irain_move==0"]

[bg storage="sakaba2_kaiwa_yoru_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_yoru_tasogare.jpg'"]

[elsif exp="f.r_kajikaji==1"]

[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_hirayama==1"]
[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_oikawa==1"]
[bg storage="crerushokudou_tasogare.jpg"]
[eval exp="f.shokuji_haikei='crerushokudou_tasogare.jpg'"]
[elsif exp="f.r_romana==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]
[elsif exp="f.r_beruzoku==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]
[elsif exp="f.r_moon==1"]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba1_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_bejibeji==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_poteto==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]


[elsif exp="f.r_kyarokyaro==1"]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]

[eval exp="f.shokuji_haikei='sakaba2_kaiwa_tasogare.jpg'"]
[endif]




[endmacro]



[macro name="menu_choice_cafe"]


[bg storage="menu_haikei.png"]

[message_settei_ad]

#&f.name
「どれにしようかな？」[p]
#
[message_kakusu_ad]

[if exp="f.r_sweetvalue==1"]



[image layer=1 name="menu_moji" page=fore storage="sweet_value.png" x=70 y=20]




[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_1 x=440 y=87]
[ptext layer=1 name="menu_moji" name="menu_moji" page=fore color="#000000" text="ザッハトルテ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_2 x=440 y=147]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="フランチェスカパイケーキ" face="antique" size="20" x=460 y=150]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_3 x=440 y=207]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="スピルナパウンド" face="antique" size="20" x=460 y=210]
[button graphic="button/toumei_2.png" width="259" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_4 x=440 y=267]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="真っ赤な苺のショートケーキ" face="antique" size="20" x=460 y=270]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_5 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="モンブラン" face="antique" size="20" x=460 y=330]

[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_6 x=440 y=387]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="紅茶のシフォンケーキ" face="antique" size="20" x=460 y=390]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_7 x=440 y=447]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="フルーツタルト" face="antique" size="20" x=460 y=450]


[s]


[elsif exp="f.r_creammania==1"]

[image layer=1 name="menu_moji" page=fore storage="cream_mania.png" x=90 y=20]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_1 x=440 y=87]
[ptext layer=1 name="menu_moji" name="menu_moji" page=fore color="#000000" text="フルーツクリーム" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_2 x=440 y=147]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="クレール饅頭クリーム添え" face="antique" size="20" x=460 y=150]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_3 x=440 y=207]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="さっくりシュークリーム" face="antique" size="20" x=460 y=210]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_4 x=440 y=267]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="レインボークリーム" face="antique" size="20" x=460 y=270]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_5 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="チョコクラッシュクリーム" face="antique" size="20" x=460 y=330]

[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_6 x=440 y=387]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="クッキークラッシュクリーム" face="antique" size="20" x=460 y=390]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_value_7 x=440 y=447]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="チョコバナナクリーム" face="antique" size="20" x=460 y=450]


[s]


[endif]



*menu_value_1



[upstatus_random][jump target=*cafe_end]



*menu_value_2


[upstatus_random][jump target=*cafe_end]


*menu_value_3

[upstatus_random][jump target=*cafe_end]



*menu_value_4

[upstatus_random][jump target=*cafe_end]



*menu_value_5

[upstatus_random][jump target=*cafe_end]



*menu_value_6

[upstatus_random][jump target=*cafe_end]




*menu_cream_1

[upstatus_random][jump target=*cafe_end]



*menu_cream_2
[upstatus_random][jump target=*cafe_end]



*menu_cream_3
[upstatus_random][jump target=*cafe_end]



*menu_cream_4
[upstatus_random][jump target=*cafe_end]



*menu_cream_5
[upstatus_random][jump target=*cafe_end]



*menu_cream_6
[upstatus_random][jump target=*cafe_end]





*cafe_end
[cm][free name="menu_moji" layer=1]
[message_settei_ad]



[endmacro]





[macro name="store_money"]

[message_settei_ad]
「いらっしゃい、お嬢ちゃん！」[p]

[eval exp="f.store_season_1=1"]

[eval exp="f.money=100"]


*store_choice_1
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【購入しますか？】

[glink target=*store_c_1 text="（買う）" size=17 width=600 x=65 y=200]
[glink target=*store_c_2 text="（買わない）" size=17 width=600 x=65 y=260]

[s]

*store_c_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


[jump target=*store_first]

*store_c_2

 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*store_choice_end]


*store_first

[message_kakusu_ad]
;試験用
[eval exp="f.equip_item_1_stock=0"]
[eval exp="f.equip_item_2_stock=0"]
[eval exp="f.equip_item_3_stock=0"]
[eval exp="f.equip_item_4_stock=0"]
[eval exp="f.equip_item_5_stock=0"]
[eval exp="f.equip_item_6_stock=0"]
[eval exp="f.equip_item_7_stock=0"]
[eval exp="f.equip_item_8_stock=0"]
[eval exp="f.equip_item_9_stock=0"]
[eval exp="f.equip_item_10_stock=0"]
[eval exp="f.equip_item_11_stock=0"]
[eval exp="f.equip_item_12_stock=0"]
[eval exp="f.equip_item_13_stock=0"]
[eval exp="f.equip_item_14_stock=0"]
[eval exp="f.equip_item_15_stock=0"]
[eval exp="f.equip_item_16_stock=0"]
[eval exp="f.equip_item_17_stock=0"]
[eval exp="f.equip_item_18_stock=0"]
[eval exp="f.equip_item_19_stock=0"]
[eval exp="f.equip_item_20_stock=0"]
[eval exp="f.equip_item_21_stock=0"]
[eval exp="f.equip_item_22_stock=0"]
[eval exp="f.equip_item_23_stock=0"]
[eval exp="f.equip_item_24_stock=0"]
[eval exp="f.equip_item_25_stock=0"]
[eval exp="f.equip_item_26_stock=0"]
[eval exp="f.equip_item_27_stock=0"]
[eval exp="f.equip_item_28_stock=0"]
[eval exp="f.equip_item_29_stock=0"]
[eval exp="f.equip_item_30_stock=0"]
[eval exp="f.equip_item_31_stock=0"]
[eval exp="f.equip_item_32_stock=0"]
[eval exp="f.equip_item_33_stock=0"]
[eval exp="f.equip_item_34_stock=0"]
[eval exp="f.equip_item_35_stock=0"]



[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]





*store
[eval exp="tf.store_item_hyouji_1=0"]
[eval exp="tf.store_item_hyouji_2=0"]
[eval exp="tf.store_item_hyouji_3=0"]
[eval exp="tf.store_item_hyouji_4=0"]
[eval exp="tf.store_item_hyouji_5=0"]
[eval exp="tf.store_item_hyouji_6=0"]
[eval exp="tf.store_item_hyouji_7=0"]
[eval exp="tf.store_item_hyouji_8=0"]
[eval exp="tf.store_item_hyouji_9=0"]
[eval exp="tf.store_item_hyouji_10=0"]


[eval exp="tf.store_item_hyouji1_number=0"]
[eval exp="tf.store_item_hyouji2_number=0"]
[eval exp="tf.store_item_hyouji3_number=0"]
[eval exp="tf.store_item_hyouji4_number=0"]
[eval exp="tf.store_item_hyouji5_number=0"]
[eval exp="tf.store_item_hyouji6_number=0"]
[eval exp="tf.store_item_hyouji7_number=0"]
[eval exp="tf.store_item_hyouji8_number=0"]
[eval exp="tf.store_item_hyouji9_number=0"]
[eval exp="tf.store_item_hyouji10_number=0"]


;お金のウィンドウ表示

;お金
[image layer=1 page=fore storage="okane.png" name="money" x=600 y=110]
;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=620 y=120]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=650 y=120]


;戻るボタン
[image layer=1 page=fore storage="return.png" name="money" x=600 y=70]
[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_choice_end name="store" x=600 y=70]
[ptext layer=2 page=fore text="店を出る" face=antique name="store" size=15 x=618 y=75]



;販売アイテム表示

[eval exp="tf.store_window_x=50"]
[eval exp="tf.store_window_y=70"]

[image layer=1 page=fore storage="store_window.png" name="store" x=&tf.store_window_x y=&tf.store_window_y]
;[bg storage="config_back.png"]

;販売アイテムデータをマクロからダウンロード

[call storage="store_product_macro.ks"]
[call storage="store_product_para.ks"]

[store_product]
[product_hyouji]

[eval exp="tf.store_item_x=tf.store_window_x+60"]
[eval exp="tf.store_item_y=tf.store_window_y+50"]
[eval exp="tf.store_item_x_icon=tf.store_item_x-40"]

[eval exp="tf.store_price_y=tf.store_item_y-30"]
[eval exp="tf.store_item_x_price=tf.store_item_x+200"]

[eval exp="tf.store_item_x_have=tf.store_item_x_price+85"]

[ptext layer=2 page=fore text="値段" face=antique color="#330000" name="store" size=15 x=&tf.store_item_x_price y=&tf.store_price_y]

[ptext layer=2 page=fore text="所持数" face=antique color="#330000" name="store" size=15 x=&tf.store_item_x_have  y=&tf.store_price_y]


;------

;1,2行目
[if exp="f.store_item_number>1"]





;装備品アイコン
[if exp="tf.store_item_1_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y]
[elsif exp="tf.store_item_1_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_1 name="store_moji" x=&tf.store_item_x y=&tf.store_item_y]
[ptext layer=2 page=fore text=&tf.store_item_1_name_hyouji face=antique color="#330000" color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y]

[eval exp="tf.store_item_x_money=tf.store_item_x+200"]
[eval exp="tf.store_item_x_have=tf.store_item_x_money+100"]

[ptext layer=2 page=fore text=&tf.store_item_1_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y]

;所持数
[if exp="tf.store_item_1_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y]

[else]
[ptext layer=2 page=fore text=&tf.store_item_1_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y]
[endif]


;-------
;------

[eval exp="tf.store_item_y_2=tf.store_item_y+30"]

;装備品アイコン
[if exp="tf.store_item_2_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_2]
[elsif exp="tf.store_item_2_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_2]
[endif]


[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_2  name="store_moji_2" x=&tf.store_item_x y=&tf.store_item_y_2]
[ptext layer=2 page=fore text=&tf.store_item_2_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_2]

[ptext layer=2 page=fore text=&tf.store_item_2_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_2]

;所持数
[if exp="tf.store_item_2_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_2]

[else]
[ptext layer=2 page=fore text=&tf.store_item_2_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_2]
[endif]

;-------
[endif]




;3
[if exp="f.store_item_number>2"]

[eval exp="tf.store_item_y_3=tf.store_item_y_2+30"]

;------

;装備品アイコン
[if exp="tf.store_item_3_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_3]
[elsif exp="tf.store_item_3_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_3]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_3 name="store_moji_3" x=&tf.store_item_x y=&tf.store_item_y_3]
[ptext layer=2 page=fore text=&tf.store_item_3_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_3]

[ptext layer=2 page=fore text=&tf.store_item_3_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_3]

;所持数
[if exp="tf.store_item_3_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_3]

[else]
[ptext layer=2 page=fore text=&tf.store_item_3_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_3]
[endif]



;-------
[endif]




;4
[if exp="f.store_item_number>3"]

[eval exp="tf.store_item_y_4=tf.store_item_y_3+30"]

;------

;装備品アイコン
[if exp="tf.store_item_4_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_4]
[elsif exp="tf.store_item_4_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_4]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_4  name="store_moji_4" x=&tf.store_item_x y=&tf.store_item_y_4]
[ptext layer=2 page=fore text=&tf.store_item_4_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_4]

[ptext layer=2 page=fore text=&tf.store_item_4_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_4]

;所持数
[if exp="tf.store_item_4_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_4]

[else]
[ptext layer=2 page=fore text=&tf.store_item_4_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_4]
[endif]



;-------
[endif]



;5
[if exp="f.store_item_number>4"]

[eval exp="tf.store_item_y_5=tf.store_item_y_4+30"]

;------

;装備品アイコン
[if exp="tf.store_item_5_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_5]
[elsif exp="tf.store_item_5_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_5]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_5 name="store_moji_5" x=&tf.store_item_x y=&tf.store_item_y_5]
[ptext layer=2 page=fore text=&tf.store_item_5_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_5]

[ptext layer=2 page=fore text=&tf.store_item_5_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_5]

;所持数
[if exp="tf.store_item_5_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_5]

[else]
[ptext layer=2 page=fore text=&tf.store_item_5_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_5]
[endif]


;-------
[endif]


;6
[if exp="f.store_item_number>5"]

[eval exp="tf.store_item_y_6=tf.store_item_y_5+30"]

;------

;装備品アイコン
[if exp="tf.store_item_6_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_6]
[elsif exp="tf.store_item_6_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_6]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_6 name="store_moji_6" x=&tf.store_item_x y=&tf.store_item_y_6]
[ptext layer=2 page=fore text=&tf.store_item_6_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_6]

[ptext layer=2 page=fore text=&tf.store_item_6_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_6]

;所持数
;所持数
[if exp="tf.store_item_6_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_6]

[else]
[ptext layer=2 page=fore text=&tf.store_item_6_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_6]
[endif]

;-------

[endif]


;7
[if exp="f.store_item_number>6"]

[eval exp="tf.store_item_y_7=tf.store_item_y_6+30"]

;------

;装備品アイコン
[if exp="tf.store_item_7_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_7]
[elsif exp="tf.store_item_7_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_7]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_7 name="store_moji_7" x=&tf.store_item_x y=&tf.store_item_y_7]
[ptext layer=2 page=fore text=&tf.store_item_7_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_7]

[ptext layer=2 page=fore text=&tf.store_item_7_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_7]

;所持数
;所持数
[if exp="tf.store_item_7_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_7]

[else]
[ptext layer=2 page=fore text=&tf.store_item_7_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_7]
[endif]

;-------
[endif]



;8
[if exp="f.store_item_number>7"]

[eval exp="tf.store_item_y_8=tf.store_item_y_7+30"]

;------

;装備品アイコン
[if exp="tf.store_item_8_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_8]
[elsif exp="tf.store_item_8_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_8]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_8 name="store_moji_8" x=&tf.store_item_x y=&tf.store_item_y_8]
[ptext layer=2 page=fore text=&tf.store_item_8_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_8]

[ptext layer=2 page=fore text=&tf.store_item_8_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_8]

;所持数
;所持数
[if exp="tf.store_item_8_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_8]

[else]
[ptext layer=2 page=fore text=&tf.store_item_8_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_8]
[endif]

;-------

[endif]


;9
[if exp="f.store_item_number>8"]

[eval exp="tf.store_item_y_9=tf.store_item_y_8+30"]

;------

;装備品アイコン
[if exp="tf.store_item_9_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_9]
[elsif exp="tf.store_item_9_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_9]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_9 name="store_moji_9" x=&tf.store_item_x y=&tf.store_item_y_9]
[ptext layer=2 page=fore text=&tf.store_item_9_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_9]

[ptext layer=2 page=fore text=&tf.store_item_9_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_9]

;所持数
;所持数
[if exp="tf.store_item_9_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_9]

[else]
[ptext layer=2 page=fore text=&tf.store_item_9_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_9]
[endif]

;-------

[endif]





;10
[if exp="f.store_item_number>9"]

[eval exp="tf.store_item_y_10=tf.store_item_y_9+30"]

;------

;装備品アイコン
[if exp="tf.store_item_10_type_hyouji=='hair'"]
[image layer=2 page=fore storage="hair_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_10]
[elsif exp="tf.store_item_10_type_hyouji=='equip'"]
[image layer=2 page=fore storage="equip_icon.png" name="store" x=&tf.store_item_x_icon y=&tf.store_item_y_10]
[endif]

[button graphic="button/toumei.png" enterimg="button/toumei.png" target=*store_item_10 name="store_moji_10" x=&tf.store_item_x y=&tf.store_item_y_10]
[ptext layer=2 page=fore text=&tf.store_item_10_name_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x y=&tf.store_item_y_10]

[ptext layer=2 page=fore text=&tf.store_item_10_value_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_money y=&tf.store_item_y_10]

;所持数
;所持数
[if exp="tf.store_item_10_stock_hyouji==0"]
[ptext layer=2 page=fore text="0" face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_10]

[else]
[ptext layer=2 page=fore text=&tf.store_item_10_stock_hyouji face=antique color="#330000" name="store" size=20 x=&tf.store_item_x_have y=&tf.store_item_y_10]
[endif]

;-------

[endif]

;パラメータ表示
[eval exp="tf.icon_para_y=tf.store_item_y-35"]
[eval exp="tf.charm_x=tf.store_item_x_have+130"]
[eval exp="tf.brain_x=tf.store_item_x_have+90"]
[eval exp="tf.tec_x=tf.store_item_x_have+50"]

[image layer=2 page=fore storage="tec_icon.png" x=&tf.tec_x y=&tf.icon_para_y]
[image layer=2 page=fore storage="brain_icon.png" x=&tf.brain_x y=&tf.icon_para_y]
[image layer=2 page=fore storage="charm_icon.png" x=&tf.charm_x y=&tf.icon_para_y]

[eval exp="tf.store_explain_y=390"]

[eval exp="tf.store_explain_simbol_x=tf.store_item_x-30"]
[eval exp="tf.store_explain_simbol_y=tf.store_explain_y-10"]
[image layer=2 page=fore storage="explain_wing.png" name="store" x=&tf.store_explain_simbol_x y=&tf.store_explain_simbol_y]




[s]







*store_item_1

[cm]

[if exp="tf.store_item_1==1"]
[jump target=*buy_1]
[endif]

;ワンクリックでは説明のみ



[ptext layer=2 page=fore text="&tf.store_item_explain_1" face=antique color="#330000" name="item_suuti" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti" x=&tf.store_key y=&tf.store_item_y]


;パラメータ表示
[skill_calc_store_1_current_1]

[eval exp="tf.store_item_1=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]




[free name="store" layer=2]

[jump target=*store]






*buy_1
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_1==1&&tf.store_item_1_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]
[clearfix]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_1]

;お金を減らす
[playse storage="store_money_koukaonlabo.ogg"]
[money_siharai_1]

[eval exp="tf.store_item_1=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------

*store_item_2

[cm]

[if exp="tf.store_item_2==1"]
[jump target=*buy_2]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_2" face=antique color="#330000" name="item_suuti_2" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_2" x=&tf.store_key y=&tf.store_item_y_2]
;パラメータ表示
[skill_calc_store_2_current_1]


[eval exp="tf.store_item_2=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_2
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_2==1&&tf.store_item_2_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]


[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_2]

;お金を減らす
[money_siharai_2][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_2=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------




;------------------------------------------------------------------------------

*store_item_3


[cm]

[if exp="tf.store_item_3==1"]
[jump target=*buy_3]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_3" face=antique color="#330000" name="item_suuti_3" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_3" x=&tf.store_key y=&tf.store_item_y_3]

;パラメータ表示
[skill_calc_store_3_current_1]

[eval exp="tf.store_item_3=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_3
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_3==1&&tf.store_item_3_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]


[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_3]

;お金を減らす
[money_siharai_3][playse storage="store_money_koukaonlabo.ogg"]
[eval exp="tf.store_item_3=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------




;------------------------------------------------------------------------------
*store_item_4



[cm]

[if exp="tf.store_item_4==1"]
[jump target=*buy_4]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_4" face=antique color="#330000" name="item_suuti_4" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_4" x=&tf.store_key y=&tf.store_item_y_4]

;パラメータ表示
[skill_calc_store_4_current_1]



[eval exp="tf.store_item_4=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_4
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_4==1&&tf.store_item_4_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]


[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_4]

;お金を減らす
[money_siharai_4][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_4=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------


*store_item_5

[cm]

[if exp="tf.store_item_5==1"]
[jump target=*buy_5]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_5" face=antique color="#330000" name="item_suuti_5" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_5" x=&tf.store_key y=&tf.store_item_y_5]

;パラメータ表示
[skill_calc_store_5_current_1]

[eval exp="tf.store_item_5=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_5
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_5==1&&tf.store_item_5_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]

[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_5]

;お金を減らす
[money_siharai_5][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_5=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------

*store_item_6



[cm]

[if exp="tf.store_item_6==1"]
[jump target=*buy_6]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_6" face=antique color="#330000" name="item_suuti_6" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_6" x=&tf.store_key y=&tf.store_item_y_6]

;パラメータ表示
[skill_calc_store_6_current_1]

[eval exp="tf.store_item_6=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_6
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_6==1&&tf.store_item_6_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]

[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_6]

;お金を減らす
[money_siharai_6][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_6=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------

*store_item_7

[cm]

[if exp="tf.store_item_7==1"]
[jump target=*buy_7]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_7" face=antique color="#330000" name="item_suuti_7" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_7" x=&tf.store_key y=&tf.store_item_y_7]

;パラメータ表示
[skill_calc_store_7_current_1]


[eval exp="tf.store_item_7=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_7
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_7==1&&tf.store_item_7_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]


[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_7]

;お金を減らす
[money_siharai_7][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_7=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------

*store_item_8


[cm]

[if exp="tf.store_item_8==1"]
[jump target=*buy_8]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_8" face=antique color="#330000" name="item_suuti_8" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_8" x=&tf.store_key y=&tf.store_item_y_8]

;パラメータ表示
[skill_calc_store_8_current_1]


[eval exp="tf.store_item_8=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_8
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_8==1&&tf.store_item_8_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]

[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_8]

;お金を減らす
[money_siharai_8][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_8=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------


;-------------------------------------------------------------------------------
*store_item_9



[cm]

[if exp="tf.store_item_9==1"]
[jump target=*buy_9]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_1" face=antique color="#330000" name="item_suuti_9" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_9" x=&tf.store_key y=&tf.store_item_y_9]

;パラメータ表示
[skill_calc_store_9_current_1]


[eval exp="tf.store_item_9=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]
[elsif exp="tf.store_item_10>0"]
[free name="item_suuti_10" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_1=0"]
[eval exp="tf.store_item_10=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_9
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_9==1&&tf.store_item_9_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]


[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_9]

;お金を減らす
[money_siharai_9][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_9=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------

*store_item_10



[cm]

[if exp="tf.store_item_10==1"]
[jump target=*buy_10]
[endif]

;ワンクリックでは説明のみ

[ptext layer=2 page=fore text="&tf.store_item_explain_10" face=antique color="#330000" name="item_suuti_10" size=20 x=&tf.store_item_x y=&tf.store_explain_y]
[eval exp="tf.store_key=tf.store_item_x-9"]
[image layer=2 page=fore storage="key_cursor.png" name="item_suuti_10" x=&tf.store_key y=&tf.store_item_y_10]


;パラメータ表示
[skill_calc_store_10_current_1]

[eval exp="tf.store_item_10=1"]
;他のアイテムの説明が表示してあれば消去
;-------------
[if exp="tf.store_item_2>0"]
[free name="item_suuti_2" layer=2]
[elsif exp="tf.store_item_3>0"]
[free name="item_suuti_3" layer=2]
[elsif exp="tf.store_item_4>0"]
[free name="item_suuti_4" layer=2]
[elsif exp="tf.store_item_5>0"]
[free name="item_suuti_5" layer=2]
[elsif exp="tf.store_item_6>0"]
[free name="item_suuti_6" layer=2]
[elsif exp="tf.store_item_7>0"]
[free name="item_suuti_7" layer=2]
[elsif exp="tf.store_item_8>0"]
[free name="item_suuti_8" layer=2]
[elsif exp="tf.store_item_9>0"]
[free name="item_suuti_9" layer=2]
[elsif exp="tf.store_item_1>0"]
[free name="item_suuti" layer=2]

[endif]

;--------------

;他のアイテム欄のマーカーを消去と同時にフラグも消去しておく
[eval exp="tf.store_item_2=0"]
[eval exp="tf.store_item_3=0"]
[eval exp="tf.store_item_4=0"]
[eval exp="tf.store_item_5=0"]
[eval exp="tf.store_item_6=0"]
[eval exp="tf.store_item_7=0"]
[eval exp="tf.store_item_8=0"]
[eval exp="tf.store_item_9=0"]
[eval exp="tf.store_item_1=0"]



[free name="store" layer=2]

[jump target=*store]






*buy_10
;購入手続きへ
[cm]
;お金が足りない時;---------------------------------------------------------
[if exp="tf.store_item_10==1&&tf.store_item_10_value_hyouji>f.money"]
[message_settei_ad]お金が足りないよ。[l][message_kakusu_ad]



[freeimage layer=2]
[jump target=*store]
[endif]
;---------------------------------------------------------------------------------




;アイテムの増減
[item_get_10]

;お金を減らす
[money_siharai_10][playse storage="store_money_koukaonlabo.ogg"]

[eval exp="tf.store_item_10=0"]
[freeimage layer=0]

[freeimage layer=2]
[jump target=*store]







;----------------------------------------------------------------------------------------------------------------------------------------------------





















*store_choice_end

[cm]
[message_settei_ad]

「またきてくれよな！」[l]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[message_kakusu_ad]

[endmacro]








[return]