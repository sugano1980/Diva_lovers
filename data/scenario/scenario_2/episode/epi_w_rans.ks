																									
;船　甲板																								
[playbgm storage="umi_onjin.ogg"]
[w][w][w]
[config_true]
[bg storage="kanpan_tasogare.jpg"]																						
#&f.name	
「・・・うーん・・・」[p]
#																								
#&f.name	
（なんだかあんまり、調子よくないな・・・）[p]
#																								
#&f.name	
（・・・一見、悪いところは見当たらないけど・・・）[p]
#																								
																									
#&f.name	
（だめだ・・・こんなことじゃ。甲板でもいいから、素振りや型の確認もしないと・・・）[p]
#																								

[playse storage="walkyuka_onjin.ogg"]	
[config_true]
[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「やあ、[name]ちゃん」[stopse][p]
#																								
#&f.name	
「あ、クライストさん・・・」[p]
#																								

[kra_tatie_komari]																								
#クライスト	
「どうしたの？なんかさえない顔してるけど」[p]
#																								
#&f.name
「・・・あ・・・。んーと・・・ちょっと調子よくなくて・・・」[p]
#																								

[kra_tatie_normal]																									
#クライスト	
「身体の具合でも悪い？船酔いかな？」[p]
#																								
																									
#&f.name
「う、ううん、身体は大丈夫。なんだけど、その・・・」[p]
#
[kra_tatie_yokome]																								
#クライスト	
「うん？」[p]
#																								
#&f.name	
「さっき、海のモンスターと戦ったとき・・・」[p]
#																								
[kra_tatie_normal]																									
#クライスト	
「ああ、うん」[p]
#																								
																									
#&f.name	
「双剣の調子が・・・ちょっとよくなくて。腕が、鈍っちゃったのかなって・・・」[p]
#																								

[kra_tatie_metoji]																									
#クライスト	
「ずっと船に乗ってるし、鍛冶屋にも見てもらえないからね。																								
	でも俺が見てた限りでは、いつもと変わりなかったよ」[p]
#																								
#&f.name	
「そ・・・っか・・・なら、いいんだけど・・・」[p]
#
[kra_tatie_bisyou_youen]																								
#クライスト	
「そんな不安にならなくても・・・[name]ちゃんのことは俺が守るから、心配しなくていいのに」[p]
#																								
#&f.name	
「そ、そんな、私だって戦えるんだもの、みんなにばかり任せるわけにはいかないよ」[p]
#																								
;守られてばかりなら、双剣使いである意味もない。だが、#クライストは肩をすくめた。
[kra_tatie_yareyare]																								
#クライスト	
「やれやれだなあ。男はさ、かわいい女の子を自分の手で守りたいって思うものなんだよ？」[p]
#																								
#&f.name	
「え・・・？そ、そうなの？よくわからないけど・・・」[p]
#	
[kra_tatie_smile]																							
#クライスト	
「そうそう。だから[name]ちゃんは俺に守られてればいいんだよ」[p]
#																								
																									
#&f.name	
「そんなの、悪いよ・・・
[kra_tatie_normal]
私は、私にできることはしたいもの」[p]
#																								

[kra_tatie_mehuse]																									
#クライスト	
「ずいぶんと殊勝なことだね。それも、あの堅物の影響なのかな」[p]
#																								
#&f.name	
「堅物って・・・」[p]
#																								
[kra_tatie_metoji]																									
#クライスト	
「・・・こっちの話だよ。まあともかく、戦闘に関しては心配することないよ。
[kra_tatie_bisyou_youen]
俺がいるんだから」[p]
#																								

[kra_tatie_smile]																								
#クライスト	
「君は、何も心配しなくていい。・・・ね？」[p]
#																								
#&f.name	
「・・・・・・う・・・・・・うん・・・・・・」[p]
#																								


[playse storage="walkyuka_onjin.ogg"]	
[chara_hide_all]																								
;	微笑ののち#クライスト立ち去る																								
																									
[stopse]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]
[anten]

[bg storage="kanpan_yoru_tasogare.jpg"]
#&f.name	
（クライストさんは、ああいうふうに言ってくれたけれど・・・）[p]
#																								
#&f.name	
（明日にはもう、到着・・・明日には・・・戦わないといけない・・・）[p]
#																								
#&f.name	
（でも、大丈夫なのかな・・・私、ちゃんと戦えるのかな・・・）[p]
#																								
#&f.name	
「はあ・・・」[p]
#																								
#&f.name	
（こんなとき・・・こんなとき、近くに、いてくれたら・・・）[p]
#																								
[playbgm storage="omoi_ontama.ogg"]																									
#&f.name	
（・・・ランスロット・・・）[p]
#																								
																									
#&f.name	
（・・・今はきっと忙しいのかな。そうだよね・・・地方騎士団がなくなって、王宮騎士団の仕事も増えたし・・・）[p]
#																								
#&f.name	
（やっぱり、ウェスタじゃなくて王宮騎士団に残ったほうがよかったのかな・・・）[p]
#																								
#&f.name	
（一緒にいたら、こんな不安なんか、きっと感じなくてすんだと思うのに・・・）[p]
#																								
																									
#&f.name	
（ランスロット・・・）[p]
#																								
#&f.name	
「・・・会いたい、な・・・」[p]
#																								
																									
																									
#&f.name	
（ずっと、王都でいつでも会えてて・・・急に会えなくなっちゃったから、だよね・・・）[p]
#																								
#&f.name	
「ホームシック・・・かなぁ・・・」[p]
#																								
																									
																									


[stopbgm]

[kra_tatie_show_tall]
#クライスト	
「どうしたの？」[p]
#																								
#&f.name	
「きゃっ！！」[p]
#	
[kra_tatie_mihiraki]																							
#クライスト	
「あ、ごめん。驚かせちゃったかな」[p]
#																								
#&f.name	
「く、クライストさん・・・」[p]
#
[kra_tatie_normal]																								
#クライスト	
「ずいぶん思いつめてた感じだったけど、やっぱり剣の調子のこと？」[p]
#																								
#&f.name	
「う、うん・・・それも、あるけど・・・」[p]
#	

[kra_tatie_yokome]
#クライスト	
「？」[p]
#	

#&f.name	
「・・・ランスロットに会いたいな、って・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・・・・・・」[p]
#																								
#&f.name	
「あっ・・・その、調子のこともあるし、そ、相談とかもしたいし・・・」[p]
#																								

[fadeinbgm storage="kokusei_musmus.ogg" time=5000]																									
[kra_tatie_mehuse]																									
#&f.name	
「それに王都のことも・・・ランスロットは強いけど・・・もし何かあったらってちょっと心配で」[p]
#

[kra_tatie_akireru]
#クライスト	
「・・・・ふうん・・・・・」[p]
#																								
																									
																									
[kra_tatie_mehuse]																									
#クライスト	
「・・・そんなにあの堅物が気になるんだ。剣の師匠なのに、弟子が心配するのはおかしいんじゃない？」[p]
#																								
#&f.name	
「そんなの・・・だって、相手はあのヴァエルだよ？もし持ち主が現れたら・・・普通の人間が敵うわけがない・・・」[p]
#
[kra_tatie_normal]																							
#クライスト	
「・・・・・・・・・・・・」[p]
#																								
#&f.name	
「・・・・？クライスト、さん・・・？」[p]
#																								
																									
[kra_tatie_mehuse]																								
#クライスト	
「[name]ちゃん・・・俺が・・・前にウェスタで言ったこと、覚えてる？」[p]
#																								
#&f.name	
「・・・え・・・？」[p]
#	
[chara_hide_all]
;	#クライスト接近																								

[aho_face_bisyou_youen]
[live2d_fadein time=500]
[aho_head_right_z]
#クライスト	
「・・・妬けるなー・・・って」[p]
#																								
#&f.name	
（えっ！？妬ける・・・って、やきもち焼くとかそういう・・・）[p]
#																								
#&f.name	
「や、妬けるなんて・・・何言って・・・だ、だからクライストさん、ランスロットは剣のお師匠で・・・」[p]
#
[aho_head_normal]
[aho_head_under_y]	
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]																							
#クライスト	
「師匠でしかない、本当にそう？」[p]
#																								
#&f.name	
「え・・・・・・・・・・」[p]
#
[aho_face_normal]																								
#クライスト	
「君が、気づいてないだけのように見えるけど・・・」[p]
#																								
																									
																									
#&f.name	
「気づいてないって・・・何に？」[p]
#																								

[aho_face_yareyare]																									
#クライスト	
「・・・・そうだな・・・
[aho_face_normal]
それなら・・・」[p]
#
[aho_face_metoji]																								
#クライスト	
「君が気づかないうちに、俺は手を打っておこうかな」[p]
#																								
#&f.name	
「え？」[p]
#
[fadeoutbgm time=5000]	
[aho_face_bisyou_youen]	
[aho_head_left_z]																						
#クライスト	
「・・・おいで」[p]
#																								

[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]

[live2d_kra_mod_sekkin_2]
[aho_head_normal]
[aho_head_under_y]
[aho_face_normal_majime]	
[live2d_fadein time=1000]																							
#&f.name	
「く、クライストさんっ！？」[p]
#																								

[aho_head_right_z]
[aho_face_bisyou_youen]																								
#クライスト	
「・・・しーっ。皆起きちゃうよ？」[p]
#																								
#&f.name	
「な・・・な・・・」[p]
#																								

[aho_head_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]																									
#クライスト	
「・・・可愛いな、そういう反応」[p]
#																								
#&f.name	
「クライスト・・・さん・・・っ・・・」[p]
#
[aho_mod_idle_normal]
[aho_face_normal]																								
#クライスト	
「・・・・・・・・。いたずらしたくなる」[p]
#	
[aho_head_left_z]
[playse storage="huku1_koukaonlabo.ogg"]
[camera time="300" x="0" y="-30" zoom="1.2"]
[wait time=300]
[live2d_fadeout time=1000]
#&f.name	
「えっ・・・ぁ・・・ぁあっ」[p]
#																								
;	#クライスト首筋にキス																								
#&f.name	
（なっ・・・なんでっ・・・）[p]
#
[playse storage="lip01_macchi.ogg"]	
[quake count="3" time="300" hmax="0" vmax="30"]																							
#&f.name	
「やぁっ・・・・んっ・・・」[p]
#																								
[reset_camera]
[aho_head_normal]	
[live2d_fadein time=500]
[aho_face_bisyou_youen]																							
#クライスト	
「いい声だね・・・抑えちゃうのももったいないけど、じゃあ、代わりに・・・」[p]
#																								
																																																		
#&f.name	
（クライストさんっ・・・なんでいきなり、こんなっ・・・い、いやだ・・・）[p]
#																								
#&f.name	
（嫌だっ！！）[p]
#																								
#&f.name	
「いっ・・・やああああっ！！」[p]
#
[aho_face_mihiraki]
[playse storage="sirimoti_onjin.ogg"]
[playse storage="yukahasiru_onjin.ogg"]
[live2d_fadeout time=1000]																								
																									
																									
[bg storage="hune_naka_yoru_tasogare.jpg" time=50]																									
#&f.name	
（信じられない・・・クライストさんが・・・クライストさんがあんな・・・あんなこと・・・）[p]
#																								
#&f.name	
「っあっっ！！」[p]
#
[stopse]
[playse storage="taoreru_onjin.ogg"]
[quake count="3" time="500" hmax="0" vmax="50"]																								
;	転ぶ																								
#&f.name	
「っ・・・」[p]
#
[bg storage="hune_yoru_room.jpg"]	
#&f.name	
「っ・・・ひっく・・・」[p]
#																					
#&f.name	
（・・・もう、やだ・・・いやだよ・・・）[p]
#																								
#&f.name	
（やだよ・・・）[p]
#	

#&f.name	
（ランスロット・・・）[p]
#

[anten]





;	翌朝	

[bg storage="hune_room.jpg"]
#&f.name	
「昨日の跡・・・まだ残ってる・・・」[p]
#																								
#&f.name	
（・・・なんで急にクライストさん、あんなことっっ・・・）[p]
#																								
#&f.name	
「・・・・・・・・・甲板・・・行きたくないな・・・でも、行かなきゃ・・・」[p]
#																								
																									
[bg storage="kanpan_tasogare.jpg"]
[playbgm storage="umi_onjin.ogg"]
[stopse]																									
;	甲板

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「どうした？首なんか押さえて」[p]
#																								
#&f.name	
「！・・・き、昨日ちょっと、寝違えちゃって・・・」[p]
#
[lioness_tatie_akireru]																								
#ライオネス	
「ドジなやつだなぁ」[p]
#																								
#&f.name	
（・・・よかった・・・感づかれはしないみたいだけど・・・）[p]
#																								
																									
#&f.name	
（あ・・・）[p]
#	
[live2d_mod name="aho" y=-1.8 x=0.0 scale=4.2]	
[aho_eyes_agureasu]																						
;	#クライスト、微笑む	
[chara_hide_all time=50]
[live2d_fadein time=50]		
[aho_face_bisyou_youen]																					
#&f.name	
「っ・・・」[p]
#																								

[live2d_fadeout time=50]	
[lioness_tatie_show]																								
																									
#ライオネス	
「・・・それでよ[name]・・・聞いてるか？」[p]
#																								
#&f.name	
「なっ・・・なに？」[p]
#	
[lioness_tatie_udekumi]																							
#ライオネス	
「クライストのやつ、すげえだろ、あの目の色」[p]
#																								
#&f.name	
「えっ・・・そ、そうだったっけ・・・？」[p]
#																								
[lioness_tatie_kosinite]																									
#ライオネス	
「なんで気づかねえんだよ・・・ともかく、王都に向かうのにあれじゃ目立ちすぎるから、俺とお前とトリスタンとおっさんだけで行くことになった」[p]
#																								
#&f.name	
「そ・・・そうなんだ・・・」[p]
#																								
#&f.name	
（・・・ちょっと、ほっとした・・・かな・・・）[p]
#																								
[lioness_tatie_akireru]																									
#ライオネス	
「お前大丈夫か？王都じゃ何があるかわかんねえからな。気ひきしめていけよ」[p]
#																								
#&f.name	
「わ・・・わかってるよ！」
[lioness_tatie_yareyare]
[p]
#
[chara_hide_all]																								
#&f.name	
（・・・そうだ・・・今は、こんなんで動揺してる場合じゃないはず・・・）[p]
#																								
#&f.name	
（とにかく今は・・・準備しなきゃ・・・）[p]
#																								
[anten]																									
																									
																									
																									
;	王都街道の森
[stopbgm]	
[playse storage="zawameki_soto.ogg"]																							
[bg storage="miti_tasogare.jpg"]																									
																									
#&f.name	
「・・・森の中が騒がしいみたいだけど・・・」[p]
#																								

[tris_tatie_touroku]
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50]

#トリスタン	
「・・・おい！あれは・・・」[p]
#	
[chara_hide_all time=50]
[cera_tatie_touroku]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482]																						
#セレ	
「・・・うっ・・・うう・・・」[p]
#																								
																									
#&f.name	
（あ・・・あれは・・・！！！）[p]
#																								
																									
#&f.name	
「セレさんっ！！？？」[p]
#	
[chara_hide_all time=50]
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50]
																							
#トリスタン	
「セレっっ！！！」[p]
#																								

[chara_hide_all time=50]
[lioness_tatie_touroku]
[chara_show name="lion" storage="lion_tatie/Idle_gif_odoroki.gif" height="698" width="456" top=-35 left=0]
																									
#ライオネス	
「おいお前、なんでこんなところに・・・その格好・・・」[p]
#																								
																									
#&f.name	
（ひどい傷・・・セレさん・・・いったい・・・王宮騎士団にいたんじゃなかったの！？）[p]
#																								

[chara_hide_all time=50]
[cera_tatie_touroku]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]																									
#セレ	
「皆・・・戻って・・・きたのかっ・・・」[p]
#
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=360]																								
#トリスタン	
「しっかりしろ、セレ！何があった！！」[p]
#																								
																									
#セレ	
「ウェ・・・ウェルム団長が・・・国王陛下とラルズ宰相を・・・手にかけて・・・」[p]
#
[playbgm storage="op_musmus.ogg"]

#&f.name	
「ええっ・・・」[p]
#																								
#&f.name	
（ウェルム団長が・・・！？）[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=0]

#ライオネス	
「親父が・・・なんで、なんでだよ！？	」[p]
#																							


[chara_hide_all time=50]

[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50 left=360]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]																									


#トリスタン	
「謀反を起こした・・・ということか・・・ウェルム団長が・・・」[p]
#																								
																																																		
#セレ	
「理由はわからない・・・ふたりだけでなく、他の王族も・・・彼に逆らった者は皆殺された」[p]
#

#セレ
「ウェルム団長の手には真っ赤な・・・紅蓮の双剣が握られていて・・・みなその剣に・・・っっ」[p]
#																								
																								
#&f.name	
「真っ赤な剣・・・それってまさか・・・」[p]
#

#セレ	
「・・・そうだ・・・クライストの持っていたあの剣に似ていた・・・光を放つ、あの不思議な剣に・・・」[p]
#																								

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]

