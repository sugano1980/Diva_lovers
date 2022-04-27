;騎士団本部


[bg storage="black.png"]
[message_settei]
[eval exp="f.epi=3"]
[episode_hyouji_only]
[r][r][r][r]第３章　エルムナード侵攻[l][cm][autosave]

[message_settei_ad]
[hidemenubutton]
[eval exp="f.episode_flag=3"]
[eval exp="f.event_main_12=1"]
[message_settei_ad]
[button_hyouji]
[bg storage="dancho_tasogare.jpg"]
[playbgm storage="shuuen_musmus.ogg"]


[cera_tatie_touroku]
[config_false]
[chara_on][chara_show name="cera" width=336 height=482 left=30 top=130]
;[chara_move name="cera" left=-1]

[dancho_tatie_touroku]
[dancho_tatie_show]
#団長	
「ともあれ、礼を言う。クライスト。貴公のおかげで、王都の被害を少なく抑えられた」[p]
#


#団長
「街中に突然発生したモンスターたちも、ほとんど倒してくれたそうだな」[p]
#
[kra_tatie_touroku]
[config_true]
[chara_show name="kra" left=220]
#クライスト	
「まあ・・・目の前で困ってる人たちを見捨てるほど、冷たくはできていないつもりなんで」[p]
#

[dancho_tatie_metoji]
#団長	
「しかしあの時貴公は物置にいたはずだ。見張りのトリスタンもずっと張り付いていたと証言している」[p]
#


[dancho_tatie_normal]

#団長
「・・・説明してもらおうか」[p]
#

[kra_tatie_mehuse]
[stopbgm]
#クライスト
	
「・・・・・。・・・呼ばれたから・・・」[p]
#

[kra_tatie_normal]
#クライスト	

「・・・ルシアの持つ魔剣ヴァエルに・・・呼ばれたから」[p]
#

[cera_tatie_mihiraki]
#セレ	
「！？」[p]
#

#団長	
「・・・わしらにもわかるよう、話してくれないか」[p]
#
[fadeinbgm storage="gaia_musmus.ogg" time=3000]
[kra_tatie_yokome]
#クライスト	
「カーニバルの夜には、御神木に自然界の『精霊』が集まるそうですね」[p]
#


#団長	
「そうだ。精霊たちが、クレールの未来を告げる予言の日・・・巫女が神木に集まる彼らからお告げを授かる」[p]
#
[kra_tatie_metoji]
#クライスト	
「精霊が集まる場所にいれば、魔剣の力もまた強まる・・・ルシアはそれを利用して、カーニバルの日に襲撃を仕掛けた」[p]
#
[kra_tatie_normal]
#クライスト	
「俺の武器と対の力を持つ、魔剣ヴァエルで」[p]
#

[dancho_tatie_metoji]
#団長	
「魔剣ヴァエル・・・か・・・[dancho_tatie_normal]対の力、とは？」[p]
#
[kra_tatie_mehuse]
#クライスト	
「魔剣ヴァエルは、破壊と破滅の力。それと対の力は、癒しと再生の力」[p]
#
[kra_tatie_normal]
#クライスト	
「ヴァエルは呼ぶんです。もう一つの片割れである魔剣アグレアス・・・癒しと再生の力を持つ、俺の剣を」[p]
#
[kra_tatie_mehuse]
#クライスト	
「対の力を持つ二つの魔剣は、力を強めた時、互いに惹かれ合う性質があるから」[p]
#

#団長	
「魔剣アグレアス・・・それが、貴公の持つ光剣の名前・・・」[p]
#

#&f.name	
（ルシアの剣が、魔剣ヴァエル・・・そして、クライストさんの剣が、魔剣、アグレアス・・・）[p]
#

#団長	
「魔剣か・・・[name]、クライストがくるまで、ルシアには全く敵わなかったんだな？」[p]
#

#&f.name	
「は、はい・・・あの・・・何もないところから、ルシアは炎を・・・それで・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#

#&f.name	
「もしかしてそれも・・・魔剣の力なの？」[p]
#
[message_kakusu_ad]

;ルシアの炎魔法のスクショ


