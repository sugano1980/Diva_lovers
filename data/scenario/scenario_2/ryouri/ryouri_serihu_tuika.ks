;好きな追加材料のセリフ
;好きなものが入っていると、専用のセリフになる

;ランスロット　菓子パイ
[macro name="pai_rans"]
[rans_exp_bisyo]
#ランスロット
「パイか。このサクサクした食感は好きだな。ありがとう、[name]」[p]
#
[endmacro]

;ランスロットクッキー
[macro name="cookie_rans"]
[rans_exp_bisyo]
#ランスロット
「定番のお菓子だな」[p]
#
[rans_head_right_z]
[rans_exp_yokome_warai]
#ランスロット
「覚えているか、お前が弟子入りしてまもないころ、私に初めて作ってくれた・・・
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_mehuse_warai]
いや、なんでもない」[p]
#
[endmacro]


;ライオネス、パイ
[macro name="pai_lion"]
[lioness_face_ha]
#ライオネス
「なんか・・・食いにくいなこれ・・・ポロポロ落ちるし・・・
[lioness_face_normal_warai]
でもまあ、ありがとな、[name]」[p]
#
[endmacro]

;ライオネス、クッキ
[macro name="cookie_lion"]
#ライオネス
「100個くらい食ったら腹膨れそうだよな！
[lioness_face_normal_warai]
味？うまいぜ！ちょっともさもさしてるけど」[p]
#
[endmacro]


;クラ、パイ
[macro name="pai_kra"]
[aho_face_normal]
#クライスト
「パイかあ。いいね。お菓子にも食事にもなったりするし。ありがとう、[name]ちゃん」[p]
#
[endmacro]

;クラ、クッキ
[macro name="cookie_kra"]
[aho_face_bisyou_youen]
#クライスト
「女の子が作るお菓子ってさ、なんでこんなに美味しいんだろうね。可愛い子だと特に。ありがとう」[p]
#
[endmacro]



;クライスト；追加ヒット
[macro name="ryouri_kra_like_2"]
[aho_face_mihiraki]
#クライスト
「えっ、これって手料理で作れるんだね。すごいよ。[name]ちゃん」[p]

[aho_head_right_z]
[aho_face_hutuu_bisyou]
#クライスト
「それに店のなんかより絶品だし。ああ、また君の料理が食べたいな」[p]
[aho_head_normal]
[aho_face_smile]
#クライスト
「ありがとう、すごくうれしかった」[p]

[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]




[macro name="ryouri_kra_like_3"]
[aho_face_smile]
#クライスト
「この料理、俺のためだけに作ってくれたんだよね？」[p]
[aho_head_under_y]
[aho_eyes_under]
[aho_face_hutuu_bisyou]
#クライスト
「ありがとう・・・俺、なんていったらいいのか・・・
[r]いつもこうやって・・・毎日、君の料理が食べれたらなって」[p]
[aho_head_above_y]
[aho_head_right_x]
[aho_face_yokome]
#クライスト
「ああ、もちろん・・・もしかしたら君はそんなじゃないかもだけど」[p]
[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト
「だけど俺は、君が料理を作ってくれるたびに、いつも思うんだ」[p]
[aho_head_right_z]
[aho_face_hutuu_bisyou]
#クライスト
「君が・・・少しでもそんなことを考えてくれたら、いいなって・・・」[p]
[aho_head_left_z]
[aho_head_under_y]
[aho_face_komari_warai]
#クライスト
「・・・ごめん。これは、俺の勝手な願いだね」[p]
[aho_head_normal]
[aho_face_normal]
#クライスト
「・・・今度は俺が君のために、何かしたいな」[p]
[aho_face_yokome_warai]
#クライスト
「あ、一緒に料理するってのも、楽しそうだね」[p]
[aho_head_under_y]
[aho_head_normal]
[aho_face_hutuu_bisyou]
#クライスト
「今度、俺にも料理教えてよ。
[r]君にも何か美味しいものを作ってあげたいから。[aho_face_smile]ね？」[p]
[aho_head_under_y]
[aho_face_metoji_warai]
[aho_head_normal]
#クライスト
「・・・[aho_face_hutuu_warai]本当にありがとう」[p]
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


;ライおねす：追加ヒット


[macro name="ryouri_lion_hate"]
[lioness_face_mehuse_dai]
#ライオネス
「・・・まあ、悪くは、ねえんじゃねえか・・・」[p]
[lioness_face_warai]
#ライオネス
「ありがとな」[p]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="ryouri_lion_like_2"]
[lioness_head_left_x]
[lioness_face_tere]
#ライオネス
「うまかった・・・まじで。あのよ・・・もしよかったら、明日も作ってくんねえ・・・？これ」[p]

