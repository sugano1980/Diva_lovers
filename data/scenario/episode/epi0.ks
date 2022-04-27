

;Live2Dプラグインの読み込み
[plugin name="live2d"]
[call storage=live2d_sub_macro.ks]
[call storage=live2d_irain_macro.ks]

[call storage=live2d_lioness_macro.ks]
[call storage=live2d_kra_macro.ks]
[call storage=live2d_rans_macro.ks]
[call storage="status_macro.ks"]
[call storage="item_check.ks"]
[call storage="map_macro.ks"]
[call storage="store_macro.ks"]
[call storage="store_macro_kioku.ks"]
[call storage="rans_fashion_comment.ks"]
[call storage="item/equip_item_data.ks"]
[call storage="status_macro_macro.ks"]
[call storage="macro.ks"]
[call storage="item_hyouji_macro.ks"]
[call storage="live2d_baka_macro.ks"]
[call storage="live2d_aho_macro.ks"]

[tatie_yomikomi_1]








[cm]
[clearfix]
[start_keyconfig]
;live2d読み込み。
;[live2d_new name="agata" model_id="agata" y=0.0 x=0.0 lip=true jname="アガタ"]
[live2d_new name="irain" model_id="irain" y=0.0 x=0.0 lip=true jname="アガタ"]
;[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
;[live2d_mod name="rans2" idle="Idle" no=0]
;[live2d_new name="tris" model_id="tris" lip=true jname="トリスタン"]
;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]

;[live2d_new name="rans3" model_id="rans3" lip=true jname="ランスロット"]
;[live2d_mod name="rans3" idle="Idle" no=0]
;[live2d_show name="rans2" y=-3.0 x=0.0 scale=6.5]
;[live2d_show name="rans3" y=-3.0 x=0.0 scale=6.5]

;[live2d_new name="lioness" model_id="lioness" lip=true jname="クライスト"]
;[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]


;[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
;[live2d_show name="aho" y=-3.2 x=0.0 scale=6.5]
;[live2d_fadein time=1000]
;[anten]
;[s]




*name


[cm]

;フラグ初期化
[clearvar]
[message_kakusu_ad]




[bg storage="mibun_pakutaso.png" time=50]

[live2d_mod name="irain" idle="Idle_tuyoki" no=0]
[live2d_show name="irain" y=0.2 x=-0.35 scale=0.6]

;[image layer=1 page=fore visible=true storage="chara/irain0.png" x=131 y=162]
[edit name="f.name" longth="120" left="387" top="215" maxchars="6"]
[locate x=200 y=330 ]
[button graphic="button/kettei.png" name="f.name" target=*commit x=387 y=270]

[iscript]
$(".text_box").val("イレイン");
[endscript]

[button graphic="button/default_name.png" target=*name x=500 y=270]
[s] 
 


*commit
[commit name="f.name"]
[freeimage layer=1]

;live2d消去
[live2d_delete_all]

[cm]
[eval exp="f.ryouri_count_rans=0"]
[eval exp="f.ryouri_count_lion=0"]
[eval exp="f.ryouri_count_kra=0"]
[eval exp="f.choice= 1 "]
[eval exp="sf.name=f.name"]
[eval exp="sf.font=22"]
[eval exp="sf.font_f=6"]


;フラグ初期化


[eval exp="f.ransrenailevel=1"]
[eval exp="f.lionrenailevel=1"]
[eval exp="f.krarenailevel=1"]

[eval exp="f.ranskonkando= 0 "]
[eval exp="f.lionkonkando= 0 "]
[eval exp="f.krakonkando= 0 "]
[eval exp="f.vankonkando= 0 "]
[eval exp="f.ransrenaikando= 0 "]
[eval exp="f.lionrenaikando= 0 "]
[eval exp="f.krarenaikando= 0 "]
[eval exp="f.choice= 1 "]
[eval exp="f.epi=0"]
[eval exp="f.jiyuu=0"]
[eval exp="sf.jiyuu=0"]
[eval exp="f.jiyuu_sumi=0"]
[eval exp="f.ranskaiwa=0"]
[eval exp="f.lionkaiwa=0"]
[eval exp="f.krakaiwa=0"]
[eval exp="f.ryourirans=0"]
[eval exp="f.ryourilion=0"]
[eval exp="f.ryourikra=0"]

;店記憶
[eval exp="f.r_kajikaji_lion=0"]
[eval exp="f.r_hirayama_lion=0"]
[eval exp="f.r_oikawa_lion=0"]

[eval exp="f.r_romana_lion=0"]
[eval exp="f.r_beruzoku_lion=0"]
[eval exp="f.r_moon_lion=0"]

[eval exp="f.r_bejibeji_lion=0"]
[eval exp="f.r_poteto_lion=0"]
[eval exp="f.r_kyarokyaro_lion=0"]

[eval exp="f.r_kajikaji_rans=0"]
[eval exp="f.r_hirayama_rans=0"]
[eval exp="f.r_oikawa_rans=0"]

[eval exp="f.r_romana_rans=0"]
[eval exp="f.r_beruzoku_rans=0"]
[eval exp="f.r_moon_rans=0"]

[eval exp="f.r_bejibeji_rans=0"]
[eval exp="f.r_poteto_rans=0"]
[eval exp="f.r_kyarokyaro_rans=0"]

[eval exp="f.r_kajikaji_kra=0"]
[eval exp="f.r_hirayama_kra=0"]
[eval exp="f.r_oikawa_kra=0"]

[eval exp="f.r_romana_kra=0"]
[eval exp="f.r_beruzoku_kra=0"]
[eval exp="f.r_moon_kra=0"]

[eval exp="f.r_bejibeji_kra=0"]
[eval exp="f.r_poteto_kra=0"]
[eval exp="f.r_kyarokyaro_kra=0"]

;メニュー記憶
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]

