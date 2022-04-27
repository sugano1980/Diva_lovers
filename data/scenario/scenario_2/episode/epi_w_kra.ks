;船　船倉にて			
				
				
;#ライオネスと#トリスタン　何やら話し込んでいる		

[playse storage="wave1_koukaonlabo.ogg"]

[bg storage="westa_hune.jpg" time=3000]

[wait time=1000]

[bg storage="hune_rouka.jpg"]


[chara_on][chara_show name="tris" height="603" width="420" top=50 left=-20]
[lioness_tatie_show_right]

#トリスタン	
「・・・だけどなあ・・・」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「・・・でもよお・・・」[p]
#
			
#&f.name	
（・・・あれ？ライオネスとトリスタン？何してるんだろう？・・・というか、トリスタン珍しく体調いいのかな？）[p]
#
			
#&f.name	
「・・・どうしたの？」[p]
#


[lioness_tatie_normal]		
#ライオネス	
「[name]」[p]
#

[tris_tatie_sian]		
#トリスタン	
「ライオネスのやつが、武器を新調したいって言ってるんだ」[p]
#
			
#&f.name	
「武器の新調って・・・今ある大剣じゃだめなの？」[p]
#

[lioness_tatie_otikomi]		
#ライオネス	
「さすがに心元ねえよ・・・ウェスタでは鍛冶屋がなかったし・・・

[lioness_tatie_akireru]
これからクレールに乗り込むってんだぞ？」[p]
#

[lioness_tatie_udekumi]		
#ライオネス	
「ヴァエル持ってるやつが誰だかは知らねえが、・・・あんとき俺は死に掛けた。覚悟していくに越したことはねえ」[p]
#
			
#&f.name	
（あ・・・ルシアと戦ったときのこと、だよね・・・）[p]
#
			
#&f.name	
「・・・そ、それはそうかもだけど・・・けど・・・・」[p]
#

[tris_tatie_ha]		
#トリスタン	
「しかしそんな時間あるのか？ヴァエルを手に入れたやつが、何をするかわからないぞ？」[p]
#

[lioness_tatie_otikomi]		
#ライオネス	
「だけどよぉ・・・」[p]
#
			
#&f.name	
「・・・ん、と・・・とりあえず、どこかの町に寄ってもらえるかどうか、クライストさんにも相談してみよう？」[p]
#

[tris_tatie_mehuse]		
#トリスタン	
「・・・そうだな。決めるのはそれからでも遅くないか・・・」[p]
#
			
#&f.name	
「私、クライストさん探してくるね！」[p]
#

[chara_hide_all]
			
				
;暗転　足音							
;甲板

[anten]
[live2d_kra_touroku]
[live2d_fadeout time=50]
[playse storage="wave1_koukaonlabo.ogg"]
[live2d_kra_show_1]
[bg storage="kanpan2_tasogare.jpg"]
#&f.name	
（えーと・・・クライストさん・・・あ、いた・・・ん？）[p]
#

[chara_new name="raputa" storage="raputa_a_tatie/raputa_a_normal.png"]
[chara_on][chara_show name="raputa" width=230 height=376 left=-3 top=225]

#ラプタ	
「キゥゥゥー」[p]
#

[aho_face_mehuse]
[live2d_fadein time=1000]	



#クライスト	
「・・・・・・・・・・・・・・・・・・」[p]
#
			
#&f.name	
（ラプタと一緒にいるの？・・・なんか珍しいかも・・・）[p]
#

[aho_head_under_y]
[aho_head_right_x]
[aho_face_mehuse_warai]	
#クライスト	
「・・・ワイバーンならこれくらい大きくなれば、自由に空を飛べるはずだろ？」[p]
#

[raputa_a_yowari]			
#ラプタ	
「キゥ・・・」[p]
#

[aho_head_left_z]		
#クライスト	
「・・・ああ、その左足か・・・。
[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]
気持ちはわかるよ。俺もそうだったから」[p]
#
;会話追加；ラプタの足		
#&f.name	
（えっ・・・どういう・・・？）[p]
#

[aho_mod_idle_normal]	
[aho_head_normal]
[aho_head_right_z]
[aho_body_right_z]		
[aho_face_komari_warai]
#クライスト	
「でも、大丈夫だよ。俺よりはまだ・・」[p]
#

[raputa_a_normal]			
#ラプタ	
「キゥゥ」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_arms_udekumi]	
[aho_face_mehuse_warai]
[aho_mod_idle_normal_mehuse]		
#クライスト	
「ほら、それにちゃんと補助用のギプスもつけてるじゃないか。お手製かな？・・・お前の主人は優しいんだな」[p]
#
			
#&f.name	
（補助用の？そういえば、ラプタの左足に木片みたいなのがついてるけど・・・）[p]
#

[aho_face_hutuu_warai]			
#クライスト	
「・・・・・・」[p]
#
			
#&f.name	
（クライストさん・・・すごく優しそうに笑ってる・・・）[p]
#
			
#&f.name	
（・・・確かに、人の命を奪うことは許されないことだけど・・・だけど・・・クライストさんは・・・）[p]
#
			
;#&f.name切な表情

[raputa_a_mihiraki]
#ラプタ	
「・・・キゥ」[p]
#

[stopse]
[playse storage="kusari_onjin.ogg"]

[aho_head_normal]
[aho_body_normal]
[aho_face_mihiraki]	
		
#クライスト	
「ん？・・・あれ、[name]ちゃん。どうしたの？」[p]
#

[chara_hide_all][chara_off]
[live2d_fadeout time=1000]
[playse storage="sanbasiasioto_onjin.ogg"]


[live2d_kra_show_sekkin]
[aho_face_normal]
[live2d_fadein time=1000]
[stopse]
[aho_head_right_z]		
#クライスト	
「俺に何か用？」[p]
#
			
#&f.name	
「あっ・・・う、うん。ごめんなさい」[p]
#

[aho_head_normal]
[aho_face_mihiraki]			
#クライスト	
「なんで謝るの？」[p]
#
			
#&f.name	
「ちょっと前から後ろにいたんだけど、声かけそびれちゃって・・・」[p]
#

[aho_head_right_z]
[aho_head_left_z]
[aho_face_komari_warai]		
#クライスト	
「そんなの、いいのに。
[aho_head_normal]
[aho_head_under_y]
[aho_face_normal]
[aho_arms_udekumi]

何？もしかして・・・俺にみとれてたとか？」[p]
#
			
#&f.name	
「また、からかう・・・」[p]
#


[aho_body_right_z]
[aho_head_right_z]
[aho_face_bisyou_youen]
#クライスト	
「・・・俺はいつでも本気だよ」[p]
#
			
;#クライスト微笑
;（妖艶）[p]
#
			
#&f.name	
「・・・・・・も、もう・・・」[p]
#

[aho_face_smile]
[aho_mod_idle_normal_metoji]		
;#&f.name赤面			
#クライスト	
「ははっ。
[aho_mod_idle_normal]
[aho_face_bisyou_youen]
それで、用っていうのは？」[p]
#
			
#&f.name	
「う、うん・・・実はね、ライオネスが大剣を新調したいって言って・・・」[p]
#
			
#&f.name	
「どこかの街に寄れないかって話になったんだけど・・・」[p]
#

[aho_face_yokome_majime]
[aho_arms_agonite]
[aho_head_right_x]
[aho_head_under_y]	
[aho_body_right_z]		
#クライスト	
「ふうん・・・大剣ねえ・・・」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_arms_normal]
[aho_face_normal_majime]
		
#&f.name	
「ヴァエルも並大抵の相手じゃないだろうから、万全にしていきたいって」[p]
#

[aho_arms_udekumi]
[aho_eyes_right]			
#クライスト	
「彼にしてはずいぶんと慎重だね・・・」[p]
#	

[aho_eyes_normal]
#クライスト	
「でも、あんまりのんびりしてる余裕はないかもよ」[p]
#
			
#&f.name	
「それはわかってるよ。だけどライオネスの気持ちもわかるし・・・」[p]
#

[aho_head_right_x]
[aho_head_left_x]
[aho_head_under_y]	
[aho_face_yokome_warai]	
#クライスト	
「・・・俺がいるんだよ？勝てないことはないよ。
[aho_head_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
楽勝、とまではいかないかもだけど」[p]
#
			
#&f.name	
「クライストさん」[p]
#


[aho_mod_idle_normal_metoji]
[aho_face_metoji]
#クライスト	
「ただ・・・そうだな、封印のために魔力を温存するから、あまり無茶はできない」[p]
#
			
#&f.name	
「じゃあ、そのぶん私達が頑張らないと」[p]
#

[aho_arms_normal]
[aho_mod_idle_normal]
[aho_face_normal_majime]			
#クライスト	
「・・・[name]ちゃん」[p]
#
			
#&f.name	
「あ、でもそうしたら・・・やっぱり・・・ライオネスの言うとおりにしたほうがいいのかな・・・」[p]
#

[aho_head_above_y]
[aho_head_right_x]
[aho_eyes_right_above]
[aho_body_right_z]		
#クライスト	
「・・・そうだなあ・・・」[p]
#

[aho_eyes_normal]
[aho_head_normal]
[aho_body_normal]
[aho_head_under_y]
[aho_head_normal]		
;しばらく考え込む			
#クライスト	
「・・・うん、わかった。俺から船長に相談してみるよ」[p]
#
			
#&f.name	
「ほ、ホントに？」[p]
#

[aho_head_left_x]
[aho_eyes_left]		
#クライスト	
「せっかく乗り込んでいっても、
[aho_head_normal]
[aho_eyes_normal]
やられたんじゃ話にならないしね。
[aho_face_bisyou_youen]
急がば回れとも言うし」[p]
#

[aho_head_under_y]
[aho_head_normal]
			
#&f.name	
「あ、ありがとう、クライストさん！」[p]
#

[aho_face_normal_majime]
[aho_eyes_left]
[aho_body_left_z]		
#クライスト	
「ここから寄るなら・・・ロマナあたりになるかな」[p]
#
			
#&f.name	
「ロマナ・・・」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_body_normal]
[aho_face_bisyou_youen]			
#クライスト	
「うん。ワインで有名な町だよ。
[aho_face_mihiraki]
あ、といっても、
[aho_arms_udekumi]
[aho_body_right_z]
[aho_face_bisyou_youen]
[name]ちゃんにはまだ、早いのかな？」[p]
#
						
#&f.name	
「・・・もう・・・」[p]
#

[aho_face_smile]
[live2d_fadeout time=1000]			
			
[anten]

[playse storage="wave1_koukaonlabo.ogg"]
[bg storage="wesuta_hune.jpg"]


[wait time=2000]
				
;ロマナ到着	

[bg storage="romana.jpg"]
[playse storage="zawameki_soto.ogg"]

#&f.name	
（ここがロマナ・・・綺麗な街・・・。王都ほどじゃないけど、賑わってるみたいだね）[p]
#
			
#&f.name	
（・・・樽がたくさんあるけど・・・あれがワインの樽なのかな）[p]
#


[chara_on][chara_show name="tris" height="603" width="420" top=50 left=-20]
[lioness_tatie_show_right]

[tris_tatie_warai]		
#トリスタン	
「やっぱロマナって言ったら、ワインだろ。なぁ？」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・お前な・・・何しにきたんだよ・・・しかも今は・・・」[p]
#

[chara_hide_all time=50]


[kra_tatie_show_tall]
#クライスト	
「まあまあ、
[kra_tatie_smile]
いいじゃないか。久しぶりの陸で、トリスタンも気分いいんだよ」[p]
#


[chara_move name="kra" left=-70]

[chara_on][chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=400]		
#ライオネス	
「・・・ったく・・・」[p]
#

[kra_tatie_metoji]		
#クライスト	
「そうそう、さっき鍛冶屋を覗いたんだけどさ、今日は休業だって」[p]
#

[lioness_tatie_akireru]		
#ライオネス	
「急いでるときに限ってこれだぜ・・・なんで休みなんだよ」[p]
#

[kra_tatie_normal]			
#クライスト	
「今日はワイン祭りらしくてさ」[p]
#

[lioness_tatie_odoroki]		
#ライオネス	
「祭りー！？」[p]
#

[kra_tatie_yokome]			
#クライスト	
「夕方から無料でワインを振舞ったり、新作ワインの試し飲みがあったりするらしいよ」[p]
#


[chara_hide_all time=50]

[chara_show name="tris" storage="tris_tatie/tris_smile.png" height="603" width="420" top=50]

#トリスタン	
「ほんとうか！？よーし飲むぞ飲むぞ！！」[p]
#
[chara_move name="tris" left=-20]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=400]		
#ライオネス	
「・・・・・・・・・」[p]
#
			
#&f.name	
「ら、ライオネス・・・」[p]
#

[chara_hide_all time=50]

[kra_tatie_show_tall]
#クライスト	
「焦る気持ちはわかるけど、仕方ないよ。明日朝一番に鍛えてもらおう」[p]
#
[chara_move name="kra" left=-70]
[lioness_tatie_show_right]
		
#ライオネス	
「こちとら急ぎなんだぜ？休みでも頼み込めばなんとかなるかもしれねえじゃねえか」[p]
#

[kra_tatie_metoji]		
#クライスト	
「急いだとしても何かあるかもしれない、ゆっくりしたって何もないかもしれない」[p]
#
			
#&f.name	
「クライストさん・・・？」[p]
#

[kra_tatie_yokome]
#クライスト	
「君がそれをしようとしまいと、起こるときは起こるし、起こらないときは起こらないものだよ」[p]
#

[kra_tatie_mehuse]			
#クライスト	
「ただ君が自己満足して、鍛冶屋の機嫌が悪くなるだけのことだ」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「・・・・・・・・・・・・・」[p]
#

[kra_tatie_bisyou_youen]			
#クライスト	
「レムがヴァエルに動きが感じられないっていってたし、大丈夫だよ」[p]
#

[kra_tatie_normal]		
#クライスト	
「無理やり仕事をさせられたんじゃ、鍛冶屋もいい仕事をしないよ」[p]
#

[lioness_tatie_yareyare]			
#ライオネス	
「・・・はあ・・・仕方ねえな・・・」[p]
#

[config_false]
[chara_hide name="kra"]

[chara_show name="tris" storage="tris_tatie/tris_smile.png" height="603" width="420" top=50 left=-20]

#トリスタン	
「そーだライオネス。焦ったってなんもいいことねえ。まずはワインだ！な！」[p]
#
[config_true]
[lioness_tatie_chottoikari]		
#ライオネス	
「てんめえ・・・さっきは時間がねえとかいっといて陸に上がったらこれかよ・・・」[p]
#
			
#&f.name	
（少し不安はあるけど、今は夜明けをまつしかないんだよね・・・）[p]
#

[chara_hide_all]

#&f.name	
「明日は早起きしなきゃね！」[p]
#

[aho_face_bisyou_youen]
[live2d_fadein time=1000]

[aho_head_under_y]
[aho_head_normal]			
#クライスト	
「うん。そのとおり。
[aho_head_right_z]
・・・[name]ちゃんは本当に可愛いね」[p]
#

[aho_head_left_z]		
#&f.name	
「く、クライストさんっ・・・な、なんで・・・」[p]
#

[aho_face_komari_warai]
[aho_eyes_right]
[aho_head_normal]
[aho_head_under_y]		
#クライスト	
「・・・・・・。
[aho_face_mehuse_warai]
[aho_mod_idle_normal_mehuse]
[aho_head_left_x]
[aho_eyes_left]
[aho_body_left_z]
そういう、なんていうか・・・真っ直ぐなところがさ。俺には・・・」[p]
#
			
#&f.name	
（・・・クライストさん・・・？）[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_head_right_z]
[aho_face_normal]	
[aho_head_normal]		
#クライスト	
「・・・ごめん、なんでもないよ。

[aho_head_under_y]
[aho_head_normal]
さあ、宿屋に行こうか」[p]
#
			
[live2d_fadeout time=1000]				
				


[bg storage="romana_rouka.jpg"]

#&f.name	
（・・・えーと・・・宿にきたはいいけど、これからどうしようかな・・・）[p]
#

#&f.name	
（お酒は飲めないけど、お祭り見に行ってみようかな・・・）[p]
#

#&f.name	
「あ」[p]
#

[playse storage="walkyuka_onjin.ogg"]

[aho_arms_normal]
[aho_face_mihiraki]
[live2d_fadein time=1000]
#クライスト	
「・・・[name]ちゃん」[p]
#

[aho_face_tomadoi]
#&f.name	
「クライストさん！」[p]
#

[aho_face_normal_majime]
[aho_head_right_x]
[aho_eyes_right]
[w]
[aho_head_left_x]
[aho_eyes_left]
[w]
[aho_face_metoji]
[wait time=1000]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[aho_eyes_normal]
[aho_head_under_y]

[wait time=3000]

#クライスト	
「・・・[name]ちゃん、
[aho_mod_idle_normal]
[aho_face_normal]
[aho_eyes_left]
[aho_eyes_normal]
今から予定とか、ある？」[p]
#
			
#&f.name	
「どうして？」[p]
#

[aho_body_left_z]
[aho_head_left_x]
[aho_head_under_y]
[aho_eyes_left_under]
[aho_face_komari_warai]	
[aho_face_mehuse_warai]	
[aho_mod_idle_normal_mehuse]			
#クライスト	
「あ、その・・・。よかったら一緒に、散歩でもしない？」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_face_normal]
[aho_mod_idle_normal]			
#クライスト	
「街の中に眺めのいい場所があってさ。
[aho_head_right_z]
海が綺麗に見えるよ」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]	

#&f.name	
「ほんと！？行きたい！[aho_face_hutuu_warai]	
じゃ、今支度してくるね。待ってて！」[p]
#


[aho_face_tomadoi]
[aho_face_hutuu_bisyou]		
;#クライスト笑顔			
;暗転			
;ロマナ、海の見える丘　もしくは海			
[live2d_fadeout time=1000]



[bg storage="romana_umi1_tasogare.jpg"]
[playse storage="wave1_koukaonlabo.ogg"]
#&f.name	
「わああ・・・すっごい！！綺麗・・・」[p]
#

[aho_face_normal]
[live2d_fadein time=1000]	
[aho_head_right_z]
[aho_eyes_right]

#クライスト	
「うん。今日は晴れてるから遠くまで見えるね」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal_majime]		
#&f.name	
「ずっと船に乗ってたから、海は見慣れてるけど、こうやってみるとまた違う感じがする」[p]
#

[aho_face_komari_warai]
[aho_eyes_left]
[aho_face_mehuse_warai]
[aho_face_metoji_warai]
[aho_mod_idle_normal_metoji]		
#クライスト	
「・・・・ああ・・・・」[p]
#
			
;#クライスト微笑;（普通）[p]
#

[aho_eyes_left]
[aho_face_hutuu_warai]
[aho_body_left_z]
[aho_head_left_z]

#&f.name	
（・・・クライストさん・・・）[p]
#

[aho_eyes_normal]			
[aho_face_mihiraki]
[aho_head_normal]
[aho_body_normal]			
#クライスト	
「・・・ん？どうしたの？」[p]
#

[aho_face_normal_majime]			
#&f.name	
「あっ・・・う、ううん、なんでもない・・・」[p]
#

[aho_head_right_z]			
#クライスト	
「もしかして・・・」[p]
#
			
#&f.name	
「み、見蕩れてなんかないんだからね！」[p]
#

[aho_head_normal]
[aho_face_mihiraki]
[aho_head_above_y]
[aho_face_smile]
[aho_mod_idle_normal_metoji]

#クライスト	
「あははは！」[p]
#
[aho_mod_idle_normal]
[aho_head_normal]
[aho_face_yokome_warai]			
#&f.name	
「そう言うつもりだったでしょ？！」[p]
#

		
#クライスト	
[aho_eyes_right]
[aho_head_right_z]
「いや・・・うん。
[aho_head_normal]
[aho_head_under_y]
[aho_eyes_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]	でも・・・そんなことは最初からわかってたけどね」[p]
#

[aho_body_left_z]
[aho_face_komari_warai]
[aho_eyes_left]		
#クライスト	
「むしろ、逆だったのかも」[p]
#
			
#&f.name	
「・・・へ？逆・・・って」[p]
#


[playbgm storage="odai07_ontama.ogg"]
[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal_majime]
#クライスト	
「みとれてたのは、俺のほうなのかもって」[p]
#

[aho_head_under_y]
[aho_eyes_above]		
#&f.name	
「そっ・・・そんな、見蕩れてたって、クライストさんが？？・・・誰に？」[p]
#

[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]
#クライスト	
「・・・誰？
[aho_eyes_left]
それは、[name]ちゃんがよくわかってるんじゃないかな？」
[aho_eyes_right]
[aho_eyes_normal]
[aho_face_bisyou_youen]
[p]
#

[aho_arms_udekumi]
[aho_head_right_z]
[aho_body_right_z]			
#&f.name	
（・・・えーと・・・その・・・つまり・・・つまりは・・・わたしに・・・？）[p]
#
			
;顔がみるみるうちに熱くなる。恥ずかしくなってにこにこしている#クライストに思わず声を上げた。			
#&f.name	
「ま、また、からかうんだから・・・！」[p]
#

[aho_body_normal]
[aho_head_normal]	
[aho_face_normal_majime]	
[aho_arms_normal]	
#クライスト	
「・・・俺はいつでも本気だよ？」[p]
#
			
#&f.name	
「く・・・クライスト、さん・・・」[p]
#

[aho_face_kunou]
[aho_head_under_y]
[w]	
[aho_face_metoji]	
[aho_head_normal]	
[aho_face_bisyou_youen]
;#クライストの瞳が艶を帯びる。息を呑んでそれを見つめると、#クライストはふっと目を細めた。			
#クライスト	
「それとも、ね・・・
[aho_head_right_z]
[name]ちゃん、俺の言うことは全部冗談だと思ってるの？」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse]
[aho_head_normal]
[aho_face_normal_majime]
[aho_arms_udekumi]
[aho_body_right_z]

#&f.name	
「そ・・・そんなこと、は・・・」[p]
#
			
#&f.name	
（ない・・・けど・・・）[p]
#
			
#&f.name	
「っ・・・・」[p]
#

[aho_face_komari_warai]	
[aho_eyes_left]
[aho_head_left_z]
[aho_head_left_x]		
#クライスト	
「・・・ごめん。
[aho_head_normal]
[aho_eyes_normal]
困らせるつもりは、なかったんだけど」[p]

[aho_head_under_y]
[aho_face_metoji]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#
			
#&f.name	
「クライストさん・・・」[p]
#

[aho_face_smile]
[aho_mod_idle_normal_metoji]
[aho_body_right_z]			
#クライスト	
「かわいくてさ。つい」[p]
#
			
#&f.name	
「もう！！クライストさんが、いつもそんなふうだから・・・」[p]
#

[aho_mod_idle_normal]
[aho_body_normal]
[aho_face_bisyou_youen]			
#クライスト	
「うん？」[p]
#
			
#&f.name	
「・・・だから・・・」[p]
#

[aho_face_normal]			
#&f.name	
（・・・あれ・・・。私、何を言おうとしたんだろ・・・クライストさんが冗談言うのは、いつものことで・・・でも）[p]
#
			
#&f.name	
（・・・なんだろ・・・この、気持ち・・・）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse]		
#クライスト	
「・・・・・・」[p]
#

	
[bg storage="romana_tasogare_ac.jpg"]											
;#クライスト、#&f.nameを見つめたあと、少し目を伏せ、そのあと通常笑み

[aho_mod_idle_normal]
[aho_face_normal_majime]
[aho_eyes_left]		
#クライスト	
「・・・もうすぐ日が暮れるね」[p]
#

[aho_head_left_z]			
;画面オレンジっぽく			
#&f.name	
「あ・・・」[p]
#
			
#&f.name	
（ホントだ・・・なんだか）[p]
#
			
#&f.name	
「・・・なつかしい」[p]
#

[aho_head_normal]
[aho_face_mihiraki]			
#クライスト	
「え？」[p]
#

[aho_face_normal_majime]
[aho_head_right_z]
#&f.name	
「あ・・・」[p]
#
			
#&f.name	
「私・・・その、ほ、ほら港町で育ったから・・・」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「ああ・・・」[p]
#

			
#&f.name	
「わ、私のお父さんが漁師でね、それでこうやって夕日を見ながら子供の頃帰りを待ってて」[p]
#


[aho_face_normal_majime]
[aho_mod_idle_normal]
#クライスト	
「・・そうなんだ、お父さんが・・・」[p]
#
			
#&f.name	
「うん・・・結局、最後の漁に出たあとは、戻ってくることなかったんだけどね」[p]
#	
;#クライストが心配そうに、私の顔を覗き込む。

[aho_body_left_z]
[aho_face_tomadoi]
[aho_arms_normal]
#クライスト	
「[name]ちゃん」[p]
#


#&f.name
「ごめんなさい。でも、今は大丈夫だよ、現実を受け入れるのには、ちょっとかかったけどね」[p]
#
		

