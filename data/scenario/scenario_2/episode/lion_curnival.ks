;ライオネス 
;騎士団入口
[loader_hyouji]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[loader_delete]
[message_settei_ad]
[live2d_lion_touroku]
[live2d_fadeout time=1000]
[live2d_lion_show]
[eval exp="f.friend=2"]
[eval exp="f.event_main_9_lion=1"]
[snowfall]
[kisidaniriguti_hiru]
[skip_button_off]


[playbgm storage="maturi_musmus.ogg"]
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス 	
「・・・よう」[p]
#

#&f.name	
「あ、ライオネス 、おはよう！」[p]
#

[lioness_tatie_kimazui]
#ライオネス 	
「お、おう・・・」[p]
#

#&f.name	
「？何？」[p]
#

[lioness_tatie_otikomi]
#ライオネス 	
「いや・・・。

[lioness_tatie_kosinite]
と、とにかく行くぞ！」[p]
#

#&f.name	
「？うん！」[p]
#
[chara_kakusu]
[live2d_fadeout time=1000]
[live2d_lion_show_sekkin]
[lion_fashion_check]
[lion_para_word]
[lion_para_current_kioku]
[live2d_delete_all][live2d_off][clearstack]
[creru_iriguti]
[lioness_tatie_show]
[lioness_tatie_kimazui]
#&f.name	
（なんだかライオネス ・・・ソワソワしてるような気がするんだけど・・・）[p]
#

#&f.name	
「なんか・・・落ち着かないね？」[p]
#


[lioness_tatie_odoroki]
#ライオネス 	
「な、何が」[p]
#

#&f.name	
「ライオネス 」[p]
#

[lioness_tatie_kimazui]
#ライオネス 	
「そんなこと、ねえよ」[p]
#

#&f.name	
（そうかなあ・・・）[p]
#

[creru_hunsui_3]
#&f.name	
「うわあ・・・すごい人だね・・・！王都の人たちだけじゃないよね？」[p]
#

[lioness_tatie_udekumi]
#ライオネス 	
「まあな・・・観光にくる連中もいるらしいからな」[p]
#

#&f.name	
（屋台もいっぱい出てて楽しそうだな）[p]
#

#ライオネス 	
「・・・それで？どこ回んだ？」[p]
#

#&f.name	
「ええとね・・・」[p]
#


#アガタ	
「あ！！[name]！！」[p]
#

#&f.name	
「アガタ！！」[p]
#
[chara_kakusu]

[agata_tatie_touroku]
[agata_tatie_show]
[agata_tatie_yorokobi]
#アガタ	
「今日仕事休みなの？よかったら一緒にまわ・・・って・・・ってあ」[p]
#
[agata_tatie_odoroki]
[chara_config pos_mode=false]
;#ライオネス 同伴
[chara_move name="agata" left=0]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=400][chara_on]
[agata_tatie_ikari]
#アガタ	
「こないだの嫌なやつ！なんで[name]と一緒にいるの！！」[p]
#


#ライオネス 	
「ああ？なんだお前なんか知らねーよ」[p]
#

#アガタ	
「ほんっとムカつくわ・・・顔すら覚えてないって・・・」[p]
#

[agata_tatie_mayuhisome]
#アガタ	
「[name]まさか、こいつとデートとかじゃないよね！？」[p]
#

	
#&f.name	
「えっ・・・えーと・・・デート・・・なのかな？」[p]
#

[lioness_tatie_kimazui]
#ライオネス 	
「・・・・・・」[p]
#

[agata_tatie_metoji]
#アガタ	
「あのさあ・・・ちょっとこっち来て[name]」[p]
#

#&f.name	
「な、何？」[p]
#

[chara_kakusu]
[config_true]

[agata_tatie_show]
[agata_tatie_mayuhisome]
#アガタ	
「（ひそひそ）あいつはやめたほうがいいと思うよ？態度悪いし、優しさのかけらもなさそうだし、幸せになれないと思うの・・・」[p]
#

#アガタ	
「（ひそひそ）なんていうか？？騎士団だからさ、収入は安定すると思うけど・・・」[p]
#

