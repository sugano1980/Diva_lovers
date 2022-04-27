;クライスト

[refresh_hanyou]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
#&f.name	

（確かあの・・・クライストさんて、物置部屋に入れられてる、んだよね・・・）[mil][l][k][cm][ka]
#

[live2d_load]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]


[bg storage="kisidanrouka_tasogare.jpg"]
#&f.name	

「物置部屋・・・ここ、かな？」[mil][l][k][cm][ka]
#

[playbgm storage="korehaittai_ontama.ogg"]

[tris_tatie_touroku]
[tris_tatie_show]

#トリスタン	

「おい、[name]」[mil][l][k][cm][ka]
#
#&f.name	

「ヒャ！な、なんですか？」[mil][l][k][cm][ka]
#
[tris_tatie_mayuhisome]
#トリスタン	

「ここに何か用なのか？」[mil][l][k][cm][ka]
#
#&f.name	

「えーとえーと・・・・・・はい」[mil][l][k][cm][ka]
#

[tris_tatie_metoji]
#トリスタン	

「なんのようだ」[mil][l][k][cm][ka]
#
#&f.name	

「あの・・・クライスト、さんに話があって・・・」[mil][l][k][cm][ka]
#

[tris_tatie_mayuhisome]
#トリスタン	

「なんの話だよ・・・」[mil][l][k][cm][ka]
#
#&f.name	

「・・・その」[mil][l][k][cm][ka]
#
#&f.name	

（カーニバルに誘うなんて・・・言えないよー）[mil][l][k][cm][ka]
#
#&f.name	

（ん？でもそもそもこの状態でクライストさん・・・行けるのかな・・・）[mil][l][k][cm][ka]
#
#&f.name	

（・・・あんまり考えてなかった・・・）[mil][l][k][cm][ka]
#


[tris_tatie_ryoukai]
#トリスタン	

「まあ・・・話だけならいいんじゃないか。ただし、何かあったらすぐ呼べよ。見かけによらず危ないやつだからな！」[mil][l][k][cm][ka]
#
#&f.name	

「あ・・・ありがとう・・・」[mil][l][k][cm][ka]
#
[chara_hide name="tris"]
[fadeoutbgm time=1000]
[bg storage="hune_souko_tasogare.jpg"]

[tris_tatie_show]
#トリスタン	

「おい、[name]がお前に話ってよ」[mil][l][k][cm][ka]
#

[tris_tatie_warai]
#トリスタン	

「お、今日は大人しくしてたな。よしよし」[mil][l][k][cm][ka]
#

[chara_config pos_mode=false]
[chara_move name="tris" left=400]
[kra_tatie_touroku]
[kra_tatie_show]
[chara_move name="kra" left=-70]

[kra_tatie_akireru]
#クライスト	

「よしよしって・・・馬みたいな扱いだなあ」[mil][l][k][cm][ka]
#

[tris_tatie_ikari]
#トリスタン	

「お前ごとき、それくらいの扱いで十分だ」[mil][l][k][cm][ka]
#

[kra_tatie_normal]
#クライスト	

「はあ・・・」[mil][l][k][cm][ka]
#

[tris_tatie_ryoukai]
#トリスタン	

「俺は外にいる。終わったら声かけてくれ」[mil][l][k][cm][ka]
#


#&f.name	

「わ、わかりました・・・」[mil][l][k][cm][ka]
#


[chara_hide name="tris"]
[chara_hide name="kra"]
[live2d_on]	
[live2d_kra_show_sekkin_2]
[aho_face_bisyou_youen]
[aho_head_right_z]
#クライスト	

「やあ、何？君からきてくれるなんて嬉しいな」[mil][l][k][cm][ka]
#
#&f.name	

（ち、近い・・・）[mil][l][k][cm][ka]
#
#&f.name	

「も、もう少し、離れて・・・」[mil][l][k][cm][ka]
#