;気を使わせたくなくて、私は明るくいう。だけど#クライストの表情は変わらなかった。ちょっと気まずい。		

[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・・・・・・・・・」[p]
#
			
#&f.name	
（ほ、他の話題でも・・・。そういえば、クライストさんはどこで育ったんだろう？あんまり聞いたことないけど・・・）[p]
#
			
#&f.name	
「え、・・・えっと・・・クライストさんは？」[p]
#

[aho_face_mihiraki]	
[aho_head_normal]		
#クライスト	
「ん？」[p]
#
			
#&f.name	
「どこで育った、とか・・・聞いたことなかったな、って思って」[p]
#

[aho_face_normal]
[aho_head_left_z]
[aho_head_above_y]
[aho_eyes_left]			
#クライスト	
「ああ、俺？俺は、子供のころは山間の村に住んでたよ」[p]
#

;会話追加；山間の村	

#&f.name	
「山・・・」[p]
#

[aho_head_normal]
[aho_head_left_x]
[aho_head_under_y]
[aho_face_mehuse_warai]	
[aho_mod_idle_normal_mehuse]		
#クライスト	
「うん。両親がいなくなってからは、すぐに出たけどね」[p]
#
			
#&f.name	
「いなくなってって・・・」[p]
#

[aho_head_normal]
[aho_face_metoji]
[aho_mod_idle_normal_metoji]			
#クライスト	
「・・・[name]ちゃんのお父さんと同じだよ。この世にはもういない」[p]
#
			
#&f.name	
「あ・・・ごめんなさい」[p]
#

[aho_mod_idle_normal]
[aho_body_right_z]
[aho_face_mihiraki]
[aho_face_komari_warai]	
[aho_head_right_x]
[aho_head_above_y]
[aho_eyes_right]
#クライスト	
「いいよそんな。もう、両親のことは思い出になってる」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_body_left_z]
[aho_arms_udekumi]
[aho_face_normal]

#クライスト	
「[name]ちゃんも、そうだろ？」[p]
#
			
#&f.name	
「私は・・・うん。そう、だね・・・そうかもしれない。けど・・・」[p]
#

[aho_face_mihiraki]	
#クライスト	
「[name]ちゃん？」[p]
#			
#&f.name	
「時々、本当はどこかで生きてるのかもって、思っちゃうことがある・・・姿を見ていないから・・・」[p]
#			
#&f.name	
「絶対そんなこと、あるわけないのにね」[p]
#


[aho_face_komari]
#クライスト	
「・・・[name]ちゃん・・・」[p]
#

[aho_eyes_left]
[aho_head_left_x]
[aho_head_above_y]
		
#クライスト	
「・・・気持ちはわかるよ。死んだって聞かされても、見なければ到底信じられない」[p]
#

[aho_head_right_x]
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
			
#&f.name	
「うん・・・」[p]
#
			
;#&f.name	#&f.name悲しい表情

[aho_head_left_x]
[aho_body_left_z]
#クライスト	
「・・・・・・・・・・」[p]
#

[stopbgm]

[aho_head_under_y]
[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]
[aho_arms_normal]
#クライスト	
「・・・っ・・・・ぁ」[p]
#

#&f.name	
「・・・！？クライスト、さん！！？？」[stopse][p]
#


[playse storage="dash-leather-shoes1_koukaonlabo.ogg"]	

[live2d_fadeout time=800]

[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[aho_arms_kurusimu]	
[aho_mod_idle_kurusimu]
[wait time=1000]
[aho_face_kunou]
[stopse]
[live2d_fadein time=2000]

#クライスト	
「ご、ごめん・・・その、だ、だいじょうぶだよ・・・」[p]
#
			
#&f.name	
「で、でも・・・」[p]
#

[aho_face_kunou_metoji]		
#クライスト	
「い、いいんだ。宿までいって、横になればすぐ・・・」[p]
#
			
#&f.name	
（クライストさん・・・前にも、前にもこんなことが・・・どうしてなんだろう・・・どこか病気・・・なの？）[p]
#
			
#&f.name	
（でも今はとにかく宿までいかないと・・・）[p]
#
			
#&f.name	
「クライストさん、大丈夫？肩、貸すから・・・」[p]
#

[playse storage="hukukosure_onjin.ogg"]

[aho_face_kunou]
			
#クライスト	
「あ、ありがとう・・・ごめん」[p]
#
			
#&f.name	
「そんなこと、気にしないで・・・」[p]
#

[aho_face_kunou_metoji]
		
#クライスト	
「・・・・・・・・・[name]・・・・・・・」[p]
#
[live2d_fadeout time=1000]			
[anten]			
;暗転			
;宿の部屋			
[bg storage="romana_rouka.jpg"]

#&f.name	
「クライストさん、なにか、お水とか持ってこようか？なんならお医者さん呼んだほうが・・・」[p]
#

[aho_body_under_y]
[aho_head_under_y]
[aho_face_mehuse_warai]
[live2d_fadein time=1000]
#クライスト	
「・・・だいじょうぶ、だよ・・・。ありがとう、[name]ちゃん」[p]
#

[aho_head_right_x]
[aho_body_right_z]
[aho_face_kunou_metoji]
			
#&f.name	
「クライストさん・・・」[p]
#

[aho_face_tomadoi]	
[aho_head_normal]		
#クライスト	
「大丈夫・・・。俺は大丈夫だから。
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
気にしないで、祭りでも見ておいでよ」[p]
#
			
#&f.name	
「でも・・・」[p]
#
[aho_face_kunou_metoji]
[aho_head_under_y]
[aho_head_right_x]			
#クライスト	
「いいから。ほら、もう少ししたら俺も、行くから・・・。

[aho_head_normal]
[aho_head_left_z]
[aho_mod_idle_normal]
[aho_face_komari_warai]
ワインがただなのに、寝てたらもったいない」[p]
#
			
#&f.name	
「クライストさん・・・。で、でも本当に、何かあったら呼んでね？」[p]
#

[aho_head_under_y]
[aho_head_normal]	
[aho_eyes_normal]		
#クライスト	
「うん。・・・ありがとう」[p]
#


[live2d_fadeout time=1000]
[playse storage="simerusizuka_onjin.ogg"]
;（満面の笑み）[p]
;#
			
#&f.name	
（クライストさん・・・）[p]
#
			
[anten]				
;暗転			
				
			
;祭り			


[bg storage="romana.jpg"]
[playbgm storage="maturi_musmus.ogg"]


#&f.name	
「・・・・・・・・・・・」[p]
#


#&f.name	
（あれからだいぶたったけど・・・クライストさん、いない・・・本当に大丈夫なのかな・・・）[p]
#


[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「・・・なんだ？ずいぶん暗い顔して。どうした？」[p]
#
			
#&f.name	
「ら、ライオネス・・・あの、クライストさん見なかった？」[p]
#

[lioness_tatie_udekumi]			
#ライオネス	
「ああ？いや、見てねえな・・・
[lioness_tatie_kosinite]
あいつも結構酒好きだから、絶対来るだろうとは思ってたが・・・」[p]
#

[chara_move name="lion" left=-70]	

[tris_tatie_touroku]
[chara_show name="tris" storage="tris_tatie/tris_smile.png" height="603" width="420" top=50 left=360]
#トリスタン	
「俺の酒をのめー！！メスライオーン！！」[p]
#

[lioness_tatie_chottoikari]			
#ライオネス	
「うっせえこの酔っ払いが！！！つかメスライオン言うんじゃねえよっ！！」[p]
#
			
#&f.name	
「と、トリスタン！クライストさん見なかった！？」[p]
#

[lioness_tatie_yareyare]			
#ライオネス	
「・・・こんな酔っ払いに聞いても無駄だろうが・・・」[p]
#

[tris_tatie_mihiraki]			
#トリスタン	
「おお？ああ、あいつなら女と一緒にあそこにいるぞ？」[p]
#
			
#&f.name	
「えっ・・・」[p]
#	
[fadeoutbgm time=1000]
[chara_hide_all]
;##クライスト、女の子と楽しそうな姿	

[aho_arms_normal]
[aho_head_right_z]
[aho_face_bisyou_youen]
[live2d_mod name="aho" y=-1.8 x=0.0 scale=4.2]
[live2d_fadein time=1000]


#&f.name	
「・・・・・・・・・」[p]
#

[live2d_fadeout time=1000]	


[lioness_tatie_show]
#ライオネス	
「ったく・・・・あのやろう、相変わらずだな」
[lioness_tatie_yareyare]
[p]
#


#&f.name	
（・・・もう、なおったんだ・・・でも）[p]
#
			
;#クライストの姿			
#&f.name	
（あんなに、楽しそうに・・・女の人と・・・）[p]
#
			
#&f.name	
（・・・・・・・・・・・・なんか・・・・・・・・・・）[p]
#


[playse storage="dash-gravel1_koukaonlabo.ogg"]

;#&f.name駆け出す	
[lioness_tatie_odoroki]		
#ライオネス	
「おい、[name]！！？？」[p]
#
			
[chara_hide_all][chara_off]
[live2d_delete_all][live2d_off]

[anten]
#&f.name	
（治って、よかったって・・・思えるはずなのに・・・）[p]
#
			
#&f.name	
（なんなの・・・・・・なんでこんな・・・）[p]
#
			
#クライスト	
『俺はいつでも本気だよ』[p]
#


#&f.name	
「・・・・・・・・・・嘘つき・・・・・・・・・・・」[p]
#

[stopse]			




;森の中	


[bg storage="romana_mori_tasogare.jpg"]
[playse storage="walk-tussock1_koukaonlabo.ogg"]
#&f.name	
「はあ・・・はあ・・・」[p]
#
			
#&f.name	
（・・・ここは、街のはずれ・・・こんなところにまで来ちゃったんだ・・・）[p]
#
			
#&f.name	
「・・・・・はぁ・・・・・」[p]
#
[playse storage="step11_macchi.ogg"]	

;どさりと、草の上に座る			
#&f.name	
「・・・・・・・。最初から、そういう人だったじゃない、クライストさんは・・・」[p]
#
			
#&f.name	
「今までだって、こんなこと何度も・・・」[p]
#
			
#&f.name	
（・・・あったはずなのに・・・どうして今は・・・）[p]
#
			
#&f.name	
「・・・・私・・・・どうしちゃったんだろ・・・・」[p]
#
			
;ウェイト			
#&f.name	
「・・・・・・・・・はあ・・・・・・・・・」[p]
#
			
#&f.name	
（このまま、ここにいてもしょうがないし・・・とりあえず帰ろうかな・・・でも・・・・・）[p]
#
			
#&f.name	
（・・・・クライストさんに・・・・・・会いたくない・・・）[p]
#
			
#&f.name	
「・・・・どうしよう・・・・・・・ん？」[p]
#
			
#&f.name	
（なんだろう・・・あれ・・・森の奥で何か光ってる・・・？）[p]
#
[playse storage="walk-tussock1_koukaonlabo.ogg"]			
;がさがさ足音			
;暗転			
				
#&f.name	
（なんだろ・・・あの光・・・）[p]
#
			
#&f.name	
（なんで・・・どうしてだろ・・・すごく、懐かしい感じがする・・・）[p]
#
			
#&f.name	
（・・・この先に・・・何があるんだろう・・・）[p]
#
			
;全部が不可解だった。そもそも、どうして火もないのに、こんなに明るいのか・・・	
[stopse]
[image storage="irain_father.png" layer="3" page="fore" visible="fore" x="0" y="0" name="father" time="1000"]		
#&f.name	
「・・・・誰か・・・いる・・・？」[p]
#
			
;光のむこうに、誰かが・・・私に背を向けて立っていた。			
#&f.name	
（・・・え・・・あれは・・・）[p]
#
			
#&f.name	
（お母さんが作った上着、お守りがわりにって、海に出るときにはいつも着ていってた・・・）[p]
#
			
#&f.name	
（・・・あれは・・・あれは―）[p]
#
			
#&f.name	
「・・・・・お父さん・・・・・？」[p]
#
[free name="father" layer=3]			
				
;祭りの会場。			


[bg storage="romana.jpg"]	



[tris_tatie_touroku]
[chara_show name="tris"  height="603" width="420" top=50 storage="tris_tatie/tris_ikari_kutiake.png"]
#トリスタン	
「クライスト！！てめえちゃんと飲んでんのか？？ぜんっぜん素面じゃねえかあ！！」[p]
#

[chara_move name="tris" left=-20]	
[kra_tatie_touroku]
[kra_tatie_show_right]
#クライスト	
「明日二日酔いにならない程度にはね。
[kra_tatie_yokome]
・・・ところで、[name]ちゃんの姿がないようだけど」[p]
#

[chara_hide_all time=50]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=0]		
#ライオネス	
「くっそ・・・あいつ、一体どこいきやがった・・・」[p]
#

[chara_move name="lion" left=-70]	
[kra_tatie_show_right]		
#クライスト	
「ライオネス」[p]
#

[lioness_tatie_chottoikari]		
#ライオネス	
「クライスト！[name]見なかったか」[p]
#

[kra_tatie_yokome]			
#クライスト	
「いや、俺は・・・宿にいるんじゃないのか？」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「あいつ、さっきお前が女といるとこ見てから、急に走り出してよ・・・追いかけたが、こんな暗がりじゃ・・・」[p]
#

[kra_tatie_mehuse]			
#クライスト	
「・・・[name]・・・」[p]
#

[lioness_tatie_kosinite]		
#ライオネス	
「何もなきゃいいけどな・・・さっき酔っ払いから聞いたんだが、町外れの森はやべえって」[p]
#

[kra_tatie_normal]			
#クライスト	
「魔物の森だろ？俺も町の女の子から聞いたよ。特に夜は・・・」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「ああ・・・くっそ・・・なんかあったら兄貴に殺される・・・」[p]
#

[kra_tatie_metoji]			
#クライスト	
「俺が探してくるよ。夜でも君よりは目が利くから。闇雲に探して不明者が増えても仕方ない」[p]
#

[lioness_tatie_kimazui]			
#ライオネス	
「・・・わーった・・・。頼むぜ」[p]
#

[chara_hide name="lion"]

	
[kra_tatie_mehuse]
#クライスト	
（・・・・・・・・・・[name]・・・・・・・・・・・）[p]

#

[chara_hide_all]						
[bg storage="romana_mori_tasogare.jpg"]			
;森の中。
[image storage="irain_father.png" layer="3" page="fore" visible="fore" x="0" y="0" name="father" time="1000"]		
[playse storage="walk-tussock1_koukaonlabo.ogg"]
#&f.name	
（やっぱり・・・お父さんだ、間違いない・・・）[p]
#
			
#&f.name	
（でも・・・どうして、こんなところに・・・？）[p]
#


#&f.name	
「お、お父さん！」[p]
#

[free name="father" layer=3]
[playse storage="kusahasiru_onjin.ogg"]
[wait time=2000]

[stopse]
#&f.name	
「ま、まって！！」[p]
#	
[playse storage="kusahasiru_onjin.ogg"]
[image storage="irain_father.png" layer="3" page="fore" visible="fore" x="0" y="0" name="father" time="1000"]	
[wait time=2000]
[free name="father" layer=3]			
#&f.name	
「ど・・・どうして・・・」[p]
#
[stopse]
[playse storage="kusahasiru_onjin.ogg"]							
#&f.name	
（こんなに走ってるのに、どうして追いつけないの・・・？）[p]
#
[stopse]			
#&f.name	
「・・・はぁ・・・、はぁ・・・」[p]
#				
#&f.name	
（どうして・・・お父さん・・・）[p]
#
			
[playse storage="kusahasiru_onjin.ogg"]
[wait time=2000]
[image storage="irain_father.png" layer="3" page="fore" visible="fore" x="0" y="0" name="father" time="1000"]	
[free name="father" layer=3]				
				
#&f.name	
「ああ・・・」[p]
#
							
#&f.name	
（あっ・・・）[p]
#
[playse storage="taoreru_koukaonlabo.ogg"]
[quake count="3" time="3" hmax="0" vmax="100"]


#&f.name	
「いたっ・・・」[p]
#

#&f.name	
（あ・・・）[p]
#

#&f.name	
「おっ・・・お父さん・・・まって・・・まって！！」[p]
#


[playse storage="kusahasiru_onjin.ogg"]			
				
;踏み出した足が、ずぶり・・・と地面にめり込んだ。
[wait time=2000]
[playse storage="tobikomu_koukaonlabo.ogg"]
[quake count="3" time="5" hmax="0" vmax="80"]
#&f.name	
（えっ・・・）[p]
#

[bg storage="siro.jpg" time=50]

#&f.name	
（水・・・！！？？）[p]
#
[bg storage="romana_mizuumi_tasogare.jpg" time=50]

;現れたのは・・・見渡す限りの広い、水面。			
#&f.name	
（えっ・・・な、なんで・・・だってさっきは確かに・・・）[p]
#
			
#&f.name	
（ここ・・・・・どこ・・・・・・）[p]
#
[playse storage="tobikomu_onjin.ogg"]			
				
#&f.name	
「だっ・・・誰か・・・！！！誰かぁ・・・っ・・・・・っっっ」[p]
#
[playse storage="suichu_onjin.ogg" loop=true]	
[anten]							
#&f.name	
（・・・・・だれ・・・か・・・）[p]
#				
#&f.name	
（・・・・・・たすけ・・・・・・・・・て・・・・・）[p]
#



				
[stopse]	
[bg storage="romana_mizuumi_hotori_tasogare.jpg"]			
;ロマナ湖　夜。	
[chara_show name="kra" storage="&f.kra_mihiraki" top=0 left=130]		
#クライスト	
「！！！・・・あれは・・・」[p]
#
			
#クライスト	
「[name]っっ！！？？」[p]
#
[chara_hide_all time=50]
[image layer=3 page=fore name="kuro" visible=true storage="black.png"]
[playse storage="tobikomu_onjin.ogg"]

;飛び込む水音			
				
;暗転			
;水音	
[live2d_fadeout time=1000]		
[live2d_kra_touroku]
[live2d_kra_show_sekkin_2]

[free name="kuro" layer=3]
[playse storage="chapu_tairakomori.ogg"]
[fadeoutse time=5000]

[aho_face_kunou]
[aho_mod_idle_normal_mehuse]




[aho_head_right_x]
[aho_head_under_y]
[aho_body_right_z]
[aho_body_above_y]
[aho_body_under_y]

[live2d_fadein time=1000]

#クライスト	
「・・・っはぁ・・・
[aho_body_above_y]
[aho_body_under_y]
はぁ・・・」[p]
#
			
#&f.name	
「・・・・・・・・・・」[p]
#

[aho_body_normal]
[aho_mod_idle_normal]
[aho_face_komari]

#クライスト	
「[name]！！[name]！！！」[p]
#
			
#&f.name	
「・・・・・・・・・・っ・・・けほっ」[p]
#
[aho_head_above_y]
[aho_face_mihiraki]
[aho_head_under_y]
#&f.name	
「っは、あっ・・・げほっ・・・げほっ・・・」[p]
#

[aho_body_above_y]
[aho_body_under_y]
[aho_face_naki_warai]					
#クライスト	
「・・・[name]・・・！！よかった・・・よかった・・・
[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]
」[p]
#
[aho_face_naki_warai]
[aho_mod_idle_normal_mehuse]
#&f.name	
「・・・クライスト、さん・・・」[p]
#
			
[aho_head_right_z]
[aho_body_right_z]			
				
#&f.name	
（・・・クライストさん・・・泣いてるの・・・？ううん、そんなことより・・・）[p]


#&f.name	
「・・・ここ・・・それにどうして私、こんなに濡れて・・・」[p]
#

[aho_head_normal]
[aho_body_normal]
[aho_mod_idle_normal]
[aho_face_normal_majime]			
#クライスト	
「・・・覚えてないんだ。[name]ちゃん、ロマナの森に入っただろ？」[p]
#


#&f.name	
「あ・・・そういえば・・・そう、お父さんが、森にいて・・・」[p]
#

[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]			
#クライスト	
「・・・・・・・」[p]
#
			
#&f.name	
「お、お父さんはっ！？」[p]
#

[aho_head_normal]
[aho_face_normal_majime]
[aho_mod_idle_normal]			
#クライスト	
「[name]ちゃん、よく聞いて。君のお父さんはもう、この世にはいない」[p]
#
			
#&f.name	
「え・・・」[p]
#

[aho_head_right_x]
[aho_eyes_right]			
#クライスト	
「・・・ロマナの森には、故人を幻影で見せ人を惑わす魔物が巣食ってた」[p]
#
			
				
				
#&f.name	
「じゃ・・・じゃあ・・・」[p]
#

[aho_eyes_normal]
[aho_head_normal]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#クライスト	
「君はお父さんの幻で誘われて、湖に引き込まれたんだよ」[p]
#

[aho_face_metoji]		
[aho_mod_idle_normal_metoji]
#クライスト	
「ロマナの湖は底なしとも言われる深い湖だ。引き込まれたら、ほとんど命はない」[p]
#
			
#&f.name	
「クライストさん・・・」[p]
#

[aho_face_normal_majime]	
[aho_mod_idle_normal]		
#クライスト	
「あと一歩遅かったら、本当に危なかったよ。
[aho_head_right_z]
[aho_face_bisyou_youen]
だけどもう、大丈夫」[p]
#
			
				
#&f.name	
「・・・ど、どうして・・・」[p]
#
[aho_head_normal]
[aho_face_mihiraki]
[aho_mod_idle_normal]			
#クライスト	
「え？」[p]
#

			
#&f.name	
「さ、さっきまで、女の人と・・・」[p]
#

[playse storage="tobikomu_koukaonlabo.ogg"]

#&f.name	
「えっ・・・」[p]
#
[aho_head_under_y]
[aho_face_gantobasi]
[aho_eyes_right]

[playse storage="monster_tairakomori.ogg"]


[aho_body_right_z]
[aho_head_right_x]
[aho_head_above_y]

#クライスト	
「・・・追ってきたのか・・・下がって！！」[p]
#

[live2d_fadeout time=500]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[aho_face_normal_majime]
[aho_eyes_right]
[aho_arms_kamae]
[live2d_fadein time=500]

#&f.name	
（これって・・・これが・・・さっき言ってた・・・湖のモンスター！！？？）[p]
#

[live2d_fadeout time=1000]
;バトル
;[s]
[aho_mod_idle_normal]
[aho_arms_normal]
[aho_eyes_normal]
[aho_face_normal_majime]
[aho_body_normal]
[aho_head_normal]
[wait time=2000]
[live2d_fadein time=1000]
#クライスト
「・・・まさか陸にまであがってくるなんてね・・・
[aho_head_right_z]
大丈夫？」[p]
#

#&f.name
「あ・・・」[p]
#

[aho_eyes_left]				
#&f.name	
（本当は・・・お礼を言わなくちゃ、ならないんだよね・・・クライストさんが、いなかったら私・・・）[p]
#

[aho_head_normal]
[aho_eyes_normal]			
#&f.name	
（だけど・・・なんだろ・・・この気持ち）[p]
#

[aho_face_mihiraki]
#クライスト
「[name]？」[p]
#

#&f.name	
（そうだよ・・・クライストさんが・・・女の人と、あんなに楽しそうにするから・・・私・・・だから・・・）[p]
#				
;本当に、綺麗な顔立ちだと思う。本人も女好きのようだが、女の人にもきっとモテるのだろう。			
;私は掌をぎゅっと握り締めた。	
#&f.name	
（変なの・・・私、今までこんなこと、考えたこともなかったのに）[p]
#

[aho_head_under_y]
[aho_head_left_x]
[aho_face_mehuse]	
[aho_mod_idle_normal_mehuse]		
#&f.name	
（クライストさんは・・・女の子が大好きで・・・でも、私にとってはそれだけのことで・・・）[p]
#
			
				
#&f.name	
（何だろう・・・この気持ち。すごく・・・嫌だ・・・）[p]
#


#&f.name	
「は、は、くしゅんっ・・・」[p]
#

[aho_face_mihiraki]
[aho_face_komari_warai]
[aho_head_right_z]
[aho_body_right_z]
#クライスト	
「とにかく、びしょぬれだね。火を起こそうか」[p]
#
[live2d_fadeout time=1000]
[anten]

[bg storage="romana_mizuumi_hotori_tasogare.jpg"]

[playbgm storage="takibi_onjin.ogg"]
#&f.name   
（クライストさんが、女の子みんなに優しいことくらい、わかってる・・・）[p]
#

#&f.name   
（でも・・・私だけに、優しかったらな、なんて・・・私だけに・・・笑ってくれたらな、とか・・・）[p]
#
;クライストが他の女の人に、向けている笑顔。どうして、私だけに向けてはくれないのだろう。			
				
#&f.name	
（私・・・何、考えてるんだろ・・・こんな、こと・・・）[p]
#


[aho_head_under_y]
[aho_head_right_x]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[live2d_fadein time=1000]
#クライスト	
「・・・ああ、やっぱり気持ち悪いな・・・」[p]
#

[live2d_fadeout time=1000]			
[playse storage="hukukosure_onjin.ogg"]	

[live2d_hide name="aho"]
[live2d_delete_all]
[live2d_new name="aho" model_id="aho_hanra" lip=true jname="クライスト"]
[live2d_show name="aho" y=-2.8 scale=6.2]
;[aho_body_hanra]
;[aho_head_normal]
;[wait time=1000]
[live2d_fadein time=1000]			
#クライスト	
「よっ・・・と・・・」[p]
#
			
#&f.name	
「！」[p]
#
			
				
#&f.name	
「ご、ごめんなさい、後ろ、向いてるね？」[p]
#

[aho_face_mihiraki]	
[aho_body_right_z]
[aho_face_komari_warai]		
#クライスト	
「え？・・・はは、いいよ、そんなの・・・」[p]
#
			
#&f.name	
「で、でも・・・」[p]
#

[live2d_fadeout time=1000]	
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]		
[aho_body_normal_hanra]
[aho_face_normal_majime]				
				