#ライオネス	
「親父が・・・・・親父が・・・・ヴァエルを手に入れたって、ことか・・・！？」[p]
#																								
																									
[chara_hide_all time=50]
[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50 left=360]
#トリスタン	
「セレ・・・・・・ともかくセレを船に運ぶぞ。このままでは・・・」[p]
#	
[fadeoutbgm time=4000]																							
#&f.name	
「うん！セレさん、しっかり・・・」[p]
#																								


[chara_show name="cera" storage="cera0_tatie/cera0_bikkuri.png" width=336 height=482 left=30 top=130]																																																		
#セレ	
「だ、だめだ、みんなまで・・・巻き添えに・・・！！																								
	にっ・・・逃げてくれ！逃げるんだ！！」[p]
#

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=0]

#ライオネス
「なんだって・・・どういう」[p]
#																								
;	馬のひづめ、馬の音	
[playse storage="umahasiru_onjin.ogg"]																							
#&f.name	
（えっ・・・）[p]
#																								
#騎士	
「いたぞ！あの女だ！！仲間がいたのか！！」[p]
#																								
#騎士	
「ウェルム団長に逆らう反逆者だ！皆殺せ！！」[p]
#		

#騎士	
「異形をだせ！！早く連れてこい！」[p]
#

#&f.name
（異形・・・異形って・・・まさか・・・）[p]
#

[playse storage="igyou_nakigoe_onjin6.ogg"]

[playbgm storage="soudou.ogg"]

[lioness_tatie_chottoikari]
#ライオネス
「くそっ・・・まじかよ・・・こいつら・・・」[p]
#

[chara_hide_all time=50]	
[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=360]
[chara_show name="cera" storage="cera0_tatie/cera0_mihiraki.png" width=336 height=482 left=30 top=130]																									


#トリスタン	
「セレっ！！！」[p]
#																								
#セレ	
「だめだトリスタン、逃げろ！！」[p]
#																								

[tris_tatie_ikari]																									
#トリスタン	
「勝手なことを言うな！！俺の気持ちくらい少しは考えろ！！」[p]
#
[cera_tatie_otikomi]																								
#セレ	
「・・・トリスタン・・・」[p]
#
[chara_hide_all time=50]																								
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=0]
																									
#ライオネス	
「親父のやろう・・・てめえら！あんなやつのいう事なんか聞いてんじゃねえよっ！！」[p]
#

#騎士	
「なんだと！？われらがウェルム団長を侮辱する気か！！」[p]
#

[lioness_tatie_kimazui]
#ライオネス	
「ちっ・・・」[p]
#
[chara_hide_all time=50]
[tris_tatie_show]
#トリスタン	
「何を言っても無駄なようだな・・・ともかく、セレを守りながら船に戻るぞ！」[p]
#																								
#&f.name	
「はっ・・・はい！！」[p]
#	

[playse storage="igyou_asioto_onjin.ogg"]
[w][w][w]
[playse storage="igyou_nakigoe_onjin5.ogg"]

[chara_hide_all time=50]
[chara_new name="lion2" storage="&f.lion_kamae"]
[chara_show name="lion2" storage="&f.lion_kamae" top=-35 left=0]

#ライオネス	
「くそっ・・・数が多すぎる・・・わりい[name]！加勢はできそうにねえが・・・ひとりでやれるか！？」[p]
#																								
#&f.name	
「だいじょうぶ！！」[p]
#	

[chara_hide_all time=50]
[stopbgm]																									
;	バトル																								
																									
																									
																									
[bg storage="crerumori_yoru_tasogare.jpg"]																									
																									
#&f.name	
（きっと・・・魔剣ヴァエルのせい・・・なんだよね・・・）[p]
#																								
#&f.name	
（ヴァエルがクレールへの復讐を望んでいるから・・・？）[p]
#																								
;																										森																								
#&f.name	
（一度、船に戻って、セレさんの手当てをしながらまた対策を立てなくちゃ・・・）[p]
#																								
#&f.name	
「・・・えっ・・・あれ？」[p]
#																								
#&f.name	
（ライオネス？トリスタン・・・いない！？）[p]
#																								
#&f.name	
（もしかして・・・戦ってるうちに・・・はぐれた？）[p]
#																								
																									
[walkmori]																									
#&f.name	
「・・・・・・どうしよう・・・」[p]
#																								
#&f.name	
（・・・ライオネス・・・セレさん・・・トリスタン・・・船はどっちに・・・）[p]
#																								
																									
																									
#&f.name	
「・・・はあ・・・はあ・・・」[p]
#																								
																									
																									
																									
#&f.name	
（・・・どうしよう・・・一度、夜を明かしてからまた明日船を捜すしかないのかな・・・）[p]
#																								
#&f.name	
（こんな森の中じゃ、不安だけど・・・）[p]
#																								
#&f.name	
「？」[p]
#																								
;	松明の日、現れる

[image layer=0 page=fore visible=true name="taimatu" storage="taimatu_ippai.png" time=3000]
#&f.name	
（・・・きっとあれ、たいまつの火、だよね・・・）[p]
#																								
#&f.name	
（だれかくる・・・でも、味方とは限らないし・・・）[p]
#																								
																									
#&f.name	
「っ・・・」[p]
#																								

[walkmori]
[free name="taimatu" layer=0 time=2000]

#&f.name	
「えっ・・・あれって・・・」[p]
#																								

[ector_tatie_touroku]
[ector_tatie_show]																									
#エクター	
「お前は・・・隊長の弟子の・・・[name]か？」[p]
#																								
#&f.name	
「あなたは確か・・・ランスロットの・・・」[p]
#	

[ector_tatie_warai]
#エクター	
「覚えていてもらえたか。こんなところでどうした・・・確か、ウェスタに向かったと・・・」[p]
#																								
#&f.name	
「それは・・・その・・・」[p]
#
[ector_tatie_mehuse]																								
#エクター	
「・・・訳ありのようだな。ともあれ、隊長は近くのエルムナード関所に陣を構えている」[p]
#
[ector_tatie_normal]																								
#エクター	
「疲れてもいるだろう。我々と一緒にくるといい」[p]
#
[chara_hide_all]
[walkmori]																							
#&f.name	
「あ、ありがとうございます・・・よ・・・よかった・・・」[p]
#	

[if exp="f.letter_no!=4"]
#&f.name	
（エルムナードの関所って・・・どうして、ランスロットが・・・？）[p]
#																								
#&f.name	
（それにさっき、王宮騎士がセレさんを追いかけてた・・・反逆者って・・・王宮騎士団で何が、起こってるんだろ・・・)	[p]
#																							
#&f.name	
（ランスロットは今でも、ウェルム団長の部下なんだろうし・・・警戒はしておいたほうが・・・いいのかな・・・でも・・・）[p]
#	
[elsif exp="f.letter_no==4"]
#&f.name	
（そういえばランスロットからの手紙で、エルムナードの関所にうつることになったって書いてあったっけ・・・）[p]
#

#&f.name	
（でもさっき、王宮騎士がセレさんを追いかけてた・・・反逆者って・・・王宮騎士団で何が、起こってるんだろ・・・)	[p]
#																							
#&f.name	
（ランスロットは今でも、ウェルム団長の部下なんだろうし・・・警戒はしておいたほうが・・・いいのかな・・・でも・・・）[p]
#	

[endif]


[stopse]
[anten]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show]

[bg storage="erumusekisho_yoru_tasogare.jpg"]
;	エルムナード関所


[bg storage="sekishonaka_tasogare.jpg"]
#&f.name	
（エルムナードの関所に王宮騎士団が駐留するようになっていたなんて・・・）[p]
#

[ector_tatie_show]
#エクター	
「少し待っていろ」[p]
#																								
#&f.name	
「は、はい・・・」[p]
#																								
[chara_hide_all]																									
																									
#&f.name	
（ここに王宮騎士団がいるってことは・・・エルムナードを、クレール領にするつもりなの・・・？）[p]
#
[if exp="f.letter_no!=4"]																								
#&f.name	
（国王陛下の命令なのかな・・・それともウェルム団長が・・・）[p]
#
[endif]																									
#&f.name	
（セレさんたちは・・・無事船についたかな・・・トリスタンとライオネスがいたし、大丈夫だとは思うけど・・・）[p]
#
																							
[playse storage="hasiruhibiku_onjin.ogg"]																									
#ランスロット	
「[name]！！」[p]
#																								
#&f.name	
「あっ・・・」[p]
#																								
;	#ランスロット現れる																								
[stopse]																									
[live2d_fadein time=1000]																									
#&f.name	
「・・・ランスロット！！！」[p]
#
[live2d_fadeout time=1000]
[live2d_rans_mod_sekkin]
[rans_exp_bisyo]
[live2d_fadein time=1000]	

[rans_head_right_z]																						
#ランスロット	
「ウェスタから、無事戻ったか・・・心配したぞ。
[rans_exp_normal]
[rans_head_left_x]
[rans_head_under_y]
森で迷っていたと聞いた。
[rans_head_normal]
何かあったのか？」[p]
#																								
#&f.name	
「ら、ランスロット・・・私・・・」[p]
#																								
#&f.name	
「わ、私・・・」[p]
#																								
#&f.name	
（・・・どうしよう・・・ヴァエルのこともウェルム団長のことも、いろいろありすぎて、何から話したらいいのか・・・）[p]
#																								

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]

#ランスロット	
「色々と、積もる話もありそうだな。
[rans_mod_idle]
[rans_exp_normal]
とりあえず、私の部屋で休もう」[p]
#																								
#&f.name	
「は、はい・・・」[p]
#																								

[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]	
[live2d_fadeout time=1000]																								
#&f.name	
（・・・ランスロット・・・）[p]
#																								
																									
																									
																									
																									
																									
																									
;	関所の２階																								
[bg storage="sekishoooheya_tasogare.jpg"]																								

[rans_exp_mihiraki]	
[live2d_fadein time=500]																							
#ランスロット	
「・・・父上が！？」
[p]
#	
[playbgm storage="op_musmus.ogg"]																							
#&f.name	
「・・･自分に逆らう人たちを、容赦なくって・・・追われてきたセレさんが・・・」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
#ランスロット	
「なんだと・・・」[p]
#																								
																									
#&f.name	
「ランスロットは、
[rans_exp_normal]
知らなかったの？」[p]
#																								

[rans_head_left_z]
[rans_eyes_left]
																									
#ランスロット	
「一月ほど前、父上から突然エルムナード関所への駐留を命じられて、
[rans_head_normal]
[rans_head_under_y]
[rans_eyes_normal]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
陛下がエルムナードをクレール領にしたがっているからといわれていたのだが・・・」[p]
#																								


[rans_exp_kunou]																									
#ランスロット	
「私のいない間に、王宮がそんなことに・・・」[p]
#																								
#&f.name	
「ウェルム団長は、どうして・・・陛下を・・・。魔剣ヴァエルを、手に入れたせいで・・・？」[p]
#
[rans_eyes_left]																								
#ランスロット	
「・・・・・・・」[p]
#																								
																									
#&f.name	
「・・・ランスロット？」[p]
#																								

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]																									
#ランスロット	
「・・・詳しい動機はわからない。
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]																								
	だが、自らの身分も顧みず、王家に反乱を起こすなど・・・到底許されるような行為ではないことは確かだ」[p]
#																								
#&f.name
「う・・・うん・・・」[p]
#
[rans_eyes_right]
[rans_head_right_x]
[w]
[rans_eyes_left]
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]																								
#&f.name	
「・・・父上・・・」[p]
#																								
																									
[fadeoutbgm time=3000]																									
#&f.name	
（ランスロット・・・）[p]
#																								

[rans_head_normal]
[rans_eyes_normal]																									
#ランスロット	
「とにかく、ライオネスたちはもう王都近くまで来ているということなんだな」[p]
#																								
																									
#&f.name	
「うん・・・王都に向かう途中、追われてたセレさんを助けて、船に戻ったはずだと思うんだけど・・・」[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]																									
#ランスロット	
「・・・・・・・」[p]
#

[rans_exp_metoji]
#ランスロット
「戦闘に集中するのは大切なことだが、それでこの結果では、あまり褒められたものではないな」[p]
#

#&f.name	
（・・・うう・・・）[p]
#																								

[rans_mod_idle]
[rans_exp_komari_warai]	
[rans_head_right_z]																								
#ランスロット	
「まあいい。そんな顔をするな・・・お前はまだまだこれからだろう？」[p]
#

[rans_exp_normal_warai]
[rans_head_normal]
[rans_unaduki]
#&f.name	
「ランスロット・・・」[p]
#																								

[rans_exp_metoji_warai]																									
#ランスロット	
「森の中で迷ってしまったにしろ、怪我もほとんどないようだし・・・
[rans_exp_normal_warai]
実力は王宮騎士たちにひけをとらないほどなのだろう」[p]
#

[rans_body_left_z_half]
[rans_arms_kosinite_left_sitahuku]
[rans_head_right_z]
#&f.name	
「そう、なのかな・・・」[p]
#																								

[rans_head_left_x]
[rans_eyes_left]																							
#ランスロット	
「ああ。少しの間で、ずいぶんと成長したようだ、
[rans_head_normal]	
[rans_eyes_normal]
[rans_exp_mihiraki]
な・・・・[w][w]
[rans_arms_normal]
[rans_body_normal]
[rans_exp_normal]																								
	・・・・・・・・？」[p]
#																								
																									
#&f.name	
（・・・？どうしたんだろ・・・）[p]
#

#&f.name	
「・・・・・・・・・。・・・・・えと・・・ランスロット・・・？どう、したの・・・？」[p]
#																								


#ランスロット	
「・・・・・・・・・・。
[rans_head_left_z]
お前・・・首をどうした？」[p]
#																								
#&f.name	
「！！」[p]
#

[rans_head_normal]
[rans_head_left_x]
[rans_eyes_left]
#ランスロット	
「さっきからずっと、手で押さえているようだが・・・
[rans_head_normal]
[rans_eyes_normal]
怪我でもしたのか」[p]
#

#&f.name	
「そ、れは・・・」[p]
#

[rans_head_right_x]
[rans_eyes_right]
[rans_body_right_z_half]
#ランスロット	
「怪我なら、手当てを・・・」[p]
#

#&f.name	
「そ、そういうわけじゃ・・・」[p]
#

[rans_head_normal]
[rans_body_normal]
[rans_eyes_normal]
#ランスロット	
「？」[p]
#																								
																																																		
#&f.name	
「な、なんでもないから、ちょっと寝違えたっていうか・・・だから、気にしないで！」[p]
#

#ランスロット	
「・・・・・・」[p]
#																								
																									
																																																		
#&f.name	
（・・・クライストさんにき、キスされたなんて・・・・言えないよ・・・）[p]
#																								

[rans_exp_mehuse]
[rans_head_under_y]
[w]
[rans_head_normal]	
[live2d_fadeout time=50]

[live2d_rans_mod_sekkin_2]
[live2d_fadein time=1000]
;	ランス手首をつかんでひく
[rans_head_right_z]
[camera time="300" x="0" y="-30" zoom="1.2"]
[playse storage="tukamu_onjin.ogg"]
[w]
[playse storage="huku1_koukaonlabo.ogg"]																								
#&f.name	
「あっ・・・」[p]
#
[rans_mod_idle_no_move]
[rans_head_normal]																								
[rans_exp_mihiraki_aseri]																									
#ランスロット	
「・・・・・・・・・・・・！」[p]
#	
#&f.name	
「っ・・・」[p]
#
[fadeinbgm storage="kokusei_musmus.ogg" time=3000]	
[playse storage="huku1_koukaonlabo.ogg"]
[reset_camera]
[rans_exp_mihiraki_aseri]																									
#ランスロット	
「・・・なんだ・・・これは・・・」[p]
#																								
																									
#&f.name	
「あ、あのね、虫にさされちゃって・・・それで・・・」[p]
#
[rans_mod_idle]
[rans_exp_normal]																								
#ランスロット	
「嘘をつくな」[p]
#																								
#&f.name	
「！」[p]
#																								
[fadeoutbgm time=3000]																									
;	さっきつかんだ手首は離してくれない。触れたこともある彼の掌なのに、全くの他人のような気がしてドキリとした。																								
[rans_exp_mehuse]
[w]
[rans_exp_normal]																									
#ランスロット	
「誰にやられた？」[p]
#																								
#&f.name	
「っ・・・」[p]
#																								

#&f.name
（誰に・・・って・・・そんなの・・・言えないよ・・・）[p]
#

#&f.name	
「ら、ランスロットには関係ないじゃない・・・べ、別に怪我ってわけじゃないし・・・」[p]
#

