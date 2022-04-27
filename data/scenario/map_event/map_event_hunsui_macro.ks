

;噴水
[macro name="map_event_hunsui_macro"]

[map_flag_delete]
[eval exp="f.place_creru_hunsui=1"]

[if exp="f.event_sakaba==1"]

[message_settei_ad]
#&f.name
「ここじゃないみたいだよ」[p]
#
[message_kakusu_ad]


[jump target=*map]


;迷子
[elsif exp="f.event_1_maigo==1"]

[free name="event" layer=2]
[bg storage="crerumatinaka3_tasogare.jpg"]

[message_settei_ad][skip_button]
#&f.name
「あれ？」[p]
#

#子供
「・・・ヒック・・・ヒック・・・ママあ・・・どこ？」[p]
#


#&f.name
「・・・迷子・・・かな？」[p]
#


#&f.name
「どうしよう・・・」[p]
#
*choice_event_1
[clearstack][freeimage layer=0]

[sentakusi][r]【迷子みたい。声をかける？】

[glink target=*ce1_1 text="（声をかける）" size=17 width=600 x=65 y=200]
[glink target=*ce1_2 text="（ほうっておく）" size=17 width=600 x=65 y=260]

[s]

*ce1_1

[free name="sentakusi" layer=0]

[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]

#&f.name
「どうしたの？お母さんとはぐれちゃったの？」[p]
#


#子供
「お、おねえちゃん・・・う、うん、気付いたらどこにもいなくて・・・」[p]
#


#&f.name
「わかった。じゃあ一緒に探してあげる。だからもう泣かないで」[p]
#


#子供
「おねえちゃん・・・うん！！」[p]
#




*find
[bg storage="crerumatinaka3_tasogare.jpg"]
#&f.name
「さて、どこを探したらいいのかな・・・」[p]
#

[episode_hyouji_only][sentakusi][eval exp="f.sentakuchuu= 1 "][r]【どこを探そう？】

[glink target=*ce2_1 text="（酒場・食堂）" size=17 width=600 x=65 y=200]
[glink target=*ce2_2 text="（裏通り）" size=17 width=600 x=65 y=260]
[s]

*ce2_1
[free name="sentakusi" layer=0]

[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]


#&f.name
「あ！！」[p]
#

#子供
「ママ！！」[p]
#

#母親
「坊や！！」[p]
#

#&f.name
「よかった・・・」[p]
#

#子供
「おねえちゃん、ありがとう」[p]
#

#母親
「あなたがうちの子を助けてくださったんですね。ありがとうございます」[p]
#

#&f.name
「いえ、私は何も・・・一緒に探しただけで」[p]
#

#母親
「本当に心配だったんです。あ・・・腰に剣が・・・もしかしたら地方騎士の方ですか？」[p]
#

#&f.name
「あ、はい、私・・・まだ見習いだけど・・・[name]って言います」[p]
#

#母親
「地方騎士団の[name]さんですね。本当にありがとうございました」[p]
#

#子供
「おねえちゃんありがとう！バイバイ！！」[p]
#

#&f.name
「うん、気をつけてね！！」[p]
#


街の人の信頼度がアップ！[p]
魅力が3アップ！[p]
[eval exp="f.town_trust=f.town_trust+3"]
[eval exp="f.irain_charm=f.irain_charm+3"]
[playse storage="kirakira_onjin.ogg"]
[image layer=3 page=fore name="kirakira" storage="kirakira.png" x=0 y=0 time=1000]
[free name="kirakira" layer=3 time=500]

[image layer=3 page=fore name="kirakira" storage="kirakira1.png" x=0 y=0 time=1000]
[free name="kirakira" layer=3 time=500]

[image layer=3 page=fore name="kirakira" storage="kirakira2.png" x=0 y=0 time=1000]
[free name="kirakira" layer=3 time=500]

[image layer=3 page=fore name="kirakira" storage="kirakira3.png" x=0 y=0 time=1000]
[free name="kirakira" layer=3 time=500]
[eval exp="f.event_1_maigo=0"]
[jump target=*back]