#クライスト	
「・・・ん・・・？どうかした？」[p]
#
			
;上半身裸				
[live2d_fadein time=1000]				
				
#&f.name	
（クライストさんの、体中に・・・何・・・？いれ・・・ずみ・・・？）[p]
#
			
;彼の肩に、その胸に、腹部に、腕に、背中にまで広がる、赤黒く不気味な紋様。			
;目をこらせば、刺青ではないようだった。まるで傷跡のように、その部分だけ皮膚がえぐれ、変色しているようにも見える。			


[playbgm storage="op_musmus.ogg"]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「・・・アグレアスの、紋章だよ」[p]
#
			
#&f.name	
「そ、それって・・・」[p]
#

[aho_face_normal_majime]
[aho_eyes_left]			
#クライスト	
「最初は胸だけだった。ディーヴァを宿すものは皆、胸元に紋章を刻まれる」[p]
#
			
#&f.name	
「だけどそれって・・・」[p]
#
[aho_head_under_y]
[aho_eyes_normal]
[aho_face_metoji]
[aho_mod_idle_normal_metoji]			
#クライスト	
「・・・１０年もこいつと一緒にいれば、こんなふうにもなるよ」[p]
#
			
#&f.name	
「１０、年・・・じゃ、じゃあ・・・」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]			
#クライスト	
「・・・１５のときだよ。俺が、アグレアスと契約したのは」[p]
#
			
#&f.name	
（そんなに長く、クライストさんはディーヴァを・・・）[p]
#
			
#&f.name	
（・・・前に、おじさんが言ってたっけ・・・）[p]
#

[aho_head_normal]
[aho_face_normal_majime]							
#&f.name	
「・・・痛く、ないの？」[p]
#

[aho_head_right_z]
[aho_face_komari_warai]
[aho_eyes_right]
#クライスト	
「痛くはないよ。紋章自体はね。
[aho_head_normal]
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
ただ・・・アグレアスが体内に作用するときは・・・少しだけ」[p]
#
			
#&f.name	
「作用・・・って」[p]
#

[aho_body_left_z]
[aho_head_left_x]
[aho_face_mehuse_warai]
#クライスト	
「まあ、いろいろとね。弊害が、ないわけじゃないから・・・」[p]
#

[aho_body_normal_hanra]
[aho_mod_idle_normal_metoji]
[aho_face_metoji]			
#&f.name	
「・・・」[p]
#
			

			
;あのとき、本人は大丈夫だと言っていたが、どうみても尋常ではなかった。			
;もしかしたら、それのことなのだろうか。			
;#クライストの苦しげな表情を思い出して、胸がしめつけられる。	

[aho_body_left_z]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト	
「弊害といっても・・・自分の望みで宿したから、そんなことを言っちゃいけないんだろうけど」[p]
#
			
				
#&f.name	
（望み・・・クライストさんは、自分の意思で魔剣を手に入れたって言ってたけど・・・）[p]
#

[fadeoutbgm time=3000]			
#&f.name	
（どうして・・・魔剣を欲しいって、思ったのかな・・・）[p]
#
			

[aho_head_normal]
[aho_body_normal_hanra]
[aho_face_mihiraki]		
[aho_mod_idle_normal]		
#クライスト	
「・・・何？」[p]
#
						
#&f.name	
（聞きにくい・・・けど、聞いて、みたい・・・）[p]
#
			
#&f.name	
（クライストさんのこと、もっと知りたい・・・）[p]
#


[aho_face_bisyou_youen]	
[aho_head_left_z]		
#クライスト	
「俺に見蕩れてる？なんて、
[aho_head_right_x]
[aho_head_under_y]
[aho_face_komari_warai]
[w]
[aho_mod_idle_normal_mehuse]
[aho_head_left_x]

[w]
[aho_face_mehuse_warai]
そんなことないか」[p]
#
			
;悲しげな笑み			
				
#&f.name	
「クライストさんは・・・、どうして・・・」[p]
#

[aho_head_normal]
[aho_body_normal_hanra]
[aho_face_normal_majime]			
#クライスト	
「・・・・[name]ちゃん」[p]
#
			
#&f.name	
「どうして、魔剣が欲しいって思ったの？」[p]
#

#クライスト	
「・・・知りたいんだ？」[p]
#
[aho_head_left_x]
[aho_eyes_left]
[aho_face_naki_warai]			
;寂しげに笑う	

#&f.name	
「・・・聞いちゃ、いけなかった？」[p]
#

[aho_body_left_z]
[aho_mod_idle_normal_metoji]
[aho_face_metoji_warai]		
#クライスト	
「・・・いや。そんな質問をされたのは、久しぶりだから」[p]
#
			
[aho_head_right_x]
;[aho_head_above_y]
[aho_eyes_right]
[aho_body_right_z]
[aho_face_normal_majime]				
#クライスト	
「・・・力が、欲しかったから。でも、こんな答えじゃ、君は納得しないんだろうね」[p]
#
			
#&f.name	
「クライストさん・・・」[p]
#

[aho_body_normal_hanra]
[aho_head_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]							
#クライスト	
「俺の両親がもう、この世にいないって話はしたよね？」[p]
#
			
#&f.name	
「うん・・・。そのあと、クライストさんは村を出たって・・・」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_metoji]			
#クライスト	
「俺の・・・親はさ・・・正確には、義理の両親だった」[p]
#
[fadeinbgm storage="kokoronomeiro_ontama.ogg" time=3000]			
#&f.name	
「義理の・・・？てことは・・・」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#クライスト	
「俺は捨て子だったんだよ。孤児院にいたところを、引き取ってもらったんだ」[p]
#
			
#&f.name	
「そうだったの・・・クライストさん・・・そうだったんだ・・・」[p]
#

[aho_face_metoji]			
#クライスト	
「うん。
[aho_face_komari_warai]
[aho_head_right_x]
まあ・・・捨て子なんか、珍しいことじゃなかったから。親が死んじゃった子も当時は多かったし」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse]			
#クライスト	
「ただ、俺の場合は・・・」[p]
#
			
#&f.name	
「え？」[p]
#


[aho_face_normal]
[aho_eyes_right]
#クライスト	
「ああ、いや・・・。
[aho_face_mehuse]
[aho_eyes_normal]
それで・・・しばらくは俺のことを大事に育ててくれたんだけどね」[p]
#

[aho_face_normal_majime]			
#クライスト	
「山から下りてきたモンスターに、ふたりとも殺されたんだ」[p]
#
			
#&f.name	
「！！！・・・モンスター・・・」[p]
#

[aho_head_left_x]
[aho_body_left_z]	
[aho_head_under_y]	
[aho_face_mehuse]	

#クライスト	
「父は母と俺をかばって、母は俺をかばって・・・
[aho_face_metoji]
[aho_mod_idle_normal_metoji]
そして、血の海になった家の中で、俺は願った」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_eyes_left]
[aho_face_kunou]
#クライスト	
「『誰にも負けない、強い力が欲しい』[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_body_normal_hanra]
#クライスト	
「『大切な人を守るための・・・力。
[aho_face_metoji]
・・・俺にもあったら・・・父も母も、助けられたのにって』」[p]
#
			
#&f.name	
「クライストさん・・・だから、そのときに・・・？」[p]
#

[aho_head_normal]
[aho_face_normal_majime]			
#クライスト	
「アグレアスは俺を選んだと言った。
[aho_face_kunou]
[aho_head_right_x]
[aho_eyes_right]
俺の強く悲しい願いに、呼応したのだと」[p]
#
			
				
#&f.name	
（・・・大切な人を守るための、力・・・）[p]
#
			
#&f.name	
（それって、同じだ・・・。私が、剣を習いたいって言ったその、理由と・・・）[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_face_metoji]			
#クライスト	
「・・・すごい力だった。
[aho_face_mehuse]
絶対に、負けることなんかありえなかったから。力も、そして特別な力、魔力も・・・」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]		
#クライスト	
「・・・その代償は、あまりにも大きいものだったけどね・・・」[p]
#
			
#&f.name	
「命を、奪い続けなきゃならないってこと・・・？」[p]
#

[aho_face_normal_majime]			
#クライスト	
「・・・うん。それもあるけど・・・むしろそれよりも」[p]
#
			
#&f.name	
「クライスト、さん・・・・・・？」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#クライスト	
「・・・・・・・・」[p]
#

#&f.name	
（・・・そういえば・・・クライストさん、街で一緒に海を見たとき・・・）[p]
#


#&f.name	
「もしかして・・・あれって・・・ディーヴァの、影響なの・・・？」[p]
#
			
#&f.name	
（そうだ、クライストさん、痛みは体に作用するときにってさっき・・・）[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]			
#クライスト	
「・・・・・・・」[p]
#
							
#&f.name	
（そう、なんだね・・・はっきりとは言わないけど、クライストさん、きっと・・・）
[aho_mod_idle_normal]
[aho_face_normal_majime]
[p]
#




[aho_face_komari_warai]
[aho_body_left_z]
#クライスト	
「・・・そんな顔、しなくても」[p]
#
			
;泣きそうな顔で笑う	
[aho_body_normal_hanra]	
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_naki_warai]	

#クライスト	
「これは俺の、自業自得なんだから。命を狩らなくてはならないことも、・・・体の痛みも」[p]
#
			
				
#&f.name	
（そんなことじゃない・・・そんなんじゃない・・・）[p]
#
			
#&f.name	
（だって・・・クライストさんは）[p]
#
			
#&f.name	
「自業自得、なんかじゃないよ・・・」[p]
#

[aho_head_normal]
[aho_face_normal_majime]
[aho_arms_normal]			
#クライスト	
「[name]ちゃん」[p]
#
			
#&f.name	
「クライストさんは・・・何も、悪くないよ・・・」[p]
#

[aho_face_komari]			
#クライスト	
「[name]ちゃん、
[aho_head_right_z]
;[aho_body_right_z]
;[aho_body_left_x]
[aho_face_kunou]
でも・・・」[p]
#
			
#&f.name	
「大切な人を守りたいって思うのは、当然のことだよ！！私だって・・・私だって」[p]
#
			
#&f.name	
「みんなを守りたくて・・・剣を習ったんだよ・・・っ・・・」[p]
#

[aho_head_normal]
[aho_body_normal_hanra]	
[aho_face_mihiraki_n]		
;#クライスト見開き			
				
#&f.name	
「悪いのは、ディーヴァだよ！！お父さんとお母さんを守りたいって思ったクライストさんは、何も悪くない！！」[p]
#

[aho_face_tomadoi]			
#クライスト	
「[name]・・・」[p]
#
			
#&f.name	
（だから・・・）[p]
#
			
#&f.name	
「だから・・・そんなふうに自分を責めないで・・・」[p]
#
			
#&f.name	
「自業自得なんて、そんなこと言わないで・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_kunou]			
#クライスト	
「っ・・・・・・・・・」[p]
#
			
;#クライストの、その瞳が潤む。			
			
;#クライストは息をつまらせ、目元を手で覆った。覆ったまま、口を開いた。


[aho_head_right_x]
[aho_eyes_right]
[aho_face_naki_warai]
#クライスト	
「・・・[name]・・・。ありがとう・・・」[p]
#

[fadeoutbgm time=3000]			
#&f.name	
「クライスト、さん・・・」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]			
#クライスト	
「だけどもう、言わないでくれないか」[p]
#
			
#&f.name	
「えっ・・・」[p]
#
			
;#クライストは顔から手を離し、私に微笑んだ。もう、泣いてはいないようだったけどやっぱり・・・寂しげな笑みだった。			

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
#クライスト	
「・・・優しく、しないでほしいんだ」[p]
#
			
#&f.name	
「どう・・・して・・・」[p]
#

[aho_face_kunou_metoji]			
#クライスト	
「・・・・・・・・・・・・・欲が・・・」[p]
#

[aho_face_kunou]			
#クライスト	
「欲が・・・出てしまうから」[p]
#
[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]			
;クライストは私から視線をそらした。何かに必死に耐えるように、顔をしかめ、目をつぶっていた。			
#&f.name	
（・・・クライストさん・・・欲・・・？・・・欲・・・って・・・）[p]
#


[aho_head_normal]
[aho_body_normal_hanra]
[aho_face_normal]			
[aho_eyes_right]
[aho_mod_idle_normal]

#クライスト	
「さあ、もうそろそろ戻ろう。風邪、ひいちゃうよ？」[p]
#
			
#&f.name	
「あ・・・で、でも・・・っくしゅんっ！！」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_smile]
;[aho_arms_udekumi]			
#クライスト	
「ほら、
[aho_mod_idle_normal_mehuse]
[aho_face_bisyou_youen]
[aho_body_right_z]
・・・ね？」[p]
#
			
#&f.name	
「クライストさん・・・」[p]
#
[aho_body_normal_hanra]
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]


;いつもの微笑			
#&f.name	
（・・・なんでだろ・・・なんで・・・）[p]
#

[aho_mod_idle_normal]
[aho_head_under_y]
[aho_head_right_x]
[aho_face_komari_warai]			
				
#クライスト	
「あんまり遅くなって、ライオネスが変な想像しても困るからね」[p]
#
			
[aho_head_normal]
[aho_mod_idle_normal_mehuse]          
[aho_face_smile]			
#&f.name	
（・・・クライスト、さん・・・）[p]
#

[aho_face_mehuse]
[aho_head_above_y]
[aho_head_left_x]

[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]				
;暗転			
[anten]				
;宿			

[bg storage="romana_rouka_yoru.jpg"]

[lioness_tatie_touroku]
[chara_on][chara_show name="lion" storage="&f.lion_akireru" height="698" width="456" top=-35 left=0]
#ライオネス	
「やっと帰ってきやがったか！！心配かけやがって・・・」[p]
#
			
#&f.name	
「ら、ライオネス、ごめんなさい・・・」[p]
#
			
[lioness_tatie_odoroki]				
#ライオネス	
「おまえ・・・びしょ濡れじゃねえか・・・どうした、これ」[p]
#
			
#&f.name	
「あ・・・あの・・・」[p]
#
			
[chara_move name="lion" left=-70]	
[kra_tatie_show_right]			
#クライスト	
「危なかったよ。ロマナの森の魔物に、湖に引き込まれかけたんだ」[p]
#

[lioness_tatie_akireru]			
#ライオネス	
「お前・・・・」[p]
#
			
				
#&f.name	
「ご、ごめんなさい・・・」[p]
#

[lioness_tatie_udekumi]			
#ライオネス	
「なんで夜の森なんかに入ったんだよ・・・」[p]
#
			
#&f.name	
（それは・・・）[p]
#
			
#&f.name	
「それは・・・その・・・く、クライストさんが」[p]
#
			
[kra_tatie_mihiraki]				
#クライスト	
「え？俺が・・・、何？」[p]
#
			
#&f.name	
「・・・・・・その」[p]
#
			
#&f.name	
（女の人といたのが嫌でなんて・・・この場で言えるわけない・・・）[p]
#
			


[lioness_tatie_yareyare]
#ライオネス	
「・・・まあ・・・とりあえず無事ですんでよかったってとこだな・・・			
	わりいな、クライスト」[p]
#
			
[kra_tatie_smile]				
#クライスト	
「俺にとっても、[name]ちゃんは大切な女の子だからね」[p]
#
			
#&f.name	
「・・・・・・・・」[p]
#
			
#&f.name	
（・・・また、そんなこと言う・・・クライストさんはいつも・・・）[p]
#
			
#&f.name	
（女の子には誰だってそんなこと・・・きっと言ってるはず。本気なはず・・・ないよね）[p]
#
[kra_tatie_normal]			
#&f.name	
「・・・・・・」[p]
#
			
[kra_tatie_mehuse]
[lioness_tatie_akireru]				
#ライオネス	
「お前、とにかく部屋で服乾かせ。風邪でもひかれたらめんどーだ」[p]
#

[chara_hide name="lion"]							
#&f.name	
「う、うん・・・」[p]
#


#クライスト	
「・・・」[p]
#

[chara_hide_all]		
[anten]				

[bg storage="romana.jpg"]

[playse storage="tori_tairakomori.ogg"]
;自由行動							
;翌朝　鍛冶屋前	

[tris_tatie_touroku]
[chara_show name="tris" storage="tris_tatie/tris_naki.png" height="603" width="420" top=50]
#トリスタン					
「あぁ・・・頭がいてえ・・・」[p]
#
		
#&f.name	
「ライオネス、大剣鍛えてもらってるみたいだけど・・・トリスタンは、槍、鍛えてもらわないの？」[p]
#
			
#トリスタン		
「いやあもう俺、それどころじゃ・・・とにかく頭がいてえ・・・」[p]
#
			
#&f.name	
（・・・もう・・・。大丈夫なのかな・・・）[p]
#
			
#&f.name
「あれ、そういえば、クライストさんはどこに・・・？」[p]
#

[tris_tatie_ha]			
#トリスタン	
「あー？あいつなら、広場で子供らと遊んでたぞ。全くのんきなもんだな」[p]
#
			
#&f.name	
（子供たちと・・・？）[p]
#

[chara_hide_all]			
				
;子供	ロマナの広場			
#子供たち	
「わー！！今度は、お兄ちゃんが鬼だよ！！」[p]
#


[chara_show name="kra" storage="&f.kra_smile" top=0 left=130]			
#クライスト	
「よーし！！俺から逃げられる？」[p]
#
			
#子供たち
『きゃあーーーっ！！』	[p]
#


#&f.name	
（クライストさん・・・子供たちとあんなに楽しそうに・・・）[p]
#
			
#&f.name	
（・・・笑って・・・）[p]
#
			
;#クライスト	#クライストの笑顔。スチル？			
;#&f.name	『・・・大切な人を、守る力が欲しかったから・・・』回想の#クライスト			


#&f.name
（・・・・・・・・・・）[p]
#

[chara_hide_all]			
;#&f.name憂いの表情。			
				
;船			
				
;レム	レム、すごく不機嫌な表情
[anten]
[bg storage="kanpan2_tasogare.jpg"]
[playse storage="wave1_koukaonlabo.ogg"]

[rem_tatie_touroku]
[rem_tatie_show]
#レム
「クライスト、ずいぶん遅かったな。あと少しくるのが遅ければ、船員どもを皆殺しにしていたところだ」[p]
#


[chara_move name="rem" left=-140]
[kra_tatie_show_right]
#クライスト	
「・・・ごめん、レム。今度こそクレールに出発だ」[p]
#

[kra_tatie_mehuse]			
#クライスト		
「・・・さあ、行こう」[p]
#
			
#&f.name
（クライストさん・・・）[p]
#

[chara_hide_all]
[lioness_tatie_show]			
#ライオネス		
「とりあえず・・・だ。やれることはやったって感じだな」[p]
#
			
#&f.name
「うん・・・頑張らないとね」[p]
#

[lioness_tatie_kosinite]			
#ライオネス	
「さっき船長から聞いたが、ロマナからは１日くらいでクレールについちまうらしい」[p]
#

[lioness_tatie_udekumi]			
#ライオネス	
「・・・気、ひきしめていけよ」[p]
#
			
#&f.name	
「う、うん！」[p]
#

[chara_hide_all]
[anten]			
				
;暗転			
				
;船倉			

[bg storage="hune_rouka.jpg"]				
#&f.name	
（ライオネスからあんなふうに、はっぱかけられたけど・・・）[p]
#
			
#&f.name	
（不安がないっていえば、嘘になる・・・）[p]
#
			
#&f.name	
「・・・はあ・・・」[p]
#
			
#&f.name	
（でもこうして悩んでても仕方ないよね。部屋に戻って、もう一回剣の点検しよう）[p]
#
			
#&f.name
「よし！頑張ろう！」[p]
#
			
#？
「っ・・・う・・・」[p]
#
			
#&f.name	
「・・え？」[p]
#
			
#&f.name	
（今、なんか・・・うめき声みたいな・・・）[p]
#

[playse storage="walkyuka_onjin.ogg"]

[w][w][w]
;#クライスト	足音			
[live2d_kra_touroku]
[live2d_fadeout time=100]
[live2d_kra_show_1]

[aho_mod_idle_kurusimu]
[aho_arms_kurusimu]
[aho_face_kunou_metoji]
[wait time=5000]
[live2d_fadein time=3000]
[stopse]
#クライスト
「っっ・・・うあぁ・・・あ・・・」[p]
#
			
;#&f.name	#クライスト、苦しげな表情			
#&f.name	
「クライストさんっ！！？？」[p]
#

[playse storage="yukahasiru_onjin.ogg"]			
#&f.name	
「だ、大丈夫っ！！？？」[p]
#

[live2d_fadeout time=1000]
[stopse]
[live2d_kra_mod_sekkin_2]
[aho_face_kunou]	
[live2d_fadein time=1000]
#クライスト
「[name]・・・いや、だいじょ・・・っ」[p]
#

[live2d_fadeout time=50]
[playse storage="taoreru_koukaonlabo.ogg"]			
;#&f.name	倒れる音			

#&f.name	
「く、クライストさん！！クライストさんっっ！！」[p]
#
			
#クライスト	
「・・・・・・・・・」[p]
#
			
#&f.name	
（・・・意識、ないみたい・・・ど、どうしよう・・・）[p]
#
			
#&f.name	
「部屋まで運べればいいけど、私一人の力じゃ・・・誰か呼ばないと・・・」[p]
#

[playse storage="walkyuka_onjin.ogg"]	
;#&f.name	レム現れる	


[rem_tatie_show]
#&f.name	
「あっ・・・おじさん！！」[p]
#

[stopse]		
#レム	
「・・・・・・・」[p]
#
			
#&f.name	
「おじさん・・・クライストさんが・・・！！」[p]
#

[rem_tatie_metoji]		
#レム	
「当然だ。・・・これだけ自らの体をディーヴァに侵されていればな」[p]
#
			
#&f.name	
「えっ・・・」[p]
#

[rem_tatie_mehuse]
#レム
「・・・来るべきときは、もうまもなくだ」[p]
#
			
#&f.name	
「来るべき・・・ときって・・・」[p]
#
			
#&f.name
（どういう、こと・・・？）[p]
#
			
#&f.name	
「・・・・・・・・・・」[p]
#

[rem_tatie_yokome]			
#レム	
「・・・ふん」[p]
#
			
#&f.name	
「と、とにかく、このままじゃ・・・！クライストさんを部屋に運ばないと・・・」[p]
#
			
#&f.name	
「おじさん！手伝って・・・」[p]
#

			
#レム	
「・・・・・」[p]
#
			
#&f.name	
「おじさんっ！！」[p]
#

[rem_tatie_metoji]			
#レム	
「ちっ・・・仕方ない・・・」[p]
#

[chara_hide_all]			

[anten]				
				

[bg storage="hune_room.jpg"]		
#&f.name	
（クライストさん・・・全然目、覚さない・・・まるで、生きているのかさえ・・・）[p]
#

[rem_tatie_show]			
#レム	
「なかなかにしぶといものだな・・・。もうほとんどアグレアスに食い尽くされているといっても過言ではないというのに」[p]
#
			
#&f.name	
「食いつく・・・されるって・・・」[p]
#

[rem_tatie_metoji]			
#レム	
「それほどにこの世に未練があると見える」[p]
#
			
#&f.name	
（この世・・・未練・・・！？）[p]
#
			
				
#&f.name	
「ど、どういうこと！？クライストさんは、クライストさんは・・・」[p]
#

[rem_tatie_normal]			
#レム	
「ここまで言ってもまだわからんか。小娘」[p]
#
			
#&f.name	
「っ・・・」[p]
#

[playbgm storage="yamidoukutu_ontama.ogg"]		

[rem_tatie_mehuse]				
#レム	
「魔剣を宿した者は、他のものの命を奪いながら、力を強めた思念体・・・ディーヴァにその体内を侵食されていく」[p]
#
			