[eval exp="f.r_hirayama_menu_1_lion=0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]

[eval exp="f.r_oikawa_menu_1_lion=0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]

[eval exp="f.r_romana_menu_1_lion=0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[eval exp="f.r_romana_menu_5_lion=0"]

[eval exp="f.r_beruzoku_menu_1_lion=0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]


[eval exp="f.r_moon_menu_1_lion=0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[eval exp="f.r_moon_menu_5_lion=0"]

[eval exp="f.r_bejibeji_menu_1_lion=0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]

[eval exp="f.r_poteto_menu_1_lion=0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[eval exp="f.r_poteto_menu_5_lion=0"]

[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]


;メニューランス
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]

[eval exp="f.r_hirayama_menu_1_rans=0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]

[eval exp="f.r_oikawa_menu_1_rans=0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]

[eval exp="f.r_romana_menu_1_rans=0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[eval exp="f.r_romana_menu_5_rans=0"]

[eval exp="f.r_beruzoku_menu_1_rans=0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]


[eval exp="f.r_moon_menu_1_rans=0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[eval exp="f.r_moon_menu_5_rans=0"]

[eval exp="f.r_bejibeji_menu_1_rans=0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]

[eval exp="f.r_poteto_menu_1_rans=0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[eval exp="f.r_poteto_menu_5_rans=0"]

[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]

;メニュークラ

[eval exp="f.r_kajikaji_menu_1_kra=0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]

[eval exp="f.r_hirayama_menu_1_kra=0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]

[eval exp="f.r_oikawa_menu_1_kra=0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]

[eval exp="f.r_romana_menu_1_kra=0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[eval exp="f.r_romana_menu_5_kra=0"]

[eval exp="f.r_beruzoku_menu_1_kra=0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]


[eval exp="f.r_moon_menu_1_kra=0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[eval exp="f.r_moon_menu_5_kra=0"]

[eval exp="f.r_bejibeji_menu_1_kra=0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]

[eval exp="f.r_poteto_menu_1_kra=0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[eval exp="f.r_poteto_menu_5_kra=0"]

[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]









;
[message_settei]





;=============================================
;シナリオその１　ゲームの本編を記述して行きましょう
;=============================================








[cm]


;背景素材のプリロード
[preload storage="data/bgimage/black.png"]


;背景変更
[bg storage="black.png" time=300]





[playbgm storage="op_musmus.ogg"]

[message_settei]
 


[iscript]
$(window).keydown(function(e){
if(e.keyCode === 39) {
              
               TG.kag.ftag.startTag("skipstart");
} });
$(window).keyup(function(e){
if(e.keyCode === 39) {
              TG.kag.ftag.startTag("cancelskip");
} });
[endscript]







;０


[ka]
[cm]
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
[r][r][r]
[deffont face="antique"][resetfont]
[r]古代人魔戦争から５００年･･･


[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]
[ikkatu]
[r]長引く戦争で疲弊した魔族たちは数の少なさからやがて絶滅し
[r]生き残った人間たちが、繁栄の時代を迎えていた
[mil][hidemenubutton][l][k][cm][ka]


[r][r][r]
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
[r]北の大陸の中でも最大といわれるクレール王国･･･[ikkatu]
[r]この国がもつ強力な騎士団はその有能さで
[r]クレールの長き平和を守ってきた。
[mil][hidemenubutton][l][k][cm][ka]
[fadeoutbgm time=5000]
[r][r][r]
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
[r]しかし何年も続いた平和は皮肉にも
[r]騎士団の弱体化を招き
[r]平和に慣れた人間たちも
[r]これからかの国に訪れるであろう最大の危機を
[r]知る由も無かった

[mil][hidemenubutton][l][k][cm][ka]



;１
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
[playbgm storage="wave1_koukaonlabo.ogg" loop=true]
[r][r][r]私の故郷テーベは、クレール王国の南端にある港町だ。[ikkatu]
[r]街の南にはネド砂漠という大きな砂漠がある。[ikkatu]
[r]モンスターも多く出る危険な場所。[ikkatu]
[r]そのわりに王都クレールから海を挟んでいるせいか、
[r]騎士団の目もなかなか届かない。[ikkatu]
[r]だから私の町はモンスターの襲撃が他の町より多くあった。
[mil][hidemenubutton][l][k][cm][ka]
[r]
[r]
[r]
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
･････その日も、夜、街はモンスターに襲われた。
[mil][hidemenubutton][l][k][cm][ka]
[position opacity=100]
[bg storage="tebe_yoru_tasogare.jpg" time=5000]

;メッセージテーマをロード
;[plugin name="theme_kopanda_07"]
;[add_theme_button]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=410]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

「ねえ[name]、まだ帰らないの？」[ikkatu]
[r]「ごめんアガタ、先に帰ってもいいよ」[ikkatu]
[r]私がそう言うと、アガタはなんだか寂しそうな顔をした。[ikkatu]
[r]その日･･･いつもの海岸で、
[r]私は幼馴染のアガタと遊んでいた。[ikkatu]
[r]だけど日が暮れてくると子供は帰らなくちゃいけない。[ikkatu]
[r]「[name]･･･お父さんのこと待ってるの？」[ikkatu]
[r]私のお父さんは漁師で、殆どは海に出て漁をしている。[ikkatu]
[r]今日はひさしぶりに帰ってくるだろうって
[r]言われてる日だった。
[mil][hidemenubutton][l][k][cm][ka]


「うん。私もうちょっとここで待つよ」[ikkatu]
[r]私はアガタにそういった。[ikkatu]
[r]ここからなら、お父さんの船がきたときにすぐわかる。[ikkatu]
[r]私は去っていく幼馴染にさよならを言って、
[r]また日が沈もうとする海を見つめた。
[mil][hidemenubutton][l][k][cm][ka]

（お父さん･･･もしかしたらもう家についてるのかな･･･？
[r]でも、船はまだきてないし）[ikkatu]
[r]私はため息をついた。[ikkatu]
[r]「もう少し･･･待ってみようかな･･･」[ikkatu]
[stopbgm]
[r]そのとき。[ikkatu]
[r]がさっと、後ろの茂みのほうで音がした。[ikkatu]
[playse storage="yf_foot_bush01_yakitori.ogg" ]
[wait time=2000]
[r]（なんだろう･･･？）[ikkatu]
[r]私が振り向いた瞬間。
[mil][hidemenubutton][l][k][cm][ka]


[bg storage="black.png" method="shake" time=500]
[playse storage="yf_foot_bush01_yakitori.ogg"  time=1000]
[w]
[playse storage="flap1_tairakomori.ogg" ]
[r]ばっと、茂みから何かが飛び出してきた。[ikkatu]
[r]「！！！！！」[ikkatu]
[r]飛び出した巨大な何かが、私の前に立ちはだかる。[ikkatu]
[r]（モンスター！！）[ikkatu]
[playse storage="monster_tairakomori.ogg"  loop=false]
[r]狼をもっと大きくしたような風貌。[ikkatu]
[r]だが口蓋は不自然に割れ、異常に発達した鋭い牙が
[r]何本も顔を出していた。[ikkatu]
[r]『ぐるるぅ･･･』[w]
[playbgm storage="struggle.ogg"]
[r]狼は低く恐ろしい声で唸り、私を見下ろす。[ikkatu]
[r]大きさは普通の狼の二倍はあった。
[mil][hidemenubutton][l][k][cm][ka]
@clearstack
[jump storage="sentaku.ks" target=*choice1]

*a1_common
狼は大量のよだれを砂浜の上にだらだらとたらす。[ikkatu]
[r]ぐっとその体をかがめて私に狙いをつけているようだった。[ikkatu]
[playse storage="lion2_koukaonlabo.ogg" ]
[r]狼が大きくジャンプして私に飛び掛る。
[stopbgm]
[r]（もうだめっ･･･）[ikkatu]
[mil][hidemenubutton][l][k][cm][ka]
私は頭を抱え目をつぶった。[ikkatu]
[r]瞬間―――
[playse storage="swing32_macchi.ogg" ][w][w]
[playse storage="katana1_tairakomori.ogg" ]
[w]
[playse storage="sword-slash4_koukaonlabo.ogg" ]
[wait time=200]
[playse storage="dog3_koukaonlabo.ogg" ]
[mil][hidemenubutton][l][k][cm][ka]

（･･････？）[ikkatu]
[r]何かを切り裂くような音と、
[r]狼の鳴き声が砂浜に響いた。[ikkatu]
[r]恐る恐る目を開けると･･･[ikkatu]
[r]「きゃあああっ」[ikkatu]
[r]目の前には、血みどろになった狼の死体がある。[ikkatu]
[r]誰かが剣で斬りつけたようだった。[ikkatu]
[r]ぼうぜんと狼の死体を見つめていると、
[r]後ろから声が聞こえた。[ikkatu]
[fadeinse storage="sunanouearuku_tairakomori.ogg"  time=6000]
[r]「･･･こんなところに子供が一人で･･･。危ないな。
[r]早く家に帰りなさい」[ikkatu]
[r]「あ･･･」
[mil][hidemenubutton][l][k][cm][ka]

振り向いて、一目見た瞬間わかった。[ikkatu]
[r]王都クレールの騎士様だ。[ikkatu]
[r]男性にしては長めのブロンドが、闇に映える。[ikkatu]
[r]血に濡れた剣を一本ずつ両手に持ち、
[r]私を鋭い瞳で見下ろしていた。[ikkatu]
[r]身に着けた鎧と装飾品、マントから、子供の私でも
[r]位が上のほうの人だということがわかる。[ikkatu]
[r]「あ･･････」[ikkatu]
[r]私はすぐに立ち上がろうとしたが、
[r]足がすぐには動かない。
[mil][hidemenubutton][l][k][cm][ka]


「･･･？･･･怪我でもしているのか？」[ikkatu]
[r]騎士様は私に近寄り、長身をかがめた。
[r]顔が近づいて、鋭かった瞳がふっと柔らかくなる。[ikkatu]
[r]「･･･ご、ごめんなさい、
[r]怪我はないけど･･･た、立てなくて･･･」[ikkatu]
[playbgm storage="omoi_ontama.ogg" ]
[r]おずおずと言うと、彼は優しく微笑んだ。[ikkatu]




;スチル表示
;[message_kakusu]
;[position opacity=0]
;[eval exp="sf.still_0=1"]
;[bg storage="still/still0.png"]
;[cg storage="still/still0.png"]
;[message_settei]

[r]さっき、血に濡れた剣を持っていた男と同一とは
[r]思えないほど、優しい笑みだった。
[mil][hidemenubutton][l][k][cm][ka]


「･･･そうか、怖かったんだな」[ikkatu]
[r]彼はうなずき片手にふたつの剣をまとめると、
[r]手を私に差し出す。[ikkatu]
[r]私がその大きな手につかまると、
[r]ひょいと立ち上がらせてくれた。[ikkatu]
[bg storage="kaigan_pakutaso.jpg"]
[r]「･･･大丈夫か？家までたどりつけるな？」[ikkatu]
[r]「･･･はい、あ、あのありがとうございました」[ikkatu]
[r]「礼はいい。早く行け」[ikkatu]
[r]言い方はそっけないが、
[r]口調は限りなく優しいものだった。
[mil][hidemenubutton][l][k][cm][ka]



私は彼に頭を下げて、すぐにきびすをかえし
[r]走り出そうとした。[ikkatu]
[fadeinse storage="sunanouehasiru_tairakomori.ogg"  time=5000]
[r]すると、海岸の向こうから誰かが
[r]走ってくるのが見えた。[ikkatu]
[r]「兄貴！」[ikkatu]
[r]走ってきたのは銀髪の少年だ。[ikkatu]
[r]八歳の私より五、六歳年上くらいだろうか。[ikkatu]
[r]その顔にはまだあどけなさが残っているが、
[r]腰にはさっきの騎士様と同じふたつの剣を下げていた。
[mil][hidemenubutton][l][k][cm][ka]


「ライオネス」[ikkatu]
[r]後ろでさっきの騎士様が言う。[w]
[r]あの少年の名前らしい。[ikkatu]
[r]ライオネスは暗かったからか
[r]私に気づかないまま、騎士様に叫んだ。[ikkatu]
[stopbgm]
[r]「兄貴！やべえぞ！街にどんどん
[r]モンスターが集まってきてる！」

[mil][hidemenubutton][l][k][cm][ka]

[playbgm storage="struggle.ogg" ]

「！！！」[ikkatu]
[r]（そんな･･･！！）[ikkatu]
[r]私は逃げ出すことも忘れて騎士様のほうを振り向いた。[ikkatu]
[r]だが彼は冷静だった。[ikkatu]
[r]「･･･ネド砂漠からのはぐれモンスターか･･･。
[r]街の入り口･･･砂漠側に急ぐぞ」[ikkatu]
[r]「兄貴！？だ、だけど俺らふたりだけじゃ･･･」[ikkatu]
[r]「騎士団からの援護を待っている暇などない。
[r]ここで食い止めなければ
[r]街はモンスターに全滅させられる」[ikkatu]
[r] 「だけど･･･」[ikkatu]
[r]「ライオネス、お前も騎士の卵なら、覚悟を決めろ」
[mil][hidemenubutton][l][k][cm][ka]

「やるしかねえってことかよ･･･！」[ikkatu]
[r]ライオネスは舌打ちした。[ikkatu]
[r]自らの腰の剣を鞘ごとぐっと握り締める。[ikkatu]
[r]「･･･いつまでそこにいるんだ。早く逃げなさい」[ikkatu]
[r]騎士様がこちらを見つめて言う。
[r]私ははっとわれに帰った。[ikkatu]
[fadeoutbgm time=5000]
[r]「なんだこのガキ？」[ikkatu]
[r]ライオネスがやっと私の存在に気づいて、
[r]騎士様が答えた。
[mil][hidemenubutton][l][k][cm][ka]


「･･･ウェアウルフに襲われそうに
[r]なったところを助けた。[w]
[r]街の子供だ･･･早く行きなさい」[ikkatu]
[r]「ご、ごめんなさい！！」[ikkatu]
[r]私はすぐに謝り海岸をあとにした。
[mil][hidemenubutton][l][k][cm][ka]
[stopbgm]

[bg storage="black.png"]
[playse storage="sunanouehasiru_tairakomori.ogg" ]
[r]ネド砂漠のモンスターは強い。[ikkatu]
[r]他の地域で出るモンスターよりも、手ごわいといわれている。[ikkatu]
[r]それなのに、いくら騎士様といえど、
[r]たったふたりで食い止められるのか･･･。[ikkatu]
[r]最悪の事態を想像してしまって、私は唇をかんだ。[ikkatu][fadeoutse time=2000]
[r]だけど今、子供の私にできるのは家に帰り母とともに避難すること、
それだけだった。
[mil][hidemenubutton][l][k][cm][ka]

;２

[r]モンスターが襲ってきても、私たちは立ち向かうすべを持たない。[ikkatu]
[r]下手に立ち向かい命を落とすよりも、逃げて命を守るほうが賢明だ。[ikkatu]
[r]そんなふうに私は小さなときから教えられてきた。[ikkatu]
[r]戦うことは傭兵や騎士たちにまかせていればいいのだと。[ikkatu]
[r]例え目の前で近しい人が襲われていても、私たちは逃げるしかない。[ikkatu]
[r]他の皆はそうやって生き延びてきた。[ikkatu]
[r]だから特に疑問も持っていなかった。[ikkatu]
[r]だけど･･･[w]私は納得がいかなかった。[ikkatu]
[mil][hidemenubutton][l][k][cm][ka]

;３

[fadeinse storage="spparows_tairakomori.ogg"  loop=true time="3000"]
[bg storage="matinaka_pakutaso.jpg"]
;ランス、ライ表示

[fadeinse storage="spparows_tairakomori.ogg"  loop=true time="3000"]
[back storage="matinaka_pakutaso.jpg"]
「本当にありがとうございました。
[r]なんとお礼を言ったらいいか･･････」[ikkatu]
[r]あの悪夢のような夜が明けて、次の朝。[ikkatu]
[r]街の広場で街の長が例の騎士様とその弟に何度も
[r]頭をさげていた。[ikkatu]
[r]「･･･私たちは責務を果たしたに過ぎません。
[r]礼など無用です」[ikkatu]
[r]騎士様が長に微笑みながら謙虚に返答する。[ikkatu]
[r]あれだけの数のモンスターを相手にしながら･･･[ikkatu][r]
弟は多少怪我をしたようだが、騎士様は殆ど無傷だった。
[mil][hidemenubutton][l][k][cm][ka]


[fadeoutse time=3000]
「すごいねえ。やっぱり王都の騎士様はお強いんだねえ」[ikkatu]
[r]隣の母が感嘆の声を上げた。[ikkatu]
[r]「騎士様が戦ってるところ、すごかったもんなあ。
[r]両手に剣持ってさ･･･あれって双剣っていうらしいぜ」[w]
[r]「双剣って、なんか聞いたことある。すっげえ扱い
[r]難しいんだろ？」[ikkatu]
[r]広場に集まった男たちが、そんなことを話している。[ikkatu]
[r]「ねえねえ[name]、
[r]あの騎士様、ちょっと格好いいよね？」[ikkatu]
[r]アガタが私をつついてひそひそと耳打ちする。[ikkatu]
[r]「そうだね･･･昨日の夜、すごく強かったもんね」[ikkatu]
[r]私が答えると、アガタはばんっと私の肩を叩いた。
[playse storage="kick-low1_koukaonlabo.ogg" ]
[mil][hidemenubutton][l][k][cm][ka]



[quake count=3 time=150 hmax=20]
[r][font size=30]「やだあ～！そりゃそれもそうだけど、顔だよ顔！」[resetfont]
[r]アガタの大声に、広場の皆が私たちのほうを注目する。[ikkatu]
[r]もちろんあの騎士様も。[ikkatu]
[r]「･･･アガタ！声が大きいよ！」[ikkatu]
[r]「ごめーん･･･」[ikkatu]
[r]謝るアガタ、ともかく恥ずかしい。
[r]私はその場をそそくさと離れようとして･･･
[mil][hidemenubutton][l][k][cm][ka]
[playbgm storage="omoi_ontama.ogg" ]


「無事だったんだな。あのあとちゃんと
[r]家に帰れたか心配していた」[ikkatu]
[r]気がついたら騎士様が目の前に立っていた。
[r]私は長身の彼を見上げて目を見開く。[ikkatu]
[r]やわらかそうな金髪が風に揺れる。[ikkatu]
[r]深い紺色の瞳が、優しげに私を見つめていた。[ikkatu]
[r]アガタの言う、格好いいとかはよくわからないけれど、
[r]なんだかすごく安心できると思った。[ikkatu]
[r]「娘を助けていただいたようで･･･
[r]本当にありがとうございました」[ikkatu]
[r]母がお礼を言って、深々とお辞儀をする。
[mil][hidemenubutton][l][k][cm][ka]

「礼には及びませんよ」[ikkatu]
[r]騎士様は母に丁寧に応対する。[ikkatu]
[r]彼の肩越しに、あの弟がつまらなそうに
[r]こちらを眺めているのが見えた。[ikkatu]
[r]アガタは恥ずかしいのか、
[r]私の背中に隠れているみたいだ。[ikkatu]
[r]私は昨日の夜の、騎士様の戦いを思い出していた。
[mil][hidemenubutton][l][k][cm][ka]

[bg storage="black.png"]
まるでモンスターたちの間を縫うように走り、
[r]目にも留まらぬ速さで次々と斬りふせていった。[ikkatu]
[r]それは、剣で普通に斬り付けるのとは違う、特殊な剣術のようだった。[ikkatu]
[r]堂々とモンスターたちの前に立ち、
[r]大勢の人を守るために戦う、[ikkatu]
[r]そのすべを持っている人･･･。[ikkatu]
[r]私にもそんな力があったら････[ikkatu]
[r]私は彼を見つめながら、そう願っていた。[ikkatu]
[r]いつのまにか握り締めた両手にはたくさんの汗をかいていた。
[mil][hidemenubutton][l][k][cm][ka]

[r]どうしてそんなことを思ったのだろう。[ikkatu]
[r]剣を扱えるようになれるなんて、
[r]そんなことを自分で思っていたのかどうかさえわからない。[ikkatu]
[r]でもたとえなれなくってもいいと思った。[ikkatu]
[r]何もしないで諦めることが私にはできなかった、
[r]ただそれだけのことなのだ。
[mil][hidemenubutton][l][k][cm][ka]

;４

[bg storage="kaigan_pakutaso.jpg"]
[playse storage="wave1_koukaonlabo.ogg"  loop=true]
「お願いします！　私を弟子にしてください！」
[r]私は無理を承知で、海岸にいた騎士様に弟子入りを頼んだ。[ikkatu]
[r]案の定、騎士様はひどく困ったような表情をしていた。[ikkatu]
[r]そんな反応も予想のうちだった。[ikkatu]
[r]でもやれるだけのことはやりたい。[ikkatu]
[r]私はうつむいて、ぽつぽつ彼に話し始めた。
[mil][hidemenubutton][l][k][cm][ka]

「･････他のみんなは言うんです。[w]
[r]逃げていろ、隠れていろって･･･。
[r]戦いのことは騎士様にまかせていろって･･･。[w]
[r]でも、私は嫌なんです。[w]
[r]もう逃げるのも、隠れているのも･･･」[ikkatu]
[r]彼はひとつ息をついた。ため息のようにも思えた。[ikkatu]
[r]「･･･逃げるのも隠れるのも
[r]自らの生命を守るために必要なことだ。[w]
[r]　恥ずべきことではない」[ikkatu]
[r]私は顔を上げた。[ikkatu]
[r]でも、それでも―
[mil][hidemenubutton][l][k][cm][ka]

[r][r]
[r]「でも！！！」[ikkatu]
[r]「私もみんなを守りたいんです！貴方みたいに！！」
[fadeoutse time=1500]
[mil][hidemenubutton][l][k][cm][ka]

[bg storage="black.png"]
[r][r][r]そして･･････････････。[ikkatu]
[r]騎士様とともに母へ事情を話すと、
[r]母はとても驚いて当然のように反対した。[ikkatu]
[r]女の子が騎士になるなどとんでもないことだと。[ikkatu]
[r]だが、騎士様の説得に折れ、私は彼の元で
[r]正式に弟子として修行することになった。
[mil][hidemenubutton][l][k][cm][ka]
[fadeoutbgm time=2000]
[r][r][r]私の師匠となった騎士様の名前は、ランスロット。[ikkatu]
[r]エリートと言われるクレール王宮騎士団の一員で、[w]
[r]世界でも稀とよばれる双剣を扱う一流の剣士だった。
[mil][hidemenubutton][l][k][cm][ka]


[r][r][r]私はランスロットとその弟のライオネスとともにテーベを離れて、
[r]クレール王国の王都クレールで修行することになった。[ikkatu]
[r]たくさんの汗と、悔し涙とともに歳月はあっというまに流れ･･･

[mil][hidemenubutton][l][k][cm][ka]


[stopbgm]
[r][r][r][r][r][w][w][w]それから、[w][w]八年。[mil][hidemenubutton][l][k][cm][ka]
@jump storage="episode/epi1.ks"
[s]