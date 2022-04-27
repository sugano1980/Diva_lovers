*erumu_war

[anten]
[skip_button_off]
[button_hyouji]
[message_settei]
[r][r][r]
それから数日。[l]
[r]地方騎士団も王宮騎士団も通常の業務を最低限にして、来るべき戦いの準備に専念するようになった。[l]
[r]街には物騒な姿の傭兵たちがあふれ、街の人たちの表情も皆不安げだ。[l]
[r]私も不安な気持ちは同様だったが、彼らとは立場が違う。[l]
[r]私はもう、守られる者ではなく、守る者となったのだ。[l]
[r]鍛冶屋のおじさんが寝る間を惜しんで磨いた双剣を、腰にしっかりと固定する。[l]
[r]心の中の弱い自分を押し込めて、グレッグ団長の話す訓示に耳を傾けた。[l]

[cm]

[r][r][r][r][r]
そして・・・作戦当日。[l]
決戦の火蓋が、今ここに、切っておとされる―。[l]
;テストコード
;[eval exp="f.event_war_lion=1"]

;
[cm]

[playbgm storage="erumu_senjou.ogg"]
[r][r][r][r][r]
これまでの静寂はなんだったのだろう。[l]
[r]一度、王都に異形が襲ってきてからは、静かな日々が続いていたと思う。[l]
[r]だが、今私の目の前に広がる光景は―王都から関所までの、あの平和で広い草原は―[w]
[r]まさに、地獄絵図・・・そういいきっても言いすぎではないほど、凄惨たるものだった。[l]

[cm]


[message_settei_ad][config_true]
[bg storage="sougen1_tatakai_tasogare.jpg"]
[playse storage="igyou_nakigoe_onjin7.ogg"]
[wait time=2000]
[playse storage="igyou_nakigoe_onjin2.ogg"]
[wait time=2000]
[playse storage="igyou_nakigoe_onjin3.ogg"]
#騎士
「うっ・・・うわああ・・・なんだありゃ・・・」[p]
#



;異形出現　３体くらい

[image layer=3 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" x=-41 y=90 time=1000]
[w]

[image layer=3 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" x=280 y=50 time=1000]

[w]

[image layer=3 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" x=140 y=0 time=1000]
[p]
[free name="monster_1" layer=3 time=1000]



右陣側　地方騎士団[p]
[kra_tatie_touroku][chara_show name="kra" left=130]
#クライスト
「・・・ルシアも、もしかしたら勘付いたのかな？[kra_tatie_metoji]偶然かな？でもいいタイミングだよね」[p]
#

[playse storage="igyou_nakigoe_onjin3.ogg"]
#&f.name
「・・・く、クライストさん・・・？どうしてここに？確か王宮の指示に従うからって王宮騎士団の陣に・・・」[p]
#


[playse storage="igyou_asioto_onjin.ogg"][kra_tatie_yokome]
#クライスト
「ああ、まぁ俺、一応作戦の要だからね。さっきまであっちにいたんだけど」[p]
#


[playse storage="igyou_nakigoe_onjin7.ogg"]
[kra_tatie_smile]
#クライスト
「あんなところじゃ息もつまるし精神集中もできないよ。どうせ手順はわかってるから、いいんだよ〜」[p]
#


#&f.name
「はあ・・・」[p]
#


#&f.name
（・・・緊張感なさすぎ・・・）[p]
#
[chara_hide name="kra"]

;異形鳴き声、突進音　近づく
[playse storage="igyou_nakigoe_onjin6.ogg"]
[wait time=5000]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=5 time=300 hmax=20]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=5 time=300 hmax=20]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=5 time=300 hmax=20]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=5 time=300 hmax=20]
[w]
[playse storage="igyou_nakigoe_onjin7.ogg"]
[quake count=5 time=300 hmax=20]

[playse storage="igyou_nakigoe_onjin2.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190 time=1000]

[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]



[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100 time=1000]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]

[w]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150 time=1000]




[p]
[free name="monster_1" layer=1 time=1000]