#&f.name	
「ディーヴァが・・・体内に・・・？確かに、あの時体に作用するっては言ってたけど・・・」[p]
#
			
				
[rem_tatie_warai]				
#レム	
「『作用する』か・・・奴らしい言い方だ。お前に事実を隠したくて、わざと曖昧な表現を使ったか」[p]
#
			
#&f.name	
「クライストさんが・・・隠したかった、事実・・・って・・・」[p]
#

[rem_tatie_normal]			
#レム	
「ディーヴァは貪欲に宿主の狩った命を食らい、強めた魔力で宿主の体を自らと同化させる」[p]
#

[rem_tatie_mehuse]
#レム
「・・・宿主の肉体を自らのものとし、自身が人間狩りをするのが、奴らの目的なのだ」[p]
#
			
#&f.name	
「アグレアスが、・・・アグレアスがクライストさんの体を自分のものにするってことなの・・・！？」[p]
#
			
[rem_tatie_normal]				
#レム	
「そうだ。今は肉体だけだが、精神が侵され奴が奴でいられなくなるのももう、時間の問題だ」[p]
#
			
#&f.name	
「っっ・・・・・」[p]
#
			
#&f.name	
（く、クライストさんが・・・）[p]
#
			
#&f.name	
「嘘・・・そんな・・・」[p]
#
			
				
[rem_tatie_metoji]				
#レム	
「それはアグレアスだけではない。ヴァエルもまた、同じこと」[p]
#

[rem_tatie_normal]
#レム
「ディーヴァは人間への復讐のためだけに存在している。魔剣はいわば・・・人間を根絶やしにするために、我ら魔族が作り出した呪いの剣」[p]
#
			
#&f.name	
「・・・。だから・・・クライストさんの体中に、あの黒い紋章が・・・？」[p]
#

[rem_tatie_yokome]		
#レム	
「もう全身のいたるところに広がっているのだろうな。奴がそれをどう思っているかなど・・・俺には関係のない話だが」[p]
#
			
				
				
#&f.name	
「お、おじさんは・・・なんとも思わないの！？クライストさんが、クライストさんがいなくなるんだよ！？」[p]
#

[rem_tatie_normal]			
#レム	
「虫けらのような人間などそれこそ掃いて捨てるほどいる。そんなものがひとりいなくなったところで、なんの問題もないだろう」[p]
#
			
#&f.name	
「そんな言い方・・・」[p]
#
[fadeoutbgm time=4000]			
				
#レム	
「俺を責めるか？勝手にしろ。だがもう、こいつの運命は誰にも変えられない。			
俺を罵って気が済むのなら、いくらでもするがいい」[p]
#
			
#&f.name	
「っ・・・」[p]
#
			
#レム	
「・・・ふん」[p]
#

[chara_hide_all]
[playse storage="walkyuka_onjin.ogg"]
[fadeoutse time=2000]				
				
[anten]	
[bg storage="hune_room.jpg"]	
#&f.name	
「嘘・・・うそ、だよね・・・そんなこと・・・そんなことあるわけ、ないよね・・・？」[p]
#
			
#&f.name	
（クライスト・・・さん・・・）[p]
#
			
				
#&f.name	
「・・・っうっ・・・ひっく・・・・・・・・・・・・」[p]
#
						
				
#&f.name	
（クライストさんが、いなくなるなんて・・・そんなこと、そんなこと・・・）[p]
#
			
[anten]	
[live2d_fadeout time=50]
[live2d_kra_touroku]
[live2d_kra_show_sekkin_2]
[aho_mod_idle_normal_metoji]
[aho_face_metoji]

[bg storage="hune_room.jpg"]				
				

[live2d_fadein time=1000]				
#クライスト	
「・・・・・・ん・・・・・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#&f.name	
「あっ・・・。クライスト、さん・・・」[p]
#
			
				
#クライスト	
「・・・[name]・・・ちゃん・・・」[p]
#

[aho_face_naki_warai]			
#クライスト	
「ずっと・・・ついててくれたのか・・・」[p]
#
			
#&f.name	
「・・・・・・・・うん・・・・・・・・」[p]
#
			

[aho_face_mehuse]
[aho_head_right_x]
[aho_body_right_z]
				
#クライスト	
「さっきは、ごめん。心配かけたね」[p]
#
			
#&f.name	
（・・・そんなこと・・・）[p]
#
			

[aho_head_normal]
[aho_body_normal]
[aho_body_left_z]
[aho_face_naki_warai]				
#クライスト	
「・・・目が真っ赤だ。そんなに不安だった？」[p]
#
[playse storage="huku1_koukaonlabo.ogg"]			
				
				
#&f.name	
「クライスト・・・さん・・・」[p]
#

[aho_mod_idle_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_hutuu_warai]			
#クライスト	
「ん？」[p]
#
			
#&f.name	
「ほんと、なの・・・？」[p]
#
			
[aho_face_normal_majime]			
#クライスト	
「・・・・・・・・・・・」[p]
#
			
				
#&f.name	
「クライストさんが・・・アグレアスに・・・そ、その」[p]
#
			

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]				
#クライスト	
「・・・・・・・・・。君にそれを教えたのは、レムかな」[p]
#
			
#&f.name	
「部屋まで運ぶのを・・・手伝ってくれて・・・」[p]
#

[aho_head_above_y]
[aho_head_left_x]
[aho_body_left_z]
[aho_face_komari_warai]
[aho_eyes_left]		
#クライスト	
「へえ・・・。あいつにしては、珍しいね」[p]
#
			
#&f.name	
「クライストさん」[p]
#
			

[aho_body_right_z]
[aho_head_right_x]
[aho_head_under_y]
[aho_face_mehuse]			
#クライスト	
「・・・レムが、君にどこまで話したのかわからないけれど・・・全て本当のことだよ」[p]
#
			
#&f.name	
「っ・・・」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_mod_idle_normal_metoji]
[aho_face_metoji]
#クライスト	
「あいつに余計な嘘をつく理由なんかないからね」[p]
#
			
#&f.name	
「じゃ・・・じゃ・・あ・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#クライスト	
「君には・・・あまり、知られたくなかったな・・・」[p]
#
			
#&f.name	
（ほんとの・・・ことなんだ・・・）[p]
#
			
#&f.name	
（でも・・・）[p]
#
			
#&f.name	
（クライストさん・・・なんで・・・）[p]
#
			
				
#&f.name	
「・・・クライストさん・・・怖く、ないの？」[p]
#


[fadeinbgm storage="chinkou_ontama.ogg" time=3000]
[aho_mod_idle_normal]
[aho_eyes_left]
[w]
[aho_eyes_normal]	
[aho_face_normal_majime]	
#クライスト	
「・・・・・・・怖い？なぜ」[p]
#
			
#&f.name	
「だって・・・」[p]
#
			
				
#&f.name	
「アグレアスに体を奪われて、自分が自分じゃなくなるって・・・それって、死んじゃうのと同じようなことなんだよ！？			
	どうしてそんなに・・・落ち着いていられるの・・・」[p]
#
			
#クライスト	
「[name]」[p]
#
			
				
				
#&f.name	
「死にたくない、もっと生きたいって、そんなふうに思わないの？」[p]
#

[aho_head_under_y]
[aho_body_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]			
#クライスト	
「・・・俺がどうあがいたところで、何が変わるわけじゃないよ。			
	結局・・・どうすることもできないんだから」[p]
#
			
				
				
#&f.name	
（・・・ああ・・・そうか・・・クライストさんは・・・クライストさんは・・・）[p]
#
			
				
				
#&f.name	
「・・・っ・・・ね・・・それでも・・・なんとかして生きていたいって・・・思うのが、普通でしょ・・・？」[p]
#
			

[aho_mod_idle_normal]
[aho_face_normal_majime]
[aho_head_normal]
[aho_body_normal]	
[aho_head_above_y]
[aho_eyes_left]		
[aho_head_left_x]	
#クライスト	
「・・・もちろん、おびえて生きていた時期もある。
[aho_eyes_normal]
[aho_head_normal]
[aho_head_under_y]
[aho_face_mehuse]
最初は・・・そうだった。
[aho_mod_idle_normal_metoji]
[aho_face_metoji]			
	だけど・・・。前にも言ったけど、これは俺がもともと望んだことなんだ」[p]
#
			
#&f.name	
（また・・・そんなこと、言う・・・）[p]
#
			
				

[aho_mod_idle_normal]
[aho_face_normal_majime]				
#クライスト	
「だからさ・・・心配や同情をされるべき対象じゃない。君がそうやって・・・悲しむ必要なんか・・・」[p]
#
			
#&f.name	
（クライストさんは・・・どうして・・・こんなふうに―）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_right_x]
[aho_head_under_y]
[aho_face_kunou]			
#クライスト	
「それに・・・人間に迫害を受けて死んでいった、魔族たちの無念を考えたら・・・」[p]
#
			
#&f.name	
「・・・・・・・・・・」[p]
#

[aho_mod_idle_normal]
[aho_face_normal_majime]
[aho_head_normal]

#クライスト	
「・・・[name]・・・？」[p]
#
			
				
				
#&f.name	
「そんなの・・・そんなの・・・、関係・・・ないよ・・・！」[p]
#

[aho_face_mihiraki]			
#クライスト	
「え・・・・・・・・・」
[aho_face_normal_majime]
[p]
#
			
#&f.name	
「関係ないんだよ・・・どうなるとかどうにもならないとか、魔族の無念とか、そんなの関係ないんだよ！」[p]
#

#&f.name
「私・・・気持ちが知りたい。クライストさんの、『本当の』気持ち・・・！！」[p]
#

[aho_face_mihiraki]			
#クライスト	
「っ・・・」
[aho_mod_idle_normal_mehuse]
[aho_body_right_z]
[aho_head_right_x]
[aho_face_kunou][p]
#
			
							
#&f.name	
「クライストさん・・・・・本気なの・・・・・？			
	・・・本当の、本気でそう思ってるの・・・？」[p]
#


[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]
#クライスト	
「・・・・・・・っ」[p]
#
			
							
#&f.name	
「本当に、ほんとうに・・・この世界に未練なんかないんだって、いつ死んでもいいなんて・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_eyes_left]			
#クライスト	
「っ・・・[name]っ・・・」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_2]	
[aho_eyes_normal]		
#&f.name	
「本当にそんなふうに思ってるの！！？？」[p]
#

[stopbgm]
[aho_mod_idle_normal]
[aho_head_normal]
[aho_body_normal]
[aho_body_above_y]
[quake count="3" time="5" hmax="0" vmax="50"]			
#クライスト	
[aho_face_ikari]
「思ってるわけないだろうっっ！！！」[p]
#
			
#&f.name	
「！！！！」[p]
#
			
;#クライストが叫ぶ。私を睨みつけて、肩で息をして。はじめてみると思った。			
				
#&f.name	
「く・・・クライスト、さん・・・」[p]
#

[aho_body_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]			
#クライスト	
「君は俺に何を言ってほしいんだ。
[aho_head_left_x]
[aho_head_under_y]
[aho_mod_idle_normal_metoji]
[aho_face_kunou_2]
死にたくないって、すがりついてほしいのか！！？？
[aho_head_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]			
変えられない未来に、逆らってどうするっていうんだ・・・」[p]
#
			
#&f.name	
「クライストさん・・・」[p]
#
			
[aho_mod_idle_normal_metoji]
[aho_face_kunou_2]				
#クライスト	
「ああ、君の言うとおりだよ。

[aho_head_right_x]
[aho_head_left_x]

俺は、まだ死にたくない、死にたくなんかない」[p]
#
[aho_body_left_x]
[aho_body_left_z]
[aho_eyes_left]
[aho_head_right_x]	
[aho_mod_idle_normal]	
#クライスト	
「今まではそんなこと・・・思うだけで無駄だと思っていたのに・・・全部、全部、何もかも、諦めるつもりでいたのに・・・」[p]
#
			
#&f.name	
「・・・・・・・・」[p]
#
			
[aho_head_normal]
[aho_head_under_y]
[aho_eyes_normal]
[aho_mod_idle_normal_metoji]
[aho_face_kunou_2]		
#クライスト	
「君はどうしてそうやって、俺の決心を鈍らせるんだ・・・」[p]
#

#クライスト	
「君さえ・・・			
	君さえいなければ、こんな・・・図々しいことも思わなかった・・・」[p]
#
			
#&f.name	
「・・・私の・・・せい・・・？図々しい、ことって・・・」[p]
#
			
				

[aho_face_kunou]				
#クライスト	
「・・・・・・・・・・・・っっ」[p]
#
			
#&f.name	
「クラ・・」[p]
#
			
				
[aho_face_kunou_2]				
#クライスト	
「・・・・・・出て行ってくれないか」[p]
#
			
#&f.name	
「えっ・・・で、でも」[p]
#

[quake count="3" time="5" hmax="0" vmax="50"]
[aho_mod_idle_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_ikari]			
#クライスト	
「出て行ってくれっっ！！！」[p]
#
			
#&f.name	
「っ・・・」[p]
#

[playse storage="yukahasiru_onjin.ogg"]	
[live2d_fadeout time=500]		
				
#&f.name	
（・・・クライスト・・・さんっ・・・）
[stopse]
[playse storage="simerusizuka_onjin.ogg"]
[anten]
[p]
#
			
				
[bg storage="hune_rouka.jpg"]				
				
#&f.name	
「・・・・な・・・なんで・・・クライストさん、あんな・・・」[p]
#
			
;#クライスト	『出て行ってくれっ！！』			
#&f.name	
「・・・・なんで・・・・・」[p]
#
			
				
				
				
#&f.name	
「・・・・・・」[p]
#
			

[anten]	
.[r][w]
.[r][w]
.[r][w]
[p]
[bg storage="kanpan_yoru_tasogare.jpg"]				
						
[playbgm storage="wave1_koukaonlabo.ogg"]				
#&f.name	
（・・・もうすこしで、クレールに、つくんだよね・・・）[p]
#
			
#&f.name	
（・・・ヴァエルのいる、クレールに・・・）[p]
#
			
#&f.name	
（本当なら今は・・・気をひきしめなきゃならないとき・・・なのに・・・）[p]
#
			
							
#&f.name	
（だけど今は・・・）[p]
#

#&f.name	
（クライストさん・・・）[p]
#		
				
#&f.name	
「・・・・・・こんなんじゃダメ、なのに・・・」[p]
#

#&f.name
（ウェスタにまできたのだって、王都をヴァエルの脅威から救うため・・・）[p]
#

#&f.name
（おじさんの協力で、クライストさんの魔剣にヴァエルを封印すれば、
王都は助かるんだから・・・）[p]
#			
						
#&f.name	
（クライストさんの魔剣に・・・）[p]
#
			
				
#&f.name	
（・・・クライストさんは・・・大丈夫・・・なわけ、ないよね・・・）[p]
#
			
				
				
				
#&f.name	
（・・・クライストさん・・・さっき・・・初めてみた・・・）[p]
#



[sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【あんなふうに、怒って・・・】

[glink target=*kra_last_1 text="（あんな言い方・・・しなくても・・・）" size=17 width=600 x=65 y=200]
[glink target=*kra_last_2 text="（私、馬鹿だな・・・）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]

*kra_last_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[w]
[jump target=*kra_last_ng]




*kra_last_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.kra_last_ok=1"]
[jump target=*kra_last_ok]
			
				
;#クライスト	『変えられない未来に、逆らってどうするっていうんだ・・・』

*kra_last_ok
#&f.name	
（・・・わたし・・・馬鹿だな・・・）[p]
#

*kra_last_ng
#&f.name	
（・・・わかってたはずなのに・・・クライストさんが、苦しんでることだって・・・）[p]
#
			
								
#&f.name	
（でも・・・知りたかった。どうしても、クライストさんの本心・・・）[p]
#
			
;いつも、どんなときでも落ち着いて、微笑みを絶やさない彼の・・・本当の気持ち。			
;思えば、いつも#クライストのことばかり考えていた。			
#&f.name	
（何を考えてるかわからなくて、恥ずかしい台詞をさらっと言って、女の子に人気があって・・・）[p]
#
			
#&f.name	
（からかわれてばっかりだけど・・・どこか本気のような気もして、時折ドキっとして・・・）[p]
#
			
#&f.name	
（この気持ち・・・なんなんだろう・・・）[p]
#
			
				
#&f.name	
（私にだけ優しかったらな、とか・・・って・・・）[p]
#
			
#&f.name	
「嫌だ・・・何考えてるんだろ・・・私、こんな大事なときに・・・」[p]
#
			
				
#&f.name	
「もう寝よう・・・明日も、早いんだろうし・・・」[p]
#


[playse storage="sanbasiasioto_onjin.ogg"]
;l[live2d_kra_touroku]
[live2d_kra_show_1]
[aho_face_mihiraki][aho_mod_idle_mihiraki]
[bg storage="kanpan2_yoru_tasogare.jpg"]

[live2d_fadein time=1000]
#クライスト	
「・・・[name]・・・」[p]
#
[stopbgm][stopse]		
#&f.name	
「！！」[p]
#
			
#&f.name	
「クライスト・・・さん・・・」[p]
#
[aho_head_under_y][aho_eyes_right]
[aho_face_kunou][aho_mod_idle_normal_mehuse]			
#クライスト	
「・・・・・・・・・」[p]
#
			
#&f.name	
「ご、ごめんなさい、さっきは・・・。私、あんなこと・・・」[p]
#
			
#&f.name	
「へ、部屋、戻るね？」[p]
#
[aho_mod_idle_normal][aho_body_above_y]
[aho_face_mihiraki_n]			
#クライスト	
「[name]！！」[p]
#
			
[live2d_fadeout time=500]	

[playse storage="tukamu_onjin.ogg"]
#&f.name	
「っ・・・」[p]
#
[aho_body_normal]
[aho_face_normal_majime]
[live2d_kra_mod_sekkin_2]
[live2d_fadein time=1000]

#&f.name	
（手・・・）[p]
#
			
#&f.name	
（な、なんだろ・・・すごく、ドキドキする・・・）[p]
#


[aho_head_right_x]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]			
#クライスト	
「いや・・・俺こそ・・・ごめん。あんな、言い方しかできなくて・・・」[p]
#
			
#&f.name	
「え・・・」[p]
#

[aho_mod_idle_normal_metoji]			
[aho_face_kunou_metoji]				
#クライスト	
「・・・自分に思い込ませて、納得してたつもりだった・・・」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]		
#&f.name	
「クライストさん」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_metoji]			
#クライスト	
「魔剣を宿した者がたどりつく末路を・・・レムに聞いたときから」[aho_face_normal_majime][p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_right_x]
[aho_head_above_y]
[aho_body_right_z]
[aho_eyes_right]
;[aho_face_komari]
[aho_mod_idle_normal]

#クライスト	
「いつくるかわからない『死』のときを、苦しみながら待つしかない。これが俺の運命なんだって」[p]
#
	[aho_eyes_left]		

[playse storage="kusari_onjin.ogg"]
[chara_new name="raputa" storage="raputa_a_tatie/raputa_a_normal.png"]
[chara_on][chara_show name="raputa" width=230 height=376 left=-3 top=225]	
[raputa_a_yowari]			
#ラプタ	
「・・・・・ゥゥ」[p]
#
			
				
#&f.name	
（ラプタ・・・あれ・・・なんか・・・）[p]
#

[aho_body_left_z]
[aho_head_normal]
[aho_head_under_y]	
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse][aho_eyes_normal]		
#クライスト	
「・・・少し、具合がよくないみたいだね」[p]
#
			
				
#ラプタ	
「・・・・・・・・」[p]
#
			
#&f.name	
「ライオネスは知ってるのかな・・・」[p]
#

[aho_body_left_z]
[aho_eyes_left]		
#クライスト	
「気づいてはいるみたいだよ。夕方、背中をさすってやっていたから」[p]
#
			
#&f.name	
「そうなんだ・・・」[p]
#

[aho_body_normal]			
[aho_eyes_normal]
[aho_face_naki_warai]				
#クライスト	
「・・・心優しい主人に拾われて、よかったよな」[p]
#
			
#&f.name	
「ライオネスのこと？」[p]
#


#クライスト	
「・・・ああ」[p]
#
			
#&f.name	
「足が不自由だから、捨てられたって・・・」[p]
#

[aho_head_right_x]
[aho_body_right_z]	
[aho_eyes_right]	
#クライスト	
「母竜も、卵を何個も産むからね。生きていくのに足手惑いな者は、自然界じゃ淘汰されてしまう」[p]
#
			
#&f.name	
「厳しいね・・・」[p]
#

[aho_head_normal]
[aho_body_normal]
[aho_face_metoji]
[aho_mod_idle_normal_metoji]			
#クライスト	
「ああ。でも、それは動物たちだけのことじゃない」[p]
#
			
#&f.name	
「え？」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]			
#クライスト	
「・・・・人間だって、同じだよ」[p]
#
			
#&f.name	
「クライスト、さん・・・」[p]
#
[chara_hide_all][chara_off]
[live2d_fadeout time=1000]
[playse storage="wave1_koukaonlabo.ogg"]			
[bg storage="westa_hune_yoru.jpg"]
[fadeinbgm storage="nozomi_ontama.ogg" time=5000]				
[bg storage="kanpan2_yoru_tasogare.jpg"]				

[live2d_fadein time=1000]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
#クライスト	
「・・・・・危険な仕事はいくらでもあった。命が惜しくなければ大金も手に入る」[p]
#

[aho_face_normal_majime]
[aho_eyes_left]
[aho_head_left_x]
[aho_head_above_y]
[aho_body_left_z]			
#クライスト	
「毎日毎日、享楽的に過ごした。酒を浴びるほどに飲んで。女の子なんて、声をかけなくても向こうから寄ってくる」[p]
#
			
#&f.name	
「っ・・・」[p]
#
			
#&f.name	
（確かに・・・クライストさん、整った顔してるしな・・・無理もないけど・・・）[p]
#
			
				
[aho_head_right_x]	
[aho_body_right_z]	
[aho_eyes_right]	
[aho_head_under_y]	
[aho_eyes_normal]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「でも、いくら飲んでも・・・・・酔うことなんかできなかった。遊ぶのもそのときだけだ。あとは空しさだけが残る。」[p]
#
			
#&f.name	
（・・・酔うことなんかない・・・？）[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_eyes_normal]
[aho_face_kunou]

#クライスト	
「でも、それでも、これは自分が望んだ結果なんだって・・・そうずっと自分に言い聞かせてた」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]		
#クライスト	
「空しさも苦しみも寂しさも・・・全部自業自得だって」[p]
#
			
#&f.name	
「・・・違うよ・・・」[p]
#
			
[aho_mod_idle_normal_mehuse]
[aho_face_jichou]				
;そのあまりに悲しげな微笑に、胸がずきんと痛む。			
#クライスト	
「前にも・・・ロマナでも、俺にそういってくれたね」[p]
#
			
#&f.name	
「だって・・・」[p]
#

[aho_mod_idle_normal_metoji]			
#クライスト	
「・・・うん。
[aho_head_right_z]
[aho_face_naki_warai]
ありがとう。・・・優しいね」[p]
#
			
#&f.name	
「・・・・・・・」[p]
#

[aho_body_left_z]
[aho_head_left_z]
[aho_eyes_left]			
#クライスト	
「・・・君がそんなだから・・・俺はつい、甘えたくなってしまう」[p]
#
			
#&f.name	
（・・・クライスト、さん・・・）[p]
#
			
#&f.name	
「・・・甘えても・・・いいよ？」[p]
#

[aho_eyes_normal]
[aho_face_mihiraki_n]		
[aho_eyes_left]	
[aho_face_jichou]	
[aho_eyes_right]
[aho_head_right_z]
[aho_face_komari_warai]		


#クライスト	
「・・・そういうわけにはいかないよ」

[aho_head_normal]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
[p]
#
			
#&f.name	
「どうして・・・？」[p]
#
			
#&f.name	
「前に言ったみたいに・・・欲が出てしまう・・・ってこと？」[p]
#
			

[aho_mod_idle_normal_metoji]	
[aho_face_kunou_metoji]			
#クライスト	
「・・・助かりたいって、思ってしまうんだ」[p]
#
			
#&f.name	
「そんなこと・・・それは、誰だってそうだよ・・・。そうなったら、だれだって」[p]
#
			
				
#クライスト	
「ダメ、なんだよ」[p]
#
			
#&f.name	
「なんで・・・」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[w]
[aho_mod_idle_normal]
[aho_face_normal_majime]			
#クライスト	
「・・・・・・・・・」[p]
#
			
;#クライストは・・・私をまっすぐに見つめた。			
;彼の鮮やかな髪の色。			
#&f.name	
（髪の色も・・・目も・・・）[p]
#
			
#&f.name	
（アグレアスの影響・・・なんだよね・・・あんなに恐ろしい魔剣なのに・・・すごく、綺麗な色・・・）[p]
#
			
[fadeoutbgm time=7000]				
[aho_eyes_left]		
[w]
[aho_head_left_z]	
[aho_body_left_z]	
#クライスト	
「・・・誰にだって」[p]
#
			