#&f.name	
（な、なんの話？？？）[p]
#

[agata_tatie_metoji]
#アガタ	
「[name]が、それでもいいっていうなら・・・まあ・・・だけどさ・・・」[p]
#

#&f.name	
「えーと・・・アガタ？？？」[p]
#

[config_false]
[agata_tatie_ikari]
[chara_move name="agata" left=0]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=400][chara_on]
#アガタ	
「ともかくもあんた！[name]のこといじめたりしてないでしょうね！？いじめたら私が許さないからね！！」[p]
#

[lioness_tatie_chottoikari]
#ライオネス 	
「訳のわかんねーこと言ってんじゃねーよ、んなつまんねーこと誰がやるか」[p]
#

#&f.name	
「ええっとアガタ・・・大丈夫だよ？ライオネス はそんな人じゃないから・・・」[p]
#

[agata_tatie_yokome]
#アガタ	
「・・・・・。まあ・・・[name]がそういうなら・・・」[p]
#

[config_true]
[chara_off][chara_hide name="lion"]


[agata_tatie_yorokobi]
#アガタ	
「あ、そう言えばさっきこれもらったんだけど、[name]、いる？」[p]
#

#&f.name	
「ん？これって・・・スパイス？？」[p]
#

ミラクルスパイスを手に入れた！[p]
[eval exp="f.cook_item_stock[29]=1"]

[agata_tatie_smile]
#アガタ	
「そうそう、私全然料理できないんだけど、[name]は料理上手だし、よく作ってたじゃない？」[p]
#

[agata_tatie_yorokobi]
#アガタ	
「だから使うかなって思って！」[p]
#

#アガタ	
「あ、それにさあ、料理は恋にも効果的だよー？」[p]
#
	
#アガタ	
「男の人ってさー、胃袋掴まれると弱いんだよねーこれが」[p]
#

#アガタ	
「もし好きな人ができたら、好きな料理とか、作ってあげれば大喜びだと思うよ」[p]
#

#&f.name	
「料理かあ・・・そういえばずっとしてないなあ」[p]
#

#アガタ	
「仕事とか落ち着いて時間ができたら、やってみたら？[name]料理好きだったもんね」[p]
#

#&f.name	
「うん！」[p]
#	

