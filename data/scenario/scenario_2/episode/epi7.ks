	
	
	
;テストコード
;[eval exp="f.event_main_15_date_rans=1"]	
;[eval exp="f.rans_heart_kizuna=2"]
;[eval exp="f.ranskonkando=100"]
;[if exp="f.event_main_15_date_rans==1"]	
;[eval exp="f.date_sp=1"]

[anten][message_kakusu_ad][message_settei]
[cm]
[showmenubutton]
[r][r][r][r][r]地方騎士団解散[l]
[hidemenubutton][cm]

[bg storage="irainheya_tasogare.jpg"][message_settei_ad]
#&f.name
「昨夜は慣れないドレスに人も多くてすごく疲れたけど・・・。陛下からも褒められたのは嬉しかったな」[p]
#
#&f.name
「これからも頑張らなくちゃね。街の人のためにも」[p]
#

;#&f.name
;「あ、そうだ、今日はランスロットと出かける約束なんだっけ。何を着ていこう」[p]
;#

;[soubi_henkou]
;*equip
;[live2d_lion_touroku]
;[live2d_fadeout time=10]
;[live2d_lion_show]
;[message_settei_ad]
;#&f.name
;（よし、準備OK!）[p]
;#
;
;テストコード
;[eval exp="f.kra_heart_kizuna=0"]
;テストコード
;[eval exp="f.event_main_15_days=10"]
;[eval exp="f.event_main_16_days=10"]
;[eval exp="f.event_war_lion_sumi=1"]
;[eval exp="f.event_war_kra_sumi=1"]
;[eval exp="f.butou_yes=1"]
;[eval exp="f.event_main_14_sumi=[0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]
;[eval exp="f.event_sub_14_sumi[2]=1"]
;[eval exp="f.event_sub_14_mother_kaiwa=1"]
;[eval exp="f.event_main_15_date_rans=1"]	
;[eval exp="f.rans_heart_kizuna=1"]
;[eval exp="f.lionkonkando=100"]
;[playse storage="nokku_tairakomori.ogg"]
;[jump target=*epi7]
;[live2d_delete_all]
;[live2d_lion_touroku]
;[live2d_fadeout time=1000]
;[live2d_lion_show]
;;;[rans_exp_normal_warai]
;[live2d_fadein time=1000]
;#ランスロット
;「おはよう、[name]」[p]
;#
;#&f.name
;;「ランスロット、おはよう！」[p]
;#
;[rans_fashion_check]

;[live2d_fadein time=1000]
;#ランスロット
;「さあ、行くか。せっかくの休暇だ。なるべく・・・お前とのんびり過ごせる場所がいいな」[p]
;#
;;#&f.name
;（のんびりできる場所かあ・・・どこがいいかなあ）[p]
;#
;[live2d_fadeout time=1000]
;[eval exp="f.irain_move=2"]
;現在の場所フラグ
;[eval exp="f.place_creru_honbu=1"]
;外出フラグ（イベント以外である証明）
;[eval exp="f.irain_out=1"]
;[eval exp="f.irain_heya=0"]
;[eval exp="f.friend=2"]
;[eval exp="f.date_event_flag=1"]
;[eval exp="f.date_now = 1"]
;[playbgm storage="gogonohizasi_ontama.ogg"]
;[creru_outo_map]
;[elsif exp="f.event_main_15_date_lion==1"]	
;[elsif exp="f.event_main_15_date_kra==1"]			
;[endif]
;祝賀会の時のデートイベント後、本部に帰ってくると起こる（デートがない場合は、そのまま部屋に#ライオネスが呼びにくる）

*epi7

[bg storage="irainheya_tasogare.jpg"]
[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「[name]」[p]
#
#&f.name	
「ライオネス、どうしたの？」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「グレッグ団長が話あるって・・・部屋に来てくれって言ってる」[p]
#
#&f.name	
「うん、わかった。・・・」[p]
#
[chara_hide_all]
;廊下
[bg storage="kisidanrouka_tasogare.jpg"]

[playse storage="walkyuka_onjin.ogg"]

[lioness_tatie_show]
[lioness_tatie_otikomi]
#ライオネス	
「・・・・・・」[p]
#
[stopse]
#&f.name	
「・・・ライオネス？」[p]
#
#&f.name	
（なんだか、元気がないように見えるけど・・・）[p]
#
#&f.name	
「・・・あの・・・団長、なんの話かな？」[p]
#
[lioness_tatie_normal]
#&f.name	
「あ、もしかして・・・ヴァエルのこととか？何か、わかったのかな」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・ああ・・・少しは、な」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「とは言っても、少しだけだけどな。とりあえずの目標ができただけ、まだマシってところだ」[p]
#
#&f.name	
「・・・」[p]
#
#ライオネス	
「・・・・・・」[p]
#
#&f.name	
（ヴァエルのこと・・・あんまりわからなかったから、落ち込んでるのかな・・・？）[p]
#
[chara_hide_all]

[playse storage="nokku_tairakomori.ogg"]
	
[bg storage="dancho_tasogare.jpg"]
#&f.name	
「失礼します・・・あ！」[p]
#
[cera_tatie_touroku]
[cera_tatie_show]
[cera_tatie_smile]
#セレ	
「[name]」[p]
#
#&f.name	
「セレさん！！出張から戻ったんだね！？」[p]
#
[cera_tatie_komari]
#セレ	
「ああ、すまない・・・お前に伝えるのが遅れてしまったな」[p]
#

#&f.name	
「ううん、よかった、無事に帰ってきてくれて」[p]
#
[cera_tatie_smile]
#セレ	
「[name]・・・」[p]
#
[config_false]
[dancho_tatie_touroku]
[dancho_tatie_show]
#団長	
「・・・これでそろったな。それじゃあクライスト、話を」[p]
#
[chara_hide_all]
[playbgm storage="shuuen_musmus.ogg"]

[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「ヴァエルについて、ガイア地母神教の巫女様から話を聞いてきたよ」[p]
#
#&f.name	
「巫女様から・・・？」[p]
#
[kra_tatie_yokome]
#クライスト	
「ああ。やはり俺の睨んだとおりだった。大きな声では言えないけど・・・」[p]
#
[chara_hide_all]
[anten]

[message_settei]
	[r][r][r][r][r]
	クライストの語った内容はこうだった。[l]
	[r]今から何百年以上も前、クレールの町を魔力で救った魔族のひとりを、市民たちがその力を恐れ嬲り殺しにしたこと。[l]
	[r]それだけでなく、人ならざるあやかしの力を使う者として、国をあげて魔族全体を潰そうとしたこと。[l]
	[cm]
[message_settei_ad]

[bg storage="dancho_tasogare.jpg"]
#&f.name	
「・・・う・・・そ・・・」[p]
#
[config_false]
[chara_show name="cera" storage="cera0_tatie/cera0_bikkuri.png" width=336 height=482 left=30 top=130]
#セレ	
「昔のクレールが・・・そんなことを・・・？そんな・・・」[p]
#
[chara_show name="tris" storage="tris_tatie/tris_sian.png" height="603" width="420" top=50 left=360]
#トリスタン	
「俺も最初はそうだった。そんなことがあるものかと。だが、これは本当のことらしい」[p]
#

[chara_hide_all time=50]

[config_true]
[kra_tatie_show_tall]
#クライスト	
「・・・巫女様も、このことは誰にも話すつもりはなかったみたいだ。だけど先代の巫女が、この事実を風化させてはいけないと言い残したって」[p]
#
#&f.name	
「クライストさん・・・だから・・・魔族の思念からできあがったヴァエルが、クレールに復讐を・・・？」[p]
#
[kra_tatie_yokome]
#クライスト	
「・・・・・・・。そう、考えるのが妥当だろうね」[p]
#
#&f.name	
「・・・・・・・・・・・・」[p]
#
#&f.name	
（昔のクレールの人たちが・・魔族に酷いことをしたせいで・・・）[p]
#
[kra_tatie_mehuse]
#クライスト	
「・・・だから、ヴァエルが一方的に悪いと決め付けることはできない。これは昔のクレールが招いた結果でもあるから」[p]
#
[config_false]
[chara_move name="kra" left=-70]
[lioness_tatie_show_right]
#ライオネス	
「・・・それでも、今ここにいる王都の人間は関係ねえだろ・・・。ヴァエルにとってみちゃ、クレールの人間が皆憎いんだろうが」[p]
#
[kra_tatie_metoji]
#クライスト	
「・・・そうだね・・・」[p]
#
[fadeoutbgm time=3000]

[chara_hide_all time=50]
[dancho_tatie_show]
[dancho_tatie_metoji]
#団長	
「因果応報なのだとしても・・・我々はおとなしく殺されるのを待つわけにはいかない。・・・生きるために。王都を守るために」[p]
#
[dancho_tatie_normal]
#&f.name	
「団長・・・」[p]
#
[kra_tatie_show_tall]
#クライスト	
「・・・ヴァエルは精神体で、物質世界に生きる俺たちから攻撃を仕掛けることはできない。だから、こちらの世界に引き込む必要がある」[p]
#
#&f.name	
「物質世界に、引き込む・・・？」[p]
#
[kra_tatie_metoji]
#クライスト	
「ああ。その方法を研究してる学者が、巫女様が言うには研究都市ウェスタにいるらしいんだ」[p]
#
#&f.name	
（ウェスタ・・・昔ランスロットにちらっと教えてもらったような気もするけど・・・確か・・・）[p]
#
#&f.name	
「ウェスタは・・・島にある、町とかって・・・よくわからないけど」[p]
#
[kra_tatie_normal]
#クライスト	
「そうだよ。クレールと南の大陸にあるフランチェスカとのちょうど真ん中、中央大海に浮かぶ島にある街だ」[p]
#
#&f.name	
「研究都市に・・・クライストさんひとりで？」[p]
#
[kra_tatie_yokome]
#クライスト	
「いや、ライオネスとトリスタンも行くって」[p]
#
#&f.name	
「えっ！？だ、だって街は・・・騎士団の仕事は・・・？地方騎士団はただでさえ人、足りないのに・・・」[p]
#

[dancho_tatie_metoji]
#団長	
「・・・[name]」[p]
#
#&f.name	
「は、はい」[p]
#
[kra_tatie_mehuse]
[dancho_tatie_normal]
#団長	
「・・・・・・・・・・・・実はな、まだ、全員には知らせていないことなんだが・・・・・今朝、王宮の使者が本部に来てな」[p]
#
#&f.name	
（王宮の・・・使者・・・？）[p]
#
[playbgm storage="chinkou_ontama.ogg"]
#団長	
「わが地方騎士団の解散を陛下が決定したと、通達してきた」[p]
#
#&f.name	
「！！？？」[p]
#
#&f.name	
「えっ・・・か・・・解散て・・・・・・・・その・・・つまりは・・・」[p]
#
[chara_hide name="kra" time=50]
[chara_hide name="dancho" time=50]
[config_true]
[lioness_tatie_show]
[config_false]
[dancho_tatie_show]
#ライオネス	
「つまり、地方騎士団をなくすってことだよ」[p]
#
#&f.name	
「そ・・・そんなっ・・・どうして！？」[p]
#

[fadeoutbgm time=2000]
[dancho_tatie_metoji]
#団長	
「まあ落ち着け。わしも最初は驚いたが・・・厳密に言えば、王宮騎士団との合併ということらしい」[p]
#
#&f.name	
「合併・・・」[p]
#
[dancho_tatie_normal]
#団長	
「王宮騎士団と地方騎士団の業務範囲、王宮の警備と王都の警備に関するいざこざをなくすため、統合して新しい騎士団を作る、ということだ」[p]
#
#&f.name	
「あ、新しい騎士団って・・・つまり・・・王宮騎士団と、地方騎士団が合わさって、一つの騎士団になるってこと、ですか？」[p]
#
#団長
「そういうことだな。わしらの担当していた仕事は、騎士団内の複数の部署となるだろう」[p]
#

#&f.name	
「は、はあ・・・」[p]
#
[lioness_tatie_yareyare]
#ライオネス	
「なんだか、面倒くさいことになりそうだよな・・・」[p]
#
[chara_move name="lion" left=-70]
[tris_tatie_show_right]
#トリスタン	
「仕方ないだろ。騎士やめろって言われるよりはいいじゃないか。
[tris_tatie_donari]
そしたらお前一気に無職だぞ！？」[p]
#
[lioness_tatie_akireru]
#ライオネス	
「・・・」[p]
#
[dancho_tatie_metoji]
#団長	
「・・・中には不満を持つものもいたが・・・陛下のご意向だ。逆らえるものではない」[p]
#
#&f.name	
「・・・・グレッグ団長・・・・」[p]
#
#&f.name	
（あれ、でも・・・）[p]
#
#&f.name	
「グレッグ団長は・・・どう、されるんですか・・・？新しい騎士団のどこかの部署に・・・？」[p]
#
[dancho_tatie_normal]
#団長	
「わしはこれ限りで騎士をやめ、戦いから身を引こうと思っている。あとは・・・セレに任せる」[p]
#
[chara_hide_all time=50]

[chara_show name="cera" storage="cera0_tatie/cera0_mihiraki.png" width=336 height=482 left=30 top=130]
#セレ	
「と、父さん！？」[p]
#
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=360]
#トリスタン	
「えっ！！？？だ、団長！！？？」[p]
#
[chara_hide_all time=50]

[config_true]
[lioness_tatie_show]
[lioness_tatie_otikomi]
#ライオネス	
「団長・・・」[p]
#

[chara_hide_all time=50]

[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 top=130]
[config_false]
[dancho_tatie_show]
#団長	
「大丈夫だ。あとは頼むぞ」[p]
#
[cera_tatie_mihiraki]
#セレ	
「・・・だ、だけど・・・私・・・」[p]
#
#団長	
「自信を持て、セレ。新しい騎士団での活躍を期待していると、陛下からもお言葉があったぞ」[p]
#
[cera_tatie_otikomi]
#セレ	
「陛下が・・・」[p]
#
#団長	
「もちろん、[name]、お前もだ」[p]
#
#&f.name	
「こ、国王陛下が・・・」[p]
#
#&f.name	
（嬉しいけど・・・緊張しちゃうなあ・・・）[p]
#
#団長	
「セレ、[name]、わしの分も、その力を王都のために使ってくれ。王都の人たちも、それを望んでいるだろう」[p]
#
[cera_tatie_mihiraki]
#&f.name	
「団長・・・」[p]
#&f.name	
（グレッグ団長・・・引退する・・・騎士を、やめるってことだよね・・・確かに、歳のこともあるのかな・・・）[p]
#
#セレ	
「父さん・・・」[p]
#
[cera_tatie_otikomi]
#&f.name	
（セレさん・・・お父さんの団長と一緒に地方騎士団を率いてきたんだもんね・・・）[p]
#
#&f.name	
（でも・・・新しい騎士団、か・・・ランスロットたちと同じところで働くってことになるのかな）[p]
#
#&f.name	
（王宮騎士の人たちも一緒にだよね、うまくいくのかなぁ）[p]
#

[chara_hide_all time=50]

[lioness_tatie_show_left]
#ライオネス	
「・・・まあそんなだからよ、騎士団も一気に大所帯になるし・・・俺とトリスタンはクライストとウェスタに行こうと思ってる」[p]
#
[tris_tatie_show_right]
#トリスタン	
「目下の王都のこともあるが、ヴァエルをそのままにしておくにはいかないからな！」[p]
#
[chara_hide_all time=50]
[config_true]
[kra_tatie_show_tall]
#クライスト	
「時々異形が出るくらいなら、新しい騎士団で対応は大丈夫だと思うよ」[p]
#
#&f.name	
「そ・・・そっか・・・」[p]
#
[chara_hide_all]
#&f.name	
（ライオネスたちは、ウェスタに・・・そうだよね、ヴァエルが狙ってるのは、王都・・・）[p]
#
#&f.name	
（新しい騎士団に入るにしても・・・ヴァエルもなんとかしないと・・・いけないよね）[p]
#

[config_true]
[chara_show name="tris" storage="tris_tatie/tris_sian.png" height="603" width="420" top=50]
#トリスタン	
「しかしウェスタに行くって決めたのはいいが、船はどうするんだ？」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「それは心配ないよ。俺の知り合いに船を持ってる男がいるから、彼に乗せてもらう」[p]
#
[config_true]
[chara_move name="kra" left=-70]
[lioness_tatie_show_right]
#ライオネス	
「お前の知り合いか・・・
[lioness_tatie_udekumi]
なんかうさんくせえにおいがするな・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「あはは。大丈夫だよ。見た目はともかく、中身はまともな人だから」[p]
#
[chara_hide_all]	
	
	
[dancho_tatie_show]
#団長	
「では、ライオネスとトリスタンは、入団は後ほどということだな。その旨、王宮に伝えておく」[p]
#
[chara_hide name="dancho"]
[tris_tatie_show]
[config_false]
[dancho_tatie_show]
#トリスタン	
「お願いします！」[p]
#
[chara_hide name="tris"]
#団長	
「[name]、お前はセレと一緒ですぐに入団で構わないな？」[p]
#
#&f.name	
「あ、えっと・・・あの・・・」[p]
#

[fadeinbgm storage="raina_p_ontama.ogg" time=1000]
#&f.name	
（・・・ヴァエルのこと・・・ライオネスたちにまかせっきりで、いいのかな・・・）[p]
#
#&f.name	
（だけど王都にはまだ異形が出るっていうし・・・新しい騎士団に入って今までどおり仕事を続けたほうが・・・でも・・・）[p]
#
#&f.name	
（どうしよう・・・どうすれば・・・）[p]
#
	
#&f.name	
「ごめんなさい、団長・・・少し、考えさせてもらってもいいですか・・・？」[p]
#
#団長	
「・・・そうだな。なかなかすぐに決められることでもないな・・・。クライストたちがウェスタに出航するまで、まだ時間があるようだからゆっくり決めるといい」[p]
#
#&f.name	
「ありがとうございます、団長」[p]
#
[dancho_tatie_warai]
#団長	
「ああ。よく考えて、後悔のないようにな」[p]
#

#&f.name	
「はい」[p]
#
[chara_hide_all][chara_off]

#&f.name	
（地方騎士団は・・・なくなっちゃうんだね・・・なんだか、寂しい気もするけど・・・）[p]
#
	
#&f.name	
（私も早く・・・決めないとね・・・ウェスタに行くのか、新しい騎士団に入るのか・・・）[p]
#
[fadeoutbgm time=1000]
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]


*epi7_choice_scenario

[bg storage="kisidaniriguti_hiru_tasogare.jpg"]

[config_true]
[cera_tatie_show]
#セレ	
「[name]！」[p]
#

#&f.name	
「あ、セレさん・・・あ、その荷物・・・」[p]
#
[cera_tatie_metoji]
#セレ	
「ああ、この建物は閉鎖されることになったからな。
[cera_tatie_normal]
新しい宿舎が王宮内にできるらしいから、場所を移さなくてはならない」[p]
#
#&f.name	
「そ、そっか・・・そう、だよね・・・新しい騎士団になるんだもんね・・・」[p]
#
[cera_tatie_komari]
#セレ	
「[name]・・・お前も早く、支度をしないと・・・ウェスタには行くことにしたのか？」[p]
#
#&f.name	
「それがまだ・・・」[p]
#
#セレ	
「早く決めた方がいいぞ、明後日にはもう出港らしいから」[p]
#
#&f.name	
「えっ・・・そうなんだ・・・」[p]
#
[cera_tatie_udekumi]
#セレ	
「シャロームの港に船が停泊していた。見た目は海賊船のような感じがしたが・・・」[p]
#
#&f.name	
「・・・」[p]
#
[cera_tatie_normal]
#セレ	
「父さんがする手続きもあるから、騎士団に入るなら早めに伝えてくれ」[p]
#
#&f.name	
「う、うん、わかった」[p]
#
[cera_tatie_smile]
#セレ	
「それじゃあな、頼むぞ」[p]
#
[chara_hide_all][chara_off]
#&f.name	
（どっちにしろ、ここは出なきゃなんだよね・・・）[p]
#
#&f.name	
（・・・私も、荷造りはじめなきゃ・・・）[p]
#

[bg storage="kisidanrouka_tasogare.jpg"]
#騎士	
「よう、[name]。お前にも世話になったな。元気でいろよ」[p]
#
#&f.name	
「あ・・・」[p]
#
#&f.name	
「その大荷物・・・」[p]
#
#騎士	
「俺、王都を出るよ。実家が商売やっててさ、継いだ兄貴が具合悪くしたってんで、俺も手伝おうと思って」[p]
#
#&f.name	
「そうなんだ・・・。新しい騎士団には入らないの？」[p]
#
#騎士	
「俺は王宮騎士たちとは気が合いそうにないからな・・・あいつらと一緒に仕事することもあるんだろ？どうもな・・・」[p]
#
#騎士	
「そう思ってたら、ちょうど先の知らせが届いたもんでさ」[p]
#
#&f.name	
「そっか、そうなんだ・・・寂しくなるけど・・・気をつけてね」[p]
#
#騎士	
「ああ、じゃあな・・・。またいつか」[p]
#
#&f.name	
（地方騎士のみんなも複雑だよね・・・陛下の命とはいえ、王宮騎士の人たちといきなり仕事しろって言われても・・・）[p]
#

[bg storage="irainheya_tasogare.jpg"]
;#&f.nameの部屋
#&f.name	
（慣れ親しんだ騎士団本部の建物とも、この部屋とも、もうお別れなんだよね・・・）[p]
#
#&f.name	
（私ももう、決めなくちゃ・・・王都に残るか、ウェスタに行くか・・・）[p]
#
	
[jump storage="scenario_2/sentaku.ks" target=*event_main_16_choice]

