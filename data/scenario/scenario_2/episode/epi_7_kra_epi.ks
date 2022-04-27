
;王都入口
[macro name="kra_epi_1"]
*kra_epi_1

[message_settei_ad]
#街人	
「やあ、[name]ちゃん、ご苦労様だねえ」[p]
#
#&f.name	
「あ、こんにちわ！」[p]
#
#街人	
「・・・あのね、[name]ちゃん、聞いたかい？もう地方騎士団には伝わってるかもしれないが・・・」[p]
#
#&f.name	
「なんですか？」[p]
#
#街人	
「実は昨日、そこのお宅のご主人が殺されたってね・・・」[p]
#
[stopbgm]
[playbgm storage="op_musmus.ogg"]
#&f.name	
「えっ・・・」[p]
#
#街人	
「あんまり評判も良くなかった人なんだけど、殺されたとなると、なんとも言えない気分だね・・・」[p]
#
#&f.name	
「その、犯人は・・・モンスターか何かに殺されたとか・・・」[p]
#
#街人	
「いや、モンスターではないらしい。だから、誰かがやったってことになるんだろうけど・・・」[p]
#
#街人	
「それが、致命傷が首の傷だっていうんだが、おかしいんだよ、血も全く出ていなくてさ・・・」[p]
#
#街人	
「傷自体もなんだか焼き斬ったような・・・普通の武器であんな傷がつくのかねえ・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#
[fadeoutbgm time=1000]
[endmacro]

;酒場
;------------------------------------------------
[macro name="kra_epi_2"]

*kra_epi_2
[stopbgm]
[playbgm storage="op_musmus.ogg"]
#街人	
「ああ、[name]ちゃん。聞いておくれよ！」[p]
#
#&f.name	
「どうしたんですか？」[p]
#
#街人	
「また、人が殺されてたってね。今度は噴水通りで」[p]
#
#&f.name	
「ええっ・・・」[p]
#
#街人	
「なんとも物騒だねえ・・・モンスターの仕業じゃないって言われてるみたいだけど・・・」[p]
#
#&f.name	
「モンスターとか・・・じゃないんですか」[p]
#
#街人	
「ああ・・・でも人がやったにしては、不自然な傷がついててね・・・」[p]
#
#&f.name	
「不自然な傷？」[p]
#
#街人	
「血は一切出てなくてさ、傷は傷なんだけどね・・・」[p]
#
#&f.name	
（こないだ聞いたのと同じ・・・一体なんなんだろう・・・）[p]
#
#&f.name	
（一体、誰が・・・人、なんだよね、モンスターとか異形・・・とかではないんだよね・・・？）[p]
#
[fadeoutbgm time=1000]
[endmacro]

;epi_2の後
;騎士団本部に戻った時
[macro name="kra_epi_3"]
*kra_epi_3
[stopbgm]
[playbgm storage="op_musmus.ogg"]
[config_true]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「最近、街で人斬りが出てんな。街の人たちから何度か報告を受けた」[p]
#
#&f.name	
「私も、聞いた・・・人がやったもの、なんだよね？不思議な傷がついてるって話だけど」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「モンスター、ではねえようだが・・・人が持ってる武器で、あんな傷を作るのなんて聞いたことねえぞ」[p]
#
#&f.name	
「どういうこと、なんだろう・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「犯人の調査は続けるしかねえな・・・これ以上被害はでねえといいが・・・」[p]
#
[lioness_tatie_yareyare]
#ライオネス	
「団長からシフト変更だってよ。警備の強化で、これから夜勤も増えるなぁ・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#
[fadeoutbgm time=1000]
[chara_hide_all][chara_off]
[endmacro]



;ライオネスとの会話後、一日の終わり
[macro name="kra_epi_4"]
*kra_epi_4
[stopbgm]
[playbgm storage="op_musmus.ogg"]
#&f.name
「・・・」[p]
#

#&f.name
「やっぱりなんか・・・気になるなあ・・・」[p]
#

#&f.name
「戦争が終わって、ルシアもいなくなって、ようやく落ち着いてると思ったけど、人斬りなんて・・・」[p]
#
#&f.name
（街の人が言ってた、不自然な傷って・・・どうやって）[p]
#
#&f.name
「・・・・・・うーん・・・色々考えちゃって寝れなくなっちゃったな・・・」[p]
#
#&f.name
「・・・・・・ちょっと、夜風にでも当たってこよう」[p]
#
[fadeoutbgm time=1000]
[bg storage="kisidaniriguti_tasogare.jpg"]

[playse storage="walk-tussock1_koukaonlabo.ogg"]

#&f.name	
「？」[p]
#

