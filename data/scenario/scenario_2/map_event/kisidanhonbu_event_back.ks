
;honbu_back_event戻ったときのイベント
[macro name="honbu_back_event"]
[eval exp="f.irain_heya=0"]
[if exp="f.snowfall==1"]
[snowfall_0]
[endif]

;セーブ対策用
[eval exp="f.map=1"]
[skip_button]
[hidemenubutton]
[message_settei_ad]

;エルムナード編
[if exp="f.event_main_14_days>0"]
[call storage="scenario_2/map_event/erumu_honbu_event.ks"]
[erumu_honbu_event]
[endif]



;エルムナード編クラシナリオライオネスぼやき
[if exp="f.event_epi7_kra_ok==2&&f.friend==0"]
[skip_button]
[message_settei_ad]
[kra_epi_3]
[eval exp="f.event_epi7_kra_ok=3"]
[endif]

;カーニバル編
[if exp="f.event_8_lion_doukou==1&&f.irain_move==0"]

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス
「お疲れさん。それじゃな」[p]
#
[eval exp="f.friend=0"]
[chara_kakusu]
[endif]


[if exp="f.event_8_oukyu==1&&f.event_main_8_days>5"]

[bg storage="kisidanrouka_tasogare.jpg"]

[dancho_tatie_touroku]
[dancho_tatie_show]
#団長
	「ああ、[name]」[p]
#
#&f.name	
「あっ・・・グレッグ団長・・・なんでしょう？」[p]
#
#団長
	「お前が出かけているときにランスロットが来てな、話があるから王宮に来てくれと言っていたぞ」[p]
#
#&f.name	
「ランスロットが・・」[p]
#


#団長	
「門番に話を通してあるそうだから、

[if exp="f.irain_move==0"]
明日にでも王宮へ向かってくれ」[p]
#
[else]
王宮へ向かってくれ」[p]
#
[endif]


#&f.name	
「わかりました」[p]
#
[chara_kakusu]
#&f.name	
（王宮に・・・ランスロット、なんのようなんだろ）[p]
#

[eval exp="f.event_8_oukyu=f.event_8_oukyu+1"]







[elsif exp="f.event_8_kra_esa==1&&f.event_8_otukai_end==1&&f.irain_move==0"]


[bg storage="kisidanrouka_tasogare.jpg"]
#&f.name	
（あれっ）[p]
#


[tris_tatie_touroku]
[chara_show name="tris" storage="tris_tatie/tris_naki.png" height="603" width="420" top=50]
#トリスタン
	「う・・・ううー・・・」[p]
#

#&f.name	
「トリスタン・・・どうしたの？」[p]
#


[tris_tatie_mehuse]
#トリスタン
	「あ、[name]か・・・実は俺、腹が痛くてな・・・」[p]
#

#&f.name	
「だ、大丈夫・・・？」[p]
#

[tris_tatie_naki]
#トリスタン
	「ああ・・・飯がうますぎて、つい食べ過ぎちまった・・・」[p]

#
#&f.name	
「食堂のご飯・・・？でも今は厨房が使えないはず・・・」[p]

#

[tris_tatie_ikari_kutiake]
#トリスタン
	「食堂の飯なんか足元にも及ばねえ！あの料理は絶品だ・・・
[tris_tatie_naki]
	とはいえ、畜生なんで俺の腹はこんなに貧弱なんだ・・・」[p]

#
#&f.name	
「は、はあ・・・薬とか持ってこよっか？」[p]

#

[tris_tatie_metoji]
#トリスタン
「いや、大丈夫だ・・・寝てれば・・・
[tris_tatie_sian]
ああ、その代わりなんだが、ひとつ頼まれてくれないか」[p]

#
#&f.name	
「？」[p]

#

[tris_tatie_ryoukai]
#トリスタン
「クライストのやつに飯を持っていってくれ。
[tris_tatie_metoji]
すっかり忘れててな、やろうと思えばこのざまだ」[p]
#[p]
#
#&f.name
	（忘れ去られてたの・・・？ちょっとかわいそうかも・・・）[p]

#


