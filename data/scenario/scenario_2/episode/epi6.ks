;祝賀会当日		
;衣装を選ぶ　仕立て屋に頼んでおくと、前日にドレスが届く	

;[showmenubutton]
[button_hyouji]
[message_settei_ad]	
[bg storage="irainheya_tasogare.jpg"]


#&f.name	
「う、ううー・・・緊張するなあ」[p]
#

		
#&f.name	
（うーん・・・ドレスはスカスカして変な感じだし、靴はあ、歩きにくい・・・）[p]
#

		
#&f.name	
「とにかく、とにかく転んだりとか、ヘマしないようにしないとね・・・」[p]
#

		
			
;SE		
[playse storage="nokku_tairakomori.ogg"]


#ライオネス	
「おい、そろそろ行くぞ。準備できてるか？」[p]
#

		
#&f.name	
「は、はい！！」[p]
#

		
#&f.name	
（よし、なんとか乗り切るぞ！）[p]
#

[live2d_lion2_touroku]
[live2d_fadeout time=50]
[live2d_lion2_show]
		
[bg storage="kisidanrouka_tasogare.jpg"]		


#&f.name	
「お、お待たせ・・・」[p]
#

[live2d_fadein time=1000]
[lioness2_arms_udekumi]		
#ライオネス	
「おせえよ。・・・でもしゃあねえか・・・時間かかるもんなあその格好じゃ」[p]
#

		
#&f.name	
「ライオネス・・・いつもなら怒るのに、優しいね？」[p]
#

[lioness2_arms_normal]
[lioness2_face_odoroki]		
#ライオネス	
「バッ・・・
[lioness2_arms_poripori]
[lioness2_face_otikomi]
いやその・・・女性は支度に時間がかかるって、言われたんだよ・・・」[p]
#

		
#&f.name	
「あ、講師の先生に？？」[p]
#



[lioness2_arms_normal]
[lioness2_face_mehuse_dai]
#ライオネス	
「一緒に出るってことは、いわゆるその、エスコート役になるからって扱かれた・・・」[p]
#

		
#&f.name	
「お、お疲れ様・・・大変だったんだね・・・」[p]
#


[lioness2_head_right_x]
[lioness2_head_left_x]
[lioness2_face_yareyare]		
#ライオネス	
「ああ・・・もうたくさんだ。今日でやっと解放される・・・」[p]
#

		
#&f.name	
（本当に大変だったんだなあ・・・）[p]
#				
;#ライオネスのドレスコメント
[if exp="f.dress_pure==1"]
[live2d_fadeout time=1000]
[live2d_lion2_mod_sekkin]
[live2d_fadein time=1000]

[lioness2_head_under_y]
[lioness2_head_right_x]
[lioness2_head_left_x]
[lioness2_eyes_under]
#ライオネス	
「その・・・」[p]
#
#&f.name
「ん？」[p]
#
[lioness2_head_normal]
[lioness2_head_left_x]
[lioness2_head_above_y]
[lioness2_eyes_left]
#ライオネス	
「そういうの、なんかいいな・・・なんつうか俺は・・・デザインとかわかんねえけど」[p]
#

[lioness2_head_normal]
[lioness2_head_right_x]
[lioness2_eyes_right]

#ライオネス	
「お前が着てると・・・その」[p]
#
#&f.name
（ドレスのことかな？珍しい・・・）[p]
#
#&f.name
「ありがとう、ライオネス」[p]
#

[lioness2_head_normal]
[lioness2_eyes_normal]
[lioness2_face_odoroki]

#ライオネス	
「お、おう・・・」[p]
#
[lioness2_head_right_z]
[lioness2_face_warai]



[endif]

[live2d_fadeout time=1000]	
;王宮	
[bg storage="oukyuu_yoru_tasogare.jpg"]
[playse storage="zawameki_situnai.ogg"]
[playbgm storage="suijou_cra.ogg"]	

[live2d_mod name="lioness2" y=-1.5 x=0.0 scale=3.9]

#&f.name	
「うわあ・・・すごい人だね！！」[p]
#

[lioness2_arms_udekumi]
[live2d_fadein time=1000]		
#ライオネス	
「みっともねえからあんまキョロキョロすんじゃねえぞ」[p]
#

		
#&f.name	
（よ、よし、おしとやかにおしとやかに・・・）[p]
#

		
#&f.name	
「それにしても・・・貴族の女の人ってすごく綺麗な人多いよね・・・」[p]
#

[lioness2_arms_normal]
[lioness2_arms_kosinite_right]
		
#ライオネス	
「そりゃあそうだろ。見た目繕うのに必死だ」[p]
#

		
#&f.name	
（ライオネス、その言い方は・・・）[p]
#

[lioness2_arms_normal]
		