[image layer=2 page=fore storage="rusia_fire.jpg" name="rusia" time=1000]
[wait time=2000]
[free  name="rusia" layer=2]
[kra_tatie_metoji]
[message_settei_ad]
#クライスト	
「そうだよ。自然界の精霊の力を借りた、稀有なる能力。魔剣を持つ者は
『魔法』の力を手に入れることができる」[p]
#

#&f.name	
「あの時、ルシアの攻撃を防いだのも、怪我を治してくれたのも・・・クライストさんの、その、アグレアスの力なの？」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・ああ」[p]
#

#&f.name	
（魔法の力・・・すごいんだな）[p]
#

[fadeoutbgm time=1000]
[config_false]
[chara_hide name="cera" time=5]
[chara_hide name="dancho" time=5]
[chara_move name="kra" left=-70]

[tris_tatie_touroku]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400]
#トリスタン	
「さっきから聞いてるとな・・・」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「あれ、トリスタン、いたんだ？」[p]
#

[tris_tatie_ikari]
#トリスタン	
「最初からいるわ！！物置からお前が抜け出した方法が説明されてないぞ！」[p]
#

[kra_tatie_smile]
#クライスト	
「それはその・・・不思議な力で？？」[p]
#

[tris_tatie_ha]
#トリスタン	
「はあ・・・なんだその、魔剣って、なんでもありかよ・・・」[p]
#
[chara_hide name="tris"]
[chara_move name="kra" left=+200]
[dancho_tatie_show]
#団長	
「クライスト、ひとつ聞きたい」[p]
#
[kra_tatie_normal]
[fadeinbgm storage="op_musmus.ogg" time=3000]
#団長	
「８年前も、王都にいたな？」[p]
#


#クライスト	
「ええ。覚えておいででしたか。確かに俺は、あの戦争の時傭兵団にいました」[p]
#

[kra_tatie_metoji]
#クライスト	
「その時の所業のおかげで、変な通り名までつけられましたが」[p]
#

#&f.name	
（え・・・）[p]
#


#団長	
「・・・・・・。貴公と[name]の話を聞く限り、我々ではルシアにかなうことは困難に思える」[p]
#

[kra_tatie_normal]


[chara_hide name="dancho" time=5]
[config_false]
[chara_show name="cera" storage="cera0_tatie/cera0_bikkuri.png" width=336 height=482  left=30 top=130]


[dancho_tatie_show]
#セレ	
「と、父さん！」[p]
#

[dancho_tatie_metoji]
#団長	
「斬り殺した者を異形の兵に変え、また常人には不可能な能力まで与える魔剣の前に、我々が束になってかかって勝算がもしあるとしても、多大な犠牲は避けられないだろう」[p]
#

[cera_tatie_otikomi]
#セレ	
「そ、それは・・・」[p]
#

#&f.name	
（・・・確かに・・・私たちだけでは・・・あの時だって、全然敵わなかった・・・）[p]
#

[dancho_tatie_normal]
#団長	
「・・・クライスト、
その力、我々王都民のために使ってもらえるのか」[p]
#

[kra_tatie_yokome]
#クライスト	
「８年前と同じように？」[p]
#

[stopbgm]
[dancho_tatie_metoji]
#団長	
「・・・あの時のような振る舞いをするなら、即刻王都を立ち去ってもらいたい」[p]
#
[cera_tatie_mihiraki]
#&f.name
（団長・・・？）[p]
#

[chara_hide name="kra" time=5]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=300]

#トリスタン	
「団長・・・」[p]
#


#セレ	
「と、父さん・・・？」[p]
#

[chara_hide name="cera" time=5]
[chara_hide name="tris" time=5]
[chara_hide name="dancho" time=5]
[fadeinbgm storage="shuuen_musmus.ogg" time=3000]
[config_true]
[chara_show name="kra" left=130]
#クライスト	
「その後ルシアに滅ぼされるとしても？」[p]
#
[dancho_tatie_show]

#団長	
「犠牲は避けられないが、負けるとまだ決まったわけではない。我々もおめおめとやられるつもりはないが」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・」[p]
#

#団長	
「・・・」[p]
#