[kra_tatie_touroku]
[kra_tatie_show_tall]
[stopse]
#クライスト	
「あれ、[name]ちゃん、こんな時間に珍しいね」[p]
#
#&f.name	
「あ、クライストさん・・・ちょっと眠れなくて」[p]
#
[kra_tatie_smile]
#クライスト	
「じゃ、一緒に添い寝しよっか？」[p]
#
#&f.name	
「ちょ、な、何言って・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「あはは、でも、早く戻った方がいいよ。夜は俺みたいな変なのに襲われるよ」[p]
#
#&f.name	
「えっ・・・ええ！？」[p]
#
[kra_tatie_smile]
#クライスト	
「あははー。それじゃあね」[p]
#
[kra_tatie_yokome]
#&f.name	
（あれ、これから出かけるの？クライストさん・・・一体どこへ）[p]
#
#&f.name	
「クライストさん、今から・・・どこに？もう深夜になるよ？」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「ああ、これから仕事だよ。そのあとは女の子と一晩」[p]
#
#&f.name	
「えっ」[p]
#
[kra_tatie_smile]
#クライスト	
「あっちょっと動揺した？嬉しいなあ」[p]
#
#&f.name	
「そ、そんなこと・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「[name]ちゃんは可愛いね。それじゃ、おやすみ」[p]
#
[chara_hide_all][chara_off]
#&f.name	
（クライストさん・・・仕事・・・って・・・？）[p]
#
[endmacro]




[macro name="kra_epi_5"]
*kra_epi_5
;次の日epi4の次の日
;噴水広場
[stopbgm]
[playbgm storage="op_musmus.ogg"]
#街人	
「ああ、[name]ちゃん！！早く来ておくれ！！」[p]
#
#&f.name	
「おばさん、どうしたの？」[p]
#
#街人	
「まただよ、今度は裏通りで人が死んでたって・・・」[p]
#
#&f.name	
「えっ・・・」[p]
#
#街人	
「どうも夜のうちのことだったみたいだけど・・・」[p]
#
#&f.name	
「もしかして、あの例の、不思議な傷がついてるって・・・」[p]
#
#街人	
「そうだよ！いやだねえ・・・なんなんだろうねえ・・・」[p]
#
#街人	
「不安で仕方ないよ・・・」[p]
#
#&f.name	
（不思議な傷・・・特殊な武器って・・・ことなのかな・・・）[p]
#
#&f.name
	（そういえば・・・昨夜、本部の門の前でクライストさんに会ったっけ・・・）[p]
#
#&f.name	
（これから仕事だって・・・言ってたけど・・・）[p]
#
#&f.name	
（ううん、まさかね・・・だってクライストさんは、ルシアを倒して王都を守ってくれた）[p]
#
#&f.name	
（そんなこと、するはずない・・・よね）[p]
#
	
#&f.name	
「・・・・・・でも、やっぱり・・・何か気になるかも・・・」[p]
#
#&f.name	
（今日も夜、クライストさんは出かけるのかな・・・）[p]
[fadeoutbgm time=1000]


[endmacro]



[macro name="kra_epi_6"]
[bg storage="kisidaniriguti_tasogare.jpg"]
[stopbgm]
[live2d_kra_touroku]
[kra_tatie_touroku]
[kra_tatie_show]
[kra_tatie_mehuse]
#クライスト	
「・・・」[p]
#
#&f.name
	（あっ、あれ・・・クライストさんだ・・・）[p]
#
#&f.name
	（また、どこに行くんだろう・・・）[p]
#
[chara_hide_all][chara_off]	

[jump storage="scenario_2/sentaku.ks" target=*event_main_epi7_kra]

*yameru
#&f.name	
（疑って後をつけるなんて、よくないよね・・・）[p]
#
#&f.name

	（クライストさんのこと、信じよう・・・）[p]
#
	
[jump target=*kra_epi_end]

*sagasu
;ガイアの森にて
[bg storage="gaiamori_yoru_tasogare.jpg"]
#&f.name	
「・・・あれ？・・・あそこにいるの・・・クライスト、さん・・・？」[p]
#


[live2d_new name="agureasu" model_id="agureasu" lip=true jname="？"]
[live2d_fadeout time=50]
[stopbgm]
[playbgm storage="op_musmus.ogg"]
[live2d_agureasu_show]

[live2d_fadein time=1000]
#？
「・・・・・・」[p]
#
#&f.name	
（誰、だろう・・・）[p]