#ライオネス	
「とにかく、だ。
[lioness2_arms_kosinite_left]
ほれ」[p]
#

		
#&f.name	
「え？腕？何？」[p]
#

[lioness2_face_chottoikari]
		
#ライオネス	
「ばかお前・・・エスコートだぞ、
[lioness2_head_above_y]
[lioness2_head_right_x]
[lioness2_eyes_right_above]
ほら」[p]
#
	
#&f.name	
「あっ、そうだった！」[p]
#

[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_2]		
			
;SEL　えーと・・・#ライオネスの腕に		

	
*hand
[lioness2_arms_normal]
[lioness2_arms_kosinite_left]
[live2d_lion2_mod_sekkin]
[live2d_fadein time=500]
[playse storage="huku_koukaonlabo.ogg"]
[camera zoom="1.2" time="1000" x="-100" y="-0.2"]
[lioness2_face_metoji]
#ライオネス	
「・・・まあいいか、
[lioness2_eyes_left]
[lioness2_face_normal]
行くぞ」[p]
#

		
#&f.name	
（んん？ちょっと違ったかな？でも、大丈夫そうだね）[p]
#

		
#&f.name	
「はい！」[p]
#

		
#&f.name	
（グレッグ団長やみんなのためにも、しっかりちゃんと振舞わないとね）[p]
#

[jump target=*sel_end]	
			
*daki	

[lioness2_arms_normal]
[lioness2_arms_kosinite_left]
[live2d_lion2_mod_sekkin]
[live2d_fadein time=500]
[playse storage="dakituku_onjin.ogg"]
[camera zoom="1.5" time="1000" x="-100" y="1.5"]
[lioness2_face_odoroki]
[lioness2_eyes_left_under]

#ライオネス	
「っ・・・！？お、お前何やって・・・」[p]
#

[lioness2_face_odoroki_sekimen]
[lion]
[koukando_up]	
#&f.name	
「へ！？あれ？違った？だ、ダメかな？」[p]
#

[lioness2_head_right_x]
[lioness2_eyes_right]
[lioness2_face_tere]		
#ライオネス	
「いやその・・・・・・・・・
[font size="10"]胸が・・・・・・・・・」[p]
#

		
#&f.name	
[resetfont]「？？？」[p]
#


[lioness2_head_under_y]
[lioness2_face_metoji]	
#ライオネス	
「と、とにかくもうちょっと・・・離れてもいい」[p]
#

[reset_camera]
[playse storage="huku_koukaonlabo.ogg"]		
#&f.name	
「あ、ご、ごめんなさい・・・」[p]
#

		
#&f.name	
（距離が近すぎたんだね・・・）[p]
#

[jump target=*sel_end]			
			
;軽く腕を絡める
*arm

[lioness2_arms_normal]
[lioness2_arms_kosinite_left]
[live2d_lion2_mod_sekkin]
[live2d_fadein time=500]
[playse storage="huku_koukaonlabo.ogg"]
[camera zoom="1.2" time="1000" x="-100" y="-0.2"]
[lioness2_eyes_left]
[lioness2_eyes_normal]
[lioness2_head_under_y]
[lioness2_head_normal]

#ライオネス	
「よし、行くぞ」[p]
#

		
#&f.name	
（うん！バッチリ！！）[p]
#

;魅力UP	
[playse storage="item_status_up_onjin.ogg"]	
[eval exp="f.irain_charm=f.irain_charm+10"]
魅力が１０アップ！[p]


#&f.name	
（グレッグ団長やみんなのためにも、しっかりちゃんと振舞わないとね）[p]
#

*sel_end
[live2d_fadeout time=1000]	
[live2d_hide name="lioness2"]
[anten]
[reset_camera]
[stopbgm]


[live2d_new name="aho_sei" model_id="aho_sei" lip=true jname="クライスト"]
[live2d_kra2_show]
[live2d_new name="lioness2" model_id="lioness2" lip=true jname="ライオネス"]
;王宮　ホール		
[bg storage="oukyuu_hall_tasogare.jpg"]

[stopse]
			
#国王陛下	
「我がクレール王国を守るため、勇敢に戦ってくれた誇り高き騎士たちよ、今ここに改めて礼を述べたい」[p]
#

		
#国王陛下	
「そなたたちの多大なる勇気と王国を愛する心が、邪悪なる影を打ち払い、王都は再び輝きを取り戻した」[p]
#

		
#国王陛下	
「ことに・・・傭兵という身でありながら、たった一人でエルムナード女王ルシアの脅威を打ち破り、戦いを終結に導いた彼に、クレール国王として、特別な褒賞を贈りたい」[p]
#
[playse storage="zawameki_situnai.ogg"]





		
#国王陛下	
「クライスト、こちらへ」[p]
#

