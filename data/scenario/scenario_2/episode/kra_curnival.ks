;#クライスト

[loader_hyouji]
[call storage="scenario_2/live2d_aho_macro.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[loader_delete]
[message_settei_ad]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[live2d_kra_show_sekkin]
[eval exp="f.friend=3"]
[eval exp="f.event_main_9_kra=1"]
[snowfall]
[kisidaniriguti_hiru]
[playbgm storage="maturi_musmus.ogg"]
[kra_tatie_touroku]
[kra_tatie_show]
#クライスト	
「やあ、おはよ」[p]
[kra_tatie_bisyou_youen]
#
#&f.name	
「お・・・おはようございます・・・というか・・・」[p]
#
[kra_tatie_mihiraki]
#クライスト	
「ん？何？」[p]
#
#&f.name	
「どうやって、出てきたの？」[p]
#
[kra_tatie_smile]
#クライスト	
「内緒。うるさいのが来ないうちに早く行こう？」[p]
#
#&f.name	
「は、はあ・・・」[p]
#
#&f.name	
（いいのかな・・・って気持ちもあるけど、でも・・・せっかく頑張って出てきてくれたんだもんね・・・）[p]
#


[chara_kakusu]
[kra_fashion_check]
[kra_para_word]
[kra_para_current_kioku]
[live2d_delete_all][live2d_off][clearstack]
[creru_iriguti]
[agata_tatie_show]
[agata_tatie_yorokobi]
#アガタ	
「あ！！[name]！！」[p]
#
#&f.name	
「アガタ！！」[p]
#
[agata_tatie_smile]
#アガタ	
「今日仕事休みなの？よかったら一緒にまわ・・・って・・・ってあ！」[p]
#

[config_false]
[chara_move name="agata" left=0]
[chara_on][chara_show name="kra" left=300 ][chara_on]
[agata_tatie_usirote]	
#アガタ	
「あれー？一緒にいる人・・・誰？もしかしてー・・・彼氏とか？」[p]
#
#&f.name	
「えっ・・・そ、そういうわけじゃ・・・」[p]
#
[kra_tatie_mihiraki]
#クライスト	
「なんだ、そうなの？残念だな」[p]
#
[agata_tatie_yorokobi]
#アガタ	
「えーでも、一緒にお祭りにきてるってことはぁー、少なくともちょっとそんな感じよね？」[p]
#
#&f.name	
（ちょっとそんな感じってどういう意味なんだろ・・・）[p]
#
[kra_tatie_smile]
#クライスト	
「うん。ちょっとそんな感じかな」[p]
#
#&f.name	
（そして勝手に相槌打ってるし・・・）[p]
#
[agata_tatie_normal]
#アガタ	
「あの、ちなみにご職業は？」[p]
#
#&f.name	
（そういうことまで聞くの？？？）[p]
#
[kra_tatie_yokome]
#クライスト	
「俺はフリーの傭兵だよ」[p]
#
[agata_tatie_mihiraki]
#アガタ	
「そ、そうなんですか・・・」[p]
#
[kra_tatie_normal]
[agata_tatie_metoji]
#アガタ	
「・・・・・。・・・ちょっとこっち来て[name]」[p]
#
#&f.name	
「な、何？」[p]
#
[config_true]
[chara_off][chara_hide name="kra"]

[agata_tatie_mayuhisome]
#アガタ	
「
（ひそひそ）
見た目はまあまあいい男だとは思うんだけどさ、ちょっと収入が心配よ・・・？」[p]
#

#アガタ	

「（ひそひそ）傭兵ってさ、こう言っちゃなんなんだけど・・・いつどうなるかわかんない仕事じゃない？」[p]
#
#&f.name	
（な、なんの話？？？）[p]
#
[agata_tatie_yokome]
#アガタ	
「[name]が、それでもいいっていうなら・・・まあ・・・だけどさ・・・」[p]
#
#&f.name	
「えーと・・・アガタ？？？」[p]
#
[config_false]
[chara_move name="agata" left=0]
[chara_on][chara_show name="kra" left=300][chara_on]
#クライスト	
「二人で何話してるの？
[kra_tatie_smile]
俺も混ぜて欲しいな」[p]
#
[agata_tatie_odoroki]
#アガタ	
「あっごめんなさい！ついー・・・、
[agata_tatie_yorokobi]
あ、そうだ[name]」[p]
#
#アガタ	
「さっきこれもらったんだけど、いる？」[p]
#
[kra_tatie_normal]
#&f.name	
「ん？これって・・・スパイス？？」[p]
#

ミラクルスパイスを手に入れた！[p]
[eval exp="f.cook_item_stock[29]=1"]


[agata_tatie_usirote]
#アガタ	
「そうそう、私全然料理できないんだけど、[name]は料理上手だし、よく作ってたじゃない？」[p]
#
[agata_tatie_smile]
#アガタ	
「だから使うかなって思って！」[p]
#
[agata_tatie_yorokobi]
#アガタ	
「あ、それにさあ、料理は恋にも効果的だよー？」[p]
#
[kra_tatie_smile]
#クライスト	
「[name]ちゃんって料理得意なの？俺にも今度作ってよ」[p]
#
#&f.name	
「え、ええと・・・き、機会があったら・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「うん、楽しみだな」[p]
#
[agata_tatie_smile]
#アガタ	
「それじゃ、あんまり二人の時間邪魔しても良くないもんね。あとはごゆっくりー」[p]
#
#&f.name	
「え・・・ええ！！？？」[p]
#
[kra_tatie_smile]
#クライスト	
「ありがとう。じゃ、行こうか」[p]
#
[chara_kakusu]
料理ができるようになりました。料理はイベントなどの発生状況によりできないこともあります[p]
	
[config_true]
;屋台
[creru_hunsui_3]
[kra_tatie_show]
[kra_tatie_yokome]
#クライスト	
「さて、どこを回ろうか」[p]
#
#&f.name	

「えーっと、どこを回ろうかな？」[p]
#
[chara_kakusu]
*cur_choice

[jump storage="scenario_2/sentaku.ks" target=*choice998]

*kettei	
;[eval exp="f.muryou=1"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks"]

;屋台
;食べ物のお店
;くじ引き
;金魚すくい
;装備のお店

*play_end
[eval exp="f.yatai=0"]
[eval exp="f.kujibiki=0"]
[eval exp="f.kingyo=0"]
[eval exp="f.monster=0"]
[eval exp="f.soubi=0"]

[if exp="f.yatai_kaisuu>6"]
[jump target=*paredo]
[elsif exp="f.yatai_kaisuu>4"]
*akitayo
[kra_tatie_show]
#クライスト	
「そろそろ、行く？」[p]
#


[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]
#
【屋台やゲームはもういいかな？】

[glink target=*mou_1 text="（うん）" size=17 width=600 x=65 y=200]
[glink target=*mou_2 text="（まだ挑戦する！）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]
[s]

*mou_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
#クライスト
「それじゃ行こうか」[p]
#
[chara_kakusu]
[jump target=*paredo]


*mou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[kra_tatie_smile]
#クライスト	

「頑張るなあ。わかった。飽きるまで付き合うよ」[p]
#
#&f.name	

（よーし！）[p]
#

[chara_kakusu]


[jump target=*cur_choice]

[else]
[jump target=*cur_choice]

[endif]
	
*paredo
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[call storage="scenario_2/live2d_glif_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[fadeoutbgm time=1000]
[fadeinbgm storage="yoin_ontama.ogg" time=3000]

[kra_tatie_touroku]
[kra_tatie_show]
#クライスト	
「あれ？なんだか音楽が近づいてくるね。見にいってみようか」[p]
#
#&f.name	
「う、うん！」[p]
#
[chara_kakusu]
[anten]
[creru_iriguti]
[playbgm storage="yoin_ontama.ogg"]

[kra_tatie_show]
#クライスト	
「ヘェーパレードってこんな感じなんだ」[p]
#
#&f.name	
「クライストさんは、見たことないの？」[p]
#
[kra_tatie_yokome]
#クライスト	
「うん。王都には何回かきたことあるけど、カーニバルは初めてだね」[p]
#
#&f.name	

（そうなんだ・・・何回かきたことはあるのか・・・）[p]
#

[werumu_tatie_rei_touroku]
[werumu_tatie_rei_show]

[kra_tatie_normal]
#クライスト	

「・・・あれって王宮騎士団長だっけ？」[p]
#

#&f.name	

「あ、う、うん・・・ウェルム団長っていって・・・」[p]
#
[kra_tatie_yokome]
#クライスト	

「・・・双剣だね」[p]
#

#&f.name	

「あっ・・・うん、あの、私の剣の先生の・・・ランスロットのお父さんだから・・・」[p]
#
[kra_tatie_normal]
#クライスト	

「・・・なるほど。双剣使いって、クレールにしかいないとか？」[p]
#

[chara_off][chara_hide name="werumu_rei"]
#&f.name	
「あ、うん・・・そうみたい。特殊な剣術で難しいからあんまり普及しないって・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	

「それなのに、君は扱えるんだろ？つくづく、すごいね」[p]
#

#&f.name	

「そ、そうかな」[p]
#

[kra_tatie_smile]
#クライスト	
「うん」[p]
#
[chara_kakusu]

[playse storage="paredo_kansei_1.ogg"]	
#王都民
「国王陛下！！バンザーイ！！」[p]
#
#王都民	
「陛下ー！！王妃様ー！！」[p]
#
#王都民	
「陛下も随分とお年を召したよなあ・・・」[p]
#
#王都民	
「次の王位継承って誰なんだ？」[p]
#

#王都民	

「陛下にはお子がいらっしゃらないからなあ・・・」[p]
#
[playse storage="paredo_kansei_2.ogg"]
#王都民	

「宰相を務めているラルズ様が候補って本当か？陛下の弟君だからな・・・」[p]
#

#王都民	

「ラルズ様のさ、一人娘のユリア王女って、めっちゃ美人らしいぜ・・・」[p]
#

#王都民	

「おいおい、美人ならあそこにいる王宮騎士団副団長のアニス様だろう・・・」[p]
#
[playse storage="paredo_kansei_3.ogg"]
	
;アニス表示
[anis_tatie_rei_touroku]
[anis_tatie_rei_show]

[chara_kakusu]

[chara_on][chara_show name="kra" storage=&f.kra_mihiraki top=50][chara_on]

#クライスト	

「あ・・・結構好み」[p]
#

#&f.name	

（えっ・・・ええ！？）[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「・・・びっくりした？冗談だよ」[p]
#

#&f.name	
「・・・」[p]
#

#&f.name	

（・・・この人・・・）[p]
#
[chara_kakusu]

[glif_tatie_rei_touroku]
[glif_tatie_rei_show]

#&f.name	
（あれっ、あの人あのときの・・・王宮騎士・・・名前・・・グリフって呼ばれてたっけ・・・）[p]
#

[chara_kakusu]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]

[rans_tatie_rei_mihiraki]
#&f.name	

（あ、ランスロットだ。こっちに気づいた？）[p]
#

[rans_tatie_rei_normal_warai]
#&f.name	

（えっ・・・ホントに気づいたのかな？）[p]
#

#&f.name	

（こんなに人がいるのに・・・よくわかるなあ）[p]
#

[chara_kakusu]
[kra_tatie_show]
#クライスト	

「・・・・・・あれが、お師匠様？？」[p]
#

#&f.name	
「う、うん・・・」[p]
#

[kra_tatie_akireru]
#クライスト	

「へえ・・・」[p]
#

#&f.name	
（・・・クライストさん・・・？？？）[p]
#
[fadeoutbgm time=1000]
[fadeoutse time=1000]
[chara_kakusu]
[anten]

[creru_hunsui_yuu]
[kra_tatie_show]
#クライスト	
「さて・・・これから何があるんだっけ？」[p]
#
#&f.name	

「あの・・・ガイアの森で、精霊のお告げがあるんだよ」[p]
#
[kra_tatie_yokome]
#クライスト	

「お告げ、ねえ・・・」[p]
#
#&f.name	

「クレールの未来を、教えてくれるんだって」[p]
#

[kra_tatie_akireru]
[kra_tatie_yareyare]
#クライスト	

「未来か・・・そんなもの、知らない方が幸せなこともあるのにね」[p]
#
#&f.name	

「えっ・・・」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「ごめん、こっちの話だよ。もう行こうか？」[p]
#
#&f.name	
「えーと・・・」[p]
#
*dousuru
[chara_kakusu]
[jump storage="scenario_2/sentaku.ks" target=*choice999]

*hana_watasu
[refresh_hanyou]
[live2d_kra_touroku]

#&f.name
「その前に・・・クライストさん」[p]
#
[live2d_kra_show_sekkin]
[aho_face_mihiraki]

#クライスト
「え？何？」[p]
#

#&f.name
「こ、これ・・・」[p]
#

#クライスト
「ん？？花？
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
きれいだね」[p]
#


[aho_head_normal]
[aho_face_normal]
#&f.name
（あっもしかしてカーニバルの花の意味、知らないかも）[p]
#

#&f.name
「えーと・・・カーニバルには、意中の人に花を贈るって習わしがあって」[p]
#

[aho_head_left_z]
[aho_face_mihiraki]
#クライスト
「意中の人・・・」[p]
#

#&f.name
（ちょ、直接言うと恥ずかしい・・・）[p]
#
[aho_face_mehuse]
[aho_head_under_y]
#&f.name
「あっでもほら友達同士とかでも贈ったりしたりするんだけど・・・って」[p]
#
[aho_head_normal]
[aho_face_normal_majime]
#クライスト
「・・・俺、[name]ちゃんの意中の人？」[p]
#

#&f.name
（・・・余計恥ずかしい・・・）[p]
#

[aho_head_left_x]
[aho_head_above_y]
[aho_eyes_left_above]
#クライスト
「ふーん、そうなんだ。でも・・・本当にそれでいいの？」[p]
#
[aho_head_normal]
[aho_eyes_normal]
#&f.name
「え？」[p]
#
[aho_head_under_y]
[aho_eyes_above]
#クライスト
「こんなどこの馬の骨ともわからない男に、渡しちゃって」[p]
#

#&f.name
「そっ・・・それは・・・」[p]
#
[aho_face_metoji]
#クライスト
「・・・まあいいか。
[aho_head_left_x]
[aho_head_above_y]
[aho_eyes_left_above]
[aho_head_normal]
[aho_eyes_normal]
[aho_face_normal]
気持ちは受け取るよ。ありがとう」[p]
#
[if exp="f.curnival_flower_2==1"]
[koukando3_kra]
[else]
[koukando1_kra]
[endif]
[eval exp="f.curnival_flower_1=0"]
[eval exp="f.curnival_flower_2=0"]
[eval exp="f.curnival_flower_3=0"]
[eval exp="f.gave_flower_kra=1"]
[live2d_delete_all][live2d_off][clearstack]

[refresh_hanyou]
[jump target=*dousuru]



*gaia
[eval exp="f.gaia_hotaru=1"]
[bg storage="crerumatinaka2_yoru_tasogare.jpg"]
[playbgm storage="gaia_musmus.ogg"]
[loadjs storage="snowfall/snowfall.jquery.js"]
[iscript]
$('#tyrano_base').snowfall('clear');
[endscript]
[iscript]
$('#tyrano_base').snowfall({
    image :  "./data/others/snowfall/images/hotaru.png",
    flakeCount : 17,
    minSize: 20, 
    maxSize: 32,
    maxspeed:3,
    minspeed:1
    });
[endscript]



#&f.name	
（そういえば・・・この光ってるのって・・・蛍？と思ったけど・・・違うんだよね・・・）[p]
#

#&f.name	
「毎年・・・ふわふわってお告げの前には飛んでるけど、これって・・・」[p]
#

[kra_tatie_show]
[kra_tatie_yokome]
#クライスト	

「・・・・・・」[p]
#
#&f.name	

「クライストさん？」[p]
#

[kra_tatie_normal]
#クライスト	

「ごめん、[name]ちゃん、俺、ちょっと用事を思い出した」[p]
#
#&f.name	

「えっ？」[p]
#

#クライスト	

「申し訳ないけど、先に行っててくれる？」[p]
#
#&f.name	

「い、いいけど・・・」[p]
#
[kra_tatie_komari]
#クライスト	

「・・・ごめんね。
[kra_tatie_normal]
それじゃ」[p]
#

[chara_kakusu]
#&f.name	

（クライストさん・・・？）[p]
#
;ガイアの森
[bg storage="gaiamori_yoru_cur_tasogare.jpg"]



#&f.name	
（クライストさん・・・遅いなあ・・・どうしたんだろう・・・あ）[p]
#
#&f.name	
「わあ・・・すごい・・・光が・・・森中に・・・」[p]
#
[fadeoutbgm time=1000]	
[miko_tatie_touroku]
[miko_tatie_show]
#巫女	
「・・・母なる大地に宿る精霊の皆よ・・・」[p]

[miko_tatie_inori]
#巫女	
「かの国クレールの、輝かし未来を・・・」[p]
#
[playbgm storage="kisimi_musmus.ogg"]
#巫女	
「・・・・・・」[p]
#
[snowfall_0]
[playbgm storage="kisimi_musmus.ogg"]
;暗転
;#ルシアの、赤い瞳
[miko_tatie_kanasii]
#巫女	
「っ・・・あっ・・・ああ・・・」[p]
#
	
#&f.name	

「えっ・・・」[p]
#
[chara_kakusu]
[config_true]
	
;王都の門
[fadeoutbgm time=1000]
[bg storage="creru_gate_yoru_tasogare.jpg"]

#騎士	
「ふわああ・・・・モンスターが来るかもだからなんて言われてたけど、平和そのものじゃねえか・・・」[p]
#
;SE　モンスターの鳴き声も
[playse storage="igyou_nakigoe_onjin.ogg"]

#騎士	

「ん？」[p]
#
[playse storage="igyou_nakigoe_onjin7.ogg"]
#騎士	
「なっ・・・なっ・・・わあああああああ！！！！！」[p]
#
[playse storage="jinari_tairakomori.ogg"]
[bg storage="gaiamori_yoru_cur_tasogare.jpg" time=50]

[playbgm storage="soudou.ogg" loop=true]
#王都民	

「うっうわあああああ！！モンスターだ！！モンスターが出たあ！！！！！」[p]
#
[bg storage="gaiamori_yoru_cur_soudou_tasogare.jpg" time=50]
#&f.name	

（モンスター！！！！！）[p]
#
#&f.name	

（警備は固めてたはずなのに・・・間に合わなかったの・・・！？）[p]
#
#&f.name	

「とにかく、行かないと！！！！！」[p]
#

[eval exp="f.event_main_9_kra=0"]
[eval exp="f.event_main_10_kra=1"]
[eval exp="f.event_main_10=1"]

[soubi_henkou]
*gate_sentou

[bg storage="crerumatinaka3_yoru_cur_tasogare.jpg"]
[message_settei_ad]
[playse storage="nigemadou.ogg"]	
#王都民	

「タッ・・・助けてー！！助けてくれ・・・」[p]
#
#王都民	

「うっ・・・うあああ・・・」[p]
#
#&f.name	

「こ・・・これ・・・ひどい・・・警備はどうなって・・・」[p]
#
#騎士	
「[name]！！」[p]
#
#&f.name	
「どうして・・・これ・・・」[p]
#
#騎士	
「それがわかんねえ・・・本当に突然、一気に押し寄せてきて、攻撃する暇なんか・・・」[p]
#
#&f.name	

「こんなにもう、モンスターが街に・・・！」[p]
#
#騎士	
「俺ら街中のモンスターにかかりっきりで、門の方がどうなってるか・・・、お前、行けるか！？」[p]
#
#&f.name	

「わかりました！向かいます！」[p]
#
#騎士	
「頼んだ！」[p]
#
;王都の門
[bg storage="creru_gate_yoru_tasogare.jpg"]
[fadeoutse time=1000]
[stopbgm]
[playbgm storage="shuuen_musmus.ogg"]

#騎士	
「うっ・・・うう・・・」[p]
#

#騎士	
「いてえ・・・痛えよ・・・」[p]
#

#&f.name	
「こっ・・・これ・・・ね、ねえ、しっかりして！！」[p]
#
#騎士	
「くそっ・・・傭兵のやつら、ビビって逃げ出しやがって・・・っ・・・っっ」[p]
#
#騎士	
「こ・・・ここを抑え・・・な・・・けれ・・・ば・・・これ以上・・・ひがい・・・っうっ・・・」[p]
#
[playse storage="taoreru_onjin.ogg"]
#&f.name	
（息がない・・・そんな・・・）[p]
#
#&f.name	

「ここを抑えなくちゃ、また新しいモンスターが入ってくる・・・よね・・・」[p]
#
#&f.name	

「他のみんなは、街の人を助けるのに手一杯・・・」[p]
#
#&f.name	

「ここは・・・私がやるしかない・・・！！！」[p]
#
;モンスター鳴き声
[playse storage="obake_onjin.ogg"]
[image layer=2 page=fore storage="monster/obake.png" name="obake1" x=150 y=10]
[image layer=2 page=fore storage="monster/obake.png" name="obake2" x=350 y=150]
[image layer=2 page=fore storage="monster/obake.png" name="obake3" x=550 y=50]
[image layer=2 page=fore storage="monster/hagureinu.png" name="obake3" x=450 y=80]
[image layer=2 page=fore storage="monster/yokuarukinoko.png" name="obake4" x=250 y=30]
[image layer=2 page=fore storage="monster/obakehana.png" name="obake5" x=620 y=200]
[image layer=2 page=fore storage="monster/koumori.png" name="obake6" x=50 y=100]
[image layer=2 page=fore storage="monster/imomusikun.png" name="obake7" x=80 y=350]

[anim name="obake1" top="+=200"]
[anim name="obake2" top="+=100"]
[anim name="obake3" top="+=300"]
[anim name="obake3" top="-=100"]
[anim name="obake4" top="+=200"]
[anim name="obake5" top="+=100"]
[anim name="obake6" top="+=300"]
[anim name="obake7" top="-=100"]
[playbgm storage="sentou_siken.ogg"]

#&f.name	

（負けない！！）[p]
#



[free name="obake1" layer=2]
[free name="obake2" layer=2]
[free name="obake3" layer=2]
[free name="obake4" layer=2]
[free name="obake5" layer=2]
[free name="obake6" layer=2]
[free name="obake7" layer=2]
[free name="obake8" layer=2]

[anten]
[fadeoutbgm time=2000]
[wait time=1500]
[live2d_kra_touroku][call storage="scenario_2/live2d_aho_macro.ks"]
[p]
[bg storage="creru_gate_yoru_tasogare.jpg"]

#&f.name	
「・・・はあっ・・・うっ・・・」[p]
#
#&f.name	
（ダメージはないけど・・・流石に体・・・もつかな・・・）[p]
#
#&f.name	
（あれからどれくらい・・・たったんだろう・・・一人で・・・なんて無謀だったかな・・・）[p]
#
#&f.name	
「少しで、いいから・・・休みたいけど・・・」[p]
#
;モンスターの鳴き声
[playse storage="obake_onjin.ogg"]
[image layer=3 page=fore storage="monster/obake.png" name="obake1" x=150 y=10]
[image layer=3 page=fore storage="monster/obake.png" name="obake2" x=350 y=150]
[image layer=3 page=fore storage="monster/obake.png" name="obake3" x=550 y=50]

[anim name="obake1" top="+=200"]
[anim name="obake2" top="+=100"]
[anim name="obake3" top="+=300"]
[anim name="obake3" top="-=100"]
#&f.name	
「ああ・・・」[p]
#
;モンスターいきなり消滅くらアニメ
[bg storage="black.jpg" time=30]
[image layer=2 page=fore visible=true name="aka" storage="agureasu_jimen.png" x=-200 y=-200 time=500]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[wait time=1000]
[playse storage="battle_se/kra_skill_2.ogg"]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_0.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_1.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_2.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_3.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_4.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_5.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]


[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_6.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_7.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_8.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_9.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_10.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_11.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_12.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_13.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]

[image layer=3 page=fore visible=true name="anime_kra_skill" storage="battle_animation/kra/kra_skill_1_14.png" x=0 y=0 time=25]
[free layer=3 name="anime_kra_skill" ]



[free name="obake1" layer=3]
[free name="obake2" layer=3]
[free name="obake3" layer=3]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=1000]
[wait time=2000]
[playse storage="kieru_tairakomori.ogg"]

[free name="aka" layer=2]
[wait time=1000]



#&f.name	
（えっ・・・）[p]
#
[playbgm storage="kra_battle.ogg"]
[bg storage="creru_gate_yoru_tasogare.jpg"]
#クライスト	
「[name]ちゃん！！」[p]
#

#&f.name	
「あっ・・・」[p]
#

[live2d_fadeout time=1000]
[live2d_on][live2d_show name="aho" y=-2.8 scale=6.2]
[live2d_mod name="aho" idle="Arms_kamae"]
[live2d_motion name="aho" mtn="Arms_kamae"]
[live2d_fadein time=1000]

[aho_head_left_z]
[aho_body_left_z]
[aho_face_bisyou_youen]
[aho_head_right_z]
[aho_body_right_z]

#クライスト	
「ごめんね、遅くなって」[p]
#
[live2d_mod name="aho" idle="Idle"]
[aho_head_normal]
[aho_body_normal]
[aho_arms_normal]
[aho_arms_udekumi]
#&f.name	
「く、クライスト・・・さん・・・い、今の・・・」[p]
#

[aho_face_mehuse_warai]
#クライスト	
「便利でしょ？こう言う力。街中のモンスターももう、やっつけたよ」[p]
#
#&f.name	
（こう言う力・・・って・・・街中のモンスターって・・・全部・・・？）[p]
#
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]
#クライスト	
「あとはもう、心配いらないよ」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
#クライスト	
「・・・俺が、守ってあげる」[p]
#
#&f.name	
（・・・クライスト・・・さん・・・）[p]
#
[aho_head_normal]
[aho_face_normal]
[aho_eyes_right]
;異形の鳴き声
	[playse storage="igyou_nakigoe_onjin7.ogg"]
	[wait time=2500]
	[playse storage="igyou_nakigoe_onjin6.ogg"]
#騎士	
「門の方に、変な怪物が・・・・・・な・・・なんだ、ありゃああ・・・」[p]
#

[aho_mod_idle_kokyu_only]
[aho_eyes_normal]
[aho_face_metoji]
#&f.name	
「えっ・・・」[p]
#
;異形出現
[live2d_fadeout time=1000]
[config_true]
[playse storage="igyou_nakigoe_onjin6.ogg"]
[igyou_tatie_touroku]
[igyou_tatie_show]
#&f.name	
「何・・・あれ・・・」[p]
#
#&f.name	
（気持ち悪い・・・普通のモンスターとは、全然・・・）[p]
#

#&f.name	
「何・・・あれ・・・」[p]
#
[chara_kakusu]
[aho_face_mehuse]
[live2d_fadein time=1000]
[aho_head_under_y]
#クライスト	

「・・・くるよ」[p]
#
#&f.name	

「えっ・・・」[p]
#
[live2d_delete_all][live2d_off][clearstack]
[call storage="scenario_2/episode/scenario_macro.ks"][call storage="live2d_sub_macro.ks"]

[fadeoutbgm time=1000]
*igyou_battle
[eval exp="f.monster_l_size=1"]
[battle_start]
;異形戦闘
;戦闘終了
*igyou_battle_end
#&f.name	
「・・・今の・・・手強かった・・・な、なんなの・・・」[p]
#
[kra_tatie_touroku]
[chara_on][chara_show name="kra"  top=30]
#クライスト	
「気持ち悪いよねー・・・ああ言うの・・・。
[kra_tatie_metoji]
あれが・・・ヴァエルの力・・・」[p]
#
#&f.name	

「え？ヴァエル・・・って・・・」[p]
#
[kra_tatie_normal]	
[playbgm storage="kisimi_musmus.ogg"]
#ルシア	

「・・・我が僕を倒すとは・・・なかなか骨のある奴がいると見える・・・」[p]
#
[chara_kakusu]
[rusia_tatie_touroku]
#&f.name	
「だっ・・・誰・・・！？」[p]
#

[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_normal0.png" top=40 left=0]
#ルシア	
「・・・我が名はエルムナード女王ルシア・・・」[p]
#
#&f.name	

「えっ・・・」[p]
#
[rusia_tatie_kyouki]
#ルシア	
「クレール・・・憎きかの国の良き日に、滅びを与えてやろうと思うてな・・・盛大な血祭りが見られるところだったと言うのに・・・」[p]
#

[rusia_tatie_ikari]
#ルシア
「・・・邪魔をしおって・・・」[p]
#


[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="kra" storage=&f.kra_akireru  top=30][chara_on]
#クライスト	
「わざわざ今日を選んだの？悪趣味だなあ」[p]
#
#&f.name	

「滅びって・・・どうして・・・」[p]
#
[chara_off][chara_hide name="kra" time=30]
[chara_on][chara_show name="rusia" top=40 time=30][chara_on]
#ルシア	
「復讐のため・・・我が国がクレールによって受け続けた敗北と屈辱、そして・・・我の大切なものを奪った復讐よ」[p]
#
#&f.name	
「大切なもの・・・」[p]
#
[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="kra" storage=&f.kra_yokome top=30][chara_on]
#クライスト	
「復讐ねえ・・・」[p]
#
[chara_off][chara_hide name="kra" time=30] 
[chara_on][chara_show name="rusia" top=40 time=30][chara_on]
[rusia_tatie_niyari]
#ルシア	
「くくく・・・この魔剣ヴァエルは、斬り殺したものを異形のモンスターへと変化させる・・・」[p]
#

[chara_off][chara_hide name="rusia" time=50]
[rusia_tatie_kamae]
#ルシア
「クレールの民をも異形に変え、この国を絶望のどん底へと突き落としてやろうぞ」[p]
#

#&f.name	

（魔剣ヴァエル・・・魔剣って・・・）[p]
#
[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="kra"  top=30][chara_on]

[kra_tatie_yokome]
#クライスト	
「ヴァエルが司るのは・・・破壊と死滅・・・なるほどね。レム・・・君の言った通りだな」[p]
#
#&f.name	
「えっ・・・クライストさん？」[p]
#
[kra_tatie_metoji]
#クライスト	
「さしずめ異形は・・・囚われの哀れな死霊と言うところかな」[p]
#
#&f.name	

（どう言う・・・ことなの？なんの話をしているんだろう・・・）[p]
#
#&f.name	

（クライストさんは・・・何を知ってるの？）[p]
#
[kra_tatie_normal]
#&f.name	

「ね、ねえクライストさん・・・」[p]
#

[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_kra=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_kra=1"]


#クライスト	

「[name]ちゃん、ここから離れて」[p]
#

[kra_tatie_yokome]
#クライスト	

「早く」[p]
#
#&f.name	

「あの・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「ごめん、今ゆっくり説明してる暇はないんだ。
[kra_tatie_normal]
ちょっとこいつは・・・少しだけ本気を出さないと」[p]
#
[kra_tatie_komari]
#クライスト	
「・・・君を巻き添えにしたくない」[p]
#

#&f.name	

「巻き添えって・・・[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・ちょっと、『力』がね。セーブできるかわからないから」[p]
#

#&f.name	

（・・・クライストさん・・・力って・・・？）[p]
#

#&f.name	

（でも今は・・・。ともかく、言う通りにした方がいいのかも・・・）[p]
#
#&f.name	
「わ、わかりました・・・あの・・・き、気を付けてね」[p]
#
[kra_tatie_bisyou_youen]
#クライスト	
「うん。ありがとう。あ、俺が勝ったらさ、ご褒美にキスしてくれる？」[p]
#
#&f.name	

「なっ・・・何・・・いって」[p]
#
[kra_tatie_smile]
#クライスト	

「あはは。
[kra_tatie_normal]
・・・さあ、行って！！」[p]
#
#&f.name	

「う・・・うん」[p]
#
[runisi]
[chara_kakusu]
[live2d_kra_touroku]
[live2d_fadeout time=1000]
[anten]
[stopse]
;ルシア戦
[rusia_tatakai]

;ルシアその後
[rusia_sonogo]

*sonogo
[curnival_sonogo]


	
;#&f.nameの部屋

[irain_heya_yoru]
#&f.name	
（伝説の・・・剣・・・魔剣・・・か・・・本当に、不思議な力だったな・・・）[p]
#

#&f.name	
（クライストさんの持ってる剣・・・ルシアの剣と一緒だった・・・魔剣・・・あの二つの関係ってーー）[p]
#

#&f.name	

（魔剣ヴァエルは、破壊と死滅を司る・・・あの赤い剣が魔剣ヴァエルなら、クライストさんの青い剣は・・・）[p]
#
#&f.name	

「・・・・・・」[p]
#
#&f.name	

（・・・とにかくもう・・・疲れた・・・休もう・・・）[p]
#

*curnival_end	
[anten]
;暗転
クライストとの「戦場の絆」を獲得しました！[p]
[eval exp="f.kra_battle_kizuna=1"]
[eval exp="f.kra_curnival_date=1"]
;カーニバル編終了
[eval exp="f.friend=0"]
[eval exp="f.gaia_hotaru=0"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=0"]
[eval exp="f.rusia_battle=0"]
[eval exp="f.event_main_11=0"]
[eval exp="f.event_main_11_kra=0"]


[jump storage="scenario_2/episode/episode_jump.ks"]

	
	
	