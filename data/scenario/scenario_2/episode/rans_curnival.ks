;#ランスロット

[loader_hyouji]
[preload storage="data/fgimage/rans_tatie/rans_rei_normal.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_normal_warai.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_ikari.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_kunou.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_mayuhisome.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_mehuse.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_mehuse_warai.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_metoji.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_mihiraki.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_sinkoku.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_sinnpai.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_yokome.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_battle_serihu.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_battle_serihu_2.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_battle_home.gif"]
[preload storage="data/fgimage/rans_tatie/rans_rei_battle_home_2.gif"]
[call storage="scenario_2/live2d_rans_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[call storage="scenario_2/rans_rei_fashion_comment.ks"]
[loader_delete]
[creru_sakaba][eval exp="f.rans_rei=1"]
[live2d_rans_touroku]
[live2d_fadeout time=1000]
[live2d_rans_show_sekkin]
[eval exp="f.friend=1"]
[eval exp="f.event_main_9_rans=1"]

[snowfall]
[playbgm storage="maturi_musmus.ogg"]
[message_settei_ad]

#&f.name	
「えーと・・・パレード終わった後って言ったけど、待ち合わせ場所決めてなかったなあ・・・」[p]
#

#&f.name	
「どうしよう・・・どこにいるんだろ・・・ランスロット」[p]
#



#ランスロット	

「[name]！」[p]
#

#&f.name	

「あ！」[p]
#
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_sinnpai]
#ランスロット	

「すまなかったな・・・待ち合わせの場所を指定し忘れていた」[p]
#

#&f.name	

「ううん、大丈夫だよ、すぐ会えたし」[p]
#

#&f.name	

「でも、よくわかったね」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「ちょうどお前の姿が見えたからな」[p]
#

#&f.name	
（この人込みで・・・？すごいなあ・・・）[p]
#



[chara_kakusu]
[rans_fashion_check]
[rans_rei_para_word]
[rans_para_current_kioku]

[live2d_off][live2d_delete_all][clearstack]



#アガタ	

「あ！！[name]！！」[p]
#

[chara_kakusu]
[agata_tatie_touroku]
[agata_tatie_show]

#&f.name	

「アガタ！！」[p]
#

#アガタ	

「今日仕事休みなの？よかったら一緒にまわ・・・って・・・ってあ」[p]
#

[chara_config pos_mode=false]

[chara_move name="agata" left=0]

#アガタ	

「あ！！きゃー！！ランスロット様！！」[p]
#
[agata_tatie_smile]

[chara_on][chara_show name="rans_rei" left=300][chara_on]
[rans_tatie_rei_normal_warai]
#ランスロット	

「やあアガタ。元気そうだな」[p]
#

[agata_tatie_odoroki]

#アガタ	

「えっ、私の名前覚えててくれたんですか！？」[p]
#

#ランスロット	

「もちろんだ。[name]の友人だからな」[p]
#

[agata_tatie_usirote]
#アガタ	

「嬉しい・・・！！[name]が、いつもお世話になって、ありがとうございまーす！！」[p]
#

[rans_tatie_rei_mehuse_warai]
#ランスロット	

「そうだな。だいぶ世話は焼いているな」[p]
#

#&f.name	

「えっ・・・ええ！？」[p]
#

[rans_tatie_rei_normal_warai]

#ランスロット	

「はは、冗談だ」[p]
#

#&f.name
	（・・・もう・・・）[p]
#

[agata_tatie_mayuhisome]
#アガタ	

「・・・・・・」[p]
#

#&f.name	

「アガタ？」[p]
#

[agata_tatie_metoji]
#アガタ	

「・・・・・。・・・ちょっとこっち来て[name]」[p]
#

#&f.name	

「な、何？」[p]
#
[config_true]
[chara_off][chara_hide name="rans_rei"]

[agata_tatie_mayuhisome]
#アガタ	

