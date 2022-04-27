*start
[cm]

[cm]






*uranai
;メッセージ画面の表示
[message_settei_ad_uranai]


;背景素材のプリロード
[preload storage="data/bgimage/black.png"]


;占い画面サンプル



;背景変更
[bg storage="hune_naka_tasogare.jpg" time=50]

;ＢＧＭを鳴らす
[stopbgm]
[playbgm storage="uranai/hurubitamelody_ontama.ogg"]

[if exp="tf.borongo!=1"]
[chara_show name="borongo"]
[borongo][r]
「はあーい？今日は恋占いね？[w]
[chara_mod name="borongo" face="warai_kutiake"]
[r]いいわね～恋する乙女って♪」[p]

[chara_mod name="borongo" face="warai"]
[endif]

*uranai1
[borongo][r]
「占いたいことはなに？」[p]

[button graphic="button/wesuta/kininaruhito1.png" clickse="tm2_switch001_macchi.ogg" target=*seikaku x=300 y=30]
[button graphic="button/wesuta/kininaruhito2.png" clickse="tm2_switch001_macchi.ogg" target=*koukando x=300 y=80]
[button graphic="button/wesuta/kininaruhito3.png" clickse="tm2_switch001_macchi.ogg" target=*tabemono x=300 y=130]
[button graphic="button/wesuta/kininaruhito4.png" clickse="tm2_switch001_macchi.ogg" target=*kaeru x=300 y=180]

[s]

*seikaku
[if exp="tf.borongo!=1"]
[eval exp="tf.borongo=1"]
[chara_hide name="borongo"]
[freeimage layer=3]
[endif]
*seikaku1
[cm]
[bg storage="hune_naka_tasogare.jpg" time=50]
[borongo][r]
「誰のことを知りたいの？」
[button graphic="button/wesuta/kyuujitu_rans.png" clickse="tm2_switch001_macchi.ogg" target=*rans x=300 y=30]
[button graphic="button/wesuta/kyuujitu_lion.png" clickse="tm2_switch001_macchi.ogg" target=*lion x=300 y=80]
[button graphic="button/wesuta/kyuujitu_kra.png" clickse="tm2_switch001_macchi.ogg" target=*kra x=300 y=130]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*modoru x=300 y=230]

[s]
[cm]
*rans
[cm]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="ranssetumei.jpg" time=50]
[image layer=1 page=fore visible=true top=30 left=0  storage = chara/ranslott1.png]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=480 y=485]


[s]

*lion
[cm]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="lionsetumei.jpg" time=50]
[image layer=1 page=fore visible=true top=30 left=0  storage = chara/lioness_pro.png]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=480 y=485]

[s]

*kra
[cm]
[message_kakusu_ad]
[freeimage layer=3]
[bg storage="krasetumei.jpg" time=50]
[image layer=1 page=fore visible=true top=30 left=0  storage = chara/klaist_pro.png]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=480 y=485]


[s]
*van
[cm]
[bg storage="vansetumei.jpg"]
[image layer=1 page=fore visible=true top=100 left=5  storage = haruko.png]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*mae x=10 y=290]


[s]

*mae
[freeimage layer=1]
[jump target=*seikaku1]
[cm]


*modoru
[cm]
[jump target=*uranai]


[s]

*koukando
[if exp="tf.borongo!=1"]
[eval exp="tf.borongo=1"]
[chara_hide name="borongo"]
[endif]
[jump storage=scenario_2/uranai/koukando_w.ks target=*start]

*tabemono
[if exp="tf.borongo!=1"]
[eval exp="tf.borongo=1"]
[chara_hide name="borongo"]
[endif]

[cm]
[layopt layer="message1" visible=false]
[freeimage layer=3]
[bg storage="ryouri.jpg" time=50]
[button graphic="button/wesuta/modoru_bonyou.png" clickse="tm2_switch001_macchi.ogg" target=*ryouri_mae x=470 y=535]
[s]

*ryouri_mae
[cm]
[jump target=*uranai]


*kaeru
[if exp="tf.borongo!=1"]
[chara_hide name="borongo"]
[endif]
[stopbgm]
[eval exp="tf.borongo=0"]
[episode_hyouji_only]
[jump storage=scenario_2/"scenario_2/kyuujitu_w.ks" target=*saisho]