#&f.name	
「え？」[p]
#

[aho_body_normal]
[aho_head_under_y]
[aho_eyes_normal]	
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]	

#クライスト	
「・・・誰にだって・・・大切な人がいる」[p]
#
			
#&f.name	
（クライストさん・・・？）[p]
#

[aho_face_kunou]			
#クライスト	
「家族とか、友だちとか、恋人とか・・・」[p]
#

[aho_eyes_right]
#クライスト	
「俺が殺してきたたくさんの人たちにも、きっといたはずだ」[p]
#

[aho_eyes_normal]
[aho_face_kunou_metoji]			
#クライスト	
「そして、彼らも・・・誰かの大切な人だったんだと思う」[p]
#
			
#&f.name	
「クライストさん・・・。でも、それはクライストさんが自分を保つために、仕方なく・・・」[p]
#
[aho_head_under_y]
[aho_head_left_x]
[aho_body_left_z]
[aho_face_jichou]
[aho_eyes_left]			
#クライスト	
「どんな事情があろうとも、罪は消えないよ。俺が命を奪った事実は変わらない」[p]
#
			
#&f.name	
「っ・・・・・」[p]
#

[aho_eyes_normal]
[aho_head_normal]
[aho_body_normal]
[aho_face_kunou]			
#クライスト	
「[name]・・・
[aho_face_komari]
」[p]
#


[aho_body_right_z]
[aho_face_komari_warai]
#クライスト	
「君の言葉は・・・嬉しかった。
[aho_body_left_z]
[aho_head_left_x]
[aho_head_under_y]
[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]

でも俺は、この罪を忘れるわけにはいかない」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]			
#クライスト	
「・・・君のことを大切に思えば思うほど・・・余計に、許されないと思ってしまうんだ・・・」[p]
#
			
#&f.name	
（大切・・・って・・・私の・・こと？）[p]
#
			
#&f.name	
（・・・えっ・・・）[p]
#
			
				
#&f.name	
（で、でもクライストさんいつも、そんなこと言ってるし・・・）[p]
#
			
#&f.name	
「た、大切・・・なんて・・・」[p]
#


[aho_head_normal]	
[aho_mod_idle_normal]
[aho_face_normal_majime]

#クライスト	
「・・・・・・」[p]
#
[fadeinbgm storage="odai07_ontama.ogg" time=6000]
[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]		
;目を伏せる			
#クライスト	
「いつもみたいに冗談だろうって思うなら、そう、思ってくれて構わない」[p]
#
			
				
#&f.name	
（・・・クライストさんは、今まで冗談なんか、一度も・・・）[p]
#
			
#&f.name	
（じゃあ・・・本気で、本気で私のこと・・・）[p]
#
			
				
#&f.name	
「く、クライストさん・・・私・・・」[p]
#
			
				

[aho_mod_idle_normal_metoji]				
[aho_face_kunou_2]				
#クライスト	
「・・・
[aho_mod_idle_normal]
[aho_eyes_left]
[aho_face_normal_majime]
[aho_head_left_z]
もう、俺にあまり時間は残ってない」[p]
#
			
#&f.name	
「！」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_head_normal]
[aho_eyes_normal]
[aho_face_mehuse]			
#クライスト	
「・・・君も・・・わかっていると思うけど」[p]
#
			
#&f.name	
「クライスト・・・さん・・・」[p]
#
			
#&f.name	
（嫌だ・・・そんなの・・・嫌だ）[p]
#
			
				
				
#クライスト	
「・・・・・・・だから・・・」[p]
#

[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]			
#クライスト	
「だからせめて、俺が俺でいられる最後のときがくるまで・・・俺はこの力を、君のために使う」[p]
#

[aho_mod_idle_normal]
[aho_face_normal_majime]		
#&f.name	
「え・・・」[p]
#
			
				
[aho_mod_idle_normal_mehuse]	
[aho_face_jichou]			
#クライスト	
「それくらいしか、俺が君にできることはないから・・・」[p]
#

#&f.name	
（そんなこと・・・）[p]
#
[aho_face_kunou]
[aho_head_right_x]
[aho_head_under_y]	

#&f.name	
（そんなこと・・・いやだ・・・私の、ために、なんて・・・）[p]
#

#&f.name	
（してほしくない・・・でも・・・）[p]
#
							
#&f.name	
（・・・そうだよ・・・クライストさんの力がなかったら、王都をヴァエルから助けることはできないんだ・・・）[p]
#
			
#&f.name	
（でも、きっとそうしたら、そしたら、クライストさんは・・・クライストさんは・・・）[p]
#
			
#&f.name	
「っ・・・・・・」[p]
#
[aho_head_normal]
[aho_face_mihiraki][aho_mod_idle_mihiraki]
[live2d_fadeout time=50]
[playse storage="sanbasihasiru_onjin.ogg"]
[wait time=2000]
[stopse]
[playse storage="taorekomu_koukaonlabo.ogg"]			

[quake count="5" time="3" vmax="30"]	

[live2d_mod name="aho" y=-4.7 scale=9.4]
[aho_face_mihiraki_n][aho_mod_idle_mihiraki]
[live2d_fadein time=1000]
#クライスト	
「っ！！・・・[name]・・・」[p]
#
			
;思わず彼に、背中から抱きつく。			
;#クライストは一瞬狼狽したようだったが、やがて体の力を抜いた。	

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
#クライスト	
「・・・[name]・・・」[p]
#

;スチル	抱き合い？		
#&f.name	
「・・・・・・あ・・・・・」[p]
#
[aho_face_kunou_metoji][aho_mod_idle_normal_metoji]			
;#クライストの指が、しがみついた私の指にそっと、触れる。
[aho_head_under_y][aho_head_right_x][aho_head_right_z][aho_body_right_z]
#&f.name	
（・・・・・・・クライストさん・・・・・・）[p]
#
			
;このままずっと、こうしていられたら。			
;お互いに触れているのは指先だけなのに、それだけで体が熱くなるようだった。			
;早朝の海風が、優しく髪を撫でていく。	

#クライスト	
「・・・・・・・・・」[p]
#
[live2d_new name="agureasu" model_id="agureasu" lip=true jname="？"]			
#&f.name	
「・・・・・・・・・」[p]
#
			
#&f.name	
（・・・・・クライスト、さん・・・・・いかないで・・・いか、ないで・・・）[p]
#

[aho_face_kunou_metoji]
[aho_mod_idle_normal_mehuse]			
[aho_face_kunou][aho_head_normal]				
				
#クライスト	
「[name]・・・俺は・・・」[p]
#
[playse storage="dakituku_onjin.ogg"]			
;#クライストが、私の手をぎゅっと掴む。			
#&f.name	
「！！クライスト、さ・・・」[p]
#


[live2d_fadeout time=50]
[playse storage="agureasu_macchi.ogg"]
[bg storage="ao.jpg" time=50]
[quake count=5 time=500 hmax=20]
[live2d_hide name="aho"]
[live2d_show name="agureasu" y=-1.1 x=0.0 scale=3.5]
[live2d_fadein time=50]
[stopbgm]
				
;#クライストの体が突然青い光に包まれる。あ、と思った瞬間には、私は弾き飛ばされ反対側の船べりに身体を打ち付けていた。			
#&f.name	
「きゃああっ・・・」[p]
#
[playse storage="taoreru_koukaonlabo.ogg"]	
[live2d_fadeout time=1000]
[live2d_hide name="agureasu"]
[live2d_show name="aho" y=-1.8 x=0.0 scale=4.2]
[aho_mod_idle_normal]
[aho_face_mihiraki_n][aho_mod_idle_mihiraki]

[bg storage="kanpan2_yoru_tasogare.jpg"]
[live2d_fadein time=500]	
#クライスト	
「[name]っっ！！」[p]
#
[live2d_fadeout time=1000]
[playse storage="yukahasiru_onjin.ogg"]				
;#クライストが駆け寄り、私を抱き起こそうとした、その刹那。			
;私の体に触れようとした彼の指が、青く光を放った。	


[live2d_fadeout time=50]
[aho_face_mihiraki_n][aho_mod_idle_mihiraki]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[live2d_fadein time=50]

[playse storage="agureasu_macchi.ogg"]
[aho_face_mihiraki][aho_mod_idle_mihiraki]
[bg storage="ao.jpg" time=50]
[quake count=5 time=500 hmax=20]
[live2d_hide name="aho"]
[live2d_show name="agureasu" y=-1.1 x=0.0 scale=3.5]
[live2d_fadein time=50]

#&f.name	
（これは・・・これって・・・）[p]
#

#？	
[font color="blue"]「ワレに・・・ワレのものに・・・さわるな・・・」[p]
#
[resetfont]					
[live2d_fadeout time=1000][live2d_hide name="agureasu"]
[live2d_show name="aho" y=-2.8 scale=6.2]
[aho_mod_idle_mihiraki]
[aho_face_mihiraki_n]
[bg storage="kanpan2_yoru_tasogare.jpg"]
[live2d_fadein time=500]	

#&f.name	
「クライストさん・・・さっきのって・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
#クライスト	
「アグレアス・・・」[p]
#

[aho_head_under_y]
#&f.name	
「えっ・・・」[p]
#

#&f.name	
（じゃあ・・・さっきの女の人・・・あれが・・・魔剣アグレアスの・・・）[p]
#

#&f.name	
「ディーヴァ・・・なの・・・」[p]
#


[aho_mod_idle_normal_metoji]
[aho_face_kunou_metoji]
#クライスト	
「っ・・・」[p]
#
			
#&f.name	
「クライスト・・・さん・・・」[p]
#
			
;#クライストは唇をかみしめ、その指を隠すように掌を握り締めると、うつむいたまま立ち上がった。

[aho_face_kunou_2]
[aho_head_right_x]
[aho_head_left_x]
[aho_head_normal]
[aho_head_under_y]
#クライスト	
「・・・・・・・・・ごめん・・・・・・・俺・・・・・・・・・・」[p]
#
			
				

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]			
#&f.name	
（・・・・・クライストさんが私に近づくたび、さっきみたいにアグレアスが・・・）[p]

#

#&f.name
（どういうこと・・・触れることすら・・・できないっていうの・・・・）[p]	
#	
				
[aho_face_mehuse]				
#クライスト	
「・・・君は、もう少し眠ったほうがいいよ」[p]
#
			
[aho_mod_idle_normal_metoji]				
[aho_face_metoji]				
#クライスト	
「船長が言うには、昼ごろにはクレールに着くってさ。だから・・・」[p]
#
			
#&f.name	
「・・・で、でも、クライストさんは・・・」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]		
#クライスト	
「うん。俺もできればそうしたいんだ」[p]
#
			
#&f.name	
「え・・・？」[p]
#

[aho_head_normal]
[aho_face_naki_warai]
[aho_head_left_z]
[aho_body_left_z]
;目を見開くと、#クライストは諦めたような顔で笑う。			
#&f.name	
「どういう・・・」[p]
#

[live2d_fadeout time=50]
[rem_tatie_touroku]
[rem_tatie_show]


#レム	
「お前らと一緒にするな」[p]
#




#&f.name	
「！？」[p]
#
			
				
#&f.name	
（お、おじさん・・・？いつからいたんだろう・・・まさかさっきのことを・・・）[p]
#
			
[rem_tatie_mehuse]

#レム	
「奴の精神は自我意識以外、その機能をほぼディーヴァに支配されている」[p]
#

[rem_tatie_metoji]			
#レム	
「眠りに落ちるなど無防備な状態を自らとることはない」[p]
#

[chara_hide_all time=50]
[live2d_fadein time=1000]
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_head_right_x]
[aho_face_kunou]


#クライスト	
「っ・・・・」[p]
#
			
[live2d_fadeout time=50]
[rem_tatie_show]				
				
#レム	
「面倒だな。人間と言うものは。
[rem_tatie_warai]
・・・なあ、クライスト」[p]
#

[chara_hide_all time=50]
[aho_head_normal]
[aho_body_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[live2d_fadein time=50]			
#クライスト	
「・・・・・・・・」[p]
#
			
#&f.name	
（クライストさんは・・・じゃあ・・・もう・・・）[p]
#

[live2d_fadeout time=1000]


[rem_tatie_show]				
#レム	
「・・・・・・」[p]
#
			
;レムが険しい表情で睨んでくる。まるで私がいることを咎めるような目つきだ。私は気まずく思いながら口を開いた。			
#&f.name	
「・・・ご、ごめんなさい・・・

[chara_hide_all time=50]
じゃ、じゃあ私、少し寝るね？」[p]
#

[aho_head_right_x]
[aho_head_under_y]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[aho_body_right_x]
[live2d_mod name="aho" y=-1.8 x=0.0 scale=4.2]
[live2d_fadein time=500]

#クライスト	
「・・・ああ・・・おやすみ」[p]
#

[live2d_fadeout time=1000]		
[live2d_hide name="aho"]
[anten]
[live2d_lion_touroku]
[live2d_lion_show]
[bg storage="hune_rouka.jpg"]

							
;船倉			
#&f.name	
「あ・・・ライオネス」[p]
#
			

[live2d_fadein time=1000]				
#ライオネス	
「・・・・[name]。お前、眠ってなかったのか」[p]
#
			
#&f.name	
「ら、ライオネスも・・・早いんだね」[p]
#

[lioness_arms_poripori]
[lioness_head_left_x]
[lioness_face_otikomi]			
#ライオネス	
「・・・ああ・・・ラプタの奴が、具合悪いからな」[p]
#
			
#&f.name	
「あ・・・」[p]
#

[lioness_arms_normal]
[lioness_face_normal]
[lioness_head_right_x]
[lioness_head_normal]			
				
#ライオネス	
「お前、甲板にいたのか？」[p]
#
			
#&f.name	
「・・・うん。ラプタ、眠ってたけど辛そうだった」[p]
#

[lioness_face_otikomi]			
#ライオネス	
「そっか・・・」[p]
#
			
#&f.name	
「病気なの・・・？原因は？」[p]
#

[lioness_head_right_x]
[lioness_head_left_x]
[lioness_head_normal]
[lioness_face_otikomi]		
#ライオネス	
「全然わかんねえよ。何しろモンスターだ。動物と違って、医者なんかもいねえし・・・」[p]
#
			
				
#&f.name	
「・・・心配だね・・・」[p]
#
			
[lioness_face_normal]				
#ライオネス	
「・・・・・・・・・・・・・・」[p]
#
			
#&f.name	
「・・・・ライオネス？」[p]
#

[lioness_head_under_y]
[lioness_eyes_left]	
[lioness_head_left_z]		
#ライオネス	
「いや・・・お前よ・・・。・・・・・・・あいつとなんかあったか？」[p]
#

[lioness_eyes_normal]			
#&f.name	
「えっ・・・なんで」[p]
#

[lioness_head_above_y]
[lioness_head_left_x]
[lioness_arms_udekumi]			
#ライオネス	
「・・・なんとなく」[p]
#
			
#&f.name	
「・・・・・・・・」[p]
#
			

[lioness_eyes_right]
[lioness_head_right_x]				
#ライオネス	
「なんだ・・・その、無理には聞かねえけどよ」[p]
#
			
#&f.name	
「ライオネス・・・」[p]
#
			
#&f.name	
（・・・アグレアスのことだけでも、話しておいたほうがいいのかな・・・）[p]
#
			

[lioness_head_normal]
[lioness_eyes_normal]			
#&f.name	
「・・・・・・あの、あのね・・・・・・」[p]
#

[live2d_fadeout time=1000]
[anten]
[bg storage="hune_rouka.jpg"]			
;暗転			

[lioness_arms_normal]
[lioness_face_odoroki]
[live2d_fadein time=1000]
#ライオネス	
「アグレアスに弾き飛ばされた・・・？」[p]
#

[lioness_face_normal]
[lioness_arms_udekumi]		
#&f.name	
（う・・・うん・・・）[p]
#
			
#&f.name	
（抱きついたことは伏せたほうがいいよね・・・というか、恥ずかしくてとても言えないし・・・）[p]
#
			

[lioness_face_mehuse_dai]				
#ライオネス	
「あいつの意思とは無関係に、ディーヴァがお前を跳ね返したってことなのか・・・？」[p]
#
			
#&f.name	
「・・・・・・・・」[p]
#
			
;#クライスト	『それくらいしか、俺が君にできることはないから・・・』			
				
#&f.name	
（クライストさん・・・もう・・・触れることすら・・・できないの・・・？）[p]
#
			

[lioness_face_normal]
[lioness_head_right_x]				
#ライオネス	
「・・・あいつ・・・前よりもしょっちゅう苦しんでるみたいだしな」[p]
#
			
#&f.name	
「ライオネス・・・知ってたの？」[p]
#

[lioness_head_normal]
[lioness_face_ha]			
#ライオネス	
「ああ・・・まあ、詳しいことは知らねえけど・・・
[lioness_head_normal]
[lioness_arms_normal]
[lioness_mod_idle_no_move]
[lioness_face_mehuse_dai]
魔剣のせいってのは、なんとなく」[p]
#
			
#&f.name	
「・・・・・」[p]
#
			
[lioness_eyes_left]	
[lioness_arms_poripori]			
#ライオネス	
「・・・それからな、その・・・うわ言で、お前の名前、呼んでたぞ」[p]
#
			
#&f.name	
「！！！」[p]
#
			

[lioness_face_metoji]
[lioness_eyes_normal]	
[lioness_arms_normal]
#ライオネス	
「・・・聞いてるこっちが恥ずかしかった」[p]
#
			
#&f.name	
「く、クライストさんが・・・」[p]
#

[lioness_mod_idle]
[lioness_face_normal]			
#ライオネス	
「・・・・・・・・・魔剣を宿した者の末路など、知れている、か・・・」[p]
#
			
				
				
#&f.name	
「っ・・・・・・」[p]
#

[lioness_arms_udekumi]			
#ライオネス	
「問題は、ヴァエルを倒すまで持つかどうかだな・・・俺らだけじゃ正直厳しいぜ・・・。	
[lioness_eyes_left]		
	それに、もしあいつがディーヴァに乗っ取られたら、俺たちに危害を加えねえとも限らねえ・・・」[p]
#
			
#&f.name	
（そう・・・クライストさんの力がなかったら、ヴァエルからクレールを救うことはできない・・・）[p]
#
			
#&f.name	
（だけど、そのためにクライストさんは・・・）[p]
#

[lioness_eyes_normal]			
#&f.name	
「・・・・・っ・・・・・ひっく・・・・」[p]
#
[lioness_arms_normal]
[lioness_face_yareyare]
#ライオネス	
「・・・・・・・・・・・。仕方ねえだろ・・・こればっかりはよ・・・
[lioness_face_otikomi]			
	あいつだって、覚悟してたことだろうし・・・・」[p]
#
			
#&f.name	
（わかってる・・・わかってる、でも・・・）[p]
#
			
				
[lioness_face_sinnpai]				
#ライオネス	
「[name]・・・・」[p]
#

[live2d_fadeout time=1000]	

[live2d_lion_mod_sekkin]

#&f.name	
「あ・・・・」[p]
#
[live2d_fadein time=1000]							
;彼はほんの少しだけ私を引き寄せて、背中を優しく撫でてくれる。			

[lioness_face_mehuse_dai]				
#ライオネス	
「・・・自分が自分でいるために・・・奪った命の重さを・・・背負いながら生きるのも、つらいのかもな」[p]
#
			
#&f.name	
「・・・え・・・」[p]
#

[lioness_face_normal]
[lioness_eyes_left]			
#ライオネス	
「しかもそれを誰かのせいなんてできねえ。全部、自分のせいだってこともよ・・・」[p]
#
			
#&f.name	
「クライストさんのせいじゃないよ！それはディーヴァが・・・」[p]
#


[lioness_eyes_normal]
#ライオネス	
「結局、魔剣を自分の身に宿したのは、あいつの意思なんだろ？」[p]
#
			
#&f.name	
「それは・・・・・・・でも・・・・・・」[p]
#
			
#&f.name	
「っ・・・・そんなのっ・・・・・・悲しすぎるよ・・・・・・」[p]
#
			
#&f.name	
（大切な人たちを守るために、力があったら・・・なんて・・・そんなこと、誰だって・・・）[p]
#
			
				
#&f.name	
（だけど、クライストさんはそのとき、アグレアスに選ばれてしまったせいで・・・）[p]
#
			
				
[lioness_face_sinnpai]				
#ライオネス	
「[name]・・・」[p]
#


[live2d_fadeout time=50]
[anten]
[playse storage="dakituku_onjin.ogg"]
#&f.name	
「！・・・ライオネス・・・」[p]
#

[bg storage="hune_rouka.jpg"]
[live2d_lion_mod_sekkin_2]			

[live2d_fadein time=1000]				
;#ライオネスのシャツの胸元に顔を押し付けたまま、私は目を見開いた。

[playse storage="huku_koukaonlabo.ogg"]
#&f.name	
（・・・ライオネス・・・）[p]
#
							
#&f.name	
（でもこんなとこ、クライストさんに、見られたら・・・）[p]
#
[playse storage="walkyuka_onjin.ogg"]		

[live2d_fadeout time=50]
[lioness_face_odoroki]
[live2d_hide name="lioness"]
[live2d_fadein time=50]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_kra_show_1]
#クライスト	
「・・・・あ・・・・」[p]
#
[live2d_hide name="aho"]
[stopse]
[live2d_lion_show_sekkin]
[lioness_face_odoroki]			
#ライオネス	
「！」[p]
#


[live2d_hide name="lioness"]
[live2d_kra_show_1][aho_mod_idle_mihiraki]
[aho_face_mihiraki]				
#&f.name	
（クライストさん・・・！）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]		
#&f.name	
「あ、あの・・・」[p]
#

[aho_eyes_left]			
#クライスト	
「いいよ、そんな。気を使わなくても」[p]
#

[live2d_hide name="aho"]

[live2d_fadeout time=50]
[live2d_lion_show_sekkin]
[lioness_face_chottoikari]

[live2d_fadein time=1000]			
#ライオネス	
「ちっ・・・おい、待てよ！クライスト！！！」[p]
#

[live2d_fadeout time=1000]

[playse storage="yukahasiru_onjin.ogg"]
				
#&f.name	
（・・・気を使わなくても・・・って・・・）[p]
#
[stopse]		
#&f.name	
（もしかして・・・もしかしなくても、誤解された・・・？）[p]
#
			
;すぐに走っていって、違うと言えばいいだけの話なのだろう。			
;	でも、それで気持ちを伝えても・・・今の彼には重荷になるだけだ。			
;	どうにもならない感情を抑えながら、私はその場に立ち尽くす。			;
;	止まっていた涙が一粒だけ、頬を零れ落ちた。

#&f.name	
（ちがうって・・・いわなくちゃ・・・・・私は、クライストさんが・・・）[p]
#

#&f.name	
（でも、今・・・気持ちを言っても・・・）[p]
#

;もう、俺にあまり時間は残ってない


#&f.name	
（きっと今のクライストさんには・・・重荷になるだけ、だよね・・・）[p]
#

#&f.name	
「っ・・・」[p]
#


[anten]
[bg storage="westa_hune_yoru.jpg"][w][w][w]
[bg storage="wesuta_hune.jpg"]


[playse storage="wave1_koukaonlabo.ogg"]
[bg storage="kanpan2_tasogare.jpg"]
				
;甲板　ラプタ、ぐったりしている			
[chara_new name="raputa" storage="raputa_tatie/raputa_a_normal.png"]
[chara_on][chara_show name="raputa" width=230 height=376 left=-3 top=225]
[raputa_a_yowari]
#ラプタ	
「・・・ゥゥ・・・」[p]
#
			
#&f.name	
「・・・ホントに、具合悪いんだね・・・。つらそう、ラプタ・・・」[p]
#
			
#&f.name	
（クライストさんも・・・）[p]
#
			
#&f.name	
「っ・・・」[p]
#
			
#&f.name	
（今は・・・こんな気持ちになってる場合じゃないんだから・・・）[p]
#
			
[playse storage="sanbasiasioto_onjin.ogg"]

[chara_hide_all]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「・・・[name]」[stopse][p]
#
			
#&f.name	
「あ・・・そのバケツ、ラプタの餌・・・？」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「ああ・・・食欲もねえみたいだが、一応な・・・」[p]
#
			
#&f.name	
「・・・・・・・」[p]
#
			

[lioness_tatie_kimazui]				
#ライオネス	
「・・・・・・・その、昨日・・・悪かったな・・・・・」[p]
#
			
#&f.name	
「・・・いいよ・・・」[p]
#

[lioness_tatie_otikomi]			
#ライオネス	
「・・・・・・」[p]
#
			
#&f.name	
「・・・・・・」[p]
#
			
				
#&f.name	
「そういえばその・・・もうクレールに着くんだよね・・・？」[p]
#

[lioness_tatie_odoroki]			
#ライオネス	
「あ、
[lioness_tatie_otikomi]
ああ・・・」[p]
#
			