[rans_eyes_left]
[rans_eyes_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[rans_head_under_y]
#ランスロット	
「・・・・・・・・」[p]
#																								
#&f.name	
（ランスロット・・・）[p]
#

[playse storage="huku1_koukaonlabo.ogg"]
[live2d_rans_mod_sekkin]
[rans_exp_metoji]																									
#ランスロット	
「・・・そうだな」[p]
#																								

[rans_exp_kunou]																									
#ランスロット	
「・・・詮索してすまなかった」[p]
#																								
#&f.name	
「・・・ランスロット・・・」[p]
#	

[rans_mod_idle]
[rans_eyes_normal]
[rans_head_right_x]
[rans_exp_normal]
[rans_eyes_left]
#ランスロット	
「お前はもう私の手を離れている・・・私が口を出すべきことではなかったな」[p]
#																								


#&f.name	
「・・・・・・」[p]
#	

[rans_mod_idle_no_move_mehuse]
[rans_eyes_normal]
[rans_exp_mehuse]
[rans_head_normal]
[rans_head_under_y]	
[w]																								
#ランスロット	
「・・・・・・。
[rans_head_normal]
[rans_exp_normal]
ともかく、お前は一度船に戻ったほうがいいだろうな。ライオネスたちも心配しているだろう」[p]
#																								
#&f.name	
「・・・・・・う、うん・・・・・・」[p]
#																								


[rans_unaduki]
#ランスロット	
「私も、詳しい話を聞きたいしな。
[rans_head_right_x]
[rans_eyes_right]
明日、船まで送っていこう」[p]
#																								
#&f.name	
「で、でも場所、わかるの？」[p]
#																								

[rans_head_normal]
[rans_eyes_normal]																									
#ランスロット	
「・・・王都の海岸近くに定期船ではない船が停泊していると報告を受けた。おそらくそれだろう」[p]
#	
[rans_unaduki]																							
#&f.name	
「そ、そっか・・・」[p]
#																								

[rans_exp_metoji]
[rans_mod_idle_no_move_metoji]																									
#ランスロット	
「それじゃあ、今日はゆっくり休んで、疲れを癒せ」[p]
#																								
#&f.name	
「わ、わかりました・・・」[p]
#	

#&f.name	
（・・・・・・）[p]
#	

[rans_mod_idle]
[rans_exp_normal]
[rans_unaduki]
[live2d_fadeout time=1000]																								
																									

[anten]	


;	翌朝。																								
;	甲板

[live2d_hide name="rans2"]

[live2d_kra_touroku]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[bg storage="kanpan_tasogare.jpg"]
[playbgm storage="umi_onjin.ogg"]


[lioness_tatie_touroku]
[chara_show name="lion" storage="lion_tatie/Idle_gif_odoroki.gif" height="698" width="456" top=-35 left=-40]
#ライオネス	
「[name]！！お前無事だったか・・・って・・・兄貴！？」[p]
#
[rans_tatie_touroku]
[rans_tatie_show_right]																								
#ランスロット	
「久しぶりだな、ライオネス。息災なようで何よりだ」[p]
#																								
																									
#&f.name	
「ライオネスたちとはぐれたときに、ちょうどエルムナードの関所にランスロットがいて・・・」[p]
#																								

[lioness_tatie_kimazui]																									
#ライオネス	
「そうだったのか・・・だいたい、話は聞いたのか？」[p]
#
[rans_tatie_mehuse]																								
#ランスロット	
「ああ・・・父上が魔剣を手に入れたことも」[p]
#																								

[lioness_tatie_otikomi]																									
#ライオネス	
「親父・・・」[p]
#
[rans_tatie_normal]																								
#ランスロット	
「王族を抹殺し、反抗する者たちを手にかけているというのは本当なのか」[p]
#																								

[lioness_tatie_kosinite]																									
#ライオネス	
「・・・・ああ・・・・。王宮から命からがら逃げてきたセレが話してくれた」[p]
#

#&f.name	
（そういえば、セレさんは・・・）[p]
#																								
																									
#&f.name	
「セレさん、大丈夫なの？」[p]
#

[lioness_tatie_udekumi]
#ライオネス	
「トリスタンが面倒見てる。命に別状はねえみたいだ」[p]
#	

#&f.name	
「よ、よかったあ・・・」[p]
#																								

[rans_tatie_metoji]																									
#ランスロット	
「・・・そうか。しかしともかくは、早急にこちらも準備にかからなくてはな・・・」[p]
#																								
#&f.name	
「え・・・ランスロット、準備って・・・」[p]
#

[rans_tatie_normal]
#ランスロット	
「お前たちは父上を止めるつもりなのだろう。それは私も同じ思いだ」[p]
#

[rans_tatie_mehuse]	
#ランスロット																							
「	・・部下たちには厳しい選択を迫らなくてはならないだろうが・・・」[p]
#																								
																									
																									
[lioness_tatie_otikomi]																									
#ライオネス	
「・・・止める、か。そんな生易しいもんですむなら、そうしてえとこだけどな・・・」[p]
#																								
#&f.name	
（・・・そうだ・・・ヴァエルを封印するには、まず宿主を倒さなきゃ・・・ならない）[p]
#																								
#&f.name	
（・・・ランスロットとライオネスのお父さん・・・ウェルム団長を・・・）[p]
#	

[rans_tatie_normal]
#ランスロット	
「どういう意味だ？ライオネス」[p]
#	
[lioness_tatie_normal]																							
#ライオネス	
「・・・前に、話しただろ、兄貴。ヴァエルのことをよ・・・」[p]
#																								

[chara_hide_all time=50]

[live2d_fadein time=50]																							
#クライスト	
「ヴァエルを倒すためには、宿主でもあるウェルム団長を倒さなくちゃいけない」[p]
#																								
																																																		
#&f.name	
「！・・・クライストさん・・・」[p]
#
[aho_face_bisyou_youen]																								
#クライスト	
「[name]ちゃん、無事だったんだ。心配したよ？途中ではぐれたって聞いたからさ」[p]
#																								
#&f.name	
「っ・・・」[p]
#																								

[aho_face_yareyare]																									
#クライスト	
「そんなつれなくしなくても、いいのに」[p]
#

[live2d_fadeout time=50]
[rans_tatie_show_right]
#ランスロット	
「・・・クライスト・・・どういうことだ・・・。父上を手にかけるとは・・・」[p]
#	
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40]
																							
#ライオネス	
「・・・・・・・・・・・」[p]
#																								

[chara_hide_all time=50]
[aho_face_normal]
[live2d_fadein time=50]


[stopbgm]
[fadeinbgm storage="yamidoukutu_ontama.ogg" time=4000] 

#クライスト	
「魔剣ヴァエルは古代魔族が魔力を結晶化して作ったもの」[p]
#

[aho_head_under_y]
[aho_face_mehuse]
#クライスト
「彼らを迫害する発端となった『クレール王国』を滅ぼすために。																								
ヴァエル自身が持ち主を手に入れ、王国を滅亡に導こうとしている」[p]
#

[live2d_fadeout time=50]
[chara_show name="rans" storage="&f.rans_sinkoku" top=1 left=0]

#ランスロット	
「・・・では・・・つまり・・・父上は・・・」[p]
#																								
[chara_hide_all time=50]
[aho_head_right_z]
[aho_face_akireru]
[live2d_fadein time=50]
#クライスト	
「ウェルム団長は、その『宿主』に選ばれたわけだね。
[aho_head_normal]
[aho_face_normal]
おそらく、変な野心でも持ってたんじゃない？」[p]
#

[live2d_fadeout time=50]
[chara_show name="rans" storage="&f.rans_kunou" top=1 left=0]

#ランスロット	
「・・・・・・・・」[p]
#	


#&f.name	
（ランスロット？）[p]
#																								
[chara_hide_all time=50]
[aho_face_metoji]
[live2d_fadein time=50]																									
#クライスト	
「精神体であるヴァエルは宿主の体によって守られている。自らを剣として具現化し、力を与えてね」[p]
#

[aho_face_yokome]
#クライスト	
「だから宿主を殺して、ヴァエルを出現させて、どっか行っちゃわない内に封印する必要があるわけ」[p]
#
[live2d_fadeout time=50]
[chara_show name="rans" storage="&f.rans_mehuse" top=1 left=0]

#ランスロット	
「・・・封印・・・」[p]
#																								
;	#クライスト強気笑い	

[chara_hide_all time=50]
[aho_face_bisyou_youen]
[live2d_fadein time=50]
#クライスト	
「俺の魔剣アグレアスにヴァエルを封じ込める。ここにはいないけど、強力な助っ人の力を借りて」[p]
#

[live2d_fadeout time=50]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]


#ライオネス	
「・・・その封印ってやつをするためには・・・親父を・・・その・・・」[p]
#																								
[fadeoutbgm time=5000]
[chara_hide_all time=50]
[aho_face_normal]
[live2d_fadein time=50]
#クライスト	
「無理やり戦う必要はないと思うよ。
[aho_face_yareyare]
俺だって一人でもヴァエルには負けるつもりはないし」[p]
#																								
#&f.name	
（クライストさん・・・）[p]
#

[live2d_fadeout time=50]
[chara_show name="rans" storage="&f.rans_kunou" top=1 left=300]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40]

#ランスロット	
「・・・・・・・・・・・・・」[p]
#																								
#&f.name	
（ランスロット・・・・）[p]
#																								

[rans_tatie_metoji]																									
#ランスロット	
「・・・・そうか・・・・・。命を奪わずに、ということも考えてはいたが・・・確実に手を下さなくてはならない、そういうことだな」[p]
#	
[rans_tatie_normal]																							
#ランスロット	
「わかった。・・・残念なことだが、王族を手にかけたとなれば、本来なら死刑もまぬがれないことだ」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「あ、兄貴・・・」[p]
#	
[chara_hide_all time=50]
[aho_face_akireru]
[aho_arms_udekumi]
[live2d_fadein time=50]																																																
#クライスト	
「・・・・・・傍観者でいるつもりはない、ってこと、か。まあいいよ。それを君が選ぶのなら」[p]
#																								

[live2d_fadeout time=50]
[chara_show name="rans" storage="&f.rans_metoji" top=1 left=300]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40]
#ランスロット
「隊を再編成する必要がある。早急に関所へ戻りたいところだが・・・」[p]
#
[lioness_tatie_normal]																							
#ライオネス	
「それなら、ラプタに乗ってけ。今あいつ寝てるけど、そろそろ起きるころだから・・・」[p]
#																								

[rans_tatie_normal]																									
#ランスロット	
「翼竜か。わかった。それなら、甲板で待たせてもらう」[p]
#	

[chara_hide_all time=50]
[aho_face_normal_majime]
[live2d_fadein time=50]
#クライスト	
「・・・・・・」[p]
#																								
[aho_face_yareyare]

[live2d_fadeout time=1000]																									
#&f.name	
（・・・・・・ランスロット・・・・）[p]
#																								
																									
																									
[live2d_kra_touroku]
[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_eyes_agureasu]
[live2d_fadeout time=50]																									
[bg storage="hune_souko_tasogare.jpg"]
[playse storage="gasagasa_koukaonlabo.ogg"]
[fadeoutse time=4000]																									
																									
#&f.name	
（・・・準備、万全にしていかないと・・・これとこれと・・・あ、これもいるかな・・・）[p]
#																								
#&f.name	
「あんまりいっぱい持ってはいけないから、選んでいかないと・・・でも難しいな・・・」[p]
#																																																	
																																																
																																																																					
#&f.name	
（･･･ライオネス・・・ランスロットも・・・大丈夫なのかな・・・相手は、ウェルム団長なんだものね・・・）[p]
#																								
#&f.name	
「・・・・」[p]
#																								
																									
																									
#&f.name	
（私が心配しても、仕方のないことなんだろうけど・・・でも・・・）[p]
#																								
#&f.name	
「・・・・・・」[p]
#


;	暗転																								
;	甲板																								
[anten]

[bg storage="kanpan_tasogare.jpg"]
[walkyuka]
#&f.name
（道具、これでいいかな・・・一度ライオネスたちにも確認して・・・）[p]
#																								
;	#ランスロット、#ライオネス	

[rans_tatie_show_right]
[lioness_tatie_show_left]
#&f.name	
（あれ・・？まだ、関所に帰ってなかったんだ・・・）[p]
#	
[rans_tatie_ikari]																							
#&f.name	
「・・・・？」[p]
#
[lioness_tatie_kimazui]	
																							
#&f.name	
（あれ、なんか、ライオネスと言い合ってる・・・？）[p]
#																								

#ランスロット	
「近づけさせるなとあれほど言っていただろう！」[p]
#																								
																									
[lioness_tatie_akireru]																									
#ライオネス	
「仕方ねえだろうが・・・
[lioness_tatie_chottoikari]
俺だって四六時中あいつにくっついてるわけにはいかねんだよ！」[p]
#

[rans_tatie_mehuse]
#ランスロット	
「それでも・・・」[p]
#																								

[lioness_tatie_kosinite]																									
#ライオネス	
「・・・それに・・・俺はよくわかんねえが、[name]のやつだってあいつのことが好きなのかもしんねえ」[p]
#

[rans_tatie_sinkoku]
#ランスロット	
「・・・・・」[p]
#																								

[lioness_tatie_udekumi]																									
#ライオネス	
「そしたら、誰にも止める権利なんかねえだろ」[p]
#

[rans_tatie_ikari]
#ランスロット	
「そうでも、あいつは危険だ」[p]
#																								

[lioness_tatie_yareyare]																									
#ライオネス	
「・・・・・・」[p]

;#困ったように頭をかく


#&f.name	
（・・・あいつって・・・もしかして、クライストさんのこと・・・？）[p]
#																								
[chara_hide_all time=50]
[live2d_fadeout time=50]
[playse storage="step05_macchi.ogg"]
[live2d_fadein time=1000]																									
#クライスト	
「あれ？面白いことになってるね」[p]
#																								
#&f.name	
「！」[p]
#																								
																									
[aho_face_komari]	
[aho_head_right_z]																								
#クライスト	
「・・・冷たいなあ、逃げることないのに」[p]
#

#&f.name	
「・・・・・・っ」[p]
#

[aho_head_normal]
[aho_face_mehuse_warai]
#クライスト	
「そんなに警戒しなくても、何もしないよ」[p]
																								
[aho_face_normal]																									
#クライスト	
「・・・こないだは・・・いきなりごめんね」[p]
#

#&f.name	
「え・・・」[p]
#																								
[aho_face_bisyou_youen]																									
#クライスト	
「・・・跡・・・まだ残ってるね」[p]
#

[playse storage="huku1_koukaonlabo.ogg"]
[live2d_kra_mod_sekkin]
;#&f.name	つぶやきながら#クライストが私の首に指を伸ばす・・・そのとき。																								
[fadeinbgm storage="kokusei_musmus.ogg" time=5000]
#ランスロット
「[name]に触るな」[p]
#
[aho_eyes_left]
[live2d_hide name="aho"]																								
[live2d_rans_show]
;#クライスト	厳しい声がその場をさえぎった。																								
																									
#&f.name	
「ランスロット・・・」[p]
#																								

[live2d_hide name="rans2"]
[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35]

#ライオネス	
「おい・・・お前らまさか本当に・・・」[p]
#																								
#&f.name	
「ちっ・・・ちがっ・・・」[p]
#																								
;	#クライスト接近	

[chara_hide_all time=50]
[live2d_kra_show_sekkin_2]
[aho_face_bisyou_youen]
[aho_head_right_z]
[camera time="300" x="0" y="-30" zoom="1.5"]
#&f.name	
「きゃっ・・・」[p]
#																								
#クライスト	
「そんなつれないこと言わなくてもいいのに」[p]
#																								
#&f.name	
「・・・や・・・やだ・・・」[p]
#
[playse storage="huku1_koukaonlabo.ogg"]
[aho_head_normal]
[aho_face_mihiraki]
[reset_camera]
[live2d_mod name="aho" y=-1.8 x=0.0 scale=4.2]
[live2d_hide name="aho"]

[live2d_rans_show_sekkin]
[rans_exp_ikari]
#ランスロット	
「クライスト！」[p]
#																								
#&f.name	
「ランスロット！」[p]
#																								
#ランスロット	
「・・・触るなと言ったはずだが」[p]
[live2d_hide name="rans2"]

[live2d_kra_show_1]
[aho_face_mehuse]
																							
																									
#クライスト	
「剣の師匠が、弟子の色恋にまで口を出すんだ？」[p]
#

[live2d_hide name="aho"]
[live2d_rans_show_sekkin]

[rans_exp_metoji]
#ランスロット	
「・・・[name]は８歳のときから私が面倒を見てきた。
[rans_exp_yokome]
親ではないが、保護者としての責任はある」[p]
#	
[rans_exp_normal]																							
#&f.name	
（ランスロット・・・）[p]
#

[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_face_akireru]	
[aho_arms_udekumi]
[live2d_fadein time=50]
	
																					
#クライスト	
「『ホゴシャ』ねえ・・・」[p]
#																								

;	#ライオネスあきれたかお	

[aho_head_under_y]
[aho_face_yokome]																							
#クライスト	
「『言い訳』にしては、あまりにも陳腐すぎる気もするけど」[p]
#	
[live2d_fadeout time=50]
[live2d_hide name="aho"]

[live2d_rans_show_sekkin]
[rans_exp_ikari]
[live2d_fadein time=50]

#ランスロット	
「なんだと？」[p]
#	

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_head_normal]
[aho_face_yareyare]
[live2d_fadein time=50]
#クライスト	
「気を悪くしたらごめん。だけどさ、俺には体のいい言い訳にしか思えなくて」[p]
#	
[live2d_fadeout time=50]
[chara_show name="lion" storage="&f.lion_udekumi" height="698" width="456" top=-35]

