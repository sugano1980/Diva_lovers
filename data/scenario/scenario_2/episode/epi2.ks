*kyoutuu9
[refresh_hanyou][live2d_off]

[call storage="scenario_2/live2d_glif_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]

[call storage="scenario_2/macro.ks"]
[call storage="scenario_2/status_macro_macro.ks"]
[call storage="scenario_2/item_hyouji_macro.ks"]
[call storage="scenario_2/map_macro.ks"]
[call storage="scenario_2/store_macro.ks"]
[call storage="scenario_2/store_macro_kioku.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/chara_para_kioku.ks"]
[call storage="scenario_2/menu_kioku_hikitugi.ks"]


;Live2Dプラグインの読み込み
[plugin name="live2d"]
[chara_new name="rans" storage="rans_tatie/rans_idle_gif_normal_warai.gif"]
[chara_new name="kra" storage="kra_tatie/Idle_gif_normal.gif"]
[chara_new name="lion" storage="lion_tatie/Idle_gif_normal.gif"]
[chara_new name="glif" storage="glif_tatie/glif_normal.gif"]
[chara_new name="gales" storage="gales_tatie/gales_normal.gif"]

[chara_new name="cera" storage="cera0_tatie/cera0_normal.png"]
[chara_new name="dancho" storage="dancho_normal_004.png"]
[chara_new name="tris" storage="tris_tatie/tris_ryoukai.png"]



[cm][eval exp="f.cera_cake=0"]
[r][eval exp="f.disc_2=1"]
[call storage="scenario_2/item_shokika.ks"]
[call storage="scenario_2/diva_system/disc_patch.ks"]
[if exp="f.array_shokika_sumi!=1"]
[call storage="array_shokika.ks"]
[endif]

[iscript]
this.kag.stat.f["cake"]=[0,0,0,0,0,0]
[endscript]
;選択肢フラグ代入
[eval exp="f.choice=992"][eval exp="f.skill_yet=1"][fadeoutbgm time=1000]
[stopbgm]
[r][clearstack]
[message_kakusu_ad]
[message_settei][freeimage layer=0][freeimage layer=1][freeimage layer=2][freeimage layer=3]
[rg][rg][rg][rg][eval exp="f.epi=2"][episode_hyouji_only]
[free name="jump_off" layer=3]
[rg]第2章　カーニバル[autosave]
[mil][hidemenubutton][l][k][cm][ka]
;ボタン表示
;[button name="kinou_button" fix="true" graphic="button/jump.jpg" enterimg="button/jump_on.jpg" x=278 y=3 storage="scenario_2/jump.ks"]
[button name="kinou_button"  role="sleepgame" fix="true" graphic="button/config_s.png" enterimg="button/config_s_on.png" x=338 y=3 storage="scenario_2/config1.ks"]
[button name="kinou_button" role="skip" graphic="button/skip_s.png" enterimg="button/skip_s_on.png" x=428 y=3]
[image layer=3 page=fore visible=true storage="config_s_off.png" name="jump_off" x=338 y=3]
[button name="role_button" role="backlog" graphic="button/log.jpg" enterimg="button/log_on.jpg" x=750 y=550]



;たちえデータ読み込み

[if exp="f.data_yomikomi_2!=1&&f.data_yomikomi==1"]

[call storage="scenario_2/diva_system/tatie_yomikomi_2.ks"]
[eval exp="f.data_yomikomi_2=1"]

[playse storage="load_complete.ogg"]
[free name="gauge" layer=1]
[free name="gauge" layer=2]

[elsif exp="f.data_yomikomi_2!=1&&f.data_yomikomi!=1"]
[call storage="scenario_2/diva_system/tatie_yomikomi_1.ks"]
[eval exp="f.data_yomikomi=1"]
[eval exp="f.data_yomikomi_2=1"]

[playse storage="load_complete.ogg"]
[free name="gauge" layer=1]
[free name="gauge" layer=2]
[endif]





[bg storage="erumu_tuki.jpg"]
;夜、闇に浮かぶエルムナード城、できれば月夜

;暗転
[plugin name="live2d"]

[call storage="scenario_2/live2d_aho_macro.ks"]

[message_settei]

[live2d_load]

[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_load_off]

[playbgm storage="kisimi_musmus.ogg"]
[r][r][r]
「ああ・・・エディ・・・エディ・・・」[mil][l][k][cm][ka]
	
[r][r][r]
「ありもしない罪で、命を断たれるなど・・・」[mil][l][k][cm][ka]


[r][r][r]
「お前の仇は・・・必ずこの母がとってみせますからね・・・」[mil][l][k][cm][ka]

	
[r][r][r]
「この・・・魔剣ヴァエルと共に・・・」[mil][l][k][cm][ka]





;赤い光
	
;青い光
;暗闇に浮かぶガイアの神木
;くらい室内、物置のクラ

[bg storage="hune_souko_tasogare.jpg"]




[message_settei_ad]
[live2d_on][live2d_show name="aho" x=0.0 y=-3.0 scale=6.2]
[aho_face_mehuse]
#クライスト	

「・・・うん。わかってるよ、アグレアス」[mil][l][k][cm][ka]
#

[aho_face_metoji]

#クライスト	
「・・・思ったより、早かったね。もう少し、のんびりしておきたかったんだけどな・・・」[mil][l][k][cm][ka]
#



;	上を見上げる、その目は青く発光
;	夜空の月

;くらアップ、目が不自然に輝く

#クライスト	

「・・・同じ、気配だ」[mil][l][k][cm][ka]

[aho_eyes_under]
[aho_face_normal_majime]
[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト
「まっすぐ・・・こっちを見てる」[mil][l][k][cm][ka]
#

[live2d_fadeout time=1000]
[live2d_hide name="aho"]
[live2d_off]


[live2d_delete_all]


[fadeoutbgm time=1000]
;暗転

[anten]

;ここでオープニング入れたいけど間に合わないかも・・・
[refresh_hanyou]



;#&f.nameの部屋




[l]

;--------------------------------------------------------------------------------------------------------------
*main_event_5

[bg storage="irainheya_tasogare.jpg"]

#&f.name	

「えーと今日は、午後からセレさんとケーキ食べにいく約束だったっけ・・・楽しみだな」[mil][l][k][cm][ka]
#
#&f.name	

「ケーキなんて滅多に食べられないもんね。高いし・・・」[mil][l][k][cm][ka]
#
#&f.name	

「あ！何着て行こうかなあ、でも一応、やっぱいつもの服の方がいいかなあ・・・」[mil][l][k][cm][ka]
#
;ノック



[playse storage="nokku_tairakomori.ogg"]
#&f.name	

「ん？はーい」[mil][l][k][cm][ka]
#


;ライおねす現れる
[lioness_tatie_touroku]
[lioness_tatie_show]



#&f.name	
「あれどうしたの？」[mil][l][k][cm][ka]
#

#ライオネス	

「・・・お前に客」[mil][l][k][cm][ka]
#
#&f.name	
「お客？？？」[mil][l][k][cm][ka]
#
#ライオネス	

「門の前で待たせてっから、急げよ」[mil][l][k][cm][ka]
#
#&f.name	

「う、うん！」[mil][l][k][cm][ka]
#


[chara_kakusu]

#&f.name	
（お客さん・・・？一体誰だろう）[mil][l][k][cm][ka]
#


[bg storage="kisidaniriguti_hiru_tasogare.jpg"]
	
;門前
#&f.name
	
「えーと・・・」[mil][l][k][cm][ka]
#
#&f.name	

「えっ・・・あれは」[mil][l][k][cm][ka]
#

# ？
「[name]！！！！きゃー、久しぶりー！！！」[mil][l][k][cm][ka]
#



[call storage="scenario_2/live2d_sub_macro.ks"]
[agata_tatie_touroku]

[playbgm storage="07_romanntisutosann_ontama.ogg"]
[lioness_tatie_touroku]

[agata_tatie_show]
[agata_tatie_yorokobi]
#アガタ	

「よかったあ！あえてー！！」[mil][l][k][cm][ka]
#



#&f.name
	
「アガタ！？」[mil][l][k][cm][ka]
#


#&f.name	

「ど、どうしたの！？一人で王都に？」[mil][l][k][cm][ka]
#
[agata_tatie_unzari]
#アガタ	

「うん！船揺れてしんどかったー！

テーベからの定期船って結構揺れるんだよねー」[mil][l][k][cm][ka]
#

[agata_tatie_usirote]
#アガタ	
「ほら、週末お祭りでしょ！だから遊びに来たんだ！」[mil][l][k][cm][ka]
#

#&f.name	
「あ、そういえば・・・」[mil][l][k][cm][ka]
#

[agata_tatie_mayuhisome]
#アガタ	
「そういえばって・・・[name]てばー・・・」[mil][l][k][cm][ka]
#

#&f.name	
「ご、ごめん最近色々あったから・・・」[mil][l][k][cm][ka]
#

#&f.name	
「週末のお祭り・・・って、確か、カーニバルだよね・・・」[mil][l][k][cm][ka]
#
[agata_tatie_usirote]
#アガタ
「そうだよー。ガイアの森で、お告げがある日でしょ！」[mil][l][k][cm][ka]
#
#&f.name	
「えーと、そうだ、クレールの未来を教えてくれるって・・・」[mil][l][k][cm][ka]
#
[agata_tatie_normal]
#アガタ
「そうそう、なんでもガイアの巫女様が、精霊から聞くんだってね」[mil][l][k][cm][ka]
#
#アガタ
「毎年、ガイアの森の大きい御神木がすっごく綺麗になるんだよねー。去年もすごく幻想的だったな・・・」[mil][l][k][cm][ka]
#
[agata_tatie_yokome]
#アガタ
「あれって、木に精霊が集まるからって話らしいんだけど、本当かな？」[mil][l][k][cm][ka]
#&f.name	
「そういえば・・・ランスロットにそんなこと、聞いたことがあるかも」[mil][l][k][cm][ka]
#
[agata_tatie_normal]
#アガタ
「ランスロット様が言ったなら、そうなのかもね、[agata_tatie_mayuhisome]それにしてお祭りの日、忘れてるなんて・・・何年王都に住んでるのー」[mil][l][k][cm][ka]
#
#&f.name	
「うーん・・・ここんとこ、すごく忙しかったからかなあ。試験もあったし・・・」[mil][l][k][cm][ka]
#


[agata_tatie_normal]
#アガタ	
「ま、でも忙しいんだよね、それだけ・・・。女の子で騎士って、すごく大変なんだろうし・・・」[mil][l][k][cm][ka]
#
#&f.name	
「うん・・・まあ・・・でもね、こないだ試験に合格して、正騎士になれたんだよ！」[mil][l][k][cm][ka]
#

[agata_tatie_smile]
#アガタ	
「本当に！すごい、おめでとう！！」[mil][l][k][cm][ka]
#
#&f.name	
「えへへ、ありがとう」[mil][l][k][cm][ka]
#

[agata_tatie_yokome]
#アガタ	
「そっかあ・・・じゃあ・・・仕事が落ち着いた次は、恋だね！」[mil][l][k][cm][ka]
#

#&f.name	
「へっ・・・？こ、恋！？」[mil][l][k][cm][ka]
#

[agata_tatie_mihiraki]
#アガタ	
「何よー、騎士団って男の人ばっかりでしょ？誰かきになる人とか、いたりするんじゃない？」[mil][l][k][cm][ka]
#
#&f.name	
「き、きになるって、言われても・・・」[mil][l][k][cm][ka]
#
#&f.name	
（そもそも、気になるって・・・？？？）[mil][l][k][cm][ka]
#

[agata_tatie_yokome]
#アガタ	
「あーでもあれかー、あれだけイケメンのランスロット様が近くにいたら、他の男なんて目に入らないかー」[mil][l][k][cm][ka]
#
#&f.name	
「い、イケメン？？？って・・・」[mil][l][k][cm][ka]
#


[agata_tatie_mihiraki]
#アガタ	
「ええー！[name]知らないの！？ランスロット様って、王都ではかなり女の子人気高いんだよ。もちろんテーベでもだけど」[mil][l][k][cm][ka]
#
#&f.name	
「ええ・・・そんなの全然・・・そうなの？知らなかった・・・」[mil][l][k][cm][ka]
#


[agata_tatie_unzari]
#アガタ	
「そういうのに疎そうだもんね・・・[name]・・・」[mil][l][k][cm][ka]
#



#&f.name	
「街中とかでも、そんな女の人とかに声かけられたりしてないよ？？」[mil][l][k][cm][ka]
#
[agata_tatie_odoroki]
#アガタ	
「そりゃあそうじゃん！あからさまに逆ナンなんかできないよー、一応、高貴な身分の人だし」[mil][l][k][cm][ka]
#
#&f.name	
「高貴な身分・・・そうだっけ？」[mil][l][k][cm][ka]
#


[agata_tatie_usirote]
#アガタ	
「もおー、そうだよ。テーベにはいないけど、騎士になる人って大体貴族が多いんだよ」[mil][l][k][cm][ka]
#


[agata_tatie_yokome]
#アガタ	
「特に王宮騎士っていうと、うちら平民にはなる資格すらないって話だし」[mil][l][k][cm][ka]
#
#&f.name	
「そ、それはなんとなく聞いたことがあるような・・・地方騎士なら身分は問わないけどって」[mil][l][k][cm][ka]
#

[agata_tatie_normal]
#アガタ	
「そうそう！だから王宮騎士って言ったら王都ではエリート中のエリートってことなんだよ！」[mil][l][k][cm][ka]
#
#&f.name	
「そ、そうかあ・・・」[mil][l][k][cm][ka]
#

[agata_tatie_yokome]
#アガタ	
「まあさ、王宮騎士って王様とか王族の人たちの警備が仕事だから、それも頷けるかなーって思うんだけど」[mil][l][k][cm][ka]
#
#ライオネス	
「おい、お前ら！！」[mil][l][k][cm][ka]
#

[fadeoutbgm time=1000]

[agata_tatie_odoroki]
#&f.name	
「えっ！？」[mil][l][k][cm][ka]
#


[lioness_tatie_show]
[lioness_tatie_udekumi]
#ライオネス	
「門の前でだらだら喋ってんじゃねえ、邪魔だ」[mil][l][k][cm][ka]
#

[agata_tatie_ikari]
#ライオネス	
「世間話ならどっかよそいけ」[mil][l][k][cm][ka]
#
#&f.name	
「あっ、ごめんなさい、じゃ、アガタ移動しよっか」[mil][l][k][cm][ka]
#
[agata_tatie_yokome]
#アガタ	
「・・・はーい、すみませんでしたぁ」[mil][l][k][cm][ka]
#
#ライオネス	
「ったく・・・」[mil][l][k][cm][ka]
#
	

[chara_kakusu]

	
[bg storage="sekishoura_tasogare.jpg"]

[l]
	
#&f.name	
「ここなら大丈夫だね。つい話し込んじゃった、ごめんアガタ」[mil][l][k][cm][ka]
#





[agata_tatie_show]

#アガタ	
「あっ、ううん、私こそごめん、久しぶりだったから嬉しくなっちゃって」[mil][l][k][cm][ka]
#

[agata_tatie_ikari]
#アガタ	
「ていうかアイツ、何？すっごい感じ悪い！そりゃこっちも悪いかもだけどさ、言い方ってものあるよね！！」[mil][l][k][cm][ka]
#


#アガタ	
「[name]呼んでもらった時も態度悪くってむかついちゃった！」[mil][l][k][cm][ka]
#
#&f.name	
「そ、そうなんだ・・・ご、ごめんね・・・」[mil][l][k][cm][ka]
#

#アガタ	
「[name]が謝ることないんだよー、アイツが悪いんだから」[mil][l][k][cm][ka]
#
#&f.name	
「う・・・ううーん・・・」[mil][l][k][cm][ka]

	
（これはだいぶ誤解されている気がするけど・・・）[mil][l][k][cm][ka]
#




;ライオネスのフォローをする
;フォローしない
	
;フォローする
[jump storage="scenario_2/sentaku.ks" target=*choice992]

*choice992_1


#&f.name	

「ライオネスは・・・口は悪いけど悪気があるわけじゃないと思うんだ・・・」[mil][l][k][cm][ka]
#


[agata_tatie_mayuhisome]
#アガタ	
「そうなの？なんか背も大きいけど態度も大きいし、あんまいい感じしないけどね」[mil][l][k][cm][ka]
#
#&f.name	
「うん、そう感じる人も多いのかもだけど・・・でも悪い人じゃないよ」[mil][l][k][cm][ka]
#


[agata_tatie_yokome]
#アガタ	
「ふーん・・・ま、[name]がそういうならそうなのかな」[mil][l][k][cm][ka]
#
#&f.name	
（あ・・・）[mil][l][k][cm][ka]
#
#&f.name	
「あ、後、ランスロットの話したからちょっと気に障ったのかも」[mil][l][k][cm][ka]
#


[agata_tatie_normal]
#アガタ	
「え？なんで？」[mil][l][k][cm][ka]
#
#&f.name	
「ライオネスは、ランスロットの弟なんだよ」[mil][l][k][cm][ka]
#


[agata_tatie_odoroki]
#アガタ	
「はああああ！！？？あれが弟！！？？嘘でしょ！？」[mil][l][k][cm][ka]
#


#&f.name	
「に、似てないかな？」[mil][l][k][cm][ka]
#

#アガタ	
「全然！！っていうか、天と地ほどの差ない！？」[mil][l][k][cm][ka]
#
#&f.name	
「ええ、えーと・・・そこまでは・・・」[mil][l][k][cm][ka]
#

#&f.name	
（すごい言われよう・・・本人が、ここにいなくてよかったかも・・・）[mil][l][k][cm][ka]
#
	



*choice992_2	

[agata_tatie_metoji]

#アガタ	
「まあ・・・とりあえずあのむかつく奴のことは置いといて」[mil][l][k][cm][ka]
#
[agata_tatie_yorokobi]

#アガタ	
「私、カーニバル終わった後もしばらく王都にいようと思うんだよね」[mil][l][k][cm][ka]
#

#アガタ	
「親戚がこっちに住んでるから、そこに世話になる予定」[mil][l][k][cm][ka]
#
#&f.name	
「そうなんだ！じゃあ、いつでも会えるね！」[mil][l][k][cm][ka]
#


[agata_tatie_smile]

#アガタ	
「うん！
[agata_tatie_yorokobi]
あ、ねえねえところで聞くんだけど・・・[name]って、占いとかやったりする？？」[mil][l][k][cm][ka]
#
#&f.name	
「占い？う、ううん・・・」[mil][l][k][cm][ka]
#

[agata_tatie_mihiraki]
#アガタ	
「私今恋占いにハマっててさ、ガイアの巫女様が、占いもやってくれるって聞いて」[mil][l][k][cm][ka]
#
#&f.name	
「ええ！そうなの？」[mil][l][k][cm][ka]
#

[agata_tatie_smile]
#アガタ	
「そうなんだよー！[name]は聞いたことない？巫女さまの占い」[mil][l][k][cm][ka]
#
#&f.name	
「え、えーと・・・ううん・・・」[mil][l][k][cm][ka]
#

[agata_tatie_yorokobi]
#アガタ	
「やっぱ精霊の声が聞けるってくらいだから、そう言うのもできるんだよね、きっと」[mil][l][k][cm][ka]
#

[agata_tatie_smile]
#アガタ	
「それが案の定すごく当たるんだって。恋に悩める女の子が巫女様のところに相談しにいったりもするらしいよ」[mil][l][k][cm][ka]
#
#&f.name	
「そ、そうなんだ・・・恋占いに・・・相談？」[mil][l][k][cm][ka]
#

[agata_tatie_yorokobi]
#アガタ	
「そうそう。私もいつ運命の彼に出会えるのか、占ってもらおうと思ってさー」[mil][l][k][cm][ka]
#

[agata_tatie_yorokobi]
#アガタ	
「[name]も気になる彼ができたらさ、巫女様のところに行ってみたら？相談したみたらうまくいったって女の子、多いんだよ！」[mil][l][k][cm][ka]
#
#&f.name	
「そ、そうかあ・・・うーん・・・まだわからないけど、いつかそんな時があったら・・・」[mil][l][k][cm][ka]
#


[agata_tatie_usirote]
#アガタ	
「いつ来るのかなー？[name]ってどんな人好きになるんだろーね！お互いがんばろーね！」[mil][l][k][cm][ka]
#

#アガタ	
「好きな人できたら、私にも教えてね！私も教えるから！」[mil][l][k][cm][ka]
#
#&f.name	
「う、うん！」[mil][l][k][cm][ka]
#

[agata_tatie_yorokobi]
#アガタ	
「絶対だよ！・・・


[agata_tatie_odoroki]
あ！もうこんな時間！

[agata_tatie_normal]
お昼だよね！親戚と待ち合わせしてるから、行かなきゃ！」[mil][l][k][cm][ka]
#

[agata_tatie_yorokobi]
#アガタ	
「それじゃね！[name]、また会おうね！！」[mil][l][k][cm][ka]
#
#&f.name	
「うん、ありがとう、アガタ！」[mil][l][k][cm][ka]
#
	

[chara_kakusu]
[anten]

#&f.name	
（ガイアの森で占いかあ・・・今度行ってみようかな）[mil][l][k][cm][ka]
#

;暗転

[eval exp="f.uranai=1"]
コマンドに占いが追加されました。[mil][l][k][cm][ka]
また、ガイアの森に直接いくと、占いだけでなく森の散策などもできます。[mil][l][k][cm][ka]
ガイアの森でイベントがある場合は、そちらが優先されます[mil][l][k][cm][ka]





;--------------------------------------------------------------------------------------------------------------

*main_event_6

[bg storage="irainheya_tasogare.jpg"]
#&f.name	
「好きな人・・・かあ・・・」[mil][l][k][cm][ka]
#
#&f.name	
「気になる・・・ううーん・・・」[mil][l][k][cm][ka]
#
	
[playse storage="nokku_tairakomori.ogg"]
#セレ	
「[name]？そろそろ行かないか？したくはできたか？」[mil][l][k][cm][ka]
#
#&f.name	
「あ、セレさん！」[mil][l][k][cm][ka]
#
#&f.name	
（うん！まずはケーキだよね）[mil][l][k][cm][ka]
#


#&f.name	
「今行きまーす！！」[mil][l][k][cm][ka]
#





*creru_res_1
[eval exp="f.store_event=1"]
[eval exp="f.sweet_event=0"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[snowfall]
[bg storage="creru_cafe.jpg"]
[snowfall_0]


[cera_tatie_touroku]

	
;王都、カフェメニュー　カフェ「スイーツストック」



[playbgm storage="lunch_musmus.ogg"]
[button_clear]
[skip_button]

[eval exp="f.snowfall= 0 "]


[eval exp="f.r_sweetvalue=1"]
[menu_choice_cafe]



[bg storage="creru_cafe.jpg"]

[cera_tatie_touroku]
[cera_tatie_show]



[cera_tatie_smile]		
#セレ	
「祭りのかざりつけが始まったみたいだな」[mil][l][k][cm][ka]
#
#&f.name	
「あ、うん！週末だものね・・・街の人たちもなんだか楽しそう」[mil][l][k][cm][ka]
#
#&f.name	
「セレさんはお祭り行くの？」[mil][l][k][cm][ka]
#


[cera_tatie_otikomi]
#セレ	
「いや・・・私は当日は仕事なんだ」[mil][l][k][cm][ka]
#

[cera_tatie_udekumi]
#セレ	
「祭りだと変な輩が出ることもある。人が集まればそれだけ犯罪も増えるものだからな」[mil][l][k][cm][ka]
#

#&f.name	
「そっかあ・・・」[mil][l][k][cm][ka]
#


[cera_tatie_smile]
#セレ	
「お前は休みなんだろう？誰かを誘って一緒に行ったらどうだ」[mil][l][k][cm][ka]
#

#&f.name	
「誰かって・・・」[mil][l][k][cm][ka]
#


#セレ	
「一緒に行ってみたいと思う相手はいないのか？」[mil][l][k][cm][ka]
#


#&f.name	
「相手・・・ううーん・・・」[mil][l][k][cm][ka]
#


#セレ	
「もし一緒に行きたい相手がいるなら、声をかけて誘ってみるといい」[mil][l][k][cm][ka]
#
#&f.name	
「う、うん・・・」[mil][l][k][cm][ka]
#
#&f.name	
（お祭りに、一緒に・・・かあ・・・考えてみようかな）[mil][l][k][cm][ka]


	
#セレ	
「さあ、そろそろ出るか。やっぱりここのケーキは絶品だったな」[mil][l][k][cm][ka]
#
#&f.name	
「うん！美味しかった！」[mil][l][k][cm][ka]
#

[button_hyouji]
[bg storage="crerumatinaka1_tasogare.jpg"]

[snowfall]
[cera_tatie_mihiraki]	
#セレ	
「ああ、そうだ・・・その、[name]、


ついでと言ってはなんだが少し・・・
買い物に付き合ってもらってもいいか」[mil][l][k][cm][ka]
#


#&f.name	
「え？うん、いいよ！買い物って何？」[mil][l][k][cm][ka]
#


[cera_tatie_komari]
#セレ	
「服・・・なんだが、私はそういうところにあまり行ったことがなくて・・・」[mil][l][k][cm][ka]
#
#&f.name	
「服・・・セレさん、あんまり興味ないの？」[mil][l][k][cm][ka]
#



[cera_tatie_tere]

#セレ	
「い、今までは、な・・・」[mil][l][k][cm][ka]
#


#&f.name	
「？」[mil][l][k][cm][ka]
#

[snowfall_0]
[chara_kakusu]


[anten]

;頭脳３０以上でガレスフラグ
[if exp="f.irain_brain>25"]
[call storage="scenario_2/live2d_gales_macro.ks"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[eval exp="f.event_gales_1=1"]
[cera_tatie_normal]
#セレ	
「確かこっちの通りの店だったと・・・」[mil][l][k][cm][ka]
#
#&f.name	
（うわあ・・・この辺ってアクセサリーとかのお店が並んでるんだね・・・あんまり気にしたことなかったけど）[mil][l][k][cm][ka]
#
#&f.name	
「・・・ん？」[mil][l][k][cm][ka]
#
	
[chara_kakusu]


	
[gales_tatie_touroku]
[gales_tatie_show]
#&f.name	
（すっごいこの場所にそぐわない感じの人がいる・・・）[mil][l][k][cm][ka]
#

[chara_hide name="gales"]
[cera_tatie_show]
[cera_tatie_mihiraki]
#セレ	
「[name]？」[mil][l][k][cm][ka]
#
#&f.name	
「ねえセレさん、あの人・・・なんか目立ってるよね？」[mil][l][k][cm][ka]
#

[chara_kakusu]

[gales_tatie_show]

[chara_kakusu]

[cera_tatie_show_otikomi]
#セレ	
「ああ・・・王宮の政府高官がなぜこんなところに？」[mil][l][k][cm][ka]
#
#&f.name	
「政府高官・・・？」[mil][l][k][cm][ka]

[cera_tatie_udekumi]
#セレ	
「あの制服は、王宮の政治に関わる役人の制服だ」[mil][l][k][cm][ka]
#
#&f.name	
「偉い人・・・ってこと？？」[mil][l][k][cm][ka]
#

[cera_tatie_otikomi]
#セレ	
「簡単に言えばそうなんだが・・・」[mil][l][k][cm][ka]
#

[chara_kakusu]

[gales_tatie_show]

#&f.name	
「・・・」[mil][l][k][cm][ka]
#


[chara_kakusu]
[cera_tatie_show]
#セレ	
「あんまりじろじろみないほうがいいぞ。権力のある人間の機嫌を損ねるとろくな結果にならないからな・・・」[mil][l][k][cm][ka]
#


#&f.name	
「う、うん・・・」[mil][l][k][cm][ka]
#
#&f.name	
（そんな偉い人が・・・なんでこんなところにいるんだろ・・・？）[mil][l][k][cm][ka]
#

[chara_kakusu]

[endif]

;ブティック



[bg storage="sitateya_tasogare.jpg"]
#&f.name	
「セレさん、決まった？」[mil][l][k][cm][ka]
#

[cera_tatie_show]

#セレ	
「あ、ああ・・・この服にしようと思うんだが・・・」[mil][l][k][cm][ka]
#
#&f.name	
「わあ！可愛い・・・でも、セレさんこういうの好きだったっけ？」[mil][l][k][cm][ka]
#


[cera_tatie_udekumi]
#セレ	
「ああいや・・・この間、似合うんじゃないかって、言われて・・・」[mil][l][k][cm][ka]
#

#&f.name	
「誰に？」[mil][l][k][cm][ka]
#

[cera_tatie_mihiraki]

#セレ	
「えっ！？だ、誰って・・・その、いや、

[cera_tatie_normal]
ともかく買ってくる！」[mil][l][k][cm][ka]
#


[chara_kakusu]


#&f.name	
（？？？セレさん？？？）[mil][l][k][cm][ka]
#



[playse storage="okane_onjin.ogg"]

[cera_tatie_show]
[cera_tatie_otikomi]




#セレ	
「・・・買って、しまった・・・」[mil][l][k][cm][ka]
#
#&f.name	
「・・・えっと・・・後悔、してるの？」[mil][l][k][cm][ka]
#

[cera_tatie_bikkuri]
#セレ	
「い、いや、そういうわけでは・・・

[cera_tatie_tere]
ただ・・・気に入ってもらえるのだろうか・・・」[mil][l][k][cm][ka]
#
#&f.name	
「・・・だから、誰に？」[mil][l][k][cm][ka]
#


[cera_tatie_bikkuri]
[cera_tatie_normal]
#セレ	
「お、お前は何か買わないのか？」[mil][l][k][cm][ka]
#

#&f.name	
（不自然に話変えられちゃったけど・・・）[mil][l][k][cm][ka]
#
#&f.name	
「私も何か買おうかな？」[mil][l][k][cm][ka]
#
[chara_kakusu]
;ブティックでの買い物、買い物画面表示


*store_event
[eval exp="f.store_first=1"]
[eval exp="f.store_event=0"]
[eval exp="f.monster_event=1"]
[store_money]

	
	
	
;選択、購入
*store_end
[bg storage="crerumatinaka1_tasogare.jpg"]

[snowfall]

[message_settei_ad]

[cera_tatie_show_tere]
;ジャンプぼたん対策用
[clearstack]
;機能ボタンを表示
[button_hyouji]

[cm]

[cera_tatie_tere]
#セレ	
「・・・・・・」[mil][l][k][cm][ka]
#

#&f.name	
（なんだかさっきから、セレさん挙動不審なんだけど・・・）[mil][l][k][cm][ka]
#
#&f.name	
（顔もどことなく赤いし・・・）[mil][l][k][cm][ka]
#


#&f.name	
「あの、セレさん？」[mil][l][k][cm][ka]
#

[cera_tatie_bikkuri]
#セレ	
「っ・・・[name]？どうした？」[mil][l][k][cm][ka]
#
#&f.name	
「あの・・・」[mil][l][k][cm][ka]
#



[stopbgm]
	
#街の人	
「た、助けてくれー！！モンスターが、モンスターがでた！！！」[mil][l][k][cm][ka]
#
[playbgm storage="struggle.ogg" loop="true"]

	
[snowfall_0]
[cera_tatie_mihiraki]
#セレ	
「！！！！！」[mil][l][k][cm][ka]
#


[cera_tatie_kamae]

#&f.name	
「も、モンスター！！？？」[mil][l][k][cm][ka]
#




#セレ	
「・・・街の警備は何をしているんだ・・・とにかく、行くぞ！！」[mil][l][k][cm][ka]
#



#&f.name	
「は、はい！！」[mil][l][k][cm][ka]
#

[chara_kakusu]


;MAP移動
[eval exp="f.event_main_5=1"]
[eval exp="f.tokei_no=1"]
;フラグでイベント発生アイコン表示、裏通り
[creru_outo_map]










[cera_tatie_show]


*event_main_5
[button_hyouji]
[cera_tatie_show_kamae]
#セレ
「モンスターはどこだ！？」[mil][l][k][cm][ka]
#


#街人	
「あ、あっちの路地裏で・・・！！」[mil][l][k][cm][ka]
#


#街人２	
「モンスターだ！モンスターが噴水通りに出た！！」[mil][l][k][cm][ka]
#


[cera_tatie_bikkuri]


#&f.name	
「ええっ！！」[mil][l][k][cm][ka]
#



[cera_tatie_kamae]


#セレ	
「あちこちで出ているようだな・・・他の騎士たちも駆けつけるだろうが・・・
ここは二手に分かれるぞ」[mil][l][k][cm][ka]
#
#&f.name	
「セレさん・・・！」[mil][l][k][cm][ka]
#


[cera_tatie_metoji]

#セレ	
「[name]・・・お前はもう正騎士だ。・・・やれるな？」[mil][l][k][cm][ka]
#


#&f.name	
「は・・・はい！！！」[mil][l][k][cm][ka]
#
#&f.name	
（一人で・・・少し心細いけど・・・頑張らなきゃ・・・！！）[mil][l][k][cm][ka]
#


[cera_tatie_donari]
#セレ	
「私は路地裏に回る！お前は噴水通りのモンスターに対応しろ！！」[mil][l][k][cm][ka]
#


#&f.name	
「わ、わかりました！」[mil][l][k][cm][ka]
#
[chara_kakusu]



*jump_event_5
[eval exp="f.event_main_5=0"]
[eval exp="f.event_main_5_1=1"]


[creru_outo_map]

*event_main_5_1
[eval exp="f.monster_event=2"]
;	MAP移動　噴水通り
;	戦闘
;	１回目
;	２回目、３回目
[eval exp="f.tougijou=0"]
[eval exp="f.battle_main_5=3"]
[jump storage="scenario_2/mini_game/battle.ks"]
*main_event_5_battle


;魅力一定以上　グリフ

[if exp="f.irain_charm>0"]
*lose

[eval exp="f.event_glif_1=1"]
[button_hyouji]
#&f.name	
「・・・き、キリがない・・・！まだまだ出てくるの！？一体、どこから・・・」[mil][l][k][cm][ka]
#
#&f.name	
（街の警備だって、ちゃんとしてたはず、だよね・・・）[mil][l][k][cm][ka]
#
#&f.name	
（体力が流石に持たない・・・かも）[mil][l][k][cm][ka]
#

[glif_tatie_touroku]
[glif_tatie_show]
[eval exp="f.glif_yes=1"]
[eval exp="f.glifkonkando=0"]
[eval exp="f.glifrenailevel=1"]
[eval exp="f.glifrenaikando=0"]
	
#？？？
「・・・助太刀します」[mil][l][k][cm][ka]
#
#&f.name	
「えっ・・・誰・・・」[mil][l][k][cm][ka]
#

[playse storage="ooku_koukaonlabo.ogg"]
#&f.name	
「！！！」[mil][l][k][cm][ka]
#
[glif_tatie_kamae]


[chara_hide name="glif"]
;戦闘
*glif_battle
[jump storage="scenario_2/mini_game/battle.ks"]
*glif_battle_end
[eval exp="f.monster_event=0"]
[eval exp="f.choice=993"]

[button_hyouji]
#&f.name	
「はあ・・・はあ・・・」[mil][l][k][cm][ka]
#

[glif_tatie_show]
#？？？	
「大丈夫ですか？」[mil][l][k][cm][ka]
#


#&f.name	
「はい・・・あの・・・ありがとうございます」[mil][l][k][cm][ka]
#
[glif_tatie_normal_warai]
#？？？
「いえ。・・・
[glif_tatie_normal]
あの、地方騎士団の方ですか？」[mil][l][k][cm][ka]
#


#&f.name	
「は、はい・・・一応・・・」[mil][l][k][cm][ka]
#

[glif_tatie_normal_warai]
#？？？
「そうなんですか。遠目に見ましたが、なかなかの腕ですね」[mil][l][k][cm][ka]
#
[glif_tatie_normal]
#？？？	
「・・・それにその双剣・・・あなたはもしかして・・・ランスロット隊長の・・・」[mil][l][k][cm][ka]
#

#&f.name	
「えっ」[mil][l][k][cm][ka]
#
[glif_tatie_mihiraki]
#王宮騎士	
「おいグリフ！！ここにいたのか・・・何やってる！！急げ！！！」[mil][l][k][cm][ka]
#


#？？？
「あっ、はい！今行きます！！」[mil][l][k][cm][ka]
#

[glif_tatie_normal_warai]
#？？？
「すみません。それじゃ」[mil][l][k][cm][ka]
#

[chara_kakusu]

#&f.name	
「あっ・・・」[mil][l][k][cm][ka]
#
#&f.name	
（行っちゃった・・・）[mil][l][k][cm][ka]
#
#&f.name	
（・・・今、ランスロット隊長・・・って言ってたよね・・・？もしかして、ランスロットの部下の人？とか？）[mil][l][k][cm][ka]
#
#&f.name	
（あの制服は・・・王宮騎士団の・・・グリフ・・・って名前なのかな？）[mil][l][k][cm][ka]
#



[eval exp="f.event_glif_1=0"]
[endif]







[cera_tatie_touroku]
[cera_tatie_show_donari]


#セレ	
「[name]！！大丈夫か！！！」[mil][l][k][cm][ka]
#
#&f.name	
「う、うん！」[mil][l][k][cm][ka]
#


[cera_tatie_normal]
#セレ	
「ようやく応援が来た。だいぶモンスターも減っている。
ここは任せて、私たちはとりあえず父さんに報告しに行こう」[mil][l][k][cm][ka]
#


#&f.name	
「は、はい！！」[mil][l][k][cm][ka]
#

[chara_kakusu]
[fadeoutbgm time=1000]

[anten]
;mapのフラグ消去
[eval exp="f.map=0"]
[eval exp="f.place_creru_oukyu=0"]
[eval exp="f.place_creru_hunsui=0"]
[eval exp="f.place_creru_sakaba=0"]
[eval exp="f.place_creru_gaia=0"]
[eval exp="f.place_creru_uradoori=0"]
[eval exp="f.place_creru_out=0"]

	
;騎士団本部;--------------------------------------------------------------------------------------------------------------------------------------

[eval exp="f.tokei_no=0"]
[eval exp="f.event_main_5=0"]
[eval exp="f.event_main_5_1=0"]
[eval exp="f.event_main_6=1"]
[eval exp="f.event_gales_1=0"]
[eval exp="f.gales_yes=1"]
[call storage="scenario_2/live2d_sub_macro.ks"]

[snowfall_0]
[bg storage="dancho_tasogare.jpg"]
[cera_tatie_show]
[chara_move name="cera" left=-1]
[tris_tatie_touroku][tris_tatie_show_dancho]
[dancho_tatie_touroku][dancho_tatie_show]









[dancho_tatie_ikari]

#団長	
「まさかカーニバルまであと数日というところで、こんなことが起きるとは・・・」[mil][l][k][cm][ka]
#



[tris_tatie_sian]


[cera_tatie_otikomi]
#セレ	
「父さん・・・カーニバルを中止にしたほうがいいんじゃないか・・・
人が大勢集まって今日みたいなことが起きたら・・・」[mil][l][k][cm][ka]
#

[dancho_tatie_metoji]
#団長	
「・・・それは国王陛下が判断されることだ。我々は今回の報告を王宮に伝えることしかできん」[mil][l][k][cm][ka]
#


[tris_tatie_metoji]


#&f.name	
（王宮に・・・王様がやるって言ったらこのままお祭りはやるんだ・・・）[mil][l][k][cm][ka]
#
#&f.name	
（・・・大丈夫なのかな・・・）[mil][l][k][cm][ka]
#

[dancho_tatie_ikari]
#団長
「カーニバル実施の是非は王宮に任せるとして、我々はカーニバル当日まで、
できるだけ街のモンスターを片付けるしかないだろう」[mil][l][k][cm][ka]
#


[cera_tatie_udekumi]
#セレ	
「警備の体制を見直します。傭兵の数も増えてきていますし、
カーニバル当日の警備計画も立て直さなくては」[mil][l][k][cm][ka]
#



[tris_tatie_ryoukai]
#トリスタン	
「・・・そうだな。早速明日から厳戒態勢で警備に当たろう。
[tris_tatie_mehuse]
と言っても・・・王都民には不安を与えないようにする必要があるな・・・」[mil][l][k][cm][ka]
#

[dancho_tatie_metoji]
#団長	
「トリスタンの言う通りだ。都民の各自治会にモンスターが発生する可能性に備えてとし、
カーニバルには影響が出ないことを伝達する」[mil][l][k][cm][ka]
#


[dancho_tatie_ikari]
#団長
「各騎士は再編成される班とシフトに従って街の警備に専念すること。
夕方、緊急会議を開いて全団員に説明だな」[mil][l][k][cm][ka]
#

[tris_tatie_ryoukai]
#トリスタン	
「召集はお任せください」[mil][l][k][cm][ka]
#


#団長
「頼んだ。トリスタン」[mil][l][k][cm][ka]
#

[chara_kakusu]
	
;トリスタンいなくなる
[cera_tatie_show]
;[chara_move name="cera" left=-1]
[dancho_tatie_touroku][dancho_tatie_show]



[cera_tatie_otikomi]

#セレ	
「忙しくなるな・・・[name]、お前も気を引き締めて任務に当れよ。
休日は・・・祭りまでは返上となるだろうが・・・」[mil][l][k][cm][ka]
#

#&f.name	
「・・・は、はい・・・わかりました！」[mil][l][k][cm][ka]
#


[dancho_tatie_metoji]
#団長	
「・・・ライオネスの停職ももう解いてやったほうがいいな。
騎士団内でも一級の使い手だ。奴の力がないのはきつい」[mil][l][k][cm][ka]
#


[cera_tatie_metoji]

#セレ	
「そうですね。私から本人に伝えます」[mil][l][k][cm][ka]
#
#&f.name	
（ライオネス・・・停職解かれるんだ・・・よかったな・・・でも）[mil][l][k][cm][ka]
#
#&f.name
（こんなことになるなんて・・・）[mil][l][k][cm][ka]
#
#&f.name	
（・・・ともかく・・・頑張らなきゃ・・・だよね・・・）[mil][l][k][cm][ka]
#
	
#&f.name	
（私は、正騎士なんだから・・・）[mil][l][k][cm][ka]
#

[chara_kakusu]

;暗転
[anten]

[bg storage="irainheya_yoru_tasogare.jpg"]

#&f.name	
「はあ・・・ようやく会議終わった・・・疲れた・・・」[mil][l][k][cm][ka]
#
#&f.name	
「そろそろ夕食の時間かな・・・あ、そう言えば・・・」[mil][l][k][cm][ka]
#
#&f.name	
「セレさんに、気になる人がいるならお祭りに誘ってみたらって言われたっけ・・・」[mil][l][k][cm][ka]
#
#&f.name	
「誘うなら・・・今日くらいしかないよね・・・当日はお休みもらえたけど、
その代わり明日からはいっぱいシフト入っちゃったし・・・」[mil][l][k][cm][ka]
#
#&f.name	
（うーん・・・どうしよう・・・）[mil][l][k][cm][ka]
#

[eval exp="f.event_main_8_days=7"]


;--------------------------------------------------------------------------------------------------------------


[jump storage="scenario_2/sentaku.ks" target=*choice993]

	


*main_event_7_lion
[jump storage="scenario_2/episode/epi_osasoi_lioness.ks"]	
	
	
*main_event_7_rans
[eval exp="f.event_main_8_days=7"]
[jump storage="scenario_2/episode/epi_osasoi_rans.ks"]


*main_event_7_kra	
[jump storage="scenario_2/episode/epi_osasoi_kra.ks"]


*main_event_8

[plugin name="live2d"]
[call storage="scenario_2/live2d_glif_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[eval exp="f.friend=0"]
[eval exp="f.event_main_8=1"]
[eval exp="f.sub_event=1"]
[eval exp="f.event_8_sale=1"]
[eval exp="f.event_8_lion_friend=1"]
[eval exp="f.event_8_otukai=0"]
[eval exp="f.event_8_ishuu=0"]
[eval exp="f.event_8_letter=1"]
[eval exp="f.event_8_oogui=1"]
[eval exp="f.event_8_help=1"]
[eval exp="f.event_8_oukyu=1"]
[eval exp="f.event_8_hanakazari=1"]
[eval exp="f.event_8_sharomu_tegami=1"]
[eval exp="f.event_8_hanacha=1"]
[eval exp="f.event_8_unpan=1"]
[eval exp="f.event_8_kra_esa=1"]
[eval exp="f.event_8_curnival_hana=1"]
[eval exp="f.event_8_gotisou=1"]
[eval exp="f.event_8_nusutto=1"]

[eval exp="tf.rans_kioku_para=0"]
[eval exp="tf.lion_kioku_para=0"]
[eval exp="tf.kra_kioku_para=0"]


;バトルイベントフラグ初期化
[eval exp="f.battle_event_8_sakaba=0"]
[eval exp="f.battle_event_8_hunsui=0"]
[eval exp="f.battle_event_8_iriguti=0"]
[eval exp="f.battle_event_8_gaia=0"]
[eval exp="f.battle_event_8_uradoori=0"]
[eval exp="f.battle_event_8_oukyu=0"]
[eval exp="f.battle_event_sakaba=0"]
[eval exp="f.battle_event_hunsui=0"]
[eval exp="f.battle_event_iriguti=0"]
[eval exp="f.battle_event_uradoori=0"]
[eval exp="f.battle_event_oukyu=0"]
[eval exp="f.battle_event_gaia=0"]
[eval exp="f.battle_flag_sumi=1"]
[eval exp="f.battle_flag_sumi_2=1"]
[eval exp="f.battle_flag_sumi_3=1"]





[refresh_hanyou]
[call storage="scenario_2/map_event/kisidanhonbu_event_macro.ks"]
[bg storage="irainheya_tasogare.jpg"]
[message_settei_ad]
[button_clear]
#&f.name	
（さあ、今日から仕事！頑張ろう！）[p]
#
[event_8_lion_friend]
[status_hyouji]

	
