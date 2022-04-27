

[macro name="erumu_keiko_event"]

[if exp="f.event_sub_14[5]==1&&f.friend==0&&f.date_now!=1&&f.gales_yes==1&&f.event_main_14_days>0"]

[message_settei_ad]
[fadeoutbgm time=1000]
#？	
「わっ・・・わああああーー！！！」[p]
#

[playbgm storage="struggle.ogg"]
#&f.name	
「！？」[p]
#
#&f.name	
「だ、大丈夫ですか！？一体・・・」[p]
#
#男	
「も、モンスターだ、モンスターが・・・この森では出たことなんかなかったのに・・・！き、君も早く逃げたほうがいい！！」[p]
#
#&f.name	
「！！！」[p]
#


[eval exp="f.battle_event_14_keiko=1"]
[eval exp="f.monster_group_18=4"]

[battle_start]



*keiko_battle_end	
[anten]

;戦闘

[if exp="f.irain_move==0"]
[bg storage="keiko_yuu_tasogare.jpg"]
[else]
[bg storage="keiko_tasogare.jpg"]
[endif]

[message_settei_ad]
#&f.name	
「大丈夫ですか？」[p]
#
#男	
「ああ、ああ・・・助かったよ・・・ありがとう。君、強いんだね・・・」[p]
#
#&f.name	
「一応、地方騎士団員なんです。お怪我はありませんか」[p]
#
#男	
「ああ、大丈夫だよ、ここには薬に使う薬草を取りに来るんだ。まさかモンスターが出るなんて」[p]
#
#&f.name	
「薬に使うって・・・もしかしてお医者さんの方ですか？」[p]
#
#男	
「ああ、私は王都で医者をやっているんだ。本当に助かったよ・・・ありがとう」[p]
#
#&f.name	
「気をつけてくださいね。依頼してくだされば護衛をおつけすることもできると思います」[p]
#
#男	
「ああ、もし困ったときは依頼するよ。ああこれ、もしよかったら。騎士団の人なら、きっと役に立つと思う」[p]
#
;アイテムを手に入れた！！
[event_battle_item_get_2]
[town_trust_up]

#&f.name	
「あ、ありがとうございます！」[p]
#
#男	
「お礼を言うのはこちらだよ。それじゃ、本当にありがとう！」[p]
#
#&f.name	
「ふう・・・よかった・・・ん？」[p]
#
;足音
[playse storage="walk-tussock1_koukaonlabo.ogg"]



#？
「・・・」[p]
#
[gales_tatie_touroku]
[gales_tatie_show]
[stopse]
#&f.name	
（あ、あの人・・・前に見た・・・）[p]
#
#&f.name	
（というか、こんなところで何を・・・モンスターも出るし、危ないよね・・・）[p]
#
#&f.name	
「あ、あの・・・」[p]
#


[if exp="f.gales_kusuri_cur==1"]
#？
「・・・またあなたですか、何か御用ですか」[p]
#
[elsif exp="f.gales_kusuri_cur!=1"]
#？
「・・・何か御用ですか」[p]
#
[endif]

#&f.name	
「いえ、あの・・・ここで何を・・・モンスターも出ますし、危ないですよ」[p]
#

[gales_tatie_metoji]
#？	
「・・・関係ありません」[p]
#
#&f.name	
「その・・・モンスターに襲われたら、怪我だけじゃすまないことも・・・」[p]
#
[gales_tatie_ha]
#？	
「関係ありません。私がモンスターに襲われようが、あなたには関係のないことです」[p]
#
#&f.name	
「か、関係なくはないです、私は騎士ですので、王国民を守るのが仕事で・・・」[p]
#
[gales_tatie_metoji]
#？	
「自分の身なら自分で守れます。問題ありません」[p]
#
#&f.name	
（・・・取りつく島もない・・・）[p]
#

[gales_tatie_normal]
#？	
「必要な薬草はこれで全部か・・・ここにはもう用はないな」[p]
#



#&f.name	
「あっ、あの・・・
[playse storage="walk-tussock1_koukaonlabo.ogg"]
[chara_hide_all][chara_off]
はぁ」[p]
#
[stopse]


#&f.name	
（必要な、薬草・・・？あの人もお医者とか・・・だったりするのかな）[p]
#
[eval exp="f.gales_score=1"]
[eval exp="f.event_sub_14[5]=0"]
[eval exp="f.event_sub_14_sumi[5]=1"]


[elsif exp="f.event_sub_14[6]==1&&f.friend==3&&f.event_main_14_days>0"]
[message_settei_ad]

[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「・・・・・・」[p]
#

#&f.name	
「？クライストさん？」[p]
#

[kra_tatie_yokome]
#クライスト	
「[name]ちゃん、あのさ・・・ちょっと気になるところがあるんだけど、行っていいかな」[p]
#

#&f.name	
「ええと・・・この近くなの？」[p]
#

[kra_tatie_normal]
#クライスト	
「うん・・・いいかな？」[p]
#

#&f.name	
「か、構わないけど・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「ありがとう、じゃ、行こうか」[p]
#

[chara_hide_all]
[anten]
[playse storage="walk-tussock1_koukaonlabo.ogg"]
;ガサガサ
;森の奥
#&f.name	
（稽古の森の奥って、こんなふうになってたのか・・・ずっと通ってたけど気にしたことなかったな・・・）[p]
#

[stopse]
#&f.name	
「・・・あれ？」[p]
#

[kra_tatie_show_tall]
#クライスト	
「・・・・・」[p]
#

[if exp="f.irain_move>0"]
[bg storage="mazoku_iseki.jpg"]
[elsif exp="f.irain_move==0"]
[bg storage="mazoku_iseki_yuu.jpg"]
[endif]

;目の前開ける　遺跡の後
[playbgm storage="gaia_musmus.ogg"]
#&f.name	
「ここ、って・・・」[p]
#

#&f.name	
（なんだろう・・・村の、跡・・・？）[p]
#
#&f.name	
「昔何かがあった・・・のかな」[p]
#

[kra_tatie_yokome]
#クライスト	
「そうみたいだね。建物の土台の残骸と、人々が生活していた跡がある」[p]
#

#&f.name	
「こんな森の奥に、どうして・・・」[p]
#

[fadeoutbgm time=1000]

[kra_tatie_mehuse]
#クライスト	
「・・・古代魔族」[p]
#

#&f.name	
「えっ」[p]
#

#&f.name	
（ま、族・・・？）[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・・・・」[p]
#

#&f.name	
「あの、クライスト、さん・・・？」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・ごめん、もう行こうか」[p]
#

#&f.name	
「えっ・・・あの・・・」[p]
#

[kra_tatie_mehuse]
#クライスト	
「ここのことは、とりあえずグレッグ団長に報告しておこう」[p]
#

[chara_hide_all][chara_off]
#&f.name	
「う、うん・・・」[p]
#

#&f.name	
（クライストさん・・・どうしたんだろう・・・マゾク・・・って・・・？）[p]
#
[eval exp="tf.tuika_num = 2"]
[eval exp="tf.kaiwa_num  = 22"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]
[eval exp="f.event_sub_14[6]=0"]
[eval exp="f.event_sub_14_sumi[6]=1"]


[endif]


*end

[jump storage="scenario_2/map_event/map_event_keiko_macro.ks" target=*map]

[endmacro]

[return]