[lioness_tatie_kimazui]			
#ライオネス	
「俺も・・・これ終わったらすぐ支度する。お前も、もたもたすんなよ」[p]
#
			
#&f.name	
「・・・・・・うん・・・」[p]
#
[chara_hide_all][live2d_fadeout time=50]
[anten][live2d_kra_touroku][live2d_kra_show_1]
[bg storage="kanpan_tasogare.jpg"]		
[playse storage="zawameki_soto.ogg"]				
				
				
#&f.name	
（あれ・・・なんだろう。なんか騒がしいけど・・・）[p]
#
			
				
#&f.name	
「！！」[p]
#
			
#&f.name	
（・・・・あ、あれは・・・・）[p]
#
[stopse]			
#&f.name	
「ランスロット！！セレさん！！！」[p]
#
[playbgm storage="shuuen_musmus.ogg"]			
[rans_tatie_touroku]
[chara_show name="rans" storage="rans_tatie/rans_kunou.gif" top=20 left=300]

[cera_tatie_touroku]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]				
;ふたりは満身創痍だった。セレさんのほうはもう意識がないようだ。			


#&f.name	
（こ、こんな・・・ひどい怪我・・・どうして・・・）[p]
#
#&f.name	
「だ、大丈夫！！？？」[p]
#
			
#ランスロット	
「・・・っ・・[name]・・・」[p]
#
			
#セレ	
「・・・・・・・」[p]
#

#&f.name	
「セレさん！！」[p]
#

#&f.name	
（セレさんのほうは、意識もないみたい・・・どうして）[p]
#


#&f.name	
「・・・どうして、こんな・・・」[p]
#
[chara_hide_all]
[aho_face_mehuse][aho_mod_idle_normal_mehuse]			
[live2d_fadein time=1000]				
#クライスト	
「・・・ごめん、ちょっと下がって。傷の治療をする」[p]
#
			
#&f.name	
「あっ・・・ご、ごめんなさい・・・！！！」[p]
#
			
#&f.name	
（・・・クライストさん・・・！）[p]
#

[live2d_fadeout time=50]
[live2d_kra_mod_sekkin_2][live2d_fadein time=1000]	
[aho_face_mehuse]		
#クライスト	
「・・・・・・・・・・」[p]
#

[stopbgm]
[playse storage="hikari_koukaonlabo.ogg"]
[aho_eyes_agureasu]
[image storage="ao.png" layer="3" name="ao" page="fore" visible="true" x="0" y="0"]
;#クライストがセレさんにかがみこんで、治療をはじめる。その目の色は、もうあのアグレアスとほぼ同じ色だった。
[free name="ao" layer=3 time=1000]

#&f.name	
（・・・クライストさん・・・目の色が・・・もう・・・）[p]
#

[live2d_fadeout time=50]

[chara_show name="rans" storage="rans_tatie/rans_mihiraki.gif" top=20 left=0]
#ランスロット
「その目は・・・」[p]
#

[chara_hide_all time=50]
[live2d_fadein time=50]

#クライスト
「・・・」[p]
#


			
				
[stopse]				
[aho_face_metoji][aho_mod_idle_normal_metoji]				
#クライスト	
「・・・・・とりあえず、これでいいよ。なるべく安静にして、動かないように」[p]
#
			
#&f.name	
「ど・・・どういうこと・・・？どうして・・・」[p]
#
[aho_body_right_z]
[aho_face_mehuse][aho_mod_idle_normal_mehuse]			
#クライスト	
「船員が言うには、海岸付近に倒れてたのを見つけたらしい。馬で命からがら逃げてきたって」[p]
#
			
#&f.name	
「命・・・からがら・・・？」[p]
#

[live2d_fadeout time=1000]	
[tris_tatie_touroku]
[lioness_tatie_touroku]
[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]
[chara_show name="tris" height="603" width="420" storage="tris_tatie/tris_mihiraki.png" top=50 left=360]
#ライオネス		
「！！！兄貴！！セレ！！なんだってんだ・・・こりゃ・・・」[p]
#
			
[tris_tatie_sian]				
#トリスタン	
「セレ、俺の肩につかまれ。歩けるか？とにかく、部屋に・・・」[p]
#

[chara_hide name="lion"]
[chara_show name="cera" storage="cera0_tatie/cera0_otikomi.png" width=336 height=482 left=30 top=130]							
#セレ	
「・・・・トリスタン・・・」[p]
#

[chara_hide_all]


[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]
[chara_show name="rans" storage="rans_tatie/rans_kunou.gif" top=20 left=300]
				
#ライオネス		
「兄貴！なんで・・・王宮で、何かあったのか！！？？」[p]
#
			
#ランスロット	
「・・・ライオネス・・・父上が・・・」[p]
#
[lioness_tatie_normal]			
#ライオネス		
「親父が・・・？」[p]
#
			
[rans_tatie_mehuse]
#ランスロット		
「父上が・・・王家に謀反を起こした・・・」[p]
#
[playbgm storage="kisimi_musmus.ogg"]
[lioness_tatie_odoroki]			
#ライオネス		
「なっ・・・なんだって・・・」[p]
#
			
#&f.name	
（嘘・・・）[p]
#
[rans_tatie_metoji]			
#ランスロット		
「副団長のアニス様や、バロン様、父上の意思に賛同した者たちによって、王宮は占領されている」[p]
#
			
#&f.name	
「じゃ、じゃあ・・・陛下は・・・」[p]
#
			
[rans_tatie_sinkoku]				
#ランスロット		
「・・・・・いつ、手を下したのか・・・
[rans_tatie_metoji]
既に事切れたあとだった。ラルズ宰相もユリア様も・・・」[p]
#
			
#&f.name	
「そんな・・・」[p]
#

[rans_tatie_mehuse]			
#ランスロット		
「・・・私は、力を貸してくれた部下たちとともに父上を止めようとしたのだが・・・」[p]
#
[rans_tatie_metoji]
#ランスロット			
「歯が立たなかった。どこから手に入れたのか、血の色をした赤い双剣に私も、セレも・・」[p]
#
			
#&f.name	
「赤い・・・」[p]
#
			
[rans_tatie_sinkoku]				
#ランスロット		
「不気味な光を放つ、不可思議な剣だった。まるでこの世のものとは思えないような・・・」[p]
#
			
#&f.name	
「まさか・・・それって」[p]
#

[chara_hide_all time=50]
[aho_face_mehuse][aho_mod_idle_normal_mehuse]
[live2d_fadein time=1000]

#クライスト	
「ヴァエルだ・・・。間違いない」[p]
#
			
				
#&f.name	
「・・・クライストさん・・・」[p]
#
[live2d_fadeout time=50]	

[rans_tatie_show]			
#ランスロット		
「・・・王宮の中は異形が跋扈している・・・。
[rans_tatie_mehuse]
赤き剣に斬られた者が、異形に姿を変えて・・・」[p]
#

[chara_move name="rans" left=-40]	
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=400]

#ライオネス		
「親父が・・・ヴァエルを・・・」[p]
#
			
#&f.name	
「・・・ライオネス・・・」[p]
#
			
				
#&f.name	
「ま、街の人たちは大丈夫なの！！？？」[p]
#

[rans_tatie_yokome]			
#ランスロット	
「・・・父上の目的はクレールの支配だ。逆らう者がいない限り、市民に危害は加えないだろう。だが、このままでは・・・」[p]
#
			

[chara_hide_all]
[live2d_fadein time=1000]				


[fadeoutbgm time=3000]
[aho_face_mehuse]				
#クライスト	
「・・・・・・・・。[name]」[p]
#
			
				
#&f.name	
「クライスト、さん・・・？」[p]
#
			

			
				
#クライスト		
「ヴァエルは俺とレムがなんとかする。

[aho_head_right_x]
[aho_body_right_z]
[aho_mod_idle_normal]
[aho_eyes_right]
君はそのカタブツの看病をしていてくれ」[p]
#

[fadeinbgm storage="nozomi_ontama.ogg" time=2000]


#&f.name	
「く、クライストさん！？」[p]
#

[live2d_fadeout time=50]


[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]
[chara_show name="rans" storage="&f.rans_normal" top=20 left=300]


#ランスロット	
「・・・・・」[p]
#

[lioness_tatie_chottoikari]		
#ライオネス	
「おい、お前何言ってんだよ・・・いくらお前が強くても、ひとりで乗り込むなんて・・・

[lioness_tatie_odoroki]
」[p]
#

#ライオネス	
「なんだその・・・目・・・」[p]
#

[chara_hide_all time=50]


[aho_head_normal]
[aho_head_under_y]
[aho_body_normal]
[aho_eyes_normal]
[live2d_fadein time=500]
#クライスト		
「・・・」[p]
#

[live2d_fadeout time=500]	

[rem_tatie_show]
#レム	
「・・・無茶だと？お前らがヴァエルに立ち向かうほうが無謀と言うものだろう」[p]
#
			
				
#&f.name	
「で、でも、せめてもう少し、休んでみんなで・・・」[p]
#

[rem_tatie_ikari]						
#レム	
「小娘、何度も言わせるな。お前らなどが・・・」[p]
#

[chara_hide_all time=50]
[live2d_fadein time=500]
#クライスト		
「レム」[p]
#
			
				
				
#&f.name	
「・・・お願い・・・クライストさん・・・。

[aho_face_normal_majime]
[aho_mod_idle_normal]
ひとりでなんて・・・駄目だよ・・・」[p]
#
			
;私の言葉に、#クライストは切なげにその瞳をゆらめかせた。			

