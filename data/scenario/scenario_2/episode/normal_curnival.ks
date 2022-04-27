	
	
	
	
;一人でカーニバル
[message_settei_ad]

[button_hyouji]
#&f.name
「さて・・・今日はお祭りの日だけど・・・」[p]

#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【カーニバルに出かける？】

[glink target=*dekakeru_1 text="（カーニバルに出かける）" size=17 width=600 x=65 y=200]
[glink target=*dekakenai_2 text="（出かけない）" size=17 width=600 x=65 y=260]


[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]


[s]

*dekakeru_1
[if exp="f.osasoi_else==1&&f.gales_yes==1"]
[eval exp="f.choice=1000"]
[endif]
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

;出かける


;カーニバルに行く
#&f.name	
「よし、楽しそうだし出かけてみよう」[p]
#
[playbgm storage="maturi_musmus.ogg"]
[call storage="scenario_2/live2d_sub_macro.ks"][call storage="scenario_2/live2d_aho_macro.ks"][call storage="scenario_2/live2d_rans_rei_macro.ks"][call storage="scenario_2/live2d_glif_macro.ks"]
[creru_hunsui_3]
[snowfall]
[if exp="f.osasoi_else==1&&f.gales_yes==1"]

[fadeoutbgm time=1000]
#&f.name	
「・・・ん？あれ？」[p]
#

[gales_tatie_touroku]
[gales_tatie_show]

#&f.name	
（あの人・・・こないだセレさんといたときに見た・・・）[p]
#
#&f.name	
（確か政府高官だとかって言ってたよね・・・）[p]
#
#&f.name	
（またこんなところで何やってるんだろ・・・）[p]
#
[jump storage="scenario_2/sentaku.ks" target=*choice1000]
*koe_1
#&f.name	
「あの・・・」[p]
#
#？	
「・・・？何か」[p]
#
#&f.name	
「・・・政府高官の方、ですよね・・・？」[p]
#
#？	
「そういう貴女は」[p]
#
#&f.name	
「・・・わ、私は・・・地方騎士の、[name]、です」[p]
#
[gales_tatie_ha]
#？	
「地方騎士？？？貴女が？」[p]
#
[gales_tatie_keibetu]
#？	
「・・・随分と芸のない虚言ですね」[p]
#
#&f.name	
「う、嘘じゃありません！」[p]
#
[gales_tatie_metoji]
#？	
「そんなことはどうでもいい・・・用がないなら立ち去りなさい」[p]
#
[gales_tatie_normal]
#？	
「目障りです」[p]
#
#&f.name	
（これは・・・怒ってる・・・？）[p]
#

*choice1000
[jump storage="scenario_2/sentaku.ks" target=*choice1001]
;---
*hanasi_1
#&f.name	
「す、すみません、でも、あのここで一人でいらっしゃるので、何してるのかなって思って・・・」[p]
#
[gales_tatie_keibetu]
#？	
「この私に貴女のくだらない好奇心を満たせと？」[p]
#
#&f.name	
「や・・・その・・・」[p]
#
#&f.name	
「・・・ご、ごめんなさい」[p]
#
[gales_tatie_metoji]

*gales_hanbai_end
[eval exp="f.choice=998"]
[message_settei_ad]
[eval exp="f.gales_kusuri_cur=1"]



[jump target=*gales_end]





;------
*hanasi_2
[gales_tatie_show]

[jump target=*gales_end]
*gales_end
#&f.name	
「す、すみませんでした、それじゃ・・・」[p]
#
#？	
「ふん・・・」[p]
#

[chara_kakusu]



[endif]
*gales_end_2
[playbgm storage="maturi_musmus.ogg"]
*cur_choice
[clearstack]
[jump storage="scenario_2/sentaku.ks" target=*choice998]