「（ひそひそ）ちょっといい雰囲気じゃない？今日ってもしかしてもしかして二人でデートとかじゃないよね！？」[p]
#

#&f.name	

「えっと・・・いつもあんな感じだよ？ランスロットとは・・・」[p]
#

[agata_tatie_mihiraki]
#アガタ	

「（ひそひそ）そ、そうなの？

[agata_tatie_mayuhisome]
なんかさー前々から思ってるんだけど、ランスロット様って[name]と他の女の人との扱いが全然違うよね？」[p]
#

#&f.name	

「そ・・・そうかな？？？アガタ、あんまり王都にこないからわからないんじゃ・・・」[p]
#


#アガタ	

「（ひそひそ）さっきだってさ、『[name]の友人だからな』って、それって[name]が関わってなかったら覚えてないってことでもあるんじゃ・・・」[p]
#

#&f.name	

「あ、アガタそれは流石に勘ぐりすぎだよ・・・」[p]
#

[agata_tatie_yokome]
#アガタ	

「うーん・・・何かがあやしい・・・」[p]
#

#&f.name	

「あ、アガタ〜・・・」[p]
#

#&f.name
	（考えすぎだと思うけどなあ・・・）[p]
#
[config_false]
[chara_move name="agata" left=0]
[chara_on][chara_show name="rans_rei" left=300][chara_on]

[rans_tatie_rei_normal_warai]
#ランスロット	

「・・・女性の話に口を挟みたくはないのだが・・・こちらのことも忘れないで欲しいものだな」[p]
#

[agata_tatie_odoroki]
#アガタ	

「あっごめんなさい！ついー・・・

[agata_tatie_mihiraki]
あ！」[p]
#

[agata_tatie_smile]
#アガタ	

「そうだ、[name]！さっきこれもらったんだけど、いる？」[p]
#

#&f.name	

「ん？これって・・・スパイス？？」[p]
#
ミラクルスパイスを手に入れた！[p]
[eval exp="f.cook_item_stock[29]=1"]
[agata_tatie_normal]
#アガタ	

「そうそう、私全然料理できないんだけど、[name]は料理上手だし、よく作ってたじゃない？」[p]
#

[agata_tatie_usirote]
#アガタ	

「だから使うかなって思って！」[p]
#

[agata_tatie_normal]
#アガタ	

「あ、それにさあ、料理は恋にも効果的だよー？」[p]
#

	
[agata_tatie_yokome]
#アガタ	

「男の人ってさー、胃袋掴まれると弱いんだよねーこれが」[p]
#

[agata_tatie_smile]
#アガタ	
「好きなのとか、作ってあげれば大喜びだと思うよ」[p]
#

#&f.name	
「料理かあ・・・そういえばずっとしてないなあ」[p]
#
[agata_tatie_normal]
#アガタ	
「仕事とか落ち着いて時間ができたら、やってみたら？[name]料理好きだったもんね」[p]
#

#&f.name	
「うん！」[p]
#


[rans_tatie_rei_yokome]
#ランスロット	

「・・・そういえば、王宮にいた頃、お前はよく料理を作っていたな」[p]
#

	
#&f.name	

「う、うん、その頃は雑用だったから厨房のお手伝いもよくしたし、料理も教えてもらえたし」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「機会があったら、またお前の料理が食べたい。作ってくれないか」[p]
#

#&f.name	

「う、うん。いいよ！」[p]
#

[rans_tatie_rei_mehuse_warai]
#ランスロット	

「・・・楽しみにしている」[p]
#

[agata_tatie_mayuhisome]
#アガタ	

「ホントいい雰囲気なんだけどなあ・・・」[p]
#

#&f.name	

「アガタ？」[p]
#

[rans_tatie_rei_normal]

[agata_tatie_usirote]
#アガタ	

「う、ううん、私しばらく王都にいるから、時間あったらお茶でもしようね！！」[p]
#

#&f.name	

「あ、う、うん！」[p]
#