[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
[aho_head_right_x]
[aho_eyes_right]
#クライスト	
「・・・言っただろう・・・俺が君にできることは、これくらいしかないって・・・」[p]
#

[live2d_fadeout time=50]			
[lioness_tatie_show_left]
#ライオネス	
「クライスト・・・」[p]
#

[rans_tatie_show_right]		
#ランスロット	
「・・・・・・・」[p]
#
			
;#クライストは・・・一度目を閉じて、静かに宣言するように・・・つぶやいた。	
[chara_hide_all time=50]
[live2d_fadein time=1000]

[aho_face_metoji]
[aho_mod_idle_normal_metoji]
#クライスト	
「それにもう・・・・・・
[aho_face_normal_majime]
[aho_mod_idle_normal]
時間がないんだ」[p]
#
			
				
;レムがにやりと笑う。#クライストは蒼く輝く魔剣・・・アグレアスを、その手に出現させた。	


[playse storage="agureasushutugen_koukaonlabo.ogg"]
[live2d_fadeout time=50]
[image storage="siro.jpg" layer="3" page="fore" visible="true" x="0" y="0" name="siro"]

[aho_arms_kamae]
[free name="siro" layer=3 time=1000]
[live2d_fadein time=1000]
#クライスト	
「・・・行こう、レム。一気に片をつける」[p]
#

[live2d_fadeout time=50]

[rem_tatie_show]
				
#レム	
「・・・いい顔だ。クライスト。			
	
[rem_tatie_warai]	
ヴァエルも・・・お前を待ち焦がれていることだろう」[p]
#
			
#&f.name	
「え・・・」[p]
#
			
#&f.name	
（待ち焦がれ・・って・・・）[p]
#

[chara_hide_all]			
[playse storage="sanbasihasiru_onjin.ogg"]				
#&f.name	
「クライストさん！！！」[p]
#

			
;思わず走り出した私は、#クライストに手を触れようとして―	

[live2d_fadeout time=50]
[playse storage="agureasu_macchi.ogg"]
[bg storage="ao.jpg" time=50]
[quake count=5 time=500 hmax=20]
[live2d_hide name="aho"]
[live2d_new name="agureasu" model_id="agureasu" lip=true jname="？"]
[live2d_show name="agureasu" y=-1.1 x=0.0 scale=3.5]
[live2d_fadein time=50]

[stopbgm]				
;#クライストの体が突然青い光に包まれる。あ、と思った瞬間には、私は弾き飛ばされ反対側の船べりに身体を打ち付けていた。			
#&f.name	
「きゃあああっっ！！」[p]
#
[playse storage="taoreru_koukaonlabo.ogg"]	
[live2d_fadeout time=1000]
[live2d_hide name="agureasu"]
[bg storage="kanpan_tasogare.jpg"]

[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=0]

			
#ライオネス	
「[name]！！」[p]
#


;また、あのときのようにはじきかえされ、床に体をうちつける。	
		
#&f.name	
「うっ・・・」[p]
#


[lioness_tatie_otikomi]			
#ライオネス	
「大丈夫か？」[p]
#
			
;#ライオネスが私を抱き起こそうとする。だけど私はその手をかわして、立ち上がった。			
#&f.name	
「クライストさん・・・」[p]
#

[lioness_tatie_odoroki]			
#ライオネス	
「[name]、お前・・・」[p]
#
[lioness_tatie_otikomi]

[chara_hide_all]
[live2d_kra_touroku]
[live2d_kra_show_sekkin_2]
[aho_arms_kamae]
[aho_eyes_agureasu]
[wait time=3000]
[live2d_fadein time=10]



#クライスト	
「[name]・・・」[p]
#

[aho_body_right_x]
[aho_head_right_x]
[aho_face_kunou]
[aho_mod_idle_normal_mehuse]		
;#クライストの・・・やるせない表情・・・。			
#クライスト	
「っ・・・・・・・」[p]
#

[live2d_fadeout time=3000]

;だが、彼は思いを振り切るようにきびすを返し、船を出て行った。			
;そのかたくなな背中。きっと彼は・・・ひとりですべてを抱え込むつもりだ―。			
#&f.name	
（・・・クライストさん・・・そんなの・・・そんなの・・・だめ・・・！！）[p]
#
		
[playse storage="sanbasihasiru_onjin.ogg"]
[bg storage="miti_tasogare.jpg"]
[stopse]				
				
#&f.name	
（・・・もう・・・いない・・・そんな・・・）[p]
#
			

[playse storage="uma_onjin.ogg"]				
;私が落胆しかけたそのとき・・・馬のいななきが聞こえた。			
#&f.name	
「あ・・・」[p]
#
			
#&f.name	
（この馬・・・ランスロットたちが乗ってきた・・・）[p]
#
			
#&f.name	
「っ・・・・」[p]
#

[playse storage="taorekomu_koukaonlabo.ogg"]
[w]
[playse storage="umahasiru_onjin.ogg"]			
				
				





[anten]

[image storage="ao.png" layer="3" x="0" y="0" name="ao"]

;[s]
				
;城下町	
[playbgm storage="anatanihohoemu_m-art.ogg"]
[bg storage="crerumatinaka2_tasogare.jpg"]		
#王都民
「な・・・なんだあありゃあ・・・」[p]
#
			
				
[bg storage="creru_kra_last.jpg"]				
;城下町の北、丘の上にそびえたつクレール王宮は、その美しい外観を蒼光に覆われ、まばゆく輝いていた。			
;王宮からの光は天を突くように、まっすぐ空へと伸びている。

#&f.name	
（・・・あれは・・・アグレアスの・・・クライストさんの魔剣の色・・・！）[p]
#


#&f.name	
（・・・もうクライストさんは、王宮に・・・）[p]
#


#&f.name	
（・・・こんなこと思っては、いけないのかもだけど・・・）[p]
#
			
#&f.name	
（・・・だけど・・・綺麗・・・）[p]
#
			
[bg storage="crerumatinaka2_tasogare.jpg"]
[agata_tatie_show]				
							
#アガタ	
「[name]！！」[p]
#
			
#&f.name	
「アガタ！！」[p]
#
			

[agata_tatie_mihiraki]			
#アガタ	
「[name]！王宮が・・・」[p]
#
			
#&f.name	
「・・・うん。知ってる。だから、今・・・」[p]
#


[agata_tatie_odoroki]
#アガタ	
「[name]・・・・」[p]
#

[agata_tatie_usirote]			
#アガタ	
「・・・・恋、してるんだね」[p]
#
			
#&f.name	
「えっ・・・」[p]
#

[agata_tatie_normal]			
#アガタ	
「わかるよ。全然顔が違うもん」[p]
#
			
#&f.name	
「・・・アガタ・・・」[p]
#

[agata_tatie_metoji]			
#アガタ	
「本当の本気で、その人のこと好きなんだって、わかるよ」[p]
#
			
#&f.name	
（・・・好き・・・？）[p]
#
			
#&f.name	
（・・・そっか・・・私・・・。クライストさんのこと・・・好きなんだ・・・）[p]
#
			
#&f.name	
（これが・・・好きって、気持ちなんだ・・・）[p]
#

[agata_tatie_usirote]			
#アガタ	
「・・[name]の気持ち、通じるといいね」[p]
#
			
#&f.name	
「アガタ・・・。・・・でも・・・」[p]
#

[agata_tatie_smile]			
#アガタ	
「ねっ」[p]
#
			
#&f.name	
「・・・そう、だね・・・。うん。私、行ってくる」[p]
#

[agata_tatie_usirote]			
#アガタ	
「頑張って、[name]」[p]
#
			
#&f.name	
「ありがとう・・・。アガタ」[p]
#

[agata_tatie_smile]			
;アガタ笑顔			

[chara_hide_all]

[bg storage="crerumatinaka2_tasogare.jpg"]
[playse storage="umahasiru_onjin.jpg"]
#&f.name	
（クライストさん・・・）[p]
#			
#&f.name	
（私たち人間には、どうすることもできない・・・魔剣を宿す者の運命は、変えることが・・・できない）[p]
#
			
#&f.name	
（そんなことわかってる・・・）[p]
#
			
#&f.name	
（・・・でも・・・）[p]
#

[bg storage="crerumatinaka3_tasogare.jpg"]

#&f.name	
（・・・でも・・・あきらめることなんて、できない・・・）[p]
#
			
#&f.name	
（何ができるかなんて、わからない。何もできないかもしれない）[p]
#
			
#&f.name	
（でも・・・）[p]
#

[bg storage="oukyuu_tasogare.jpg"]


#&f.name	
（そうだ・・・私、気持ち伝えてないよ。クライストさんに、私の、気持ち・・・）[p]
#
			
				
				
#&f.name	
（人を好きになるってこと、本当の意味でわかったから・・・）[p]
#
			
#&f.name	
「伝えなきゃ・・・」[p]
#
			
#&f.name	
「クライストさんに・・・伝えなきゃ」[p]
#


[anten]
[fadeoutbgm time=1000]
[bg storage="oukyuurouka_tasogare.jpg"]
[playbgm storage="shuuen_musmus.ogg"]
;王宮
[playse storage="walkhibiku_onjin.ogg"]				
#&f.name	
（すごい・・・人間も・・・異形もみんな・・・息絶えて・・・）[p]
#
			
#&f.name	
（これ、まさか全部クライストさんが・・・）[p]
#
			
#&f.name	
（ううん、ウェルム団長かもしれないし、決め付けることは出来ないよね・・・）[p]
#
			
				
#&f.name	
（どの死体も傷は一部分だけ・・・これって・・・急所を狙って一撃ってってこと・・・？）[p]
#
			
#&f.name	
「これ・・・クライスト、さん・・・？」[p]
#
			
#&f.name	
（ずっと・・・だれかの命を・・・奪わなければならなかった・・・んだよね・・・ずっと・・・）[p]
#
			
				
				
#&f.name	
（でも、そんな中でも、こうやって・・・相手が苦しまないようにって・・・）[p]
#
			
#&f.name	
（クライストさんは・・・子供たちや動物にも、優しくて・・・それが、もともとの・・・きっと彼の）[p]
#
			
				
#&f.name	
（いつのまにか、私・・・そんなクライストさんの特別になりたいって思うようになってた・・・他の女の子と同じじゃなくて・・・）[p]
#
			
#&f.name	
（たった一人の・・・）[p]
#


[stopse]		

[fadeoutbgm time=1000]
[bg storage="oukyu_door.jpg"]
;鉄の扉			
				
#&f.name	
（これは・・・この先は・・・中庭？）[p]
#
			
[anten]	

[live2d_fadeout time=1000]
[live2d_kra_touroku]
[live2d_kra_show_sekkin_2]
[aho_arms_kamae]
[aho_eyes_agureasu]
[aho_arms_kamae]

#&f.name	
「っ・・・・」[p]
#

[playse storage="ootobirahiraku_onjin.ogg"]			
;ぎぎっと、やけに重い鉄の扉を押し開ける。するとその先には―			

#&f.name	
「クライストさん！！！」[p]
#
			
[bg storage="nakaniwa_tasogare.jpg"]				
;中庭			

[playse storage="kaze_onjin.ogg"]				
#&f.name	
「きゃあっ・・・」[p]
#
			
;風の音			
				
#&f.name	
（あ・・・）[p]
#

[live2d_fadein time=1000]


#クライスト	
「・・・・・・」[p]
#

[werumu_v_tatie_touroku]
[werumu_tatie_vaeru]			
#ウェルム	
「小僧が・・・図に乗りおって・・・！！」[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]


#&f.name	
「クライストさん！！」[p]
#

[chara_hide name="werumu"]
[aho_mod_idle_mihiraki]
[aho_face_mihiraki]
#クライスト	
「・・・！！[name]！？」[p]
#
			
#&f.name	
（ウェルム団長・・・やっぱりヴァエルを・・・）[p]
#
			
#&f.name	
「私も・・・私も戦うよ！！」[p]
#

[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#クライスト	
「[name]・・・
[aho_head_right_x]
[aho_face_kunou]
だけど君は・・・」[p]
#
			
#&f.name	
「私、言ったよ・・・？ひとりでなんて・・・ダメって・・・」[p]
#

[aho_head_normal]
[aho_mod_idle_normal]
[aho_face_komari]		
#クライスト	
「[name]・・・」[p]
#


[aho_mod_idle_normal_metoji]
[aho_face_kunou_2]
#クライスト	
「っ・・・」[p]
#

[live2d_fadeout time=50]
[aho_arms_normal][aho_mod_idle_normal][aho_face_normal_majime]
		
;バトル	
[stopse]


				
				
[werumu_v_tatie_touroku]
[werumu_tatie_last]				
#ウェルム	
「っ・・・ぐわああああああっっ！！！」[p]
#
[chara_hide_all]			
				
				
				
#&f.name	
（ウェルム団長・・・）[p]
#

[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=0 top=-50]			
				
#&f.name	
「ヴァエルが・・・・・・」[p]
#

;鼓動　フラッシュ
[chara_hide_all]
[live2d_fadein time=1000]
[aho_head_right_x]

[aho_eyes_right]
#クライスト	
「いまだ！レム・・・封印の準備を・・・」[p]
#

[live2d_fadeout time=50]

[rem_tatie_show]		
#レム	
「・・・まさかこの俺が、お前らとの約束を律儀に守ると思っていたのか」[p]
#
			
#&f.name	
「えっ・・・」[p]
#

[chara_hide_all time=50]

[playbgm storage="yamidoukutu_ontama.ogg"]
[live2d_fadein time=50]
[aho_head_normal][aho_eyes_normal]
[aho_mod_idle_mihiraki]
[aho_face_mihiraki_n]			
#クライスト	
「レム！」[p]
#
			
#&f.name	
（どういう、こと・・・？封印に力を貸してくれるって、確かにあのとき言っていたのに・・・）[p]
#
			
#&f.name	
（まさか・・・）[p]
#
			
				
#&f.name	
「・・・おじさん・・・。私たちを、だましたの！！？？」[p]
#

[live2d_fadeout time=50]
[rem_tatie_show]
			
#レム	
「本当に愚かだな。
[rem_tatie_warai]
面白いほど簡単にだまされてくれるものだ」[p]
#

[chara_hide_all time=50]

[live2d_fadein time=50]

[aho_head_under_y]
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
#クライスト	
「・・・・・レム・・・・・君は・・・・・・・
[aho_face_kunou_metoji][aho_mod_idle_normal_metoji]
」[p]
#
			
[live2d_fadeout time=50]
[rem_tatie_show]				
;だが、その顔は怒りよりも悲しみよりもむしろ、諦めに近いような表情だった。			
				
#レム	
「さあアグレアス、そしてヴァエルよ。再生と破壊を司どるものよ」[p]
#
[aho_face_kunou]
[aho_arms_kurusimu]	
[aho_mod_idle_normal_metoji]
[aho_arms_kurusimu]
[rem_tatie_warai]			
#レム	
「時は満ちた。その強大な力でわれらを導きたまえ！！」[p]
#
[fadeoutbgm time=1000]
[chara_hide_all time=50]

[playse storage="sinzou_onjin.ogg"]

[live2d_fadeout time=50]
[image layer=3 page=fore visible=true name="aka" storage="ao.png" time=300]
[chara_new name="agureasu" storage="agureasu_face.png"]
[chara_show name="agureasu" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="agureasu"]
[free name="aka" layer=3 time=500]

[quake count="5" time="500" hmax="100"]
		
;	レムの叫び声と同時に、#クライストの周りに帯状の赤い光が出現し、彼の身体を取り囲む。			
;	その紅の光に反応するかのように#クライストの体は青く光り輝いた。			
;	紅蓮の光が蒼光に吸い込まれる。収束していく二つの光。


[playbgm storage="ghost_tairakomori.ogg" loop=true]
[live2d_fadein time=1000]


#クライスト	
「う・・・あ・・・」[p]
#
[playse storage="sinzou_onjin.ogg"]


[live2d_fadeout time=50]

[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]

[quake count="5" time="500" hmax="100"]	
[live2d_fadein time=50]		
#&f.name	
（クライストさん・・・！）[p]
#
[playse storage="sinzou_onjin.ogg"]

[image layer=3 page=fore visible=true name="aka" storage="ao.png" time=300]
[chara_new name="agureasu" storage="agureasu_face.png"]
[chara_show name="agureasu" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="agureasu"]
[free name="aka" layer=3 time=500]

[quake count="5" time="500" hmax="100"]

;[live2d_fadeout time=500]

;[live2d_fadein time=1000]		
;蒼と赤。二つの光が禍々しい色となり#クライストの体を蝕む。	
	
#クライスト	
「あ・・・あ・・・っっ」
[aho_face_kunou]
[aho_mod_idle_normal_metoji]
[aho_body_right_x]
[aho_body_right_z]
[aho_body_left_x]
[aho_body_left_z]
[p]
#
[playse storage="sinzou_onjin.ogg"]
;[live2d_fadeout time=50]

[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]


;[live2d_fadein time=50]
[quake count="25" time="500" hmax="100"]	

;身体中に刻まれた紋章から流れ出る、鮮血。			
;#クライストは血まみれになりながら、自らの体を抱きしめ、かきむしり、地面に倒れ悶えた。	

;[live2d_fadein time=50]
[aho_head_right_x][aho_head_right_z]
[aho_head_left_x][aho_head_left_z]
#&f.name	
「・・クライストさんっっ・・・クライストさん！！」[p]
#
#クライスト	
「だめだ！！・・・[name]・・・！！
[aho_face_kunou_2]
にげ・・・ろっっ・・・」[p]
#
[playse storage="sinzou_onjin.ogg"]
;[live2d_fadeout time=50]

[image layer=3 page=fore visible=true name="aka" storage="ao.png" time=300]
[chara_new name="agureasu" storage="agureasu_face.png"]
[chara_show name="agureasu" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="agureasu"]
[free name="aka" layer=3 time=500]


;[live2d_fadein time=50]
[quake count="5" time="500" hmax="100"]			
				
#&f.name	
「だって・・・だって、このままじゃ・・・」[p]
#

[playse storage="sinzou_onjin.ogg"]
;[live2d_fadeout time=50]

[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=0 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]



[quake count="5" time="500" hmax="100"]
;涙があふれる。#クライストのこんな姿を見て、じっとしていられる訳がない。

;[live2d_fadein time=1000]
#&f.name	
「嫌だよ・・・嫌だよ・・・・！！！！」[p]
#

[aho_head_normal][aho_face_kunou]		
#クライスト	
「[name]・・・」[p]
#
							
#&f.name	
（そうだよ・・・まだ気持ちだって・・・ちゃんと伝えてないのに・・・！！）[p]
#

[live2d_fadeout time=50]
[aho_arms_normal]
[rem_tatie_show]
			
#レム	
「お前ら人間がどうあがこうともう遅い」[p]
#

[rem_tatie_warai]			
#レム	
「さあ・・・アグレアスとヴァエルの融合、ヴァリアスよ」[p]
#
			
#レム	
「その肉体を喰らい、われらの前に御身を現せ！！！」[p]
#
[stopbgm]
[chara_hide_all time=50]
;フラッシュ、白い光がましていって、真っ白、クライストの姿消える
;紅蓮の光とシアンの輝きが強さを増し、血だらけの#クライストの身体を包み込む。	
[live2d_fadein time=50]


[aho_body_above_y]
[aho_head_above_y]
[aho_face_mihiraki]
[aho_mod_idle_mihiraki]
[aho_body_v_normal]
[playse storage="sinzou_onjin.ogg"]

;[playbgm storage="enerugi_koukaonlabo.ogg"]



[quake count=20 time=300 hmax=20]
[fadeoutbgm time=3000]

[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=0 top=-50]

[chara_new name="agureasu" storage="agureasu_face.png"]
[chara_show name="agureasu" left=0 top=-50]



[quake count="50" time="3000" hmax="20"]
[free name="ao" layer=3]
[playse storage="agureasu_macchi.ogg"]
[playse storage="eco00_macchi.ogg"]
[image storage="siro.jpg" layer="3" page="fore" name="siro" visible=true x="0" y="0" time=1000]

#クライスト	
「ああああああああああああっっっっ・・・」[cm]
[live2d_fadeout time=1000][chara_hide_all time=1000]
#

[aho_mod_idle_normal_metoji]
[aho_face_metoji]
[aho_head_normal]			
;彼の姿が・・・光に掻き消えていく。			
#&f.name	
「クライストさんっ・・・！！やだ・・・やだああああああああっっっ！！！」[p]
#

[playse storage="dash-gravel1_koukaonlabo.ogg"]

[bg storage="siro.jpg"]
[playse storage="sinzou_onjin.ogg"]
[quake count="3" time="100" hmax="30"]


[playse storage="sinzou_onjin.ogg"]
[quake count="3" time="100" hmax="30"]


[stopse]

[free name="siro" layer=3 time=3000]
[live2d_hide name="aho"]
[live2d_new name="aho" model_id="ahov" lip=true jname="？"]
[live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]
[live2d_fadein time=1000]



#&f.name	
「クライスト・・・さん・・・？」[p]
#


#？
「こざかしい人間の小娘が・・・」[p]
#


#&f.name
「えっ・・・」[p]
#

[playbgm storage="kisimi_musmus.ogg"]

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#？
「この・・・体は・・・ワレの、もの。そして復讐を果たすまで、誰にも渡しはせん！！」[p]
#


#&f.name
「！？」[p]
#

#&f.name
（これは・・・クライストさんじゃ・・・）[p]
#

#&f.name
「だ、だれっ・・・」[p]
#
[live2d_hide name="aho"]
;BGM変わるヴァリアスにやっと笑う
[live2d_new name="aho" model_id="ahov" lip=true jname="ヴァリアス"]
[live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]

[aho_head_right_x]
[aho_head_above_y]
[aho_face_bisyou_youen]
[aho_eyes_under]
#ヴァリアス
「我が名は・・・魔王ヴァリアス。魔族の無念、その身に宿す創造主・・・」[p]
#

#&f.name
（魔王・・・ヴァリアス・・・）[p]
#


#&f.name
「く、クライストさんは・・・クライストさんは・・・」[p]
#


[aho_arms_udekumi]
[aho_face_mehuse_warai]
[aho_mod_idle_normal_mehuse]
[aho_head_normal]
[aho_eyes_normal]
[aho_head_under_y]

#ヴァリアス
「この『器』の、以前の・・・名前か？」[p]
#

#&f.name
「え・・・」[p]
#

#&f.name
（器？以前・・・って・・・）[p]
#

[aho_head_above_y]
[aho_head_left_z]
[aho_eyes_left]
#ヴァリアス
「往生際の悪い男だった。それほどまでに自らに未練があったのか・・・」[p]
#

[aho_eyes_normal]
[aho_head_normal]
[aho_head_right_z]
#ヴァリアス
「だがもう、その名を持つ者はここには存在しない。ここにあるのは・・・もとは彼であった肉体・・・『抜け殻』のみ」[p]
#

#&f.name
「！！！！！」[p]
#

#&f.name
「う・・・うそ・・・嘘・・・だよね、だってさっきまで・・・」[p]
#


[aho_face_normal_majime]
[aho_head_normal]
[aho_head_left_z]
[aho_eyes_left]
#ヴァリアス
「強い想いを・・・感じた。おそらく誰かに向けられたものだったのだろうが・・・

[aho_head_normal]
[aho_head_under_y]
[aho_face_bisyou_youen]
ああ・・・そうか、それがおまえか」[p]
#

#&f.name
（クライストさん・・・！！）[p]
#


[aho_eyes_left]
[aho_head_normal]
[aho_face_akireru]
#ヴァリアス
「胸糞悪い感情だ。ワレのもっとも嫌う・・・
[aho_head_under_y]
[aho_body_under_y]
[aho_face_bisyou_youen][stopbgm]
だから粉々に潰してやった。やつの、精神とともに」[p]
#

#&f.name
「！！！！！！そ、そんな・・・じゃあ・・・」[p]
#

[playbgm storage="chinkou_ontama.ogg"]
#&f.name
（本当に・・・クライストさんは・・・もう・・・）[p]
#

#&f.name
「っ・・・嘘・・・嘘だよね・・・クライストさん・・・クライスト・・・さん・・・」[p]
#

#&f.name
（目の前に・・・いるのは、間違いない、クライストさんの姿・・・なのに・・・）[p]
#


#&f.name
「嫌・・・クライストさん・・・クライストさん・・・」[p]
#


[aho_face_metoji]
[aho_mod_idle_normal_metoji]
#ヴァリアス
「・・・・・・」
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[p]
#



#&f.name
「っっく・・・ひっく・・・」[p]
#

#&f.name
（気持ちも・・・伝えられなかった・・・ひとことも・・・）[p]
#

#&f.name
（ヴァリアスの言ってた・・・強い想いって・・・わたしに・・・？じゃあ、クライストさんも・・・）[p]
#

#&f.name
「だけどもう・・・」[p]
#

[fadeoutbgm time=1000]

[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
#ヴァリアス
「そう悲観するな。お前もすぐ、あの男のもとへ送ってやる。二人仲良くあの世で再会できるようにな」[p]
#

[aho_head_right_z]
[aho_eyes_right]
[aho_head_left_z]
[aho_eyes_left]
[aho_head_normal]
[aho_eyes_normal]
[aho_face_mehuse_warai]

[playbgm storage="yamidoukutu_ontama.ogg"]
#ヴァリアス
「・・・お前も本望だろう・・・？」[p]
#

[aho_head_above_y]
[aho_eyes_under]
[aho_face_akireru]
#ヴァリアス
「外観だけとはいえ、自らが恋い慕う相手に、息の根を止めてもらえるのだから」[p]
#
#&f.name
「っ・・・」[p]
#

#&f.name
（・・・ヴァリアス・・・！！）[p]
#


#&f.name
（本当に、本当にクライストさんは、クライストさんの精神はもう、ヴァリアスに殺されてしまったの！？）[p]
#
#&f.name
（信じたくない・・・でも、今はそんなこと考えてる場合じゃなくて・・・）[p]
#
#&f.name
（たたかわ・・・なくちゃ・・・）[p]
#

[fadeoutbgm time=2000]
#&f.name
（でも・・・）[p]
#
#&f.name
「クライスト、さん・・・」[p]
#
#&f.name
（目の前に、いるのは・・・）[p]
#
;ヴァリアス微笑む

[aho_head_normal]
[aho_head_right_z]
[aho_eyes_normal]
[aho_face_bisyou_youen]
#&f.name
「っ・・・」[p]
#
#&f.name
（だめだ・・・剣をふるえないよ、あいつはクライストさんじゃない、わかってる、わかってるのに・・・）[p]
#
#&f.name
（手が・・・動かない）[p]
#

[aho_face_normal_majime]
[aho_eyes_right_above]
[aho_head_right_x]
[aho_head_above_y]

[fadeoutbgm time=1000]

#ヴァリアス
「・・・あの男と違って、お前は命乞いすらしないか。

[aho_head_normal]

[aho_face_akireru]
まあいい、せめて苦しまずに息の根を止めてやる」[p]
#
[live2d_fadeout time=500]
[aho_arms_kamae]
[wait time=500]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[live2d_fadein time=1000]
#&f.name
「・・・・・・」[p]
#
#&f.name
（・・・いいか、もう・・・クライストさんの手で、クライストさんのところへ、行けるなら・・・）[p]
#

;暗転
[aho_head_under_y]
[aho_face_bisyou_youen]
[live2d_fadeout time=50]
[live2d_hide name="aho"]



[anten]

[eval exp="tf.anime_kra_x=-50"]
[eval exp="tf.anime_kra_y=-100"]

[playse storage="battle_se/kra_sword_3.ogg"]

[image layer=3 page=fore visible=true name="kra_anime" height="800" width="800" storage="battle_animation/kra/kra_sword_0r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="anime"]

[image layer=3 page=fore visible=true name="kra_anime" height="800" width="800" storage="battle_animation/kra/kra_sword_1r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_2r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_3r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_4r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_5r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_6r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_7r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_8r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_9r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]


[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_10r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime"]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_11r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_11r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]

[image layer=3 page=fore visible=true name="kra_anime"  height="800" width="800" storage="battle_animation/kra/kra_sword_11r.png" x=&tf.anime_kra_x y=&tf.anime_kra_y]
[wait time=25]
[free layer=3 name="kra_anime" ]
[wait time=5]
[playse storage="battle_se/kra_sword_2.ogg"]










[playse storage="kenshougeki_koukaonlabo.ogg"]
[quake count="30" time="100" hmax="30"]
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[w]
[free layer=3 name="siro"]
[image layer=3 page=fore visible=true name="siro" storage="siro.jpg" time=50]
[w]
[free layer=3 name="siro"]

[live2d_lion_touroku]
[live2d_lion_show_sekkin]
[lioness_mod_idle_no_move]
[lioness_face_chottoikari]
[lioness_arms_kamae]
[wait time=2000]




[bg storage="nakaniwa_tasogare.jpg" time=5000]



#&f.name
「・・・？」[p]
#




;剣戟

[playbgm storage="kra_battle.ogg"]

#ライオネス
「ばっかやろう！！！腑抜けてんじゃねえ！！」[p]
#
#&f.name
（えっ・・・）[p]
#
;ライオネス登場
[live2d_fadein time=500]

#&f.name
「ら、ライオネス・・・」[p]
#

#ライオネス
「てめえらしくもねえ！！全然らしくねえよ！！」[p]
#

#ライオネス
「兄貴と、約束したんじゃねえのか！！諦めないって。馬鹿みたいにまもってたんじゃねえのか！！」[p]
#
#&f.name
「・・・でも・・・」[p]
#


#ライオネス
「でもじゃねえ！！最後まであがいてみせろよ！！あいつの気持ち、無駄にすんじゃねえよ！！」[p]
#
#&f.name
「・・・だけど、もうクライストさんは・・・」[p]
#

[lioness_face_metoji]
[lioness_face_chottoikari]
#ライオネス
「あーくそ！！馬鹿かお前は！！あいつはな、お前のためにわざわざ王宮にひとりで乗り込んだんだぞ！！」[p]
#

#ライオネス
「俺だったらやらねえよ！！好きな女のためにそこまでして、あいつは、自分を犠牲にして王都をディーヴァから助けるつもりだった」
[p]
#

[lioness_face_mehuse_dai]
#ライオネス
「それは全部、お前ひとりのためなんだよ！！ここで俺らが死んだらな、あいつの気持ちも、やったことも全部無駄になんだよ！！」
[p]
#

[lioness_face_normal]
#&f.name
（クライスト・・・さん・・・）[p]
#


#ライオネス
「わかったらさっさと剣を抜け！！
[lioness_eyes_right]
[lioness_eyes_normal]
兄貴は負傷してるからな、仕方ねえ俺がつきあってやる！！」[p]
#

#ライオネス
「人の体乗っ取ってしか生きられねえやつに、好き勝手させてたまるかよ！！」[p]
#


;#ヴァリアス
;「銀髪の小僧が・・・弱いものこそ口が達者だな。この魔力の渦にも、よく入ってこれたものだ」[p]
;「おお！あのレムのおっさんがな、なんだか知らねえが力貸してくれたぜ。あのおっさん一体何がやりてえんだか」[p]

;#&f.name
;「おじさんが・・・」

[live2d_hide name="lioness"]
[live2d_new name="aho" model_id="ahov" lip=true jname="ヴァリアス"]
[live2d_kra_show_sekkin][w]
#ヴァリアス
「いらぬ邪魔が、はいったか」[p]
[live2d_hide name="aho"]

;[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_lion_show_sekkin]
#ライオネス
「魔王だかなんだか知らねえが、復讐なんてくだらねえことやめて天にかえりやがれ！！」[p]
#

[lioness_face_chottoikari]
#ライオネス
「何百年も前からとか、しつけえんだよ！！」[p]
#

[live2d_hide name="lioness"]
[live2d_new name="aho" model_id="ahov" lip=true jname="ヴァリアス"]
[live2d_krav_show_sekkin][w]

[aho_face_gantobasi]
#ヴァリアス
「小僧が・・・知った風な口を聞くな！！

[aho_head_right_x]
[aho_head_above_y]
[aho_face_bisyou_youen]
まずはお前らから血祭りにあげてくれるわ！！」[p]
#

[aho_head_normal]
[aho_head_above_y]
[aho_face_normal]
#ヴァリアス
「慈悲は与えん。じわじわと苦しみを与えながら殺してやろう！！！」[p]
#
[live2d_fadeout time=500]
[aho_arms_kamae]

[live2d_fadein time=1000]

#&f.name
（クライストさんは・・・最後まで、私のために・・・）[p]
#

;「だからせめて、俺が俺でいられる最後のときがくるまで・・・俺はこの力を、君のために使う」[p]
;#
#&f.name
（・・・いなくなる最後のときまで、私のために・・・）[p]
#

#&f.name
「っ・・・」[p]
#

[aho_face_bisyou_youen]
#&f.name
（ここで私が諦めたら・・・そうだよ、ライオネスのいう通り、諦めるわけには、いかないんだ）[p]
#

[live2d_fadeout time=1000]

[fadeoutbgm time=1000]

[anten]
#&f.name
（たとえあなたに・・・[w]二度と会えないとしても）[p]
#



;[playbgm storage="lastbattle.ogg"]
[playbgm storage="variasu_battle.ogg"]

;バトル

#&f.name
（・・・クライストさんの体に・・・この剣を・・・）[p]
#

#&f.name
「・・・傷つけたくはないけど・・・やるしかない・・・よね・・・」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
[live2d_fadein time=1000]

#ヴァリアス
「・・・ここでは・・・いくぶん・・・分が・・・悪いな・・・」[p]
#


[live2d_fadeout time=1000]
[live2d_hide name="aho"]

[playse storage="jinari_tairakomori.ogg"]
[quake count="100" time="10" hmax="30"]
;轟音、場面が変わる　精神世界へ
[image storage="siro.jpg" layer="3" page="fore" name="siro" visible=true x="0" y="0" time=5000]

#&f.name
「！！？？」[p]
#

[chara_show name="lion" height="698" width="456" storage="&f.lion_odoroki" top=-35 left=0]
#ライオネス
「！！！！！」[p]
#

#&f.name
（な、なに・・・？体が・・・引きずり込まれるみたいに・・・）[p]
#

[chara_hide_all]
[quake count="100" time="500" hmax="30"]


#&f.name
「きゃあああああああ！！！！」[p]
#


[anten]
[playse storage="ijigen_koukaonlabo.ogg"]

[quake count="100" time="1000" hmax="30"]

[bg storage="ijigen.jpg" time=3000]

[free name="siro" layer=3 time=1000]
#&f.name
（な・・・なに・・・ここは・・・？）[p]
#

#&f.name
（ヴァリアスの・・・姿が・・・）[p]
#
[stopse]
#ヴァリアス
「ここは我々の世界・・・せっかく手に入れた依代を、傷つけられてはかなわぬからな」[p]
#

#&f.name
（我々の、世界って・・・）[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「こいつらの、ディーヴァの・・・つまり、ウェスタで聞いた、精神世界ってこと、か？」[p]
#

#ヴァリアス
「意外にも頭は回るようだな。小僧・・・」[p]
#

[lioness_tatie_chottoikari]
#ライオネス
「それじゃあてめえのきったねえその姿が、本来の姿ってわけか。
[lioness_tatie_akireru]
気持ち悪いな、クライストのやつも、よく我慢できたもんだ」[p]
#

#ヴァリアス
「か弱気人間がなにをほざくか・・・この世界はワレにとって有利に働く。強がるのもいまのうちよ・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス
「別な意味で俺らにとっても有利だぜ。
[lioness_tatie_kosinite]
あいつを傷つけずにすむ・・・
[chara_hide_all time=50]
[chara_new name="lion_kamae" storage=&f.lion_kamae]
[chara_show name="lion_kamae" top=-35 left=-100]
これで心置きなく剣をふるえるからな！」[p]
#


#&f.name
「ライオネス・・・」[p]
#

;#ライオネス
;「・・・てはいっても、何があるかわかんねえ。・・・気をつけるぞ」[p]
;#


;#&f.name
;「う、うん・・・」[p]
;#
[chara_hide_all]













[fadeoutbgm time=1000]

[refresh_hanyou]

[fadeinbgm storage="nozomi_ontama.ogg" time=3000]
[live2d_fadeout time=50]
[live2d_new name="aho" model_id="ahokuro" lip=true jname="クライスト"]
[live2d_show name="aho" y=-4.0 x=0.0 scale=8.2]
[aho_mod_idle_normal_mehuse]
[aho_body_toumei]
[aho_face_kunou]
[aho_face_kunou]

#ヴァリアス
「っ・・・ぐっ・・・ぐう・・・・うあ・・・」[p]
#
#ヴァリアス
「き、きさま・・・なぜ・・・・なぜだ・・・まだ、意識が・・・あのとき、完全に潰したはず・・・！」[p]
#

#&f.name
「えっ・・・」[p]
#

#ライオネス
「なんだ？」[p]
#

[live2d_fadein time=1000]

[aho_face_kunou]
#クライスト
「っ・・・はあっ・・・はあ・・・っ
[aho_face_kunou]
・・・・・・油断したな、ヴァリアス」[p]
#

[aho_face_metoji]
#クライスト
「人間を・・・甘く見過ぎだ」
[aho_face_normal_majime]
[p]
#
[live2d_fadeout time=1000]
#&f.name
（これって・・・これは・・・まさか・・・）[p]
#

#&f.name
「・・・クライスト、さん・・・？」[p]
#



#ヴァリアス
「ぐっぐう・・・き、きさま・・・あ・・・ぐっ・・・ぐああああああ・・・」[p]
#

[live2d_fadein time=1000]
[aho_head_under_y]
[aho_mod_idle_normal]
[aho_face_yokome_majime]
#クライスト
「[name]！！いまだ！！[name]！！」[p]
#
#&f.name
「クライスト、さん・・・」[p]
#

[aho_eyes_normal]
[aho_face_jichou]
#クライスト
「・・・頼むよ」
[aho_head_right_z]
[p]
#


[live2d_fadeout time=50]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「[name]・・・」[p]
#

[chara_hide_all time=50]
[live2d_fadein time=50]

[aho_head_normal]
#&f.name
「で、でも・・・クライストさんは・・・」[p]
#

[aho_face_tomadoi]
#クライスト
「・・・[name]・・・」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_face_kunou]
#クライスト
「・・・俺は・・・」[p]
#

[aho_face_mehuse]
#クライスト
「・・・」
[aho_face_mehuse]
[p]
#

;ここで葛藤があるが、エンディングでの説明に
[aho_face_metoji]
[aho_head_under_y]
[aho_face_mehuse_warai]
#クライスト
「・・・大丈夫。俺は・・・必ず戻るよ」[p]
#

[aho_head_normal]
[aho_face_hutuu_warai]
#クライスト
「だから・・・待っていて」[p]
#

#&f.name
（クライスト、さん・・・！！！）[p]
#

[aho_face_normal_majime]
#クライスト
「さあ、早く！！！！！」[p]
#

[aho_face_mehuse]
#&f.name
「っ・・・！！！」[p]
#

[live2d_fadeout time=50]
[playse storage="battle_se/irain_sword_0.ogg"]
[wait time=50]
[playse storage="katana1_tairakomori.ogg"]
[wait time=70]
[playse storage="katana1_tairakomori.ogg"]
[wait time=1000]

[playse storage="kenshougeki_koukaonlabo.ogg"]
[w][w][w]
[anten]

[playse storage="jinari_tairakomori.ogg"]
[quake count="50" time="1000" hmax="30"]
#ヴァリアス
「ぐ・・・ああああ・・・ぐあああああああああああああああああああああ！！！！！」[p]
#


;剣戟
[bg storage="siro.jpg"]
;クラ、目を閉じる
[live2d_fadein time=1000]
[aho_face_metoji]
;（・・・愛してる・・・。[name]・・・）
[live2d_fadeout time=2000][button_clear]
[image storage="siro.jpg" layer="3" page="fore" name="siro" visible=true x="0" y="0" time=5000]
[stopse]
;[p]



;エンディングテーマ
[live2d_delete_all][live2d_off]
[anten][button_clear]
[free name="siro" layer=3 time=1000]
[wait time=2000]
[button graphic="button/skip_s.png" target="*epilogue" name="skip" x="0" y="0" fix="true"]


[message_settei]
[r][r][r]
過去の過ちは、決して消えることはない。[l]
[r]それは同じだ。古代の人間たちも、俺も・・・。[l]
[r]このまま、いなくなることが・・・償いになるんだと思ってた。[l]
[r]でも・・・やっぱり、俺は生きたいんだ。[l]
[r]それを[name]が、気づかせてくれた[l]
[r]ごめん、アグレアス、そしてヴァエル。[l]
[r]俺は生きたい。[l]
[r]罪が許されないのなら、生きて償いたいんだ。[l]
[r]願わくば・・・彼女の隣で。[l]
[cm]
[message_kakusu]
[bg storage="siro.jpg"]
[fadeoutbgm time=3000]
[wait time=3000]

[wait time=1000]
[playbgm storage="last_sample.ogg"]



[ptext layer="3" page="fore" text="Klaist" x="340" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]
[ptext layer="3" page="fore" text="Story" x="420" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]

[wait time=3000]
[free name="moji" layer=3 time=1000]




[ptext layer="3" page="fore" text="End" x="380" y="250" size="25" face="hannari" color="black" bold="" edge="" shadow="" name="moji" width="" align="" time="1000"]
[wait time=3000]
[free name="moji" layer=3 time=1000]

[s]
*epilogue
[fadeoutbgm time=3000]

[bg storage=""]




[anten]



[s]






過去の過ちは、決して消えることはない。
それは同じだ。古代の人間たちも、俺も・・・。
このまま、いなくなることが・・・償いになるんだと思ってた。
でも・・・やっぱり、俺は生きたいんだ。
それを[name]が、気づかせてくれた
ごめん、アグレアス、そしてヴァエル。
俺は生きたい。
罪が許されないのなら、生きて償いたいんだ。
願わくば・・・彼女の隣で。

戻るよって言ったら、君は泣きながら笑ってた。
次に目覚めたときも、あの笑顔で笑ってくれるのかな
魔剣の力がなくても、俺を、好きでいてくれるのかな
・・・[name]・・・



















































#アグレアス
（力もない哀れな人間よ・・・我らは決して、お前らを許しはせぬ）[p]
#

#アグレアス
（お前らが我らに与えた残酷なる所業・・・その報いをまずはお前から味わわせてやろう！）[p]
#

#アグレアス
（この魔力の渦のなか、お前も潰れてチリになるといい・・・！！！）[p]
#



;バトル

#アグレアス
（なぜ・・・なぜ、ただの人間に、こんな力が・・・）[p]
#


#アグレアス
（だがもう遅い・・・この男の心も肉体もすでに・・・ワレの・・・我らの・・・）[p]
#

#&f.name
（そんな・・・まにあわ、なかったの・・・クライストさん・・・）[p]
#


#クライスト
「・・・」[p]
#



#&f.name
「クライストさん・・・お願い・・・お願い・・・」[p]
#


#&f.name
（目を・・・開けて・・・）[p]
#


			
							
;抱きついたその体は、なぜか優しいぬくもりを感じた。			
#&f.name	
（・・・お願い・・・ディーヴァ・・・・）[p]
#
			
#&f.name	
「・・・・・っ・・・・おねがい・・・クライストさんを・・・連れて行かないで・・・」[p]
#
			
#&f.name	
「・・・・・・つれて・・・・・・いかない、で・・・・・・・・・・」[p]
#





			
#クライスト	
「[name]・・・・・・・」[p]
#
			
#&f.name	
（離れたくない・・・離れたくないよ・・・！！！）[p]
#
			
#&f.name	
「クライストさん・・・いかないで・・・っ・・・・・クライストさ・・・ん・・・・」[p]
#
			
#クライスト	
「・・・・・・・・[name]」[p]
#
			
;耳元で、#クライストの声が聞こえた。			
;そうして、彼の腕が私の背中に回ると同時に、ぎゅっと強く抱きしめてくる。			
#&f.name	
（クライストさん・・・・・・）[p]
#
			
;霞んだ視界で見上げれば、やさしく微笑む#クライストの表情が見えた。			
;私は彼の身体に腕を回す。必死に。いっぱいいっぱいに。			
;それから、#クライストも同じように私をきつくきつく抱きこむ。			
#&f.name	
「・・・クライスト・・・さん・・・わたし・・・わたし・・・」[p]
#
			
;伝えたい。伝えなきゃ・・・			
#&f.name	
（私・・・クライストさんの・・・ことが・・・）[p]
#
			
#&f.name	
「・・・クライスト・・・さ・・・・」[p]
#
			
;だけど・・・・・・・			
;言葉をつむぐはずの唇は、それ以上もう動かなかった。			
;目の前が急速に狭くなっていく。			
#&f.name	
（だ・・・だめまだ・・・まだつたえてな・・・・）[p]
#
			
;痛みに、意識が薄れ、つぶされていく。			
#&f.name	
（・・・・・・・・・・・ま・・・・だ・・・・・・・・・）[p]
#
			
#&f.name	
（・・・・・・・・・・・・・・・・・・・・・・・・・・・）[p]
#
			
#クライスト	
「[name]・・・っ！！！！[name]っっ！！！」[p]
#
			
#&f.name	
（・・・・・・・？何か頬に・・・つめたい・・・？な・・・に・・・・？）[p]
#
			
#&f.name	
（クライストさん・・・の・・・・こ・・・え・・・・・・・・？でも、もう・・・・）[p]
#
			
#&f.name	
（・・・・・・・・・・・・・・・・・・・・・・・・も・・・・・・・う・・・・・・・・・・・・・・・）[p]
#
			
#クライスト	
「・・・・・・・・[name]・・・・・っ・・・・・・・。・・・・うっ・・・・・ううっっ・・・・」[p]
#
			
#&f.name	
「・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・」[p]
#
			
#クライスト	
「・・・・・なあ・・・。・・・・・・なあ・・・・・ディーヴァ・・・・・・・・？」[p]
#
			
#クライスト	
「・・・・お前たちにも・・・かつて・・・かつて、大切な人がいたんだろう・・・・・・？」[p]
#
			
#クライスト	
「お願いだ・・・俺に・・・俺と彼女に・・・もう少しだけ、もう少しだけでいい・・・時間をくれないか」[p]
#
			
#&f.name	
「・・・・・・・・・・・・・・・・・・・・」[p]
#
			
#クライスト	
「ほんの少しの間でも、いいから・・・だから・・・どうか・・・・」[p]
#
			
				
#クライスト	
「・・・・・・・・・・・・・・・・・・・・どうか・・・・・・･･･････････････」[p]
#
			
				
#&f.name	
（・・・・・・・・・・・・・・#クライスト・・・・・さん・・・・？・・・・・あ・・・・・・）[p]
#
			
;意識がなくなる。その寸前、唇にふわり、と暖かい何かが触れたような気がした。			

#&f.name	
（・・・この感じ、知ってる・・・あぁ・・・そっか・・・やっぱり、あのとき・・・あの湖の、とき・・・）[p]
#
			
				
				
				
#&f.name	
「――――――」[p]
#
			
				









				
？	
「・・・本当にいいんですか？だってあの子は・・・」[p]
#
			
？	
「いいんですよ。私らはあの子が気に入ったんです」[p]
#
			
？	
「しかし・・・足も不自由な上に病弱で、お医者が言うには短命だって話も・・・」[p]
#
			
？	
「そんな子をわざわざお引取りなさらなくても・・・」[p]
#
			
#&f.name	
「・・・？」[p]
#
			
#&f.name	
（・・・ここ、どこだろう・・・？）[p]
#
			
				
				
				
#&f.name	
（・・・話してるのは・・・あのふたり、夫婦かな・・・？もう一人は・・・孤児院の人・・・？）[p]
#
			
				
夫	
「子供はみな同じです。どうか願いを聞いていただけませんか」[p]
#
			
				
男	
「・・・わかりました。それならば・・・クライスト！！」[p]
#
			
#&f.name	
（えっ・・・）[p]
#
			
;孤児院の中から一人の黒髪の男の子が出てきた。			
;年のころは５歳くらいだろうか。			
#&f.name	
（クライスト・・・さんなの？でも、髪の色が・・・）[p]
#
			
男	
「今日からお前は、この人のところで暮らすんだよ」[p]
#
			
				
#&f.name	
（まさか・・・あれって・・・――）[p]
#
			
				
				
				
#&f.name	
（・・・あれ・・・ここって・・・私の部屋・・・？）[p]
#
			
#&f.name	
「今までのは・・・夢・・・？」[p]
#
			
#ライオネス	
「気がついたか」[p]
#
			
#&f.name	
「#ライオネス！私・・・？」[p]
#
			
#ライオネス	
「お前らな、王宮の中庭にふたりで倒れてたんだよ」[p]
#
			
#&f.name	
「ふたり・・・？じゃあ・・・！」[p]
#
			
#ライオネス	
「あいつなら、先に気づいてどっかに・・・おい！まだ傷が・・・」[p]
#
			
#&f.name	
（#クライストさん！！！）[p]
#
			
				
#&f.name	
（生きてる・・・生きてる・・・#クライストさんが・・・、生きてる・・・！！！）[p]
#
			
				
;	空はいい天気だった。			
;	王都の近くには森と草原が広がっている。			
;	草原の丘の上、一本だけ立った大きな木の下に・・・彼は座っていた。			
;	黒い髪をそよ風になびかせ、目を細めて空を見上げている。			
#&f.name	
（黒髪だけど・・・・あれは間違いない・・・#クライストさんだ・・・）[p]
#
			
#&f.name	
「#クライストさん！！」[p]
#
			
				
				
				
#クライスト	
「・・・[name]・・・」[p]
#
			
#&f.name	
「・・・よかった・・・本当に・・・よかった・・・」[p]
#
			
#クライスト	
「・・・よく、俺だって、わかったね」[p]
#
			
#&f.name	
「わかるよ！だって・・・あ」[p]
#
			
#クライスト	
「・・・え？」[p]
#
			
#&f.name	
（夢・・？みたいなの見たってことは、言わないほうがいいのかな・・・）[p]
#
			
#&f.name	
「・・・髪の色が変わったって、#クライストさんは#クライストさんだもの」[p]
#
			
#クライスト	
「・・・・・・#&f.name・・・・・」[p]
#
			
				
				
#クライスト	
「・・・アグレアスと契約してから、すべてが変わった」[p]
#
			
#クライスト	
「髪の色だけじゃない、魔力を得ると同時に身体の不自由さはなくなるどころか普通の人間以上のものになった」[p]
#
			
#クライスト	
「・・・その代償は・・・あまりにも酷なものだったけどね・・・」[p]
#
			
#&f.name	
「・・・うん・・・」[p]
#
			
#クライスト	
「・・・もう、身体は大丈夫？」[p]
#
			
#&f.name	
「私は・・・。#クライストさんこそ、ディーヴァに・・・」[p]
#
			
				
#クライスト	
「・・･俺は平気だよ。・・・もとに戻っただけだよ、本来の俺に・・・」[p]
#
			
#&f.name	
「#クライストさん・・・」[p]
#
			
#クライスト	
「・・・・・・・」[p]
#
			
				
				
				
#&f.name	
「・・・ディーヴァは・・・どう、なったのかな・・・」[p]
#
			
#クライスト	
「・・・わからない。レムも、あのあとすぐに姿を消したらしい」[p]
#
			
#クライスト	
「ライオネスたちが到着したときには、中庭には俺たち以外だれもいなかったって・・・」[p]
#
			
#&f.name	
（おじさんが・・・。でも、あのとき確かにヴァエルとアグレアスは#クライストさんを取り込もうとしてたのに・・・）[p]
#
			
#&f.name	
「・・・どうして・・・ディーヴァは、どうして、#クライストさん？だってあれほど・・・」[p]
#
			
				
#クライスト	
「俺にも・・・わからないけど・・・だけど・・・」[p]
#
			
				
#&f.name	
「クライストさん？」[p]
#
			
#クライスト	
「・・・信じられないことだけど・・・願いを・・・聞いてくれたのかもしれない」[p]
#
			
#クライスト	
「俺の・・・そして、君の」[p]
#
			
				
#&f.name	
（連れて行かないでくれって・・・確かに頼んだけれど・・・）[p]
#
			
#&f.name	
「まさか・・・・」[p]
#
			
#クライスト	
「そうだな、俺もそう思うよ。だけど、ディーヴァたちは魔族、魔族といえども、俺たちと同じ感情を持っていた」[p]
#
			
#クライスト	
「そんなふうに考えれば・・・もしかしたら・・・」[p]
#
			
#&f.name	
「もしかしたら・・・」[p]
#
			
				
#&f.name	
（#クライストさん、確か、確かあのとき・・・かすかにしか思い出せないけど・・・）[p]
#
			
;#クライスト	『・・・大切な人がいたんだろう・・・？俺と彼女に・・・』			
#&f.name	
（大切な、人って・・・）[p]
#
			
				
#クライスト	
「・・・・・・っ」[p]
#
			
#&f.name	
「あ、あ、・・・ごめんなさい」[p]
#
			
#クライスト	
「・・・いや・・・」[p]
#
			
				
#クライスト	
「・・・そろそろ、行こうか。なんだか、風も出てきたみたいだし」[p]
#
			
#&f.name	
「あ・・・・」[p]
#
			
				
#&f.name	
（あ、あの夢の中で・・・）[p]
#
			
？	『・・・この子は足が不自由で・・・』			
#クライスト	
「っ・・・久しぶりだからかな、うまく・・・」[p]
#
			
				
				
				
#クライスト	
「・・・ご、ごめん・・・」[p]
#
			
#&f.name	
「ううん、いいよ・・・」[p]
#
			
				
#&f.name	
「きゃっ・・・」[p]
#
			
#クライスト	
「っっ・・・！！！」[p]
#
			
				
#&f.name	
（あ・・・）[p]
#
			
#クライスト	
「ごっ・・・ごめん」[p]
#
			
				
#&f.name	
「だ、大丈夫、私の支え方も悪かったのかもしれないし・・・」[p]
#
			
				
#クライスト	
「・・・・・・・・#&f.name・・・・。知って、たのか？」[p]
#
			
#&f.name	
「！！」[p]
#
			
#クライスト	
「俺の脚がよくないって・・・」[p]
#
			
#&f.name	
「あ・・・・その・・・・そのね、私、気を失ってた時・・・」[p]
#
			
	暗転			
				
#クライスト	
「それは・・・俺が子供のときの話そのものだよ。・・・そんなことがあるんだ・・・」[p]
#
			
	#クライストは、そういって私の髪に触れた。彼の繊細な指が間近にあって、ドキドキしてくる。			
#クライスト	
「・・・怖かったんだ」[p]
#
			
#&f.name	
「え？」[p]
#
			
#クライスト	
「本来の俺は・・・魔剣を持っていたときのように、強くもない、ましてや、身体も弱くて不自由で・・・なんの取り柄もない」[p]
#
			
#&f.name	
「そんな・・・」[p]
#
			
#クライスト	
「・・・本当の俺を知ったら・・・君に嫌われてしまうと思った」[p]
#
			
				
#&f.name	
（そんなことない・・・私は、魔剣の力を好きになったわけじゃないんだもの・・・）[p]
#
			
#クライスト	
「・・・それに俺の身体が不自由なことで、君にも迷惑をかけてしまう。今だって、こうやって・・・だから」[p]
#
			
#&f.name	
「・・・・・・・・・・」[p]
#
			
#クライスト	
「・・・ごめん」[p]
#
			
				
#クライスト	
「っ・・・[name]！？」[p]
#
			
#&f.name	
「#クライストさん、私が言ったこと、覚えてないの？」[p]
#
			
#クライスト	
「え・・・」[p]
#
			
#&f.name	
「ディーヴァも何も、身体が不自由だとか、そんなの関係ないんだよ！」[p]
#
			
#&f.name	
「私は・・・クライストさんの気持ちが知りたいんだって・・・前に言ったよ・・・」[p]
#
			
#クライスト	
「[name]・・・」[p]
#
			
				
				
#&f.name	
「私は・・・私は・・・私にとっては・・・前の#クライストさんも、今目の前にいる#クライストさんも、同じだよ」[p]
#
			
#&f.name	
「変わったりするような気持ちじゃないんだから・・・」[p]
#
			
				
				
				
				
#クライスト	
「俺のそばにいないほうが・・・君は幸せになれると思ったんだ」[p]
#
			
#&f.name	
「・・・嫌だよ」[p]
#
			
#クライスト	
「それが・・・君のためだって・・・だけど・・・」[p]
#
			
#&f.name	
「#クライストさん・・・」[p]
#
			
#クライスト	
「・・・こんな俺でも・・・一緒に・・・歩いてくれるっていうのか・・・？君は・・・」[p]
#
			
;私はしがみついた彼の腕を改めてもう一度、抱きしめた。			
;この人をずっと好きでいる。その決意をこめて。			
#&f.name	
「・・・一緒にいるよ。ずっと、一緒にいたい」[p]
#
			
#クライスト	
「・・・[name]・・・」[p]
#
			
	#クライストの瞳が潤む。微笑んで、彼は私の頬にそっと触れた。			
#&f.name	
（・・・#クライスト、さん・・・）[p]
#
			
#クライスト	
「・・・[name]・・・。ありがとう・・・」[p]
#
			
;	その指の滑らかさと優しいぬくもりに、思わず目を閉じる。			
;	もう一度目を開けたら・・・彼が睫も触れそうな近くで微笑んでいた。			
#クライスト	
「・・・・・・・・。・・・・・・愛してる・・・・・・」[p]
#
			
;そのまま、その言葉とともに#クライストの綺麗な顔がゆっくりと近づく。			
;	私は誘われるように瞼をまた閉じて・・・彼の唇を受け入れた。			
;	暖かくて、優しくて。彼のキスを受けるのは・・・きっとこれで３回目だ。			
#&f.name	
（・・・クライストさん・・・大好き・・・）[p]
#
			
#&f.name	
（何があっても・・・一緒にいるからね・・・）[p]
#
			
;口づけと一緒に互いの指と指をいっそう強く絡ませて。			
				
				
				









				
	エピローグ			
				
#&f.name	
「ただいまー！」[p]
#
			
#クライスト	
「おかえり、#&f.name。・・・お疲れ様」[p]
#
			
				
	・・・あれから約、２年。			
	私と#クライストさんは、王都の小さな家を借りて、二人暮らしをはじめました。			
	足が不自由な#クライストさんは、私の代わりに家の仕事をやってくれてます。			
	あと、その傍らセレさんと#トリスタンの赤ちゃんのお世話もたまに頼まれてるみたい。			
	・・・#クライストさんて、やっぱり本当に子供が大好きなんだね。			
	ていうか、あやし方がすごく上手でどこで習ったんだろうっても思えるくらい・・・。			
	
「・・・ようやくさっきアレンが寝付いたところでさ、セレのところに連れて行ったばかりなんだ」[p]
#
			
#クライスト	
「今から夕食作るから少しだけ待ってて」[p]
#
			
#クライスト	
「いいよ！私もアレン見たかったー！笑うと#トリスタンにそーっくりなんだよね」[p]
#
			
#&f.name	
「あはは。今日は比較的ご機嫌だったみたいだね。#ライオネスがつれてきたラプタと遊んでたよ」[p]
#
			
#クライスト	
（お、大物になるかも・・・さすがセレさんの子供だなあ・・・）[p]
#
			
#&f.name	
「今日は煮魚にしようかと思って。口に合うといいんだけどな」[p]
#
			
#クライスト	
「ホント！？」[p]
#
			
#&f.name	
「ああ。シャロームの港で今日は大漁だったみたいでさ」[p]
#
			
#クライスト	
「えへへ。楽しみだな。何か手伝う？」[p]
#
			
#&f.name	
「・・・いいよ。疲れてるだろ、座ってて」[p]
#
			
#クライスト	
「・・・でも」[p]
#
			
#&f.name	
「俺もこの脚になれないといけないからさ」[p]
#
			
#クライスト	
「ん・・・でも、もし辛かったら言ってね」[p]
#
			
#&f.name	
「・・・ありがとう、#&f.name」[p]
#
			
#クライスト				
	料理をしている#クライストの背中にくっつく#&f.name			
	
「・・・ん？何？」[p]
#
			
#クライスト	
「・・・なんでもない。ちょっと寒いから」[p]
#
			
#&f.name	
「・・・やれやれ・・・夜まで待てない？」[p]
#
			
#クライスト	
「な、何言って・・・！！寒いからって言ってるのに・・・！」[p]
#
			
#&f.name	
「あはは」[p]
#
			
#クライスト	
「・・・もう・・・いつもからかう・・・」[p]
#
			
#&f.name	
「ごめん」[p]
#
			
#クライスト	
「あっ・・・」[p]
#
			
#&f.name	
「・・・待ちきれないのは、俺のほうだね」[p]
#
			
#クライスト	
「え・・・」[p]
#
			
#&f.name	
「#&f.name・・・」[p]
#
			
#クライスト	
「だ・・・だめ・・・汗、いっぱいかいてるし・・・」[p]
#
			
#&f.name	
「気にしないよ、そんなの」[p]
#
			
#クライスト	
「煮魚早く食べたい」[p]
#
			
#&f.name	
「・・・仕方ないな。今はこれだけで我慢しよう」[p]
#
			
#クライスト	
「え・・・んっぅ・・・」[p]
#
			
#&f.name	#クライスト#&f.nameに深いキス。			
				
	暗転　二回目以降			
				
	
「・・・なあ・・・#&f.name」[p]
#
			
#クライスト	
「・・・なあに？」[p]
#
			
#&f.name	
「俺・・・こんな身体だけど、少しずつなれてきたら・・・さ」[p]
#
			
#クライスト	
「うん」[p]
#
			
#&f.name	
「誰かのために、何か役立つことをしたいんだ」[p]
#
			
#クライスト	
「#クライストさん・・・でも」[p]
#
			
#&f.name	
「罪滅ぼし・・・みたいなもの・・・。俺には、それくらいしかできないから・・・」[p]
#
			
#クライスト	
「あ・・・魔剣での、こと・・・？」[p]
#
			
#&f.name	
「・・・ああ・・・。たくさんの人が命を落としたのは・・・事実、だからね・・・」[p]
#
			
#クライスト	
「#クライストさん、でもそれは、#クライストさんのせいじゃ・・・」[p]
#
			
#&f.name	
「仕方なかった、なんて、自分に言い訳はしたくない」[p]
#
			
#クライスト	
「ただ・・・事実への償いが、したいんだ」[p]
#
			
#クライスト	
「#クライストさん・・・」[p]
#
			
#&f.name	
「ぜんぜん足りないかもしれないけど・・・俺が・・・この世界でできるだけのことを・・・」[p]
#
			
#クライスト	
「・・・うん・・・」[p]
#
			
#&f.name	
「私も・・・手伝えることがあったら、言ってね・・・？」[p]
#
			
#&f.name	
「いつでも、一緒に・・・いるから・・・」[p]
#
			
#&f.name	
「#&f.name・・・ありがとう・・・」[p]
#
			
#クライスト	
「大好きだよ・・・#クライストさん・・・」[p]
#
			
#&f.name	
「ああ、俺も・・・。愛してる・・・」[p]
#
			
#クライスト	
「愛してるよ・・・・#&f.name」[p]
#
			
#クライスト				

			
;#クライスト	
;「・・・まずいな・・・息が・・・」[p]
;#
			
;#クライスト一度目を伏せ			
;#クライスト	
;「・・・ごめん」[p]
;#
						
;#クライスト#&f.nameに人工呼吸→スチル			
				
;#&f.name	
;（・・・・・・・・・・・）[p]
;#
			
;#&f.name	
;（・・・・・・・・なんだろう・・・・・・何か・・・唇に・・・）[p]
;#
			
				
;#&f.name	
;（・・・・・・気持ちいい・・・・・・・）[p]
;#
			
;#&f.name	
;（これって・・・もしかして・・・・・・・・もしかし、て・・・キ・・・）[p]
;#
			
				
;#&f.name	
;（くっ・・・くるし・・・）[p]
;#
			
;#&f.name	
;「っは、あっ・・・げほっ・・・げほっ・・・」[p]
;#
			
				
;#クライスト	
;「・・・[name]・・・！！よかった・・・よかった・・・」[p]
;#
			
;#&f.name	
;「・・・クライスト、さん・・・」[p]
;#
			
				
				
;#&f.name	
;（・・・クライストさん・・・泣いてるの・・・？ううん、そんなことより・・・）[p]
;#
			
				
;#&f.name	
;（もしかして・・・あれって・・・）[p]
;#
			
;#クライスト	
;「・・・呼吸が止まってたから、てっきりもう手遅れだったかと・・・よかった・・・」[p]
;#
			
;#&f.name	
;「・・・・・・・・・・・」[p]
;#
			
;#&f.name	
;（呼吸が止まって、って・・・じゃあ、私・・・）[p]
;#
			

				
				