*kettei	
[eval exp="f.choice=0"]
;[eval exp="f.muryou=1"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks"]



*play_end
[eval exp="f.yatai=0"]
[eval exp="f.kujibiki=0"]
[eval exp="f.kingyo=0"]
[eval exp="f.monster=0"]
[eval exp="f.soubi=0"]

[if exp="f.yatai_kaisuu>7"]
[jump target=*paredo]
[elsif exp="f.yatai_kaisuu>4"]

*akitayo

[clearstack]
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【屋台やゲームはもういいかな？】

[glink target=*mou_1 text="（もうあきた）" size=17 width=600 x=65 y=200]
[glink target=*mou_2 text="（まだ挑戦する！）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*mou_1

[free name="sentakusi" layer=0]
[ka][eval exp="f.choice=0"][eval exp="f.cur_battle=1"]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

[jump target=*paredo]


*mou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[jump target=*cur_choice]

[else]
[jump target=*cur_choice]

[endif]
	



*omaturi_end
*paredo
[stopbgm]
[fadeinbgm storage="yoin_ontama.ogg" time=3000]
#&f.name	
「あ、この音楽・・・パレードかな？」[p]
#
	
	
	[playse storage="paredo_kansei_1.ogg"]
[werumu_tatie_rei_touroku]
[werumu_tatie_rei_show]
	
#&f.name	
（あれって王宮騎士団のウェルム団長だ・・・）[p]
#

#&f.name	
（ライオネス とランスロットのお父さんの・・・）[p]
#
[chara_kakusu]
	[playse storage="paredo_kansei_2.ogg"]
#王都民	
「国王陛下！！バンザーイ！！」[p]
#
#王都民	
「陛下ー！！王妃様ー！！」[p]
#
#王都民	
「陛下も随分とお年を召したよなあ・・・」[p]
#
#王都民	
「次の王位継承って誰なんだ？」[p]
#
#王都民	
「陛下にはお子がいらっしゃらないからなあ・・・」[p]
#
#王都民	
「宰相を務めているラルズ様が候補って本当か？陛下の弟君だからな・・・」[p]
#
#王都民	
「ラルズ様のさ、一人娘のユリア王女って、めっちゃ美人らしいぜ・・・」[p]
#
[glif_tatie_rei_touroku]
[glif_tatie_rei_show]
;#グリフ
#&f.name	
（あれっ、あの人あのときの・・・王宮騎士・・・名前・・・グリフって呼ばれてたっけ・・・）[p]
#

[chara_kakusu]
[playse storage="paredo_kansei_3.ogg"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
;ランスロット
#&f.name	
（あ、ランスロットだ。[rans_tatie_rei_mihiraki]こっちに気づいた？）[p]
#
[rans_tatie_rei_normal_warai]
#&f.name	
（えっ・・・ホントに気づいたのかな？）[p]
#
#&f.name	
（こんなに人がいるのに・・・よくわかるなあ）[p]
#
[chara_kakusu]
[fadeoutbgm time=1000]
	


;背景、暗く

[fadeoutse time=1000]
[anten]

[eval exp="f.gaia_hotaru=1"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg"]
[playbgm storage="gaia_musmus.ogg"]
[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/others/snowfall/images/hotaru.png",
    flakeCount : 17,
    minSize: 20, 
    maxSize: 32,
    maxspeed:3,
    minspeed:1
    });
[endscript]

	
#&f.name	
（あ・・・）[p]
#
#&f.name	
（毎年、お告げの時になるとこんなふうになるんだよね・・・不思議だな）[p]
#
#&f.name	
「皆んな、ガイアの森に行くみたい。私も行かなくちゃ」[p]
#
[fadeoutbgm time=1000]
[anten]
[playbgm storage="kisimi_musmus.ogg"]
;音楽変化　クラの胸の紋章、点滅

[bg storage="hune_souko_tasogare.jpg"]
[kra_tatie_touroku]
[kra_tatie_show]	
[kra_tatie_yokome]
#クライスト	
「ああ・・・うるさいなあ・・・」[p]
#
[kra_tatie_mehuse]
#クライスト	
「・・・タイミングいいよね。こんな時を、選ぶなんてさ」[p]
#
[kra_tatie_normal]
#クライスト	
「でも、あっちが活性化するなら、こっちだって条件は同じだ・・・」[p]
#
[chara_kakusu]
[fadeoutbgm time=1000]

*gaia
[bg storage="gaiamori_yoru_cur_tasogare.jpg"]	
[playbgm storage="gaia_musmus.ogg"]
#&f.name	
「わあ・・・すごい・・・光が・・・森中に・・・」[p]
#
[fadeoutbgm time=1000]	
[miko_tatie_touroku]
[miko_tatie_show]
	
#巫女	
「・・・母なる大地に宿る精霊の皆よ・・・」[p]
#
[miko_tatie_inori]
#巫女	
「かの国クレールの、輝かし未来を・・・」[p]
#
[stopbgm]
;音楽変更
[playbgm storage="kisimi_musmus.ogg"]
#巫女	
「・・・・・・」[p]
#


[snowfall_0]
[playbgm storage="kisimi_musmus.ogg"]
;暗転
;	#ルシアの、赤い瞳

[miko_tatie_kanasii]
#巫女	
「っ・・・あっ・・・ああ・・・」[p]
#
	
#&f.name	
「えっ・・・」[p]
#
	
[chara_off][chara_hide name="miko"]
[config_true]	


[fadeoutbgm time=1000]
[bg storage="creru_gate_yoru_tasogare.jpg"]
#騎士	
「ふわああ・・・・モンスターが来るかもだからなんて言われてたけど、平和そのものじゃねえか・・・」[p]
#
;SE　モンスターの鳴き声も

[playse storage="igyou_nakigoe_onjin.ogg"]

#騎士	
「ん？」[p]
#
[playse storage="igyou_nakigoe_onjin7.ogg"]
#騎士	
「なっ・・・なっ・・・わあああああああ！！！！！」[p]
#
;音楽変更　ガイアの森
[playse storage="jinari_tairakomori.ogg"]
[bg storage="gaiamori_yoru_cur_tasogare.jpg" time=50]

[playbgm storage="soudou.ogg" loop=true]
#王都民	
「うっうわあああああ！！モンスターだ！！モンスターが出たあ！！！！！」[p]
#
[bg storage="gaiamori_yoru_cur_soudou_tasogare.jpg" time=50]

#&f.name	
（モンスター！！！！！）[p]
#
#&f.name	
（警備は固めてたはずなのに・・・間に合わなかったの・・・！？）[p]
#
#&f.name	
「とにかく、行かないと！！！！！」[p]
#
	
[eval exp="f.event_main_9_normal=0"]
[eval exp="f.event_main_10_normal=1"]
[eval exp="f.event_main_10=1"]

[soubi_henkou]
*gate_sentou
[jump target=*curnival_sentou]


*dekakenai_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.muryou=0"]
[eval exp="f.muryou_yatai=0"]
[eval exp="f.choice=0"][eval exp="f.cur_battle=1"]
	
#&f.name	
「無理に行くこともないよね。今日はゆっくり部屋で過ごそっと」[p]
#
;暗転
	[anten]
	[irain_heya_yuu]

	
	
#&f.name	
「・・・ん・・・あれ・・・？のんびりしてるうちに寝ちゃった・・・？」[p]
#
#&f.name	
「ふわあ・・・・そろそろ夕食の時間かなあ・・・」[p]
#

[playse storage="yukahasiru_onjin.ogg"]
#騎士	
「おい！[name]！！」[p]
#
[stopse]
#&f.name	
「へあ！！？？なんですか！？」[p]
#
#騎士	
「街でモンスターがでた！大量発生だ！！通りは大混乱で・・・」[p]
#

#&f.name	
「ええっ！！？？」[p]


[kisidaniriguti_yoru]
[struggle_bgm]
#騎士	
「全員街に出ろーーー！！王都の門を塞げ！！！！！」[p]
#



[playse storage="ooku_koukaonlabo.ogg"]
[w][w][w]
[playse storage="obaka_onjin.ogg"]

;#騎士団入口
#&f.name	
「も、モンスター！！警備は固めてたはずだと思うのに・・・」[p]
#
#騎士	
「傭兵共が不真面目でな・・・それもあってか不十分だったようだな・・・急ぐぞ！！」[p]
#
#&f.name	
「はい！！！！！」[p]
#
	
#&f.name	
（気をつけてはいたはず・・・でもダメだったの・・・）[p]
#
#&f.name	
（とにかく街の人を守らないと・・・！！！！！）[p]
#


[eval exp="f.event_main_9_normal=0"]
[eval exp="f.event_main_10_normal=1"]
[eval exp="f.event_main_10=1"]
[soubi_henkou]
*gate_sentou
[jump target=*curnival_sentou]



*curnival_sentou



[bg storage="crerumatinaka3_yoru_cur_tasogare.jpg"]
[message_settei_ad]
[playse storage="nigemadou.ogg"]		
#王都民
「タッ・・・助けてー！！助けてくれ・・・」[p]
#
#王都民	
「うっ・・・うあああ・・・」[p]
#
#&f.name	
「こ・・・これ・・・ひどい・・・警備はどうなって・・・」[p]
#
	
#騎士	
「[name]！！」[p]
#
#&f.name	
「どうして・・・これ・・・」[p]
#
#騎士	
「それがわかんねえ・・・本当に突然、一気に押し寄せてきて、攻撃する暇なんか・・・」[p]
#
#&f.name	
「こんなにもう、モンスターが街に・・・！」[p]
#
#騎士	
「俺ら街中のモンスターにかかりっきりで、門の方がどうなってるか・・・、お前、行けるか！？」[p]
#
#&f.name	
「わかりました！向かいます！」[p]
#
#騎士	
「頼んだ！」[p]
#
[anten]
[bg storage="creru_gate_yoru_tasogare.jpg"]
[fadeoutse time=1000]
[fadeoutbgm time=1000]

#&f.name	
「こっ・・・これ・・・ね、ねえ、しっかりして！！」[p]
#
#騎士	
「くそっ・・・傭兵のやつら、ビビって逃げ出しやがって・・・っ・・・っっ」[p]
#
#騎士	
「こ・・・ここを抑え・・・な・・・けれ・・・ば・・・これ以上・・・ひがい・・・っうっ・・・」[p]
#

[playse storage="taoreru_onjin.ogg"]
;SE
#&f.name	
（息がない・・・そんな・・・）[p]
#
#&f.name	
「ここを抑えなくちゃ、また新しいモンスターが入ってくる・・・よね・・・」[p]
#
#&f.name	
「他のみんなは、街の人を助けるのに手一杯・・・」[p]
#
#&f.name	
「ここは・・・私がやるしかない・・・！！！」[p]
#
;モンスター鳴き声

[playse storage="obake_onjin.ogg"]
[image layer=2 page=fore storage="monster/obake.png" name="obake1" x=150 y=10]
[image layer=2 page=fore storage="monster/obake.png" name="obake2" x=350 y=150]
[image layer=2 page=fore storage="monster/obake.png" name="obake3" x=550 y=50]
[image layer=2 page=fore storage="monster/hagureinu.png" name="obake3" x=450 y=80]
[image layer=2 page=fore storage="monster/yokuarukinoko.png" name="obake4" x=250 y=30]
[image layer=2 page=fore storage="monster/obakehana.png" name="obake5" x=620 y=200]
[image layer=2 page=fore storage="monster/koumori.png" name="obake6" x=50 y=100]
[image layer=2 page=fore storage="monster/imomusikun.png" name="obake7" x=80 y=350]

[anim name="obake1" top="+=200"]
[anim name="obake2" top="+=100"]
[anim name="obake3" top="+=300"]
[anim name="obake3" top="-=100"]
[anim name="obake4" top="+=200"]
[anim name="obake5" top="+=100"]
[anim name="obake6" top="+=300"]
[anim name="obake7" top="-=100"]
[playbgm storage="sentou_siken.ogg"]

#&f.name	
（負けない！！）[p]
#

[free name="obake1" layer=2]
[free name="obake2" layer=2]
[free name="obake3" layer=2]
[free name="obake4" layer=2]
[free name="obake5" layer=2]
[free name="obake6" layer=2]
[free name="obake7" layer=2]
[free name="obake8" layer=2]


;時間内に倒さないと街の被害が増えるバトルイベント

[anten]
[fadeoutbgm time=2000]
[wait time=1500]
[live2d_kra_touroku][call storage="scenario_2/live2d_aho_macro.ks"][call storage="scenario_2/live2d_glif_macro.ks"]

[p]
[bg storage="creru_gate_yoru_tasogare.jpg"]


;------
;以下連続戦闘　一人
;#グリフのフラグあった場合、#グリフが参戦してくれる
;参戦なしなら最後に異形きて、負ける・・・の時にクラが助けてくれる
[if exp="f.glif_yes==1&&f.osasoi_else==1"]


#&f.name	
「・・・はあっ・・・うっ・・・」[p]
#
#&f.name	
（ダメージはないけど・・・流石に体・・・もつかな・・・）[p]
#
#&f.name	
（あれからどれくらい・・・たったんだろう・・・一人で・・・なんて無謀だったかな・・・）[p]
#
#&f.name	
「少しで、いいから・・・休みたいけど・・・」[p]
#

;モンスターの鳴き声
[playse storage="obake_onjin.ogg"]
[image layer=3 page=fore storage="monster/obake.png" name="obake1" x=150 y=10]
[image layer=3 page=fore storage="monster/obake.png" name="obake2" x=350 y=150]
[image layer=3 page=fore storage="monster/obake.png" name="obake3" x=550 y=50]

[anim name="obake1" top="+=200"]
[anim name="obake2" top="+=100"]
[anim name="obake3" top="+=300"]
[anim name="obake3" top="-=100"]

#&f.name	
「ああ・・・」[p]
#

[bg storage="black.jpg" time=5]
[playse storage="battle_se/glif_skill_0.ogg"]
[wait time=500]
[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_0.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_1.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_2.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_3.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_4.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_5.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_6.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_8.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_9.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_10.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_11.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_12.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_13.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_14.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_7.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_16.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_17.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]

[image layer=3 page=fore visible=true name="anime_glif_skill" storage="battle_animation/glif/glif_skill_18.png" x=0 y=0 time=7]
[free layer=3 name="anime_glif_skill" time=10]


[playse storage="battle_se/kra_skill_3_1.ogg"]

[free name="obake1" layer=3]
[free name="obake2" layer=3]
[free name="obake3" layer=3]

[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=1000]
[wait time=2000]
[playse storage="kieru_tairakomori.ogg"]

[free name="aka" layer=2]
[wait time=1000]


[bg storage="creru_gate_yoru_tasogare.jpg"]


[glif_tatie_rei_touroku]
[runisi]

[chara_show name="glif_rei" width="530" height="691" storage=&f.glif_rei_ketui top=10]
#グリフ	
「大丈夫ですか！！？？」[p]
#
[stopse]
#&f.name	
「え・・・」[p]
#
#&f.name	
「あなたは・・・！」[p]
#

[glif_tatie_rei_normal_warai]
#グリフ	
「また、会いましたね。・・・たった一人で・・・お怪我はありませんか」[p]
#
#グリフ	
「間に合って、よかった」[p]
#
#&f.name	
「・・・・・・あ・・・」[p]
#

[glif_tatie_rei_normal]
#グリフ	
「僕も手伝います。後ほど、援護の騎士も来ますので、それまで頑張りましょう」[p]
#
#&f.name	
「あ・・・ありがとう・・・！！！！！」[p]
#
[eval exp="f.friend=5"][eval exp="f.glif_rei=1"]
[chara_kakusu]
	

;異形鳴き声

[playse storage="igyou_asioto_onjin.ogg"]
[wait time=1500]
[playse storage="igyou_asioto_onjin.ogg"]
[wait time=1500]	
	
[playse storage="igyou_nakigoe_onjin7.ogg"]
[chara_show name="glif_rei" width="530" height="691" storage=&f.glif_rei_mihiraki top=10]
#グリフ	
「！！？？」[p]
#
	
#&f.name	
「何・・・あれ・・・」[p]
#
[chara_kakusu]
[config_true]
[playse storage="igyou_nakigoe_onjin6.ogg"]
[igyou_tatie_touroku]
[igyou_tatie_show]


#&f.name	
（・・・他のモンスターとは・・・違う・・・気持ち悪い・・・）[p]
#
#&f.name	
「何・・・！？」[p]
#
[chara_kakusu]
[chara_show name="glif_rei" width="530" height="691" storage=&f.glif_rei_kamae top=10]
#グリフ	
「・・・ともかく、倒すしかなさそうですね・・・！！行きますよ！！」[p]
#
#&f.name	
「う、うん！！」[p]
#
[chara_kakusu]
[call storage="scenario_2/episode/scenario_macro.ks"][call storage="live2d_sub_macro.ks"]
;異形戦闘
[fadeoutbgm time=1000]
*igyou_battle
[eval exp="f.monster_l_size=1"]
[battle_start]

*igyou_battle_end	
;異形、なんとか勝利。
[eval exp="f.glif_igyou_sentou=1"]

#&f.name	
（な・・・なんとか・・・勝てた・・・）[p]
#

[glif_tatie_rei_show]
#グリフ	
「・・・大丈夫ですか？・・・手強かったですね・・・」[p]
#
#&f.name	
「うん、あの・・・あなたは・・・大丈夫？」[p]
#
[glif_tatie_rei_mehuse]
#グリフ	
「はい・・・しかしこれが何度も来るとなると・・・」[p]
#

[playbgm storage="kisimi_musmus.ogg"]
	
#？？？
「・・・ほう・・・少しは骨のある奴がいると見える・・・」[p]
#

[chara_kakusu]
[rusia_tatie_touroku]
[rusia_tatie_show_event]


#&f.name	
「だっ・・・誰・・・！？」[p]
#

[chara_kakusu]
[chara_on][chara_show name="glif_rei" storage=&f.glif_rei_mihiraki width="530" height="691" top=10]

#グリフ	
「・・・これは・・・」[p]
#
[chara_off][chara_hide name="glif_rei" time=30]

[rusia_tatie_show_event]
#ルシア	
「・・・我はエルムナード女王、ルシア。憎きクレールに復讐するために、この大いなる力を手に入れた・・・」[p]
#
#&f.name	
「復讐・・・どう言う・・・こと？」[p]
#

[chara_off][chara_hide name="rusia" time=30]
[glif_tatie_rei_show]
#グリフ	
「・・・エルムナードといえば、８年前にクレールと戦争し、敗れた国です」[p]
#
[glif_tatie_rei_mehuse]
#グリフ	
「その際にクレールとは停戦協定を結んだと聞いていましたが・・・」[p]
#
[chara_off][chara_hide name="glif_rei" time=30]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 left=0 time=30]
#ルシア	
「クレール・・・貴様達を信じた我が愚かだったわ・・・よもやあのような卑怯な手に出るとはな・・・！」[p]
#
#&f.name	
「卑怯・・・卑怯って・・・」[p]
#

#ルシア	
「貴様らのような下っ端に説明する義理はない。どうせここで息の根が止まるのだ。それこそ時間の無駄というもの」[p]
#

[chara_off][chara_hide name="rusia" time=50]
[rusia_tatie_kamae]
#ルシア	
「この魔剣ヴァエルで、クレールを文字通り根絶やしにしてくれる！！！」[p]
#

[chara_off][chara_hide name="rusia" time=50]
[chara_on][chara_show name="glif_rei"  storage=&f.glif_rei_mehuse width="530" height="691" top=10]
#グリフ	
「・・・魔剣・・・」[p]
#
#&f.name	
「魔剣・・・て・・・」[p]
#
#&f.name	
（あれ・・・ルシアの胸のところにあるあの紋章・・・誰かのに似てるような・・・）[p]
#
[glif_tatie_rei_mihiraki]
[glif_tatie_rei_kamae]
#グリフ	
「構えてください！！来ます！！！」[p]
#
#&f.name	
「！！！！」[p]
#
[fadeoutbgm time=1000]
[call storage="scenario_2/episode/scenario_macro.ks"][call storage="live2d_sub_macro.ks"]
[chara_off][chara_hide_all]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_normal=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_normal=1"]
[eval exp="f.rusia_battle=1"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=1"]

;#ルシアと戦闘

[battle_start]

*rusia_battle_end
;負ける
[button_hyouji]
[rusia_kaiwa]
[call storage="scenario_2/episode/scenario_macro.ks"]
[rusia_tatakai]
[rusia_sonogo]

	
;王宮門
[bg storage="oukyuu_yoru_tasogare.jpg"]
[config_false]
[chara_on][chara_show name="glif_rei" left=-70 top=30 width="530" height="691"]
[chara_on][chara_show name="rans_rei" left=300 top=0.5]
#グリフ	
「・・・エルムナード女王ルシアは、魔剣を手に入れたと言っていました。クレールに復讐するために、と」[p]
#
[glif_tatie_rei_mehuse]
#グリフ	
「・・・そして、あのクライストというやつが持っていた剣は・・・ルシアのと瓜二つでした」[p]
#

[rans_tatie_rei_mehuse]
#ランスロット	
「・・・再びここに現れるとはな」[p]
#
[glif_tatie_rei_normal]
#グリフ	
「隊長・・・」[p]
#
[rans_tatie_rei_normal]
#ランスロット	
「王宮に奴の報告をする。強大でなおかつ危険な力だが・・・今回の危機を脱するのに必要かもしれない」[p]
#
[rans_tatie_rei_sinkoku]
#ランスロット	
「魔剣、か・・・」[p]
#

[rans_tatie_rei_normal]
#ランスロット	
「グリフ、王宮へ戻ったら詳細を頼む」[p]
#
[glif_tatie_rei_ketui]
#グリフ	
「・・・了解しました」[p]
#
	
[chara_kakusu]


[else]


*help_kra
#&f.name	
「・・・はあっ・・・うっ・・・」[p]
#
#&f.name	
（ダメージはないけど・・・流石に体・・・もつかな・・・）[p]
#
#&f.name	
（あれからどれくらい・・・たったんだろう・・・一人で・・・なんて無謀だったかな・・・）[p]
#
#&f.name	
「少しで、いいから・・・休みたいけど・・・」[p]
#
;モンスターの鳴き声
[playse storage="obake_onjin.ogg"]
[image layer=3 page=fore storage="monster/obake.png" name="obake1" x=150 y=10]
[image layer=3 page=fore storage="monster/obake.png" name="obake2" x=350 y=150]
[image layer=3 page=fore storage="monster/obake.png" name="obake3" x=550 y=50]

[anim name="obake1" top="+=200"]
[anim name="obake2" top="+=100"]
[anim name="obake3" top="+=300"]
[anim name="obake3" top="-=100"]
#&f.name	
「ああ・・・」[p]
#
;モンスターいきなり消滅くらアニメ
[bg storage="black.jpg" time=30]
[image layer=2 page=fore visible=true name="aka" storage="agureasu_jimen.png" x=-200 y=-200 time=500]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[wait time=1000]
[playse storage="battle_se/kra_skill_2.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_0.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_1.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_2.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_3.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_4.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_5.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_11.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_12.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_13.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_14.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]



[free name="obake1" layer=3]
[free name="obake2" layer=3]
[free name="obake3" layer=3]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=1000]
[wait time=2000]
[playse storage="kieru_tairakomori.ogg"]

[free name="aka" layer=2]
[wait time=1000]



#&f.name	
（えっ・・・）[p]
#
[playbgm storage="kra_battle.ogg"]
[bg storage="creru_gate_yoru_tasogare.jpg"]
[live2d_fadeout time=1000]
[live2d_on][live2d_show name="aho" y=-1.5 scale=3.5]
[live2d_mod name="aho" idle="Arms_kamae"]
[live2d_motion name="aho" mtn="Arms_kamae"]
[live2d_motion name="aho" mtn="Arms_kamae"]
[live2d_fadein time=1000]
#クライスト	
「・・・大丈夫？」[p]
#

[live2d_mod name="aho" idle="Idle"]
[aho_head_normal]
[aho_body_normal]
[aho_arms_normal]
[aho_arms_udekumi]


#&f.name	
「あ・・・あなたは・・・」[p]
#
;クラの活躍で戦闘終了。

;異形の鳴き声
	[playse storage="igyou_nakigoe_onjin7.ogg"]
	[wait time=2500]
	[playse storage="igyou_nakigoe_onjin6.ogg"]
#騎士	
「門の方に、変な怪物が・・・・・・な・・・なんだ、ありゃああ・・・」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_metoji]
#&f.name	
「えっ・・・」[p]
#
;異形出現
[live2d_fadeout time=1000]
[config_true]
[playse storage="igyou_nakigoe_onjin6.ogg"]
[igyou_tatie_touroku]
[igyou_tatie_show]
#&f.name	
「何・・・あれ・・・」[p]
#
#&f.name	
（気持ち悪い・・・普通のモンスターとは、全然・・・）[p]
#

#&f.name	
「何・・・あれ・・・」[p]
#
[chara_kakusu]
[aho_face_mehuse]
[live2d_fadein time=1000]
[aho_head_under_y]
#クライスト	

「・・・くるよ」[p]
#
#&f.name	

「えっ・・・」[p]
#
[live2d_delete_all][live2d_off][clearstack]
[call storage="scenario_2/episode/scenario_macro.ks"][call storage="live2d_sub_macro.ks"]
[eval exp="f.friend=3"]
[fadeoutbgm time=1000]
*igyou_battle_no
[eval exp="f.monster_l_size=1"]
[battle_start]
;異形戦闘
;戦闘終了
*igyou_battle_end_no
[eval exp="f.friend=0"]
#&f.name	
「・・・今の・・・手強かった・・・な、なんなの・・・」[p]
#

[chara_on][chara_show name="kra"  top=30]

;異形の鳴き声

[playse storage="igyou_nakigoe_onjin.ogg"]

[kra_tatie_akireru]
#クライスト	
「やれやれ、本当、キリないよね」[p]
#
#&f.name	
「な・・・なんなの・・・これ・・・」[p]
#
[kra_tatie_yareyare]
#クライスト	
「うーん・・・なんだろうね、気持ち悪いよね」[p]
#
#&f.name	
（・・・この人・・・）[p]
#
#&f.name	
「・・・何か、しってるの？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「・・・うん？どうだろう」[p]
#
#&f.name	
「・・・・・・」[p]
#
[kra_tatie_normal]

#クライスト	
「ともかく、これは数が多いな・・・疲れるけど、大技で・・・」[p]
#
[chara_kakusu]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[aho_show_event]


[playbgm storage="kisimi_musmus.ogg"]
[rusia_tatie_touroku]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_normal0.png" top=40 left=0]
#ルシア	
「・・・ほう・・・少しは骨のある奴がいると見える・・・」[p]
#
#&f.name	
（えっ・・・）[p]
#
[chara_kakusu]
[chara_off][chara_hide name="rusia" time=30]
[live2d_fadein time=500]
#クライスト	
「・・・」[p]
#

[aho_face_metoji]
#クライスト	
「さあ[name]ちゃん、下がってて。あとは俺に任せてていいよ」[p]
#
#&f.name	
「クライスト、さん・・・？」[p]
#


[live2d_fadeout time=500]
[chara_on][chara_show name="rusia" top=40 time=30]
[rusia_tatie_niyari]
#ルシア	
「何者かは知らんが・・・我の邪魔をするものは、誰であろうと殺すのみ」[p]
#
[chara_off][chara_hide name="rusia" time=50]
[rusia_tatie_kamae]


[chara_off][chara_hide name="rusia" time=30]
[live2d_fadein time=500]
[aho_face_yareyare]
[aho_head_above_y]
[live2d_mod name="aho" idle="Arms_kamae"]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[aho_arms_kamae]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=700]
[free name="aka" layer=2]

#クライスト	
「悪いけど、そう言うわけにもいかないんだ」[p]
#
[live2d_fadeout time=500] 
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 time=30]