[agata_tatie_smile]
#アガタ	

「それじゃ、あんまり二人の時間邪魔しても良くないもんね。あとはごゆっくりー」[p]
#

#&f.name	

「え・・・ええ！！？？」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「さあ、行くか、[name]。ありがとう、アガタ」[p]
#

#アガタ	

「どういったしましてー！いってらっしゃーい！」[p]
#

[chara_kakusu]
[config_true]

[anten]
料理ができるようになりました。料理はイベントなどの発生状況によりできないこともあります。[p]

[creru_hunsui_3]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]


[rans_tatie_rei_normal_warai]
#ランスロット	

「さあ、行くか。どこを回るんだ？」[p]
#

#&f.name	

「あ、う、うん」[p]
#

#&f.name	
（そっか、あんまり時間ないんだものね・・・楽しまなきゃ）[p]
#
	
	

[chara_kakusu]
*cur_choice
[jump storage="scenario_2/sentaku.ks" target=*choice998]
*kettei

[chara_kakusu]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks"]

;屋台
;食べ物のお店
;くじ引き
;金魚すくい
;装備のお店

*play_end
[eval exp="f.yatai=0"]
[eval exp="f.curnival_yatai=0"]
[eval exp="f.kujibiki=0"]
[eval exp="f.kingyo=0"]
[eval exp="f.monster=0"]
[eval exp="f.soubi=0"]


[if exp="f.yatai_kaisuu>6"]
[jump target=*gaia]
[elsif exp="f.yatai_kaisuu>4"]
*akitayo

;[button graphic="cursor.gif" name="monster1" height="100%" width="100%" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=230 y=100]

;[button graphic="cursor.gif" name="monster1" fix=true storage="scenario_2/mini_game/battle2.ks" exp="tf.hit=tf.hit+1" target=*tatakau_monster1 x=&tf.x_2 y=&tf.y_3]

;[s]
;[s]
[rans_tatie_rei_show]

#ランスロット	

「そろそろ、行くか？」[p]
#

#&f.name	

「あ・・・時間、大丈夫？」[p]
#

[rans_tatie_rei_sinnpai]
#ランスロット	

「時間は心配ないが・・・気は済んだのか？」[p]
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
[rans_tatie_rei_normal]
#ランスロット
「そうか。それでは行くか」[p]
#

[chara_kakusu]
[jump target=*gaia]


*mou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
	
[rans_tatie_rei_normal_warai]
#ランスロット	

「そうか、わかった」[p]
#
[chara_kakusu]
#&f.name	
（よーし！）[p]
#

[jump target=*cur_choice]

[else]
[jump target=*cur_choice]

[endif]

*gaia

[creru_hunsui_yoru]
[eval exp="f.gaia_hotaru=1"]
[fadeoutbgm time=1000]
[rans_tatie_rei_show]
#ランスロット	
「もう暗くなったな。みこ様もガイアの御神木のところで準備しているだろう」[p]
#
#&f.name	
「あっそうか・・・精霊のお告げがあるんだっけ」　[p]
#&f.name	
「クレールの・・・未来か・・・毎年だけど、ちょっと緊張するね」[p]

#ランスロット
	「そうだな・・・もう行くか？」[p]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[chara_kakusu]
*dousuru
[jump storage="scenario_2/sentaku.ks" target=*choice999]
*hana_watasu
[refresh_hanyou]
[live2d_rans_rei_touroku]
#&f.name	
「その前に・・・ランスロット」[p]
#
[live2d_rans_rei_show_sekkin]
#ランスロット
「どうした？」[p]
#
#&f.name	
「その・・・これ」[p]
[rans_rei_exp_mihiraki]
#ランスロット
「お前・・・」[p]
#
[rans_rei_body_right_z]
[rans_rei_head_right_z]
[rans_rei_exp_yokome]
[rans_rei_head_under_y]
[rans_rei_exp_mehuse_muzukasii]
#&f.name	
「あっ・・・なんて言うか、今までのお礼、みたいな意味もあって？」[p]
[rans_rei_mod_idle_no_move_mehuse]
[rans_rei_body_normal]
[rans_rei_exp_mehuse]
#ランスロット
「・・・そうか」[p]
#
#&f.name	
（とっさに言っちゃったけど・・・ランスロット・・・何考えてるんだろ）[p]
[rans_rei_head_normal]
[rans_rei_exp_bisyo]
#ランスロット
「ありがとう、[name]。大切にする」[p]
#
#&f.name	
「う、うん」[p]

