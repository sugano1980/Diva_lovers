	
	
;テストコード
;[eval exp="f.event_main_15_date_rans=1"]	
;[eval exp="f.rans_heart_kizuna=2"]
;[eval exp="f.ranskonkando=100"]
;[if exp="f.event_main_15_date_rans==1"]	
;[eval exp="f.date_sp=1"]




;クライストとのイベントが進んでいる場合
;;エピソード
;テストコード
;[eval exp="f.kra_flag=1"]
;傭兵ギルド
[button_hyouji][hidemenubutton]


[if exp="f.kra_flag==1"]
[message_settei_ad]
[playse storage="zawameki_situnai.ogg"]
[bg storage="guild_sakaba.jpg"]
#ルイーダ	
「クライスト、あんな短期間で依頼をこなしてくれるなんてね、これ、報酬だって。
[playse storage="okane_onjin.ogg"]
依頼主さんから」[p]
#

[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「いらないけどなあ。酒場の維持費に使ってよ」[p]
#

[kra_tatie_yokome]
#ルイーダ	
「ちょっとくらい持って行きなさい。うちだってそんなにもらったって困るのよ」[p]
#

[stopse]
[kra_tatie_yareyare]
#クライスト	
「やれやれ、仕方ないなあ」[p]
#

#ルイーダ	
「クライアントさん、
[kra_tatie_normal]
厄介者が死んでせいせいしたって、喜んでたわねえ」[p]
#

#ルイーダ	
「騎士団で捕まえるのがベストだけど、貴族だからギリギリで釈放されるって、うちに話が回ってきたんだけど」[p]
#

#ルイーダ	
「所業を聞いたら、ひどいものね。詐欺、窃盗、レイプ、暴行・・・貴族だからってやりすぎよ」[p]
#

[kra_tatie_yokome]
#ルイーダ	
「今回あんたがやってくれたから、助かった人もたくさんいたでしょうけどね」[p]
#

[fadeinbgm storage="odai07_ontama.ogg" time=1000]

[kra_tatie_mehuse]
#クライスト	
「・・・・・・」[p]
#


[kra_tatie_metoji]
#クライスト	
「でも、街の人たちは不安がってる。・・・命を奪うことに変わりはない。ほめられることじゃないよ」[p]
#

#ルイーダ	
「いいじゃない。どうせあんたは訳ありで、暗殺の仕事を請け負わないといけないんでしょ」[p]
#

[kra_tatie_normal]
#ルイーダ	
「傭兵は汚い仕事も請け負うから重宝されるのよ。罪の意識ばかり抱えてたら、仕事もできなくなっちゃうわよ」[p]
#

#ルイーダ	
「そのへんは割り切らないと」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・そうだね、助言、ありがとう」[p]
#

[kra_tatie_normal]
#クライスト
「しばらく王都を離れるから、もどってきたときにはまた、頼むよ」[p]
#

#ルイーダ	
「あら、また海を渡るの？戻ってきたらお土産話、よろしくね」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・ああ」[p]
#

#クライスト
「・・・・・・」[p]
#
[chara_hide_all]
[cm]
[stopse][fadeoutbgm time=3000]

[endif]



;イレイン部屋　夜

;ランス好感度
[if exp="f.rans_flag==1"]

[bg storage="irainheya_yoru_tasogare.jpg"]

#&f.name	
（ウェスタにいくって決めたはいいけど・・・荷物とかどれくらいもってけばいいんだろ・・・）[p]
#

#&f.name	
「難しいなあ・・・ライオネスたちにも相談してみようかな」[p]
#

[playse storage="nokku_tairakomori.ogg"]
;ノック
#&f.name	
「ん？誰だろ？」[p]
#

[rans_tatie_touroku]
[rans_tatie_show]

#ランスロット	
「[name]」[p]
#
#&f.name	
「あれ、ランスロット、どうしたの？」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット	
「お前と一緒に夕食でもと思ってな。
[rans_tatie_normal_warai]
もし、まだならどうだ？」[p]
#
#&f.name	
「食事・・・まだはまだだけど」[p]
#
;選択肢
;No
[jump storage="scenario_2/sentaku.ks" target=*rans_westa_choice]

*rans_w_no
[rans_tatie_mehuse_warai]
#ランスロット	
「そうか、いきなり訪ねてきてすまなかったな、それじゃ、またな」[p]
#
[chara_hide_all][chara_off]
#&f.name
（明日早いし、仕方ないよね・・・）[p]
#
[jump target=*rans_w_end]	


;Yes
*rans_w_yes

[rans_tatie_mihiraki]
#ランスロット	
「その荷物・・・」[p]
#
#&f.name	
「あ、その・・・」[p]
#
;kr12まだ

[if exp="f.kr12!=1"]
[rans_tatie_normal]
#ランスロット	
「・・・ライオネスから聞いた。明日からウェスタに行くと・・・お前もいくのか？」[p]
#
[elsif exp="f.kr12==1"]
[rans_tatie_normal]
#ランスロット	
「・・・ウェスタに、いくことにしたのか？」[p]
#
[endif]	

	
#&f.name	
「・・・う・・・うん・・・」[p]
#

[rans_tatie_mehuse]
#ランスロット	
「・・・。そうか・・・」[p]
#
#&f.name	
（ランスロット・・・）[p]
#
#&f.name	
「ランスロット・・・あの」[p]
#

[rans_tatie_normal_warai]
#ランスロット	
「それなら、準備もあるだろうから今日は早めに済ませたほうがよさそうだな・・・行くか」[p]
#
#&f.name	
「う、うん・・・」[p]
#
[chara_hide_all]
;#ランスロットの家

[bg storage="ransjikka_yoru_tasogare.jpg"]

#&f.name	
「えっ・・・ごちそうになっていいの？」[p]
#

[rans_tatie_show]
[rans_tatie_normal_warai]
#ランスロット	
「もちろんだ。今日はシェフに料理を作らせる。腕を振るってくれるらしいぞ」[p]
#
#&f.name	
（うひゃあ・・・嬉しいけど、いいのかな・・・きっとご馳走だよね・・・）[p]
#
[chara_hide_all]	
;暗転

[anten]	
;ランスの部屋

[bg storage="ransjikka_heya_yoru.jpg"]


[live2d_rans_touroku]
#&f.name	
「あー、お腹いっぱい。ごちそうさまでした！」[p]
#


[live2d_rans_show_sekkin]
[rans_exp_normal_warai]
[rans_unaduki]
#ランスロット	
「それならよかった。・・・食後に紅茶はどうだ？」[p]
#
#&f.name	
「うん！いただきます」[p]
#

[rans_head_left_x]
[rans_body_left_z_half]
[rans_head_under_y]
[rans_head_left_z]
[rans_exp_mehuse]
#ランスロット	
「・・・」[p]
#
#&f.name	
（・・・ランスロット・・・？）[p]
#
#&f.name	
（あ、そういえば・・・今日お屋敷には誰もいないなあ。ライオネスあたりいるかなって思ったけど）[p]
#
#&f.name	
「ランスロット・・・
[rans_exp_normal]
[rans_head_normal]
今日ってその、使用人の人以外誰もいないの？」[p]
#

[rans_eyes_left]
[rans_head_left_z]
#ランスロット	
「・・・ああ。父上は王宮に泊まりで、
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[rans_eyes_right_under]
[rans_head_under_y]
[rans_head_right_x]
[rans_body_right_z_half]
ライオネスは・・・地方騎士団の寮にいられるのも残り少ないからと家には泊まらない」[p]
#

#&f.name	
「そうなんだ・・・そっか、地方騎士団の建物もなくなっちゃうものね・・・」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット	
「そうだな・・・」[p]
#

#&f.name	
（寂しいけど、でも仕方ないんだよね、これからのこと考えなきゃ）[p]
#


[rans_body_normal]
[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「明日が出港か・・・
[rans_exp_sinpai]
[rans_head_right_z]
[rans_body_right_z_half]
すまなかったな、忙しいときに」[p]
#


#&f.name	
「う、ううん・・・あ、でも、ごめんなさい、ランスロットにそのこと、伝えてなくて・・・」[p]
#

[rans_exp_bisyo]
[rans_body_normal]
[rans_head_normal]
#ランスロット	
「急なことだったんだろう。
[rans_head_right_z]
[rans_head_left_z]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
ライオネスもずいぶんと忙しそうにしていたから・・・」[p]
#
[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「お前のことだから、散々迷った末に決めたのだろうしな」[p]
#
[rans_unaduki]
#&f.name	
「そ、そりゃあ・・・王宮騎士団にすぐ、入ったほうがいいのかもって思ったし・・・」[p]
#

#&f.name	
「ランスロットと離れるのも、心細かったけど・・・だけど」[p]
#


[rans_head_right_z]
[rans_body_right_z_half]
[rans_exp_sinpai]
#ランスロット	
「[name]・・・」[p]
#

#&f.name	
「ご、ごめんなさい・・・」[p]
#


[rans_head_left_z]
[rans_body_left_z_half]
[rans_exp_bisyo]
#ランスロット	
「・・・なぜ謝る。お前が自分で決めたことなんだろう。それなら、その道を信じて進め」[p]
#
#&f.name	
「ランスロット」[p]
#

[playbgm storage="koucha_ontama.ogg"]
[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_head_right_x]
[rans_head_right_z]
[rans_exp_mehuse_warai]
[rans_body_right_z_half]
#ランスロット	
「お前はもう・・・一人前だ。正騎士にもなれた。私の力は、必要ないだろうしな」[p]
#
#&f.name	
「・・・ランスロット・・・」[p]
#
#&f.name	
（『必要ない』って・・・）[p]
#
#&f.name	
（・・・なんでだろ・・・この気持ち・・・喜んでいいのか、わからない・・・）[p]
#
#&f.name	
（でも、嬉しいって思わなきゃなのかな、認められたってことなんだしそのために今まで・・・）[p]
#
[rans_mod_idle]
[rans_head_normal]
[rans_body_normal]
[rans_exp_normal]
#ランスロット	
「[name]？」[p]
#
#&f.name	
「う、ううん・・・あ・・・ありがとう、ランスロット・・・」[p]
#

[rans_exp_sinpai]
[rans_eyes_right]
[rans_eyes_normal]
#ランスロット	
「・・・感謝の言葉を言う表情には見えないが」[p]
#
#&f.name	
「そ、そんなことないよ、そんな顔、してないよ」[p]
#
#ランスロット	
「[name]・・・」[p]
#
#&f.name	
（なんだろう・・・明日はここを離れなきゃならないのに、こんな気持ち・・・）[p]
#
#&f.name	
（何でこんな気持ちに、なるんだろ・・・）[p]
#
#&f.name	
（さっき、ランスロットが・・・あんなこと言ったときから・・・）[p]
#
#&f.name	
（『私の力は、必要ない』って・・・）[p]
#
[rans_exp_normal]
[rans_eyes_right]
[rans_head_under_y]
[rans_head_right_x]
[rans_body_right_z_half]
#ランスロット	
「・・・不安か？」[p]
#
#&f.name	
「えっ」[p]
#

[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
#ランスロット	
「ウェスタにいくのが不安なのか？」[p]
#


#&f.name	
（不安・・・なのかな、でも、自分で決めたことだし・・・もう迷ってないはずだけど・・・）[p]
#


[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット	
「・・・お前は今までここでずっと暮らしてきたからな、知らない土地にいくのに不安になるのは当然だ」[p]
#


[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット	
「だが、ライオネスやトリスタンもいるんだろう。なにかあったら、遠慮なく頼るといい」[p]
#


#&f.name	
「・・・・・・」[p]
#

[rans_head_right_z]
[rans_body_right_z_half]
[rans_exp_bisyo]
#ランスロット	
「・・・しばらく会えなくなるだろうが・・・気を付けていってくるんだぞ」[p]
#

#&f.name	
「ランスロット・・・」[p]
#

[rans_exp_mehuse_warai]
[rans_head_normal]
[rans_exp_komari_warai]
[rans_body_under_y]
[rans_arms_udekumi]
[rans_body_normal]
#ランスロット	
「全くお前は・・・だいじょうぶか？」
[rans_body_right_z_half]
[rans_head_right_z]
[p]
#

#&f.name	
（なんだろう・・・なんか・・・でも、よくわからない・・・）[p]
#


[rans_exp_normal_warai]
[rans_arms_normal]
[rans_body_normal]
[rans_head_normal]
[rans_unaduki]
#ランスロット	
「そろそろ、送って行くか。あまり遅くなると、明日に響くだろうしな」[p]
#
#&f.name	
「あ・・・」[p]
#

[rans_exp_mihiraki]
#ランスロット	
「[name]？」[p]
#

#&f.name	
「・・・う、うん・・・そうだよね・・・明日だもんね・・・」[p]
#

[rans_head_right_x]
[rans_head_left_x]
[rans_head_left_z]
[rans_body_left_z_half]
[rans_exp_komari_warai]
#ランスロット	
「本当に大丈夫か？あまり皆の足を引っ張ることにならないようにな」[p]
#
#&f.name	
「そ、そんなの、だいじょうぶだよ！」[p]
#

[rans_exp_bisyo]
[rans_head_normal]
[rans_body_normal]
#ランスロット	
「ははっ・・・それは、頼もしいな」[p]
;#微笑

[rans_unaduki]
#&f.name	
（ランスロット・・・）[p]
#
[fadeoutbgm time=3000]
[live2d_fadeout time=1000]
	
;騎士団本部前
[anten]
[bg storage="kisidaniriguti_tasogare.jpg"]
	
#&f.name	
「送ってくれて・・・ありがとう・・・」[p]
#

[live2d_fadein time=1000]
[rans_exp_normal_warai]
[rans_head_right_z]
[rans_body_right_z_half]

#ランスロット	
「今日は早く寝るんだぞ。船旅は、体力もいるだろう」[p]
#

#&f.name	
「うん・・・」[p]
#

[rans_body_normal]
[rans_unaduki]
#ランスロット	
「・・・じゃあな」[p]
#
[live2d_fadeout time=1000]
[rans_exp_normal]
[playse storage="walk-gravel1_koukaonlabo.ogg"]

#&f.name	
「あ・・・」[p]
#

#&f.name	
（もう・・・しばらく、ランスロットとは・・・会えないんだよね・・・）[p]
#

#&f.name	
（わかってて、ウェスタに行くって決めたのに・・・どうしてだろ・・・この気持ち・・・なんでこんなに）[p]
#

#&f.name	
「・・・ランスロット・・・」[p]
#

[stopse]

[playse storage="walk-gravel1_koukaonlabo.ogg"]
[rans_exp_mihiraki]
[live2d_fadein time=1000]
#ランスロット	
「[name]？」[stopse][p]
#
[rans_exp_normal]

#&f.name	
「あの・・・」[p]
#

[rans_head_right_z]
[rans_body_right_z_half]
[rans_exp_sinpai]
#ランスロット	
「・・・」[p]

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]

;#困り笑い　目閉じ

[rans_mod_idle]
[rans_head_normal]
[rans_body_normal]
#ランスロット	
「・・・そんな心細そうな顔をして、
[rans_exp_komari_warai]
お前が自分で決めたんだろう？」
[rans_head_right_z]
[rans_body_right_z_half]
[p]
#


#&f.name	
「それは・・・そうだけど・・・」[p]
#

#&f.name	
（・・・・・・）[p]
#

[rans_body_normal]
[rans_head_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
[playbgm storage="omoi_ontama.ogg"]
#ランスロット	
「・・・[name]」[p]
#
[rans_mod_idle]
[rans_eyes_normal]
[live2d_fadeout time=1000]
[rans_exp_bisyo]
[rans_head_right_z]
[rans_body_right_z_half]
[live2d_rans_mod_sekkin_2]
[rans_mod_idle_no_move]
[playse storage="huku_koukaonlabo.ogg"]
[live2d_fadein time=1000]
#&f.name	
「あ・・・」[p]
#
;アップもしくはてつなぎスチル

[rans_head_left_z]
[rans_body_left_z_half]
[rans_head_under_y]
[rans_head_normal]
#ランスロット	
「お前の帰りをここで待っている。
[rans_head_normal]
[rans_body_normal]
[rans_exp_bisyo_2]
[rans_mod_idle_no_move_mehuse]
・・・必ず無事で、戻ってきてくれ」[p]
#
#&f.name	
「ランスロット・・・」[p]
#


[rans_mod_idle]
[rans_exp_normal]
[rans_head_under_y]
[rans_head_right_z]
[rans_head_right_x]
[rans_body_right_z_half]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_mousiwakenai]
#ランスロット	
「・・・そんな顔をするな。・・・手放したくなくなるだろう」[p]
#

#&f.name	
（え・・・）[p]
#

[rans_head_under_y]
[rans_head_left_x]
[rans_mod_idle]
[rans_exp_sekimen_yokome]
[rans_body_left_z_half]
#ランスロット	
「・・・もし・・・その、よければ・・・手紙を書いてくれ。
[rans_head_normal]
[rans_body_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
私も、お前に送ろうと思う」[p]
#

#&f.name	
「手紙・・・」[p]
#
[rans_mod_idle]
[rans_head_right_z]
[rans_body_right_z]
[rans_exp_normal]
[rans_exp_yokome]
#ランスロット	
「ああ、伝書鳩に託せば、そのまま王都へと運んでくれる」[p]
#

[rans_exp_normal]
[rans_head_normal]
[rans_body_normal]
#ランスロット	
「船旅は何があるかわからない。もし、時間があったらでいいから・・・」[p]
#

[rans_exp_mehuse]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
#&f.name	
（ランスロット・・・）[p]
#


#&f.name	
「・・・うん、わかった。
[rans_mod_idle]
[rans_head_normal]
[rans_exp_normal]
・・・書くね」[p]
#

[rans_exp_normal_warai]
[rans_unaduki]
#ランスロット	
「・・・あぁ。
[rans_body_right_z_half]
[rans_head_right_x]
[rans_head_right_z]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
・・・じゃあな、明日、見送りにいく」[p]
#

#&f.name	
「うん。・・・おやすみなさい」[p]
#
[rans_mod_idle]
[rans_head_normal]
[rans_exp_bisyo_2]
#ランスロット	
「・・・おやすみ」
[rans_head_left_z]
[rans_body_left_z_half]
[p]
#

[live2d_fadeout time=1000]
[playse storage="walk-gravel1_koukaonlabo.ogg"]
#&f.name	
（なんだろ・・・この気持ち・・・。よくわからない、でも・・・）[p]
#
#&f.name	
（・・・きっとすぐ、戻ってこれるよね・・・。ここに）[p]
#
[stopse]
#&f.name	
（ランスロットにまた、すぐ会えるよね・・・）[p]
#
	
[fadeoutbgm time=3000]	
[live2d_delete_all][live2d_off]
[endif]




*rans_w_end
[anten][message_settei]

[playse storage="tori_tairakomori.ogg"]
[bg storage="irainheya_tasogare.jpg"]
ウェスタへ出発の朝。
[r]私はすっかり片付いた自分の部屋で、身支度を整え、
[r]双剣を腰に固定する。[l]
[r]（この部屋ともお別れ、か・・・）[l]
[r]改めて自分の部屋のぐるりを見渡す。
[r]１３歳で地方騎士団に入ってそれから、ずっと過ごしてきた部屋だ。[l]
[r]訓練の厳しさや男たちの嫌がらせに、涙したこともある。
[r]セレさんとお茶もよくしたっけ・・・。[l]
[r]さまざまな思い出が頭によみがえる。[l]
[r]私は目を閉じてそれをしばし反芻してから、荷物を抱え、
[r]親しんだ自室を後にした。[l]

[bg storage="kisidanrouka_tasogare.jpg"]

[r]本部の廊下。[l]
[r]もうほとんど残っている地方騎士はおらず、がらんとしている。[l]
[r]グレッグ団長もセレさんも、クライストたちの見送りに
[r]王都へ出ているのだろう。[l]
[r]団長の部屋からも人の気配がなかった。[l]
[r]（・・・誰もいない・・・。もうだいぶ皆出ていっちゃったものね・・・[l]
[r]この建物自体、閉鎖の日も迫っているし・・・）[l]
[cm]


[message_settei_ad]


#&f.name
（・・・あれ？あれは・・・セレさんと、トリスタン・・・？）[p]
#


[tris_tatie_touroku]
[tris_tatie_show_right]
#トリスタン
「本当に、王宮騎士団に入るつもりなのか？セレ」[p]
#


[cera_tatie_touroku]
[chara_on][chara_show name="cera" width=336 height=482 left=30 top=130]
#セレ
「何度も言っただろ。もう手続きは終わってる。明後日には初勤務だ」[p]
#


[tris_tatie_sian]
#トリスタン
「セレ・・・ウェルム団長はあまりいい噂のある人じゃないし、俺は心配だ」[p]
#


[cera_tatie_udekumi]
#セレ
「トリスタン・・・私は大丈夫だから、気にせずウェスタへ行ってくれ」[p]
#


[tris_tatie_mayuhisome]
#トリスタン
「気にしないわけがないだろ・・・あのウェルム団長だぞ？」[p]
#


[cera_tatie_smile]
#セレ
「・・・大丈夫だから・・・ね？」[p]
#


[tris_tatie_mehuse]
#トリスタン
「セレ・・・」[p]
#



#&f.name
（なんていうんだろう・・・なんか、トリスタンの前だとセレさん・・・女の子っぽいっていうか・・・）[p]
#


[tris_tatie_mihiraki_0]
#トリスタン
「あ、そうだ・・・」[p]
#


[cera_tatie_mihiraki]
#セレ
「トリスタン？」[p]
#

[tris_tatie_warai]
#トリスタン
「これ・・・まあ、その・・・お守りがわりにもっていてくれ」[p]
#


[cera_tatie_tere]
#セレ
「・・・こ・・・これ・・・」[p]
#


#&f.name
（あれって・・・なんだろう・・・ティアラ？）[p]
#


[tris_tatie_smile]
#トリスタン
「・・・だいぶ、遅くなっちゃったけど。・・・セレ、俺が、ウェスタから帰って、全部片付いたら・・・」[p]
#


[cera_tatie_bikkuri]
#セレ
「・・・トリスタン・・・」[p]
#


[cera_tatie_otikomi]
#セレ
「・・・遅すぎるんだ・・・お前は・・・っ・・・私が、どれだけ待ったと・・・」[p]
#

[tris_tatie_warai]
#トリスタン
「ごめんな。地方騎士団が、こんなになってからに、なっちまってさ・・・」[p]
#

[cera_tatie_smile]
#セレ
「馬鹿・・・」[p]
#


[chara_hide_all][chara_off]


[anten]

#&f.name
（・・・プロポーズ・・・だった、んだよね、きっと・・・）[p]
#

#&f.name
（セレさん、すごく嬉しそうだったな・・・いいなぁ・・・）[p]
#




[bg storage="kisidaniriguti_hiru_tasogare.jpg"]



[kra_tatie_touroku]
[kra_tatie_show_tall]

#クライスト
「やあ、[name]ちゃん、[kra_tatie_bisyou_youen]おはよ」[p]
#


#&f.name
「おはよう、クライストさん・・・よろしくお願いします」[p]
#


[kra_tatie_smile]
#クライスト
「あはは。そんなかしこまらなくても。船の船長も気さくな人だから、心配しなくていいよ」[p]
#


#&f.name
「は、はい！」[p]
#

[kra_tatie_smile]
[chara_hide_all]
#ラプタ
「キゥーキゥー」[p]
#


#&f.name
（あれ？この鳴き声・・・）[p]
#


[raputa_touroku]
[raputa_show]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「大丈夫だって。ちゃんと連れてくからそんなひっつくな」[p]
#


#&f.name
「なんかひとまわり大きくなってない・・・？」[p]
#

[lioness_tatie_udekumi]
#ライオネス
「ああ。竜ってのは成長が早いらしいな。餌の確保が大変だぜ」[p]
#

[raputa_warai]
#ラプタ
「キゥー」[p]
#

#&f.name
「ふふっ。でも相変わらず甘えてるみたいで、かわいいね」[p]
#

[lioness_tatie_kosinite]
#ライオネス
「・・・。・・・お前さ、ほんと、いいのか？」[p]
#

#&f.name
「え？なに？」[p]
#


[lioness_tatie_otikomi]
#ライオネス
「王宮騎士団に入らなくってよ・・・」[p]
#

#&f.name
「うん。私決めたから。みんなでウェスタに行くよ」[p]
#

[lioness_tatie_warai]
#ライオネス
「・・・そっか」[p]
#

#&f.name
「うん」[p]
#

[chara_hide_all]
[dancho_tatie_touroku]
[dancho_tatie_show]

#団長
「それじゃあ、[name]、ライオネス、クライスト・・・気をつけて、いってくるんだぞ。旅の無事を、祈っている」[p]
#

#団長
「ウェスタは様々な研究をする者が集まる聖地ともいわれる場所だ。ヴァエルを倒すための手がかりも、きっと見つかるだろう」[p]
#

#&f.name
「はい。グレッグ団長も、どうかお体に気をつけて」[p]
#

[dancho_tatie_warai]
#団長
「ああ」[p]
#

[chara_hide_all]


[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト
「さあ、それじゃあそろそろ出発しようか。シャロームの街に船が待ってる・・・って・・・

[kra_tatie_mihiraki]
あ」[p]
#

#&f.name
「クライストさん？」[p]
#


#&f.name
（あ・・・あれは・・・）[p]
#

#&f.name
「ランスロット！」[p]
#

[chara_hide_all]

[rans_tatie_touroku]
[rans_tatie_show_tall]

[rans_tatie_normal_warai]
#ランスロット
「[name]、よかった・・・間に合って」[p]
#

#&f.name
「ランスロット、なんで・・・」[p]
#




[if exp="f.kr11== 1&&f.rans_flag!=1"]

[rans_tatie_sinnpai]
#ランスロット
「ウェスタに行くと決めたのだな。[w]ライオネス
から聞いた。[w]見送りしないわけにはいかないだろう」[p]
#

#&f.name
「･･･ランスロット」[p]
#

[rans_tatie_metoji]
#&f.name
「そう決めたのなら、ひとことでも伝えてくれればよかったのだが」[p]
#

#&f.name
「ご、ごめんなさい・・・」[p]
#

[rans_tatie_normal]


[config_false]
[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
「・・・わしがヴァエルのことを王宮には伝えないようにと言ったせいもあるんだろう。これは[name]の責任ではない」[p]
#

#&f.name
「グレッグ団長・・・」[p]
#


[elsif exp="f.rans_flag!=1"]

[rans_tatie_sinnpai]
#ランスロット
「ウェスタに行くそうだな。[w]ライオネス
から事情を聞いたぞ。[w]･･･なぜ、私にひとことでも相談してくれなかったんだ？」[p]
#


#&f.name
「え･･･[w]えと･･･それは･･･[w]あんまり、心配かけたくなかったし･･･」[p]
#


#ランスロット
「･･･[name]･･･」[p]
#

#&f.name
「ご、ごめんなさい・・・」[p]
#

[rans_tatie_normal]



[config_false]
[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
「・・・わしがヴァエルのことを王宮には伝えないようにと言ったせいもあるんだろう。これは[name]の責任ではない」[p]
#

#&f.name
「グレッグ団長・・・」[p]
#

[elsif exp="f.rans_flag==1"]

[rans_tatie_normal_warai]
#ランスロット
「･･･見送りにいくと言っただろう？」[p]
#

#&f.name
「ご、ごめんね、忙しいのに」[p]
#

[rans_tatie_mehuse_warai]
#ランスロット
「･･･雑用はエクターに任せてきた。問題ない」[p]
#

[config_false]
[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
「・・・ランスロット」[p]
#


[endif]




[dancho_tatie_metoji]
#団長
「このことはどうか内密に頼む。差し迫った脅威ではないのだが、王都民に伝わると混乱を招く可能性もある」[p]
#

[rans_tatie_metoji]
#ランスロット
「ええ、ライオネスからも、そういわれましたし、私は最初からそのつもりです」[p]
#

[dancho_tatie_normal]
#団長
「すまんな、ランスロット」[p]
#

[rans_tatie_mehuse]
#ランスロット
「いいえ・・・地方騎士団の解散を止められなかったのは・・・私にも責があると感じていますので・・・力及ばず、申し訳ありませんでした」[p]
#

[dancho_tatie_metoji]
#団長
「・・・いいのだ。陛下のご命令なら、誰も逆らえやしないのだから。貴公が気に病むことではない」[p]
#

[rans_tatie_sinkoku]
#ランスロット
「グレッグ団長・・・。申し訳ありません・・・」[p]
#

#&f.name
（ランスロット・・・）[p]
#

[chara_hide name="dancho"]
[config_true]
[rans_tatie_metoji]
#ランスロット
「・・・。それじゃあ・・・[name]・・・。
[rans_tatie_sinnpai]
くれぐれも、気をつけろよ」[p]
#


#&f.name
「・・・ランスロット・・・。はい・・・。ごめんなさい・・・、その・・・王宮騎士団にも入れなくて・・・」[p]
#

[rans_tatie_normal_warai]
#ランスロット
「・・・気にするな、お前が決めたことなんだろう。それなら、その道を信じて進め」[p]
#

#&f.name
「・・・はい！」[p]
#

[chara_move name="rans" left=-70]
[rans_tatie_normal]
#ランスロット
「ライオネス、[name]を頼んだぞ」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show_right]
#ライオネス
「・・・わーった」
[lioness_tatie_otikomi]
[p]
#

#&f.name
（・・・ライオネス・・・？）[p]
#

[chara_hide_all]


[runisi]


[cera_tatie_touroku]
[cera_tatie_show_dancho]
[tris_tatie_touroku]
[tris_tatie_show_right]

#セレ
[stopse]
「すまない、[name]！遅くなって・・・」[p]
#

#&f.name
「あ、セレさん！大丈夫だよ」[p]
#

[cera_tatie_komari]
#&f.name
（トリスタンと・・・だったんだもんね・・・）[p]
#

[chara_hide_all time=50]
[config_true]
[kra_tatie_touroku]
[chara_show name="kra" storage="&f.kra_smile" top=1]

#クライスト
「やあ、トリスタン。『終わった』かい？」[p]
#

[chara_hide_all time=50]
[chara_show name="tris" storage="tris_tatie/tris_tere.png"  height="603" width="420" top=50]

#トリスタン
「きっ・・・貴様クライスト何を・・・！？」[p]
#

[chara_hide_all time=50]

[chara_show name="kra" storage="&f.kra_smile" top=1 time=50]
#クライスト
「あはは。そんな赤くならなくても。さあ、それじゃあそろそろ行こうか。船長もまちくたびれてるだろうしね」[p]
#

#&f.name
「それじゃ・・・セレさん、団長も・・・まだまだ異形が出るっていうから、気をつけてね」[p]
#

[chara_hide_all time=50]

[cera_tatie_show_dancho]
[cera_tatie_smile]
[config_false]
[dancho_tatie_show]

#団長
「ああ。[name]も、航海の無事を祈っている。ヴァエルを倒す手がかりが、得られればいいがな・・・」[p]
#
#&f.name
「・・・うん。ランスロットも・・・大丈夫だよね？」[p]
#


[chara_hide_all time=50]
[autosave]
[chara_show name="rans" storage="&f.rans_normal_warai" top=1 left=-70]
#ランスロット
「心配するな。
[chara_show name="kra" top=25 left=320]
[kra_tatie_show_right][rans_tatie_yokome]
・・・」[p]
#

;一瞬クライスト


#&f.name
「ランスロット？」[p]
#


[rans_tatie_normal_warai]
#ランスロット
「あ、ああ、すまない。じゃあ、気をつけていってこい」[p]
#


#&f.name
「はい！」[p]
#

[chara_hide name="rans"]

[kra_tatie_yareyare]
#クライスト
「・・・・・・・」[p]
#


[lioness_tatie_show_left]
#ライオネス
「？何笑ってんだ？お前」[p]
#


[kra_tatie_smile]
#クライスト
「いいや、別に」[p]
#

[lioness_tatie_akireru]
#ライオネス
「？」[p]
#
[chara_hide_all][chara_off]
;ｓｎ


[message_settei]
[anten]
[playbgm storage="raina_p_ontama.ogg"]
・・・こうして私たちは、見送るランスロット、セレさんや団長に
[r]手を振って、シャロームの町へと出発した。[l]
[r]（研究都市ウェスタ・・・どんなところなのかな・・・[l]
[r]ヴァエルを具現化する方法なんて・・・本当に見つかるのかな・・・）[l]
[r]不安はつきない。だけど今は、前に進むしかない。[l]
[r]故郷と同じ懐かしい潮風に吹かれながら、
[r]シャロームの港が見えてくる。[l]
[r]私は改めて決意を固め、腰の双剣をぐっと握り締めると
[r]仲間たちの背中を追った。[l]
[cm]
[fadeoutbgm time=3000]


[config_true]
[message_settei_ad]
[playbgm storage="sharomu_musmus.ogg"]
[bg storage="sharomusanbasi_tasogare.jpg"]

[playse storage="sanbasiasioto_onjin.ogg"]
#船長	
「おいクライスト・・・勘弁しろよ」[p]
#
[stopse]

[kra_tatie_touroku]
[chara_show name="kra" storage="&f.kra_mihiraki" top=1]
#クライスト	
「え？何？」[p]
#

#船長	
「冗談じゃない、女がいるなんて聞いてないぞ！」[p]
#

[kra_tatie_smile]
#クライスト	
「いいじゃないか、華があってさ」[p]
#


#船長	
「ばかかお前は。狼の群れのなかに羊放り込むようなもんだろうーが」[p]
#

[kra_tatie_yokome]
#クライスト	
「あー・・・そのこと。まあむっさい男しかいないからねえ、船だから逃げ場ないし」[p]
#

#船長	
「わかってんだったら、女は置いてけ」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「まあまあ、彼女一応クレール王国の騎士だし、身を守る術は持ってるし」[p]
#

#船長	
「そういう問題じゃねえよ、船員どもの気持ちも考えてやれって」[p]
#

[kra_tatie_yokome]
#クライスト	
「まあそれは・・・寄港先でなんとかしてもらうしか・・・」[p]
#

#船長	
「おい・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「少しの間だけだからさ、頼むよ船長。礼ははずむし、彼女には用心棒もついてる」[p]
#

#船長	
「用心棒・・・って、あのがたいのいい銀髪と竜か？」[p]
#

[kra_tatie_smile]
#クライスト	
「そうそう、それから俺もね」[p]
#

#船長	
「・・・。お前さんの恐ろしさは船員どももよくわかってるからな・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「一人欠けても良いなら、見せしめしようか？」[p]
#

#船長	
「大事な船員だ。そりゃ困る。・・・わかった。だがあの女にも言っとけ。船員に不用意に馴れ馴れしくすんなって」[p]
#

[kra_tatie_smile]
#クライスト	
「わかってるよ。彼女も真面目な子だし、危険なことはしないだろ」[p]
#

#船長	
「はあ・・・ったく、面倒臭いことになったもんだぜ・・・」[p]
#

[playse storage="sanbasiasioto_onjin.ogg"]
[kra_tatie_bisyou_youen]
#クライスト	
「ありがとう、恩に着るよ、船長」[p]
#

[chara_hide_all]
[stopse]
[playbgm storage="wave1_koukaonlabo.ogg"]
[anten]
[wait time=2000]



[jump storage="scenario_2/episode/epi_topic.ks"]