#ルシア	
「！・・・貴様・・・その剣は・・・」[p]
#

[chara_off][chara_hide name="rusia" time=50]
[live2d_fadein time=500]

[aho_head_right_z]
[aho_body_right_z]
#クライスト	
「うん、あ、色違いのお揃いだね。
[aho_face_bisyou_youen]
もしかして、相性がいいのかな？俺たち」[p]
#
[live2d_fadeout time=500]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 time=30]
#ルシア	
「ふざけたことを・・・！！！！！！」[p]
#
[chara_off][chara_hide name="rusia" time=50]
[rusia_tatie_kamae]
#ルシア	
「我はエルムナード女王、ルシア！！この魔剣ヴァエルで、憎きクレールを、貴様らを文字通り根絶やしにしてくれる！！！！！」[p]
#
#&f.name	
「魔、剣・・・？」[p]
#
[chara_off][chara_hide name="rusia" time=50]
[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
[live2d_fadein time=500]

#クライスト	
「[name]ちゃん、門はいいから、街の人たちを」[p]
#
#&f.name	
「・・・で、でも・・・」[p]
#

[aho_face_bisyou_youen]
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「俺のことは心配ないよ。絶対に勝てる」[p]
#
#&f.name	
「・・・クライストさん」[p]
#
[live2d_fadeout time=500]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_niyari0.png" top=40 time=30]

#ルシア	
「余裕のあるのも今のうちよ。すぐに苦しみのたうちまわらせてやろうぞ！！！」[p]
#

[chara_off][chara_hide name="rusia" time=50]
[aho_face_normal]
[live2d_fadein time=500]
#クライスト	
「それは、こっちのセリフ」[p]
#

[aho_head_right_x]
[aho_head_normal]
#クライスト	
「さあ、早く」[p]
#
#&f.name	
「は、はい」[p]
#

[live2d_fadeout time=500]
[live2d_delete_all][live2d_off][clearstack]
[fadeoutbgm time=1000]

[creru_iriguti_yoru]	
#&f.name	
（エルムナード女王、ルシア・・・って・・・）[p]
#
#&f.name	
（本当に、大丈夫なのかな・・・）[p]
#


[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「[name]！！！」[p]
#
#&f.name	
「あ、ライオネス！！街は、街の人たちは・・・」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・ああ・・・最初に、だいぶ被害がでちまったな・・・通りに出てた連中も多かったしよ・・・」[p]
#


#ライオネス	
「モンスターがあんだけ大量発生するなんて・・・
[lioness_tatie_normal]
ただ、途中でいきなり消えちまってよ」[p]
#

[chara_config pos_mode=false]
[chara_move name="lion" left=300]
[cera_tatie_touroku]
[chara_on][chara_show name="cera" width=336 height=482 left=0 top=130]
#セレ	
「・・・そのおかげだな。モンスターの数からすればかなりの被害を抑えられた」[p]
#
#&f.name	
「セレさん」[p]
#
[rans_tatie_rei_touroku]
#ランスロット	
「[name]、無事だったか！！」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「兄貴！」[p]
#
[chara_off][chara_hide name="lion"]
[chara_on][chara_show name="rans_rei" left=300]
#&f.name	
「あ、ランスロットも・・・王宮騎士団も手伝ってくれてたの？」[p]
#
[rans_tatie_rei_mehuse]
#ランスロット	
「いや、大半は王族の護衛に回っていて、協力ができたのは私と私の部下だけだ」[p]
#

[cera_tatie_smile]
#セレ	
「それでもかなりの戦力にはなってくれた。感謝する」[p]
#

[rans_tatie_rei_normal]
#ランスロット	
「・・・我々はすぐに王宮に戻らなくてはならない。悪いが、これで失礼する」[p]
#

#ランスロット	
「後のことは、頼んだ」[p]
#
[cera_tatie_metoji]
#セレ	
「ああ、本当にありがとう、
[cera_tatie_smile]
ランスロット」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	
「じゃあな、[name]」[p]
#

#&f.name	
「ありがとう、ランスロット！」[p]
#
	
[chara_off][chara_hide name="rans_rei"]

[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=350]

[cera_tatie_metoji]
#セレ
「・・・さて・・・私はガイアの森に避難してる都民の様子を見てくる。ここは任せるぞ」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「ああ」[p]
#

[chara_off][chara_hide name="cera"]
[tris_tatie_touroku]
[runisi]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=0]
#トリスタン	
「おい！！おい！！クライスト見なかったか！？」[p]
#
[stopse]
#&f.name	
「あ・・・クライストさんは、門の・・・」[p]
#

[playse storage="bom31_b_macchi.ogg"]
[image layer=2 page=fore storage="siro.jpg" name="siro" visible=true x=0 y=0]
[w]
[free name="siro" layer=2]
[image layer=2 page=fore storage="siro.jpg" name="siro" visible=true x=0 y=0]
[w]
[free name="siro" layer=2]
[image layer=2 page=fore storage="siro.jpg" name="siro" visible=true x=0 y=0]
[w][w][w]
[free name="siro" layer=2]
;振動、光

[lioness_tatie_odoroki]
[tris_tatie_mihiraki]
#トリスタン	
「なんだ！？」[p]
#
#&f.name	
「クライストさんは・・・私がやられるところを、助けてくれて、それで・・・今は門に・・・」[p]
#
[lioness_tatie_normal]
#&f.name	
（まだ・・・門のところで、戦ってる・・・）[p]
#
[tris_tatie_ikari]
#トリスタン	
「くそ！！あいつめ！！」[p]
#

[chara_kakusu]
#&f.name	
「あ、まって！！！！！」[p]
#
;暗転

[anten]

[bg storage="creru_gate_yoru_tasogare.jpg"]
[config_true]
[tris_tatie_show]
[tris_tatie_mihiraki_0]
#トリスタン	
「な・・・なんだあ・・・ありゃあ・・・」[p]
#
[chara_config pos_mode=false]
[chara_move name="tris" left=400]
[lioness_tatie_touroku]
[chara_on][chara_show name="lion" storage=&f.lion_odoroki height="698" width="456" top=-35 left=-20]

#ライオネス	
「・・・・・・」[p]
#
#&f.name	
（クライストさん・・・）[p]
#

[chara_kakusu]

[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[playse storage="battle_se/honoo_koukaonlabo.ogg"]
[wait time=1500]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[free name="aka" layer=2] 
[playse storage="battle_se/kra_skill_2.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 


[fadeoutbgm time=1000]
[config_true]


[rusia_show_ikari_event]
#ルシア	
「くっ・・・くそっ・・・こんな奴がクレールにいたとは・・・」[p]
#

[chara_off][chara_hide name="rusia" time=300]
[chara_on][chara_show name="kra" storage=&f.kra_yokome top=20]

#クライスト	
「まだやる？俺は全然大丈夫だけど」[p]
#
[chara_off][chara_hide name="kra" time=300]
[rusia_show_ikari_event]

#ルシア	
「今日のところは・・・ここで退いてやる・・・だが、必ず・・・！！！」[p]
#
[config_true]
[chara_off][chara_hide name="rusia"]
[chara_on][chara_show name="kra" storage="kra_tatie/Idle_gif_yareyare.gif" top=20]
;#ルシアいなくなる

[kra_tatie_akireru]	
#クライスト	
「やれやれ・・・お決まりのセリフ吐いちゃって・・・」[p]
#

[chara_kakusu]

#&f.name	
（・・・終わった・・・の？）[p]
#
[config_true]
[chara_on][chara_show name="kra" storage=&f.kra_mihiraki top=50]

#クライスト	
「・・・あれ、[name]ちゃん」[p]
#

#&f.name	
「その、大丈夫？」[p]
#
[kra_tatie_smile]
#クライスト	
「ああ、大丈夫。もう心配ないよ」[p]
#
[config_false]
[chara_move name="kra" left=-70]
[tris_tatie_touroku]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_ikari_kutiake.png" height="603" width="420" top=50 left=400]

#トリスタン	
「きっさまああああああああ！！また逃げ出したなあああ！！！」[p]
#

[kra_tatie_yareyare]
#クライスト	
「だからさあ、気づくの遅いんだって」[p]
#

#トリスタン	
「街がこんな時にこんなとこで何してた！！ああっ！？」[p]
#
[kra_tatie_akireru]
#クライスト	
「うーん、説明するのめんどくさいな」[p]
#
#トリスタン	
「なんだとっ！！」[p]
#
#&f.name	
「あの・・・トリスタン・・・クライストさんはそんなじゃ・・・」[p]
#
#&f.name	
（えーと・・・どこから説明すれば・・・）[p]
#
;暗転
[chara_kakusu]
[anten]
[bg storage="creru_gate_yoru_tasogare.jpg"]
[lioness_tatie_touroku] 

[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-20 time=300]
#ライオネス	
「エルムナード女王、ルシア・・・」[p]
#

[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400 time=300]
#トリスタン	
「にわかには信じがたいな。本当なのか？」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「エルムナードっていやあ、８年前のクレールとの戦争でボロクソに負けた国だよな」[p]
#
[tris_tatie_mayuhisome]
#トリスタン	
「それが魔剣だって？」[p]
#
#&f.name	
「は、はい・・・魔剣ヴァエルって・・・言ってました・・・」[p]
#

[lioness_tatie_normal]
#ライオネス	
「こいつが一人で言ってんならともかく、[name]の証言もある。それにさっきのも・・・下手な嘘じゃなさそうだな」[p]
#
[chara_hide_all time=300]
[config_true]
[kra_tatie_show]
#クライスト	
「信じてもらえたようで何よりだよ。ところで、街の方は大丈夫だったの？」[p]
#

#&f.name	
「う、うん・・・モンスターはすごい数だったけど、途中で消えちゃって・・・そのおかげだって皆んな」[p]
#
[kra_tatie_smile]
#クライスト	
「あ、それ、俺の手柄だよ」[p]
#

[chara_off][chara_hide name="kra" time=300]
[config_false]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400 time=300]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-20 time=300]
[tris_tatie_ikari]
#トリスタン	

「はあ！！？？馬鹿かお前は！？モンスターを消滅させるなんて人間にできるわけがなかろう！」[p]
#
[chara_hide_all time=300]

[config_true]
[kra_tatie_show]
[kra_tatie_metoji]
#クライスト	
「まあ、人間ならね」[p]
#

#&f.name	
（・・・クライストさんて・・・）[p]
#
[chara_off][chara_hide name="kra" time=300]

[config_false]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=0 time=300]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=350 time=300]
#ライオネス	
「・・・・・・」[p]
#
[tris_tatie_ikari]
#トリスタン	
「ともかくだな、さっさと物置へやに戻れ！大体、モンスターもお前のせいじゃないのか！？」[p]
#
[chara_off][chara_hide name="lion" time=300]