[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス
「それじゃな」[p]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]



[macro name="ryouri_lion_like_3"]
[lioness_head_left_x]
[lioness_head_under_y]
[lioness_face_yokome]
#ライオネス
「俺・・・時々思うことあんだ。
[r]もし・・・もし、だ。お前がいつも一緒にいて・・・」[p]

[lioness_head_right_x]
[lioness_head_above_y]
[lioness_face_sinnpai]
#ライオネス
「そいでこんな美味いものたくさん作ってくれて・・・」[p]

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]

#ライオネス
「そんなんだったら、いいのにな、なんて・・・」[p]
[lioness_head_left_x]
[lioness_face_tere]
#ライオネス
「ほ、ほんと美味いからよ、お前の・・・作る料理・・・」[p]

[lioness_face_yokome_otikomi]
#ライオネス
「こんな俺の好みばっか作るなんて、反則だろ・・・」[p]
[lioness_head_normal]
[lioness_face_tere]
#ライオネス
「お、お前わかっててやってんのか？その・・・」[p]
[lioness_head_left_x]
[lioness_head_under_y]
#ライオネス
「俺がこういうの、好きだって。だから、たくさん作ってくれたのか？」[p]
[lioness_face_yokome_otikomi]
[lioness_head_right_x]
[lioness_face_yareyare]
#ライオネス
「・・・・・。あぁ・・・なんかもう・・・わけわかんね・・・」[p]
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「はあ・・・」[p]

[lioness_head_above_y]
[lioness_head_right_x]
[lioness_head_right_z]
[lioness_face_yokome_otikomi]
#ライオネス
「お前、俺のためだけにメシ作ってくれりゃあいいのになあ・・・」[p]
[lioness_head_normal]
[lioness_face_sinnpai]
#ライオネス
「もしそうだったら俺、お前のこと絶対離しやしねえのに・・・」[p]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス
「なんかつれえ。[lioness_head_right_x][lioness_face_yokome_otikomi]つれえけど、また食いてえ。お前の料理」[p]

[lioness_head_normal]
[lioness_face_kessin_warai]
#ライオネス
「俺は、いつでも待ってるから。

[lioness_head_left_z]
[lioness_face_warai]
また、うまいもん作ってくれよな」[p]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


;ランス：追加ヒット
[macro name="ryouri_rans_like_2"]

[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]
#ランスロット
「こういうものは、食べるとほっとするな。お前が作ったと思うとより美味しく思える」[p]

[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「・・・ありがとう」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="ryouri_rans_like_3"]

[rans_exp_mihiraki]
#ランスロット
「・・・今日は、ずいぶんと豪勢だな。どうしたんだ？」[p]
#

[rans_exp_metoji]
[rans_head_under_y]
[rans_exp_yokome]
#ランスロット
「・・・・・・・」[p]
#

[rans_head_above_y]
[rans_head_left_x]
[rans_head_left_z]
#ランスロット
「・・・その・・・
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
なあ、[name]」[p]
#
[rans_head_right_x]
[rans_exp_sinpai]
#ランスロット
「お前はそんなつもりはないのかもしれないが・・・」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット
「あまり男の好物を作ると、いろいろと期待させてしまうこともあるんだぞ？」[p]
#
[rans_exp_yokome]
#ランスロット
「・・・もちろん、それは私も例外ではない」[p]
#
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット
「な、なにを、期待って・・・それは・・・」[p]
#
[rans_head_left_x]
[rans_exp_yokome]
#ランスロット
「・・・その」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「・・・・・・・」[p]
#

