;#ランスロット
;街中

[refresh_hanyou]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]


[live2d_load]
[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_load_off]

;[live2d_on][live2d_show name="rans2" y=-3.0 x=0.0 scale=6.5]
[creru_sakaba_yuu]
#&f.name	

（ランスロットって・・・普段王宮にいるんだよね・・・）[mil][l][k][cm][ka]
#
#&f.name	

（誘おうにも・・・王宮には入れないしなあ・・・どうしたらいいんだろう。稽古の約束しとけばよかったなあ）[mil][l][k][cm][ka]
#
#&f.name	

「んん？」[mil][l][k][cm][ka]
#
#&f.name	

（あのお店の中・・・見覚えある後ろ姿・・・もしかして、ランスロット？？）[mil][l][k][cm][ka]
#
#&f.name	

「ちょっと覗いてみよう」[mil][l][k][cm][ka]
#


[creru_sakaba_3_yoru]

[shuuen_bgm]
#&f.name	

（ランスロット・・・やっぱりランスロットだ。向かい合ってるのは・・・誰だろう）[mil][l][k][cm][ka]
#
#&f.name	

（見たことないけど・・・格好からすると・・・傭兵さん？）[mil][l][k][cm][ka]
#
#&f.name	

（ドアに貸切の看板がついてる・・・他のお客は入れないってことだよ、ね）[mil][l][k][cm][ka]
#

#&f.name	

「それにしてもランスロット、随分深刻な顔だなぁ・・・何・・・話してるんだろ・・・」[mil][l][k][cm][ka]
#

#&f.name	

（うーん・・・唇の動きとかで、なんとかわからないかな・・・えーと・・・）[mil][l][k][cm][ka]
#



[van_tatie_touroku]
[van_tatie_show]
#？	

「カーニバルだからって街は随分と浮かれてやがるな」[mil][l][k][cm][ka]
#



[chara_config pos_mode=false]
[chara_move name="van" left=300]
[rans_tatie_touroku]
[rans_tatie_show]
[chara_move name="rans" left=-70]
[van_tatie_kutinite]


#ランスロット	

「・・・それはそうだろう」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

「ガイアの教えから質素な暮らしをする都民が、ハメを外せる貴重な日だからな」[mil][l][k][cm][ka]
#


[van_tatie_utagai]
#？？？	

「質素な暮らし、ねえ・・・本当にそうか？」[mil][l][k][cm][ka]
#


[rans_tatie_mehuse]
#ランスロット	

「人それぞれ、度合いは違う」[mil][l][k][cm][ka]
#

[van_tatie_kubinite]
#？？？	

「そーかよ。しかし、祭りなんかやってる場合じゃねえと思うがなあ・・・」[mil][l][k][cm][ka]
#

[rans_tatie_sinkoku]
#ランスロット	

「・・・今は伏せておくほうがいい。いらぬ混乱を招いては取り返しのつかないことになる」[mil][l][k][cm][ka]
#

[van_tatie_utagai]
#？？？	

「本当にそれでいいのか」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

「・・・王宮の判断だ」[mil][l][k][cm][ka]
#
#&f.name	

（・・・伏せておくって・・・何を・・・？）[mil][l][k][cm][ka]
#

[van_tatie_temae]
#？？？	

「地方騎士団長も知らねえんだろ？」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
#ランスロット	

「今日、街中でモンスターが発生したため、警備の強化はしているだろうが・・・真相は知らない」[mil][l][k][cm][ka]
#
#&f.name	

（真相・・・って・・・？モンスターが発生したのは理由があるって言うこと・・・？）[mil][l][k][cm][ka]
#

[van_tatie_normal]
#？？？	

「王宮の、判断ねえ・・・それで、自分には責任がないって言うつもりか？」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
#ランスロット	

「・・・お前の報告は、父上に伝えておく。偵察、ご苦労だったな、ヴァンディット」[mil][l][k][cm][ka]
#

[van_tatie_mehuse]
#ヴァンディット