#&f.name	
（８年前って・・・）[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・あの時のようには、なりません。いや、させません」[p]
#

#&f.name	
（クライストさん・・・？）[p]
#

[kra_tatie_normal]
#クライスト	
「いずれにしろ魔剣に対抗するには魔剣を使うしかない。
俺も・・・人間です。後味の悪いことは・・・避けたいから」[p]
#

[dancho_tatie_warai]
#団長	
「ありがとう、クライスト。貴公の協力に、感謝する」[p]
#
[chara_hide name="dancho"]
[chara_hide name="kra"]
[config_false]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]

[tris_tatie_show_dancho]

[tris_tatie_sian]
#トリスタン	
「・・・」[p]
#
#セレ	
「父さん・・・」[p]
#

[chara_hide_all]
[config_false]
[chara_show name="kra" left=130]
[kra_tatie_mehuse]
#クライスト	
「・・・・・・」[p]
#

#&f.name	
（クライストさん・・・）[p]
#
[chara_hide_all][chara_off]
[fadeoutbgm time=1000]
[anten]


[bg storage="kisidanrouka_tasogare.jpg"]

;騎士団廊下
#&f.name
「・・・・・・」[p]
#
[call storage="scenario_2/live2d_lioness_macro.ks"]
[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「なんだ、しけたツラして」[p]
#

#&f.name	
「ライオネス」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「とりあえず、いったん街の方は落ち着いた。モンスターもいなくなった」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「ただ・・・壊された建物とかがなあ・・・早めに対処しねえと怪我する奴が出るかもしれねえな」[p]
#

#&f.name	
「街の人の被害は・・・どうだったの？クライストさんのおかげで、抑えられたのかなとは思ったけど」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「直接モンスターにやられた人たちは少ねえが・・・二次災害つうのか・・・モンスターが壊した建物の下敷きになったやつとかもいてな」[p]
#


#ライオネス	
「街全体で見れば大した数じゃねえが、本人たちにとっちゃあそういう問題じゃないからな」[p]
#

#&f.name	
「そう、だよね・・・うん」[p]
#

[lioness_tatie_normal]
#ライオネス	
「・・・。壊れた建物や道も直さねえと・・・そいや、クライストはどうした？」[p]
#

#&f.name	
「あ、さっき、グレッグ団長と話してて・・・」[p]
#

[chara_hide name="lion"]
;暗転
[anten]
[bg storage="kisidanrouka_tasogare.jpg"]

[playbgm storage="op_musmus.ogg"]
[lioness_tatie_show]
#ライオネス	
[if exp="f.lion_battle_kizuna!=1"]
「魔剣・・・」[p]
[else]
「魔剣・・・あれが」[p]
[endif]
#

#&f.name	
「ライオネス は、知ってるの？」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「昔家庭教師に教わったことがある。人智を超える力を得られる伝説の剣とかなんとか」[p]
#

#&f.name	
「で、伝説・・・」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「噂に近いところがあったから、信じる奴から信じない奴まで様々だったけどな」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「魔剣ヴァエルに、アグレアスか・・・対の力を持つ二つは、呼び合う・・・」[p]
#

#&f.name	
「け、剣が呼び合うって・・・よくわからないけど・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「人智を超えるなんていうくらいだから、俺らにはわかんねえことがあるんだろうな」[p]
#

#&f.name	
「・・・」[p]
#
[fadeoutbgm time=1000]
[lioness_tatie_kosinite]
#ライオネス	
「あいつは、協力してくれるってんだろ？正直、助かるって言えばそうだけどな・・・」[p]
#

[playbgm storage="kisimi_musmus.ogg"]
[lioness_tatie_normal]
#ライオネス	
[if exp="f.lion_battle_kizuna!=1"]
「お前の話じゃ、ルシアは相当やばそうだし・・・
[else]
「ルシアは相当やばそうだし・・・
[endif]

[lioness_tatie_kimazui]
ただ、信用していいもんかどうか・・・」[p]
#

#&f.name	
「でも今は・・・頼るしかないんだよね、きっと・・・王都を守るためには・・・」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「ああ・・・俺らでそんなの相手にどこまで戦えるか、わかったもんじゃねえからな・・・」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「ったく、魔法だのなんだのって・・・面倒くせえことになったもんだぜ・・・」[p]
#

#&f.name	
「・・・」[p]
#

[chara_hide name="lion"]
	
[fadeoutbgm time=1000]
;ここは個別で？？？	

[eval exp="f.event_main_13=1"]
;[if exp="f.kra_battle_kizuna==1"]
[button_hyouji]
[anten]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show_sekkin_2]
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_eyes_under]
[aho_face_kunou]