#ライオネス	
「・・・・・・・・だな」[p]
#																								
[chara_hide_all time=50]
[live2d_hide name="aho"]
[live2d_rans_show_sekkin]
[rans_exp_metoji]
[live2d_fadein time=50]

#ランスロット	
「・・・・・・・・。・・・確かに、本来私が口を出すようなことではないかもしれないな」[p]
#	
[rans_exp_yokome]
#ランスロット	
「だが、相手がお前となれば話は別だ」[p]
#																								
[live2d_fadeout time=50]
[live2d_hide name="rans2"]

[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_head_normal]
[aho_face_normal]
[live2d_fadein time=50]																									
#クライスト	
「そんなに俺が、気に入らない？」[p]
#

[live2d_fadeout time=50]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]

#ランスロット	
「・・・・・・」[p]
#																								
[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_head_left_z]
[aho_face_yareyare]
[live2d_fadein time=50]																									
#クライスト	
「これは大変だね。君にいちいち気に入られなきゃ、[name]ちゃんには触れることもできないわけだ」[p]
#	

[live2d_fadeout time=50]
[live2d_hide name="aho"]
[live2d_rans_show_sekkin]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
[live2d_fadein time=50]

#ランスロット	
「・・・特にお前はな」[p]
#																								

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[aho_head_normal]
[aho_face_normal_majime]
[live2d_fadein time=50]

#クライスト	
「ライオネス、君も大変だねー。[name]ちゃんの番犬がわりにされちゃってさ」[p]
#
[live2d_fadeout time=50]
[live2d_hide name="aho"]
[fadeoutbgm time=5000]

[chara_show name="lion" storage="&f.lion_udekumi" height="698" width="456" top=-35]
#ライオネス	
「全くだ」[p]
#																								
																									
#ライオネス	
「・・・そんなに大切なら、なんでウェスタ行きを許したんだよ」[p]
#

[chara_hide_all time=50]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]

#ランスロット	
「ライオネス・・・」[p]
#
[live2d_fadeout time=50]
[chara_show name="lion" storage="&f.lion_udekumi" height="698" width="456" top=-35]
[lioness_tatie_normal]																								
#ライオネス	
「俺なら・・・絶対離したりしねえ。いつでも近くにいて、自分の手で守ってやりたいと思う。																									
 [lioness_tatie_chottoikari]
    兄貴、てめえみたいな真似はしねえよ」[p]
#

[chara_hide_all time=50]
[rans_exp_mehuse]
[rans_head_under_y]
[live2d_fadein time=50]


#ランスロット	
「・・・・・・・・」[p]
#	
[live2d_fadeout time=50]
[chara_show name="lion" storage="&f.lion_kimazui" height="698" width="456" top=-35]																								
#ライオネス	
「・・・・・。ラプタの調子、見てくる」[p]
#
[walkyuka]
[fadeoutse time=4000]
[chara_hide name="lion" time=50]

#&f.name	
（・・・ライオネス・・・）[p]
#

[rans_exp_mehuse]
[live2d_fadein time=50]
#ランスロット	
「・・・・・・・・」[p]
#																								

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[live2d_fadein time=50]

#クライスト	
「あくまでも、自分の気持ちを認めないばかりか、理由をつけて[name]ちゃんを縛り付けておくわけだ」[p]
#

[live2d_fadeout time=50]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]

#ランスロット	
「縛り付けるつもりはない。ただ、あんなふざけた真似をするお前が私は許せないだけだ」[p]
#

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_fadein time=50]
																									
#クライスト	
「へえ・・・。キスの跡がそんなにショックだったってこと」[p]
#																								
[live2d_fadeout time=50]
[live2d_hide name="aho"]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]

[rans_exp_metoji]
#ランスロット	
「・・・なんとでも言え。
[rans_exp_ketui]
ともかく、これ以上[name]には近づくな」[p]
#	

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[live2d_fadein time=50]

#クライスト	
「・・・・・・・・どうするつもり？ライオネスはもう協力してくれなさそうだよ？」[p]
#
[live2d_fadeout time=50]
[live2d_hide name="aho"]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]


#ランスロット	
「[name]は、
[rans_head_right_x]
私のもとに連れて行く」[p]
[rans_head_normal]
#																								
#&f.name	
（ランスロット・・・）[p]
#																								
[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[live2d_fadein time=50]

#クライスト	
「・・・・ずいぶん勝手な言い草だね」[p]
#
[live2d_fadeout time=50]
[live2d_hide name="aho"]
[live2d_rans_show_sekkin]
[live2d_fadein time=50]
[rans_exp_ikari]

#ランスロット	
「・・・お前のようなやつの近くに彼女は置いて置けない」[p]
#																								

[live2d_fadeout time=50]
[live2d_hide name="rans2"]
[live2d_kra_show_1]
[aho_eyes_agureasu]
[live2d_fadein time=50]

																								
																									

;[aho_face_yareyare]
;#クライスト	
;「・・・・・やれやれ。大した過保護っぷりだ。まあ、好きにすれば」[p]


[aho_face_yareyare]
#クライスト	
「・・・・・だってさ。																								
	[name]ちゃん、どうする？」[p]
#
[live2d_fadeout time=1000]

;[jump storage="scenario_2/sentaku.ks" target=*choice133]

;	a#ランスロットについて関所にいく																								
;	ｂ船にとどまる																								
;a


[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【・・・・・】

[glink target=*rans_last_1 text="（ランスロットについて関所にいく）" size=17 width=600 x=65 y=200]
[glink target=*rans_last_2 text="（船にとどまる）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*rans_last_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.rans_last_ok=1"]
[jump target=*rans_last]



*rans_last_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


[anten]


*rans_last

[if exp="f.rans_last_ok!=1"]
[bg storage="kanpan_tasogare.jpg"]

[aho_arms_normal]
[aho_face_bisyou_youen]
[live2d_fadein time=1000]
#クライスト
「･･･てっきり、あの堅物についていくのかと思ったけど」[p]
#

#&f.name
「クライスト･･･さん」[p]
#
[aho_head_right_z]
[aho_face_yokome_majime]
#クライスト
「･･･意外だったな」[p]
#
[aho_head_normal]
[aho_face_normal_majime]
#&f.name
「･･･････」[p]
#

[aho_arms_udekumi]
[aho_head_left_z]
[aho_face_bisyou_youen]
#クライスト
「･･･案外、こないだの夜のことが忘れられなかったから、とか？」[p]
#
#&f.name
「っ･･･そ、そんなわけじゃっ･･･勘違いしないで！」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_face_normal_majime]
#クライスト
「そんなに真っ赤になって否定されても、信じるのは難しいよ？」[p]
#
#&f.name
「だからそんなんじゃ･･･」[p]
#
#&f.name
（･･･どうしてクライストさん、いきなりこんなこと･･･）[p]
#

;だけどクライストはそのきれいな顔に笑みを貼り付けたまま、こちらに近づいてくる。
[walkyuka][fadeoutse time=3000]
[aho_arms_normal]
[live2d_kra_mod_sekkin_2]
[aho_face_bisyou_youen]
#クライスト
「･･･もうちょっと素直になればいいのに」[p]
#
#&f.name
「だから、違うって･･･」[p]
#
[aho_face_yokome_majime]
[aho_face_bisyou_youen]
[camera time="300" x="0" y="-30" zoom="1.2"]
[playse storage="huku_koukaonlabo.ogg"]
;そのまま手を伸ばし、私の頬に触れようとして―。
#&f.name
「やっっ･･･」[p]
#
[reset_camera]
[live2d_fadeout time=50]
[playse storage="yukahasiru_onjin.ogg"]
[fadeoutse time=5000]
[aho_face_mehuse]
[live2d_fadein time=50]
[aho_face_mehuse]
#クライスト
「･･･････」[p]
#
[live2d_fadeout time=1000]
[anten]
[live2d_rans_touroku]
[live2d_rans_show]
[rans_exp_mehuse]
[live2d_fadein time=1000]
[bg storage="miti_tasogare.jpg"]
;ランスロットいる
#&f.name
「･･･ランスロット･･･」[p]
#
[rans_exp_mihiraki]
[live2d_fadeout time=50]
[tutihasiru]

[live2d_rans_mod_sekkin_2]
[live2d_fadein time=1000]
[rans_exp_sinpai]
#ランスロット
「[name]･･･！？どうした･･･」[p]
#
[rans_body_right_z_half]
;ランスロット駆け寄る
#&f.name
「ぐすっ･･･ひっく･･･」[p]
#
[rans_body_normal]
[rans_exp_komari]
#ランスロット
「[name]･･･」[p]
#
#&f.name
「私･･･やっぱり･･･[w][w]一緒に、いく･･･」[p]
#
[rans_exp_sinpai]
[rans_head_right_x]
[rans_head_normal]
#ランスロット
「･････････」[p]
#

#&f.name
（･･･どうして･･･クライストさん、急にあんなふうに･･･）[p]
#
#&f.name
（あんな、強引にそんなことする人じゃないって、思ってた、のに･･･）[p]
#
#
#&f.name
（もう会いたくない。顔も見たくない・・・）[p]
#
#&f.name
（思い出したくも、ない･･･）[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット
「･･･[name]･･･」[p]
#
[live2d_fadeout time=1000]
[else]
;	a																								
;	暗転


[live2d_fadeout time=1000]

[anten]

[live2d_rans_touroku]
[live2d_rans_show_sekkin]

[bg storage="erumusekisho_hare_tasogare.jpg"]

[live2d_fadein time=1000]
#ランスロット	
「・・・・・・・。
[rans_mod_idle_no_move_mehuse]
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse]
・・・その・・・[name]、すまない・・・」[p]
#																								
																									
#&f.name	
「ランスロット？」[p]
#	

[rans_exp_metoji]
#ランスロット	
「私の判断で、お前を無理やりに連れてきたようなものだな」[p]
#																								
#&f.name	
「・・・そんなこと・・・」[p]
#																								
																									

[rans_head_normal]
[rans_exp_kunou]																								
#ランスロット	
「・・・・すまない・・・どうしても・・・・・・。お前のことが心配だった」[p]
#																								
#&f.name	
「ランスロット・・・・・・・」[p]
#																								

[rans_exp_metoji]
[rans_head_normal]
[rans_exp_normal]																									
#ランスロット	
「・・・あいつのことが・・・・」
[rans_exp_mehuse]
[p]
#																								
#&f.name	
「え？」[p]
#
[rans_mod_idle]
[rans_exp_sinpai]																								
#ランスロット	
「・・・あいつのことが･･･好きなわけでは・・・ないんだろう？」
[rans_head_under_y]
[rans_exp_mehuse_mousiwakenai]
[rans_mod_idle_no_move_mehuse]
[p]
#																								
																									
																									
#&f.name	
「･・・・・・・・・・・・・・・・・」[p]
#																								
																									
																																																		
                                                                                                                                                                                                            
#&f.name                                                                                                                                                                                                           
「・・・もし、そうだったら・・・ここには、きて、ないよ・・・」[p]
#																								
;	目を逸らす	

[rans_head_left_x]
[rans_eyes_left]
#ランスロット	
「・・・・・・・そうか・・・。
[rans_exp_metoji]
すまない、愚問だったな」[p]
#
[live2d_fadeout time=1000]
[tutiaruku]

#&f.name	
「・・・・・」[p]
#
[stopse]
;	#ランスロット立ち去る																								
[endif]																									
																									
																									
[playse storage="zawameki_situnai.ogg"]																									
[bg storage="sekishonaka_tasogare.jpg"]																									
																									
																									
;	ざわざわ

#騎士
「ウェルム団長が・・・謀反だって・・・！？本当なのかよ・・・」[p]
#
#騎士
「まさかあの団長が・・・」[p]
#

[ector_tatie_touroku]
[ector_tatie_show]
#エクター
「静まれ！！無駄口を叩くな！！！静粛に！！」[p]

[stopse]
[live2d_rans_mod_sekkin]
[rans_head_under_y]
[rans_exp_mehuse]
[live2d_fadein time=1000]
[playbgm storage="shuuen_musmus.ogg"]
#ランスロット	
「・・・私の言うことを、到底信じられない者も当然いるだろう。だが・・・残念ながら真実だ」[p]
#
[rans_head_normal]	
[rans_exp_normal]																						
#ランスロット	
「・・・さまざまな思いが諸君にあるだろうが・・・もし、私の言葉を疑う者がいるのなら、それはそれで構わない」[p]
#	
[playse storage="zawameki_situnai.ogg"]																								
#&f.name	
（ランスロット・・・！？）[p]
#	

[ector_tatie_mehuse]
#エクター	
「・・・」[p]
#																								
																									
[rans_exp_mehuse]																									
#ランスロット	
「本来ならば・・・我々は騎士団長の命に従うべきなのだろう」[p]
#	
[rans_exp_normal]																							
#ランスロット	
「だが・・・私は陛下を手にかけたウェルム団長を、許すことはできないと思っている」[p]
#																								
																									
																									
																									
#&f.name	
（・・・・・・っ・・・・・）[p]
#																								

[rans_eyes_left]																									
#ランスロット	
「諸君らには、私の命令を無理強いするつもりはない。
[rans_eyes_normal]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
だが、もしも従ってくれる者がいるのなら・・・」[p]
#	

#隊員	
『隊長・・・』	[p]
#																							
[fadeoutse time=4000]
[rans_mod_idle]																								
[rans_exp_normal]
[rans_head_normal]
[rans_unaduki]																									
#ランスロット	
「出発は、明朝だ。夜明けとともに王都へ向かう。
[rans_exp_ketui]
出立する者は門前に整列するように」[p]
#
[rans_exp_mehuse]																								
#ランスロット	
「・・・以上だ。
[rans_exp_metoji]
エクター、あとは頼む」[p]
#	
[ector_tatie_metoji]																							
#エクター	
「了解しました」[p]
#																								
[fadeoutbgm time=1000]																									
[chara_hide_all]
[live2d_fadeout time=1000]																									
																									
																									

[anten]
[bg storage="sekishonaka_tasogare.jpg"]
[playse storage="zawameki_situnai.ogg"]																									
																									
#&f.name	
（・・・結局みんな・・・ランスロットについていくことにしたんだ・・・）[p]
#

#&f.name	
（・・・ウェルム団長よりも、ランスロットに・・・）[p]
#																								
[fadeoutse time=8000]																																																																										
#&f.name	
「って、考え事してる場合じゃない、私も装備の点検しないと・・・」[p]
#																								
																									
#&f.name	
（鍛冶屋さんにも行けなかったしなあ・・・剣、大丈夫かな・・・）[p]
#																								
#&f.name	
「一見、大丈夫そうには見えるんだけど・・・」[p]
#																								

[rans_exp_normal]
[rans_mod_idle]
[live2d_fadein time=1000]																									
																									
#ランスロット	
「[name]」[p]
#	

#&f.name	
「あ、ランスロット」[p]
#																								
;	略ふく姿																								
																									
[rans_body_left_z_half]
[rans_arms_kosinite_right]	
[rans_exp_normal_warai]																																																	
#ランスロット	
「・・・双剣の調子か？」[p]
#																								
#&f.name	
「う、うん・・・双剣見てくれる鍛冶屋さんなんてなかなかないし・・・そんな余裕もなかったから」[p]
#																								
#&f.name	
「大丈夫かなって・・・」[p]
#																								
																									
[rans_body_normal]
[rans_arms_normal]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
[rans_head_left_x]
[rans_head_under_y]																									
#ランスロット	
「それなら、私がみてやろう」[p]
#	
[playse storage="kenchousei_koukaonlabo.ogg"]																							
#&f.name	
「・・・えっ、大丈夫？忙しいんじゃ・・・」[p]
#																								

[rans_head_normal]
[rans_exp_normal_warai]																									
#ランスロット	
「この双剣を鍛冶屋に頼んだのは、私だからな・・・
[rans_unaduki]
仕様も私が細かく注文したものだ」[p]
#																								
#&f.name	
「あ・・・」[p]
#																								
#&f.name	
（そうだったっけ・・・そうなんだよね。私がようやく、剣をどうにか使えるようになったときに・・・）[p]
#																								

[rans_exp_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット	
「・・・・・・・・・・」[p]
#																								
#&f.name	
（・・・ランスロット・・・？）[p]
#																								

#&f.name
「あ、あの、調子、どう？もしかして・・・」[p]
#																								

[rans_exp_mihiraki]																									
#ランスロット	
「あ、ああ、
[rans_body_right_z_half]
[rans_exp_komari_warai]
いや、大丈夫だ。双剣のほうは問題ない」[p]
#
[rans_body_normal]
[rans_exp_normal_warai]
[playse storage="kenchousei_koukaonlabo.ogg"]
[rans_unaduki]																								
#&f.name	
「そっか・・・よかった・・・」[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]																									
#ランスロット	
「・・・・・・。
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]
お前がここまで、成長するとはな・・・」[p]
#																								
#&f.name	
「ランスロット・・・」[p]
#																								
																									
[rans_exp_normal_warai]																																																
#ランスロット	
「師匠としては私も鼻が高い。
[rans_head_right_z]	
[rans_head_above_y]
[rans_exp_komari_warai]
[rans_eyes_right]
まあ、少し・・・複雑でもあるが」[p]
#																								
#&f.name	
「・・・どういう意味？？」[p]
#																								

[rans_head_normal]
[rans_head_left_x]	
[rans_head_under_y]
[rans_exp_mehuse_warai]	
[rans_mod_idle_no_move_mehuse]																						
#&f.name	
（ランスロット・・・・・？）[p]
#	
[rans_exp_metoji]	
[rans_head_normal]
[rans_mod_idle]
[rans_exp_normal]																						
#ランスロット	
「・・・明朝早くには出立する。
[rans_unaduki]
お前も、早く休めよ」[p]
#																								
#&f.name	
「は、はい・・・」[p]
#																								
[rans_unaduki]
[rans_exp_bisyo_2]																									
#ランスロット	
「・・・・・。
[rans_head_left_z]
じゃあな」[p]
#	
[live2d_fadeout time=1000]																									
#&f.name	
（ランスロット・・・・・）[p]
#																										
																									
;	夜																								
;	ノック	
[bg storage="sekisho_heya_tasogare.jpg"]
[playse storage="nokku_tairakomori.ogg"]
#&f.name	
（・・・誰だろう？）[p]
#																								
#&f.name	
「・・・・はい？」[p]
#																								
																									
#ランスロット	
「・・・・私だ。・・・少しだけ、いいか」[p]
#																								
#&f.name	
「あ、はい！」[p]
#																								
[anten]																								
#&f.name	
（・・・なんだろ・・・これ・・・どきどき、してる・・・？）[p]
#																								
[playse storage="door00_macchi.ogg"]

[bg storage="sekisho_heya_tasogare.jpg"]

[rans_exp_mihiraki]
[live2d_fadein time=50]
#ランスロット	
「・・・！」[p]
#																								
#&f.name	
「？ランスロット？」[p]
#																								

[rans_head_right_x]
[rans_head_under_y]
[rans_exp_sekimen_yokome]																									
#ランスロット	
「・・・も、もう少し、上に何か着ろ」[p]
#																								
#&f.name	
「えっ・・・あ、は、はい・・・」[p]
#																								
#&f.name	
（そんなに、薄着だったかな・・・？）[p]
#																								
[live2d_fadeout time=50]																									
[anten]																																																
[bg storage="sekisho_heya_tasogare.jpg"]																									
																									
																									
#&f.name	
「いよいよ、明日だね・・・」[p]
#	
[rans_mod_idle_no_move_metoji]																							
[rans_exp_metoji]
[live2d_fadein time=1000]																									
#ランスロット	
「ああ」[p]
#																								
																									
																																																		
#&f.name	
「・・・ランスロット・・・その・・・大丈夫？」[p]
#																								

[rans_exp_normal]																									
#ランスロット	
「・・・・ああ・・・・」[p]
#																								
																									
#&f.name	
「･・・・・・」[p]
#																								

[rans_mod_idle]																									
#ランスロット	
「･・・・・・・
[rans_exp_yokome]
父上のことを気にしているのか」[p]
#																								
#&f.name	
「あ・・・・・う、うん・・・」[p]
#																								

[rans_head_normal]
[rans_body_right_z_half]
[rans_exp_komari_warai]																								
#ランスロット	
「私のことまで心配する余裕があるのか？お前は」[p]
#	
[rans_body_normal]
[rans_head_left_z]																							
#&f.name	
（・・・そりゃ・・・）[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
[rans_head_normal]
#&f.name
（余裕がある・・・わけじゃないけど・・・でも・・・ランスロット・・・）[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_head_left_x]
[rans_exp_mehuse_warai]																									
#ランスロット	
「ありがとう。だが、私のことは心配するな」[p]
#																								

[rans_mod_idle]
[rans_exp_ketui]																									
#ランスロット	
「明日は・・・必ず勝ってみせる」[p]
#
[rans_unaduki]																							
#&f.name
	(･･･ランスロット・・・）[p]
#																								
																																																		
#&f.name	
（・・・でも・・・相手は・・・お父さんなんだよね・・・）[p]
#																								
																									
[rans_mod_idle_no_move_mehuse]																																																		
#&f.name	
（不安を感じないはずないって思うのに、それでもこんなふうに・・・）[p]
#																								
																									
#&f.name	
（私は弟子・・・だから、いつものランスロットしか見せてくれないのかな・・・）[p]
#																								
																									
																									
																									
#&f.name	
（・・・・・。弟子じゃなかったら、こんなふうにはならなかったのかな・・・）[p]
#																								

[rans_mod_idle]
[rans_exp_normal]	
[rans_head_under_y]																																															
#ランスロット	
「・・・・・・」[p]
#

#&f.name	
（・・・ランスロット・・・どこ・・・見て・・・首筋・・・？）[p]
#																								
																									
																																																		
#&f.name	
「あっ・・・あのこれ・・・これは・・・その・・・」[p]
#																								
;	もう遅すぎるけれど、いまさらながらに隠そうとすると、#ランスロットがふっと目をそらした。	

[fadeinbgm storage="omoi_ontama.ogg" time=4000]
[rans_exp_yokome]
[rans_head_right_z]
#ランスロット	
「・・・・・ライオネスの言うとおり・・・」[p]
#																								
#&f.name	
「え・・・？」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
#ランスロット	
「ウェスタになど行かせるべきではなかったのかもしれないな・・・・」[p]
#																								
#&f.name	
「ランスロット・・・」[p]
#																								

[rans_head_normal]
[rans_exp_komari_warai]
[rans_eyes_left]																								
#ランスロット	
「私の、身勝手な願いだがな」[p]
#	
[rans_eyes_normal]
[rans_exp_mehuse]
[rans_head_under_y]																							
#ランスロット	
「だが・・・離れている間・・・ずっとお前のことばかり考えていた」[p]
#

#&f.name	
「・・・！」[p]
#

#&f.name	
（私のことばかり、考えて、って・・・）[p]
#																								
																																																
;	なんでこんな気持ちになるのか、理由もわからないけれど・・・でも、彼に弟子、とだけ思われるのは・・・嫌、だった。																								


[rans_eyes_left]
#ランスロット	
「正直・・・なぜあのとき引き止めなかったのかと・・・」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_eyes_normal]
[rans_exp_metoji]
#ランスロット	
「無理やり師匠の顔でお前を見送ってしまったことを悔やんだときもあった」[p]
#
[rans_mod_idle]
[rans_exp_normal]																								
#&f.name	
「ら・・・ランスロット・・・？」[p]
#																								

[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse_mousiwakenai]																									
#ランスロット	
「お前は・・・私のことをただ『師匠』として慕っているのだろうな・・・」[p]
#	
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]																							
#ランスロット	
「・・・・だが・・・・私は・・・・・・・・」[p]
#																								
#&f.name	
（え・・・）[p]
#
[live2d_fadeout time=50]
[live2d_fadein time=50]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[rans_mod_idle]
[rans_head_normal]
[rans_exp_sinpai]

#&f.name	
「・・・！
[rans_body_right_z_half]
[rans_head_right_z]
・・・ランスロ・・」[p]
#
[camera time="300" x="0" y="-30" zoom="1.2"]																								
;	#ランスロットが私の肩に、手を触れる。そのまま、彼の整った顔が近づいて・・・																								
#&f.name	
（ランスロット・・・）[p]
#																								
																									
[rans_head_right_z]
[rans_exp_bisyo_2]	

;手紙読んでた場合

[if exp="f.letter_no==4"]

#ランスロット
「・・・・私は・・・」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_head_left_x]
[rans_exp_mehuse_mousiwakenai]
[rans_mod_idle_no_move_mehuse]