「俺が王宮騎士団を辞めたとき、お前は言ったよな。自分は、権力の犬にはならねえって」[mil][l][k][cm][ka]
#

[van_tatie_ikari]
#ヴァンディット

「・・・結局、口だけだったってことかよ」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

「・・・国庫金から、報酬を渡す。２日後に王宮へ来い」[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]

[van_tatie_donari]
#ヴァンディット

「ランスロット！！」[mil][l][k][cm][ka]
#
;#ランスロットいなくなる

[chara_config pos_mode=true]
[chara_hide name="rans"]

[van_tatie_ikari]
#ヴァンディット

「くそっ・・・」[mil][l][k][cm][ka]
#

[chara_kakusu]
	
[creru_sakaba_yuu]
#&f.name	

「あ・・・」[mil][l][k][cm][ka]
#

[rans_tatie_show]
[rans_tatie_kunou]
#ランスロット	

「・・・」[mil][l][k][cm][ka]
#

[chara_kakusu]


#&f.name	

（ランスロット・・・私にも気づかずに行っちゃった・・・）[mil][l][k][cm][ka]
#
#&f.name	

（さっきの話・・・どういうことなんだろう・・・今日、モンスターが出たのは・・・偶然とかじゃないってこと？）[mil][l][k][cm][ka]
#
#&f.name	

（傭兵さんに、偵察・・・って言ってた・・・一体どこへ？）[mil][l][k][cm][ka]
#
#&f.name	

（ランスロットは・・・何を知ってるの？）[mil][l][k][cm][ka]
#


[jump storage="scenario_2/sentaku.ks" target=*choice995]

*oikakenai
#&f.name	


「王宮の判断がどうのって言ってたし・・・一騎士の私が首を突っ込むところじゃないかも・・・」[mil][l][k][cm][ka]
#
#&f.name	


「・・・カーニバルに誘えるような雰囲気じゃないし・・・帰ろう」[mil][l][k][cm][ka]
#
[jump target=*end]


*oikakeru
;追いかける
#&f.name	

「ランスロット！！！」[mil][l][k][cm][ka]
#

[rans_tatie_show]
[rans_tatie_mihiraki]
#ランスロット	

「！！[name]！？」[mil][l][k][cm][ka]
#
#ランスロット	

「・・・どうした、こんな時間に・・・。お前は本部にいなくてはならない時間だろう」[mil][l][k][cm][ka]
#
#&f.name	

「あの、ランスロットのこと、探してて・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
#ランスロット	

「私を？」[mil][l][k][cm][ka]
#
#&f.name	

「・・・さっき、お店で、傭兵さんと・・・」[mil][l][k][cm][ka]
#

[rans_tatie_mihiraki]
#ランスロット	

「！！！！」[mil][l][k][cm][ka]
#

[rans_tatie_ikari]
;ikari
#ランスロット	

「・・・お前・・・あの話を聞いていたのか？」[mil][l][k][cm][ka]
#
#&f.name	

「そ、それは・・・」[mil][l][k][cm][ka]
#

#ランスロット	

「正直に答えるんだ、[name]。店での話を聞いたのか？」[mil][l][k][cm][ka]
#

[jump storage="scenario_2/sentaku.ks" target=*choice996]

	
*no_hear

[rans_tatie_metoji]
;normal
#ランスロット	

「・・・そうか。ならよかった。もう夜も更けた。お前は早く本部に戻るんだ」[mil][l][k][cm][ka]
#
#&f.name	

「ランスロット・・・」[mil][l][k][cm][ka]
#

[rans_tatie_ikari]
;ikari
#ランスロット	

「戻れ。いいな」[mil][l][k][cm][ka]
#
#&f.name	

「・・・はい」[mil][l][k][cm][ka]
#
#&f.name	

（約束とかできる雰囲気じゃない・・・帰ろう）[mil][l][k][cm][ka]
#

[chara_kakusu]
[jump target=*end]


*hear

[rans_tatie_mihiraki]
;mihiraki
#ランスロット	