*ce2_2
[free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

[bg storage="creru_uradoori.jpg"]

#&f.name
「誰もいない・・・ここじゃないみたいだね・・・」[p]
#

[jump target=*find]





*ce1_2
[free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]




#&f.name
「まあいいか。誰かが助けるよね」[p]
#



*back
[jump storage="episode/epi1.ks" target=*map1]




[elsif exp="f.event_2_oyaji==1"]


[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]
[message_settei_ad][skip_button]
#&f.name
「・・・ん？」[p]
#

#オヤジ                
「悪かった！悪かったって！頼むから入れてくれー」[p]
#                  

#&f.name            
「なんだろう・・・家のドアの前でおじさんが・・・」[p]
#                  

#オヤジ                の奥さん
「何言ってんだい！！毎日毎日飲んでは朝帰りして！！あたしゃもう頭に来てるんだよ！」[p]
#                  



*choice_event_2_oyaji

#&f.name            
「女の人の声が家の中から・・・これは・・・」[p]
#                  

[sentakusi][r]【どうしよう？】

[glink target=*ce2_oyaji_1 text="（オヤジに話しかける）" size=17 width=600 x=65 y=200]
[glink target=*ce2_oyaji_2 text="（放っておく）" size=17 width=600 x=65 y=260]
[s]

*ce2_oyaji_1
[free name="sentakusi" layer=0]

[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]


#&f.name            
「あの・・・どうかしたんですか？」[p]
#                  
#オヤジ                
「なんだいお嬢ちゃんは・・・」[p]
#                  
#&f.name            
「あ、あの私、地方騎士団の者です、まだ、見習いですけど・・・
[r]何か、力になれたらと思って・・・」[p]
#                  
#オヤジ                
「騎士団の方々にゃ関係ねえよ」[p]
#                  
#&f.name            
「で、でもご近所の方の目もありますし・・・」[p]
#                  
#オヤジ                
「・・・はあ・・・」[p]
#                  
#オヤジ                
「かみさんが家に入れてくんねえんだよ・・・」[p]
#                  
#&f.name            
「さっき、朝帰りがどうって言ってましたね・・・」[p]
#                  
#オヤジ                
「う・・・確かに俺は、昨日も今日も朝帰りしてたさ・・・」[p]
#                  
#&f.name            
（・・・・・・）[p] 
 #              
#オヤジ                
「だけどなあ！閉め出すこたねえだろ！！」[p]
#                  
#オヤジ の奥さん
「あったりまえだろこのバカ亭主！！一日そこで反省してな！！」[p]
#                  
#オヤジ                
「頼むかあちゃんー、俺が悪かったってー」[p]
#                  
#&f.name            
（・・・うーん・・・）[p] 
 #              

[jump target=*choice_event_2_oyaji_2]


*ce2_oyaji_2
[free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.event_2_oyaji=0"]
#&f.name            
「うん、私には関係ないよね。余計な口は出さないでおこう」[p]
#    

[jump target=*end]

              




*choice_event_2_oyaji_2

[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【うーん・・・】

[glink target=*ce2_oyaji_2_1 text="（奥さんを説得する）" size=17 width=600 x=65 y=200]
[glink target=*ce2_oyaji_2_2 text="（自業自得だから放っておく）" size=17 width=600 x=65 y=260]
[s]

*ce2_oyaji_2_1
[free name="sentakusi" layer=0]

[cm]
[playse storage="decision5_koukaonlabo.ogg"]
[w]


#&f.name            
「あの、私地方騎士団の、[name] って言います。
周りの方のこともありますし、ご主人を家に入れてあげてくれませんか」[p]
#                  

#オヤジ の奥さん
「なんだい騎士団の人まで呼んできて！！卑怯な男だね！！」[p]
#                  

#&f.name            
「あ、いいえ、私が通りかかっただけなんです、
でも、ご主人も反省なさっているように見えますし・・・」[p]
#                  


#オヤジの奥さん
「この亭主は毎回これなのさ、謝り倒すくせに次の日には同じことをする！これくらいやらないと薬にもならないさ！」[p]
#                  

#オヤジの奥さん
「家には入れないよ！！」[p]
#                  

#&f.name            
（うーん・・・でもこのままなのも・・・結構街の人たちの視線集めちゃってるし・・・）[p] 
 #              

#&f.name            
（それなら・・・）[p]  
#              

#&f.name            
「それなら、ええと・・・一度ご主人の身柄を騎士団でお預かりするのはどうでしょうか」[p]
#                  

#オヤジ                
「えっちょっと待てよ俺、しょっ引かれるつうのか！！？？」[p]
#                  

#&f.name            
「騎士団内で一日反省してもらって、それからお家に帰すと言うことで」[p]
#                  

#&f.name            
「ここで反省も、街の他の方々のこともありますし・・・可能かどうか、上司に伺いを立てます」[p]
#                  

#&f.name            
（実際、できるのかはわからないんだけど・・・とりあえず一度、セレさんに相談して・・・）[p]  
#              

#オヤジ の奥さん
「ご面倒をかけて申し訳ありませんねえ、それならお願いしようかしら」[p]
#                  

#オヤジ                
「ちょ、ちょっと待てかあちゃん！俺に牢屋に入れってのか！！」[p]
#                  

#オヤジの奥さん
「別に牢屋とは言ってないだろうよ？ちょっと騎士団の人に預かってもらうだけじゃないか」[p]
#                  

#オヤジ                
「い、いや嬢ちゃん、じゃない[name] さん、それは勘弁して欲しいよ・・・」[p]
#                  

#&f.name            
「それなら・・・もう朝帰りはしませんか？」[p]
#                  

#オヤジ                
「しない！しないよ！！酒も、へ、減らす！！」[p]
#                  

#オヤジ                
「だからしょっぴくのは勘弁してくれー」[p]
#                  

#&f.name            
「だそうですが・・・奥さん、どうします？」[p]
#                  


#オヤジ の奥さん
「・・・本当だろうね」[p]
#                  

#オヤジ                
「本当！！ガイアに誓うよ！！」[p]
#                  

#&f.name            
「もし、今後同じことがあれば騎士団に相談してください。いつでも力になりますので」[p]
#                  

#オヤジ                
「ひええ・・・」[p]
#                  

#オヤジの奥さん
「ふう・・・わかったよ。それなら入れてやる。ただしまたやったら、今度こそ地方騎士団に預かってもらうからね！！」[p]
#                  
;鍵開けるおと

#オヤジ                
「ふいい・・・助かったあ・・・」[p]
#   

[playse storage="close11_macchi.ogg"]      
[playse storage="door00_macchi.ogg"]          
#オヤジの奥さん
「[name] さん、ご迷惑をおかけしましてすみません。
・・・あら、ずいぶんとお若いのねえ」[p]
#                  

#&f.name            
「えっと私・・・まだ、見習いなんです。
こちらこそ出過ぎた真似しちゃったかな・・・すみません」[p]
#                  

#オヤジ の奥さん
「いいえ、地方騎士団の方がここまで親身になってくださるなんて。
まだ若いのにずいぶんとしっかりしてるんだねえ」[p]                  
「・・・あんただったらきっといい地方騎士になれるよ、
頑張ってね」[p]
#                  

#&f.name
「ありがとうございます！」[p]
#






[eval exp="f.town_trust=f.town_trust+3"]


[town_trust_up]




[eval exp="f.event_2_oyaji=0"]
[eval exp="f.event_2_oyaji_sumi=1"]
街の人の信頼度がアップ！[p]

魅力が5アップ！[p]

[eval exp="f.irain_charm=f.irain_charm+5"]


[jump target=*end]





*ce2_oyaji_2_2
[free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]


#&f.name            
「奥さんの機嫌が直るまで、頑張ってくださいね」[p]
#                  
#オヤジ                
「ううー・・・」[p]
#   
[eval exp="f.event_2_oyaji=0"]
[jump target=*end]               

[message_kakusu_ad]

[creru_outo_map]



[elsif exp="f.event_2_kra_meal==1"]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]
[message_settei_ad][skip_button]
[call storage="live2d_aho_macro.ks"]


#&f.name
（あれ？あれって・・・）[p]
#

[live2d_load]
[live2d_on][live2d_new name="aho" model_id="aho" lip=true jname="？"]
[live2d_load_off]
[live2d_show name="aho" y=-1.5 x=0.0 scale=3.5]

#女
「とにかく助かったよ。あの男ほんっとにしつこかったからさあ」[p]
#

[aho_head_left_z]
[aho_body_left_z]

#？
「はは、力になれたならよかったよ」[p]
#

[aho_head_normal]
[aho_body_normal]
[aho_face_normal]
#女
「あんたみたいないい男にだったらしつこいのは大歓迎なんだけどねえ」[p]
#

[aho_face_metoji_warai]
#？
「そう？嬉しいな、ありがとう」[p]
#


#&f.name
（・・・・・・）[p]
#

[aho_face_normal]
#女
「さて、そろそろあたしはいくよ、でも、本当に報酬はいらないのかい？」[p]
#

[aho_arms_right_setumei]
[aho_head_under_y]
[aho_head_normal]

[aho_body_right_z]
[aho_head_right_z]
[aho_eyes_right]
#？
「いいんだよ、俺はお金に困ってないしね」[p]
#

[aho_eyes_normal]
[aho_head_normal]
#女
「そうかい、とにかくありがとうね、恩に着るよ！」[p]
#

[live2d_fadeout time=1000]
#&f.name
（あの酒場でのことって・・・もしかしてあの女の人に頼まれて・・・？）[p]
#

[aho_arms_normal]
[live2d_mod name="aho" y=-2.6 scale=5.7]
[live2d_fadein time=1000]
#？
「やあ、こんなとこで何してるの？」[p]
#

#&f.name
「きゃあ！」[p]
#

[aho_face_mihiraki]
[aho_body_above_y]
#？
「あれ、ごめん驚かせちゃった」[p]
#
[aho_body_normal]
[aho_face_normal]

#&f.name
（い、いつの間に・・・というか、私がここにいるの気づいてた・・・？）[p]
#

[aho_face_bisyou_youen]
[aho_body_right_z]
[aho_head_right_z]

#？
「驚いた顔もかわいいね」[p]
#


#&f.name
「・・・・・」[p]
#

[aho_body_normal]
[aho_head_normal]
[aho_face_komari_warai]
#？
「そんなに警戒しなくても。

[aho_face_normal]
ああ、そうだ、よかったらこれからご飯いかない？」[p]
#

[aho_eyes_right]
[aho_eyes_normal]
#&f.name
「えっ・・・」[p]
#


[aho_head_left_x]
[aho_body_left_z]
[aho_head_normal]
[aho_face_normal]
#？
「もしまだだったら、だけど。好きなのごちそうしてあげる」[p]
#

#&f.name
（え・・・ええ・・・）[p]
#


*event_2_kra_meal_choice
[sentakusi][eval exp="f.sentakuchuu= 1 "][r]【この人と食事に・・・？】

[glink target=*k_m_1 text="（いく）" size=17 width=600 x=65 y=200]
[glink target=*k_m_2 text="（いかない）" size=17 width=600 x=65 y=260]

[if exp="f.live2d_on==1"]
[live2d_fadeout time=1000]
[hidemenubutton][button_menu]
[else]
[hidemenubutton][button_menu]
[endif]

[s]



*k_m_1
 [free name="sentakusi" layer=0]
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]
[call storage="store_macro.ks"]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
;仲間フラグ
[eval exp="f.friend=3"]

[aho_face_normal]
#？
「本当、いいの？嬉しいなあ。それじゃ、どこの店にする？」[p]
#


[restaurant_choice]






[if exp="f.r_moon==1"]

[aho_face_yokome_warai]
#？
「あ、このお店美味しいよね、俺も好きだな」[p]
#
[aho_face_normal]
[kra]
[koukando_up]
[endif]
[live2d_fadeout time=1000]



[restaurant_haikei]


[call storage="live2d_aho_macro.ks"]

[call storage="kaiwa/krakaiwa_new.ks"]


[live2d_fadein time=1000]



[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「何食べる？」[p]
#
[live2d_fadeout time=1000]

[menu_choice]



[bg storage="&f.shokuji_haikei"]
[live2d_fadein time=1000]
[aho_face_normal]


#&f.name
（よく考えたら、あんまり知らない人なんだよね・・・しかも、もしかしたら・・・）[p]
#


[aho_face_mihiraki]
[aho_head_right_z]
[aho_body_right_z]
#？
「なんだか難しい顔してるけど、どうしたの？大丈夫？」[p]
#

[aho_face_normal]
[aho_body_normal]
[aho_head_normal]
#&f.name
（・・・誰のせいだと・・・）[p]
#

;[aho_body_kataageru]
[aho_face_metoji_warai]
[aho_face_normal]
[aho_eyes_above]
[aho_body_normal]
#？
「せっかくなんだから楽しく食べようよ」[p]
#

#&f.name
「・・・・・・」[p]
#


[aho_face_mehuse]
[aho_head_left_z]
[aho_body_left_z]
[aho_face_komari]


#？
「・・・俺のこと、そんなに信用ならない？」[p]
#

[aho_body_normal]
[aho_head_normal]
#&f.name
「・・・それは・・・」[p]
#

[aho_face_metoji]
#？
「まあそれもそうか。
[aho_face_normal]
でも、一緒に来てくれたってことは、少しは気を許してもらってるって思っていいのかな」[p]
#


[kra_hair_comment]
[kra_equip_comment]


#&f.name
「・・・・・・・・」[p]
#

#&f.name
（・・・やっぱり、この人・・・もしかしたら悪い人かもだし・・・来るべきじゃなかったかな・・・でも・・・）[p]
#


#&f.name
（この人、確か傭兵さん、なんだよね・・・？）[p]
#

[aho_face_mihiraki]
[aho_face_normal]
#？
「ん？何？俺に何か聞きたいことある？」[p]
#

[aho_body_right_z]
[aho_head_right_z]
[aho_body_normal]
[aho_head_normal]
[call storage="kaiwa/krakaiwa_new.ks"]
;会話イベント
[krakaiwa]



[message_settei_ad]




[aho_face_normal]
#？
「そろそろ出ようか。混んできたしさ」[p]
#

お腹がいっぱいになった！！[p]
[playse storage="item_status_up_onjin.ogg"]
;------------------能力値アップ
[if exp="f.r_kajikaji==1"]
;頭脳
[eval exp="f.irain_brain=f.irain_brain+3"]
頭脳が３アップ！！[p]
[elsif exp="f.r_hirayama==1"]
[eval exp="f.irain_brain=f.irain_brain+2"]
頭脳が２アップ！！[p]
[elsif exp="f.r_oikawa==1"]
[eval exp="f.irain_brain=f.irain_brain+1"]
頭脳が１アップ！！[p]



[elsif exp="f.r_romana==1"]
;技術
[eval exp="f.irain_tec=f.irain_tec+3"]
技術が３アップ！！[p]

[elsif exp="f.r_beruzoku==1"]
[eval exp="f.irain_tec=f.irain_tec+2"]
技術が２アップ！！[p]
[elsif exp="f.r_moon==1"]
[eval exp="f.irain_tec=f.irain_tec+1"]
技術が１アップ！！[p]
[elsif exp="f.r_bejibeji==1"]
[eval exp="f.irain_charm=f.irain_charm+1"]
魅力が１アップ！！[p]
;魅力

[elsif exp="f.r_poteto==1"]
[eval exp="f.irain_charm=f.irain_charm+2"]
魅力が２アップ！！[p]


[elsif exp="f.r_kyarokyaro==1"]
[eval exp="f.irain_charm=f.irain_charm+3"]
魅力が３アップ！！[p]


[endif]

;------------
[live2d_fadeout time=1000]
[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yoru_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]


[live2d_mod name="aho" y=-1.7 x=0.0 scale=4.3]
[live2d_fadein time=1000]

#？
「それじゃね、また次にあったときはデートしよう？」[p]
#

#&f.name
（・・・・・・）[p]
#

[live2d_fadeout time=1000]
[live2d_off][live2d_delete_all]
[anten]

;フラグおふ
[eval exp="f.r_kajikaji=0"]
[eval exp="f.r_hirayama=0"]
[eval exp="f.r_oikawa=0"]

[eval exp="f.r_romana=0"]
[eval exp="f.r_beruzoku=0"]
[eval exp="f.r_moon=0"]

[eval exp="f.r_bejibeji=0"]
[eval exp="f.r_poteto=0"]
[eval exp="f.r_kyarokyaro=0"]

;仲間フラグ
[eval exp="f.friend=0"]
[eval exp="f.event_2_kra_meal=0"][refresh_hanyou]
[jump target=*map]





;------------------------------------------------------------
*k_m_2
[hidemenubutton][hidemenu]
[if exp="f.live2d_on==1"]
[live2d_fadein time=1000]
[endif]

 [free name="sentakusi" layer=0]
[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]

#？
「そっか。それじゃあまたね」[p]
#

[eval exp="f.event_2_kra_meal=0"]
[live2d_hide name="aho"]
[live2d_off][live2d_delete_all][refresh_hanyou]
[creru_outo_map]















[else]




[if exp="f.irain_move==0"]
[bg storage="crerumatinaka3_yuugata_tasogare.jpg"]
[else]
[bg storage="crerumatinaka3_tasogare.jpg"]
[endif]
[message_settei_ad]
[item_get]

*end
*map
[message_kakusu_ad]

[creru_outo_map]

[endif]

[endmacro]







[return]