#ランスロット
「っ・・・」[p]
#

#&f.name
「・・・ランスロット？」[p]

[rans_head_right_x]
[rans_exp_naki_metoji]
[rans_mod_idle_no_move_metoji]
#ランスロット
「・・・いや、すまない・・・その・・・」[p]
#

#&f.name
「？」[p]
#

[rans_head_normal]
[rans_head_left_z]
[rans_exp_komari_warai]
[rans_mod_idle]
[rans_eyes_left]
#ランスロット
「手紙では、書けたことも・・・こう目の前にすると・・・うまく、言えないものだな・・・」[p]
#


[rans_eyes_right]
[rans_exp_mehuse]
[rans_head_normal]
#ランスロット
「もう一度、お前に会えたら・・・そのときには、言おうと思っていたのに・・・」[p]
#

#&f.name
「なに、を・・・？」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_eyes_normal]
[rans_exp_naki_metoji]
#ランスロット
「・・・」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット
「いや・・・」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット
「今はこんなことを・・・言っているときではないな」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_mousiwakenai]
#ランスロット
「それに・・・今言ったら、お前を苦しめることになるかもしれない」[p]
#

#&f.name
「どういう・・・？」[p]
#


[rans_mod_idle_no_move_metoji]
[rans_head_right_x]
[rans_exp_naki_metoji]
#ランスロット
「すまない・・・もし・・・私が明日・・・父上に勝てたら・・・そのときは、必ず」[p]
#

[rans_head_normal]
[rans_exp_komari_warai]
[rans_head_left_z]
#&f.name
「ランスロット・・・」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
[w]
[rans_mod_idle]
[rans_head_normal]
[endif]


;	私の額に自分の額をそ・・・とくっつけて、#ランスロットはその瞳に笑みを浮かべた。
[rans_head_right_z]
[rans_exp_bisyo_2]																								
#ランスロット	
「・・・明日は・・・笑顔でいてくれ。
[rans_eyes_right]
そうしたら・・・きっと、
[rans_eyes_normal]
父上にも勝てる気がする」[p]
#	
[rans_head_normal]
[rans_unaduki]																							
#&f.name	
「・・・・・・・・。うん・・・・・・」[p]
#																								
																									
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]																									
#ランスロット	
「・・・お前の声は・・・優しいな」[p]
#
[rans_head_normal]	
[rans_exp_bisyo]																							
#ランスロット	
「できるならばずっと、聞いていたくなる」[p]
#	
[rans_mod_idle_no_move_mehuse_2]
[rans_head_right_z]	
[rans_exp_yokome_warai]	
[rans_mod_idle]																					
#&f.name	
（ずっと・・・って・・・）
[rans_head_normal]
[rans_exp_normal_warai]
[p]
#																								
#&f.name	
（深い意味は・・・きっと・・・ないん、だよね・・・？でも・・・）[p]
#
[rans_mod_idle_no_move_mehuse_2]
[rans_body_left_z_half]	
[rans_exp_bisyo_2]																							
#&f.name	
（そんなことないって・・・思いたい・・・）[p]
#

#&f.name	
（ランスロット・・・）[p]
#
[live2d_fadeout time=1000]
[reset_camera]
[anten]																								
[bg storage="sekisho_heya_tasogare.jpg"]
																								
																									
[rans_head_normal]
[rans_exp_normal_warai]	
[rans_body_normal]
[live2d_fadein time=1000]																																																																																													
#ランスロット	
「・・・じゃあな、明日、寝過ごすんじゃないぞ」[p]
#																								
#&f.name	
「そ、そんなことしないよ！」[p]
#																								

[rans_head_left_z]
[rans_mod_idle_no_move_mehuse_2]
[rans_exp_bisyo]																									
#ランスロット	
「・・・ははっ。そうだな・・・おやすみ」[p]
#																								
#&f.name	
（･･･ランスロット・・・）[p]
#																								
#&f.name	
「おやすみ、なさい・・・」[p]
#
[rans_head_normal]
[rans_unaduki]																								
;	#ランスロット立ち去る																								

[live2d_fadeout time=1000]	
[playse storage="close11_macchi.ogg"]																								
#&f.name	
（･･･なんだろ・・・、この気持ち・・・）[p]
#																								
#&f.name	
（声とか、触れたところとか・・・意識しちゃう・・・）[p]
#																								
																									
#&f.name	
（今までは、そう、ウェスタに行く前までは、こんなこと、なかったと思うのに・・・）[p]
#

[anten]
[live2d_fadein time=50]
#ランスロット
『明日は、笑顔でいてくれ。そうしたら・・・』[p]
#
[live2d_fadeout time=60]
[bg storage="sekisho_heya_tasogare.jpg"]   																							
#&f.name	
（ランスロット・・・）[p]
#	

[fadeoutbgm time=4000]
#&f.name	
（駄目だ・・・明日は大切な日。しっかりしなくちゃ・・・）[p]
#																								
[anten]																									
#&f.name	
（・・・しっかり・・・しなくちゃ・・・）[p]
#																								
																									
																									
[bg storage="erumusekisho_hare_tasogare.jpg"]
[playse storage="spparows_tairakomori.ogg"]																									
;	関所の門前																								
#&f.name	
（・・・装備は・・問題ない、よね。よし・・・）[p]
#																								
#&f.name	
「・・・？あれ・・・」[p]
#																								
#？	
「・・・隊のほうは頼んだぞ、エクター」[p]
#																								
#&f.name	
（・・・ん？なんだろう？ランスロットの声・・・だよね・・・）[p]
#																								
#&f.name	
（もうひとりはエクターさん・・・ってこと？なんだろう・・・）[p]
#																								
																									
;#場所移動																								

[bg storage="sekishoura_tasogare.jpg"]
[ector_tatie_touroku]
[ector_tatie_show]
#エクター	
「・・・隊長・・・」[p]
#

[live2d_rans_mod_sekkin]
[rans_head_normal]
[rans_body_normal]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
[live2d_fadein time=1000]
#ランスロット	
「父上のことは私の責任でもある。あれだけ近くにいながら、阻止することさえできなかった」[p]
#
[rans_head_right_x]
[w]
[rans_head_left_x]
[rans_body_left_z_half]
[rans_exp_mehuse_mousiwakenai]
#ランスロット	
「・・・兆候はいくらでもあったはずなのに・・・」[p]
#																								
																									
[ector_tatie_mehuse]																									
#エクター	
「しかし、隊長ひとりでは危険すぎます。相手はあのウェルム団長ですよ」[p]
#
[rans_mod_idle_no_move_metoji]	
[rans_head_normal]
[rans_head_under_y]
[rans_exp_metoji]																							
#ランスロット	
「・・・問題ない」[p]
#	

[ector_tatie_normal]
#エクター	
「隊長！」[p]
#																								

[rans_exp_normal]
[rans_mod_idle]																									
#ランスロット	
「私の腕を疑うのか？」[p]
#
[ector_tatie_mehuse]																								
#エクター	
「そういうわけでは・・・」[p]
#																								

[rans_head_normal]
[rans_eyes_left]
[rans_exp_ketui]
[rans_eyes_normal]																									
#ランスロット	
「けじめをつけさせてほしいんだ。わかるな、エクター」[p]
#																								

[ector_tatie_warai]																									
#エクター	
「隊長のわがままには困りましたね」[p]
#																								

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji_warai]																									
#ランスロット	
「ふっ・・・なかなか言うな、お前も」[p]
#

[ector_tatie_normal]
#エクター	
「ご武運を、隊長。
[rans_exp_normal]
[rans_mod_idle]
[ector_tatie_metoji]
あとのことは、お任せください」[p]
#	

[rans_exp_normal_warai]
[rans_unaduki]
#ランスロット	
「ああ」[p]
#																								
[chara_hide_all]
[live2d_fadeout time=1000]
#&f.name	
（・・・ご武運って・・・。けじめって・・・）[p]
#


#&f.name	
（ランスロット・・・まさか・・・ひとりでウェルム団長と・・・！？）[p]
#																								


;	場所移動																								
[bg storage="erumusekisho_hare_tasogare.jpg"]
[tutiaruku][w][w][w]
[stopse]

[rans_exp_normal_warai]
[rans_head_normal]
[live2d_fadein time=1000]
#ランスロット	
「おはよう、[name]」[p]
#																								
#&f.name	
「ら、ランスロット・・・」[p]
#																								

[rans_head_right_z]
[rans_mod_idle_no_move_mehuse_2]
[rans_exp_bisyo_2]																									
																									
#ランスロット	
「どうした？そんな泣きそうな顔をして。笑顔でいてくれと言っただろう・・・」[p]
#

[rans_head_normal]
[rans_head_under_y]
#ランスロット	
「・・・緊張、しているのか？」[p]
#																								
																																																		
#&f.name	
「・・・ランスロット・・・行っちゃうの？」[p]
#
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット	
「[name]？」[p]
#																								

[rans_exp_normal]																									
#&f.name	
「ひとりでなんて、無理だよ！だってヴァエルだよ！？」[p]
#																								
#&f.name	
「魔剣の力がどれだけ強いか、ランスロットはわかってない！」[p]
#

[rans_exp_mihiraki]
#ランスロット	
「！[name]・・・
[rans_exp_normal]
[rans_head_right_x]
[rans_body_right_z_half]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
お前、さっきの話・・・」[p]
#																								
																									
#&f.name	
「わかってないよ・・・駄目だよ・・・ひとりでなんて・・・」[p]
#	