[message_settei]
[playbgm storage="sinzou_onjin.ogg"]
;[playse storage="himei_koukaonlabo.ogg"]
[bg storage="sougen1_tatakai_tasogare.jpg"]
[r][r][r][r][r][r]８年前[l][cm]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[quake count=5 time=300 hmax=20]
[r][r][r][r][r][r]（・・・もっと・・・もっと・・・生命を・・・い、のちを・・・）[l][cm]
身体中が、脈打つ。[l][r]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[playse storage="nigemadou.ogg"]
[fadeoutse time=1000]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
目の前は赤く霞んで、ほとんど、何も見えない。[l][r]
[quake count=5 time=300 hmax=20]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[playse storage="kiru_onjin.ogg"]
敵か、味方か。そんなのは俺にとってどうでもいい。[l][r]
[playse storage="gucha_onjin.ogg"]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
俺が欲しいのは・・・ただ、血と肉と魂・・・。[l][r]
[quake count=5 time=300 hmax=20]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[playse storage="kiru1_koukaonlabo.ogg"]
戦場は・・・格好の、餌場だ。[l][cm]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[quake count=5 time=300 hmax=20]
[playse storage="kiru_koukaonlabo.ogg"]

[message_settei_ad]
[stopbgm]
[fadeoutse time=8000]
[wait time=1000]
[playse storage="himei_koukaonlabo.ogg"]
[bg storage="hune_souko_tasogare.jpg" time=5]
[aho_arms_normal]
[aho_eyes_normal]
[aho_head_normal]
[aho_face_mihiraki]
[live2d_fadein time=5]
[quake count=5 time=300 hmax=20]
#クライスト	
「うああああああああ！！！！」[p]
#

[aho_head_left_x]
[aho_head_under_y]
[aho_face_kunou]
#クライスト	
「っ！！！！」[p]
#

[aho_head_right_x]
[aho_head_under_y]
[aho_head_left_x]
#クライスト	
「・・・・・・なんで・・・・・・」[p]
#

#クライスト	
「・・・今更、どうしてこんなものを見せるんだ・・・アグレアス・・・」[p]
#
[aho_head_above_y]
#クライスト	
「・・・ああ、そっか・・・そうだよね。今は、そう８年前と同じ・・・」[p]
#

[aho_head_normal]
[aho_face_normal_majime]
#クライスト
（でも俺は・・・あの時とは違う）[p]
#

[aho_head_under_y]
[aho_face_mehuse]
#クライスト	
「・・・そのはずだ。君の思う通りになんか、させないよ」[p]
#

[live2d_fadeout time=1000]
[live2d_delete_all]
[live2d_off]
;[endif]

[anten]
;エルムナード帝国の説明
	
;会議前の#&f.nameの独白、８年前の戦争について、ランスから教わったことを思い出す
[message_settei]

    [r][r][r]エルムナード帝国[l][cm]
	[r][r][r]エルムナード帝国は、北大陸の西側、クレール王国の西に位置する。[l]
	[r]スピルナ鉱山をはじめとした資源豊富なクレールと対照的に、目だった資源や産業もないこの国は、ただひたすら軍事力だけを追い求め戦争をしながら領土を広げてきた。[l]
	[r]クレール王国は国内に軍力の増強へ繋がる資源...スピルナ鉱山を有していたのもあって、それを手に入れようとしたエルムナードに何度も侵略されたという。[l]
	[r]だが、その度に歴代の騎士団が彼らを追い払い...決定打となったのは８年前の戦争だったと、ランスロットには教わった。[l][cm]
	

[bg storage="irainheya_tasogare.jpg"]	
	[message_settei_ad]
