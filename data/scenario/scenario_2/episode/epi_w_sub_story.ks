;	モンスター襲撃
;	振動、爆音

*monster_battle

[if exp="f.lion_flag==1"]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show]
[elsif exp="f.kra_flag==1"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_1]
[endif]



[quake count=5 time=500 hmax=20]
[playse storage="bom31_b_macchi.ogg"]
[playbgm storage="struggle.ogg"]
#&f.name	
「ひゃあああ！！」[p]
#
#&f.name	
（な、なに！？）[p]
#
#船員	
「あ、あれみろ！！」[p]
#
#&f.name	
「えっ・・・」[p]
#
[playse storage="kuraken1_tairakomori.ogg"]
;	モンスター鳴き声
#&f.name	
（モンスター！！）[p]
#


[if exp="f.lion_flag==1"]

[playse storage="yukahasiru_onjin.ogg"]
[lioness_face_odoroki]
[live2d_fadein time=50]
#ライオネス	
「[name]！」[p]
#

#&f.name	
[stopse]「ライオネス！！」[p]
#

;	船揺れる
[playse storage="bom31_b_macchi.ogg"]
[quake count=5 time=1500 wmax=20]
#&f.name	
「きゃああ！！」[p]
#

[lioness_face_chottoikari]
#ライオネス	
「っ！！[name]！！」[live2d_fadeout time=500]
[playse storage="yukahasiru_onjin.ogg"]
[p]
#

;#ライオネス#&f.nameを抱きとめる
[stopse]
[live2d_lion_mod_sekkin_2]
[lioness_face_normal]
[live2d_fadein time=500]
[camera time="300" x="0" y="-30" zoom="1.2"]
[playse storage="hukukosure_onjin.ogg"]
#&f.name	
「ら、ライオネス・・・」[p]
#
[lioness_face_chottoikari]
[lioness_head_left_x]
[lioness_head_above_y]
[lioness_eyes_left]
#ライオネス	
「俺にしがみついてろ！！」[p]
#
#&f.name	
「う、うん・・・」[p]
#
#&f.name	
（うう・・・でも密着しすぎ・・・）[p]
#

[lioness_head_normal]
[lioness_eyes_normal]
[lioness_face_odoroki]
[live2d_fadeout time=50]
[reset_camera]
[playse storage="bom31_b_macchi.ogg"]
[quake count=5 time=500 wmax=20]


#&f.name	
「っ！！！」[p]
#

[playse storage="bom31_b_macchi.ogg"]
[quake count=5 time=500 wmax=20]
[w]
[playse storage="bom31_b_macchi.ogg"]
[quake count=5 time=500 hmax=20]
[w]
[playse storage="bom31_b_macchi.ogg"]
[quake count=5 time=1500 wmax=20]

[playse storage="kuraken1_tairakomori.ogg"]

[lioness_face_yokome]
[live2d_fadein time=500]

#ライオネス	
「っ・・・このままじゃ、きりがねえな・・・」[p]
#

[live2d_fadeout time=500]
[playse storage="kennuku_koukaonlabo.ogg"]
[lioness_arms_kamae]
[live2d_fadein time=1000]
[playse storage="swing40_d_macchi.ogg"]
[lioness_face_ikari]
#ライオネス	
「船つぶされねえうちに倒すぞ！！」[p]
#
#&f.name	
「は、はい！！」[p]
#


[elsif exp="f.kra_flag==1"]
[live2d_fadein time=1000]
#クライスト	
「[name]ちゃん、下がってて」[p]
#
#&f.name	
「クライストさん！」[p]
#
[aho_face_bisyou_youen]
#クライスト	
「だいじょうぶ、すぐ終わるよ」[p]
#
[aho_face_yokome]
[aho_head_right_z]
#クライスト	
「さあ、行こうか」[p]
#
[endif]	
[live2d_fadeout time=1000]
[stopbgm]

;	モンスター戦闘
[if exp="f.lion_flag==1"]
[live2d_lion_touroku]
[live2d_lion_show_sekkin]

[lioness_face_yareyare]
[live2d_fadein time=1000]

#ライオネス
「はあ・・・やれやれだぜ」[p]
#

[lioness_face_muzukasii]
#ライオネス
「・・・船員から聞いたが、このへんはたまにああいうのが出るらしい」[p]
#

[lioness_face_yokome]
#ライオネス
「船つぶされたら終わりだ。用心しねえとな」
[lioness_face_normal]
[lioness_head_under_y]
[lioness_head_normal]
[p]
#

#&f.name
「う、うん・・・」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]

[elsif exp="f.kra_flag==1"]
[live2d_kra_touroku]
[live2d_kra_show_sekkin]
[live2d_fadein time=1000]

#クライスト
「だいじょうぶだった？」[p]
#

[aho_face_yareyare]
[aho_arms_udekumi]
#クライスト
「はあーあ、静かな航海だと思ってたのになあ」[p]
#
[aho_head_right_z]
[aho_face_normal]
#クライスト
「まあ、船だけはつぶされないように気をつけないとね」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#&f.name
「う、うん・・・」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]