[aho_face_mihiraki]
[aho_head_normal]
#クライスト	

「どうして？嫌？」[mil][l][k][cm][ka]
#
#&f.name	

「い、嫌・・・って言うか・・・」[mil][l][k][cm][ka]
#
[aho_face_bisyou_youen]

#クライスト	

「ごめん、恥ずかしいのかな？可愛いね」[mil][l][k][cm][ka]
#

[live2d_fadeout time=1000]
[playse storage="huku_koukaonlabo.ogg"]
[live2d_kra_mod_sekkin]
[live2d_fadein time=1000]
#クライスト	

「それで、何かな」[mil][l][k][cm][ka]
#

[aho_arms_udekumi]
[aho_head_left_z]

#&f.name	

「え、ええーと・・・今週末、カーニバルってお祭りがあるんだけど・・・」[mil][l][k][cm][ka]
#

[aho_head_normal]
[aho_face_normal_majime]
[aho_eyes_right]
[aho_head_right_x]
[aho_body_right_z]

#クライスト	

「ああ、うん。知ってるよ」[mil][l][k][cm][ka]
#

[aho_head_normal]
[aho_body_normal]
[aho_eyes_normal]
#&f.name	

「もし、その、よかったら、一緒に行ってくれないかな・・・」[mil][l][k][cm][ka]
#

[aho_head_normal]
#クライスト	

「・・・・・・」[mil][l][k][cm][ka]
#
#&f.name	

（えっ・・・黙られた・・・ダメなのかな）[mil][l][k][cm][ka]
#
#クライスト	

「それって・・・もしかしてデートに誘ってるの？」[mil][l][k][cm][ka]
#
[playbgm storage="odai07_ontama.ogg"]
#&f.name	

「えっ・・・その・・・」[mil][l][k][cm][ka]
#

[aho_head_right_x]
[aho_head_above_y]
[aho_eyes_right_above]
#クライスト	

「ふーん・・・」[mil][l][k][cm][ka]
#

[aho_face_metoji]
[aho_mod_idle_kokyu_only]
[aho_head_normal]
[aho_head_under_y]
#&f.name	

（デート？デートってわけじゃ・・・でもこれって結局デート・・・なのかな・・・）[mil][l][k][cm][ka]
#
#&f.name	

「あ、あの、ダメかな・・・」[mil][l][k][cm][ka]
#


[aho_face_normal]
[aho_mod_idle_normal]
[aho_head_normal]
[aho_eyes_right]
#クライスト	

「うーん・・・俺は喜んで行きたいんだけど・・・いかんせん、こんな身の上だからねえ」[mil][l][k][cm][ka]
#
#&f.name	

「あ・・・」[mil][l][k][cm][ka]
#
#&f.name	

（そっか・・・）[mil][l][k][cm][ka]
#

[aho_head_under_y]
[aho_face_metoji]
[aho_eyes_normal]
[aho_face_normal]
[aho_head_normal]
#クライスト	

「うん・・・ちょっと、難しいかもね」[mil][l][k][cm][ka]
#
#&f.name	

「・・・そ、そうだよ、ね。ごめんなさい、私何も考えてなかった・・・」[mil][l][k][cm][ka]
#

[aho_arms_normal]
[aho_head_right_z]
[aho_eyes_right]
[w]
#クライスト	

「・・・あのさ」[mil][l][k][cm][ka]
#
#&f.name	

「え？」[mil][l][k][cm][ka]
#

[aho_eyes_normal]
[aho_head_normal]
#クライスト	

「俺と、そんなにお祭りに行きたい？」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・」[mil][l][k][cm][ka]
#


[aho_face_mehuse]
[aho_head_left_x]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
#クライスト	

「どうしても行きたいって君が言うのなら・・・頑張ってみなくもないんだけどな」[mil][l][k][cm][ka]
#
#&f.name	

（どう言う・・・こと？）[mil][l][k][cm][ka]
#