#&f.name
	（私がランスロットと出会ったのは、その戦争のすぐ後...だったんだよね）[p]
	#
	#&f.name
	（クレールでは唯一の南大陸の街、テーベへの影響調査にきたのがランスロットとライオネスで...)[p]
	#
	
#&f.name	
「８年前、かあ...」[p]
#

[playse storage="nokku_tairakomori.ogg"]
;SEノック

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「おい、そろそろ会議はじまんぞ」[p]
#

#&f.name	
「あっ、はい！！今行きます！！」[p]
#
[chara_hide name="lion"]
;廊下
[bg storage="kisidanrouka_tasogare.jpg"]

[playse storage="walkyuka_onjin.ogg"]
[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「全く・・・厄介なことになったもんだぜ」[p]
#



#ライオネス	
「まさかあのエルムナードがなあ・・・」[p]
#

#&f.name	
「ライオネス・・・」[p]
#

[playbgm storage="kisimi_musmus.ogg"]
[lioness_tatie_otikomi]
#ライオネス	
「８年前、ボロクソにやられて国自体が潰れるって時に、国王陛下が温情で停戦の約束したっつーのに」[p]
#

[lioness_tatie_akireru]
#ライオネス	
「なんでまためんどくせえことやりだすもんかな」[p]
#

#&f.name	
「停戦・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「ああ。お前兄貴から習ったことないのかよ」[p]
#

#&f.name	
「えっと・・・」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「そん時、女王・・・ルシアは結構素直に従ったって話聞いたんだけどなあ」[p]
#

#&f.name	
「そうだったの？」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「もう国力も残っちゃいなかったから、当然といえば当然なんだが・・・」[p]
#

#ライオネス	
「その後、クレールの方でも色々と国を建て直すための援助をしてたらしい」[p]
#

#&f.name	
「それなのに・・・」[p]
#

[lioness_tatie_yareyare]
#ライオネス	
「ああ・・・ったく何考えてるもんだか・・・本当の気狂いってああいうのをいうんだろうな」[p]
#

#&f.name	
「・・・・・・」[p]
#
[chara_hide_all][chara_off]
[fadeoutbgm time=1000]	
[anten]
	

	
[message_settei]

・・・あのカーニバルの事件から・・・およそ一週間後。[l][r]
王宮騎士団と地方騎士団は協力して、王都を守るため本格的に異形の対策に移ることとなった。[l][r]
よりにもよってカーニバル当日、エルムナード女王ルシアによる、王都への襲撃・・・。[l][r]
流石に王宮も早急の対策が必要と判断したのだろう。[l]
[r]エルムナードへの侵攻が正式に決まり、大々的に準備が始められている。[l]
[r]これまでより頻繁に騎士団内では会議が行われ、日常の訓練も厳しいものに変わってきていた。[l]
	[cm]
[message_settei_ad]

[bg storage="dancho_tasogare.jpg"]
[playbgm storage="shuuen_musmus.ogg"]

[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
「王宮から伝達がきた。１４日後の夜明け前、エルムナード方面へ出立する」[p]
#

[playse storage="zawameki_situnai.ogg"]
[fadeoutse time=3000]
#騎士	
「１０日後だって・・・！？急じゃないか」[p]
#

#騎士	
「そうだぜ・・・街だってまだ落ち着いてないのに・・・」[p]
#

[dancho_tatie_metoji]
#団長
「延長戦は想定していない。したがって、早期に決着をつける必要があるだろう」[p]
#

#&f.name	
（えっ・・・）[p]
#

[dancho_tatie_normal]
[chara_hide name="dancho" time=5]
[config_false]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=220]
#ライオネス	
「つまり・・・必ず勝てる見込みがあるってことですね」[p]
#


#&f.name	
（そ、そうだよね、そうじゃなきゃこんなの・・・）[p]
#
[dancho_tatie_show]
[dancho_tatie_metoji]
#団長
「・・・ああ・・・強力な切り札を手に入れたからな」[p]
#
[config_false]
[chara_hide name="dancho"]
[chara_move name="lion" left=290]
[chara_show name="cera" width=336 height=482 left=30 top=130]
[cera_tatie_otikomi]
#セレ	
「・・・・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「・・・あいつか」[p]
#

#&f.name	
「あいつって・・・」[p]
#

#&f.name
	（クライストさん・・・）[p]
#

[chara_hide_all]


[bg storage="kisidanrouka_tasogare.jpg"]
[config_false]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400]
[chara_show name="kra" left=-70]
#トリスタン	
「ほら、さっさと出ろ！！」[p]
#