「お前・・・」[mil][l][k][cm][ka]
#
#&f.name	

「その・・・聞いた、わけじゃないけど、唇の動きで・・・。ランスロット・・・どういうことなの？偵察って・・・真相・・・って」[mil][l][k][cm][ka]
#

[rans_tatie_sinkoku]
;mayuhisome
#ランスロット	
「読唇術か・・・。仇になったな・・・」[mil][l][k][cm][ka]
#

[rans_tatie_mayuhisome]
#ランスロット
「それ以上ここで話すな。・・・仕方ないな。どこか・・・私の部屋ではまずいしな・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「お前の部屋で話そう。いいか？」[mil][l][k][cm][ka]
#
#&f.name	

「・・・わかり、ました・・・」[mil][l][k][cm][ka]
#





[irain_heya_yoru]
;#&f.name部屋

[rans_tatie_mehuse]
#ランスロット	

「・・・今日、街でモンスターが発生したのは知っているか」[mil][l][k][cm][ka]
#
#&f.name	

「う、うん・・・私ちょうど街に出てて、セレさんと一緒に対応しました」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]

#ランスロット	

「そうか・・・それはよくやった・・・」[mil][l][k][cm][ka]
#
#&f.name	

「でも、今まで全然モンスターなんか出なかったのに、どうしていきなり・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
#ランスロット	

「・・・[name]」[mil][l][k][cm][ka]
#
#&f.name	

「はい・・・」[mil][l][k][cm][ka]
#
[shuuen_bgm]

;normal
#ランスロット	

「西にある、エルムナード国を知っているな」[mil][l][k][cm][ka]
#
#&f.name	

「エルムナード・・・えっと・・・ずっとクレールと仲悪かったって・・・あの国？」[mil][l][k][cm][ka]
#
#&f.name	

「クレールと戦争してたけど、８年前に停戦したって・・・」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

「そうだ。そのエルムナードを通った旅の商人たちから王宮に報告があったんだ」[mil][l][k][cm][ka]
#
#&f.name	

「報告って・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
#ランスロット	

「なんでも、エルムナード周辺でおかしなモンスターに遭遇して、何人か殺されたものもいるということだった」[mil][l][k][cm][ka]
#

;yokome

[rans_tatie_yokome]
#ランスロット	

「それでちょうど、王都に来ていた知人に仕事として偵察を頼んだんだが・・・」[mil][l][k][cm][ka]
#
#&f.name	

（さっきの、傭兵さんのこと、だよね・・・）[mil][l][k][cm][ka]
#

;normal

[rans_tatie_normal]
#ランスロット	

「奴の報告によれば、エルムナード周辺で異形のモンスターが発生しているらしい」[mil][l][k][cm][ka]
#
#&f.name	

「異形？異形って・・・」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
;meotji
#ランスロット	

「それに伴って、普通のモンスターも変に凶暴化し、人を襲うようになったと・・・」[mil][l][k][cm][ka]
#
#&f.name	

「・・・じゃあ、今日の街のモンスターも？」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
;mehuse
#ランスロット	

「その影響があることは間違い無いだろう」[mil][l][k][cm][ka]
#
#&f.name	

「・・・でも、異形って・・・一体・・・？」[mil][l][k][cm][ka]
#

[rans_tatie_mayuhisome]
;mayuhisome
#ランスロット	

「どういうものなのか、私にもわからない。ただ、この世のものとは思えない不気味な怪物だそうだ」[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]
#&f.name	

「・・・・・・。あれ、でも・・・それなら、カーニバルは中止にしたほうが・・・」[mil][l][k][cm][ka]
#
#&f.name	

「人が大勢集まったとき、そんなのがきたり、モンスターが出たら大変なことに」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「カーニバルは中止にはならない。陛下がエルムナードの件は国民には伏せたまま実施するそうだ」[mil][l][k][cm][ka]
#


[rans_tatie_yokome]
;yokome
#ランスロット	

「今日あいつからの報告も父上に伝えるが・・・おそらく何かが変わるようなことは無いだろう」[mil][l][k][cm][ka]
#
#&f.name	