[if exp="f.curnival_flower_1==1"]
[koukando3_rans]
[else]
[koukando1_rans]
[endif]
[eval exp="f.curnival_flower_1=0"]
[eval exp="f.curnival_flower_2=0"]
[eval exp="f.curnival_flower_3=0"]
[eval exp="f.gave_flower_rans=1"]
[live2d_off][live2d_delete_all][clearstack]

[refresh_hanyou]
[jump target=*dousuru]

	


;画面を飛ぶ光が多くなる
*gaia_mori
[eval exp="f.gaia_hotaru=1"]
[chara_kakusu]	
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
[rans_tatie_rei_show]
[rans_tatie_rei_metoji]
#ランスロット	

「これは・・・精霊が集まる前兆らしい。以前、巫女様に聞いたことがある」[p]
#

#&f.name	

「そうなんだ・・・すごく、きれいだよね・・・」[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「どのような仕組みなのかわからないが・・・そうだな・・・」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「この世界には、人の知恵など及びもしないようなことはたくさんあるのだろうな」[p]
#

#&f.name	

「人の知恵・・・」[p]
#

[rans_tatie_rei_mehuse]
#ランスロット	

「・・・ガイアの教えと同様だ。人は決して、奢ってはいけない」[p]
#

#ランスロット	

「人の一生など・・・この世界に比べれば、本当に小さなものでしかないのだから」[p]
#

#&f.name	

「世界は広いんだね・・・」[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「その通りだ。我々が生まれて死ぬまでの時間をかけたとしても、理解できないようなことはこの世の中に溢れている」[p]
#

#&f.name	

「ランスロット」[p]
#

[rans_tatie_rei_normal_warai]
#ランスロット	

「だがだからこそ、その短い時間を懸命に生きることが、必要なのだろうな」[p]
#

#&f.name	

「・・・うん、そうだね」[p]
#

#ランスロット	

「さあ、そろそろ森へいくか」[p]
#

#&f.name	

「うん！」[p]
#

*gaia
[chara_kakusu]

[playbgm storage="gaia_musmus.ogg"]
[bg storage="gaiamori_yoru_cur_tasogare.jpg"]	


;ガイアの森
#&f.name	
「わあ・・・すごい・・・光が・・・森中に・・・」[p]
#


[miko_tatie_touroku]
[miko_tatie_show]
#巫女	
「・・・母なる大地に宿る精霊の皆よ・・・」[p]
#
[miko_tatie_inori]
#巫女	
「かの国クレールの、輝かし未来を・・・」[p]
#


[snowfall_0]
[playbgm storage="kisimi_musmus.ogg"]
#巫女	
「・・・・・・」[p]
#

;暗転
;#ルシアの、赤い瞳
[miko_tatie_kanasii]
#巫女	
「っ・・・あっ・・・ああ・・・」[p]
#
[chara_off][chara_hide name="miko"]
[config_true]
[rans_tatie_rei_show]
[rans_tatie_rei_mihiraki]
	
#&f.name	

「えっ・・・」[p]
#

[chara_kakusu]
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

;音楽変更　ガイアの森
[playse storage="jinari_tairakomori.ogg"]

[bg storage="gaiamori_yoru_cur_tasogare.jpg" time=50]
[playbgm storage="soudou.ogg" loop=true]
#王都民
「うっうわあああああ！！モンスターだ！！モンスターが出たあ！！！！！」[p]
#
[bg storage="gaiamori_yoru_cur_soudou_tasogare.jpg" time=50]

[rans_tatie_rei_show]

#ランスロット	

「・・・[name]」[p]
#

#&f.name	

「ランスロット・・・」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「・・・装備を整えろ。王都の門へ、急ぐぞ」[p]
#

#&f.name	
（これって・・・）[p]
#
	
	
[rans_tatie_rei_sinkoku]
#ランスロット	

「恐れていたことが、起きたな」[p]
#

#&f.name	

「まさか・・・異形の・・・モンスター？」[p]
#

[rans_tatie_rei_mehuse]
#ランスロット	

「わからない。だが・・・」[p]
#

[chara_kakusu]

[eval exp="f.event_main_9_rans=0"]
[eval exp="f.event_main_10_rans=1"]
[eval exp="f.event_main_10=1"]

[soubi_henkou]
*gate_sentou
[call storage="scenario_2/live2d_sub_macro.ks"]
[bg storage="creru_gate_yoru_tasogare.jpg"]
;王都の門
[message_settei_ad]
[rans_tatie_rei_show]
#ランスロット	
「エクター、頼んだぞ」[p]
#

[config_false]
[ector_tatie_rei_touroku]
[ector_tatie_rei_show]
#エクター	

「お任せください」[p]
#

#&f.name	
（えっ・・・）[p]
#


[rans_tatie_rei_kunou]
#ランスロット	

「[name]。王宮騎士団の協力は無理だった。すまない。だが・・・」[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「私の隊の隊員が、王都の要所要所で警備を固めている」[p]
#

[rans_tatie_rei_mayuhisome]
#ランスロット	

「これでも、不十分かもしれないが・・・」[p]
#

#&f.name	

「ううん、ありがとう、ランスロット・・・」[p]
#

[rans_tatie_rei_normal]
#&f.name	

「でも、大丈夫なの？ウェルム団長に怒られたりしない？」[p]
#

[rans_tatie_rei_mehuse_warai]
#ランスロット	

「叱られるのはいつものことだ。・・・昔からな」[p]
#

#&f.name	

「ランスロット・・・」[p]
#

[chara_off][chara_hide name="ector"]
	
;異形の鳴き声
	
[playse storage="igyou_nakigoe_onjin6.ogg"]	
	
	
[chara_config pos_mode=false]
[chara_off][chara_hide name="ector_rei"]
[chara_move name="rans_rei" left=400]
[van_tatie_touroku]
[van_tatie_show]
[chara_move name="van" left=-70]

#？？？
「やっこさん、きやがったぜ！！どうだ俺の読み、当たったろ！！」[p]
#

[rans_tatie_rei_mihiraki]
#ランスロット	
「ヴァンディット」[p]
#


[van_tatie_temae]
#ヴァンディット
「随分と心もとねえ警備だなぁ。しかたねえから俺も手伝ってやるよ」[p]
#

[rans_tatie_rei_kunou]
#ランスロット	

「ヴァンディット・・・すまない」[p]
#

[van_tatie_normal]
#ヴァンディット
「謝るのはまだ早いぜ！！」[p]
#

[rans_tatie_rei_normal]
#ランスロット	
「・・・そうだな」[p]
#
[config_true]
[chara_off][chara_hide name="van"]



#&f.name	
（・・・異形のモンスター・・・一体・・・）[p]
#

#&f.name	
（勝てるのかな・・・ううん、勝たなきゃ・・・）[p]
#

[rans_tatie_rei_yokome]
#ランスロット	

「普通のモンスターも感化されていると聞く。乱戦が予想されるな・・・」[p]
#

[rans_tatie_rei_sinkoku]
#ランスロット	

「[name]、周囲の状況確認を常に怠るな」[p]
#

#&f.name	

「はい！！」[p]
#
[config_false]
[ector_tatie_rei_touroku]
[ector_tatie_rei_show]
#エクター	

「隊長、王都内ですでにモンスターが現れたとの報告があります」[p]
#

[rans_tatie_rei_ikari]
#&f.name	

「えっ・・・門は抑えてるのに・・・」[p]
#

#&f.name	
（この間と同じ・・・いきなり現れたって言うの・・・！？）[p]
#


[rans_tatie_rei_mayuhisome]
#ランスロット	

「わかった。いきなりの出現となると・・・厄介だが、頼んだぞ」[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「地方騎士団と協力して任務に当たれ」[p]
#


#エクター	
「了解」[p]
#

[chara_kakusu]

[playse storage="igyou_nakigoe_onjin6.ogg"]
#騎士
「わっ・・・わあああああ！！た、助けて、助けてくれ！！」[p]


#&f.name	

「えっ・・・」[p]
#
[playse storage="dash-gravel1_koukaonlabo.ogg"]
[fadeoutse time=1000]
[fadeoutbgm time=1000]
[playse storage="igyou_nakigoe_onjin6.ogg"]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
#&f.name	

「！！！」[p]
#
[playse storage="igyou_nakigoe_onjin6.ogg"]	

[config_true]
[igyou_tatie_touroku]
[igyou_tatie_show]
#&f.name	

「こ・・・これは・・・」[p]
#
[chara_kakusu]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
#ランスロット	

「・・・これが・・・異形の、怪物か・・・」[p]
#

[playse storage="igyou_nakigoe_onjin6.ogg"]	
#&f.name	
（なんて・・・気持ち悪い・・・でも・・・戦わなきゃ・・・）[p]
#

[rans_tatie_rei_kamae]
#ランスロット	

「・・・怯むな。その一瞬の隙が、死に繋がる」[p]
#
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
#&f.name	

「は・・・はい！！」[p]
#
[chara_kakusu]
*igyou_battle
[eval exp="f.monster_l_size=1"]
[battle_start]
;異形戦闘　勝利

*igyou_battle_end
#&f.name	

「・・・はあ・・・はあ・・・」[p]
#

#&f.name	
（・・・か、勝て、た・・・）[p]
#
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
[rans_tatie_rei_sinnpai]
#ランスロット	

「・・・[name]・・・大丈夫か」[p]
#

#&f.name	

「う・・・うん・・・」[p]
#

[rans_tatie_rei_mayuhisome]
#ランスロット	

「こいつ一体だけなら、まだ・・・だが・・・」[p]
#

#&f.name	
（えっ・・・）[p]
#
[chara_kakusu]

[playbgm storage="kisimi_musmus.ogg"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[rusia_tatie_touroku]
[rusia_tatie_show]	
#ルシア	

「・・・ほう・・・少しは骨のある奴がいると見える・・・」[p]
#

[chara_kakusu]

[rans_tatie_rei_show]
[rans_tatie_rei_mihiraki]
#&f.name	

「だっ・・・誰・・・！？」[p]
#

#ランスロット	

「・・・なぜ・・・なぜこんなことを・・・」[p]
#
#&f.name	

「えっ・・・」[p]
#
[rans_tatie_rei_ikari]
#ランスロット	

「エルムナード女王、ルシア・・・！！」[p]
#

[chara_kakusu]

[rusia_tatie_show]
[rusia_tatie_niyari]

#ルシア	

「・・・ほう。我を知っているとは、おぬし、あの戦争の参加者か」[p]
#
[chara_kakusu]
[rans_tatie_rei_show]
#&f.name	

「・・・ランスロット？」[p]
#
[rans_tatie_rei_kunou]
#ランスロット	

「・・・８年前の戦争で、エルムナードとは停戦が結ばれている」[p]
#
[rans_tatie_rei_mehuse]
#ランスロット	

「そして今戦いを起こしても、エルムナードには圧倒的不利のはず・・・だが」[p]
#

[call storage="scenario_2/live2d_sub_macro.ks"]
[chara_kakusu]
[rusia_tatie_show]
[rusia_tatie_kyouki]
#ルシア	

「ほほほほほほほほ！！！我は貴様らに復讐するためなら、どのような手段でも使おうぞ！自らの魂と、我の国民全てを捧げ手に入れた、この大いなる力！」[p]
#

[chara_kakusu]
[config_false]
[rusia_tatie_kamae]
#ルシア	

「この魔剣ヴァエルで、クレールを文字通り根絶やしにしてくれる！！！」[p]
#

[config_true]
[chara_kakusu]
[chara_on][chara_show name="rans_rei" storage=&f.rans_rei_mayuhisome top=0.5 left=0]

#ランスロット	

「・・・魔剣・・・だと！？」[p]
#

#&f.name	

「魔剣・・・て・・・」[p]
#

#&f.name	
（あれ・・・ルシアの胸のところにあるあの紋章・・・誰かのに似てるような・・・）[p]
#

[rans_tatie_rei_mihiraki]
[rans_tatie_rei_kamae]
#ランスロット	

「[name]！！構えろ！！来るぞ！！！」[p]
#

#&f.name	

「！！！！」[p]
#
[fadeoutbgm time=1000]
[call storage="scenario_2/episode/scenario_macro.ks"]
[chara_off][chara_hide_all]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_rans=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_rans=1"]
[eval exp="f.rusia_battle=1"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=1"]
;#ルシアと戦闘
[battle_start]
	
;負ける
*rusia_battle_end
[rusia_kaiwa]
[call storage="scenario_2/episode/scenario_macro.ks"]
[rusia_tatakai]
[rusia_sonogo]


[creru_oukyu_yoru]	[playbgm storage="kisimi_musmus.ogg"]
;王宮門
[config_true]
[rans_tatie_rei_show]
[rans_tatie_rei_metoji]
#ランスロット	

「・・・再びここに現れるとはな」[p]
#


[ector_tatie_rei_show]
#エクター	

「隊長」[p]
#

[rans_tatie_rei_yokome]
#ランスロット	

「王宮に奴の報告をする。強大でなおかつ危険な力だが・・・今回の危機を脱するのに必要かもしれない」[p]
#

[ector_tatie_rei_mehuse]
#エクター	

「・・・モンスターの消滅は、やはり奴の力・・・。あの地方騎士は信じておりませんでしたが」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「・・・ああ・・・」[p]
#

[rans_tatie_rei_sinkoku]
#ランスロット	

「・・・・・・魔剣、か・・・」[p]
#

[chara_kakusu]
[fadeoutbgm time=1000]

[anten]

[curnival_sonogo]	


;#&f.nameの部屋
[irain_heya_yoru]



#&f.name	
（ランスロット・・・まだちょっと疲れてそうだったけど大丈夫かな）[p]
#
#&f.name	
（そういえば・・・クライストさんに気を付けろとも言ってたよね・・・）[p]
#
#&f.name	
（ランスロット・・・クライストさんのこと知ってるのかな・・・）[p]
#

#&f.name
	（伝説の・・・剣・・・魔剣・・・か・・・本当に、不思議な力だったな・・・）[p]
#

#&f.name	
（・・・とにかくもう・・・疲れた・・・休もう・・・）[p]
#



*curnival_end	
[anten]
ランスロット との「戦場の絆」を獲得しました！[p]
[eval exp="f.rans_battle_kizuna=1"]
[eval exp="f.rans_curnival_date=1"]
;カーニバル編終了
[eval exp="f.friend=0"]
[eval exp="f.rans_rei=0"]
[eval exp="f.gaia_hotaru=0"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=0"]
[eval exp="f.rusia_battle=0"]
[eval exp="f.event_main_11=0"]
[eval exp="f.event_main_11_rans=0"]

[jump storage="scenario_2/episode/episode_jump.ks"]









	