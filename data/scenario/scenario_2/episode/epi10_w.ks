

;ウェスタ

[anten][button_hyouji]
[message_settei_ad]
[playbgm storage="wave1_koukaonlabo.ogg"]
[bg storage="wesuta_hune.jpg"]

[wait time=2000]

[playbgm storage="wesuta_ontama.ogg"]
[bg storage="wesuta_city.jpg"]

#&f.name	
（ここが、ウェスタ・・・王都より、なんだろうすごく静か・・・歩いてる人も学者さんみたいな人が多いなあ・・・）[p]
#

[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「さすがに学者の聖地とも言われるだけあって、荘厳な雰囲気だね」[p]
#
#&f.name	
(・・・歩いてる人も学者さんみたいな人が多いなぁ・・・あれ、あの遠くに見える大きな建物って・・・）[p]
#
#&f.name	
「クライストさん、あの大きな建物はなに？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「あれは古代図書館だよ。図書館とはいうけど、学者たちの研究施設も兼ねてる」[p]
#
#&f.name
(・・・古代図書館・・・）[p]
#
#&f.name	
（王都にも図書館はあるんだけど、あんなに大きくはないよね・・・すごいなあ・・・）[p]
#

#&f.name	
（研究施設・・・ってことは・・・）[p]
#
#&f.name	
「もしかして、具現化の研究をしてるその人もいるかな？」[p]
#

[kra_tatie_normal]
#クライスト	
「そうだね、まずは行ってみようか」[p]
#

[chara_move name="kra" left=-70]
[tris_tatie_touroku]
[tris_tatie_show_right]
#トリスタン	
「よし！行くぞライオネス！！もたもたするな！！」[p]
#
[config_false]
[chara_hide name="kra"]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_akireru" height="698" width="456" top=-35 left=-70]
#ライオネス	
「・・・お前・・・船から降りた途端張り切りやがって・・・」[p]
#

[chara_hide_all]
[config_true]
	
;図書館前庭背景

[bg storage="toshokan_tasogare.jpg"]

#&f.name	
（すっごい広い・・・これって、図書館の前庭みたいなものなのかな・・・王宮と同じくらいの広さはあるかも・・・）[p]
#

[kra_tatie_touroku]
[kra_tatie_show_tall]
「図書館は一般の人たちにも開放されているからね。憩いの場所にもなってるみたいだね」[p]
#
#&f.name	
「クライストさん、いろいろ詳しいね」[p]
#
[kra_tatie_yokome]
#クライスト	
「ああ、俺は来たことがあるからね。仕事でだけど」[p]
#
;図書館前

[kra_tatie_bisyou_youen]
#クライスト	
「じゃ、行こうか」[p]
#

[chara_hide_all]

[bg storage="toshokan_room_tasogare.jpg"]
;図書館中
#&f.name	
（うわー・・・中はもっと広い・・・）[p]
#

[bg storage="toshokan_room1_tasogare.jpg"]

[tris_tatie_touroku]
[tris_tatie_show]
#トリスタン	
「すごいな・・・これは・・・」[p]
#
[chara_hide_all]
[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「ちょっと、あそこに受付があるみたいだから聞いてくるよ」[p]
#
;#クライスト消える
[chara_hide_all]

[lioness_tatie_touroku]
[lion_para_kioku]
[chara_on][chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-70]
#ライオネス	
「・・・こういう場所は、苦手だな・・・」[p]
#
[tris_tatie_show_right]
#トリスタン	
「お前は本を読まないからな。
[tris_tatie_niyaniya]
読み始めても３秒で寝るんだろ」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「うるせえな、３秒はねえ。３分は持つ」[p]
#

#&f.name	
（・・・どっちも変わらない気が・・・）[p]
#
[chara_hide_all]

[kra_tatie_show_tall]
#クライスト	
「精神体の研究をしている学者、トレヴィ博士っていうんだってさ」[p]
#
[kra_tatie_yokome]
#クライスト	
「いつもは２階の研究室にいるらしいんだけど、あいにく今日は出張で出払ってるって」[p]
#
#&f.name	
「ええっ・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「大丈夫、明日には戻るって話だから、今日は宿に泊まって明日またこよう」[p]
#

[chara_hide_all]
[lioness_tatie_show_left]
#ライオネス	
「なんだよ・・・なんか調子狂うな・・・」[p]
#
[tris_tatie_show_right]
#トリスタン	
「いないものは仕方ないだろう！
[tris_tatie_smile]
そうと決まれば宿を探すぞ！」[p]
#
[tris_tatie_warai]
#トリスタン	
「先にいって宿屋の場所を確かめてくる」[p]
#
[lioness_tatie_yareyare]
#&f.name	
「あ、はい！」[p]
#

[tris_tatie_ryoukai]
#トリスタン	
「行くぞ！ライオネス！！」[p]
#
[lioness_tatie_akireru]
#ライオネス	
「なんなんだよお前さっきから張り切りやがって・・・」[p]
#
;#トリスタンと#ライオネス立ち去る

[chara_hide_all][chara_off]

;行動画面へ
;MAP
[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]


*next_day
[skip_button_off][button_hyouji]
#&f.name
「今日は図書館に行くんだよね・・・そろそろ出発しないと」[p]
#
[bg storage="toshokan_tasogare.jpg"]
#&f.name	
「クライストさん」[p]
#
[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「やあ、きたね。
[kra_tatie_bisyou_youen]
それじゃ、図書館に行こうか」[p]
#
[chara_hide_all]
[bg storage="toshokan_room1_tasogare.jpg"]
;図書館中

[lioness_tatie_touroku]
[lion_para_kioku]
[chara_on][chara_show name="lion" storage="&f.lion_nemunemu" height="698" width="456" top=-35 left=-40]
#ライオネス	
「ふあああ・・・ねみい・・・」[p]
#
[tris_tatie_touroku]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_niyaniya.png" height="603" width="420" top=50 left=360]

#トリスタン	
「お前昨日酒場で飲みすぎたんだろ？」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「うるせえなお前だろうが飲みすぎたのは！！」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「ちょっと静かにしてくれないかな、ここ図書館なんだよ？」[p]
#
[chara_hide_all time=50]
[chara_on][chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]
#ライオネス	
「っ・・・」[p]
#
[chara_on][chara_show name="tris" storage="tris_tatie/tris_niyaniya.png" height="603" width="420" top=50 left=360]

#トリスタン	
「ほーら怒られた」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「っ・・・このやろ・・・」[p]
#
#&f.name	
（・・・はぁ・・・）[p]
#
;暗転
[chara_hide_all]
[anten]
[fadeoutbgm time=3000]
[bg storage="toshokan_room2_tasogare.jpg"]
#トレヴィ	
「・・・おや。私に何か御用ですかな？」[p]
#

[kra_tatie_show_tall]
#クライスト	
「あなたが、精神体の研究をしているというトレヴィ博士ですか？」[p]
#

#トレヴィ	
「いかにも私がトレヴィだが・・・あなた方は？」[p]
#

#&f.name	
「あの、私たちクレールからきました。えっと・・・どこからはなせばいいのか・・」[p]
#
[kra_tatie_mehuse]
#クライスト	
「・・・失礼ながら、単刀直入に聞きます、博士。精神体で構成されるものを具現化することはできますか？」[p]
#

#トレヴィ	
「なんですと？あなた方は・・・」[p]
#
[chara_move name="kra" left=-70]
[lioness_tatie_show_right]
#ライオネス	
「方法はあるのか？」[p]
#
#トレヴィ	
「・・・方法は・・・。とりあえず、あなた方の詳しい話を聞きましょうか。私の研究室へどうぞ」[p]
#

[bg storage="torevi_room.jpg"]	
;研究室

[playbgm storage="gaia_musmus.ogg"]
#トレヴィ	
「クレールでそのようなことが・・・魔剣ヴァエル・・・」[p]
#

#&f.name	
「博士は、魔剣のことはご存知なんですか？」[p]
#

#トレヴィ	
「はい。自らの意思を持つ剣・・・その剣は、魔族の思念体集合・・ディーヴァにより構成されていると・・。」[p]
#

[chara_show name="kra" storage="&f.kra_yokome" top=0 left=130]
#クライスト	
「よく知っていますね」[p]
#

#トレヴィ	
「私も昔、魔剣については興味がありました。
ここの書物を読み漁った結果です」[p]
#

#トレヴィ
「その当時魔剣の研究は大流行でしたが、何しろ本当に存在するかもわからず、
魔剣に関する書物も現存するものは限られていたため次第に専門に研究する者は減少し、
今ではほとんどいません」[p]
#

#トレヴィ
「しかしまさか、本当に存在していたとは・・・」[p]
#
[kra_tatie_mehuse]
#クライスト	
「魔剣は本当に存在します。ここにも」[p]

[stopbgm]
;#アグレアス出現させる
[chara_hide_all time=30]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=700]
[free name="aka" layer=2]
[chara_show name="kra" storage="kra_tatie/Idle_gif_kamae.png" left=-220] 
#トレヴィ	
「・・・これが・・・」[p]
#

[playse storage="agureasu_macchi.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=700]
[free name="aka" layer=2]


#トレヴィ	
「うわっ！！」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「不用意に触らないほうがいいです。魔剣は契約者以外の人間に触れられるのを嫌がる」[p]
#
#トレヴィ	
「君はこの魔剣と契約したわけだな」[p]
#

#クライスト	
「・・・はい」[p]
#
#トレヴィ	
「・・・愚かなことを・・」[p]
#
[kra_tatie_yokome]
#&f.name	
（え・・・愚か・・・って・・・）[p]
#
[chara_hide_all time=50]

[chara_on][chara_show name="tris" storage="tris_tatie/tris_mayuhisome.png" height="603" width="420" top=50 left=360 time=50]
[chara_on][chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

#ライオネス	
「な、なんだよそれ・・」[p]
#
#トリスタン	
「愚か・・・？どういうことだ・・・」[p]
#
#&f.name	
（どうして、そんなことを・・・？）[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「・・・確かにそうですね。しかし、今はそんな話などどうでもいい。
[kra_tatie_mehuse]
クレールに差し迫っている脅威を取り除くのが先です」[p]
#

[kra_tatie_metoji]
#クライスト
「魔剣ヴァエルのディーヴァはクレールに恨みを抱き、次なる契約者を探して
かの国を滅ぼさんとしています」[p]
#

[kra_tatie_normal]
#クライスト
「ヴァエルが契約者を手に入れる前になんとかして倒さなくてはならない。
その方法を探して、俺たちはここまで来たんです」[p]
#
#&f.name	
（そう・・・今はヴァエルのことが先だよね・・・哀れ・・・てのも、気になりはするけど・・・）[p]
#
#&f.name	
（・・・クライストさん・・・）[p]
#


[playbgm storage="op_musmus.ogg"]
#トレヴィ	
「・・・ディーヴァは思念体・・精神世界に生きるものです。
私たちが生きている物質世界とは異なる世界」[p]
#

#トレヴィ
「私たちが肉体を持つ人間である限り、ディーヴァに物質的に働きかけることは
不可能でしょう」[p]
#

[kra_tatie_yokome]
#&f.name	
「ふ・・・不可能・・・？・・・そんな・・・」[p]
#
[chara_hide_all time=50]


[chara_on][chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 time=50]

#トリスタン	
「ディ、ディーヴァをこっちの世界につれてきたりはできないのか」[p]
#
#トレヴィ	
「それは理論上無理です。精神世界と物質世界は本来隔離され、間には繋がりのないもの
	とされていますから。ただ・・」[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「ただ？」[p]
#

#トレヴィ	
「・・・例外は、あります。代表的なものがその魔剣です」[p]
#

#&f.name	
「あ・・・！」[p]
#

#トレヴィ	
「お察しのとおり、魔剣は魔族の思念体という精神体で構成されますが、
契約者を得ることで物質世界に『剣』という形で姿を現す」[p]
#

#トレヴィ
「このことから、魔族は精神世界と物質世界を行き来する何らかの方法を持っていたのではないか・・
と推測されるのです」[p]
#

[kra_tatie_mehuse]
#&f.name	
（精神世界と物質世界を行き来する方法・・・もしかして魔法が使えることと関係ある・・・？）[p]
#

#&f.name	
（魔法も言ってみればそうなのかも・・・本人の意思、精神で、何もないところに物質を生み出す・・・）[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・そうだね、その方法はおそらく魔力によるもの・・・っていうことになるんだろうね」[p]
#

[chara_move name="kra" left=-70]
[lioness_tatie_show_right]
#ライオネス	
「おいクライスト、お前は知らないのかよ？魔法を使えるんだろ？」[p]
#

[kra_tatie_mehuse]
#クライスト	
「知ってたとしたらここには来ていないよ。それに俺は魔族じゃない・・ただの人間だ」[p]
#
[config_false]
[chara_hide name="kra"]
[tris_tatie_show_left]
#トリスタン	
「しかし・・・・・いくらそんな方法を使えるとしてもなぁ・・・」[p]
#

[tris_tatie_mehuse]
#トリスタン	
「古代の文献が正しいとするならば・・・魔族はずっと昔に絶滅したのだろう？」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・まぁ・・・それにたとえいたとしても、俺らに協力してくれるとは思えねえよな・・・」[p]
#
#&f.name	
（そっか・・・そうだよね・・・迫害を受けた魔族はきっと人間を憎んでいるはず。
だとすると、力を貸してもらうことなんかできないのかも・・・）[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「・・・・・・・・・
[kra_tatie_mehuse]
いや」[p]
#
#&f.name	
「クライストさん？」[p]
#
[kra_tatie_yokome]
[stopbgm]
#クライスト	
「・・・レムなら・・・」[p]
#
#&f.name	
（レム・・・？）[p]
#


[chara_move name="kra" left=-70]
[tris_tatie_show_right]
#トリスタン	
「クライスト、力を貸してくれそうなやつを知っているのか？
[tris_tatie_mihiraki]
・・・まさか、魔族・・・？」[p]
#
[kra_tatie_mehuse]
#クライスト	
「純粋な魔族・・じゃないけどね」[p]
#
#&f.name	
「え・・・？」[p]
#

[kra_tatie_metoji]
#クライスト	
「彼は人間を毛嫌いしてるところがあるから、協力してくれるかどうかは保障できない。
	だけど話を聞いてみる価値はある、と思う。」[p]
#
#&f.name	
「・・・話して、くれるのかなあ？」[p]
#
[kra_tatie_normal]
#クライスト	
「それは行ってみないとわからないよ」[p]
#

[kra_tatie_yokome]
#クライスト	
「彼の住んでいる場所は、ネド砂漠の手前の小さな洞窟だ。ウェスタから船でそう遠くはない」[p]
#
#&f.name	
（ネド砂漠っていうと、テーベの街の南にある広い砂漠のことだね。
確かに、あのへんには自然にできた洞窟があるって・・・ランスロットに教わったっけ）[p]
#

[tris_tatie_mehuse]
#トリスタン	
「それじゃ、とりあえずそこに行ってみるしかないってことか・・・」[p]
#
[chara_hide name="kra" time=50]
[lioness_tatie_show_left]
#ライオネス	
「あぁ・・・」[p]
#

#&f.name	
（いく先が決まったのはいいけど・・・なんだかな）[p]
#
#&f.name	
（・・・そのレムって人だって、話きいてくれるかもわからないし・・・）[p]
#

#&f.name	
（だけど・・・今は行くしかない・・・）[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「とりあえず、今日はウェスタの宿に泊まって、明日出発することにしよう」[p]
#
	
	

[if exp="f.kra_flag==1"]
;#クライスト好感度
[kra_tatie_yokome]
#クライスト	
「俺は調べものがあるから、ライオネスとトリスタンは先に宿へ行っててくれないか」[p]
#
[chara_hide_all time=50]
[tris_tatie_show_left]
[lioness_tatie_show_right]
#トリスタン	
「調べもの？」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「まあ、大したことじゃないんだけど、
[kra_tatie_yokome]
ちょっとね」[p]
#
[chara_hide_all time=50]


[tris_tatie_show_left]
[lioness_tatie_show_right]
#ライオネス	
「つか・・・なんで俺とトリスタンなんだよ？[name]は・・・」[p]
#
[chara_hide_all time=50]
[chara_on][chara_show name="kra" storage="&f.kra_yokome" top=0 left=130]
#クライスト	
「ああ、[name]ちゃんには俺の手伝いをしてもらうからさ」[p]
#
#&f.name	
「ええ・・・？？」[p]
#
[kra_tatie_smile]
#クライスト	
「いいよね？[name]ちゃん」[p]
#
#&f.name	
「そりゃ、か、かまわないけど・・・」[p]
#
[chara_move name="kra" left=-70]
[chara_show name="lion" storage="&f.lion_kosinite" height="698" width="456" top=-35 left=400 time=50]

#ライオネス	
「ちっ・・・仕方ねえ・・・。わーった。だけど、すぐ来いよな」[p]
#
#クライスト	
「わかってるって。君が想像しているようなことは何もしないよ」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「ばっ・・・何言って・・・べべ別に俺は・・・」[p]
#
[kra_tatie_smile]
#クライスト	
「あはは。カマかけてみただけなのに、面白いように引っかかるんだね」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「てんめぇ・・・」[p]
#
[chara_hide name="kra" time=50]
[chara_show name="tris" storage="tris_tatie/tris_warai.png" height="603" width="420" top=50 left=0]

#トリスタン	
「まあまあ、落ち着けってライオネス。それじゃ、俺らは先に行ってるな。博士、いろいろとありがとうございました」[p]
#
#トレヴィ	
「あまり力になれなかったようで、申し訳ないな。もしもまた何か聞きたいことがあったら、いつでもたずねてきてください。私にできることがあれば、協力いたしましょう」[p]
#
#&f.name	
「あ、ありがとうございます！」[p]
#
[tris_tatie_metoji]
#トリスタン	
「それじゃあ俺たちは先に宿にいってるな」[p]
#
#&f.name	
「う、うん」[p]
#
[chara_hide_all]
[kra_tatie_show_tall]
#クライスト	
「じゃ俺たちも、地下の書庫に行こうか。博士、入ってもよろしいでしょうか」[p]
#
#&f.name	
（地下の書庫・・・？）[p]
#
#トレヴィ	
「ああ。いいですよ。鍵を開けましょう」[p]
#
;背景、図書館地下
[anten]
[bg storage="toshokan_tika.jpg"]
#トレヴィ	
「それでは、ごゆっくり。終わりましたらカウンターの女性に声をかけてください」[p]
#

[kra_tatie_yokome]
#クライスト	
「ありがとうございます」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「じゃあ、行こうか。足元に気をつけて」[p]
#
#&f.name	
「う、うん・・・」[p]
#
[chara_hide_all][chara_off][skip_button]
[jump storage="scenario_2/episode/epi_w_sub_story.ks" target=*kra_sirabemono]
[else]


[chara_hide_all time=50]
[config_true]
[chara_show name="tris" storage="tris_tatie/tris_warai.png" height="603" width="420" top=50]
;#クライスト好感度以外
#トリスタン	
「博士、いろいろとありがとうございました」[p]
#
#トレヴィ	
「あまり力になれなかったようで、申し訳ないな。もしもまた何か聞きたいことがあったら、いつでもたずねてきてください。私にできることがあれば、協力いたしましょう」[p]
#
#&f.name	
「あ、ありがとうございます！」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_tall]
#クライスト	
「それじゃ、宿に戻ろうか」[p]
#

[chara_hide_all]
[chara_off]
*sirabe_return
[anten]
[refresh_hanyou]
[status_hyouji]
[endif]	