[live2d_fadeout time=500]
[live2d_hide name="agureasu"]
[live2d_kra_show_sekkin]
[live2d_fadein time=1000]
#クライスト	
「これで満足だろう・・・？
[aho_head_under_y]
[aho_face_mehuse]
・・・もう、いいよね・・・？」[p]
#
#&f.name	
「えっ」[p]
#
;SE
[stopbgm]
[playse storage="flap1_tairakomori.ogg"]
[aho_face_mihiraki]
#クライスト	
「！？」[p]
#
[live2d_fadeout time=500]
[live2d_hide name="aho"]
[live2d_agureasu_show]
[live2d_fadein time=1000]
#&f.name	
「あっ・・・」[p]
#
#&f.name	
（見つかっちゃった・・・）[p]
;アグれあす消える
[live2d_fadeout time=1000]
[live2d_hide name="agureasu"]
#&f.name	
（消えた・・・）[p]
#
[playse storage="walk-tussock1_koukaonlabo.ogg"]
[live2d_kra_show_sekkin]
[aho_face_normal_majime]
[live2d_fadein time=1000]
#クライスト	
「・・・[name]、ちゃん、いつからそこに？」[p]
#
[stopse]

#&f.name	
「えっと・・・ごめんなさい、クライストさんのこと、探してて・・・」[p]
#
[aho_eyes_right]
[aho_arms_udekumi]
#クライスト	
「俺を？どうして？」[p]
#
[aho_face_mehuse]
#&f.name	
「そ、それは・・・その・・・」[p]
#
[aho_face_metoji]
[aho_eyes_normal]
[aho_face_smile]
[aho_body_right_z]
[aho_head_right_z]
[aho_mod_idle_normal_metoji]
#クライスト	
「あ、もしかして、急に会いたくなっちゃって、とか？」[p]
#
#&f.name	
「え、ええと、う、うん」[p]
#
[aho_body_normal]
[aho_head_normal]
[aho_mod_idle_normal]
[aho_face_mihiraki]
#&f.name	
（良かった、うまく勘違いしてくれた・・・）[p]
#
[aho_arms_normal]
[aho_head_under_y]
[aho_head_right_x]
[aho_face_tomadoi]
[aho_eyes_right]
#クライスト	
「っ・・・」[p]
#
#&f.name	
（え？）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#クライスト	
「そ・・・そう、なんだ・・・」[p]
#
#&f.name	
「う？うん・・・」[p]
#
[aho_face_kunou]
#&f.name	
（・・・クライスト、さん・・・？）[p]
#
[aho_head_normal]
[aho_face_mihiraki]
#クライスト	
「あ・・・その・・・・・・
[aho_face_kunou_metoji]
・・・・・・ごめん」[p]
#
[aho_head_left_z]
[aho_face_bisyou_youen]
#クライスト	
「いくら会いたくなったって言っても、こんな夜更けに一人で出てきちゃダメだよ？」[p]
#
[aho_body_right_z]
[aho_arms_right_setumei]
[aho_head_right_z]
[aho_face_yareyare]
#クライスト	
「本部に帰ろう？」[p]
#
[live2d_fadeout time=1000]

#&f.name	
「う、うん・・・」[p]
#
#&f.name
	（・・・なんだろ・・・今の・・・クライストさん・・・？）[p]
#
[live2d_delete_all][live2d_off]
*kra_epi_end


[endmacro]


[macro name="kra_epi_7"]

*kra_epi_6
;騎士団解散の話後
;夜
;ガイアの森

[bg storage="irainheya_yoru_tasogare.jpg"]
#&f.name
「今日も・・・クライストさん、出かけたりするのかな・・・」[p]
#

#&f.name
「それに・・・この間の・・・あの女の人・・・なんだったんだろ・・・」[p]
#
#&f.name
「そろそろ、昨日と同じ時間、だよね・・・」[p]
#
#&f.name
「・・・・・・・」[p]
#
#&f.name
「やっぱり気になる・・・門のところに行ってみよう」[p]
#

[bg storage="kisidaniriguti_tasogare.jpg"]
#&f.name
「あ・・・」[p]
#

[kra_tatie_touroku]
[kra_tatie_show]

[chara_hide_all]
#&f.name
（やっぱりガイアの森へ行くのかな・・・）[p]
#

[bg storage="gaiamori_yoru_tasogare.jpg"]

	
[message_settei_ad]
[live2d_kra_touroku]
[live2d_fadeout time=50]

[miko_tatie_touroku]
[miko_tatie_show]

[live2d_show name="aho" y=-1.9 x=0.0 scale=4.5]
[live2d_fadein time=1000]
[stopbgm]
;[playse storage="tori_koukaonlabo.ogg"]

#クライスト	
「・・・いろいろと、ありがとうございました」[p]
#

