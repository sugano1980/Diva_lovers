
[macro name="hunsui_event"]
[skip_button]
[message_settei_ad]


[if exp="f.event_8_hanacha==1&&f.friend==0&&f.event_main_8_days<5"]
[call storage="scenario_2/live2d_rans_macro.ks"]
;花茶
#&f.name
（わあ・・・もうお祭りの屋台が出てる。店の人も忙しそうだね）[p]
#
#&f.name
「あれ・・・あれは・・・」[p]
#

[rans_tatie_touroku]
[rans_tatie_show]
#&f.name
（ランスロットだ）[p]
#
#ランスロット
「大通りの警備体制、配置の確認はこれで終了か？」[p]
#
#王宮騎士
「はい、現在のところどこも異常なしです」[p]
#
[rans_tatie_mehuse]
#ランスロット
「先の報告とまとめて父上に知らせるか・・・」[p]
#

#&f.name
（やっぱり忙しそうだね・・・ん？あ！）[p]
#

[chara_kakusu]

#&f.name
「おじさん！今年の花茶はうまくできた？」[p]
#
#おじさん
「やあ、いらっしゃい[name]ちゃん」[p]
#
#&f.name
「わあー！いい匂い・・・お茶にお花の香りがちゃんとついてるね」[p]
#
#おじさん
「花茶は春のカーニバルで出す特別なお茶だからね。今回も気合を入れたよ！」[p]
#
#おじさん
「よかったら、ちょっと試飲してみるかい？ああ、ランスロット様も」[p]
#
#&f.name
「へ？」[p]
#
[rans_tatie_touroku]
[chara_show name="rans" storage="rans_tatie/rans_normal_warai.gif" top=20 left=0]

#ランスロット
「やあ、[name]、いい香りだな」[p]
#
#&f.name
「あ、ランスロット！」[p]
#
#おじさん
「さあ、淹れたてをどうぞ」[p]
#

#ランスロット
「ああ、すまない」[p]
#
#&f.name
「ありがとう！」[p]
#
[playse storage="ochasosogu_tairakomori.ogg"]
#&f.name
「すっごい美味しいー！飲んだ後も口の中に香りが残るね」[p]
#
#&f.name
（毎年買いたいなあって思ってるんだけど、特別なお茶だからちょっとお高めなんだよね・・・）[p]
#
#&f.name
（でもカーニバル前にくれば試飲させてもらえるからいいけど・・・）[p]
#

[rans_tatie_mehuse_warai]
#ランスロット
	「あぁ、これはいいな。・・・そうだ」[p]
#
#&f.name
「ランスロット？」[p]
#
[rans_tatie_normal_warai]
#ランスロット
「店主、この茶葉を少し分けてもらえないか」[p]
#
#おじさん
「ええ、もちろんいいですよ！販売前ですが特別サービスです」[p]
#
#ランスロット
「その包装紙に入れてもらうことはできるか？」[p]
#
#&f.name
（包装紙・・・？あ・・・カーニバル用なのかな？すごくかわいい・・・）[p]
#
#おじさん
「ええ、これですね。毎度ありがとうございます」[p]
#
#ランスロット
	「すまないな。ありがとう」[p]
#
#おじさん
「どなたか想い人にでもプレゼントですか？」[p]
#

[rans_tatie_mehuse_warai]
#&f.name
（ランスロット・・・？？）[p]
#

[chara_kakusu]

[live2d_rans_touroku]
[live2d_on][rans_para_kioku]
[live2d_show name="rans2" y=-3.0 scale=6.5]


[rans_head_under_y]
[rans_exp_mehuse_warai]
#&f.name
	「ランスロット、その花茶、誰かにあげるの？」[p]
#


[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「ああ、[name]、お前にこれを」[p]
#
#&f.name
「へ？・・・えと、い、いいの！？」[p]
#

[rans_head_above_y]
[rans_head_left_z]
[rans_eyes_left]
[rans_exp_komari_warai]

#ランスロット
	「いいもなにも、そのために買ったんだが」[p]
#

[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal]
#&f.name
「で、でも、結構高かった、よね・・・？」[p]
#

[rans_head_under_y]
[rans_exp_bisyo]
[rans_head_normal]
#ランスロット
「そんなことは気にするな・・・。お前が喜んでくれるなら、それでいい」[p]
#


[rans_head_under_y]
[rans_head_left_x]
[rans_eyes_left_under]
[rans_exp_mehuse]
#ランスロット
「・・・前から気になっていた」[p]
#
#&f.name
「え・・・」[p]
#

[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal]
#ランスロット
「毎年、カーニバルでお前、花茶を試し飲みさせてもらっていたからな」[p]
#
#&f.name
「知ってたの！？」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「・・・ああ」[p]
#

[rans_eyes_right]
[rans_head_left_z]
[rans_body_left_z]

#ランスロット
「この時期は何かと忙しくて、買ってやることができなかったが、今年ようやくできた」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_body_normal]
	