[aho_head_normal]
[aho_face_normal]
[aho_mod_idle_normal]
#クライスト	

「ちょっとだけ頑張ったら、多分行けるかも」[mil][l][k][cm][ka]
#
#&f.name	

「行けるの？」[mil][l][k][cm][ka]
#

[aho_head_under_y]
[aho_face_metoji]
[aho_head_normal]
[aho_face_normal]
#クライスト	

「うん。行きたい？」[mil][l][k][cm][ka]
#
#&f.name	

「そ、そりゃあ・・・」[mil][l][k][cm][ka]
#
#&f.name	

（そのためにわざわざ来たわけだし・・・）[mil][l][k][cm][ka]
#


[aho_head_left_x]
[aho_head_left_z]
[aho_eyes_left]

#クライスト	

「それならさ・・・頑張る代わりに・・・俺のお願い聞いてくれる？」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・お願いって・・・」[mil][l][k][cm][ka]
#

[aho_head_normal]
[aho_eyes_normal]
[live2d_kra_mod_sekkin_2]

[playse storage="huku_koukaonlabo.ogg"]
;クラ接近
#&f.name	

（えっ・・・）[mil][l][k][cm][ka]
#

[aho_head_left_z]
[aho_face_bisyou_youen]
#クライスト	

「・・・キス、してほしいな」[mil][l][k][cm][ka]
#
#&f.name	

「っっっ・・・ちょ、え・・・ええっ！！？？」[mil][l][k][cm][ka]
#

[aho_head_normal]
[aho_face_komari]
#クライスト	

「ダメ？」[mil][l][k][cm][ka]
#

[aho_face_yokome_majime]
[aho_face_bisyou_youen]
[aho_head_right_z]
[aho_body_right_z]
#&f.name	

（これって・・・しないとお祭りには・・・でも・・・ああ・・・）[mil][l][k][cm][ka]
#
[fadeoutbgm time=1000]
;選択肢
;キスする
;そこまでして行きたくない
[live2d_delete_all][live2d_off]
[jump storage="scenario_2/sentaku.ks" target=*choice997]

*kiss_no
#&f.name	

「べ・・・別にそこまでして・・・行きたいわけじゃ・・・」[mil][l][k][cm][ka]
#

[live2d_kra_show_sekkin_2]
[aho_head_normal]
[aho_body_normal]
[aho_face_mihiraki]
#クライスト	

「あれ？そうなの？なんだ、残念」[mil][l][k][cm][ka]
#
#&f.name	

「っ・・・」[mil][l][k][cm][ka]
#

[aho_face_bisyou_youen]
#クライスト	

「・・・俺は行きたかったけどね」[mil][l][k][cm][ka]
#
#&f.name	

「そ、それなら、キスなんて・・・」[mil][l][k][cm][ka]
#

[aho_face_mihiraki]
[aho_face_normal]
[aho_eyes_right]
#クライスト	

「それはそれ、だってしたかったから」[mil][l][k][cm][ka]
#
#&f.name	

（・・・この人・・・）[mil][l][k][cm][ka]
#

[aho_eyes_normal]
[aho_head_right_z]
#クライスト	

「・・・ごめんね」[mil][l][k][cm][ka]
#
#&f.name	

「・・・・・・」[mil][l][k][cm][ka]
#

[playse storage="nokku_tairakomori.ogg"]
#トリスタン	

「おい、まだ終わらないのか？クライスト、[name]に変なことしてないだろうな！！」[mil][l][k][cm][ka]
#

[aho_face_yokome_majime]
#クライスト	

「ああ、時間切れみたいだね。それじゃ」[mil][l][k][cm][ka]
#
;暗転

[live2d_kra_kakusu]

[jump target=*end]

*kiss
;キスする
#&f.name	

「・・・わ、わかりました・・・」[mil][l][k][cm][ka]
#