「ど、どうして！？街の人が危ないのに、何も伝えないでお祭りをやるっていうの？！」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「国王陛下と政府高官のご意向だ。我々は、それに従うしかない」[mil][l][k][cm][ka]
#
#&f.name	

「だってこのままじゃ・・・」[mil][l][k][cm][ka]
#

[playbgm storage="chinkou_ontama.ogg"]


[rans_tatie_mehuse]
;mehuse
#ランスロット	

「いいか、[name]」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「騎士とは、国のために尽くすもの。上官と国の判断に、逆らってはならない」[mil][l][k][cm][ka]
#
#ランスロット	

「お前にはしっかりと教えたはずだが、忘れてしまったか？」[mil][l][k][cm][ka]
#
#&f.name	

「だって変だよ・・・騎士は、王都の人たちを守るためにいるんでしょ？」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
;metoji
#ランスロット	

「そうだ。

[rans_tatie_normal]
;normal
だから、被害が及ぶようなことがあれば全力で阻止する。脅威はあっても、まだ必ずくると決まったわけでは無い」[mil][l][k][cm][ka]
#
#&f.name	

「そ、それでも、今のうちになんとかしておかないと、現に今日、モンスターが出てるわけだし・・・！」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
;metoji
#ランスロット	

「・・・・・・」[mil][l][k][cm][ka]
#
#&f.name	

「ランスロット！！」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
;mehuse
#ランスロット	

「私たちにできることは、ただその剣を振るい王都民を守ることだけだ」[mil][l][k][cm][ka]
#
#ランスロット	

「それ以外のことには口を出すべきでは無い」[mil][l][k][cm][ka]
#
#&f.name	

「そ、そんな・・・」[mil][l][k][cm][ka]
#


[rans_tatie_kunou]
;kunou
#ランスロット	

「・・・今更、カーニバルを中止にするわけにはいかないのだろう」[mil][l][k][cm][ka]
#
#ランスロット	

「実際、その日のために物資を仕入れ、たくさんの商人が店を開こうと準備に勤しんでいる」[mil][l][k][cm][ka]
#
#ランスロット	

「祭りの経済効果も侮れたものでは無いし、逆に中止にした場合の損失もかなり大きいはずだ」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「特にカーニバルの日はガイアのお告げがある特別な日だ。延期と言うわけにもいかない」[mil][l][k][cm][ka]
#
#&f.name	

「で、でももしモンスターが襲ってきたら・・・商売も何も、死んじゃうかもしれないんだよ！？」[mil][l][k][cm][ka]
#

;metoji
[rans_tatie_metoji]
#ランスロット	

「何も起こらない可能性だってある。不確定なもののために、多大なリスクを犯すわけにはいかない」[mil][l][k][cm][ka]
#
#&f.name	

「・・・だって・・・ならせめて、街の人たちに知らせないと・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「それこそ、大混乱になる可能性がある。いたずらに不安を与えるのも良くない。彼らのためを思うなら、伏せておいたほうがいい」[mil][l][k][cm][ka]
#
#&f.name	

「っ・・・」[mil][l][k][cm][ka]
#

[rans_tatie_sinnpai]
;sinnpai
#ランスロット	

「・・・[name]」[mil][l][k][cm][ka]
#
#&f.name	

（・・・納得できない・・・街の人たちが危ないのに・・・黙ってなくちゃいけないの？）[mil][l][k][cm][ka]
#
#&f.name	

（ランスロットは・・・）[mil][l][k][cm][ka]
#
#&f.name	

「ランスロットは・・・それでいいの？」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「何？」[mil][l][k][cm][ka]
#
#&f.name	

「それで自分の気持ち、本当に納得してるの？」[mil][l][k][cm][ka]
#
;mihiraki
[rans_tatie_mihiraki]
#ランスロット	

「[name]・・・」[mil][l][k][cm][ka]
#


[rans_tatie_normal]
;normal
#ランスロット	

「・・・」[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]