[rans_head_normal]
[rans_exp_normal_warai]
[rans_eyes_right]
#ランスロット
「な、なかなかうまくできているな。この料理、作るのに手間取っただろう」[p]
#
[rans_eyes_normal]
[rans_head_under_y]
[rans_head_normal]
#ランスロット
「料理の腕もだいぶあがったな。お前の成長が嬉しい」[p]
#

[rans_head_under_y]
[rans_head_right_x]
[rans_exp_mehuse]
#ランスロット
「これから先も・・・ずっとそばで見守っていられたらと思う」[p]
#
[rans_exp_metoji]
#ランスロット
「お前も、私に隣にいてほしいと考えてくれていたらいいのだが」[p]
#
[rans_exp_yokome]
#ランスロット
「・・・そうだな、できたら・・・師匠として、ではなく・・・」[p]
#
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット
「ああ、いや、[rans_exp_komari_warai]なんでもないんだ・・・」[p]
#
[rans_exp_mehuse_warai]
#ランスロット
「お前は、気にしなくていい」[p]
#
[rans_head_right_z]
[rans_exp_komari_warai]
#ランスロット
「また、お前の料理に期待してもいいか？」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「・・・いつもありがとう、[name]」[p]
#
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans_hate"]
[rans_exp_mehuse]
#ランスロット
「そうだな、こういうものも悪くはないな・・・。一生懸命作ってくれて、ありがとう」[p]
#
[rans_exp_metoji]
#ランスロット
「お前の心遣いに感謝する」[p]
#

[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]





;嫌いな追加材料のセリフ
;苦手なものが入っていると、苦手な物のセリフになる
[macro name="tomato_hate_lion"]
[chara_on][chara_show name="lioness"]
[chara_mod name="lioness" face="mehuse_kutiake"]
[lioness][r]
「なあ俺・・・トマトだけはだめなんだよ・・・」[p]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
[lioness][r]
「なあ、やっぱり食べなきゃだめか・・・？」[p]
[chara_mod name="lioness" face="yareyare_kutiake"]
[lioness][r]
「・・・・・・・。だめか・・・」[p]

[chara_off][chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="tomato_hate_lion"]


[endmacro]


[macro name="ryouri_kra_hate"]
[aho_face_yokome]
#クライスト
「ああ、うん・・・好きな人は好きだろうね、こういうの。
[aho_face_normal]ありがとう[name]ちゃん。おいしかったよ」[l]
[cm]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]




[return]




;;;;;;;;;;;;;;;;残しておく旧セリフ
[macro name="ryouri_lion1"]
[chara_on][chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「もうちょっと、俺はパンチの効いたもんのほうが好きだな。でもま、うまかったぜ」[p]
#
[chara_mod name="lioness" face="normal_warai_kutiake"]
[lioness][r]
「ありがとな、[name]」[p]
#
[lioness][r]
「じゃあな」
[chara_off][chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="ryouri_lion2"]
[chara_on][chara_show name="lioness"]
[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「うまかった。どーもな」[p]

[chara_mod name="lioness" face="yokome_warai"]
[lioness][r]
「じゃあな」[p]
[chara_off][chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="ryouri_rans2"]
[chara_on][chara_show name="ranslott" reflect=true]]
[ranslott][r]
「とてもおいしかった。ありがとう、[name]」[p]

[chara_mod name="ranslott" face="normal_warai_kutiake"]
[ranslott][r]
「じゃあな」
[chara_off][chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="ryouri_rans3_1"]
[chara_on][chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「こういう、さっぱりしたものは好きだな。どうもありがとう、[name]」[p]

[ranslott][r]
「よければ、また作ってくれないか」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「それじゃ、またな」
[chara_off][chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="ryouri_rans3_2"]

[chara_on][chara_show name="ranslott" reflect=true]
[chara_mod name="ranslott" face="metoji_warai_kutiake"]
[ranslott][r]
「ああ、煮物か・・・食べるとほっとするな。お前が作った手料理だから、よりそう思える」[p]

[chara_mod name="ranslott" face="bisyou"]
[ranslott][r]
「・・・ありがとう、また、よければ作ってくれ」[p]


[chara_mod name="ranslott" face="bisyou_kutiake"]
[ranslott][r]
「それじゃ、またな」
[chara_off][chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