[chara_on][chara_show name="kra" storage=&f.kra_komari left=300 top=50]
#クライスト	
「えー、失礼だなあ、そんな面倒臭いことやらないよ・・・」[p]
#

[chara_kakusu]
;二人いなくなる
[chara_config pos_mode=true]

[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「・・・街の方がある程度片付いたら、団長に報告だな」[p]
#
#&f.name	
「う、うん・・・あ、本部は大丈夫だったの？」[p]
#
[lioness_tatie_normal]
#ライオネス	
「・・・ああ。無傷だ。
[lioness_tatie_yareyare]
しかし、エルムナードかよ・・・ったく、めんどくせえことになったもんだ」[p]
#
#&f.name	
「・・・・・・」[p]
#

[chara_kakusu]

[jump target=*sonogo]


[endif]

*sonogo
;------------------------------
;団長の部屋
[curnival_sonogo]
	
;#&f.nameの部屋
[irain_heya_yoru]

#&f.name	
（伝説の・・・剣・・・魔剣・・・か・・・本当に、不思議な力だったな・・・）[p]
#
#&f.name	
（・・・とにかくもう・・・疲れた・・・休もう・・・）[p]
#

*curnival_end	
;暗転
[anten]
[if exp="f.osasoi_else==1&&f.glif_yes==1"]
[eval exp="f.glif_battle_kizuna=1"]
グリフレットとの「戦場の絆」を入手しました！[p]
[endif]
;カーニバル編終了
[eval exp="f.friend=0"]
[eval exp="f.glif_rei=0"]
[eval exp="f.glif_igyou_sentou=0"]
[eval exp="f.gaia_hotaru=0"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=0"]
[eval exp="f.rusia_battle=0"]
[eval exp="f.osasoi_else=0"]
[eval exp="f.event_main_11=0"]
[eval exp="f.event_main_11_normal=0"]

[jump storage="scenario_2/episode/episode_jump.ks"]




	
	
	