;mehuse
[rans_tatie_mehuse]
#ランスロット	

「そうだな・・・どちらかというと・・・納得できないことばかりだ」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「私もお前くらいの時には・・・そんなふうに自分の気持ちにまっすぐだったと思う」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
;mehuse
#ランスロット	

「だが、いつからか・・・。権力の犬と言われるのも、仕方のない話だ」[mil][l][k][cm][ka]
#
#&f.name	

（あ、さっきの傭兵さんに言われてた・・・気にしてたんだ）[mil][l][k][cm][ka]
#

;mehuse
#ランスロット	

「納得ができなくても、従わなくてはならない、王宮ではそう言ったことが多くてな」[mil][l][k][cm][ka]
#

[rans_tatie_kunou]
;kunou
#ランスロット	

「だがそうしないと・・・組織として成り立たない。そういう側面もあるんだ・・・」[mil][l][k][cm][ka]
#
#&f.name	

「ランスロット・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「お前の気持ちはよくわかる。私も本音は、自国の危機に祭りを開くのは反対だ」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
;metoji
#ランスロット	

「それでも国王陛下がそう判断されるのならば・・・『騎士として』従わなければならないと思っている」[mil][l][k][cm][ka]
#

[rans_tatie_yokome]
;yokome
#ランスロット	

「陛下も愚かな方ではない。カーニバルの中止をすればどのような影響が出るのか・・・それも加味したお考えなのだろう」[mil][l][k][cm][ka]
#
#&f.name	

「・・・っ」[mil][l][k][cm][ka]
#
#&f.name	

「・・・でも、あるよね・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「[name]」[mil][l][k][cm][ka]
#
#&f.name	

「たとえそうでも、できること、あるよね！！街の人たちのために」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「[name]・・・」[mil][l][k][cm][ka]
#
#&f.name	

「テーベでは・・・わからなかった、こういうこと・・・王様が言ったら、みんな従う・・・従わなくちゃならない」[mil][l][k][cm][ka]
#
#&f.name	

「けど、それでもできることって、きっとあるはずだよね」[mil][l][k][cm][ka]
#
#&f.name	

「街の人たちのこと、みんなを守りたいよ」[mil][l][k][cm][ka]
#

[rans_tatie_sinnpai]
;sinnpai
#ランスロット	

「[name]・・・」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
;mehuse
#ランスロット	

「・・・ああ、そうだな・・・」[mil][l][k][cm][ka]
#
#&f.name	

（けど・・・一体何ができるだろう。グレッグ団長に言って、とりあえず警備を固めたりすることくらいしか・・・）[mil][l][k][cm][ka]
#
[playbgm storage="kisimi_musmus.ogg"]


[rans_tatie_sinkoku]
;sinkoku
#ランスロット	

「報告によれば、異形のモンスターはそれこそ普通のものとは比べ物にならないほどの強さだそうだ」[mil][l][k][cm][ka]
#
#ランスロット	

「その姿を見ただけで怯えて逃げ出す傭兵もかなりいたらしい」[mil][l][k][cm][ka]
#
#&f.name	

「そんなのが・・・エルムナードに・・・」[mil][l][k][cm][ka]
#

[rans_tatie_yokome]
;yokome
#ランスロット	

「・・・ああ。エルムナード国内はどうなっているのか不明だが、どうもそこの城下町から来ているのではないかという話だったな」[mil][l][k][cm][ka]
#

[rans_tatie_kunou]
;kunou
#ランスロット	

「手だれの兵を集めて対応するとしても、それで十分なのかどうかも定かではないが・・・」[mil][l][k][cm][ka]
#
#&f.name	

「私たちも・・・勝てるのかどうか・・・分からないってことだよね・・・」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
;metoji
#ランスロット	

「ああ・・・ともあれ、グレッグ団長に報告してなんらかの対応を練るしかないだろう」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「私も父上・・・ウェルム王宮騎士団長に協力を仰いでみるつもりだ」[mil][l][k][cm][ka]
#
#&f.name	