[rans_exp_kunou]
#ランスロット	
「・・・[name]・・・」[p]
#																								
																									
#&f.name	
（・・・気持ちは・・・わからない、わけじゃない・・・）[p]
#																								
#&f.name	
（けじめをつけたいって・・・ランスロットは、そういう人だから・・・責任を感じてるのは、わかるけど・・・）[p]
#																								
#&f.name	
「・・・・・・・・・・だめ・・・だよ・・・」[p]
#
[rans_head_normal]
[rans_body_normal]
[rans_exp_komari]																								
#&f.name	
（もしかしたら・・・考えたくないけど・・・やられる・・・ことだって・・・）[p]
#																								

[rans_exp_mehuse]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]																									
#&f.name	
（お願い・・・）[p]
#																								
																									
																									
#ランスロット	
「・・・・・・・・・・」[p]
#																								
																									
#&f.name	
（いってほしくない・・・）[p]
#																								
																									
																									
[rans_exp_metoji]																									
#ランスロット	
「・・・・なら、
[rans_exp_normal]
[rans_mod_idle]
お前が一緒に来てくれるか」[p]
#																								
#&f.name	
「え・・・」[p]
#																								

[rans_exp_sinpai]																									
#ランスロット	
「お前に、私の力になってほしい。[name]」[p]
#	

[rans_unaduki]
#&f.name	
「でも私・・・・あ・・・・」[p]
#

[live2d_fadeout time=50]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[live2d_fadein time=1000]
[playse storage="za_macchi.ogg"]
[rans_head_under_y]
[rans_exp_kunou]
[rans_mod_idle_no_move_mehuse]

#ランスロット	
「・・・・・・そばに・・・・・・いてほしいんだ・・・・」[p]
#																								

[rans_head_normal]
[rans_exp_komari]
[rans_head_right_z]																									
#&f.name	
（ランスロット・・・・・・・・・・。なんだろ・・・・この気持ち・・・・）[p]
#	
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
[rans_head_under_y]																							
#&f.name	
「・・・ランス、ロット・・・・・・・・・・・・・」[p]
#																								
																																																		
#&f.name	
「・・・・・うん・・・・
[rans_mod_idle]
[rans_head_normal]
[rans_exp_normal]
わかった・・・・」[p]
#																								


[rans_exp_bisyo_2]
[rans_head_left_z]
#ランスロット	
「ありがとう・・・[name]」[p]
#																								
[playse storage="huku1_koukaonlabo.ogg"]																									
[camera time="300" x="0" y="-30" zoom="1.2"]																																																		
#&f.name	
（・・・・・どうして・・・・・・・？すごく、すごくどきどきする・・・）[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_head_right_z]
[rans_body_right_z_half]
[rans_head_under_y]
[rans_exp_mehuse]																								
#ランスロット	
「・・・[name]・・・」[p]
#																								
#&f.name	
「ランスロット・・・」[p]
#																								
																									
[live2d_fadeout time=1000]
[reset_camera]
[anten]
																									
;	暗転　馬の走る音																								
;	ラプタの声


[playse storage="umahasiru_onjin.ogg" loop=true]
[bg storage="erumusougen_tasogare.jpg"]
[playse storage="raputanakigoe_onjin.ogg"]
[playse storage="raputahabataki_onjin.ogg"]
[w]
[playse storage="raputahabataki_onjin.ogg"]

[rans_body_normal]
[rans_head_normal]
[rans_exp_normal]
[live2d_fadein time=1000]
#ランスロット	
「翼竜・・・・？」[p]
#																								
#&f.name	
「あれって・・・もしかしてラプタ・・・！？」[p]
#																								
#&f.name	
（あっちは・・・王都の方向・・・・・・）[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_head_under_y]
[rans_exp_mehuse]																									
#ランスロット	
「先をこされたか・・・」[p]
#																								

[rans_exp_metoji]
[rans_head_normal]																									
#ランスロット	
「・・・どちらにしろ好都合ではある・・・
[rans_exp_normal][rans_exp_ketui]
だが父上を倒すのは・・・この私だ」[p]
#																								
#&f.name	
（･･･ランスロット・・・）[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]																									
																									
#&f.name	
（・・・ひとりでなんて・・・だめだよ・・・）[p]
#																								
#&f.name	
（ううん、私がそうさせない・・・ひとりで戦わせるなんてこと、させない・・・）[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット	
「・・・父上・・・」[p]
#	
[rans_eyes_left]
[rans_exp_mehuse]	
[rans_mod_idle_no_move_mehuse]																						
#&f.name	
（ランスロット・・・）[p]
#																								

[rans_exp_metoji]
[live2d_fadeout time=1000]																									
																									
;	王宮																								
																									
[stopse]
[playse storage="uma_onjin.ogg"]
[anten]
[bg storage="oukyuu_tasogare.jpg"]
[w][w][w][w]


[bg storage="oukyuurouka_tasogare.jpg"]

[playbgm storage="shuuen_musmus.ogg"]																									
#&f.name	
「こ・・・っ・・・これ・・・・こんなに・・・たくさん・・・」[p]
#																								
#&f.name	
（これは・・・異形・・・？みんな・・・死んでる、の・・・？）[p]
#																								

[rans_head_above_y]
[rans_head_right_x]
[rans_eyes_right]
[rans_exp_normal]
[rans_mod_idle]
[live2d_fadein time=1000]																									
#ランスロット	
「・・・・これが・・・・魔法・・・魔剣の力か・・・」[p]
#																								
																									
#&f.name	
（異形が・・・こんな・・・みんな息絶えて・・・・・・）[p]
#																								

[rans_head_left_x]
[rans_head_normal]
[rans_eyes_left]																									
#&f.name	
「クライストさんたちは・・・もうウェルム団長のところへ？」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]																								
#ランスロット	
「・・・・・・」[p]
#																								
#&f.name	
（ラプタが先にいったってことは・・・だいぶ前には到着してたのかな・・・）[p]
#																								

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]																									
#ランスロット	
「父上は・・・おそらく、玉座の間にいるはずだ。
[rans_head_right_z]
[rans_exp_yokome]
[rans_mod_idle]
[rans_head_normal]
[rans_unaduki]
急ぐぞ」[p]
#																								
[live2d_fadeout time=1000]																									
																									
;	玉座の前

[fadeoutbgm time=4000]

[playse storage="hasiruhibiku_onjin.ogg"]
[anten]
[wait time=3000]
[bg storage="gyokuza_tasogare.jpg"]
[stopse]

[playbgm storage="op_musmus.ogg"] 

[werumu_v_tatie_touroku]
[werumu_tatie_vaeru]
#ウェルム	
「・・・お前にはエルムナードの関所を任せたはずだが」[p]
#

[werumu_tatie_v_ikari]
#ウェルム	
「こんなところまできて何用だ」[p]
#																								
																									

[rans_body_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_ikari]
[live2d_fadein time=1000]																									
#ランスロット	
「・・・それはこちらの台詞です。父上。なぜ玉座の間に？」[p]
#																								

[werumu_tatie_v_yokome]																									
#ウェルム	
「ふん・・・いてはおかしいか？」[p]
#
[rans_exp_mehuse]																								
#ランスロット	
「・・・・・・・。
[rans_head_normal]
[rans_exp_ikari]
どこまで、しらを切るおつもりですか」[p]
#	

[live2d_fadeout time=50]
[playse storage="ranskennuku_onjin.ogg"]
[wait time=300]
[playse storage="ranskennuku_onjin.ogg"]
[w][w]
[playse storage="kenkamaeru_onjin.ogg"]
[rans_arms_kamae]
[rans_arms_kamae]	
[live2d_fadein time=1000]
[werumu_tatie_v_ikari]
#ウェルム	
「どういうつもりだ、ランスロット。上官でもあり、父でもあるわしに武器を向けるか」[p]
#


#ランスロット	
「・・・その理由は、父上がよくわかっていらっしゃるのでは」[p]
#																								

[werumu_tatie_v_mehuse]																									
#ウェルム	
「････この騒動、お前らの仕業か」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット	
「・・・厳密に言えば違います。が、」[p]
#
[rans_mod_idle]	
[rans_exp_ikari]																							
#ランスロット	
「目的は同じです」[p]
#																								
;	剣抜く	

[werumu_tatie_v_normal]
#ウェルム	
「・・・・ふん」[p]
#
																							
#&f.name	
「魔剣ヴァエル・・・！！！」[p]
#																								
																									
#ランスロット	
「・・・・・その魔剣で、ラルズ宰相とユリア様はじめ、王族一族を手にかけたのは、真でしょうか」[p]
#


[werumu_tatie_v_mehuse]
#ウェルム	
「だったらどうするというのだ？この世にいない国王に報告でもするつもりか？」[p]
#																								

[rans_exp_mihiraki]																									
#ランスロット	
「！！！父上・・・まさか・・・本当に陛下まで・・・・・・」
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
[p]
#
[werumu_tatie_v_normal]																								
#ウェルム	
「・・・お前にはわからぬだろうな。やつら王族がどれだけ腑抜で愚かどもだったかということが」[p]
#																								
																									
#&f.name	
「それでも・・・！たとえそうでもこんなこと・・・」[p]
#																								
#&f.name	
（こんなこと・・・）[p]
#	
[rans_mod_idle_no_move_mehuse]																							
[rans_exp_mehuse]

#ウェルム	
「馬鹿は死なねば治らぬ。わしはこの国の膿を取り除いただけのこと」[p]
#																								


[werumu_tatie_v_mehuse]
#ウェルム	
「自らの保身しか考えていなかったやつらに、クレールの未来を任せるわけにはいかなかったのだ」[p]
#	

[rans_head_normal]

#ランスロット	
「・・・・・・・・・」[p]
#																								

[werumu_tatie_v_normal]																									
#ウェルム	
「きれいごとを述べ立てるだけでは、何も変えられぬ・・・。わかるだろう、ランスロット」[p]
#																								

#ランスロット		
「・・・・・・・・・」[p]
#																								
																									
#&f.name	
（ランスロット・・・）[p]
#																								
[stopbgm]
[rans_mod_idle_no_move_metoji]																									
[rans_exp_metoji]																									
#ランスロット	
「・・・わかりません」[p]
#
[werumu_tatie_v_odoroki]																								
#ウェルム	
「・・・なんだと」[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]																									
#ランスロット	
「どのような理由があったにしろ・・・父上・・・貴方は・・・」[p]
#
[rans_mod_idle]
[rans_exp_ikari]																								
#ランスロット	
「このような愚かなまねをする男では、なかったはずです」[p]
#																								

[werumu_tatie_v_mehuse]																									
#ウェルム	
「･･･残念だ、ランスロット・・・。お前ほどの優秀な男が・・・わしの考えを理解できぬとはな」[p]
#																								

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]																									
#ランスロット	
「･････[name]、下がっていろ」[p]
#																								
#&f.name	
「ランスロット・・・」[p]
#
[rans_mod_idle]
[rans_head_right_z]
[rans_exp_normal_warai]																								
#ランスロット	
「･･･大丈夫だ」[p]
#																								
#&f.name	
「・・・だめだよ」[p]
#
[rans_exp_mihiraki]																								
#ランスロット	
「[name]・・・」
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_mehuse_muzukasii]
[p]
#																								
#&f.name	
「私・・・言ったよ。ひとりじゃ、だめだって・・・だから、ランスロットは一緒に来て欲しいって言ったんでしょ」[p]
#

[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「[name]・・」[p]
#																								
#&f.name	
「ランスロット・・」[p]
#																								
#ランスロット
[rans_mod_idle_no_move_metoji]	
「[rans_exp_metoji]・・・わかった。ともに戦おう。
[rans_mod_idle]
[rans_exp_ketui]
・・・頼むぞ」[p]


#&f.name	
「はい！！」[p]
#
[rans_exp_bisyo_2]
[rans_unaduki]
[w]																								
[live2d_fadeout time=1000]		


*battle_start_w
[eval exp="f.friend=1"]
[eval exp="f.monster_group_28=1"]
[eval exp="f.werumu_battle=1"]
;[eval exp="f.monster_l_size_3=0"]
;[eval exp="f.monster_l_size=1"]
;[eval exp="f.monster_l_size_2=0"]
;[eval exp="f.rusia_l_size=0"]
[eval exp="tf.w_attack=1"]

[call storage="scenario_2/live2d_rans_macro.ks"]
[stopbgm]
[chara_hide_all]
[battle_start]

*battle_end_w
[eval exp="f.monster_group_28=0"]
[eval exp="f.werumu_battle=0"]
[eval exp="tf.w_attack=0"]
[message_settei_ad]
[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]
;	バトルのちのやりとりはバトル中で


;;;;



*rans_battle_end
;バトル終了 
[free name="kuro" layer=3]
[bg storage="gyokuza_tasogare.jpg" time=50]

[live2d_rans_touroku]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]

[werumu_v_tatie_touroku]
[werumu_tatie_last]
#ウェルム	
「ぐっ・・・ぐああああああああ！！」[p]
#																								
[chara_hide_all]
#&f.name
（・・・ランスロット・・・）[p]
#



[rans_exp_naki]
[rans_mod_idle_no_move_mehuse_2]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[rans_body_right_z_half]
[live2d_fadein time=1000]
[playse storage="huku1_koukaonlabo.ogg"]
[camera time="300" x="0" y="-30" zoom="1.3"]
#ランスロット
「[name]・・・・・・[name]・・・」[p]
#

#&f.name
（・・・ランスロット・・・？）[p]
#

[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
[rans_head_right_z]
[rans_head_right_x]
[rans_mod_idle_no_move_metoji]
[rans_exp_naki_metoji]
#ランスロット
「[name]・・・っ・・・」[p]
#
[image storage="black.png" page=fore visible=true name="kuro" layer="3" x="0" y="0" time=3000]

#&f.name
（泣いてる・・・の？・・・でも、もう・・・）[p]
#
[live2d_fadeout time=1000]
[wait time=2000]
[anten]
[reset_camera]
;イレインの部屋


[if exp="f.rans_last_ok!=1"]
[free name="kuro" layer=3]
[live2d_delete_all][live2d_off][message_kakusu_ad]
[button_clear]
[wait time=2000]
[message_kakusu_ad]
[bg storage="siro.jpg"]
[jump target=*rans_last_end]
[endif]




[bg storage="irainheya_tasogare.jpg"]
[free name="kuro" layer=3]
#&f.name
（あれ・・・どこだろ・・・ここ・・・）[p]
#
[config_true]
[kra_tatie_touroku]
[kra_tatie_show_rans_left]
#クライスト
「・・・礼はいらないよ」[p]
#

[rans_tatie_touroku]
[rans_tatie_show_right]
#ランスロット
「・・・クライスト」[p]
#

[kra_tatie_mehuse]
#クライスト
「俺自身が彼女には、生きていてほしいからね」[p]
#

[rans_tatie_mehuse]
#ランスロット
「・・・」[p]
#

[kra_tatie_metoji]
#クライスト
「だいたいわかってたよ。残念なことに、アグレアスは人の心の機微に敏感だ」[p]
#

[rans_tatie_normal]
#ランスロット
「お前・・・」[p]
#
[kra_tatie_mehuse]
#クライスト
「いっそのこと、嫌われた方がいいって思ってた。・・・どうあがいても、手に入れられないのなら」[p]
#

[kra_tatie_komari]
#クライスト
「でも、やっぱり俺には無理だった。
[kra_tatie_yokome]
悩んだり傷ついたりする彼女を、俺は見ていられない」[p]
#

[rans_tatie_normal]
#ランスロット
「・・・」[p]
#

[kra_tatie_metoji]
#クライスト
「レムがうるさいから、そろそろいくよ」[p]
#


#ランスロット
「クライスト」[p]
#
[kra_tatie_normal]
#ランスロット
「[name]に、会っていかないのか」[p]
#

[kra_tatie_mehuse]
#クライスト
「・・・合わせる顔がないよ。
[kra_tatie_normal]
君だって、俺が彼女に会わない方が好都合なんだろ？」[p]
#

[rans_tatie_yokome]
#ランスロット
「それは・・・」[p]
#

[kra_tatie_smile]
#クライスト
「まあ、泣かせたらすぐにさらいにきてあげるけど」[p]
#

[rans_tatie_ikari]
#ランスロット
「っ・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト
「・・・じゃあね」	[p]																	
#
;クライストいなくなる
[chara_hide name="kra"]

[rans_tatie_mehuse]
#ランスロット
「・・・・・・・クライスト・・・」[p]
#

#&f.name
（今の・・・ランスロットと、クライストさんの、声・・・？私、いったい・・・）[p]
#

[rans_tatie_mihiraki]
#ランスロット
「[name]・・・[name]！気がついたか」[p]

[chara_hide_all time=50]
[rans_head_normal]
[rans_exp_normal]
[rans_body_normal]
[live2d_rans_mod_sekkin_2]
[rans_exp_sinpai]
[live2d_fadein time=1000]

#&f.name
「ランスロット・・・私・・・？」[p]
#

[rans_exp_kunou]
#ランスロット
「一時は、どうなることかと・・・
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
父上は・・・お前が斬られたあとに、私が倒した」[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
#ランスロット
「その直後にクライストたちが到着して・・・ヴァエルをアグレアスの中に・・・封印した、らしい・・・」[p]
#

[rans_mod_idle]
[rans_head_right_x]
[rans_exp_yokome]
#ランスロット
「私には、赤い光と真っ青な光がせめぎあっているようにしか見えなかったが・・・」[p]
#

#&f.name
「あの、クライストさんは？」[p]
#

[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_mousiwakenai]
#ランスロット
「お前に合わせる顔がないと、先に王都を出て行った」[p]
#

#&f.name
「そんな・・・こと・・・」[p]
#


#ランスロット
「・・・・・・」[p]
#

#&f.name
（クライストさんは・・・私たちの、ために・・・）[p]
#

[rans_exp_mehuse_muzukasii]
#ランスロット
「礼はいらないと、先手をとられたが・・・
[rans_head_right_x]
[w]
[rans_head_left_x]
あいつには、感謝しなくてはならないな」[p]
#

[rans_head_normal]
[rans_exp_kunou]
#ランスロット
「・・・その身をもって、ヴァエルを引き受けてくれた。
[rans_exp_sinpai]
王都はあいつがいなければ、救えなかった・・・そして父上も・・・」[p]
#
#&f.name
「ランスロット・・・」[p]
#

[rans_head_normal]
[rans_head_right_z]
[rans_exp_komari]
#ランスロット
「・・・キズは、大丈夫か」[p]
#
#&f.name
「うん、もう・・・ふさがってるし。あんまり力はでないけど」[p]
#

[rans_head_normal]
[rans_exp_sinpai]
#ランスロット
「失血していたからな。あまり無理は、するな」[p]
#

[rans_unaduki]
#&f.name
「ウェルム団長は・・・あのあと・・・？」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
#ランスロット
「・・・今丁重に、ガイアの森での埋葬が行われている。
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
ライオネスにまかせてある」[p]
#

#&f.name
「い、いいの・・・？こんなとこいて・・・」[p]
#

[rans_exp_sinpai]
#ランスロット
「気にするな。お前の怪我のほうが心配だから、ここにいる」[p]
#

[rans_exp_bisyo]
[rans_head_right_z]
#&f.name
「ら、ランスロット・・・」[p]
#

#&f.name
（でも・・・）[p]
#
[rans_head_normal]
[rans_exp_normal]
[live2d_fadeout time=50]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="rans2" y=-5.3 scale=10.9]
[live2d_fadein time=1000]
[rans_body_right_z_half]
[rans_exp_sinpai]
#&f.name
「あ・・・・」[p]
#

;ランス、イレインをだきしめる
[fadeinbgm storage="aiju_ontama.ogg" time=4000]
[rans_body_normal]
[rans_head_under_y]
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
#ランスロット	
「・・・父上を・・・超えることは」[p]
#																								
#&f.name	
「え？」[p]
#
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]																								
#ランスロット	
「父上を超えることは・・・私の目標だった」[p]
#																								
#&f.name	
「ランスロット」[p]
#	
[rans_mod_idle_no_move_mehuse]																							
[rans_exp_mehuse]																									
#ランスロット	
「技を磨き・・・いつかは・・・と思っていた。だが・・・」[p]
#
[rans_head_right_x]
[rans_head_under_y]
[rans_exp_kunou]																								
#ランスロット	
「手合わせするときもないまま、父上は魔剣を手に入れてしまった」[p]
#																								
#&f.name	
「・・・・・・・・・」[p]
#																								