#巫女	
「いいえ、私は私の知っていることをお伝えしたのみです。むしろ、このような形で、あなた方にクレールのことを話せたのは幸いでした」[p]
#
[miko_tatie_mehuse]
#巫女	
「人々は何も知らずに、平穏に暮らしていました。その中で私も・・・このまま、知らないことにしてしまおうかとも思ってしまっていたのです」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse]
#巫女	
「知らない方が、幸せなことも・・・この世にはたくさんあるのです。もしかしたらこのことも、その一つなのではないかと」[p]
#
[miko_tatie_normal]
#巫女	
「・・・私こそ、大切なことを、忘れるところでした」[p]
#
[miko_tatie_mehuse]
#巫女	
「決して忘れてはいけないと・・・古代の魔族たちが、訴えているのかもしれません」[p]
#

[aho_body_right_z]
[aho_head_right_x]
[aho_head_right_z]
#クライスト	
「・・・・・・」[p]
#
#巫女	
「クライスト様・・・」[p]
#

[aho_body_normal]
[aho_head_normal]
#クライスト	
「巫女様は、何もおっしゃらないのですね。俺のことはちゃんと知っているはずでしょうに」[p]
#
[miko_tatie_normal]
#巫女	
「ええ。知っています。８年前、エルムナードとの戦争で、大量のエルムナード兵を虐殺した青い悪魔」[p]
#

[playbgm storage="odai07_ontama.ogg"]
[aho_face_metoji]
#&f.name	
（えっ・・・）[p]
#

[aho_face_normal_majime]
#クライスト	
「俺のことは、火炙りにしないんですか」[p]
#
[aho_face_mehuse]
#クライスト	
「今ここに生きる人たちにとっても、俺は妖の力を持つ異質な者です」[p]
#
#&f.name	
（クライストさん・・・）[p]
#

[miko_tatie_mehuse]
#巫女	
「・・・人は皆、善き魂を持って生まれてきます。精霊の祝福を受けて、この世に歓喜の産声を上げるのだと」[p]
#
#巫女	
「しかしその善き魂は、水のようにしなやかで、影響されやすいもの。揺さぶられ、翻弄されれば濁り、また平穏のうちには澄むのです」[p]
#
[miko_tatie_normal]
#巫女	
「今のクレールの民には、あなたを邪険にすることなど、できないでしょう。あなたが王都を救ったのですから、なおのこと」[p]
#
[aho_face_normal_majime]
#クライスト	
「・・・巫女様」[p]
#
[miko_tatie_warai]
#巫女	
「・・・一番あなたを許せないのは、きっとあなた自身なのでしょう？だから、先ほどの言葉が出たのではないですか」[p]
#
[aho_head_under_y]
[aho_face_mehuse]
#クライスト	
「・・・・・・」[p]
#
#巫女	
「ウェスタに行かれるそうですね。クレールの危機を救う手掛かりが・・・何か見つかると良いのですが」[p]
#
[aho_mod_idle_normal]
[aho_face_normal_majime]
#クライスト	
「・・・はい・・・」[p]
#
[miko_tatie_inori]
#巫女	
「魔剣アグレアスの主、クライスト・・・暗く長い旅の先に、あなたが一筋の光を拾わんことを」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_kunou]
#クライスト	
「・・・巫女様・・・」[p]
#
[miko_tatie_warai]
#巫女	
「どうぞ、お気をつけて」[p]
#
[aho_head_normal]
[aho_face_mehuse_warai]
#クライスト	
「ありがとう、ございます・・・」[p]
#
[chara_hide_all][chara_off]
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
#&f.name	
（クライストさん・・・）[p]
#

	
	
#&f.name	
（そっか・・・８年前って・・・そうなんだ・・・クライストさんは・・・）[p]
#
;スクショ
#巫女
	『エルムナード兵を、虐殺・・・』[p]
#
#&f.name	
（でもどうして・・・そんなこと・・・）[p]
#
#&f.name	
（クライストさん・・・クライストさんは・・・きっと・・・・きっと、事情があったんだよね・・・そう、思いたい・・・）[p]
#
#&f.name	
（そうでなきゃ・・・そんなひどいこと・・・）[p]
#
#&f.name	
「・・・・・・」[p]
#
#&f.name	
「私も、準備、しなきゃ・・・」[p]
#
[fadeoutbgm time=1000]	
[endmacro]
;#&f.name
;	（ウェスタに・・・いくんだから）[p]
;	#
;#&f.name	
;（離れるのは・・・寂しいけど）[p]]

[macro name="kra_epi_end"]
[message_settei_ad]
#&f.name
「そういえば・・・街で出てた人斬りのことって犯人まだ、見つかってないよね・・・」[p]
#
#&f.name
「でも、情報もあれから何もないし、とりあえず様子見るしかないのかな・・・」[p]
#

[endmacro]


[return]