「ランスロット・・・ありがとう」[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]

[rans_tatie_metoji]

;warai
#ランスロット	

「ああ」[mil][l][k][cm][ka]
#

#&f.name	

（・・・不安だけど・・・でも・・・やるしか、ないんだよね・・・）[mil][l][k][cm][ka]
#
#&f.name	

（なんだか・・・カーニバルに誘うとか、そんな雰囲気じゃなくなっちゃったな・・・）[mil][l][k][cm][ka]
#
#&f.name	

「・・・はあ・・・」[mil][l][k][cm][ka]
#

;mihiraki
[rans_tatie_mihiraki]
#ランスロット	

「どうした、[name]」[mil][l][k][cm][ka]
#

[rans_tatie_normal]
;normal
#ランスロット	

「異形とは、お前一人で闘うわけじゃない。皆もいる。自信を持て」[mil][l][k][cm][ka]
#
#&f.name	

「あっ・・・うん・・・わかってる・・・でも、そのそれとは別で・・・」[mil][l][k][cm][ka]
#


;mihiraki
#ランスロット	

「？」[mil][l][k][cm][ka]
#
#&f.name	

（強いモンスターが襲ってくるかもしれないって言うのにお祭り行こうだなんて・・・言えないよね・・・）[mil][l][k][cm][ka]
#
#&f.name	

「な、なんでもない・・・」[mil][l][k][cm][ka]
#

[rans_tatie_normal_warai]
;warai
#ランスロット	

「・・・お前は、つくづく・・・嘘をつくのが下手だな」[mil][l][k][cm][ka]
#

#&f.name	

「へっ・・・？」[mil][l][k][cm][ka]

#
[refresh_hanyou]
[chara_kakusu]
;Live2d切り替え

[call storage="scenario_2/live2d_rans_macro.ks"]
[live2d_load]

[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_load_off]
[live2d_mod name="rans2" idle="Idle_no_move" no=0]

[live2d_on][live2d_show name="rans2" y=-4.0 x=0.0 scale=8.0]
[live2d_motion name="rans2" mtn="Exp_bisyo"]
[live2d_fadein time=1000]
[playbgm storage="omoi_ontama.ogg"]

[rans_body_right_z]
[rans_head_right_z]
#ランスロット	

「最初、私を探していたと言っていたな。夜の街まで出てきて・・・大事な用事だったんじゃないのか」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・あっ・・・その・・・でも、こんな時に、って叱られちゃうかもだし」[mil][l][k][cm][ka]
#

[rans_body_normal]
[rans_head_normal]
[rans_exp_normal]
[rans_exp_metoji]
[rans_head_under_y]

#ランスロット	

「言わないではぐらかすほうが余程叱りたくなるが」[mil][l][k][cm][ka]
#
#&f.name	

「うっ・・・」[mil][l][k][cm][ka]
#
#&f.name	

「うう・・・その・・・ランスロットと一緒に、カーニバルに行きたいなって」[mil][l][k][cm][ka]
#


[rans_body_above_y]
[rans_exp_mihiraki]
#ランスロット	

「[name]・・・」[mil][l][k][cm][ka]
#
[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
#&f.name	

「あっ・・・でもね、さっきの異形の話聞く前だったし、そんなことがあるのなら、一緒になんて言ってる場合じゃないと思うし」[mil][l][k][cm][ka]
#
#&f.name	

「き、気にしないで！大丈夫だから」[mil][l][k][cm][ka]
#

[rans_head_under_y]
[rans_head_left_x]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_muzukasii]
#ランスロット	

「・・・・・・」[mil][l][k][cm][ka]
#


#&f.name	

（う・・・難しい顔してる・・・言うんじゃなかったかも・・・）[mil][l][k][cm][ka]
#

[rans_head_normal]
[rans_body_normal]
[rans_mod_idle_no_move]
[rans_exp_normal]
#ランスロット	

「[name]」[mil][l][k][cm][ka]
#
#&f.name	