[tris_tatie_touroku][chara_show name="tris" height="603" width="420" top=50 left=400]
[tris_tatie_donari]
#トリスタン
「くるぞ！弓兵構え用意！！！！」[p]
#
[chara_show name="kra" left=-70]
#クライスト
「あー！ちょっとまってちょっとまって、トリスタン早すぎだよ！まずは俺が先！」[p]
#
[kra_tatie_komari][tris_tatie_ikari]
#トリスタン
「なんだと！？作戦の指示どおりに・・・」[p]
#
[kra_tatie_normal]
#クライスト
「違うよ、指示どおりなら俺が先！先に矢なんか放ったら王宮連中からサボったって煩く言われる」[p]
#
[config_false]
[dancho_tatie_touroku_war][dancho_tatie_show_war]
#団長
「クライストの言うとおりだ、トリスタン！弓兵構えやめ！！！」[p]
#
[chara_hide name="tris"][config_true][chara_hide name="dancho_war"]
[fadeoutbgm time=3000][kra_tatie_metoji]
#クライスト
「全く困るよ・・・ただでさえ王宮の連中はうるさいんだからさ・・・」[p]
#

[kra_tatie_mehuse][chara_hide_all][chara_show name="kra" storage="kra_tatie/Idle_gif_jumon.png" left=-220]
[playbgm storage="jinari_tairakomori.ogg"][chara_mod name="kra" storage="kra_tatie/Idle_gif_jumon_1.png"][playse storage="mahoukakeru_koukaonlabo.ogg"][chara_hide_all]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]

[image layer=0 page=fore storage="agureasu.png" name="agureasu" x=-100 y=180]



#騎士
「な、なんだありゃ・・・」[p]
#
[playse storage="sirudo_tairakomori.ogg"]

[image layer=1 page=fore storage="agureasu.png" height="185" width="500" name="agureasu_1" x=-120 y=-110]
[image layer=1 page=fore storage="agureasu.png" height="185" width="500" name="agureasu_1" x=150 y=-110]
[image layer=1 page=fore storage="agureasu.png" height="185" width="500" name="agureasu_1" x=417 y=-110]



#&f.name
（・・・あれはクライストさんが魔法を使うときに出る、魔方陣だ・・・そしてルシアも・・・）[p]
#
[free name="monster_1" layer=1]
[chara_show name="kra" storage="kra_tatie/Idle_gif_jumon_1.png" left=-220]
#クライスト
「さあ・・・まずは第一弾と行こうかな」[p]
#
[chara_hide_all]
[image layer=1 page=fore storage="black_load.png" time=50 name="kuro"]

[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]

[image layer=0 page=fore storage="agureasu.png" name="agureasu" x=-100 y=180]


[font color="#00ffff"]
#クライスト
「・・・あらゆるものを形どる秩序の霊よ、契約によりわが言霊に答え、その地に立つものを粉々に砕きつくせ・・・」[p]
#
[font color="white"]
;スキルSE
[playse storage="humikomi_koukaonlabo.ogg"]

[stopbgm]
[image layer=1 page=fore storage="siro.jpg" time=50 name="siro"]
[free name="kuro" layer=1]
[free name="agureasu_1" layer=1]
;発光
#クライスト
『わが声にこたえよ！』[p]
[stopbgm]
[playse storage="agureasu_macchi.ogg"]
[playse storage="bom31_b_macchi.ogg"]
[quake count=50 time=2000 hmax=20 wmax=20]

;スキル　ラースオブゴッド　以降戦闘中発動スキルに追加

[bg storage="black.jpg" time=5]
[free name="siro" layer=1]

[image layer=2 page=fore storage="siro.png" name="siro"]
[free name="siro" layer=2 time=500]
[playse storage="klaistkougeki_koukaonlabo.ogg"]

;[playse storage="battle_se/kra_skill_3_1.ogg"]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_0.png" x=0 y=0 time=35]
[free layer=3 name="anime_kra_skill" time=30]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_1.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_2.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_3.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_4.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_5.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

;[playse storage="battle_se/kra_skill_3_1.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_6.png" x=0 y=0 time=55]
[wait time=300]
[free layer=3 name="anime_kra_skill" ]