[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
[endif]
[fadeoutbgm time=1000]
[jump storage="scenario_2/map_event/map_event_w/map_event_kanpan_macro.ks" target=*monster_battle_end]



*lioness_raputa	

[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]

[playbgm storage="kobitonokitchen_ontama.ogg"]

;#ライオネスとラプタ
[raputa_a_touroku]
[raputa_a_show]
#ラプタ	
「きぅぅぅー」[p]
#

[live2d_fadein time=50]
[lioness_face_akireru]
#ライオネス	
「仕方ねえだろ今日の飯はここまでだ。我慢しろ」[p]
#

[raputa_a_yowari]
#ラプタ	
「きぅ・・」[p]
#

#&f.name	
（ライオネスとラプタ・・・？）[p]
#

[lioness_body_under_y]
[lioness_head_under_y]
[lioness_face_normal]
#ライオネス	
「よっと・・・わりいなあ、一応、他の船員の目もあるからよ、気はひけるが・・・」[p]
#

[playse storage="kusari_onjin.ogg"]

;	鎖
#&f.name	
（あ、足に鎖・・・かわいそうだけど、仕方ないのかな）[p]
#

[lioness_face_metoji]
[lioness_mod_idle_no_move_metoji]
#ライオネス	
「窮屈だよな、わりい。ちょっと我慢しててくれよな」[p]
#
#&f.name	
（ライオネス・・・）[p]
#
;	足音

[lioness_body_normal]
[lioness_head_normal]
[lioness_face_normal]
#ライオネス	
「ああ、[name]、お前か」[p]
#
#&f.name	
「ラプタ、鎖に繋いでおくの？」[p]
#
[lioness_arms_udekumi]
[lioness_eyes_right]
#ライオネス	
「悪さはしねえと思うが、一応な・・・船に世話になってるわけだし」[p]
#

#ラプタ	
「きぅ・・・」[p]
#

[lioness_eyes_normal]
#&f.name	
「元気なさそうだね・・・」[p]
#

[lioness_arms_normal]
#ライオネス	
「船の上じゃあ居心地悪いだろうしな。
[lioness_arms_poripori]
揺れるし」[p]
#
[lioness_arms_normal]
#&f.name	
「船酔い、かな？」[p]
#

[lioness_face_otikomi]
#ライオネス	
「さあな・・・さっき食欲はあったからそう心配することでもねえと思うが」[p]
#

#&f.name	
「お世話も大変そうだね」[p]
#

[lioness_face_normal]
[lioness_arms_udekumi]
#ライオネス	
「ま、拾っちまったからにはな・・・」[p]
#

[raputa_a_mihiraki]
#ラプタ	
「きぅ！」[p]
#

[playse storage="hukukosure1_onjin.ogg"]

;	物音
[lioness_face_odoroki]
#ライオネス	
「おい、あんまり擦り付けんな、竜くさくなんだろ！」[p]
#

[lioness_face_komari_warai]
#&f.name	
（竜くさくって・・・でも、ライオネス、なんだかんだいって嬉しそう）[p]
#

#&f.name	
「ふふっ、すごい懐かれてるね。ラプタ、本当にライオネスのこと好きなんだ」[p]
#

[lioness_face_yokome]
#ライオネス	
「こいつにとっちゃ、俺が親代わりみてえなもんなんだろうがなあ・・・」[p]
#

#&f.name	
「うん、ライオネスお母さんみたい」[p]
#

[lioness_face_odoroki]
#ライオネス	
「お、お母さんって・・・
[lioness_arms_poripori]
[lioness_face_ha]
あのなあ」[p]
[chara_hide_all][chara_off]
[fadeoutbgm time=3000]

[lioness_arms_normal]
[lioness_face_yokome]
#ライオネス	
「ま、まあ？こいつの前から世話してるのもいるしな、
[lioness_face_normal]
[lioness_arms_udekumi]
ガキの世話は慣れてる」[p]
#

#&f.name	
「こいつの前から・・・って・・・」[p]
#

[lioness_face_yokome]
#ライオネス	
「船乗るときにも、依頼人から念を押されちまったしなあ」[p]
#

#&f.name	
「依頼人って・・・」[p]
#

#&f.name	
（それって・・・）[p]
#

[lioness_face_yareyare]
#ライオネス	
「そいつに比べりゃ、ラプタの世話のほうがよほど楽だぜ」[p]
#

#&f.name	
「な、なにそれ！」[p]
#

[lioness_face_normal]
[lioness_arms_normal]
[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	
「あ、なんだ自覚はあんのか」[p]
#

#&f.name	
「じ、自覚って・・・」[p]
#

[lioness_face_yokome]
#ライオネス	
「手のかかるやつだって自覚」
[lioness_face_normal]
[p]
#

#&f.name	
「手のかかるって・・・だいたい、私ライオネスに世話してなんて頼んでないよ！」[p]
#

[lioness_face_yareyare]
#ライオネス	
「お前が頼んでなくたって、兄貴が頼んでんだから仕方ねえだろ」[p]
#
[lioness_face_normal]
#&f.name	
「べ、別にそんなの無視したっていいのに・・・私、自分のことくらいはちゃんと・・・」[p]
#

[lioness_arms_udekumi]
[lioness_face_yokome]
#ライオネス	
「無視なんかできねえよ」[p]
#
[playbgm storage="milktea_ontama.ogg"]
[lioness_face_normal]
#&f.name	
「ら、ランスロットだから？それとも、私がしっかりしてないから？言っとくけど・・・」[p]
#

[lioness_face_metoji]
[lioness_mod_idle_no_move_metoji]
#ライオネス	
「どっちでもねえ」[p]
#

[lioness_face_normal]
[lioness_mod_idle]
#&f.name	
「えっ」[p]
#

[lioness_face_sinnpai]
#ライオネス	
「俺はお前だから、・・・ほっとけねえんだよ」[p]
#

#&f.name	
「それって・・・私がやっぱり・・・」[p]
#

[lioness_arms_normal]
[lioness_face_normal]
#ライオネス	
「違う」[p]
#

#&f.name	
（・・・ライオネス・・・？）[p]
#

#&f.name	
「それなら、何？・・・よく、わからないよ・・・」[p]
#

;	#ライオネス近づく

[lioness_face_mehuse_dai]
[lioness_mod_idle_no_move]
[live2d_lion_mod_sekkin_2]
[lioness_face_normal]
[playse storage="za_macchi.ogg"]
#ライオネス	
「・・・お前、ほんとにわかんねえの」[p]
#

#&f.name	
「わ・・・わからないよ・・・」[p]
#

#ライオネス	
「・・・」[p]
#

#&f.name	
（・・・ライオネス・・・）[p]
#

[lioness_face_yokome_otikomi]
#ライオネス	
「・・・まあそうだよな、もし気づいてたら・・・俺の前でそんなツラ・・・しねえもんな」[p]
#

[lioness_face_metoji]
[lioness_mod_idle_no_move_metoji]
#&f.name	
「ツラって・・・」[p]
#

[fadeoutbgm time=3000]

[lioness_face_yokome]
[lioness_mod_idle]
#ライオネス	
「いきなり悪かった。・・・忘れろ」[p]
#

[lioness_face_mehuse_dai]
[live2d_fadeout time=2000]

[playse storage="walkyuka_onjin.ogg"]
#&f.name	
「あ、ライオネス・・・」[p]
#
[stopse]
#&f.name	
（・・・いったい・・・）[p]
#

#&f.name	
（ライオネスが、私のこと気に掛けるのって、頼まれたからじゃなくて・・・私が頼りないからでもなくて・・・）[p]
#

#&f.name	
「・・・・・・」[p]
#

[jump storage="scenario_2/map_event/map_event_w/map_event_kanpan_macro.ks" target=*lioness_raputa_end]

*chuubou_tetudai
;	厨房での手伝い
	
;	がやがや

[playse storage="zawameki_tairakomori.ogg"]
[bg storage="hune_shokudou.jpg"]
#&f.name	
（うわあ・・・すごい混みよう・・・）[p]
#
#&f.name	
（いつもそれなりに混んでると思うけど、今日みたいなのは初めてだなあ・・・）[p]
#
#店長	
「はーいクラーケンのちゃんこお待たせ！！」[p]
#
#船員	
「俺のまだかよー、だいぶ前に注文したんだぜえ」[p]
#
#店長	
「この混みようみろよ！ちょっとは待ってろ！！！」[p]
#
#&f.name	
（大変そう・・・結構みんな待たされてもいるみたいだし・・・）[p]
#
#&f.name	
（うーん、私に何か手伝えることあるかな？）[p]
#
#&f.name	
（いつも店長さんには厨房貸してもらってるし・・・）[p]
#
#&f.name	
「店長さん！」[p]
#
#店長	
「ああ、[name]ちゃんすまないねえ、ちょっと待っててもらえるかい」[p]
#
#&f.name	
「あ、その、じゃなくて、私何かお手伝いしましょうか？お料理運ぶだけでも・・・」[p]
#
#店長	
「ほんとうかい[name]ちゃんが！しかしいいのかい・・・」[p]
#
#&f.name	
「大丈夫です、すごく大変そうだし・・・私にできることがあったら手伝わせてください！」[p]
#
#店長	
「ああ、ありがとう、助かるよ！それじゃあ給仕と、皿洗いをお願いできるかい」[p]
#
#&f.name	
「わかりました！！」[p]
#
[stopse]
[anten]	
[bg storage="hune_shokudou.jpg"]
[playbgm storage="asanositaku_ontama.ogg"]
#船員	
「[name] ちゃーんカレーこっちね！」[p]
#
#船員	
「[name]ちゃーん発泡酒おかわり！！」[p]
#
#&f.name	
「はーいただいま！！」[p]
#
#船員	
「いやあ・・・かわいいよなー[name]ちゃん・・・気もきくしさあ」[p]
#
#船員	
「お頭から手出すなって言われてるけど、告白くらいならいいかなあ」[p]
#

[if exp="f.lion_flag==1"]	
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
#ライオネス	
「てめえら・・・何言ってんだ・・・」[p]
#

#船員	
「えっ、いやいや、冗談だぜ冗談！！ほ、本気にとんなってー」[p]
#
[chara_hide_all][chara_off]
[elsif exp="f.kra_flag==1"]
[kra_tatie_touroku]
[chara_show name="kra" storage="&f.kra_smile" top=0 left=130]
#クライスト	
「うーんいいこと聞いちゃった。せっかくだからもう一回言ってもらってもいい？」[p]
#
	
#船員	
「えっ・・・ええっ・・・めめめめ滅相もない！何も言ってないです何も言ってないです！！！」[p]
#
[chara_hide_all][chara_off]
[else]

#店長
「こらあお前ら！！お頭に海になげだされてえか！！」[p]
#

#船員
「そんなあ〜！告るくらいいいじゃねえですかよお〜」[p]
#

#&f.name
（・・・ん？なんの話だろう・・・）[p]
#

[endif]
[fadeoutbgm time=1000]
[anten]
[bg storage="hune_shokudou.jpg"]

;	暗転
#店長	
「いやあ本当に助かったよ[name]ちゃん。まさか今日こんなに混むとは思わなくてね」[p]
#
#&f.name	
「船員さんたち、すごくお腹すいてたんですね」[p]
#
#店長	
「海の荒くれ者たちだからな、腹を満たすにはそれなりの量も必要だ」[p]
#
#店長	
「ともあれ今日は本当にありがとう。これ、ちょっとしたお礼だよ。もしよかったら」[p]
#
#&f.name	
「わああ！ありがとうございます！！」[p]
#
#店長	
「こちらこそありがとうね！今度ゆっくり食べにきな！サービスするよ！」[p]
#
#&f.name	
「はい！！」[p]
#
[recipe_get_6]

[jump storage="scenario_2/map_event/map_event_w/map_event_shokudo_macro.ks" target=*tetudai_end]




*lioness_work

;	働かされる#ライオネス


[bg storage="kanpan_tasogare.jpg"]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]

[playbgm storage="korehaittai_ontama.ogg"]
#ライオネス	
「はあ・・・はあ・・・」[p]
#

#&f.name	
「あれ？ライオネス？どうしたの？」[p]
#
#&f.name	
（すごく疲れてるみたいだけど・・・）[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「どーしたもこーしたも・・・」[p]
#
#船長	
「おいどうした銀髪！！まだ木箱が残ってんだぞ！働け働け！！」[p]
#
[lioness_tatie_chottoikari]
#ライオネス　	
「ちょ、なんで俺ばっかなんだよ！！クライストのやろうだっているじゃねえか！」[p]
#

#船長	
「いやあお前さんが一番、荷物運びに適した体だからよ」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「外見で決めんなよ！！
[lioness_tatie_chottoikari]
クライストのやろうだってあんななりだが・・・」[p]
#
[sstopbgm]
#船長	
「ほーれ運んだ運んだ！！」[p]
#

[quake count="3" time="300" hmax="50"]
;SE
[playse storage="taorekomu_koukaonlabo.ogg"]
[w]
[playse storage="taorekomu_koukaonlabo.ogg"]
[w]
[playse storage="taorekomu_koukaonlabo.ogg"]
#ライオネス	
「うぐっ！！」[p]
#
#&f.name	
（うひゃあ・・・あんなにいっぱい・・・一気に！？）[p]
#
#ライオネス	
「う・・・うりゃああああああああ！！！」[p]
#

[chara_hide_all][chara_off]
[playse storage="yukahasiru_onjin.ogg"]
;	SE
#船長	
「ん、思ったとおり、荷物運びに最適な野郎だぜ」[stopse][p]
#
#&f.name	
（え・・・えええ・・・）[p]
#
#船長	
「あの竜のえさだって俺らのほうで調達してんのもあるんだ。これくらいやってもらわんとな」[p]
#
#&f.name	
（あ、そういう事情もあるんだね・・・）[p]
#

[jump storage="scenario_2/map_event/map_event_w/map_event_rouka_macro.ks" target=*lioness_work_end]

*lioness_hiyakasi
;	冷やかされる#ライオネス

[bg storage="kanpan_tasogare.jpg"]
#&f.name	
（・・・ん？）[p]
#

#船員	
「なあ、ほんとーにつきあってんじゃねえのか？」[p]
#
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_yareyare" height="698" width="456" top=-35 left=0]

#ライオネス	
「そんなじゃねえって・・・」[p]
#
#船員	
「あやしいなあ、なんだかんだでいっつも一緒にいるじゃねえか」[p]
#

[chara_move name="lion" left=-40]
[tris_tatie_touroku]
[tris_tatie_show_right]
#トリスタン	
「そのとおりだ！」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「と、トリスタン・・・お前船酔いは大丈夫なのかよ！！」[p]
#

[tris_tatie_metoji]
#トリスタン	
「さっきひととおり海に流してきたところだ。問題はない」[p]
#
#&f.name	
（流してって・・・まさか・・・）[p]
#

[playbgm storage="tw44_musmus.ogg"]

[tris_tatie_ikari]
#トリスタン	
「いい加減認めろ！」[p]
#
[lioness_tatie_kimazui]
#船員	
「そうだぜ！」[p]
#

#&f.name	
（認めるって何を・・・）[p]
#
[tris_tatie_niyaniya]
#トリスタン	
「お前、好きなんだろ？[name]のこと」[p]
#

#&f.name	
（えっ！）[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「っ・・・んなわけねえだろ！！だいたいあんな子供に誰が・・・」[p]
#
[tris_tatie_ha]
#トリスタン	
「その言い訳は年間で聞いてる！」[p]
#
[lioness_tatie_kimazui]
#船員	
「年間で言い訳してんのかー重症だなぁ」[p]
#
[tris_tatie_ikari]
#トリスタン	
「いいか、長い付き合いの俺ならまだしも、船の連中にまでバレバレなんだぞ？」[p]
#
#船員	
「やっぱりそうだよなー、[name]ちゃんを見る目つきから、普段の行動から、こっちが見ててはずくなるわ」[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「[name]は気づいてないみたいだけどな！」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「ちがうって言ってんだろ！！俺は兄貴に目つけてろって頼まれてるからそうしてるだけで・・・」[p]
#
[tris_tatie_ikari]
#トリスタン	
「またランスロット様を引き合いに出すのか！いいか王都では彼に気をつかっただろうが」[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「今は別だ。手を出したって滅多斬りにされることはない！」[p]
#
#船員	
「滅多斬りって・・・」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「な、なんで手出すとかそういう話になってんだよ！」[p]
#

[lioness_tatie_kimazui]

[tris_tatie_donari]
#トリスタン	
「ものにするなら、ランスロット様のいない今がチャンスに決まってるだろう！」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「だから俺はそんなんじゃねえっていってんだろ！！」[p]
#
;	SE
#船員	
「かなりのこじらせようだなぁ・・・これは難儀しそうだ・・・」[p]
#

[tris_tatie_metoji]
#トリスタン	
「俺はな親友として助言してるんだぞ、
[tris_tatie_ikari]
素直にならなきゃお前はずっとDのままなんだぞ！」[p]
#

[lioness_tatie_chottoikari]
#ライオネス	
「うるせえ！お前は部屋でぐったりしてろ！お、俺はなラプタの世話で忙しいんだよ！！」[p]
#
;	SE#ライオネス立ち去る

[fadeoutbgm time=1000]
[chara_hide_all][playse storage="walkyuka_onjin.ogg"]
#船員	
「女より竜なのか・・・」[stopse][p]
#

[tris_tatie_sian]
#トリスタン	
「はああ・・・」[p]
#

[chara_hide_all][chara_off]
#&f.name	
（・・・えーと・・・結局、一体なんの話だったんだろ？手を出すって・・・？）[p]
#

#&f.name	
（ライオネスが、私のこと・・・ううん、本人があんなに否定してるんだし、そんなことないよね）[p]
#

#&f.name	
（でも、もし・・・）[p]
#
[jump storage="scenario_2/map_event/map_event_w/map_event_rouka_macro.ks" target=*lioness_hiyakasi_end]





*kra_sirabemono

[bg storage="toshokan_tika.jpg"]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]

[playse storage="walkhibiku_onjin.ogg"]
#&f.name	
（うわあ・・・地下もすごく広いんだな・・・）[p]
#
#&f.name	
（こんなところで迷ったら大変かも・・・あと、ここにある本って・・・）[p]
#


#&f.name	
「ふるい本ばかりだよね・・・」[p]
#
[stopse]

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[live2d_fadein time=1000]
[aho_head_under_y]
#クライスト	
「そうだね。かなり昔に書かれた本もあるみたいだから」[p]
#

[playse storage="paper00_macchi.ogg"]
;	SE　ぺーじめくる
[aho_face_metoji]
#クライスト	
「・・・・・・」[p]
#
#&f.name	
（クライストさん・・・何を読んでるんだろう・・・）[p]
#
[camera time="300" x="0" y="-30" zoom="1.3"]
#&f.name	
（・・・？？一体何語・・・？）[p]
#
[reset_camera]
[aho_face_mehuse_warai]
#クライスト	
「古代文字なんだ。
[aho_eyes_right]
だから読めなくても当然だよ。
[aho_eyes_normal]
俺はレムに少し教えてもらったから、ある程度は読めるんだけどね」[p]
#
#&f.name	
「古代文字・・・。昔の人が使ってた言葉ってこと？」[p]
#
[aho_face_metoji_warai]
[aho_mod_idle_normal_metoji]
#クライスト	
「うん。言葉も時代によって、進化していくものだからね」[p]
#
#&f.name	
「そ、そうなんだ・・・
[aho_mod_idle_normal]
[aho_face_normal_majime]
[aho_eyes_right]
その、レムって人に教わったって・・・」[p]
#

[aho_face_metoji]
[aho_eyes_normal]
[aho_mod_idle_normal_metoji]
#クライスト	
「うん・・・。魔剣を宿して何もわからなかった俺に、いろんなことを教えてくれたのが彼だよ」[p]
#
#&f.name	
（いろんなこと・・・かあ・・・）[p]
#
#&f.name	
（どういう人なんだろ・・・洞窟に住んでるってとこからすると、なんか変わった人・・・なのかな）[p]
#

[aho_face_metoji]
#クライスト	
「・・・。トレヴィ博士は地下書庫の責任者だったんだね。
[aho_face_normal_majime]
[aho_mod_idle_normal]
おかげで手間もはぶけたよ」[p]
#
#&f.name	
「あ、そうだね・・・鍵も持ってたようだし」[p]
#
[aho_body_right_z]
[aho_head_right_x]
[aho_head_right_z]
[aho_head_above_y]
[aho_eyes_right]
[aho_face_komari_warai]
#クライスト	
「うん。違う人だったらあの広い図書館を探し回らなきゃならなかった」[p]
#
[aho_face_yokome]
[aho_mod_idle_normal]
[aho_head_normal]
#&f.name	
（・・・トレヴィ博士・・・そういえば）[p]
#
#&f.name	
（あのとき・・・『愚かなことを』って・・・）[p]
#
[aho_mod_idle_normal]
[aho_face_normal_majime]
#&f.name	
「トレヴィ博士・・・あのとき、クライストさんのこと・・・」[p]
#
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・ああ。『愚か』って話？」[p]
#
#&f.name	
「う・・・うん、あと、何か言いたそうに見てたようだけど・・・」[p]
#
[aho_body_right_z]
[aho_mod_idle_normal]
[aho_face_yokome]
#クライスト	
「そうだなあ・・・」[p]
#
[aho_body_normal]
[aho_face_normal_majime]
#クライスト	
「彼としては、俺にいろいろお説教したかったんだと思うよ」[p]
#
#&f.name	
「色々・・・？」[p]
#

[aho_eyes_right]
[aho_head_above_y]
[aho_head_right_x]
#クライスト	
「あぁ。魔剣がどういうものかを知っている者にとっては、それを宿すなんてこと、正気の沙汰じゃないからね」[p]
#
#&f.name	
「えっ・・・」[p]
#
[aho_head_normal]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・少なくとも、普通の感覚を持っている人にとっては。・・・君にも、そのうちわかるかもしれないけれど」[p]
#
#&f.name	
「クライスト、さん・・・」[p]
#
#&f.name	
（どういう・・・ことなんだろう・・・どういう・・・）[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_metoji]
#クライスト	
「もうちょっと移動しようか。
[aho_face_yokome]
[aho_mod_idle_normal]
このへんじゃないみたいだ」[p]
#
[live2d_fadeout time=1000]	
[anten]
[bg storage="toshokan_tika.jpg"]

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[live2d_fadein time=1000]
#クライスト	
「・・・・・・」[p]
#
#&f.name	
（クライストさん・・・ずっと本読んでる・・・余程調べたいことなのかな・・・手伝ってほしいって言われたけど、これじゃ手伝いにもならないなあ）[p]
#

[aho_head_right_x]
[aho_eyes_right]
[w]
[aho_head_left_x]
[aho_eyes_left]
#クライスト	
「・・・・・・・」[p]
#
[playse storage="paper00_macchi.ogg"]
[aho_eyes_right]
[aho_head_right_x]

#&f.name	
（すごい集中力・・・）[p]
#

#&f.name	
（やっぱり、クライストさんって綺麗だよね・・・髪や目の色もだけど・・・顔立ちもすごく整ってるし・・・）[p]
#

[aho_head_left_x]
[aho_eyes_left]
#&f.name	
（な、なにドキドキしてるんだろ、私・・・）[p]
#

[aho_head_normal]
[aho_mod_idle_normal]
[aho_face_normal_majime]
#クライスト	
「・・・[name]ちゃん？どうかした？」[p]
#
#&f.name	
「うっ・・・ううん、なんでもないの、続けて？」[p]
#
[playse storage="hon_tojiru_onjin.ogg"]

[aho_face_komari_warai]
[aho_eyes_left]
#クライスト	
「ああ・・・ごめん、退屈、させちゃってたのかな？そろそろ出ようか」[p]
#
#&f.name	
「えっ・・・で、でもいいの？」[p]
#
[aho_face_normal]
[aho_eyes_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん。まあ、色々興味深い文献も見られたからね。いいんだよ。また来ればいいし」[p]
#
#&f.name	
「はあ・・・」[p]
#
#&f.name	
（いいのかなあ・・・）[p]
#
[live2d_fadeout time=1000]

;	#クライスト消える
;	暗転
[anten]
[bg storage="toshokan_tika.jpg"]

[playse storage="walkhibiku_onjin.ogg"]
#&f.name	
（結構時間もたっちゃってるよね・・・#ライオネスたち、待ちくたびれてるかな・・・？）[p]
#

[stopse]
[live2d_fadein time=1000]
#クライスト	
「そういえばさ」[p]
#
#&f.name	
「・・・クライストさん？」[p]
#
[aho_arms_udekumi]
[aho_face_yokome]
#クライスト	
「船長にも聞かれたんだけどさ・・・[name]ちゃんって、今いくつだっけ？」[p]
#
[aho_face_normal_majime]
[aho_head_right_z]
#&f.name	
「へっ！？・・・え、えーと・・・今は１６だよ。今年で１７になるけど・・・」[p]
#
#&f.name	
（なんで・・・いきなり・・・？）[p]
#

[aho_head_under_y]
[aho_head_right_x]
[aho_head_right_z]
[aho_eyes_right]
#クライスト	
「ふーん・・・１６かあ。ちょっとまだ・・・色々と早いかな」[p]
#
#&f.name	
（な・・・なんの話？早いって・・・）[p]
#
#&f.name	
「・・・早い・・・って・・・そりゃ、クライストさんから見れば、まだまだ子供かもしれないけど・・・」[p]
#

[aho_head_normal]
[aho_face_mihiraki]
#クライスト	
「ああ、
[aho_face_komari_warai]
[aho_eyes_left]
[aho_head_left_z]
でもほら、君にその気があるなら、俺はいつだってかまわないんだよ？」[p]
#

[aho_face_mehuse_warai]
[aho_eyes_normal]
[aho_head_normal]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・まあだけど・・・下手したらあの兄弟に滅多切りにされそうだしさ」[p]
#
#&f.name	
「兄弟？兄弟って・・・ランスロットとライオネス・・・？？な、なんで・・・？」[p]
#

[aho_mod_idle_normal]
[aho_face_normal_majime]
#クライスト	
「それは君・・・。
[aho_eyes_right]
まあ、いいか・・・そのほうが都合がよさそうだし」[p]
#
#&f.name	
（クライストさん・・・言ってることがさっぱりわからないよ・・・）[p]
#
#&f.name	
（・・・・・・ランスロットももしかして、クライストさんのこういうところが気に触るのかな？）[p]
#

[aho_eyes_normal]
#&f.name	
「ランスロットっていえば・・・ずっと会ってないけど、大丈夫かな？王都も、街も・・・」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「まだ離れて５日しかたってないのに、そんなに心配？」[p]
#
#&f.name	
「心配だよ。今までずっと暮らして、守ってきた街だし・・・ランスロットがいるから、大丈夫なのかなとは思うけど・・・」[p]
#

[aho_eyes_left]
#クライスト	
「ランスロット、ねえ・・・」[p]
#
[aho_face_normal_majime]
[aho_eyes_normal]
#クライスト	
「お師匠様の心配なんかするんだ？[name]ちゃんは弟子なのに」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]

[playse storage="hukukosure1_onjin.ogg"]
[aho_face_normal_majime]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]

#&f.name	
「そ、そりゃそうだよ・・・だって・・・あ」[p]
#

#&f.name	
「・・・く、クライスト、さん？」[p]
#

#&f.name	
（クライストさん・・・近い・・・かも・・・）[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・俺の前で、あの堅物の心配するんだ？」[p]
#

#&f.name	
「えっ・・・」[p]
#

[aho_face_mehuse_warai]
#クライスト	
「・・・妬けるなぁ・・・って言ったら・・・

[aho_head_right_z]
[aho_face_bisyou_youen]
[name]ちゃん、どうする？」[p]
#

#&f.name	
「へ・・・な、なにいってるのクライストさん・・・ランスロットは・・・ランスロットは剣の先生だよ？そんなんじゃ・・・」[p]
#

#&f.name	
（そんなこと、あるわけ・・・）[p]
#

[aho_face_yokome]
[aho_head_right_x]
[aho_head_above_y]
#クライスト	
「あのさ・・・君がそうでも、向こうはどう思ってるかわかんないよ？」[p]
#

#&f.name	
「え・・・ええっ・・・」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト	
「・・・ああ・・・そういやここ、誰もこないんだよね・・・ふたりきりだ」[p]
#

#&f.name	
「クライスト、さ・・・」[p]
#

[aho_face_bisyou_youen]
[aho_head_normal]
[aho_head_left_z]
#クライスト	
「・・・ね・・・このまま、キス・・・しちゃっても、いいかな・・・？」[p]
#

#&f.name	
（き・・・キス・・・？キスって・・・・っっ・・・えええっ！！？？）[p]
#

[aho_head_right_z]
[aho_face_komari]	
#クライスト	
「ね、ダメ？」[p]
#
;	aいいよ
;	bダメ！
	
;	a
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【ね、ダメ？】

[glink target=*kiss_1 text="（いいよ）" size=17 width=600 x=65 y=200]
[glink target=*kiss_2 text="（ダメ！）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*kiss_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[live2d_fadein time=1000]


[aho_face_komari_warai]
[aho_head_left_z]
[aho_eyes_left]
#クライスト	
「ははっ。本当にかわいいな・・・[name]ちゃんは。俺には・・・もったいないくらいだ」[p]
#

[aho_eyes_normal]
[aho_head_normal]
#&f.name	
「え・・・」
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[p]
#

#&f.name	
（クライストさんの瞳・・・綺麗・・・でも、どこか・・・・・・）[p]
#

[aho_eyes_right]
#&f.name	
（そうだ、あの、甲板で星を見たあのときも・・・こんなかんじだった・・・）[p]
#

#&f.name	
「・・・どうして？」[p]
#

[aho_face_mihiraki]
[aho_mod_idle_kokyu_only]
#クライスト	
「えっ？」
[p]
#

#&f.name	
「・・・クライストさん・・・なんだか、悲しそう・・・」[p]
#

[aho_face_tomadoi]
#クライスト	
「・・・！」[p]
#

[aho_face_kunou_2]
#クライスト	
「・・・言っている意味が、
[aho_head_right_x]
[aho_mod_idle_normal_metoji]
[aho_face_metoji]
よくわからないな」[p]
#
#&f.name	
「・・・・・・」[p]
#

[aho_face_komari_warai]
[aho_head_right_z]
[aho_eyes_right]
#クライスト	
「そろそろ行こうか。トリスタンたちが酔いつぶれてしまうかもしれないしね」[p]
#

#&f.name	
（・・・クライストさん・・・）[p]
#
[jump target=*kiss_end]	

*kiss_2	
[free name="sentakusi" layer=0]
[ka]
[cm]
[hidemenubutton]
[w]
[live2d_fadein time=1000]

;	b


[aho_face_komari_warai]
[aho_eyes_left]
#クライスト	
「なあんだ、残念」[p]
#


#&f.name
（クライストさんの瞳・・・綺麗・・・でも、どこか・・・悲しい・・・）[p]
#
#&f.name	
（そうだ、あの、甲板で星を見たあのときも・・・こんなかんじだった・・・）[p]
#
#&f.name	
「・・・どうして？」[p]
#

[aho_face_mihiraki]
#クライスト	
「えっ？」[p]
#
#&f.name	
「・・・クライストさん・・・なんだか、悲しそう・・・」[p]
#

[aho_face_tomadoi]
#クライスト	
「・・・！」[p]
#

[aho_face_kunou_2]
#クライスト	
「・・・言っている意味が、
[aho_head_right_x]
[aho_face_metoji]
[aho_mod_idle_normal_metoji]
よくわからないな」[p]
#
#&f.name	
「・・・・・・」[p]
#
[aho_face_komari_warai]
[aho_head_left_z]
[aho_eyes_left]
#クライスト	
「そろそろ行こうか。トリスタンたちが酔いつぶれてしまうかもしれないしね」[p]
#


#&f.name	
（・・・クライストさん・・・）[stopse][p]
#

*kiss_end	
[live2d_fadeout time=1000]

	
;	※途中から台詞のみに切り替え
[anten]
[bg storage="wesuta_city.jpg"]
[playbgm storage="wesuta_ontama.ogg"]

#&f.name	
「そういえばウェスタって・・・昨日も思ったけど、お店とかあんまりないね」[p]
#

[live2d_kra_mod_sekkin]
[aho_mod_idle_normal]
[live2d_fadein time=1000]
[aho_head_normal]
[aho_face_normal]
[aho_eyes_left]
[aho_face_normal_majime]
#クライスト	
「それはね。一応、研究都市だから。観光の街でもないし、歓楽街自体も存在しない」[p]
#

[aho_eyes_normal]
#&f.name	
（なるほど・・・）[p]
#

#&f.name	
「そっか・・・あったら、勉強に集中できないものね・・・」[p]
#

[aho_face_mihiraki]
#クライスト	
「・・・・・」[p]
#

[aho_face_yokome_warai]
#クライスト	
「[name]ちゃんは言うことがかわいいね」
[aho_face_normal]
[p]
#
#&f.name	
「えっ・・・なんで？ど、どこが？」[p]
#
[aho_face_bisyou_youen]
[aho_head_right_z]
[aho_arms_udekumi]
#クライスト	
「うん。そういうところがさ」[p]
#
#&f.name	
「・・・・・・・」[p]
#
#&f.name	
（クライストさん・・・言ってることがわからないよ・・・）[p]
#

[fadeoutbgm time=1000]
#傭兵	
「おお？なんだあ、
[aho_face_normal_majime]
[aho_head_normal]
[aho_arms_normal]
お前、クライストじゃないか？」[p]
#
#&f.name	
（クライストさんの知り合い・・・かな？格好からすると・・・傭兵さん・・・？）[p]
#
[aho_face_normal]
#クライスト	
「やあ、ひさしぶり。こんなところで会うなんてね」[p]
#
#傭兵	
「お前も相変わらず羽振りよさそうだなあ。また女連れかあ？」[p]
#
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん。
[aho_face_komari_warai]
[aho_eyes_right]
でも、そういう関係じゃないよ？」[p]
#
#傭兵	
「よく言う。
[aho_face_normal_majime]
[aho_eyes_normal]
こないだフランチェスカで会ったときなんか、お前は・・・」[p]
#
	
#&f.name	
（会話、盛り上がってるみたい・・・）[p]
#

#&f.name	
（・・・先に宿屋に行ってたほうがいいかな・・・？）[p]
#

[aho_face_bisyou_youen]
#クライスト	
「ああ、[name]ちゃん。俺は彼と話してからいくから、
[aho_head_right_z]
先に宿屋に行ってて。すぐわかると思うよ」[p]
#
#&f.name	
「うん、わかった。じゃあ、またあとで」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]

[live2d_fadeout time=1000]
#&f.name	
（クライストさん笑ってる・・・結構仲がいい友達なのかな・・・）[p]
#
	
[live2d_delete_all][live2d_off]
[eval exp="f.event_sub_18[2]=0"]
[eval exp="f.event_sub_18_sumi[2]=1"]
[jump storage="scenario_2/episode/epi10_w.ks" target=*sirabe_return]

*lioness_sakaba
[if exp="f.lion_flag==1"]
;	#ライオネス好感度
;	宿屋部屋
#&f.name	
「・・・ん？なんだか１階のほうが騒がしいような・・・」[p]
#

#&f.name	
「なんだろ・・・ちょっとのぞいてみよう」[p]
#

[bg storage="wesuta_sakaba_yoru.jpg"]
;	宿屋酒場

[lioness_tatie_touroku]
[lioness_tatie_show_left]
[tris_tatie_touroku]
[tris_tatie_show_right]
#&f.name	
（あれ、あれって・・・ライオネスとトリスタン？）[p]
#

#&f.name	
（一体何を話して・・・）[p]
#

[lioness_tatie_yareyare]
[tris_tatie_niyaniya]
[fadeinbgm storage="tw44_musmus.ogg" time="1000"]
#トリスタン	
「だからよお、おーまーえーはー、ここぞってときにダメなんだよ～」[p]
#
#&f.name	
（あーあ・・・かなり飲んでるっぽい・・・・・・）[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「何がここぞだよ。だいたい先に女作ったからってえらそうな顔してんじゃねえ」[p]
#
[tris_tatie_smile]
#トリスタン	
「うらやましいだろ？え？」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「ぜんぜん」[p]
#
[tris_tatie_niyaniya]
#トリスタン	
「まったまたあ、つよがっちゃってー、ホントは非リアなメスライオンしかもD・・のくせにー」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「てってめえっ・・・ばっ・・・俺はそんなじゃ・・・
[lioness_tatie_chottoikari]
ってかメスライオン言うんじゃねえよ！！」[p]
#

#&f.name	
（非リアってなんのことだろう・・・）[p]
#

[tris_tatie_sian]
#トリスタン	
「・・・やっぱあれだな、その口の悪さがなあ」[p]
#
[tris_tatie_mayuhisome]
#トリスタン	
「その体格でどなったら、たいていの女は怖がって逃げてしまうだろ？逃げないのなんてセレは当然として、[name]くらいのもんじゃないか？」[p]
#
#&f.name	
（えっ・・・私・・・？）[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「いつもボケっとしてるくせになかなかしぶといからな。
[lioness_tatie_kosinite]
・・ま、付き合いが長いせいもあるんだろうけどよ」[p]
#
[tris_tatie_niyaniya]
#トリスタン	
「なにしれっと答えてんだよ。早く告れよ」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「馬鹿野郎！だからそんなんじゃねえって言ってんだろ！いつまで勘違いしてんだ」[p]
#
[tris_tatie_metoji_warai]
#トリスタン	
「でもな、たとえ俺の勘違いだとしてもな、結構お前も・・・まんざらじゃないんだろ？なあ？」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「な、なに言って・・・誰があんなまな板に・・・」[p]
#
[lioness_tatie_chottoikari]
#&f.name	
（まな板って・・・あ）[p]
#
;	SE
[playse storage="butukaru_onjin.ogg"]
[stopbgm]
[tris_tatie_mihiraki]
#トリスタン	
「おお、噂をすればだな。
[tris_tatie_smile]
[name]もこっちきて食うか？」[p]
#
[lioness_tatie_odoroki]
#ライオネス	
「あっ・・・あ、あ・・・

[lioness_tatie_chottoikari]
お、べ、べべべべ別にお前の話なんかしてねえんだからな！！」[p]
#
#&f.name	
（え、えーと・・・）[p]
#
[tris_tatie_ha]
#トリスタン	
「あのなあ・・・ばればれだぞ？お前・・・」[p]
#

#&f.name	
「はぁ・・・」[p]
#
[chara_hide_all]	
;	#ライオネス好感度

[anten]	
[bg storage="wesuta_yado_yoru.jpg"]
;	夜

#&f.name	
（なんだか目がさえちゃったな・・・お水でももらいにいこうっと・・・）[p]
#

[anten]
[live2d_lion_touroku]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]
[bg storage="wesuta_sakaba_yoru.jpg"]

#&f.name
（って、あ）[p]
#
[live2d_fadein time=1000]
[lioness_arms_udekumi]
#ライオネス	
「何だお前、子供は寝る時間だぞ」[p]
#
#&f.name	
（ライオネス、ずっと飲んでたのかな・・・？）[p]
#
[lioness_arms_normal]
#&f.name	
「子供じゃないのに・・・」[p]
#

[lioness_face_yokome_otikomi]
[lioness_arms_poripori]
#ライオネス	
「・・・・・。子供ってことにしとけ」[p]
#
[lioness_arms_normal]
#&f.name	
「何それ・・・。あ、床にトリスタン伸びてる・・・」[p]
#

[lioness_face_akireru]
#ライオネス	
「ああ。全くセレセレセレセレって・・・そんなに心配ならクレールに残りゃあよかったじゃねえか・・・ったく」[p]
#
#&f.name	
「ライオネス、
[lioness_face_normal]
トリスタンとセレさんのこと・・・」[p]
#

[lioness_mod_idle_no_move_metoji]
[lioness_face_metoji]
#ライオネス	
「あれだけ垂れ流してりゃすぐわかるぜ。まあ、今まで隠してた反動なのかもしれねえけどな」[p]
#
#&f.name	
「そっかあ・・・」[p]
#
[lioness_mod_idle]
[lioness_face_ha]
#ライオネス	
「あの男勝りなセレとこいつがか？
[lioness_mod_idle_no_move]
[lioness_face_mehuse_dai]
全く信じらんねえけど、指輪渡したって言ってたし、そうなんだろうな」[p]
#
#&f.name	
「うん・・・ウェスタに行く日だったよね。すごくセレさん幸せそうだったよ」[p]
#
[lioness_mod_idle]
[lioness_face_normal]
#ライオネス	
「・・・へえ・・・」[p]
#
#&f.name	
「それでもセレさんと別れてウェスタに来たんだもの・・・トリスタンもきっと、クレールを守りたいと思ってるんだよ」[p]
#
[lioness_arms_kosinite_left]
[lioness_arms_kosinite_right]
[lioness_face_wakewakaran]
#ライオネス	
「・・・この間抜け面でか？」
[lioness_arms_normal]
[p]
#
[lioness_face_normal]
[lioness_arms_udekumi]
#&f.name	
「う・・・ううーん・・・」[p]
#
[lioness_face_akireru]

[live2d_fadeout time=1000]
[anten]
[bg storage="wesuta_sakaba_yoru.jpg"]
;	暗転

[lioness_mod_idle_no_move]
[lioness_face_mehuse_dai]	

[live2d_fadein time=1000]
#ライオネス	
「・・・・・。・・・なあ」[p]
#
#&f.name	
「なに？」[p]
#
[lioness_face_yokome_otikomi]
#ライオネス	
「・・・あいつのことだけど」[p]
#
#&f.name	
（あいつ？）[p]
#
#&f.name	
「あいつって・・・クライストさん？」[p]
#

[lioness_face_mehuse_dai]
#ライオネス	
「・・・・・お前よ、あいつにあんま近づきすぎんなよ」[p]
#
#&f.name	
「近づきすぎるなって・・・」[p]
#
[lioness_mod_idle]
[lioness_face_normal]
#ライオネス	
「わかってんだろ。鈍い俺にだってわかるぞ。あいつがお前に言い寄ってるってこと」[p]
#
#&f.name	
「・・・！」[p]
#
[lioness_face_yareyare]
#ライオネス	
「兄貴のやつがやたらに心配してうるせえのなんの・・・」[p]
#
#&f.name	
「ランスロットが？」[p]
#
[lioness_arms_udekumi]
#ライオネス	
「お前・・・あれでよく気づかねえなあ・・・もうホントうるせえぞ」[p]
#

[lioness_face_akireru]
#ライオネス	
「近づけさせんなって何度言われたことか・・・
[lioness_arms_normal]
なんなんだよあいつ・・・」[p]
#
#&f.name	
「でも・・・クライストさん、そんなに言うほど悪い人じゃないよ」[p]
#

[lioness_face_metoji]
#ライオネス	
「確かに、根っからの悪人じゃねえだろ。
[lioness_face_normal]
だが問題はそこじゃねえ」[p]
#

[lioness_face_yokome]
#ライオネス	
「お前は、ガキだが女で、あいつは男。
[lioness_face_normal]
言ってる意味、わかるか？」[p]
#
#&f.name	
「っ・・・」[p]
#
[lioness_face_yokome_otikomi]
#ライオネス	
「あいつ・・・男の俺から見たって一人に本気になるタイプじゃねえし、魔剣のことだってある」[p]
#

[lioness_face_sinnpai]
#ライオネス	
「いろんな意味で、兄貴は近づくなって言ったんだと思うぜ」[p]
#
#&f.name	
「で、でも・・・」[p]
#
[lioness_face_yareyare]
#ライオネス	
「兄貴の言うこと聞いとけ。じゃねえと俺がどやされる」[p]
#
#&f.name	
「・・・」[p]
#
[lioness_arms_atamanite_right]
#ライオネス	
「めんどくせえんだよ・・・はあ・・・」[p]
#
[lioness_arms_normal]
[lioness_face_normal]
#&f.name	
「ランスロットは・・・いつまで私のこと子供扱いするのかな・・・」[p]
#
[lioness_face_yokome]
[lioness_arms_udekumi]
#ライオネス	
「さあな、けどとばっちりはごめんだぜ」[p]
#
;	#ライオネスはそ知らぬ顔で酒をあおっている。自分は部外者だといわんばかりの態度だ。
#&f.name	
「ライオネスは・・・どう思うの？」[p]
#
[lioness_face_normal]
#ライオネス	
「・・・何に対してだよ、兄貴？クライストか？」[p]
#
#&f.name	
「・・・・えっと・・・その・・・」[p]
#
#ライオネス	
[lioness_face_metoji]
「・・・・。
[lioness_face_yokome]
クライストのことは兄貴と同じ意見だが？今はあいつがなきゃヴァエルもなんとかできねえしな・・・」[p]
#

[lioness_face_normal]
#ライオネス	
「兄貴は・・・
[lioness_face_akireru]
お前がいつまでもふらふらしてっから、気が気じゃねえんじゃねえか？」[p]
#
#&f.name	
「そっ・・・そんなことないよ！」[p]
#
[lioness_mod_idle_no_move]
[lioness_face_mehuse_dai]
#ライオネス	
「・・・ま、それだけじゃねえような気がするけどな・・・あいつ・・・やっぱり」[p]
#
#&f.name	
「・・・え？」[p]
#
[lioness_face_metoji]
#&f.name	
（ライオネス・・・？）[p]
#

[lioness_face_yokome_otikomi]
#ライオネス	
「・・・・。
[lioness_face_metoji]
飲みすぎた。
[lioness_face_yokome]
寝るわ。お前も寝ろよ」[p]
#
[playse storage="isu_tairakomori.ogg"]
[live2d_fadeout time=1000]
[w][w][w][w]
[playse storage="walkyuka_onjin.ogg"]
#&f.name	
「あっ・・・ライオネス・・・」[p]
#
[stopse]
[playse storage="tonton_koukaonlabo.ogg"][fadeoutse time=1000]
[quake count=2 time=300 wmax=5]
[lioness_face_odoroki]
[live2d_fadein time=50]
#ライオネス	
「・・・だっ・・・」[p]
#
[lioness_face_odoroki]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="lioness" y=-5.3 scale=10.5]
[camera time="300" x="0" y="-30" zoom="1.3"]
[live2d_fadeout time=50]
#&f.name	
「きゃっ・・・」[p]
#

#&f.name	
（・・・？）[p]
#

[reset_camera]
[lioness_face_sinnpai]
[live2d_fadein time=1000]
#ライオネス	
「・・・っ・・・わ・・・わりぃ・・・大丈夫か」[p]
#
#&f.name	
「だ、大丈夫・・・」[p]
#
#&f.name	
（・・・ライオネスの瞳の色って、こんなに薄い水色なんだ・・・）[p]
#
#&f.name	
（背が高いから、こんなに身近で見ることなんかないけど・・・なんか・・・意外な感じもする）[p]
#
[lioness_face_sekimen]
#ライオネス	
「な・・・
[lioness_mod_idle_no_move]
[lioness_face_tere_mehuse]
なんだよ・・・そんな珍しいか」[p]
#
#&f.name	
「だって、ライオネス背高いからこんな近くで顔みることないもん」[p]
#
[lioness_face_bakawarai]
#ライオネス	
「あー、お前ちびだからな」[p]
#
[lioness_face_warai]
#&f.name
「ち、ちびなんかじゃ・・・もうっ・・・」[p]
#

[lioness_face_normal_warai]
#ライオネス	
「・・・ともあれ悪かった。
[lioness_face_warai]
ほれ、立てるか？」[p]
#

#&f.name
「う、うん・・・」[p]
#
[live2d_fadeout time=50]
[playse storage="tukamu_onjin.ogg"]
#&f.name
（・・・手・・・大きい、な・・・今更だけど）[p]
#
	
	
[lioness_mod_idle]
[live2d_lion_show_sekkin]	
[lioness_face_akireru]
[lioness_arms_udekumi]
[live2d_fadein time=1000]
#ライオネス	
「しっかし、トリスタンのやろう・・・こんなとこに寝やがって、転ぶとこだったじゃねえか・・・」[p]
#
#&f.name	
「どうするの？」[p]
#
[lioness_face_yareyare]
#ライオネス	
「・・・店主も困るだろうから、俺がつれてく。
[live2d_fadeout time=50]
よ・・・っと」[p]
#
[playse storage="hukukosure1_onjin.ogg"]
#&f.name	
（トリスタンも結構体重あると思うのに、軽々と・・・さすがっていうか・・・）[p]
#
[lioness_arms_normal]
[lioness_face_normal]
[live2d_fadein time=1000]
#ライオネス	
「お前もさっさと寝ろよ。明日寝坊すんぞ」[p]
#
#&f.name	
「わかってるってば！」[p]
#
[lioness_arms_kosinite_left]
[lioness_arms_kosinite_right]
[lioness_face_warai]
#ライオネス	
「じゃーな、おやすみ」[p]
#
[live2d_fadeout time=1000]
[playse storage="walkyuka_onjin.ogg"]
#&f.name	
「お、お休みなさい・・・」[stopse][p]
#
#&f.name	
「はあ・・・」[p]
#
#&f.name	
（私も早く寝ようっと・・・）[p]
#
	
[anten]
[endif]
;	暗転
	
;	翌朝
;	#クライスト好感度

[if exp="f.kra_flag==1"]
*kra_next_day

[bg storage="wesuta_city.jpg"]
[playse storage="zawameki_soto.ogg"]
#&f.name	
（・・・？・・・なんだろう？なんか町の人たちが・・・）[p]
#
#町の人	
「・・・それ本当か？なんでまた・・・」[p]
#
#町の人	
「・・・傭兵同士のいさかいってやつか？たまんねえなぁ・・・何もうちの街でやらなくても・・・」[p]
#
#&f.name	
「何かあったんですか？」[p]
#
#町の人	
「街の近くの草原で、傭兵の死体が見つかったんだよ」[p]
#
#&f.name	
「えっ・・・ええっっ！？」[p]
#
#&f.name	
（傭兵の・・・死体・・・って・・・）[p]
#
#町の人	
「どうも昨日の夜やられたっぽいぜ」[p]
#
#町の人	
「モンスターのしわざなのか？」[p]
#
#町の人	
「それがわかんねえんだと、剣にしては不自然な傷でよ・・・」[p]
#
#&f.name	
（・・・死体・・・こんな静かな街でなんて）[p]
#
#&f.name	
「物騒だね・・・」[p]
#
[stopse]

[tris_tatie_touroku]
[chara_show name="tris" storage="tris_tatie/tris_naki.png" height="603" width="420" top=50 left=360]
#トリスタン	
「頭がいてえ・・・」[p]
#
[lioness_tatie_touroku]
[lioness_tatie_show_left]
#ライオネス	
「お前飲んだくれて管巻きすぎだっつうの」[p]
#
#&f.name	
「・・・・・・」[p]
#
#&f.name	
（・・・誰も聞いてないし・・・）[p]
#
[chara_hide_all time=50]
[kra_tatie_touroku]
[chara_show name="kra" storage="&f.kra_yokome" top=0 left=130]
#クライスト	
「・・・・・・」[p]
#
#&f.name	
（そりゃ・・今はヴァエルのことが先だから、私たちには関係ないのかもだけれど・・・）[p]
#
[kra_tatie_mehuse]
#&f.name	
（なんだろう・・・何かが気になる・・・）[p]
#
[chara_hide_all time=50]
[config_true]
[lioness_tatie_show]
#ライオネス	
「・・・・・・」[p]
#
[lioness_tatie_chottoikari]
[chara_hide_all time=50]
[chara_show name="kra" storage="&f.kra_mehuse" top=0 left=130]
[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]

#&f.name	
（え・・・）[p]
#
#&f.name	
（・・・クライストさんのとこ見て・・・ライオネス・・・？）[p]
#
[chara_hide_all][chara_off]
[endif]
[jump storage="scenario_2/day_end_macro.ks" target=*lioness_kra_end]
;	共通
;	船