[live2d_kra_show_sekkin_2]
[aho_body_under_y]
[aho_eyes_normal]
[aho_eyes_above]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト	

「いいんだ？」[mil][l][k][cm][ka]
#
#&f.name	

「だって・・・行きたいし・・・」[mil][l][k][cm][ka]
#

[aho_eyes_normal]
[aho_face_mehuse]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
#クライスト	

「・・・そっか」[mil][l][k][cm][ka]
#
#&f.name	

（・・・え？）[mil][l][k][cm][ka]
#
[aho_body_normal]
[aho_head_above_y]
[aho_head_left_x]
[aho_body_left_z]
[aho_face_normal_majime]
[aho_eyes_left_above]
#クライスト	

「じゃあとりあえず、お伺い立ててみようか」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・クライスト、さん・・・その・・・」[mil][l][k][cm][ka]
#

[aho_body_normal]
[aho_head_normal]
[aho_eyes_normal]
#クライスト	

「ん？」[mil][l][k][cm][ka]
#
#&f.name	

「き、キスは・・・」[mil][l][k][cm][ka]
#

[aho_face_mehuse_warai]
[aho_body_under_y]
[aho_head_under_y]
#クライスト	

「・・・それは、今じゃなくていいよ。大事に取っておいて」[mil][l][k][cm][ka]
#
#&f.name	

（？？？えーと・・・？）[mil][l][k][cm][ka]
#

[live2d_fadeout  time=1000]
[live2d_off]
;暗転

[anten]
[bg storage="kisidanrouka_tasogare.jpg"]

[playbgm storage="korehaittai_ontama.ogg"]
[chara_config pos_mode=true]
[tris_tatie_show]
[chara_config pos_mode=false]
[chara_move name="tris" left=400]
[kra_tatie_show]
[chara_move name="kra" left=-70]


[tris_tatie_mihiraki_0]
#トリスタン	

「なああああああにいいい！？祭りだああ！！？？」[mil][l][k][cm][ka]
#
[tris_tatie_ikari_kutiake]
#トリスタン	

「ふざけるな貴様ああ！！よりにもよって女の子とウキウキ★デートだなんて許すわけがないだろう！！」[mil][l][k][cm][ka]
#

[anim name=tris top="-=50" time=100]
[anim name=tris top="+=50" time=100]
[anim name=tris top="-=50" time=100]
[anim name=tris top="+=50" time=100]
#&f.name	

（ウキウキデート・・・なんて誰も言ってないけど・・・）[mil][l][k][cm][ka]
#

#トリスタン	

「貴様は自分の身の上がわかっていってるのか？殺人罪だぞ殺人罪！！」[mil][l][k][cm][ka]
#

[kra_tatie_yokome]
#クライスト	

「わかってるけどさ、一日くらいいいだろ？」[mil][l][k][cm][ka]
#

[tris_tatie_ikari]
#トリスタン	

「半日だってよくないわ！！」[mil][l][k][cm][ka]
#

[kra_tatie_komari]
#クライスト	

「・・・だって。・・・ごめんね」[mil][l][k][cm][ka]
#
#&f.name	

「う、ううん・・・いいよ、大丈夫」[mil][l][k][cm][ka]
#
#&f.name	

（・・・そっか、やっぱりそうだよね）[mil][l][k][cm][ka]
#

[tris_tatie_ryoukai]
#トリスタン	

「おいちょっと待て。お前が一緒に行きたい相手とはまさか・・・[name]なのか？」[mil][l][k][cm][ka]
#
#&f.name	

「あっ・・・えっと」[mil][l][k][cm][ka]
#

[kra_tatie_normal]
#クライスト	

「うん。そうだけど」[mil][l][k][cm][ka]
#

[tris_tatie_mayuhisome]
#トリスタン	

「お前・・・そのうちライオネスに叩っ斬られるぞ？」[mil][l][k][cm][ka]
#
#&f.name	