「い・・・いいよ・・・本当、大丈夫だし・・・いかなくても大丈夫」[mil][l][k][cm][ka]
#

[rans_head_left_z]
[rans_exp_yokome]

#ランスロット	

「いや、そうではない」[mil][l][k][cm][ka]
#
[rans_head_normal]
#&f.name	

「え・・・？」[mil][l][k][cm][ka]
#

[rans_head_under_y]
[rans_head_right_x]
[rans_body_right_z]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット	

「当日、私はパレードに出なくてはならなくてな・・・警備もあるから、そのあとの少しの時間しか取れないんだが・・・それでもいいか」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・い、いいの？」[mil][l][k][cm][ka]
#


[rans_arms_normal]
[rans_head_normal]
[rans_body_normal]
[rans_head_left_z]
[rans_body_left_z]
[rans_mod_idle_no_move]
[rans_exp_sinpai]

#ランスロット	

「ほんの少しの時間だけで、申し訳ないが・・・」[mil][l][k][cm][ka]
#
#&f.name	

（ランスロット・・・）[mil][l][k][cm][ka]
#
#&f.name	

「ううん、嬉しい。忙しいのに、ごめんね」[mil][l][k][cm][ka]
#
[rans_mod_idle_no_move]
[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
#ランスロット	

「[name]・・・」[mil][l][k][cm][ka]
#
#&f.name	

「その・・・楽しみに、してるね」[mil][l][k][cm][ka]
#

[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
#ランスロット	

「ああ・・・」[mil][l][k][cm][ka]
#

[rans_head_normal]
[rans_mod_idle_no_move]
[rans_exp_normal]
#ランスロット	

「・・・では、私は王宮へ戻る。グレッグ団長には、明日の朝に報告して、ただ、口外しないように伝えてくれ」[mil][l][k][cm][ka]
#
#&f.name	

「わかりました！」[mil][l][k][cm][ka]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット	

「それじゃあな、おやすみ」[mil][l][k][cm][ka]
#
[rans_head_right_z]
[rans_body_right_z]
#&f.name	

「おやすみなさい！」[mil][l][k][cm][ka]
#

[live2d_off][live2d_delete_all]
[playse storage="simerusizuka_onjin.ogg"]
	
#&f.name	

（ランスロット・・・パレードに出るって言ったらかなり忙しいはずなのに・・・時間作ってくれるんだ・・・）[mil][l][k][cm][ka]
#
#&f.name	

「・・・なんて、ウキウキとかしてる場合じゃないよね・・・頑張らないと・・・」[mil][l][k][cm][ka]
#
#&f.name	

（異形のモンスター・・・大丈夫なのかな・・・私たちで・・・勝てるのかな・・・やるしか、ないけど・・・）[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]
;暗転


[bg storage="dancho_yoru_tasogare.jpg"]
;団長の部屋
[dancho_tatie_touroku]
[dancho_tatie_show]

[dancho_tatie_metoji]
#団長	

「・・・そうか。事情はわかった。詳細は伏せて、警備計画の見直しと警備班の再編成を行うことにする」[mil][l][k][cm][ka]
#

[dancho_tatie_ikari]
#団長

「しかし・・・異形か・・・一体どれだけの強さなのか・・・情報が足りなさすぎるな」[mil][l][k][cm][ka]
#
#&f.name	

「はい・・・」[mil][l][k][cm][ka]
#
#&f.name	

（とにかく・・・できる限り準備しとくしかないんだよね・・・）[mil][l][k][cm][ka]
#
#&f.name	

（不安だな・・・ランスロットは・・・どうしたかな。ウェルム王宮騎士団長に協力してもらうって言ってたけど）[mil][l][k][cm][ka]
#

[chara_hide name="dancho"]


;王宮

[bg storage="werumuheya_yoru_tasogare.jpg"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[rans_tatie_touroku]
[rans_tatie_show]
[chara_config pos_mode=false]
[werumu_tatie_touroku]
[werumu_tatie_show]

#ウェルム王宮騎士団長	

「地方騎士団に協力する？寝言を言うな、我々は王族の警備が最優先だ。街のことなど構っている暇はない」[mil][l][k][cm][ka]
#

[rans_tatie_sinkoku]
#ランスロット	

「しかし今回は未曾有の危機でもあります。敵が強大である以上、立場を超えて協力すべきです」[mil][l][k][cm][ka]
#


#ウェルム王宮騎士団長		

「未曾有の危機？笑わせるな。先の戦争で、エルムナードはもはや兵力をほとんど失っていた」[mil][l][k][cm][ka]
#

[werumu_tatie_mehuse]
#ウェルム王宮騎士団長		

「情けなく敗戦するところを、こちらの温情で停戦に持ち込んだのだ」[mil][l][k][cm][ka]
#

[werumu_tatie_metoji]
#ウェルム王宮騎士団長		

「今や弱小のあの国に、異形のモンスターを生み出せる力などあるものか」[mil][l][k][cm][ka]
#

[rans_tatie_mehuse]
#ランスロット	

「しかし現にエルムナード周辺では異形の怪物による被害が続出していると・・・」[mil][l][k][cm][ka]
#

[werumu_tatie_yokome]
#ウェルム王宮騎士団長	

「大方、普通のモンスターの変異種か何かと間違えたのだろう。そう言ったことはよくある」[mil][l][k][cm][ka]
#

[rans_tatie_mayuhisome]
#ランスロット	

「変異種・・・し、しかし・・・」[mil][l][k][cm][ka]
#

[werumu_tatie_mehuse]
#ウェルム王宮騎士団長		

「案ずることは無い。地方騎士団も傭兵を雇って兵力を増強しているらしいではないか」[mil][l][k][cm][ka]
#

[werumu_tatie_yokome]
#ウェルム王宮騎士団長		

「先の街中でのモンスター騒ぎも、おそらく一過性のものだろう」[mil][l][k][cm][ka]
#

[rans_tatie_sinkoku]
#ランスロット	

「楽観的すぎます。父上は、事の重大さをわかっておられない」[mil][l][k][cm][ka]
#


[werumu_tatie_metoji]
#ウェルム王宮騎士団長		

「事の重大さ、か・・・仮にもし街に被害が出たとしても、だ。我々は王族を守るのが任務だ」[mil][l][k][cm][ka]
#
#ウェルム王宮騎士団長		

「王都民が何人死のうとも、王族だけは守らなければならない」[mil][l][k][cm][ka]
#

[rans_tatie_ikari]
#ランスロット	

「父上・・・！」[mil][l][k][cm][ka]
#

[werumu_tatie_normal]
#ウェルム王宮騎士団長		

「そうだろう。王族がいなければ、誰がこの国を率いていくと言うのか。王族だけは、死んではならないのだ」[mil][l][k][cm][ka]
#

[werumu_tatie_metoji]
#ウェルム王宮騎士団長		

「何が起ころうと我々は地方騎士団に協力する気など無い。話がこれだけなら、もう下がれ」[mil][l][k][cm][ka]
#

[rans_tatie_kunou]
#ランスロット	

「・・・っ」[mil][l][k][cm][ka]
#

[werumu_tatie_donari]
#ウェルム王宮騎士団長		

「下がれ、ランスロット」[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

「・・・失礼します」[mil][l][k][cm][ka]
#
[chara_hide name="werumu"]
[playse storage="simerusizuka_onjin.ogg"]
[anten]


[rans_tatie_mehuse]
#ランスロット	

（[name]・・・すまない・・・）[mil][l][k][cm][ka]
#

[rans_tatie_metoji]
#ランスロット	

（だが、父上の同意が得られないなら・・・せめて）[mil][l][k][cm][ka]
#
[chara_config pos_mode=true]
[chara_kakusu]
	
;カーニバルまであと●日

[irain_heya]
#&f.name	

（できる限り、頑張っておくしか無いよね・・・！！）[mil][l][k][cm][ka]
#
[eval exp="f.carnival_rans=1"]
*end
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_8]
