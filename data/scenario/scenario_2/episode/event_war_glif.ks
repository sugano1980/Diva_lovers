[stopbgm]
[call storage="scenario_2/live2d_glif_macro.ks"]

[live2d_glif_touroku]

[live2d_fadeout time=5]
[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]




#グリフ	
「[name]さん！！！！」[p]
#

#&f.name	
「えっ」[p]
#

[live2d_motion name="glif_r" mtn="Body_normal_war"]
[live2d_motion name="glif_r" mtn="Body_normal_war"]
[live2d_motion name="glif_r" mtn="Arms_kamae_2"]
[glif_exp_ketui]
[live2d_fadein time=4700]

#グリフ	
「無事ですか！！」[p]
#

#&f.name	
「グリフ・・・」[p]
#

[glif_head_right_z]
[glif_exp_sinpai]
#グリフ	
「ああ、[glif_head_under_y][glif_exp_metoji]よかった・・・」[p]
#
[glif_arms_normal]
[glif_head_normal]
[glif_exp_sinpai]
#グリフ	
「我々が撤退してから、地方騎士団には甚大な被害が出てるって聞いて・・・」[p]
#

#&f.name	
「え・・・撤退・・・って・・・」[p]
#

[glif_head_left_x]
[glif_head_under_y]
[glif_exp_mehuse]
#グリフ	
「・・・」[p]
#

[glif_head_normal]
[glif_exp_normal]
#グリフ	
「詳しい話はあとです。今は、こいつをなんとかしましょう」[p]
#

#&f.name	
「う、うん！」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
*glif_battle_start

[eval exp="f.friend=5"]
[eval exp="f.monster_l_size=1"]
[eval exp="f.monster_l_size_2=1"]
[eval exp="f.monster_group_24=1"]
[eval exp="f.event_war_glif=1"]
;バトル
;異形戦闘
[battle_start]

*igyou_battle_end
[message_settei_ad]
[bg storage="sougen1_tatakai_tasogare.jpg" time=50]
[live2d_glif_touroku]
[live2d_fadeout time=5]
[live2d_show name="glif_r" y=-2.8 x=0.0 scale=6.2]

#&f.name	
（な、なんとか、勝てた・・・）
[glif_body_yoroi]
[live2d_motion name="glif_r" mtn="Body_normal_war"]
[p]
#


[live2d_fadein time=3700]
#グリフ	
「大丈夫ですか、[name]さん」[p]
#

#&f.name	
「う、うん・・・グリフ、その・・・撤退・・・って・・・」[p]
#

[glif_head_under_y]
[glif_exp_mousiwakenai]
#グリフ	
「・・・はい、異形の群れが向かってきた直後、ウェルム団長が作戦を変更されたんです」[p]
#

#&f.name	
「作戦の変更・・・？」[p]
#
[playbgm storage="chinkou_ontama.ogg"]
[glif_head_normal]
[glif_exp_normal]
#グリフ	
「地方騎士団を盾に、王宮騎士団は王都に戻り、残った異形に対応するようにと」[p]
#

#&f.name	
「そ、それって・・・」[p]
#

[glif_head_left_x]
[glif_head_right_x]
[glif_head_normal]
[glif_exp_mousiwakenai]
#グリフ	
「地方騎士団だけで、異形の対処など現実的に不可能です。だから、ランスロット隊長もそれを考慮して、作戦を立案したのに」[p]
#

[glif_head_under_y]
[glif_exp_metoji]
#グリフ	
「ウェルム団長がまさか、こんなことをなさるなんて・・・」[p]
#

[glif_exp_mehuse]
#グリフ	
「考えたくはないですが、まさか最初から・・・」[p]
#

#&f.name	
「ね、ねえでも、グリフは大丈夫なの？今ここにいるってことは、ウェルム団長の命令には・・・」[p]
#
[fadeoutbgm time=1500]
[glif_head_normal]
[glif_exp_normal]
#グリフ	
「ランスロット隊長の独断です。我々の隊だけでも、地方騎士団に協力するようにって」[p]
#

[glif_head_under_y]
[glif_head_right_x]
[glif_exp_ketui]
#グリフ	
「無理強いはされませんでしたが、ほとんどの隊員が隊長に従い、戻ってきています」[p]
#

#&f.name	
「ランスロットが・・・」[p]
#

[glif_head_normal]
[glif_exp_normal]
#グリフ	
「カーニバルの時もそうでしたが、隊長が、全ての責任をとるからって・・・」[p]
#

#&f.name	
（ランスロット・・・）[p]
#

[glif_head_under_y]
[glif_head_normal]
#グリフ	
「ともかく、あとは我々に任せてください。これ以上の被害を極力出すわけにいきません」[p]
#