#&f.name
「ランスロット・・・」[p]
#
#&f.name
「・・・えへへ、嬉しいな・・・。ありがとう！すごく、嬉しい！！」[p]
#
;#ランスロット微笑む
[rans_exp_bisyo]
#王宮騎士
「隊長！！」[p]
#
[rans_exp_normal]
[rans_head_left_x]
[rans_body_left_z]
[rans_eyes_left]
#ランスロット
「ああ、今行く」[p]
#

[rans_body_normal]
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_normal_warai]
#ランスロット
「それじゃあな」[p]
#
[live2d_off][live2d_delete_all]

[eval exp="f.event_8_hanacha=0"]


[elsif exp="f.event_8_hanakazari==1"]

#&f.name
「あっ・・・花飾り作ってる。確か、カーニバル当日に軒先に飾るんだよね。きれいだな」[p]
#

#&f.name
「うーんでも量が多いし、大変そうにも見えるけど・・・」[p]
#

;手伝う　手伝わない
[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【花飾りを手伝う？】

[glink target=*hanakazari_1 text="（手伝う）" size=17 width=600 x=65 y=200]
[glink target=*hanakazari_2 text="（手伝わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]


[s]

*hanakazari_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[if exp="f.friend==2"]

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「本気か？俺はやらねえぞ」[p]
#
#&f.name
「できないの？」[p]
#

[lioness_tatie_chottoikari]
#ライオネス
「やらねーんだよ！」[p]
#

[lioness_tatie_kimazui]
#&f.name
（もう・・・）[p]
#
[chara_kakusu]
[endif]


#&f.name
「うんしょ、ここはこんな風でいいですか？」[p]
#


#おばさん
「ありがとう[name]ちゃん、今年はちょうど手伝いの子が足りなくてねえ。助かったよ」[p]
#

[town_trust_up]
街の人の信頼度がアップ！[p]

[jump target=*hanakazari_end]






*hanakazari_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


*hanakazari_end
[eval exp="f.event_8_hanakazari=0"]

[elsif exp="f.event_8_unpan==1"]
	
#&f.name
「ん？」[p]
#

#男
「いやあ、こりゃあすごい量だ。今日中に終わるかねえ」[p]
#

#男２
「終わらせなきゃだろお、でないとカーニバルに間に合わねえ」[p]
#

#&f.name
「なんだろ・・・すごい荷物の量、あれ全部おろすの？」[p]
#

;大変そうだなあ・・・
;手伝う
;手伝わない

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【大変そうだけど・・・】

[glink target=*unpan_1 text="（手伝う）" size=17 width=600 x=65 y=200]
[glink target=*unpan_2 text="（手伝わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]


[s]

*unpan_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name
「あの、よかったら私、手伝いましょうか？」[p]
#

#男
「えっ、嬢ちゃんがかい？いやあ、力仕事だからねえ、女の子には・・・」[p]
#

#&f.name
（う・・・）[p]
#

#&f.name
「私、結構力あるんですよ？こう見えても」[p]
#


#男
「そうは言っても・・・」[p]
#

#&f.name
（信用してもらえないなあ・・・）[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
	
#ライオネス
「せっかく手伝うって言ってんだから、手伝わせてやればいいじゃねえか」[p]
#

#&f.name
「え？」[p]
#

#男
「ライオネス 様！」[p]
#
[lioness_tatie_udekumi]

[if exp="f.friend==2"]
#&f.name
「ライオネス」[p]
#

[else]
#&f.name
「ライオネス ！？」[p]
#
[endif]

#ライオネス
「荷物を馬車から下ろすんだな？俺もやってやる」[p]
#

#男
「いやあ、ありがとうございます！ライオネス 様に手伝ってもらえば百人力ですよ！」[p]
#

#&f.name
（う・・・この差・・・）[p]
#

[lioness_tatie_kosinite]
#ライオネス
「仕方ねえだろ。だけどいいんじゃねーの、人数は多い方が」[p]
#

#男
「嬢ちゃんもありがとうよ。いやあ、すまなかったね。嬢ちゃんも騎士団の人なのかい」[p]
#

#&f.name
「は、はい、一応・・・」[p]
#

[lioness_tatie_normal]
#ライオネス
「一応じゃねえだろ、もっとシャキッとしろよ」[p]
#

#&f.name
「は、はい！！」[p]
#

[lioness_tatie_warai]

#&f.name
（ライオネス って・・・街の人からも信頼されてるのかな）[p]
#

[town_trust_up]
街の人の信頼度がアップ！[p]
	
[chara_kakusu]

[jump target=*unpan_end]


*unpan_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

*unpan_end
[eval exp="f.event_8_unpan=0"]
	
	

[elsif exp="f.event_8_gotisou==1&&f.event_main_8_days<2"]


#&f.name
「あれ？すごくいい匂い・・・」[p]
#

#&f.name
「あ！カーニバルのご馳走かな？うわあ・・・」[p]
#

#おばさん
「おや、[name]ちゃんじゃないかい？今日はお休みかい？

[if exp="f.friend==2"]
	ああ、ライオネス 様も
[endif]
	」[p]
#

	
#&f.name
「おばさん！すごいご馳走だね」[p]
#

#おばさん
「そうさね、こういうのは秋のカーニバルが本番だけど、春だって取れる果物や野菜は多いしね」[p]
#

#&f.name
「そっかあ」[p]
#

#おばさん
「せっかくのお祭りなんだから、みんなにはお腹いっぱいになってもらいたいしねえ」[p]
#


[if exp="f.friend==2"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「これ、食っていいのか？」[p]
#

#&f.name
「だめだよ！！カーニバルまで食べちゃ！」[p]
#
#おばさん
「ああ、少しおすそ分けしますよ、ライオネス 様こちらへどうぞ」[p]
#
[chara_kakusu]
#&f.name
（もう・・・）[p]
#
[endif]


	
#おばさん
「さあみんな！当日朝までに間に合わせるよ！！」[p]
#

#&f.name
「忙しそうだなあ・・・」[p]
#

;私も手伝おうかな？
;手伝う
;手伝わない
;手伝わない

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【私も手伝おうかな？】

[glink target=*gotisou_1 text="（手伝う）" size=17 width=600 x=65 y=200]
[glink target=*gotisou_2 text="（手伝わない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[elsif exp="f.live2d_on!=1"]
[hidemenubutton][button_menu]
[endif]


[s]

*gotisou_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
	
#&f.name
「おばさん！私にも何か手伝わせて！」[p]
#
#おばさん
「[name]ちゃんが手伝ってくれるなら心強いねえ！！」[p]
#

#おばさん
「それならこのリンゴを剥いてくれるかい？それからこっちのパイ生地を・・・」[p]
#

#&f.name
「はい！！」[p]
#
[if exp="f.friend==2"]
	
[lioness_tatie_touroku]
[lioness_tatie_show]
[lioness_tatie_warai]
#ライオネス
「・・・ああ、食った食った」[p]
#

#&f.name
（ライオネス 満足そうだね・・・全くもう・・・）[p]
#
[chara_kakusu]
[endif]


	
#おばさん
「ありがとう、[name]ちゃんのおかげで本当に助かったよ」[p]
#

#おばさん
「ああ、これ、ほんのお礼だよ。取っておいて」[p]
#

キャラメル５個、ホークアイ、スキルオンリー、ガードゼロを手に入れた！[p]
レシピ「パイ」を手に入れた！[p]
	
	
街の人の信頼度がアップ！！[p]
[town_trust_up]
[eval exp="f.battle_item_stock[1]=f.battle_item_stock[1]+5"]
[eval exp="f.battle_item_stock[4]=f.battle_item_stock[4]+1"]
[eval exp="f.battle_item_stock[5]=f.battle_item_stock[5]+1"]
[eval exp="f.battle_item_stock[6]=f.battle_item_stock[6]+1"]
[iscript]
this.kag.stat.f["cake"]=[0,1,0,0,0,0]
[endscript]

[jump target=*gotisou_end]



*gotisou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


#&f.name
「まあいいか。多分きっと大丈夫だよね」[p]
#

*gotisou_end
[eval exp="f.event_8_gotisou=0"]

;エルムナード編
[elsif exp="f.event_sub_14_sumi[2]!=1&&f.friend==0&&f.event_main_14_days>0"]

[jump storage="scenario_2/map_event/erumu_hunsui_event.ks"]


*gareki_end
[if exp="f.live2d_on==1"]
[live2d_delete_all][live2d_off]
[endif]


[elsif exp="f.event_sub_14_sumi[8]!=1&&f.event_main_14_days>0"]

[jump storage="scenario_2/map_event/erumu_hunsui_event.ks" target=*yomikikase_event]

*yomikikase_end
;----------------------------------------------

[else]
[message_settei_ad]
[item_get]





[endif]
	
	
[endmacro]


[return]