[rans_head_left_x]
[rans_head_left_z]
[rans_exp_sinpai]
[rans_eyes_left]																							
#ランスロット	
「父上も力を欲したのだろうが・・・魔剣など・・本来の力ではない」[p]
#
[rans_mod_idle_no_move_metoji]
[rans_eyes_normal]
[rans_exp_metoji]																								
#ランスロット	
「所詮借り物に過ぎぬのだと・・・そんなことがわからない父上ではないと思っていたのだがな」[p]
#																																															
																																																		
#&f.name	
「ランスロット・・・」[p]
#																								

[rans_exp_sinpai]																							
#ランスロット	
「[name]・・・」[p]
#																								

[rans_head_left_z]
[rans_eyes_left]
[rans_exp_komari_warai]																									
#ランスロット	
「お前にも・・・礼を言わなくてはならないな」[p]
#																								
#&f.name	
「え？」[p]
#
[rans_eyes_normal]
[rans_exp_bisyo]
[rans_head_normal]																								
#ランスロット	
「お前が助けてくれなかったら・・・おそらく今私はここにいないだろう」[p]
#																								
#&f.name	
「そんな・・・私は・・・」[p]
#																								
																									
#&f.name	
「たいしたことしてないよ・・・。それに、最後には・・・ウェルム団長に・・・。クライストさんが、いなかったら・・・」[p]
#

[rans_mod_idle_no_move_metoji]
[rans_head_under_y]
[rans_exp_metoji_warai]
#ランスロット	
「・・・それでも、お前がいなければ私は・・・きっと父上には勝てなかった」[p]
#	

[rans_head_normal]
[rans_exp_normal]
#ランスロット	
「・・・父上と対峙することになる自らの迷いに勝つことはできず・・・
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]
あの赤い刃の餌食になっていただろう・・・」[p]
#
#&f.name	
「・・・・・・それは・・・・」[p]
#
[fadeoutbgm time=4000]
[rans_exp_bisyo]																								
#ランスロット	
「・・・ありがとう、[name]。
[rans_body_right_z_half]
お前が・・・お前がそばにいてくれて・・・よかった・・・」[p]
#																								

[rans_body_normal]																									
#&f.name	
（なんだろう・・・これ・・・）[p]
#
[rans_unaduki]																								
#&f.name	
（すごく安心する・・・ほっとするのは変わらない・・・だけど、ドキドキ、して・・・）[p]
#																								
#&f.name	
（・・・これって・・・？）[p]
#	
[fadeinbgm storage="omoi_ontama.ogg" time=3000]
[rans_exp_bisyo_2]	
[rans_mod_idle_no_move_mehuse_2]																						
#ランスロット	
「[name]」[p]
#																								
#&f.name	
（ランスロット・・・）[p]
#	
[rans_head_under_y]
[rans_exp_mehuse_warai]																							
#&f.name	
（この、声・・・出会ったころから変わらない、優しくて・・・）[p]
#																								
#&f.name	
（いつも安心してた、この声、聞くたび・・・でも、でも今は・・・）[p]
#																								
#&f.name	
（どうしてだろ・・・なんだか・・・）[p]
#
[rans_head_normal]	
[rans_head_right_x]
[rans_eyes_right]																							
[rans_exp_bisyo_2]																									
#&f.name	
「ランスロット・・・」[p]
#
[rans_eyes_normal]
[rans_head_normal]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]																								
[rans_exp_mehuse_warai]																									
#ランスロット	
「[name]・・・私は・・・」[p]
#																								
																									
[rans_head_normal]	
[rans_exp_normal]																								
#ランスロット	
「・・・・・・お前のその声を・・・ずっとそばで聞いていたいと思う」[p]
#																								
#&f.name	
「え・・・・」[p]
#																								
																									
#&f.name	
（声を・・・そばで・・・ずっと・・・って・・・）[p]
#	
[rans_exp_mehuse]
[rans_mod_idle_no_move_mehuse]																							
#ランスロット	
「私は・・・」[p]
#																								
#&f.name	
（ランスロット・・・）[p]
#																								

[rans_head_right_x]
[rans_head_under_y]
[rans_exp_kunou]																									
																									
#&f.name	
（えっ・・・）[p]
#

[live2d_rans_mod_sekkin]
[playse storage="huku1_koukaonlabo.ogg"]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
[fadeoutbgm time=3000]
#ランスロット	
「・・・いや・・・すまない」[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]																								
#&f.name	
「！！」[p]
#																								
#&f.name
（なんで・・・？どうして・・・？）[p]
#																								
#&f.name	
「ランスロット！」[p]
#																								
																									
[rans_head_left_x]
[rans_exp_mehuse_muzukasii]																									
#ランスロット	
「なんでもないんだ・・・気にするな」[p]
#																								
#&f.name	
「なんで・・・気にするよ！どうしてそんな・・・言いかけてやめるの・・・？」[p]
#																								
#&f.name	
「ランスロット・・・らしくないよ」[p]
#																								

[rans_head_normal]
[rans_exp_mehuse]																									
#ランスロット	
「・・・・・・・・・今・・・・私の気持ちを言ったら・・・お前は私を軽蔑するだろう」[p]
#																								
#&f.name	
「・・・どうして？今更・・・しないよ」[p]
#	
[rans_mod_idle]																							
[rans_head_right_z]
[rans_exp_komari]																									
#&f.name	
（・・・軽蔑なんかしない。するわけないよ・・・だって）[p]
#	
[rans_head_normal]																							
#&f.name	
（だって私・・・）
[rans_mod_idle_no_move_mehuse]
[rans_head_normal]
[rans_exp_mehuse]
[rans_head_under_y]
[p]
#																								
#ランスロット	
「・・・それでも、駄目だ。こんな・・・私は・・・お前の師匠で・・・」[p]
#																								
#&f.name	
「ランスロット・・・」[p]
#																								
																									
																									
#&f.name	
「っく・・・」[p]
#

[rans_head_normal]
[rans_mod_idle]
[rans_exp_mihiraki_aseri]
#ランスロット	
「[name]・・・」
[rans_exp_komari]
[p]
#																								
[fadeinbgm storage="omoi_ontama.ogg" time=3000]																									
#&f.name	
「なんで・・・駄目なの・・・。駄目じゃないよ！だめなんかじゃ・・・・・・ないよっ！！」[p]
#	
[playse storage="dakituku_onjin.ogg"]																						
[live2d_mod name="rans2" y=-5.0 scale=9.9]																								
[rans_exp_mihiraki]																									
#ランスロット	
「[name]・・・」
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_kunou]
[p]
#																								
#&f.name	
「嫌ったりなんか・・・しないよ。私・・・わからないけど・・・」[p]
#																								
																									
#&f.name	
「わからないけど・・・でも・・・ランスロットともっと一緒にいたいって・・・思うから・・・」[p]
#

[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット	
「！」
[rans_exp_normal]
[p]
#																								
																									
#&f.name	
「もっと・・・もっと・・・」[p]
#

#&f.name	
（そう・・・私・・・貴方に・・・）[p]
#	

#&f.name	
「だ、抱きしめてほしいって・・・思うから・・・」
[rans_exp_mihiraki_aseri]
[p]
#

[rans_head_right_x]
[rans_head_under_y]
[rans_exp_sekimen_yokome]
#ランスロット	
「[name]・・・っ」[p]
#																								
#&f.name	
「・・・そんなことっ・・・言わないで・・・っ・・・」[p]
#																								

[rans_head_normal]
[rans_exp_sinpai]																									
#ランスロット	
「・・・[name]・・・」[p]
#

[rans_head_right_z]
[rans_eyes_right]
#ランスロット																										
「・・・お前は・・・そんなことを言って・・・・」[p]
#																								

#&f.name
「っく・・ひっく・・・ぅ」[p]
#	


[rans_eyes_normal]
[rans_head_normal]
#ランスロット	
「・・・後悔しても知らないぞ・・・？」[p]
#	


#&f.name	
「こ、後悔なんかしないよ・・・するわけないよ・・・」[p]
#

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_mousiwakenai]
#ランスロット	
「[name]・・・・」[p]
#

#&f.name	
「ねえ・・・だから、ちゃんと言って・・・・？」[p]
#

[rans_mod_idle]
[rans_exp_komari]
#ランスロット	
「････････[name]・・・・・・・・」[p]
#																								
#&f.name	
「教えて・・・ランスロットの・・・気持ち」[p]
#																								

[rans_head_right_x]
[rans_head_under_y]																									
#ランスロット	
「・・・・・・・・。
[rans_exp_komari_warai]
[rans_head_normal]
・・・もう、わかっているんじゃないのか？」[p]
#																								
#&f.name	
（・・・そう・・・きっと知ってる。私・・・ランスロットが私に何を・・・伝えたいのか・・・本当は・・・だけど）[p]
#																								
#&f.name	
「・・・聞きたいの。
[rans_exp_normal]
ランスロットの、言葉で･･･」[p]
#
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]																								
#&f.name	
（聞きたい・・・その声で・・・）[p]
#	
[rans_exp_sinpai]																							
#ランスロット	
「・・・・・・[name]・・・・・」
[rans_unaduki]
[rans_head_right_z]
[rans_exp_bisyo_2]
[rans_mod_idle_no_move_mehuse_2]
[p]
#																								
;	スチル																								
;#&f.name	#ランスロットが、そうっと私の髪を撫でる。その気持ちよさに目を閉じると・・・																								
;#ランスロット	耳元に唇を近づけて、囁かれる・・・愛しい言葉。																								
;#&f.name	吐息がくすぐったい。でも、それよりももっと、胸の中がくすぐったくて、恥ずかしい。																								
;#ランスロット	顔がみるみるうちに熱くなった私を、#ランスロットは改めてぎゅうっと抱きしめた。																								
;#ランスロット	その優しい腕で、強く強く。
[playse storage="dakituku_onjin.ogg"]																								
[camera time="300" x="0" y="-30" zoom="1.5"]

[rans_head_normal]
[rans_unaduki]
#ランスロット	
「・・・お前の返事を、聞きたいんだが？」
[rans_exp_normal_warai]
[p]
#																								
																									
#&f.name	
「・・・ランスロット・・・私も・・・だいすき・・・」[p]
#
[rans_mod_idle_no_move_mehuse]																								
[rans_head_under_y]
[rans_exp_mehuse_warai]																								
#ランスロット	
「[name]・・・」[p]
#
[rans_mod_idle_no_move_mehuse_2]	
[rans_body_right_z_half]
[rans_exp_bisyo_2]
#&f.name	
（・・・ランスロット・・・）[p]
#

[live2d_fadeout time=1000]
[fadeoutbgm time=7000]
;	スチル																								
;#ランスロット	それは、うれしそうな彼の唇が、何よりも証明してくれる。																								
;#&f.name	初めての・・・優しい、本当に優しい・・・口付け。																								
;#ランスロット	自然に目を閉じて受け入れたそのぬくもりは、今までで一番・・・あたたかくて。																								
;#&f.name	私の頬をまた、涙が一粒零れ落ちる。																								
;#ランスロット	愛する人の指が、その嬉し涙を愛おしそうに・・・本当に愛おしそうに・・・ゆっくりと、撫でてくれた。																								
																									
[image storage="siro.jpg" layer="3" page="fore" visible="true" x="0" y="0" name="siro" time="1000"]
[live2d_delete_all][live2d_off][message_kakusu_ad]
[button_clear][reset_camera]
[free name="siro" layer=3 time=1000]
[wait time=2000]



[bg storage="siro.jpg"]
[wait time=1000]
[playbgm storage="last_sample.ogg"]



[ptext layer="3" page="fore" text="Ranslott" x="300" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]
[ptext layer="3" page="fore" text="Story" x="420" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]

[wait time=3000]
[free name="moji" layer=3 time=1000]

*rans_last_end


[ptext layer="3" page="fore" text="End" x="380" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]
[wait time=3000]
[free name="moji" layer=3 time=1000]


[iscript]
location.reload()
[endscript]
[s]
*epilogue
[fadeoutbgm time=3000]

[bg storage=""]




[anten]



[s]














	暗転																								
																									
	王都の門の前																								
#&f.name																										
「#クライストさん・・・本当に行くの？もうちょっとゆっくりしていっても・・・」[p]
#																								
#&f.name	王都の門の前。私がそういうと、#クライストは残念そうに笑顔をみせた。																								
#クライスト	
「俺もそうしたいところではあるんだけどね。レムがうるさくて」[p]
#																								
#&f.name	
「おじさんが・・・」[p]
#																								
レム	
「人間の多いところは好かん」[p]
#																								
#&f.name	
「・・・・・・・・」[p]
#																								
																									
																									
#クライスト	
「あの堅物と、仲良くね。・・・君に色々嫌な思いをさせて・・・すまなかった」[p]
#																								
#&f.name	
「#クライストさん・・・」[p]
#																								
																									
#クライスト	
「どうあがいても、手に入れられないのなら、いっそのこと嫌われたほうがいい」[p]
#																								
#クライスト	
「・・・・・・・・そんなふうに、思ってた」[p]
#																								
#&f.name	
「え・・・・」[p]
#																								
#クライスト	
「でも、やっぱり俺には無理だった。悩んだり傷ついたりする君を俺は見ていられない」[p]
#																								
#クライスト	
「手が届かなくても・・・笑顔でいてほしいから」[p]
#																								
#&f.name	
（・・・#クライスト・・・さん・・・）[p]
#																								
																									
#クライスト	
「・・・あいつに言っておいてよ」[p]
#																								
#クライスト	
「[name]ちゃんを泣かせることがあったら、俺がすぐにさらいにいってやるってさ」[p]
#																								
#&f.name	
「！・・・く、クライストさんっ・・・」[p]
#																								
																									