[image layer=1 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_7.png" x=0 y=0 time=55]
[wait time=300]


[image layer=1 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_8.png" x=0 y=0 time=55]
[wait time=300]

[playse storage="dogon_koukaonlabo.ogg"]
[image layer=2 page=fore storage="siro.jpg" name="siro" time=1000]
[image layer=1 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_9.png" x=0 y=0 time=55]
[wait time=300]


[image layer=1 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_10.png" x=0 y=0 time=55]
[wait time=300]


[image layer=1 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_2_11.png" x=0 y=0 time=55]
[wait time=300]



;[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_0_10.png" x=0 y=-200 time=55]
[wait time=3500]
[free name="anime_kra_skill" layer=1]
[free layer=3 name="anime_kra_skill" ]
[free name="siro" layer=2]
[playse storage="kieru_tairakomori.ogg"]
[free name="agureasu" layer=1]
[free name="agureasu" layer=0]
[free name="monster_1" layer=1 time=1000]
[free name="monster_2" layer=1 time=1000]
[free name="monster_3" layer=1 time=1000]


[bg storage="sougen1_tatakai_tasogare.jpg"]
#&f.name
（・・・す・・・すごい・・・）[p]
#
[tris_tatie_show]
#トリスタン
「・・・・・・」[p]
#
[chara_hide name="tris"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「・・・・・・」[p]
#
[chara_hide_all]




左陣側　王宮騎士団[p]


[playse storage="uma_onjin.ogg"]
[wait time=1000]
[playse storage="zawameki_soto.ogg"]

;馬のいななき　ざわめき
[config_true]
[rans_tatie_touroku_war]
[chara_show name="rans_war" storage="rans_tatie/rans_normal_war.gif" top=20 left=0]
[rans_tatie_yokome_war]
#ランスロット
「・・・・・・」[p]
#

[glif_tatie_touroku_war]
[chara_show name="glif_war" top=30 width="530" height="691"]
#グリフ
「・・・隊長・・・」[p]
#

[config_false]
;ランスうつむく

[ector_tatie_touroku_war]
[ector_tatie_show_war][ector_tatie_mehuse_war]
#エクター
「・・・・・・」[p]
#


;エクター目を伏せる
[chara_hide_all]


;--------------------------ランス、グリフフラグあり
[if exp="f.event_war_rans==1||f.event_war_glif==1"]

[werumu_tatie_touroku_war]
[werumu_tatie_show_war]
#ウェルム王宮騎士団長
「口だけのことはある。さて・・・あとはやつがルシアを潰すまで地方騎士団がどれだけもつかだな」[p]
#

[chara_show name="rans_war" storage="rans_tatie/rans_normal_war.gif" top=20 left=130]
#ランスロット
「・・・父上？」[p]
#


#ウェルム王宮騎士団長
「撤退の準備をしろ。交戦に入ったところで我々は地方騎士団を盾に王都へ戻る」[p]
#

[playbgm storage="chinkou_ontama.ogg"]
[rans_tatie_mihiraki_war]
#ランスロット
「父上！何を・・・」[p]
#

[werumu_tatie_donari_war]
#ウェルム王宮騎士団長
「準備を急げ、ランスロット」[p]
#

[rans_tatie_ikari_war]
#ランスロット
「・・・正気ですか。これまでの作戦の立案も地方騎士団との折衝も全て・・・」[p]
#

[werumu_tatie_mehuse_war]
#ウェルム王宮騎士団長
「そもそも、作戦など立てる必要もなかったのだ。化け物は化け物同士戦わせておけばいいこと」[p]
#

[werumu_tatie_normal_war]
#ウェルム王宮騎士団長
「とはいえ、王都民にはそれなりのパフォーマンスが必要だ」[p]
#

[werumu_tatie_yokome_war]
#ウェルム王宮騎士団長
「王宮騎士団と地方騎士団が立場を超え、協力して異形の脅威と戦う・・・凡民が喜びそうな演目だろう？」[p]
#


#ランスロット
「・・・恥を知れ、という言葉をご存知ですか」[p]
#

[werumu_tatie_metoji_war]
#ウェルム王宮騎士団長
「わしとお前の認識は違う。下らぬ誇りのために、自身や部下の命を投げ出すことほど、恥と知れ」[p]
#


#ランスロット
「地方騎士団員の命は、投げ出してもいいということですか」[p]
#


[werumu_tatie_normal_war]
#ウェルム王宮騎士団長
「彼らの命を預かるのは、わしではない」[p]
#

#ランスロット
「・・・・・・」[p]
#

#ウェルム王宮騎士団長
「カーニバルの時と同じようなことをするなら、今回は容赦せんぞ、ランスロット」[p]
#

[rans_tatie_normal_war]
#ランスロット
「父上・・・」[p]
#


#ウェルム王宮騎士団長
「アニス副団長、急げ」[p]
#
[chara_hide name="werumu_war"]
[anis_tatie_touroku_war][anis_tatie_show_war]
#アニス副団長
「・・・御意」[p]
#

[chara_hide name="anis_war"]


[rans_tatie_mehuse_war]
#ランスロット
「・・・」[p]
#
[config_true]
[chara_show name="glif_war" top=30 width="530" height="691"]
#グリフ
「隊長・・・」[p]
#

[config_false]
[ector_tatie_show_war]
#エクター
「・・・・・・」[p]
#
[chara_hide_all][stopse]
[fadeoutbgm time=3000]
[endif]

;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


[anten]
;暗転


;異形鳴き声　異形出現　クライストLive2d


[bg storage="sougen1_tatakai_tasogare.jpg"]
[playbgm storage="erumu_senjou.ogg"]
右陣側　地方騎士団[p]

[playse storage="igyou_nakigoe_onjin7.ogg"]
[quake count=5 time=300 hmax=20]

[playse storage="igyou_nakigoe_onjin2.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190 time=1000]

[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[w]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[w]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100 time=1000]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]

[w]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150 time=1000]



[playse storage="igyou_nakigoe_onjin6.ogg"]
#&f.name
（１０・・・２０・・・ううん、それ以上いる・・・！！）[p]
#

[free name="monster_1" layer=1]

[chara_show name="kra" storage="kra_tatie/Idle_gif_kamae.png" left=-220] 
#クライスト
「きりがないって、こういうことかな。やれやれ、あとは頼んだよ。俺は本命を潰してくるから」[p]
#


;あぐれあす出現
#&f.name
（そうか・・・クライストさんは、ルシアを直接倒しに行くんだ・・・魔剣に対抗できるのは、魔剣しかないものね・・・）[p]
#



[if exp="f.event_war_lion==1"]
[jump storage="scenario_2/episode/event_war_lion.ks" target=*lion]
[elsif exp="f.event_war_rans==1||f.event_war_glif==1"]
[jump storage="scenario_2/episode/event_war_rans.ks" target=*rans]
[elsif exp="f.event_war_kra==1"]
[jump storage="scenario_2/episode/event_war_kra.ks" target=*kra]
[endif]


*novel
[anten]
[message_settei]
[playbgm storage="kisimi_musmus.ogg"]
;ノベル部分
異形との戦いは、過酷を極めた。[l][r]
血で血を洗う、という言葉があるけれど、本当にその通りだと思った。[l][r]
握り締めた剣の柄は、もう異形の体液でべとべとだ。[l][r]
だがそれを気にしている暇もない。[playse storage="kiru_onjin.ogg"]私はとびかかってきた小型の異形を剣で振り払った。[l][r]
「ギュェッッ」[l][r]
[playse storage="taoreru1_onjin.ogg"]
手足が不自然な形に変形した、幼児の姿をした異形が、地面に叩きつけられる。[l][r]
[playse storage="gucha_onjin.ogg"]
びちゃっっと、内臓か何かだろうか、茶色い何かが潰れて飛び散った。[l][r]
「うぐっ・・・」[l][r]
吐き気を感じて、口を手で押さえようにも異形の体液まみれで体に触れることすらできない。[l][r]

[cm]


「はあ・・・はあ・・・」[l][r]
一体私は、どれくらい戦っているのだろう。[l][r]
大分長い時間のようにも感じるが、クライストが戻ってこないところを見るとそう大した時はたっていないのかもしれない。[l][r]
[bg storage="sougen1_tatakai_tasogare.jpg" time=50]
あたりを見回せば、茶色い体液にまみれた異形の死体と、赤い血にまみれて倒れた騎士たちの姿がある。[l][r]
みずみずしい緑の草原は、茶色と鮮やかな血の色に埋め尽くされていた。[l][r]
倒れた異形と、並んで息絶えている騎士の姿を見ていると、
異形も、人間も、死体になれば変わりがないように思えて・・・思わず首を振った。[l][r]
王宮騎士も、地方騎士ももう関係ないようだった。[l][r]
異形の群れに襲われて、地方騎士団と王宮騎士団とで挟み撃ちにしたはずだが、それよりも異形の勢いは凄まじかったのだ。[l][r]
（もう・・・乱戦状態、だよね・・・みんな・・・どこにいるのかな）[l][r]
[cm]
草原は広い。[l][r]
[playse storage="igyou_nakigoe_onjin5.ogg"]
[playse storage="kiru_onjin.ogg"]
[w]
[playse storage="igyou_nakigoe_onjin7.ogg"]
遠めに誰かが剣を振るっていたり、巨大な異形を倒しにかかっている姿が見える。だけどそれが見知ったものであるかは判別がつかなかった。[l]
[cm]
[fadeoutbgm time=1000]

[if exp="f.event_war_lion==1"]
[jump storage="scenario_2/episode/event_war_lion.ks" target=*lion_main]
[elsif exp="f.event_war_rans==1||f.event_war_glif==1"]
[jump storage="scenario_2/episode/event_war_rans.ks" target=*rans_main]
[elsif exp="f.event_war_kra==1"]
[jump storage="scenario_2/episode/event_war_kra.ks" target=*kra_main]

[endif]