[live2d_fadein time=1000]	
[aho_sei_face_mihiraki]	
#クライスト	
「えっ、俺？」[p]
#

[live2d_fadeout time=50]
[live2d_hide name="aho_sei"]


[live2d_lion2_show]
[lioness2_arms_udekumi]
[live2d_fadein time=1000]

#ライオネス	
「あいつ・・・ちゃんと礼儀とか知ってんだろうな・・・」[p]
#

		
#&f.name	
（クライストさん・・・大丈夫かな）[p]
#

[live2d_hide name="lioness2"]	
[live2d_fadeout time=50]


[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
#ランスロット	
「・・・」[p]
#

[werumu_tatie_rei_touroku]
[werumu_tatie_rei_show]		
#ウェルム	
「・・・ふん」[p]
#

[stopse]	

[chara_hide_all]

[live2d_kra2_show]
[live2d_fadein time=1000]
#クライスト	
「・・・陛下」[p]
#

		
#国王陛下	
「さあ、こちらへ」[p]
#


[aho_sei_face_mehuse]	
#クライスト	
「・・・」[p]
#

[live2d_fadeout time=1000]
	
[playse storage="walkhibiku_onjin.ogg"]	
;SE	

[live2d_mod name="aho_sei" y=-1.9 x=0.0 scale=4.5]
[live2d_fadein time=1000]

[aho_sei_face_normal_majime]
#クライスト	
「俺は・・・本当にいいんですか？」[p]
#

[stopse]	
#国王陛下	
「生憎、過去は振り返らないタチなのでな。そしてわしには、今現在のそなたの姿しか見えんのだ」[p]
#

[playbgm storage="odai07_ontama.ogg"]
[aho_sei_head_under_y]
[aho_sei_face_mehuse]
#クライスト	
「・・・陛下・・・」[p]
#

		
#国王陛下	
「無論、皆がそうではない。中には以前の所業を許せぬものもいるだろう。だが・・・わしは、この先を信じたい」[p]
#

		
#国王陛下	
「我々は・・・前に進むことしかできないのだから」[p]
#

[aho_sei_face_normal_majime]
[aho_sei_face_metoji_warai]		
#クライスト	
「・・・ありがとう、ございます・・・」[p]
#

[live2d_hide name="aho_sei"]


[live2d_lion2_show]	
[lioness2_arms_udekumi]
#ライオネス	
「・・・なんかこそこそ話してんな・・・」[p]
#

		
#&f.name	
「うん・・・どうしたんだろう」[p]
#

		
#&f.name	
（クライストさん・・・国王陛下と何話して・・・）[p]
#
[playse storage="zawameki_situnai.ogg"]
		
#国王陛下	
「彼の業績を讃え、今ここでクライストに、伯爵の爵位を与える！！」[p]
#

[lioness2_arms_normal]
[lioness2_face_odoroki]		
#ライオネス	
「なんだって・・・」[p]
#

		
#&f.name	
「ら、ライオネス・・・伯爵って？」[p]
#

[lioness2_face_mehuse_dai]		
#ライオネス	
「いわゆる・・・貴族の身分だ。ちなみに俺らよりも身分は上だ」[p]
#

		
#&f.name	
「えええ・・・」[p]
#

[live2d_fadeout time=1000]


[yuria_tatie_touroku]
[yuria_sei_tatie_show]
		
#ユリア	
「・・・・・・」[p]
#

[chara_hide name="yuria"]

[rans_tatie_rei_show]	
[rans_tatie_rei_mehuse]	
#ランスロット	
「陛下・・・」[p]
#


[werumu_tatie_rei_touroku]
[werumu_tatie_rei_show]	
#ウェルム	
「・・・・・・」[p]
#

[chara_hide_all]

[live2d_lion2_show]
[live2d_fadein time=1000]
		
#&f.name	
「あの・・・身分って、もらうものなの？」[p]
#

[lioness2_arms_udekumi]
[lioness2_face_mehuse_dai]
		
#ライオネス	
「なんだ・・・特例って言って、国にすげえ貢献すると陛下から贈られることがあるらしい」[p]
#


[lioness2_face_normal]
[lioness2_head_left_x]
[lioness2_eyes_left]		
#ライオネス	
「俺も見たのは、初めてだけどな・・・ルシアを倒したし、傷ついて瀕死だった奴らまで助けた。無理もないっちゃそうだが・・・」[p]
#
[lioness2_arms_normal]
[lioness2_eyes_normal]
[lioness2_head_normal]	
#&f.name	
「えっと・・・具体的に何か変わるのかな？」[p]
#

[lioness2_arms_kosinite_left]	
#ライオネス	
「とりあえず・・・あの爵位なら死ぬまで食うには困らないんじゃねえか？
[lioness2_head_right_x]
[lioness2_head_left_x]
あと税金の免除とか・・・王族ほどじゃねえが、結構な地位だぜ」[p]
#

[lioness2_head_normal]		
#&f.name	
「はあ・・・すごいなあ」[p]
#

[live2d_hide name="lioness2"]

[live2d_show name="aho_sei" y=-1.9 x=0.0 scale=4.5]

[aho_sei_head_under_y]
[aho_sei_face_metoji_warai]
#クライスト	
「・・・ありがとうございます。陛下・・・謹んでお受けしたいところですが・・・」[p]
#

[aho_sei_head_normal]
[aho_sei_arms_temae]		

#クライスト	
「今は・・・お気持ちだけ頂いて、その時が来るまで・・・保留にして頂いても構いませんか」[p]
#

		
#国王陛下	
「なんと・・・何か理由があるのか？」[p]
#

[aho_sei_arms_normal]
[aho_sei_face_mehuse]		
#クライスト	
「まだ・・・俺には・・・やらなければならないことがありますので・・・全てが片付いたら、その時には」[p]
#

		
#国王陛下	
「・・・わかった。ではお前のいう通りにしよう。時がきたらいつでも、ここを訪れるがいい」[p]
#



[aho_sei_arms_temae]	
[aho_sei_face_metoji]
#クライスト	
「もったいなきお言葉。その時には、必ず」[p]
#


[live2d_hide name="aho_sei"]	
#&f.name	
（今・・・チラッと聞こえた・・・『やらなければならないこと』って・・・）[p]
#

[fadeoutbgm time=3000]	

[live2d_lion2_show]
[lioness2_arms_udekumi]
#ライオネス	
「・・・ヴァエルの件が片付いてねえからか・・・」[p]
#

		
#&f.name	
「ライオネス、聞こえてたの？」[p]
#

[lioness2_face_mehuse_dai]		
#ライオネス	
「少しな。実のところあれからなんの進展もねえんだ。俺もトリスタンも、色々と調べてはいるんだが・・・」[p]
#

		
#&f.name	
「そうなんだ・・・」[p]
#

		
#&f.name	
（無理もないのかな・・・だって、魔剣のことって、本当にあるとも思われてなかったって話だったし・・・）[p]
#
[live2d_hide name="lioness2"]
		
#国王陛下	
「・・・待っているぞ、クライスト」[p]
#

[fadeoutbgm time=1000]	

[live2d_show name="aho_sei" y=-1.9 x=0.0 scale=4.5]
[aho_sei_head_under_y]
[aho_sei_head_normal]
#クライスト	
「・・・はい」[p]
#
[aho_sei_arms_normal]
[live2d_hide name="aho_sei"]

	
#国王陛下	
「・・・さあて、クレール王国の勇敢なる騎士の皆よ、戦いの労をねぎらい、ふんだんの馳走と、余興を用意してある！」[p]
#


		
#国王陛下	
「今宵は存分に楽しむが良い！！」[p]
#

[playse storage="paredo_kansei_3.ogg"]
[playbgm storage="shouri_ontama.ogg"]		
;歓声	

[live2d_lion2_show]
[lioness2_head_under_y]
[lioness2_head_normal]
[lioness2_face_normal_warai]
[lioness2_arms_normal]
#ライオネス	
「よーし、ようやく飯だな！」[p]
#


[lioness2_head_right_x]
[lioness2_head_normal]
[lioness2_head_left_x]		
#&f.name	
「ライオネスってば・・・」[p]
#
[lioness2_head_normal]
[lioness2_head_right_x]
[lioness2_head_normal]
[lioness2_head_left_x]			
#&f.name	
（でも、すごいなあ、こんなご馳走見たことない・・・それもこんなにたくさん・・・）[p]
#

[lioness2_head_normal]
[lioness2_head_right_x]
[lioness2_head_normal]
[lioness2_head_left_x]	

#&f.name	
（ライオネスはすでに食べに行きたそうだけど、私は・・・何しよう？）[p]
#

[live2d_hide name="lioness2"]


[fadeoutbgm time=3000]
*act_sel
[bg storage="oukyuu_hall_tasogare.jpg"]
[if exp="f.shukuga_aisatu==1&&f.shukuga_gotisou==1&&f.shukuga_bal==1"]
[eval exp="f.shukuga_bal=0"]
[eval exp="f.shukuga_gotisou=0"]
[eval exp="f.shukuga_aisatu=0"]
[jump target=*shukuga_second_half]
[endif]

[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_3]		

*aisatu
;テストコード----

;[eval exp="f.glif_battle_kizuna=1"]	

;[eval exp="f.event_sub_14_sumi[2]=1"]	

;[eval exp="f.event_war_kra_sumi=1"]	

;[eval exp="f.event_war_rans_sumi=1"]

;[eval exp="f.event_sub_15_sumi=[0,0,0,0,0,0]"]

;[iscript]
;f.event_sub_15_sumi=[0,0,0,0,0,1];
;[endscript]
;[eval exp="f.event_sub_15_sumi[5]=1"]	
;-----

#&f.name	
（そうそう、忘れないようにしなくちゃ、地方騎士団の代表なんだし・・・）[p]
#

		
#&f.name	
「ライオネス、挨拶回り行かなくちゃ！」[p]
#
[live2d_load]
[live2d_new name="lioness2" model_id="lioness2" lip=true jname="ライオネス"]
[live2d_load_off]
[live2d_lion2_show]	
[live2d_fadein time=1000]	
[lioness2_arms_normal]
[lioness2_face_odoroki]
#ライオネス	
「（もぐもぐ）おお！そうだったな、忘れるとこだったぜ」[p]
#

[lioness2_face_normal_warai]	
#&f.name	
（・・・もう・・・）[p]
#

[live2d_hide name="lioness2"]
		
		
#国王陛下	
「本当によくやってくれた。カーニバルの時もそうだが、エルムナードの戦いでもお前たち地方騎士団の活躍がなければ		
クライストの力があったとしても、勝利するのは難しかっただろう」[p]
#



[live2d_lion2_show]
[lioness2_head_under_y]
[lioness2_face_mehuse_dai]
#ライオネス	
「・・・もったいないお言葉でございます。国王陛下」[p]
#

		
#&f.name	
「あ、ありがとうございます！」[p]
#

		
#国王陛下	
「ことにライオネス、
[lioness2_head_normal]
[lioness2_face_normal]
お前は王宮騎士団長ウェルムの息子であり、ランスロットの弟でもある」[p]
#

		
#国王陛下	
「優秀な息子たちを持って、ウェルムもさぞ喜んでいることだろう」[p]
#

[lioness2_head_right_x]
[lioness2_face_mehuse_dai]		
#ライオネス	
「・・・・・・」[p]
#

		
#&f.name	
（ライオネス・・・）[p]
#

[lioness2_head_normal]
[lioness2_face_normal]		
#国王陛下	
「そして、[name]。貴公はあのランスロットの一番弟子だそうだな」[p]
#

		
#&f.name	
「えっ、あっ・・・は、はい！」[p]
#

		
#国王陛下	
「グレッグ地方騎士団長からも、大変に筋がいいと聞いている。女性でありながらの騎士の任務は大変なことも多いだろう」[p]
#
[lioness2_arms_kosinite_left]
[lioness2_head_right_x]
		
#国王陛下	
「そのような状況でも、我が王国のために力を注いでくれていること、本当に感謝する」[p]
#

		
#&f.name	
「も・・・もったいなきお言葉です、陛下」[p]
#

		
#国王陛下	
「聞いたところによると、王都民からの信頼も大変に厚いようだな。これも貴公の人望の賜物なのだろう」[p]
#

		
#国王陛下	
「これからも王都と王国のための働き、大いに期待しているぞ」[p]
#

[lioness2_head_normal]
[lioness2_arms_normal]
[lioness2_face_mehuse_dai]		
#&f.name	
「はっ、はい！！」[p]
#

[live2d_hide name="lioness2"]	
お褒めの言葉をいただいた！！[p]
魅力が１０アップ![p]
[playse storage="item_status_up_onjin.ogg"]
[eval exp="f.irain_charm = f.irain_charm+10"]
;お褒めの言葉をいただいた！！　魅力がUP!		



[if exp="f.event_war_rans_sumi==1&&f.event_epi5_rans_ok!=10"]
[yuria_tatie_touroku]
[yuria_sei_tatie_show]	
#ユリア	
「あら・・・誰かと思えばいつぞやの小汚い小娘ではありませんこと？」[p]
#


#&f.name	
（第一声がそれなんだ・・・）[p]
#

[yuria_sei_tatie_bakawarai]
#ユリア	
「うまく取り繕えば、それなりに見えるものですわね」[p]
#


#&f.name	
（褒められてる・・・の？）[p]
#


#&f.name	
「あ・・・ありがとうございます」[p]
#


#ユリア	
「あなた、地方騎士なんですってね。女の身で刃物を振り回して・・・
[yuria_sei_tatie_metoji]
何が楽しいのかしら。ああ、恐ろしい」[p]
#


#&f.name	
（・・・・・・）[p]
#
[chara_hide name="yuria"]
[config_true]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
#ランスロット	
「・・・ユリア様。お言葉ですが・・・人にはそれぞれの事情がございます」[p]
#


[rans_tatie_rei_mehuse]
#ランスロット	
「相手方の心情や背景を察して、かける言葉を選ぶのも王族としての品というものなのでは」[p]
#

[config_false]
[yuria_sei_tatie_show]
[yuria_sei_tatie_normal]
#ユリア	
「こんな小娘の背景など、どうして私が察してあげなければならないのです？」[p]
#


[yuria_sei_tatie_metoji]
#ユリア	
「気を遣う相手を選ぶのも、私たち王族の権利ですわ」[p]
#

[chara_hide_all]
[config_true]
[live2d_lion2_show]
[lioness2_face_chottoikari]
#ライオネス	
「っ・・・っっ」[p]
#


#&f.name	
（ライオネス・・・抑えて・・・）[p]
#
[live2d_fadeout time=1000]


[rans_tatie_rei_show]
[rans_tatie_rei_mehuse]
[config_false]
[yuria_sei_tatie_show]



[yuria_sei_tatie_normal]
#ユリア	
「まあ、せいぜい楽しむことですわね。ここには、あなたのような人間が滅多に食べられないような食事がたくさんありますでしょうし」[p]
#

[yuria_sei_tatie_metoji]
#ユリア	
「でも、陛下の手前、くれぐれも品のいい食事をお願いいたしますわね。
[yuria_sei_tatie_bakawarai]
とは言っても無理かしら、うふふ」[p]
#

#ユリア	
「それでは、ご機嫌よう」[p]
#
[chara_hide name="yuria"]

[rans_tatie_rei_sinnpai]
#ランスロット	
「・・・ではな、[name]」[p]
#

#&f.name	
「う、うん」[p]
#
[chara_hide_all]

[config_true]
[live2d_fadein time=1000]	
#ライオネス	
「くそ女が・・・」[p]
#


#&f.name	
「ちょっ・・・ライオネス！！」[p]
#


#ライオネス	
「兄貴のやつもなんなんだよ尻にしかれやがって・・・」[p]
#


#&f.name	
「しょ、しょうがないよ、身分が身分だし、命まで助けてもらったんだし・・・」[p]
#


#&f.name	
（ランスロットも大変だなあ・・・）[p]
#
[live2d_hide name="lioness2"]

[elsif exp="f.event_epi5_rans_ok==10"]	

[playse storage="walkhibiku_onjin.ogg"]


#&f.name	
「・・・？」[p]
#
[yuria_tatie_touroku]
[yuria_sei_tatie_show]
[stopse]
#ユリア	
「・・・あなたは、[name]さん」[p]
#


#&f.name	
「・・・えっ」[p]
#


#&f.name	
（私・・・ユリアさんに名前言ったことあったっけ・・・）[p]
#


[yuria_sei_tatie_metoji]
#ユリア	
「私、噴水広場で、王都民の暴動を見ましたわ」[p]
#


#&f.name	
「そ、そうなんですか・・・」[p]
#


#&f.name	
（暴動、とまでは行かない気もするけど・・・って、あの場にいたんだ、ユリアさん）[p]
#


#&f.name	
（でも、どうして・・・）[p]
#


[yuria_sei_tatie_sinmyou]
#ユリア	
「ランスロット様の処刑を止めるために、あなたが王都民を説得したというのは本当ですの？」[p]
#


#&f.name	
「い、いえ説得というよりは・・・エルムナードであったことを説明したっていうか」[p]
#


#&f.name	
「そうしたら街の人たちが、署名を集めようって言ってくれて」[p]
#


#&f.name	
「もともと、カーニバルの時もランスロットはみんなを助けてくれたから、そのこともあったんだと思います」[p]
#


#ユリア	
「・・・・・・」[p]
#


#&f.name	
「あ、そういえば、その・・・ユリアさんが陛下に、署名を渡してくれたんですよね、クライストさんから聞きました」[p]
#


#&f.name	
「ユリアさんが署名を探してくれなかったら、きっとランスロットは助けられなかったか、もし助けられても今まで通り騎士団にいることはできなかったかも・・・しれません」[p]
#


#&f.name	
「本当に、ありがとうございました」[p]
#

[live2d_lion2_show]

#ライオネス	
「[name]・・・」[p]
#


#&f.name	
「ライオネスも！」[p]
#

[lioness2_face_odoroki]
#ライオネス	
「お、おう・・・
[lioness2_face_mehuse_dai]
あ、兄貴のこと・・・助けていただき、ありがとうございました」[p]
#

[lioness2_face_normal]

[yuria_sei_tatie_metoji]
#ユリア	
「・・・別に、あなた方のためにしたことではありませんわ」[p]
#


#&f.name	
「それでも、助かりました。嬉しかったから・・・お礼、言わせてください」[p]
#


#ユリア	
「そもそも・・・あのようなことをしなくても、私がお父様に頼めばすんだことですのに・・・」[p]
#

[yuria_sei_tatie_normal]
#ユリア	
「まぁ・・・徒労に終わることがなくてよかったですわね」[p]
#

[chara_hide_all]
[playse storage="walkhibiku_onjin.ogg"]

#&f.name	
（あ・・・）[p]
#


[lioness2_face_chottoikari]
#ライオネス	
「なんだよあの態度・・・」[p]
#


#&f.name	
「ライオネス、聞こえちゃうよ！」[p]
#


#ユリア	
「・・・でも・・・面白い見せ物を・・・見せていただけたことは、感謝しています」[p]
#


#&f.name	
「えっ」[p]
#


[stopse]
[playse storage="walkhibiku_onjin.ogg"]
[live2d_fadeout time=50]
[live2d_mod name="lioness2" x=-0.5]
[live2d_new name="aho_sei" model_id="aho_sei" lip=true jname="クライスト"]
[live2d_show name="aho_sei" y=-1.6 x=0.5 scale=4.0]
[aho_sei_mod_idle_kokyu_only]
[aho_sei_arms_udekumi]
[aho_sei_face_yokome_ase]
[live2d_fadein time=1000]
#クライスト	
「素直じゃないんだよ、そういうこと」[stopse][p]
#

[aho_sei_head_right_z]
[aho_sei_face_normal]
#&f.name	
「クライストさん・・・」[p]
#

[aho_sei_head_normal]
[aho_sei_head_under_y]
[aho_sei_face_mehuse_warai]
#クライスト	
「王都民がああやって自分の意思を持って、何かを変えている姿を見たのは・・・彼女にとって、色々と考えるところがあったのかな」[p]
#



[lioness2_arms_udekumi]
[lioness2_face_ha]
#ライオネス	
「・・・少しは・・・まともなところがあるってのか」[p]
#


[aho_sei_head_normal]
[aho_sei_face_smile_ase]
#クライスト	
「さあ？それはこれからかな」[p]
#
[aho_sei_face_normal]

#ユリア	
「何をこそこそとしているのです！！
[aho_sei_face_mihiraki]
[aho_sei_arms_normal]
[aho_sei_eyes_left]
すぐに来ないと首を跳ねますよ！！」[p]
#

[aho_sei_face_normal]

#クライスト	
「申し訳ありませんユリア様」[p]
#

[aho_sei_eyes_normal]
[aho_sei_head_normal]
#クライスト	
「それじゃね」[p]
#

[live2d_hide name="aho_sei"]
	
#&f.name	
「ユリアさん・・・」[p]
#

[endif]

[live2d_hide name="lioness2"]
[jump target=*act_sel]


*gotisou
#&f.name	
「さて、どれもこれも美味しそう・・・どれを食べようかな？」[p]
#

		

[jump storage="scenario_2/sentaku.ks" target=*main_event_15_choice_4_1]			
			
#&f.name	
「お腹いっぱい！なんだか力がみなぎったような気がする・・・」[p]
#

[playse storage="eat00_macchi.ogg"]	
[w]
[playse storage="eat00_macchi.ogg"]	
#ライオネス	
「・・・」[p]
#

		
#&f.name	
「ライオネスは・・・まだ食べてるね・・・」[p]
#

[jump target=*act_sel]		

*bal
#&f.name	
「ライオネス、ちょっとあっち見てくるね」[p]
#


[live2d_lion2_show]	
[live2d_fadein time=1000]	
#ライオネス	
「あんまうろちょろして迷子になんなよ」[p]
#

		
#&f.name	
「わかってるよ！」[p]
#

[live2d_hide name="lioness2"]
[anten]
[bg storage="oukyuu_hall_2_tasogare.jpg"]	
			
#&f.name	
「ここ、ダンスホールになってるのか・・・」[p]
#

;[showmenubutton]		
#&f.name	
（一応、ダンスは習ったけど・・・まあいいか、別に相手もいないし・・・）[p]
#


[refresh_hanyou]
	
;フラグありのキャラがいれば一人ずつ現れる	
*dance
[button_clear]
[if exp="f.glif_battle_kizuna==1"]	
;グリフ		
[jump storage="scenario_2/episode/epi6_glif.ks"]
[endif]
*next
[if exp="f.event_sub_14_mother_kaiwa==1"]	
;ライオネス		
[jump storage="scenario_2/episode/epi6_lion.ks"]
[endif]
*next_2
[if exp="f.event_war_kra_sumi==1"]	
;クライスト
[jump storage="scenario_2/episode/epi6_kra.ks"]
[endif]
*next_3
[if exp="f.event_epi5_rans_ok==10"]		
;ランス			
[jump storage="scenario_2/episode/epi6_rans.ks"]	
[endif]
[button_hyouji]
[jump target=*act_sel]	




*shukuga_second_half
[anten]
[wait time=1000]


[bg storage="oukyuu_hall_tasogare.jpg"]

[live2d_load]
[live2d_on]
[live2d_new name="lioness2" model_id="lioness2" lip=true jname="ライオネス"]
[live2d_load_off]
[live2d_lion2_show]
[live2d_fadein time=500]
[lioness2_face_normal_warai]
#ライオネス
「さーて、食うもん食ったし、そろそろ帰るか」[p]
#

#&f.name
（ライオネスってば・・・）[p]
#

[lioness2_face_odoroki]
#ライオネス
「！！」[p]
#

#&f.name
「ライオネス？」[p]
#
[lioness2_face_yokome_otikomi]
[playbgm storage="chinkou_ontama.ogg"]
[config_false]
[werumu_tatie_rei_show]
#ウェルム
「珍しいなライオネス。お前がこのようなところに顔を出すとは」[p]
#


#&f.name
「あ・・・」[p]
#



#&f.name
（ウェルム、王宮騎士団長・・・）[p]
#

[lioness2_face_yokome_otikomi]
#ライオネス
「・・・おや・・・・じ・・・・」[p]
#

[lioness2_face_chottoikari]
#ライオネス
「っ・・・うるせえな・・・グレッグ団長の、代理だ」[p]
#


[werumu_tatie_rei_metoji]
#ウェルム
「なるほど。お前のような家の恥でも、地方騎士団であればそこそこの信頼は得られるというわけか」[p]
#



#&f.name
（・・・嫌な・・・言い方・・・）[p]
#


#&f.name
（まるで、地方騎士団のこと・・・）[p]
#

[werumu_tatie_rei_normal]
#ウェルム
「ほう、お前は・・・[name]か」[p]
#

[werumu_tatie_rei_warai]
#ウェルム
「年輪も行かぬ小娘だと思っていたが・・・ふふ、なかなかのものだな」[p]
#


#ウェルム
「ランスロットもわしに似て、女の選別がうまい」[p]
#

[lioness2_eyes_normal]
#ライオネス
「・・・やらしい目で、見んじゃねえよ・・・」[p]
#


#&f.name
（ライオネス・・・）[p]
#

[werumu_tatie_rei_normal]
#ウェルム
「ふん・・・できそこないが」[p]
#

[lioness2_face_mehuse_dai]
#ライオネス
「っ・・・・・」[p]
#

[chara_hide name="werumu_rei"]
[anis_tatie_rei_touroku]
[anis_tatie_rei_show]
#アニス副団長
「・・・ウェルム団長」[p]
#

[fadeoutbgm time=1000]
[chara_hide name="anis_rei"]
[werumu_tatie_rei_show]
#ウェルム
「アニスか、今行く」[p]
#
[playse storage="walkhibiku_onjin.ogg"]
[chara_hide_all]

[lioness2_face_chottoikari]

#ライオネス
「っ・・・胸糞悪い、帰るぞ、[name]」[p]
#


[live2d_fadeout time=1000]
#&f.name
「う、うん・・・」[p]
#

[eval exp="f.rans_rei=0"]
[eval exp="f.live2d_on=0"]
[stopse]

[bg storage="kisidaniriguti_tasogare.jpg"]
[lioness2_body_right_x]
[lioness2_head_under_y]
[lioness2_face_otikomi]
[live2d_fadein time=1000]
#ライオネス
「・・・さっきは、悪かったな」[p]
#
#&f.name
「ライオネスが、謝ることじゃないよ・・・」[p]
#
[lioness2_head_normal]
[lioness2_body_normal]
#ライオネス
「・・・[name]」[p]
#

#&f.name
「ウェルム団長、あんな言い方しなくても・・・」[p]
#

[lioness2_head_under_y]
[lioness2_face_yokome_otikomi]
#ライオネス
「・・・お前は気にすんな。前からのことだし、俺は気にしてねえよ」[p]
#


#&f.name
（ライオネス、そんなに辛そうなのに・・・）[p]
#

[lioness2_head_normal]
[lioness2_face_normal]
#ライオネス
「・・・疲れたろ。ゆっくり休め。
[if exp="f.event_main_15_date_lion==1"]
[lioness2_face_normal_warai]
それじゃ明日な
[else]
そんじゃな
[endif]
」[p]
#

[live2d_fadeout time=1000]
#&f.name
（ライオネス・・・）[p]
#

[bg storage="irainheya_yoru_tasogare.jpg"]
[live2d_delete_all][live2d_off]
[jump storage="scenario_2/episode/epi_flag_check.ks"]









	
	
	
	