#&f.name	
「グリフ・・・。ううん、ランスロットたちばかりに任せるわけにはいかないよ」[p]
#
[glif_exp_mihiraki]
#&f.name	
「私だって覚悟してここに来てる。他の地方騎士だって同じだよ」[p]
#

[glif_head_under_y]
[glif_exp_mousiwakenai]
#&f.name	
「体が動く限り・・・戦う」[p]
#

[glif_head_normal]
[glif_exp_normal]
#グリフ	
「[name]さん・・・」[p]
#

[glif_head_under_y]
[glif_head_normal]
#グリフ	
「わかりました。一緒に頑張りましょう。でも、無理はしないでください」[p]
#

[glif_head_under_y]
[glif_head_normal]
[glif_exp_komari]
#グリフ	
「あなたのことが・・・心配です」[p]
#

#&f.name	
（グリフ・・・）[p]
#

[glif_exp_metoji]
#&f.name	
「ありがとう、グリフ。行こう！！！」[p]
#

[glif_head_under_y]
[glif_head_normal]
[glif_exp_normal]
#グリフ	
「はい！！」[p]
#

	
;戦場ミニゲーム

[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
[anten]
;ミニゲーム
[fadeoutbgm time=3000]
[wait time=3000]
[bg storage="erumusougen_tasogare.jpg"]


[config_true]
[chara_show name="kra" storage=&f.kra_smile top=50]

	
#クライスト	
「ただいまー。[kra_tatie_mihiraki]あれ？」[p]
#

#&f.name	
「クライストさん！！　ルシアは・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「ああ、うん、倒したよ。もう大丈夫」[p]
#

#&f.name
	（すんごく軽いんだけど・・・ほんとに・・・？）[p]
#

[chara_move name="kra" left=-70]
[glif_tatie_touroku_war]
[chara_on][chara_show name="glif_war" width="570" height="743" top=10 left=300]
#グリフ	
「・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「あれ、王宮騎士。まだいたんだ？」[p]
#
[playbgm storage="shuuen_musmus.ogg"]
[glif_tatie_mehuse_war]
#&f.name	
「えっ」[p]
#

[kra_tatie_akireru]
#クライスト	
「命令違反じゃないの？早く帰ったら？」[p]
#

#&f.name	
「ど、どうしてクライストさん・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「ウェルム団長もさ、あれだけ怪しい匂いさせておいて、気付かない方がどうかしてるよね」[p]
#

[glif_tatie_normal_war]
#グリフ	
「あなたは知っていたんですか。知っていて・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「教えたところで、信じてくれた？」[p]
#

[glif_tatie_mehuse_war]
#グリフ	
「それは・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「そうだね、君はともかくとしても、上の人間が信じるはずないよね」[p]
#

[kra_tatie_mehuse]
#クライスト	
「ウェルム団長に限ってそんなことをするはずがない、って」[p]
#

[glif_tatie_normal_war]
#グリフ	
「・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「俺もさあ、面倒なことはごめんなんだよ。あそこでそんなこと言ったら、傭兵ごときが騎士団長を侮辱しただのなんだのっていうんだろ？」[p]
#

#&f.name
（クライストさん・・・）[p]
#

[kra_tatie_yokome]
#クライスト	
「基本的に関わりたくないんだよね、悪いけど」[p]
#

[glif_tatie_mehuse_war]
#グリフ	
「・・・っ・・・」[p]
#

[kra_tatie_akireru]
#クライスト	
「あ、ルシアが死んだって、団長に報告してこないと」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「それじゃあね」[p]
#
[config_true]
[chara_hide name="kra"]

#グリフ	
「っ・・・」[p]
#

#&f.name
（グリフ・・・）[p]
#
[chara_hide name="glif_war"]
[fadeoutbgm time=3000]
[anten]
[live2d_glif_touroku]
[live2d_fadeout time=5]
[live2d_glif_show]
[bg storage="erumusougen_tasogare.jpg"]
[glif_body_yoroi]
[glif_exp_normal_warai]
[live2d_fadein time=3000]
#グリフ	
「・・・すみません。そろそろ隊に戻らなくては・・・」[p]
#

#&f.name
「グリフ・・・その・・・ありがとう。また、助けてもらったね」[p]
#

[glif_exp_metoji]
[glif_head_right_x]
[glif_head_left_x]
[glif_head_normal]
[glif_exp_komari_warai]
#グリフ	
「そんなこと・・・気にしないでください。[glif_head_right_z][glif_exp_bisyo]あなたが無事で、よかった」
[p]
#
[glif_body_normal]
[glif_head_normal]
#&f.name
「グリフ・・・」[p]
#

[glif_head_under_y]
[glif_head_normal]
[glif_exp_normal_warai]
#グリフ	
「それじゃ」[p]
#

[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]

[jump storage="scenario_2/episode/epi_flag_check.ks"]