#クライスト	
「・・・じゃあね」[p]
#																								
#&f.name	
「クライストさん・・・」[p]
#																								
#&f.name	
「ありがとう・・・ありがとう・・・！！」[p]
#																								
																									
#&f.name	
（#クライストさん・・・）[p]
#																								
																									
#&f.name	
「あ・・・・・・そうだ・・・」[p]
#																								
																									
#&f.name	
「お墓参り、いかなくちゃ・・・」[p]
#																								
#&f.name	
（・・ウェルム団長の・・・）[p]
#																								
																									
	墓地																								
																									
#&f.name	
（あ・・）[p]
#																								
#ランスロット	
「・・・#ランスロット・・・」[p]
#																								
#&f.name	
「・・・#&f.name」[p]
#																								
																									
#ランスロット	
「花を、手向けにきてくれたのか」[p]
#																								
#&f.name	
「う、うん・・・」[p]
#																								
#ランスロット	
「ありがとう」[p]
#																								
#&f.name	
（あれ、もうお墓に花・・・）[p]
#																								
#&f.name	
（・・・これって、#ランスロットが・・・？）[p]
#																								
#ランスロット	
「#ライオネスは、先に帰った」[p]
#																								
#&f.name	
「え・・・あ、きてたんだ・・・じゃあ」[p]
#																								
																									
#ランスロット	
「あいつが花を持っている姿は、そうそう見れるものではないな」[p]
#																								
#ランスロット	
（・・・#ライオネス・・・）[p]
#																								
#&f.name	
「・・・・・・・・・・・・」[p]
#																								
	墓石にはウェルム王宮騎士団長の名前が刻まれている。その名前をじっとみつめながら、#ランスロットはひとつ、息をついた。。																								
#ランスロット	
（・・・#ランスロット・・・）[p]
#																								
#ランスロット	何か言葉をかけたほうがいいのか、黙っていたほうがいいのか。私が迷っていると、彼がこちらを見て口を開いた。																								
#&f.name	
「・・・あいつは、もう行ったのか」[p]
#																								
#&f.name	
「え・・」[p]
#																								
#&f.name	
（あいつって・・・あ）[p]
#																								
																									
#&f.name	
「・・・・・・・うん。ついさっき、門を出て行ったよ」[p]
#																								
#ランスロット	
「・・・・・・そうか・・・・・・」[p]
#																								
																									
#ランスロット	
「････････ひとことでも、礼を言いたかったな・・・」[p]
#																								
#&f.name	
「#ランスロット」[p]
#																								
#ランスロット	
「父上に勝てたのは、あいつのおかげなのだろう？」[p]
#																								
#&f.name	
「・・・うん・・・」[p]
#																								
																									
#ランスロット	
「・・・まあ・・・礼を言ったところで・・・私のためではないというのだろうが・・・」[p]
#																								
#&f.name	
「・・・・・・・」[p]
#																								
	SE風																								
																									
#ランスロット	
「・・・・・・・・・・・・・・」[p]
#																								
																									
#&f.name	
（・・・#ランスロット・・・）[p]
#																								
																									
#ランスロット	
「・・・父上を超えることは」[p]
#																								
#&f.name	
「え？」[p]
#																								
#ランスロット	
「父上を超えることは・・・私の目標だった」[p]
#																								
#&f.name	
「#ランスロット」[p]
#																								
																									
#ランスロット	
「技を磨き・・・いつかは・・・と思っていた。だが・・・」[p]
#																								
#ランスロット	
「手合わせするときもないまま、父上は魔剣を手に入れてしまった」[p]
#																								
#&f.name	
「・・・・・・・・・」[p]
#																								
																									
#ランスロット	
「父上も力を欲したのだろうが・・・魔剣など・・本来の力ではない」[p]
#																								
#ランスロット	
「所詮借り物に過ぎぬのだと・・・そんなことがわからない父上ではないと思っていたのだがな」[p]
#																								
#&f.name	
（#ランスロット・・・）[p]
#																								
																									
																									
#&f.name	
「#ランスロット・・・」[p]
#																								
	SE近づく音																								
#ランスロット	
「#&f.name・・・」[p]
#																								
																									
#ランスロット	
「お前にも・・・礼を言わなくてはならないな」[p]
#																								
#&f.name	
「え？」[p]
#																								
#ランスロット	
「お前が助けてくれなかったら・・・おそらく今私はここにいないだろう」[p]
#																								
#&f.name	
「そんな・・・私は・・・」[p]
#																								
																									
#&f.name	
「たいしたことしてないよ・・・。それに、#クライストさんがいなかったら、私だってやられてたかもしれないし・・・」[p]
#																								
#&f.name	
「・・・それでも、お前がいなければ力を借りることはできなかったわけだろう」[p]
#																								
#ランスロット	
「・・・・・・それは・・・・」[p]
#																								
#ランスロット	
「・・・ありがとう、#&f.name。お前が・・・お前がそばにいてくれて・・・よかった・・・」[p]
#																								
																									
#&f.name	
（なんだろう・・・これ・・・）[p]
#																								
#&f.name	
（すごく安心する・・・ほっとするのは変わらない・・・だけど、ドキドキ、して・・・）[p]
#																								
#&f.name	
（・・・これって・・・？）[p]
#																								
#ランスロット	
「#&f.name」[p]
#																								
#&f.name	
（#ランスロット・・・）[p]
#																								
#&f.name	
（この、声・・・出会ったころから変わらない、優しくて・・・）[p]
#																								
#&f.name	
（いつも安心してた、この声、聞くたび・・・でも、でも今は・・・）[p]
#																								
#&f.name	
（どうしてだろ・・・なんだか・・・）[p]
#																								
																									
#&f.name	
「ランスロット・・・」[p]
#																								
																									
#ランスロット	
「#&f.name・・・私は・・・」[p]
#																								
																									
																									
#ランスロット	
「・・・・・・お前のその声を・・・ずっとそばで聞いていたいと思う」[p]
#																								
#&f.name	
「え・・・・」[p]
#																								
																									
#&f.name	
（声を・・・そばで・・・ずっと・・・って・・・）[p]
#																								
#ランスロット	
「私は・・・」[p]
#																								
#&f.name	
（#ランスロット・・・）[p]
#																								
																									
																									
#&f.name	
（えっ・・・）[p]
#																								
#ランスロット	
「・・・いや・・・すまない」[p]
#																								
#&f.name	
「！！」[p]
#																								
#ランスロット	
（なんで・・・？どうして・・・？）[p]
#																								
#&f.name	
「#ランスロット！」[p]
#																								
																									
																									
#ランスロット	
「なんでもないんだ・・・気にするな」[p]
#																								
#&f.name	
「なんで・・・気にするよ！どうしてそんな・・・言いかけてやめるの・・・？」[p]
#																								
#&f.name	
「#ランスロット・・・らしくないよ」[p]
#																								
																									
#ランスロット	
「・・・・・・・・・今・・・・私の気持ちを言ったら・・・お前は私を軽蔑するだろう」[p]
#																								
#&f.name	
「・・・どうして？今更・・・しないよ」[p]
#																								
																									
#&f.name	
（・・・軽蔑なんかしない。するわけないよ・・・だって）[p]
#																								
#&f.name	
（だって私・・・）[p]
#																								
#ランスロット	
「・・・それでも、駄目だ。こんな・・・」[p]
#																								
#&f.name	
「#ランスロット・・・」[p]
#																								
																									
																									
#&f.name	
「っく・・・」[p]
#																								
#ランスロット	
「イレイ・・・」[p]
#																								
																									
#&f.name	
「なんで・・・駄目なの・・・。駄目じゃないよ！だめなんかじゃ・・・・・・ないよっ！！」[p]
#																								
																									
																									
#ランスロット	
「#&f.name・・・」[p]
#																								
#&f.name	
「嫌ったりなんか・・・しないよ。私・・・わからないけど・・・」[p]
#																								
																									
#&f.name	
「わからないけど・・・でも・・・#ランスロットともっと一緒にいたいって・・・思うから・・・」[p]
#																								
#ランスロット	
「！」[p]
#																								
																									
	
「もっと・・・もっと・・・」[p]
#																								
	
（そう・・・私・・・貴方に・・・）[p]
#																								
	
「だ、抱きしめてほしいって・・・思うから・・・」[p]
#																								
	
「い、#&f.name・・・っ」[p]
#																								
	
「・・・そんなことっ・・・言わないで・・・っ・・・」[p]
#																								
																									
	
「・・・#&f.name・・・」[p]
#																								
																									
	
「・・・お前は・・・そんなことを言って・・・・」[p]
#																								
	
「っく・・ひっく・・・ぅ」[p]
#																								
	
「・・・後悔しても知らないぞ・・・？」[p]
#																								
	
「こ、後悔なんかしないよ・・・するわけないよ・・・」[p]
#																								
	
「#&f.name・・・・」[p]
#																								
	
「ねえ・・・だから、ちゃんと言って・・・・？」[p]
#																								
	
「････････#&f.name・・・・・・・・」[p]
#																								
#&f.name	
「教えて・・・#ランスロットの・・・気持ち」[p]
#																								
																									
#&f.name	
「・・・・・・・・。・・・もう、わかっているんじゃないのか？」[p]
#																								
#ランスロット	
（・・・そう・・・きっと知ってる。私・・・#ランスロットが私に何を・・・伝えたいのか・・・本当は・・・だけど）[p]
#																								
#&f.name	
「・・・聞きたいの。#ランスロットの、言葉で･･･」[p]
#																								
#&f.name	
（聞きたい・・・その声で・・・）[p]
#																								
#ランスロット	
「・・・・・・#&f.name・・・・・」[p]
#																								
	スチル																								
#&f.name	#ランスロットが、そうっと私の髪を撫でる。その気持ちよさに目を閉じると・・・																								
#ランスロット	耳元に唇を近づけて、囁かれる・・・愛しい言葉。																								
#&f.name	吐息がくすぐったい。でも、それよりももっと、胸の中がくすぐったくて、恥ずかしい。																								
#ランスロット	顔がみるみるうちに熱くなった私を、#ランスロットは改めてぎゅうっと抱きしめた。																								
#ランスロット	その優しい腕で、強く強く。																								
																									
#&f.name	
「・・・お前の返事を、聞きたいんだが？」[p]
#																								
																									
#&f.name	
「・・・#ランスロット・・・私も・・・だいすき・・・」[p]
#																								
#ランスロット	『大好き』・・・これはそう、今までどおりの意味じゃない。																								
#&f.name	
「#&f.name・・・」[p]
#																								
	スチル																								
#ランスロット	それは、うれしそうな彼の唇が、何よりも証明してくれる。																								
#&f.name	初めての・・・優しい、本当に優しい・・・口付け。																								
#ランスロット	自然に目を閉じて受け入れたそのぬくもりは、今までで一番・・・あたたかくて。																								
#&f.name	私の頬をまた、涙が一粒零れ落ちる。																								
#ランスロット	愛する人の指が、その嬉し涙を愛おしそうに・・・本当に愛おしそうに・・・ゆっくりと、撫でてくれた。																								
																									

































#ランスロット																									
#&f.name	テーベの海岸																								
#&f.name	#ランスロットがいる																								
	
「#ランスロット！！」[p]
#																								
#ランスロット	
「#&f.name」[p]
#																								
#&f.name	
「あの、お母さんが、そろそろご飯できるからって・・・」[p]
#																								
#ランスロット	
「・・・ああ。少し、申し訳なかったな。事前に訪問を手紙で伝えていたとはいえ・・・」[p]
#																								
#&f.name	
「そんなことないよ！お母さん、すっごいはりきってたし」[p]
#																								
#ランスロット	
（ついでに料理の指導までされちゃったし・・・）[p]
#																								
#&f.name	
「どうした？」[p]
#																								
#&f.name	
「私もいくつか作ったんだけど、お母さんたらいつもより厳しくて・・・」[p]
#																								
#ランスロット	
「・・・なるほどな」[p]
#																								
#&f.name	
（なるほどって・・・）[p]
#																								
#ランスロット	
「ということは、味に期待してもよさそうだな」[p]
#																								
#ランスロット	
「お前の手料理も楽しみだ」[p]
#																								
#&f.name	
（・・・プレッシャーが・・・）[p]
#																								
#&f.name	
「・・・でも、お母さんもなんだかすごい喜んでたみたいで、よかった」[p]
#																								
#ランスロット	
「もしかしたら、反対されるかなって、ちょっと思ってたから・・・」[p]
#																								
#&f.name	
「・・・そうだな・・・」[p]
#																								
#ランスロット	
「し、しかもその先の話までしててね・・・ま、まだ早いよね？そんな・・・」[p]
#																								
#&f.name	
「その先の話？」[p]
#																								
#ランスロット	
「だ・・・だからその・・・えと・・・」[p]
#																								
#&f.name	
「・・・ああ・・・」[p]
#																								
#&f.name	
「まっ・・・孫の顔、とかさ・・・もう、お母さんてば突っ走りすぎだよね！」[p]
#																								
#&f.name	
「・・・お前さえよければ、私はすぐにでもかまわないのだが？」[p]
#																								
	
「へっ・・・？」[p]
#																								
#&f.name	
「え・・・えええええっ！！？？」[p]
#																								
#ランスロット	
「その反応では、まだまだ先のほうがよさそうだな」[p]
#																								
#&f.name	
「えっ・・・えとあの、そういう、意味じゃなくてえーとその・・・」[p]
#																								
#ランスロット	
「・・・えっと・・・」[p]
#																								
#ランスロット	#&f.name真っ赤																								
#&f.name	
「・・・・・・」[p]
#																								
#ランスロット	
「わ、私まだ・・・いろいろと、習わなくちゃならないこととか、も、あるし・・・まだその・・」[p]
#																								
#&f.name	
「そうだな、お前はまだ未熟だ」[p]
#																								
#ランスロット	
（はっきり言われた・・・）[p]
#																								
#&f.name	
「お前は私のことを・・・まだまだ知らないだろう？」[p]
#																								
	
「えっ・・・」[p]
#																								
#ランスロット	
「#ランスロットのことは・・・知ってるよ？だって、ずっと一緒に・・・」[p]
#																								
#&f.name	
「本当に、ちゃんとわかっているか？」[p]
#																								
#ランスロット	
「・・・ランス、ロット・・・？」[p]
#																								
#&f.name	
「・・・私がどれだけ・・・お前のことを想っているか・・・」[p]
#																								
	
「お前には、ちゃんと伝わっているのだろうか」[p]
#																								
	
（#ランスロット・・・）[p]
#																								
#ランスロット	
「・・・それは、私だって同じだよ」[p]
#																								
#&f.name	
「#&f.name・・・」[p]
#																								
#ランスロット	
「#ランスロットは先生だから、仕方ないのかもしれないけど、いまだに子ども扱いみたいなことするし・・・」[p]
#																								
#&f.name	
「！・・・それは・・・」[p]
#																								
#ランスロット	
「ホントに私のこと、・・・そ、そういうふうに思ってるのかなって・・・考えちゃうよ」[p]
#																								
#&f.name	
「・・・#&f.name・・・」[p]
#																								
	
「そ、そりゃあ？#ランスロットから見れば私なんかこ、子供なのかもしれないけど・・・」[p]
#																								
	
（でも・・・）[p]
#																								
	
「あっ・・・」[p]
#																								
	ランス　#&f.nameを引き寄せて、抱きしめる暗転で対応																								
	
「ら、#ランスロット・・・」[p]
#																								
	
「・・・子供だと思っていたら、お前にこんなことをするはずがないだろう」[p]
#																								
	
「だって・・・」[p]
#																								
	
「・・・すまない。お前を不安にさせていたことについては・・・謝る」[p]
#																								
	
「だが・・・その、言い訳するつもりはないが・・・そうでもしないと、自らを保てなくなりそうで・・・」[p]
#																								
	
「保てなくなるって・・・」[p]
#																								
	
「お前を弟子にした以上、師匠でいなくてはならないと思っているのに・・・」[p]
#																								
	
「・・・そんなに、我慢することないよ」[p]
#																								
	
「私が我慢しなければ、お前が困るだろう」[p]
#																								
	
「#ランスロットに子ども扱いされるほうが、よっぽど困るよ！」[p]
#																								
	ランス驚きの表情、そのあとやれやれという笑顔																								
	
「まったくお前は・・・」[p]
#																								
	
「・・・もう・・・子供扱いしないって、約束してくれる？」[p]
#																								
	
「・・・そうだな・・・ああ、わかった」[p]
#笑顔で																								
	
（・・・#ランスロット・・・）[p]
#																								
	キスシーン																								
																									
	
「・・・っ・・・すまない・・・#&f.name」[p]
#																								
	
「・・・え？」[p]
#																								
	
「・・・さっきの件だが・・・やはり、努力はするが、確約はできない」[p]
#																								
	
「ええっ！！なんでっ！？」[p]
#																								
	
「・・・さあ、母上がまちくたびれているだろう。そろそろ行くぞ。ほら急げ」[p]
#																								
	
「ちょ、#ランスロット！！もうー！！」[p]
#																								
																									
																									
																									