[config_false]
[chara_move name="agata" left=0"]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=400][chara_on]
#ライオネス 	
「おい、いつまでくっちゃべってんだ、そろそろ行くぞ、腹減った」[p]
#

[agata_tatie_ikari]
#アガタ	
「ちょっとあんた堪え性なさすぎ。あっちの方も早いんじゃないの？」[p]
#

#&f.name	
（？）[p]
#

[lioness_tatie_odoroki]
#ライオネス 	
「ばっか何、何言って・・・」[p]
#

[lioness_tatie_otikomi]
#アガタ	
「あー、もしかして図星かな？」[p]
#


[lioness_tatie_chottoikari]
#ライオネス
「と、とりあえず行くぞ！[name]！」[p]
#
[config_true]
[chara_off][chara_hide name="lion"]
#&f.name	
「あっ・・・ごめんねアガタ、またね！」[p]
#

[agata_tatie_smile]
#アガタ	
「またね！お休みの日にでもお茶しよー！」[p]
#

[agata_tatie_ikari]
#アガタ	
「それからあんた！[name]が可愛いからっていやらしいことしたら承知しないかんね！！！！！」[p]
#

[chara_off][chara_hide name="agata"]
[chara_on][chara_show name="lion" storage=&f.lion_chottoikari height="698" width="456" top=-35][chara_on]
#ライオネス 
「誰がするかっての！！バーカ！！」[p]
#

[chara_off][chara_hide_all]
#&f.name	
（ああ・・・この二人絶対仲良くなれないと思う・・・）[p]
#

	
料理ができるようになりました[p]
料理はイベントなどの発生状況によりできないこともあります[p]

	

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
[lioness_tatie_show]
#ライオネス 
「そろそろ、行くか？」[p]
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
#ライオネス 
「そんじゃ行こうぜ」[p]
#
[chara_kakusu]
[jump target=*paredo]


*mou_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[lioness_tatie_nemunemu]
#ライオネス 	
「わーった。ふあああ・・・」[p]
#

#&f.name	
（ちょっと退屈し始めてるかな？）[p]
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
	[call storage="scenario_2/live2d_lioness_macro.ks"]
[fadeoutbgm time=1000]
[fadeinbgm storage="yoin_ontama.ogg" time=5000]
[lioness_tatie_show]
[lioness_tatie_kosinite]
#ライオネス 	
「お？なんか賑やかになってきたな」[p]
#

#&f.name	
「もしかして、パレードかな？」[p]
#

[fadeoutbgm time=1000]
[lioness_tatie_otikomi]	
#ライオネス 	
「・・・・・・」[p]
#

#&f.name	
（何となく不機嫌そう・・・）[p]
#

#&f.name	
「あの、ライオネス ？？」[p]
#

[lioness_tatie_chottoikari]
#ライオネス 	
「・・・見たくねえ。クソ親父が・・・」[p]
#

#&f.name	
「ええ？」[p]
#
[lioness_tatie_kimazui]
#ライオネス 	
「俺、屋台で飯食ってんな」[p]
#
[chara_kakusu]
#&f.name	
「う、うん・・・」[p]
#

#&f.name	
（ライオネス 、どうして・・・）[p]
#

[playbgm storage="yoin_ontama.ogg"]
[creru_iriguti]
#&f.name	
（あ・・・！）[p]
#
[playse storage="paredo_kansei_1.ogg"]
[werumu_tatie_rei_touroku]
[werumu_tatie_rei_show]
	
#&f.name	
（あれって王宮騎士団のウェルム団長だ・・・）[p]
#

#&f.name	
（ライオネス とランスロットのお父さんの・・・）[p]
#

	
#&f.name	
「だからライオネス ・・・見たくないって言ったの・・・？」[p]
#

#&f.name	
（ライオネス ・・・）[p]
#

[chara_off][chara_hide name="werumu_rei"]

[playse storage="paredo_kansei_2.ogg"]	
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

#&f.name	
（王宮騎士団副団長のアニス様・・・寡黙な人だったな・・・王宮で何度か会っただけだけど）[p]
#
[chara_off][chara_hide name="anis_rei"]
[glif_tatie_rei_touroku]
[glif_tatie_rei_show]

#&f.name	
（あれっ、あの人あのときの・・・王宮騎士・・・名前・・・グリフって呼ばれてたっけ・・・）[p]
#

[playse storage="paredo_kansei_1.ogg"]
[chara_off][chara_hide name="glif_rei"]
[rans_tatie_rei_touroku]
[rans_tatie_rei_show]
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
;場面夕方　暗い中に、精霊のふわふわしたのが飛び始めてる
[fadeoutbgm time=1000]
[fadeoutse time=1000]
[anten]

[creru_hunsui_yoru]

[chara_on]
[chara_on][chara_show name="lion" height="698" width="456" top=-35 storage="lion_tatie/Idle_gif_otikomi.gif"][chara_on]
#ライオネス 	
「・・・・・・」[p]
#

#&f.name	
「ライオネス ！パレード終わったよ」[p]
#

[lioness_tatie_odoroki]
[lioness_tatie_otikomi]
#ライオネス 	
「ああ・・・」[p]
#

#&f.name	
「これからって・・・あ、ガイアの森の・・・精霊のお告げ、かな・・・」[p]
#

[lioness_tatie_udekumi]
#ライオネス 	
「・・・だろうな。もう行くか？」[p]
#

#&f.name	
「えーと・・・」[p]
#
[chara_kakusu]
*dousuru
[jump storage="scenario_2/sentaku.ks" target=*choice999]
*hana_watasu

[live2d_lion_touroku]

#&f.name
「その前に・・・あの・・・ライオネス、これ」[p]
#
[live2d_lion_show_sekkin]
[lioness_face_odoroki_kutiake]
#ライオネス 
「！お前・・・これって・・・」[p]

#&f.name
「お花だよ？」[p]

[lioness_head_above_y]
[lioness_head_left_x]
[lioness_face_yokome_otikomi]

#ライオネス 
「いやその・・・知ってるけどよ・・・お前・・・」[p]

[lioness_head_under_y]
[lioness_head_right_x]
[lioness_arms_poripori]
[lioness_face_otikomi]
#ライオネス 
「俺がもらっていいのか？」[p]

#&f.name
「うん」[p]

[lioness_head_normal]
[lioness_face_mehuse_dai]
#ライオネス 
「・・・そっか・・・それならまあ
[lioness_arms_normal]
[lioness_head_left_z]
[lioness_body_left_z]
[lioness_face_warai]
・・・ありがとな」[p]
#
[if exp="f.curnival_flower_3==1"]
[koukando3_lion]
[else]
[koukando1_lion]
[endif]
[eval exp="f.curnival_flower_1=0"]
[eval exp="f.curnival_flower_2=0"]
[eval exp="f.curnival_flower_3=0"]
[eval exp="f.gave_flower_lion=1"]
[live2d_delete_all][live2d_off][clearstack]

[refresh_hanyou]
[jump target=*dousuru]


*gaia	
[chara_kakusu]	
		
;ガイアの森に行く

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


;画面を飛ぶ光が多くなる
#&f.name	
（そういえば・・・この光ってるのって・・・蛍？と思ったけど・・・違うんだよね・・・）[p]
#

#&f.name	
「毎年・・・ふわふわってお告げの前には飛んでるけど、これって・・・」[p]
#
	
[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス 	
「・・・ああ、なんだその・・・精霊のなんちゃらってやつじゃねえのか？よくわかんねえけど」[p]
#

#&f.name	
「そうなのかあ・・・」[p]
#

#&f.name	
（なんちゃら・・・）[p]
#



[chara_kakusu]
[bg  storage="gaiamori_yoru_cur_tasogare.jpg"]
;ガイアの森
#&f.name	
「わあ・・・すごい・・・光が・・・森中に・・・」[p]
#

[fadeoutbgm time=1000]
[miko_tatie_touroku]
[miko_tatie_show]	
#巫女	
「・・・母なる大地に宿る精霊の皆よ・・・」[p]
#

[miko_tatie_inori]
#巫女	
「かの国クレールの、輝かし未来を・・・」[p]
#

;音楽変更
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
[chara_off][chara_hide name="miko"]
[config_true]

[chara_on][chara_show name="lion"  storage=&f.lion_odoroki top=-35 height="698" width="456"][chara_on]
#ライオネス 	
「・・・なんだ？」[p]
#

[chara_kakusu]
	
;王都の門
[fadeoutbgm time=1000]
[bg storage="creru_gate_yoru_tasogare.jpg"]
#騎士	
「ふわああ・・・・モンスターが来るかもだからなんて言われてたけど、平和そのものじゃねえか・・・」[p]
#

;;SE　モンスターの鳴き声も

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

[chara_on][chara_show name="lion" storage=&f.lion_odoroki top=-35][chara_on]
	
#ライオネス 	
「なんだって！？」[p]
#

#&f.name	
「ライオネス ！！」[p]
#

[lioness_tatie_chottoikari]
#ライオネス 	
「[name]、装備整えろ、行くぞ！！！」[p]
#

#&f.name	
「はい！」[p]
#

[eval exp="f.event_main_9_lion=0"]
[eval exp="f.event_main_10_lion=1"]
[eval exp="f.event_main_10=1"]

[chara_kakusu]
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
「こ・・・これ・・・」[p]
#

[chara_on][chara_show name="lion"  storage=&f.lion_odoroki top=-35 height="698" width="456"][chara_on]

#ライオネス 	
「ひでえ・・・！！警備は何やって・・・！！」[p]
#

#騎士	
「ライオネス ！！」[p]
#

[lioness_tatie_chottoikari]
#ライオネス 	
「おいどう言うことだよ！！街にこんなにモンスターが・・・」[p]
#

#騎士	
「それがわかんねえ・・・本当に突然、一気に押し寄せてきて、攻撃する暇なんか・・・」[p]
#


#ライオネス 	
「くそっ・・・とにかく、これ以上モンスターを入れねえように王都の門に急ぐぞ・・・！！」[p]
#

#&f.name	
「そ、そうだよね、門をふさげばこれ以上は・・・！」[p]
#

[config_false]
[chara_off][chara_hide name="lion" time=30]
[chara_new name="lion_kamae" storage=&f.lion_kamae][chara_on]
[chara_on][chara_show name="lion_kamae" top=-35 left=-100][chara_on]
#ライオネス 	
「ああ・・・行くぞ！[name]気合入れろ！」[p]
#

#&f.name	
「はい！！」[p]
#
[chara_kakusu]

[anten]
[bg storage="creru_gate_yoru_tasogare.jpg"]
[fadeoutse time=1000]
[fadeoutbgm time=1000]

[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[w][w][w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[w][w][w]
[playse storage="igyou_nakigoe_onjin6.ogg"]

[config_true]
[chara_on][chara_show name="lion"  storage=&f.lion_odoroki height="698" width="456" top=-35][chara_on]

#ライオネス 	
「なっ・・・なんだこいつ・・・！？」[p]
#
[chara_kakusu]
[playse storage="igyou_nakigoe_onjin6.ogg"]	
[config_true]
[igyou_tatie_touroku]
[igyou_tatie_show]

#&f.name	
（他のモンスターとは全然違う・・・何・・・！？）[p]
#
[chara_kakusu]
[chara_on][chara_show name="lion_kamae" top=-35 left=-100][chara_on]

#ライオネス 	
「気持ち悪いなっ・・・とにかく、倒すしかねえ！！」[p]
#	
[chara_kakusu]
*igyou_battle
[eval exp="f.monster_l_size=1"]
;異形戦闘　勝利
[battle_start]

*igyou_battle_end
;なんとか勝利
[config_true]
[lioness_tatie_touroku]
[chara_new name="lion_kamae" storage=&f.lion_kamae][chara_on]
[chara_on][chara_show name="lion_kamae" top=-35 left=-100][chara_on]
#ライオネス 	
「・・・や・・・やった、のか・・・」[p]
#

#&f.name	
（なんとか倒せた・・・けど、これが何体も来たら・・・）[p]
#
[playse storage="igyou_nakigoe_onjin6.ogg"]
;異形の鳴き声
[chara_kakusu]
[chara_on][chara_show name="lion" storage=&f.lion_odoroki top=-35][chara_on]
[lioness_tatie_otikomi]
#ライオネス 	
「くそっ・・・まじかよ・・・」[p]
#

#&f.name	
（・・・そんな・・・）[p]
#

[playbgm storage="kisimi_musmus.ogg"]
#ルシア	
「・・・ほう・・・少しは骨のある奴がいると見える・・・」[p]
#
[chara_kakusu]
[rusia_tatie_touroku]
[rusia_tatie_show]

#&f.name	
「だっ・・・誰・・・！？」[p]
#
[chara_kakusu]
[chara_on][chara_show name="lion"  storage=&f.lion_chottoikari top=-35 height="698" width="456"]

#ライオネス 	
「誰だてめえ！！！！！」[p]
#
[chara_off][chara_hide name="lion" time=30]

[chara_on][chara_show name="rusia" top=1.5 time=30][chara_on]
#ルシア	
「我を知らぬとは世間知らずもいいところ・・・我が名はルシア。
	エルムナード女王ルシアと呼ばれることもある」[p]
#

#&f.name	
「え・・・エルムナードの・・・」[p]
#
[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="lion"  storage=&f.lion_odoroki top=-35 height="698" width="456"][chara_on]
#ライオネス 	
「女王って・・・」[p]
#

[lioness_tatie_chottoikari]
#ライオネス 	
「女王がこんなところまできて何やってやがる！！！！！一体なんの真似だ！！」[p]
#
[chara_off][chara_hide name="lion" time=30]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=1.5 left=0 time=30]

#ルシア	
「何も知らぬ下っ端が吠えおって・・・こざかしい・・・」[p]
#

[rusia_tatie_niyari]
#ルシア	
「我は貴様らを含む、クレールを完全に潰すために来た。この、魔剣ヴァエルでな」[p]
#


#ルシア	
「この異形達は我の忠実なる国民達よ・・・このような姿となり、我に従うてくれているのだ」[p]
#

#&f.name	
「こ、国民って・・・じゃあ・・・あのモンスターは・・・」[p]
#


#ルシア	
「・・・元は、人間の姿だったがな、ヴァエルに生命を受け渡すことで、このような強大な力を手に入れたのだ・・・」[p]
#
[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="lion"  storage=&f.lion_chottoikari top=-35 height="698" width="456"][chara_on]

#ライオネス 	
「つまりは・・・その魔剣ってやつで斬り殺したってことか・・・」[p]
#

#&f.name	
「そ・・・そんな・・・こと・・・まさか、エルムナードの人・・・全員・・・？」[p]
#
[chara_off][chara_hide name="lion" time=30]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_kyouki0.png" top=1.5 left=0 time=30][chara_on]
#ルシア	
「その通りだ！！我の全国民が我の兵よ！！！まさに、まさに最強の軍隊！！！！！」[p]
#

[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="lion"  storage=&f.lion_chottoikari top=-35 height="698" width="456" time=30][chara_on]
#ライオネス 	
「気狂いが・・・」[p]
#

#&f.name	
（あれ・・・ルシアの胸のところにあるあの紋章・・・誰かのに似てるような・・・）[p]
#
[chara_off][chara_hide name="lion" time=30]

[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_kyouki0.png" top=1.5 left=0 time=30][chara_on]
#ルシア	
「まずは手始めにお前らを血祭りにあげてやろうぞ！！！」[p]
#

[chara_off][chara_hide name="rusia" time=30]
[chara_on][chara_show name="lion"  storage=&f.lion_odoroki top=-35 height="698" width="456" time=30][chara_on]
[chara_off][chara_hide name="lion" time=30]
[chara_new name="lion_kamae" storage=&f.lion_kamae][chara_on]
[chara_on][chara_show name="lion_kamae" top=-35 left=-100][chara_on]

#ライオネス 	
「[name]！！構えろ！！来るぞ！！！」[p]
#

#&f.name	
「！！！！」[p]
#

[fadeoutbgm time=1000]
[call storage="scenario_2/episode/scenario_macro.ks"][call storage="live2d_sub_macro.ks"]
[chara_off][chara_hide_all]
[eval exp="f.event_main_10=0"]
[eval exp="f.event_main_10_lion=0"]
[eval exp="f.event_main_11=1"]
[eval exp="f.event_main_11_lion=1"]
[eval exp="f.rusia_battle=1"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=1"]
;#ルシアと戦闘
[battle_start]

;#ルシアと戦闘
	
;負ける
*rusia_battle_end
[rusia_kaiwa]
[call storage="scenario_2/episode/scenario_macro.ks"]
[rusia_tatakai]
[rusia_sonogo]
[curnival_sonogo]

;#&f.nameの部屋
[irain_heya_yoru]
#&f.name	
（ライオネス ・・・大丈夫かな。あの後街の手伝いするって言ってたけど、疲れてるよね・・・）[p]
#

#&f.name	
（伝説の・・・剣・・・魔剣・・・か・・・本当に、不思議な力だったな・・・）[p]
#

#&f.name	
（・・・とにかくもう・・・疲れた・・・休もう・・・）[p]
#
;暗転
*curnival_end
[anten]
ライオネス との「戦場の絆」を獲得しました！[p]
[eval exp="f.lion_battle_kizuna=1"]
[eval exp="f.lion_curnival_date=1"]
;カーニバル編終了
[eval exp="f.friend=0"]
[eval exp="f.gaia_hotaru=0"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.rusia_l_size=0"]
[eval exp="f.rusia_battle=0"]
[eval exp="f.event_main_11=0"]
[eval exp="f.event_main_11_lion=0"]

[jump storage="scenario_2/episode/episode_jump.ks"]