（えっ・・・なんでだろ）[mil][l][k][cm][ka]
#

[kra_tatie_smile]
#クライスト	

「ええー？そりゃあ怖いね、あはは」[mil][l][k][cm][ka]
#
#&f.name	

（そして動じてない・・・）[mil][l][k][cm][ka]
#

[kra_tatie_komari_warai]
#クライスト	

「それなら俺は、仕方ないから大人しくしてるよ。あーあ、楽しそうなのになあ」[mil][l][k][cm][ka]
#

[tris_tatie_ikari_kutiake]
#トリスタン	

「馬鹿野郎！お前には一生物置部屋がお似合いだ！」[mil][l][k][cm][ka]
#
#&f.name	

（うーん・・・出かけるなんてやっぱり無理だよね・・・）[mil][l][k][cm][ka]
#

[tris_tatie_ryoukai]
#トリスタン	

「[name]お前もお前だ。ライオネスには黙っといてやるが・・・二度とおかしなことは考えるものじゃない」[mil][l][k][cm][ka]
#
#&f.name	

「は・・・はあ・・・」[mil][l][k][cm][ka]
#

[kra_tatie_metoji]
#クライスト	

「やれやれ・・・手厳しいね」[mil][l][k][cm][ka]
#

[tris_tatie_ikari_kutiake]
#トリスタン	

「わかったらさっさと物置に戻れ！樽の上で寝てろ！！」[mil][l][k][cm][ka]
#

[kra_tatie_yareyare]
#クライスト	

「あー、わかったわかったって。
[kra_tatie_mihiraki]
あっ」[mil][l][k][cm][ka]
#
[anim name=kra left="+=300" time=300]
[tris_tatie_mihiraki]
[chara_kakusu]
[bg storage="black.png" time=10]
[playse storage="butukaru_onjin.ogg"]
[stopbgm]

#トリスタン	

「ドワっ！！な、何をする！！」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・きゃっ！！」[mil][l][k][cm][ka]
#

[bg storage="kisidanrouka_tasogare.jpg" time=10]
[live2d_on]
[live2d_mod name="aho" y=-4.0 scale=8.2]
[live2d_fadein time=10]

[aho_face_bisyou_youen]
#&f.name	

（く、クライストさん！？）[mil][l][k][cm][ka]
#
[aho_body_right_z]
[aho_head_right_z]
[aho_mod_idle_kokyu_only]
#クライスト	

（当日、王都の門の前で待ち合わせしよう？）[mil][l][k][cm][ka]
#
#&f.name	

「え・・・」[mil][l][k][cm][ka]
#

[aho_eyes_left_close]
;クラウィンク

[live2d_kra_kakusu]
[live2d_off]
[chara_config pos_mode=true]
[tris_tatie_show]
[chara_config pos_mode=false]
[chara_move name="tris" left=400]
[kra_tatie_show]
[chara_move name="kra" left=-70]
[kra_tatie_smile]

#クライスト	

「あーごめんごめん足が滑っちゃった」[mil][l][k][cm][ka]
#

[tris_tatie_ikari_kutiake]
#トリスタン	

「気を付けろ！！ったく」[mil][l][k][cm][ka]
#

[kra_tatie_bisyou_youen]
#クライスト	

「じゃあね」[mil][l][k][cm][ka]
#

;会話追加
[eval exp="tf.tuika_num = 2"]
[eval exp="tf.kaiwa_num  = 5"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[chara_config pos_mode=true]
[chara_kakusu]
	
;#&f.nameの部屋
[bg storage="irainheya_yoru_tasogare.jpg"]
#&f.name	

（王都の門の前で待ち合わせ・・・って・・・クライストさん、どうやって出てくるんだろう・・・？）[mil][l][k][cm][ka]
#
[chara_config pos_mode=true]
*end
[jump storage="scenario_2/episode/epi2.ks" target=*main_event_8]