[kra_tatie_komari]
#クライスト	
「もうちょっと優しくしてくれないかなー。だって俺街を助けたし、協力だってするんだよ？」[p]
#

[tris_tatie_ikari]
#トリスタン	
「俺は認めてないぞ！団長がお前の話を信じただけのことだ！」[p]
#

[tris_tatie_ha]
#トリスタン	
「あああとそれから、王宮にも顔出せと言われてるぞ」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「王宮？なんで？」[p]
#

[tris_tatie_ikari]
#トリスタン	
「お前の力がエルムナードに勝つのに必要だからだとよ！」[p]
#

[kra_tatie_yokome]
#クライスト	
「なるほど。確かにまあ魔剣に対抗できるのは魔剣だけだしね」[p]
#

[tris_tatie_mehuse]
#トリスタン	
「魔剣、なあ・・・もし、お前の話が本当なら、なんでもやり放題だな」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「ん？まあ・・・[kra_tatie_smile]でも一通りやっちゃうと飽きるよね」[p]
#

[tris_tatie_ha]
#トリスタン	
「一通りやり放題したのかよ・・・」[p]
#

[fadeoutbgm time=1000]
[chara_hide_all]
[chara_off]
[anten]
[bg storage="kisidanrouka_tasogare.jpg"]

[dancho_tatie_show]
#団長
「ああ、[name]・・・今回、お前には初めての戦場になるな」[p]
#


#&f.name
「あ・・・」[p]
#


#&f.name
（そうだ・・・エルムナードに・・・仕掛けるってことは・・・戦場に、出るってことなんだ・・・）[p]
#


#&f.name
（もちろん私も・・・でなきゃ、だよね・・・）[p]
#


#団長
「出撃は１４日後だ。だが４日前には騎士それぞれの能力により、前線か後方支援かを決める事になる」[p]
#
#団長
「それまでに剣の腕を上げ、抜かりのないように準備しておくんだぞ」[p]
#


#&f.name
「は、はい」[p]
#


[dancho_tatie_metoji]
#団長
「だが、技量だけ上げれば良いというものでも無い。戦場で勝つためには、頭の良さも必要だ」[p]
#


#&f.name
（つまり・・・技術と頭脳の両方を鍛えればいいのかな）[p]
#

[dancho_tatie_normal]
#団長
「たった１０日間だからな・・・難しいこともあるかもしれん。もし無理そうなら、どちらかだけでも伸ばしておくことだ」[p]
#

#&f.name
「わ、わかりました！」[p]
#
#団長
「ああ、それから・・・隊の編成の関係があるから、前線に出た場合に所属する隊の希望を事前に聞いておきたいんだが・・・」[p]
#

#&f.name
「隊の希望ですか・・・」[p]
#

#団長
「ああ、必ず前線に出ると決まったわけではないが、直前では調整が難しいからな」[p]
#

#&f.name
「そっか・・・」[p]
#

[chara_hide_all]

[jump storage="scenario_2/sentaku.ks" target=*main_event_14_last_day_tec]

*tec_sel_end

[dancho_tatie_touroku]
[dancho_tatie_show]
[dancho_tatie_warai]
#団長
「・・・頑張れよ。お前の活躍を期待しているぞ」[p]
#


#&f.name
「は、はい！！」[p]
#

[chara_hide_all][chara_off]

[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]


;自由行動
	
;イベント
;街で街人の手伝い　#ライオネス
;王宮入口でクラとランスのイベント
	
	
;１４日後、エルムナード侵攻　ここはノベルで
	
	
;その後、ルシアと戦闘
;ランスと#ライオネスは実際異形とのバトル
	
	
	
	
	
	
	