#&f.name	
「クライストさんにご飯・・・」[p]

#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]

【クライストさんにご飯・・・】

[glink target=*kra1_1 text="（持っていく）" size=17 width=600 x=65 y=200]
[glink target=*kra1_2 text="（持っていかない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]




[s]

*kra1_1

[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[kra]
[koukando_up]
[tris_tatie_warai]
#トリスタン
	「悪いな。厨房の入り口付近に置いてあるから、物置部屋に持っていってくれ」[p]
#
[tris_tatie_ryoukai]
#トリスタン
	「くれぐれも気を付けろよ」[p]
#
[chara_kakusu]
;物置部屋

[anten]
[bg storage="kisidanrouka_tasogare.jpg"]
#&f.name	
（えーと・・・ここだよね）[p]
#
[bg storage="hune_souko_tasogare.jpg"]
[playse storage="nokku_tairakomori.ogg"]

#&f.name	
「クライストさん・・・ご飯・・・」[p]

#
#&f.name	
「あれ？誰もいない・・・？」[p]
#[p]
#

[kra_tatie_touroku]
[kra_tatie_show]

#クライスト	
「何か用？」[p]

#

#&f.name	
「きゃっ・・・きゃああああ！！！」[p]

#
[kra_tatie_mihiraki]

#クライスト	
「そんなに驚かなくても・・・」[p]

#
#&f.name	
「いつの間に後ろにいたの！？」[p]

#

[kra_tatie_smile]
#クライスト	
「さっきからいたよ？」[p]

#
#&f.name	
（ドアから入ってきたし、その時は誰もいなかったのに・・・どういうこと？）[p]

#

[kra_tatie_bisyou_youen]
#クライスト	
「あ、夕食かな？ありがとう。
[kra_tatie_yokome]
なんか今日は遅いなあと思ってたんだけど」[p]

#
#&f.name	
「トリスタンがお腹壊しちゃったみたいで・・・」[p]


[kra_tatie_mihiraki]
#クライスト
「ああ・・・・・・・・・。
[kra_tatie_yokome]
そうなんだ。大変だね」[p]

#
#&f.name	
（・・・ん？）[p]
#[p]
#

[kra_tatie_normal]
#クライスト	
「もしかして、食べ過ぎかな？」[p]

#
#&f.name	
「えっ・・・どうしてわかるの？」[p]
#


[kra_tatie_yokome]
#クライスト	
「ここって結構、色々と筒抜けなんだよね」[p]

#
#&f.name	
「はあ・・・」[p]

#

[kra_tatie_bisyou_youen]
#クライスト	
「あ、なんならこのまま一緒に食べてく？」[p]

#

#&f.name	
「ど、どうしてそうなるの！」[p]

#

[kra_tatie_smile]

#クライスト	
「うーん・・・密室に女の子と二人っきりだとさ・・・男としてはやっぱり」[p]

#
#&f.name	
「け、結構です！」[p]

#

[kra_tatie_mihiraki]
#クライスト	
「あれ、残念。[name]ちゃんに食べさせて欲しかったのに」[p]

#
[image layer=3 page=fore visible=true storage="black.png" name="kuro" x=0 y=0 time=10]
[playse storage="simerusizuka_onjin.ogg"]
[chara_kakusu]


[bg storage="irainheya_yoru_tasogare.jpg"]
[free name="kuro" layer=3]
#&f.name	
「はあ・・・。疲れた・・・もう寝よう・・・」[p]

#



[jump target=*kra_esa_end]



*kra1_2
[free name="sentakusi" layer=0]
[ka]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[tris_tatie_metoji]
#トリスタン
	「そうか・・・まあ、一食ぐらい抜いたって死にゃあしないだろう」[p]

#
[tris_tatie_ryoukai]
#トリスタン
	「腹が今日中に良くなったら俺が持ってく」[p]

#
[chara_kakusu]


	
*kra_esa_end
[eval exp="f.event_8_kra_esa=0"]
[eval exp="f.event_8_otukai_end=0"]


[endif]

[eval exp="f.map=0"]
[endmacro]
*end

[return]