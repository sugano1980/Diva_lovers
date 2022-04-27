
[macro name="rusia_show_ikari_event"]
[chara_on][chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 left=0 time=300]
[endmacro]

[macro name="aho_show_event"]
[live2d_on][live2d_show name="aho" y=-1.8 x=0.0 scale=4.2]
[endmacro]

[macro name="rusia_kaiwa"]

[call storage="scenario_2/live2d_sub_macro.ks"]
[bg storage="creru_gate_yoru_tasogare.jpg"]

[rusia_tatie_show_event]
#ルシア	

「ほほほほほほ！！所詮人間の力など・・・このようなものよ・・・」[p]
#

[rusia_tatie_kyouki]
#ルシア	
「さあ、せめてもう苦しまずに息の根を止めてやろう・・・」[p]
#
[call storage="scenario_2/live2d_sub_macro.ks"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[chara_off][chara_hide_all]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_fadeout time=1000]
[live2d_on][live2d_show name="aho" y=-1.8 x=0.0 scale=4.2]
[live2d_mod name="aho" idle="Arms_kamae"]
[live2d_motion name="aho" mtn="Arms_kamae"]
[rusia_tatie_kamae]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[wait time=1000]
[image layer=2 page=fore storage="aka.png" name="aka" x=0 y=0]
[image layer=2 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire1.png" x=80 y=120]
[playse storage="battle_se/honoo_tairakomori.ogg"]
[call storage="scenario_2/episode/scenario_macro.ks"]
[call storage="scenario_2/live2d_rans_rei_macro.ks"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[keyframe name="fuwafuwa"]
[frame p=100% scale=2 y=-100]
[endkeyframe]

[kanim keyframe ="fuwafuwa" name="anime_rusia_skill" time=1000]
[wait time=30]
[free name="anime_rusia_skill" layer=2]
[image layer=2 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire0.png" height="960" width="1280" x=0 y=20]
[wait time=30]
[free name="anime_rusia_skill" layer=2]
[image layer=2 page=fore visible=true name="anime_rusia_skill" storage="battle_animation/rusia/rusia_fire2.png" height="960" width="1280" x=0 y=20]
[wait time=30]



[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=1000]
[wait time=3000]

#&f.name	
（そんな・・・ここで・・・負けるの・・・？）[p]
#	
[image layer=3 page=fore storage="black.png" name="aka" x=0 y=0 time=1000]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[wait time=800]
;SE　結界。弾く音
[playse storage="agureasu_macchi.ogg"]	
[image layer=3 page=fore storage="kra_baria0.png" name="baria" x=0 y=0]
[wait time=30]
[free name="baria" layer=3]
[image layer=3 page=fore storage="kra_baria1.png" name="baria" x=0 y=0]
[wait time=30]
[free name="baria" layer=3]
[image layer=3 page=fore storage="kra_baria2.png" name="baria" x=0 y=0]
[wait time=30]
[free name="baria" layer=3]
[image layer=3 page=fore storage="kra_baria3.png" name="baria" x=0 y=0]
[wait time=30]
[free name="baria" layer=3]
[image layer=3 page=fore storage="kra_baria4.png" name="baria" x=0 y=0]
[wait time=30]
[free name="baria" layer=3]
[image layer=3 page=fore storage="kra_baria.png" name="baria" x=0 y=0]
[wait time=500]
[free name="baria" layer=3]
[free name="aka" layer=2]
[free name="aka" layer=3]
[free name="anime_rusia_skill" layer=2]
[chara_kakusu]
#&f.name	

「・・・？」[p]
#

#&f.name	

「何が・・・起きたの・・・？」[p]
#

#&f.name	
（炎が・・・消えた？）[p]
#

[playbgm storage="kra_battle.ogg"]
[live2d_fadein time=1000]
#クライスト	

「・・・ごめんね、遅くなって」[p]
#

#&f.name	

「えっ・・・」[p]
#


[live2d_mod name="aho" idle="Idle_normal"]
[aho_arms_normal]
[aho_face_bisyou_youen]
[aho_head_right_z]
[aho_head_normal]
[aho_arms_udekumi]
#クライスト	
「街のモンスターを一掃してたら、流石にちょっと時間掛かっちゃってさ」[p]
#
#&f.name	
「街の・・・モンスター・・・って・・・」[p]
#

[aho_face_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_arms_normal]
#クライスト	

「もう大丈夫。街は心配いらないから」[p]
#

[aho_face_mehuse]
[aho_mod_idle_normal_mehuse]
#クライスト	
「傷、治してあげるね」[p]
#

#&f.name	
（傷・・・治すって・・・？どうやって・・・）[p]
#

[playse storage="huku_koukaonlabo.ogg"]
#クライスト	
「さあ、見せて」[p]
#


[if exp="f.friend==1"]
#&f.name	
「あ、あの、私より先に、ランスロットを・・・！」[p]
#
[elsif exp="f.friend==2"]
#&f.name	
「あ、あの、私より先に、ライオネス を・・・！」[p]
#
[elsif exp="f.friend==5"]
#&f.name	
「あ、あの、私より先に、・・・えっと、グリフを・・・！」[p]
#

[endif]
[aho_mod_idle_normal]
[aho_face_mihiraki]
[aho_face_yareyare]
[aho_head_right_x]
[aho_head_left_x]
[aho_head_normal]
#クライスト	

「やれやれ、こう言うのって女の子が優先だろ？」[p]
#

#&f.name	

「そんなこと言ってる場合じゃ・・・！」[p]
#

[aho_face_komari_warai]
[aho_head_right_z]
[aho_body_right_z]
[aho_arms_right_setumei]
#クライスト	
「わかったよ」[p]
#

[aho_body_normal]

[aho_mod_idle_kokyu_only]
[aho_face_metoji]
[aho_head_under_y]
[playse storage="hikari_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true storage="ao.png" name="ao" x=0 y=0]
[image layer=2 page=fore visible=true name="ao" storage="siro.jpg" time=1000]
[live2d_fadeout time=1000]
[live2d_off][live2d_hide name="aho"]

[w][w][w]
[free name="ao" layer=2]
[stopse]
#&f.name	

（えっ・・・！？何・・・）[p]
#

#&f.name	

（傷が・・・）[p]
#



[if exp="f.friend==1"]
[rans_tatie_rei_touroku]
[chara_on][chara_show name="rans_rei" storage=&f.rans_rei_sinkoku top=0.5 left=0]
#ランスロット	
「・・・う」[p]
#
#&f.name	
「ランスロット！！！」[p]
#
[elsif exp="f.friend==2"]
[lioness_tatie_touroku]
[chara_on][chara_show name="lion" height="698" width="456" storage=&f.lion_otikomi top=-35]
#ライオネス 	
「・・・う」[p]
#

#&f.name	
「ライオネス ！！！」[p]
#
[elsif exp="f.friend==5"]

[chara_on][chara_show name="glif_rei" storage=&f.glif_rei_sinpai width="530" height="691" top=10]
#グリフ	
「・・・う」[p]
#
#&f.name	
「グリフ！！」[p]
#
[endif]

[chara_kakusu]
[rusia_tatie_show_event]

#ルシア	
「・・・小僧。・・・一体、何者だ。我の邪魔をしおるか」[p]
#
[chara_off][chara_hide name="rusia" time=500]

[kra_tatie_touroku]
[chara_on][chara_show name="kra" storage=&f.kra_bisyo_youen top=20]

#クライスト	

「何者か、だって？・・・あんたと同じ、化物だよ」[p]
#

#&f.name	
（えっ・・・）[p]
#
[chara_off][chara_hide name="kra" time=300] 
[rusia_show_ikari_event]
#ルシア	

「ほざけええええええ！！！！！我の邪魔をするならば、何者とて容赦はせん！！！」[p]
#

[config_true]
[chara_off][chara_hide_all]


[chara_on][chara_show name="kra" storage=&f.kra_bisyo_youen top=20]

#クライスト	

「・・・さあ、[name]ちゃん、できるだけ離れて、下がってて」[p]
#

[kra_tatie_metoji]
[playse storage="hikari_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true storage="ao.png" name="ao" x=0 y=0]
[image layer=2 page=fore visible=true name="ao" storage="siro.jpg" time=1000]
[w][w][w]
[free name="ao" layer=2]
[stopse]
#&f.name	

「あ・・・」[p]
#

[kra_tatie_yokome]
#&f.name	
（体が・・軽く・・・）[p]
#



#クライスト	

「そこの彼は、もう少し安静が必要みたいだから、庇ってあげたら」[p]
#

#&f.name	

「・・・クライストさん」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	

「うん。大丈夫だよ」[p]
#


[chara_off][chara_hide_all]
	
#&f.name	
（・・・化け物・・・って・・・）[p]
#

[if exp="f.friend==1"]
#&f.name	
「ランスロット、大丈夫？ここから、少し離れないと・・・」[p]
#
[config_true]
[chara_on][chara_show name="rans_rei" storage=&f.rans_rei_kunou top=0.5 left=0]
#ランスロット	

「・・・ああ・・・」[p]
#
[elsif exp="f.friend==2"]
[config_true]
[chara_on][chara_show name="lion" storage=&f.lion_otikomi top=-35]
#&f.name	
「ライオネス 、大丈夫？ここから、少し離れないと・・・」[p]
#
#ライオネス 	
「・・・ああ・・・」[p]
#
[elsif exp="f.friend==5"]

[config_true]
#&f.name	
「グリフ、大丈夫？ここから、少し離れないと・・・」[p]
#

[chara_show name="glif_rei" width="530" height="691" storage=&f.glif_rei_mehuse top=10]
#グリフ	
「・・・はい・・・あの、名前・・・」[p]
#
#&f.name	
「・・・う、うん・・・この間、仲間の人に名前呼ばれてるの、聞いたから・・・」[p]
#

[glif_tatie_rei_komari_warai]
#グリフ	
「そうですか・・・名前・・・覚えていてくださったんですね」[p]
#
#&f.name	
「う、うん・・・」[p]
#

[glif_tatie_rei_ketui]
#グリフ	
「・・・ル、ルシアは・・・？」[p]
#
#&f.name	
「大丈夫・・・クライストさんが・・・」[p]
#
#グリフ	
「クライスト・・・？」[p]
#
[glif_tatie_rei_sinpai]
#グリフ	
「う・・・」[p]
#
#&f.name	
「と、とにかくここ、離れよう？」[p]
#

#グリフ	
「は、はい・・・」[p]
#

[endif]

[chara_kakusu]

[endmacro]
;----------------------------------------------------------------------------------------------------------------------------
[macro name="rusia_tatakai"]
[anten]

[bg storage="creru_gate_yoru_tasogare.jpg"]	

[config_false]
[aho_show_event]
[live2d_fadein time=500]
#クライスト	
「あのさ・・・どうでもいいけど・・・自分の目的のために人に迷惑かけるのって、正直どうかと思うよ？」[p]
#
[live2d_fadeout time=500]
[rusia_show_ikari_event]
#ルシア	
「お前に我の怒りの何がわかる！！！！！」[p]
#

[chara_off][chara_hide name="rusia" time=300]
[live2d_fadein time=500]

[aho_head_above_y]
[aho_head_right_x]
[aho_eyes_right]
#クライスト	
「・・・わかりたくもないけど。どんな事情があるにせよ、正気の沙汰じゃないだろ？」[p]
#
[aho_head_normal]
[aho_eyes_normal]
[live2d_fadeout time=500]

[rusia_show_kyouki_event]
#ルシア	
「正気の沙汰ではないと・・・正気など、とうに捨てた。そのようなものになんの意味がある」[p]
#

#ルシア	
「魔剣を手に入れた時点で・・・『ヒト』であることに未練などない」[p]
#

[chara_off][chara_hide name="rusia" time=500]
[live2d_fadein time=500]
[aho_face_mehuse]
[live2d_mod name="aho" idle="Face_metoji"]
[aho_face_metoji]
[aho_head_under_y]

#クライスト	
「・・・そうか」[p]
#
[live2d_fadeout time=500]
[rusia_show_ikari_event]
#ルシア	
「貴様が一体何者なのか知らぬが・・・我の邪魔をするならば・・・誰であろうと殺すのみ」[p]
#
[chara_off][chara_hide name="rusia" time=300]
[live2d_fadein time=500]

[aho_mod_idle_kokyu_only]
[aho_face_yareyare]
[aho_head_above_y]
#クライスト	
「そう。じゃあやってみせてよ。
[live2d_mod name="aho" idle="Arms_kamae"]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[aho_arms_kamae]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=700]
[free name="aka" layer=2]
できるものならね」[p]
#
[live2d_fadeout time=500]
[live2d_off][live2d_delete_all]
[rusia_show_ikari_event]
#ルシア	
「ほっ・・・ほざけえええええっ！！！！！」[p]
#	
[chara_off][chara_hide name="rusia" time=300]
;[battle_start]
[refresh_hanyou]
[playbgm storage="kra_battle.ogg"]
[creru_iriguti_yoru]
[if exp="f.friend==1"]

#&f.name
（クライストさん・・・大丈夫かな）[p]
[config_true]
[chara_on][chara_show name="rans_rei" storage=&f.rans_rei_kunou left=0 top=0.5]
#ランスロット	
「・・・あいつ・・・」[p]
#
#&f.name	
「え・・・クライストさん？」[p]
#
[rans_tatie_rei_yokome]
#ランスロット	
「そう・・・か確か・・・そんな名前だったか・・・見たことがある。８年前に・・・」[p]
#
#&f.name	

「８年前・・・」[p]
#
[rans_tatie_rei_kunou]
#ランスロット	

「・・・っ」[p]
#
#&f.name	
「無理して話さないで、今は・・・」[p]
#

#ランスロット	
「気を付けろ・・・あいつは・・・」[p]
#
#&f.name	

「え・・・」[p]
#

[elsif exp="f.friend==2"]

#&f.name
（クライストさん・・・大丈夫かな）[p]
[config_true]
[chara_on][chara_show name="lion" storage=&f.lion_otikomi top=-35]
#ライオネス 
「っ・・・」[p]

#&f.name
「ライオネス 、大丈夫？」[p]

#ライオネス 
「あ、ああ・・・しかしあいつ・・・一体・・・」[p]

#ライオネス 
「傷だって・・・あっという間に・・・なんなんだ・・・」[p]

#&f.name
「うん・・・」[p]

#&f.name
（もう全然痛くない・・・傷も塞がってる）[p]

#&f.name
「不思議な力・・・あの剣も」[p]

#ライオネス 
「ああ・・・」[p]
#
[elsif exp="f.friend==3"]

#&f.name
（クライストさん・・・大丈夫かな）[p]
#
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"][wait time=2500]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=300]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=300]
[free name="aka" layer=2] 
[playse storage="battle_se/honoo_koukaonlabo.ogg"]
[wait time=1500]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[wait time=1500]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[free name="aka" layer=2] 
[playse storage="battle_se/kra_skill_2.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[free name="aka" layer=2] 
#&f.name
（すごい音・・・本当に大丈夫、なのかな・・・）[p]
#
#&f.name
「クライストさん・・・巻き添えにしたくないって・・・言ってたよね・・・力の制御が効かないってこと？」[p]
#

#&f.name
「ルシアの剣・・・魔剣ヴァエル・・・って言ってたよね・・・」[p]
#

#&f.name
（クライストさんの剣も・・・どこか似てるような・・・）[p]
#



[endif]
[chara_kakusu]

[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[playse storage="battle_se/mahoukakeru_koukaonlabo.ogg"]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[playse storage="battle_se/honoo_koukaonlabo.ogg"]
[wait time=1500]
[playse storage="battle_se/iainuki1_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=500]
[free name="aka" layer=2] 
[playse storage="battle_se/kra_skill_2.ogg"]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=50]
[free name="aka" layer=2] 


[fadeoutbgm time=1000]

[config_true]
[bg storage="creru_gate_yoru_tasogare.jpg"]
[rusia_show_ikari_event]
#ルシア	
「くっ・・・くそっ・・・こんな奴がクレールにいたとは・・・」[p]
#

[chara_off][chara_hide name="rusia" time=300]
[chara_on][chara_show name="kra" storage=&f.kra_yokome top=20]

#クライスト	
「まだやる？俺は全然大丈夫だけど」[p]
#
[chara_off][chara_hide name="kra" time=300]

[rusia_show_ikari_event]
#ルシア	
「今日のところは・・・ここで退いてやる・・・だが、必ず・・・！！！」[p]
#
[config_true]
[chara_off][chara_hide name="rusia"]
[chara_on][chara_show name="kra" storage="kra_tatie/Idle_gif_yareyare.gif" top=20]
	
#クライスト	

「やれやれ・・・お決まりのセリフ吐いちゃって・・・」[p]
#
[chara_off][chara_hide_all]

;----------------------------------------------------------------------
[endmacro]


[macro name="rusia_sonogo"]
[creru_iriguti_yoru]
#&f.name	
（静かになった・・・終わった・・・の？）[p]
#
[config_true]
[chara_on][chara_show name="kra" top=20]
#クライスト	
「・・・大丈夫？とりあえずは、もう心配ないよ」[p]
#

[kra_tatie_mihiraki]
#クライスト	

「ん？あれ？」[p]
#

[playse storage="jinari_tairakomori.ogg"]
[runisi]
[config_false]
[chara_move name="kra" left=-70]
[tris_tatie_touroku]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_ikari_kutiake.png" height="603" width="420" top=50 left=400]
#トリスタン	
「きっさまああああああああ！！また逃げ出したなあああ！！！」[p]
#
[kra_tatie_akireru][stopse]
#クライスト	
「だからさあ、気づくの遅いんだって」[p]
#
#トリスタン	
「街がこんな時にこんなとこで何してた！！ああっ！？」[p]
#
[kra_tatie_yareyare]
#クライスト	
「うーん、説明するのめんどくさいな」[p]
#
#トリスタン	
「なんだとっ！！」[p]
#
#&f.name	
「あの・・・トリスタン・・・クライストさんはそんなじゃ・・・」[p]
#


[if exp="f.friend==1"]
[chara_off][chara_hide name="kra" time=300]
[rans_tatie_rei_touroku]
[chara_on][chara_show name="rans_rei" storage=&f.rans_rei_mehuse width="585" height="762" left=-70 time=300 top=0.3]
#ランスロット	
「トリスタン・・・あまり奴を責めるな・・・やつは我々を助けてくれた」[p]
#
[tris_tatie_mihiraki][playbgm storage="shuuen_musmus.ogg"]
#トリスタン	
「ほ、本当ですか！？ランスロット様！？」[p]
#
[chara_off][chara_hide name="tris" time=300]
[chara_on][chara_show name="kra" left=350 top=20 time=300]
#クライスト	

「・・・・・・」[p]
#


#&f.name	
「ランスロット・・・大丈夫？」[p]
#
[chara_off][chara_hide name="kra" time=300]


[chara_on][chara_show name="rans_rei" storage=&f.rans_mehuse left=-70 time=300 top=0.5]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400 time=300]

[rans_tatie_rei_kunou]
#ランスロット	

「ああ・・・すまない、心配をかけるな・・・」[p]
#

[rans_tatie_rei_mayuhisome]
#ランスロット	

「・・・地方騎士団本部は、無事なのか？ライオネスたちは・・・」[p]
#
#トリスタン	

「本部はなんとか無事です。グレッグ団長もセレも・・・ライオネスと一緒に街のモンスターに対応してましたが、途中からいきなり・・・モンスターたちが消滅し始めて」[p]
#

[chara_off][chara_hide name="rans_rei" time=300]
[chara_on][chara_show name="kra" storage=&f.kra_yokome left=-70 top=20 time=300]

#クライスト	

「あ、それ、俺の手柄だよ」[p]
#

[tris_tatie_ikari]
#トリスタン	
「はあ！！？？馬鹿かお前は！？モンスターを消滅させるなんて人間にできるわけがなかろう！」[p]
#

[kra_tatie_metoji]
#クライスト	

「まあ、人間ならね」[p]
#

#&f.name	
（・・・クライストさんて・・・）[p]
#


[tris_tatie_ryoukai]
#トリスタン	

「ともかく、街のモンスターはいなくなったんで今怪我人の救助や・・・遺体の回収、モンスターに壊された街の片付け、今後の処理に当たっているところです」[p]
#

#&f.name	
（遺体・・・やっぱり、殺された人たちも・・・いるんだ）[p]
#
[runisi]
[ector_tatie_rei_touroku]
[ector_tatie_rei_show]
#エクター	
「ランスロット隊長！！ご無事でしたか！」[p]
#
[stopse]
[chara_off][chara_hide_all]

[config_true]
[chara_on][chara_show name="rans_rei"  width="585" height="762" top=0.3 time=300]

#ランスロット	

「・・・ああ、エクター。どうだ王都は？」[p]
#
[ector_tatie_rei_show]
#エクター	
「はい。モンスターが出現した際に、多くの都民が街中にいたせいか大きな被害が出てしまい・・・地方騎士とともに対応しました」[p]
#

#エクター
「ですが最初の被害以外は、できる限り最小限に抑えられたと認識しています」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「・・・そうか、ご苦労だった。後で詳しい報告を聞く。よくやったな。我が隊の被害は」[p]
#

#エクター	
「被害はありません。怪我人はゼロ、ただ疲弊しておりますので、休息が必要です」[p]
#

#&f.name	
（ランスロットの部隊って・・・すごいんだな）[p]
#

[ector_tatie_rei_mehuse]
#エクター	
「実のところ、モンスターが途中で消滅しまして・・・被害が抑えられたのはそのおかげでもあるのですが・・・あれはなんだったのか・・・」[p]
#
[config_false]
[chara_off][chara_hide_all][config_false]
[chara_on][chara_show name="kra" left=-70 top=20 time=300]
#クライスト	

「だから俺の手柄だって」[p]
#


[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400 time=300]
[tris_tatie_ikari]
[kra_tatie_yareyare]
#トリスタン	

「お前は黙ってろ！！」[p]
#

[chara_kakusu]
[config_true]
[chara_on][chara_show name="rans_rei"  width="585" height="762" top=0.3 time=300]
[ector_tatie_rei_show]

#エクター	

「ともかく、ウェルム団長からのお叱りを受けなければなりませんね」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「・・・私がすべての責任をとる。お前たちには咎めのないようにするから、安心していい」[p]
#

#エクター	

「隊長・・・」[p]
#

#&f.name	
（ランスロット・・・）[p]
#

[rans_tatie_rei_normal]
#ランスロット	

「[name]、あとはグレッグ団長の指示に従え。私は王宮へ戻り、父上に報告する」[p]
#

#&f.name	

「わ、わかりました。でも・・・」[p]
#

#ランスロット	

「どうした」[p]
#

#&f.name	

「体、休ませるのも忘れないでね。大事にして」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	

「・・・分かっている。・・・
[rans_tatie_rei_yokome]
クライスト、貴様には世話になったな。礼をいう」[p]
#

[chara_config pos_mode=false]
[chara_move name="rans_rei" left=-70 time=300]
[kra_tatie_touroku]
[chara_on][chara_show name="kra" storage=&f.kra_yokome left=300 top=20 time=300]


#クライスト	

「・・・どういたしまして」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	
「・・・・・・。じゃあな。エクター、行くぞ」[p]
#
[chara_config pos_mode=true]

[fadeoutbgm time=1000]
[chara_kakusu]
[chara_on][chara_show name="kra" storage=&f.kra_metoji top=20 time=300]
[kra_tatie_metoji]
#クライスト	

「・・・俺のこと知ってるみたいだね」[p]
#

#&f.name	

「えっ・・・」[p]
#

#&f.name	
（そういえばさっき・・・）[p]
#

[kra_tatie_bisyou_youen]
#クライスト	

「結構有名人だからねー、俺」[p]
#

[chara_config pos_mode=false]
[chara_move name="kra" left=-70]
[tris_tatie_touroku]
[chara_on][chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=300]
#トリスタン	
「俺はお前のことなんか知らないぞ！！」[p]
#
[kra_tatie_yareyare]
#クライスト	
「はいはい、じゃともかく行こっか」[p]
#
#トリスタン	
「お前が仕切るな！！」[p]
#
#&f.name	
「はあ・・・」[p]
#
#&f.name	
「えっと・・・地方騎士団本部に戻ればいいんですよね」[p]
#

[tris_tatie_ryoukai]
#トリスタン	

「ああ、ともかくはグレッグ団長に報告してくれ」[p]
#
#&f.name	
「わかりました！」[p]
#
[elsif exp="f.friend==2"]

[chara_off][chara_hide name="kra"]
[lioness_tatie_touroku]

[chara_on][chara_show name="lion" height="698" width="456" storage=&f.lion_otikomi left=-70 top=-35]
#ライオネス 	
「トリスタン・・・あんま言うな。奴は俺らを助けた・・・街も、ルシアも気持ち悪い変なモンスターも、そいつがやってくれた」[p]
#
[tris_tatie_mihiraki]
#トリスタン	
「本当かよ・・・ルシア・・・？」[p]
#
[lioness_tatie_udekumi]
#ライオネス 	
「そのことについては後で話す。ともかく本部は、無事か？街は・・・」[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「本部はなんとか無事だ。グレッグ団長もセレも・・・一緒に街のモンスターに対応してたが、途中からいきなり・・・モンスターたちが消滅し始めて」[p]
#
[chara_off][chara_hide name="lion"]
[chara_on][chara_show name="kra" storage=&f.kra_yokome left=-70 top=20 time=300]

#クライスト	
「あ、それ、俺の手柄だよ」[p]
#
[tris_tatie_ikari]
#トリスタン	
「はあ！！？？馬鹿かお前は！？モンスターを消滅させるなんて人間にできるわけがなかろう！」[p]
#
[kra_tatie_metoji]
#クライスト	
「まあ、人間ならね」[p]
#
#&f.name	
（・・・クライストさんて・・・）[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「ともかく、街のモンスターはいなくなったからな。今怪我人の救助や・・・遺体の回収、モンスターに壊された街の片付け、今後の処理に当たっているところだ」[p]
#
#&f.name	
（遺体・・・やっぱり、殺された人たちも・・・いるんだ）[p]
#
[kra_tatie_yareyare]
#クライスト	
「じゃともかく行こっか。色々やることいっぱいだし」[p]
#

#トリスタン	
「お前が仕切るな！！」[p]
#

#&f.name	
「はあ・・・」[p]
#

#&f.name	
「えっと・・・地方騎士団本部に戻ればいいんですよね」[p]
#

#トリスタン	
「ああ、ともかくはグレッグ団長に報告してくれ。ああでも、ライオネス は街の方を頼む。力仕事が山積みだ」[p]
#
[chara_off][chara_hide name="kra" time=300]
[chara_on][chara_show name="lion" height="698" width="456" left=-70 top=-35]
#ライオネス 	
「わーった。そっちに回るわ。[name]、団長への報告、頼んだぜ」[p]
#

#&f.name	
「わかりました！」[p]
#
[elsif exp="f.friend==3"]
;------------------------------------------------------------------------------------------------------------------------

[kra_tatie_normal]
#&f.name	
「私がやられそうになったの、助けてくれたんだよ、それに、エルムナードの女王、ルシアも・・・」[p]
#
[tris_tatie_mayuhisome]
#トリスタン	
「ルシア？」[p]
#
#&f.name	
「えっとそれは・・・あ、後で説明します。それより、本部は？街は！？」[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「本部はなんとか無事だ。グレッグ団長もセレも・・・一緒に街のモンスターに対応してたが、途中からいきなり・・・モンスターたちが消滅し始めて」[p]
#
[kra_tatie_yokome]
#クライスト	
「あ、それ、俺の手柄だよ」[p]
#
[tris_tatie_ikari]
#トリスタン	
「はあ！！？？馬鹿かお前は！？モンスターを消滅させるなんて人間にできるわけがなかろう！」[p]
#
[kra_tatie_metoji]
#クライスト	
「まあ、人間ならね」[p]
#
#&f.name	
（・・・クライストさんて・・・）[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「ともかく、街のモンスターはいなくなったからな。今怪我人の救助や・・・遺体の回収、モンスターに壊された街の片付け、今後の処理に当たっているところだ」[p]
#
#&f.name	
（遺体・・・やっぱり、殺された人たちも・・・いるんだ）[p]
#
[kra_tatie_yareyare]
#クライスト	
「じゃともかく行こっか。色々やることいっぱいだし」[p]
#
[tris_tatie_ikari]
#トリスタン	
「お前が仕切るな！！」[p]
#
#&f.name	
「はあ・・・」[p]
#
#&f.name	
「えっと・・・地方騎士団本部に戻ればいいんですよね」[p]
#
[tris_tatie_ryoukai]
#トリスタン	
「ああ、ともかくはグレッグ団長に報告してくれ。その・・・エルムナード？のこともなるべく詳しくな。後から俺は団長に聞く」[p]
#
#&f.name	
「わかりました！」[p]
#
[elsif exp="f.friend==5"]
;------------------------------------------------------------------------------------------------------------------------
[chara_off][chara_hide name="kra" time=300]
[rans_tatie_rei_touroku]
[chara_on][chara_show name="rans_rei" left=-70 top=0.5]

#ランスロット	
「グリフ！！無事か！？」[p]
#
[chara_off][chara_hide name="tris" time=300]
[chara_show name="glif_rei"  storage=&f.glif_rei_mihiraki left=350 width="530" height="691" top=30]
#グリフ	
「隊長！！！」[p]
#

#&f.name	
「ランスロット！？」[p]
#

[rans_tatie_rei_sinnpai]
#ランスロット	
「[name]、グリフと一緒にいたのか・・・随分探したぞ。と・・・
[rans_tatie_rei_normal]
お前は・・・」[p]
#
[chara_hide_all]
[config_true]
[chara_show name="kra"  storage=&f.kra_bisyo_youen top=50]
#クライスト	
「やあ、初めまして」[p]
#

[chara_hide name="kra"]

[chara_show name="rans_rei" top=0.5]
#ランスロット	
「・・・・・・」[p]
#
#&f.name	
「ら、ランスロット、ど、どうして・・・」[p]
#

[rans_tatie_rei_yokome]
#ランスロット	
「私の隊だけでも、地方騎士団に協力させたいと思ってな・・・お前の姿も見当たらないから、心配していた」[p]
#
#&f.name	
「ランスロット・・・あ、街は、街は大丈夫なの！？」[p]
#
[rans_tatie_rei_normal]
#ランスロット	
「最初の被害以降は、怪我人、死者共にでていない。我々はグレッグ団長やセレ・・・ライオネスと一緒に街のモンスターに対応した」[p]
#
[rans_tatie_rei_yokome]
#ランスロット	
「だが途中からいきなりモンスターたちが消滅し始めてな。助かったといえばそうなんだが・・・」[p]
#

[chara_hide name="rans_rei"]

[config_false]
[chara_show name="kra" left=-70 top=50]
#クライスト	
「あ、それ、俺の手柄だよ」[p]
#

[chara_show name="tris" storage="tris_tatie/tris_mayuhisome.png" left=400 top=50]
#トリスタン	
「はあ！！？？馬鹿かお前は！？モンスターを消滅させるなんて人間にできるわけがなかろう！」[p]
#

[kra_tatie_yokome]
#クライスト	
「まあ、人間ならね」[p]
#
#&f.name	
（・・・クライストさんて・・・）[p]
#

[chara_kakusu]
[config_true]
[chara_show name="rans_rei" top=0.5]
#ランスロット	
「・・・・・・」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	
「ともあれ、街のモンスターはいなくなったからな。今怪我人の救助など後処理に追われているところだ」[p]
#

#&f.name	
（遺体・・・やっぱり、殺された人たちも・・・いるんだ）[p]
#

[config_false]
[rans_tatie_rei_normal]
[chara_move name="rans_rei" left=-70]

#ランスロット	
「さて、グリフ・・・今回のこと、詳しく報告してもらうぞ」[p]
#
[chara_show name="glif_rei" storage=&f.glif_rei_mehuse width="530" height="691" left=350 top=30]
#グリフ	
「は、はい・・・勝手に隊を抜けて・・・申し訳ありませんでした」[p]
#

#&f.name	
「あ、あの、ランスロット、グリフは私を助けてくれたんだよ？」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	
「それは評価するが、規律は規律だ」[p]
#


#グリフ	
「・・・・・・」[p]
#
#&f.name	
（グリフ・・・）[p]
#

[rans_tatie_rei_normal]
#ランスロット	
「[name]、あとはグレッグ団長の指示に従え。私は王宮へ戻り、父上に報告する」[p]
#
#&f.name	
「わ、わかりました。あの・・・グリフ」[p]
#
[glif_tatie_rei_normal]
#グリフ	
「はい」[p]
#
#&f.name	
「本当にありがとう。助けてくれて・・・私、グリフがいなかったら・・・」[p]
#
[glif_tatie_rei_komari_warai]
#グリフ	
「・・・いえ。僕が・・・いてもたってもいられなくて・・・それで・・・しただけです。気にしないで」[p]
#

[rans_tatie_rei_yokome]
#ランスロット	
「・・・・・・」[p]
#

#&f.name	
「ランスロット、グリフのこと・・・そんなに責めないで」[p]
#

[rans_tatie_rei_metoji]
#ランスロット	
「・・・わかった。お前の意見も尊重する。・・・グリフ、行くぞ」[p]
#

[chara_kakusu]

[config_true]
[chara_show name="kra" top=50]	
#クライスト	
「あの人・・・ランスロットだっけ？俺のこと知ってるみたいだね」[p]
#
#&f.name	
「えっ・・・」[p]
#
#&f.name	
（そういえばさっき・・・クライストさんのことじっと見て・・・）[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「結構有名人だからねー、俺」[p]
#

[chara_move name="kra" left=-70]
[chara_on][chara_show name="tris" height="603" width="420" top=50 left=400]
#トリスタン	
「俺はお前のことなんか知らないぞ！！」[p]
#

[kra_tatie_yareyare]
#クライスト	
「はいはい、じゃともかく行こっか」[p]
#

[tris_tatie_donari]
#トリスタン	
「お前が仕切るな！！」[p]
#


#&f.name	
「はあ・・・」[p]
#
#&f.name	
「えっと・・・地方騎士団本部に戻ればいいんですよね」[p]
#

[kra_tatie_yokome]
[tris_tatie_ryoukai]
#トリスタン	
「ああ、ともかくは団長に報告してくれ」[p]
#
#&f.name	
「わかりました！」[p]
#


[endif]

[chara_kakusu]


[endmacro]


[macro name="curnival_sonogo"]
[call storage="scenario_2/live2d_sub_macro.ks"]
[bg storage="dancho_yoru_tasogare.jpg"]
	
[config_false]

[chara_on][chara_on][chara_show name="cera" width=336 height=482 top=130 left=250]
[dancho_tatie_show]
[dancho_tatie_metoji]
#団長
「・・・そうか・・・ともかく、無事で何よりだ」[p]
#

[dancho_tatie_ikari]
#団長

「まさかエルムナード女王ルシアが・・・魔剣・・・だと？」[p]
#

#&f.name	

「・・・はい・・・。さらに普通のとは違う、異形のモンスターをつれてました・・・」[p]
#

#&f.name	

「それもかなりの強さで・・・」[p]
#

[if exp="f.friend==1"]
#&f.name	
「私とランスロットでなんとか、勝てましたがルシアには、敵いませんでした」[p]
#
[elsif exp="f.friend==2"]
#&f.name	
「私とライオネス でなんとか、勝てましたがルシアには、敵いませんでした」[p]
#
[endif]
[dancho_tatie_normal]
#団長	

「・・・それは・・・大丈夫だったのか？」[p]
#

#&f.name	

「クライストさんが、助けてくれました。ルシアが逃げたのも、彼に敵わなかったからです」[p]
#

[cera_tatie_otikomi]
#セレ	

「・・・クライストが・・・」[p]
#

#&f.name	

「トリスタンは信じてないですけど、街中のモンスターが突然消滅したのも、彼のおかげだそうです」[p]
#

[dancho_tatie_metoji]
#団長	

「・・・うむ・・・セレ、どう思う」[p]
#
[dancho_tatie_normal]
[cera_tatie_normal]
#セレ	

「トリスタンの話によれば、やつはどれだけ厳重に鍵をかけようと何度も脱走をするようで・・・」[p]
#

[cera_tatie_otikomi]
#セレ	

「武器など取り上げているはずなのに、[name]の話からすると剣は持っているようだし・・・」[p]
#

#&f.name	

「あ、はい・・・クライストさんは、青く光る・・・剣？のような物を持ってました」[p]
#

#&f.name	

「・・・そういえば・・・ルシアが持っていたのも・・・色は違うけど、似てたような・・・」[p]
#
[cera_tatie_mihiraki]

[dancho_tatie_metoji]
#団長

「うむ・・・もしやそれが・・・魔剣なのか？」[p]
#
[dancho_tatie_normal]
[cera_tatie_udekumi]
#セレ	

「手に入れたものは妖の力を得るという伝説の剣ですね・・・ルシアの話が本当なら実在することになります」[p]
#

#&f.name	

「伝説の・・・！そんな話があるの？」[p]
#

[cera_tatie_metoji]
#セレ	
「ああ・・・。私も、古い書物でちらと見たことがある程度なのだが・・・作り話だという者の方が多くてな、信じる者など、子供くらいだろうと思っていた」[p]
#

[cera_tatie_normal]
#&f.name	

「そんなのを・・・。そういえば、ルシアにやられた怪我も、クライストさんが治してくれて・・・」[p]
#

[if exp="f.friend==1"]
#&f.name	
「ランスロットもひどい怪我してたんですけど、一瞬で、なんだったんだろう・・・」[p]
#
[elsif exp="f.friend==2"]
#&f.name	
「ライオネス もひどい怪我してたんですけど、一瞬で、なんだったんだろう・・・」[p]
#
[endif]

[dancho_tatie_metoji]
#団長

「・・・魔剣、か・・・」[p]
#

[cera_tatie_udekumi]
#セレ	

「一度、やつに詳しい話をさせた方がいいですね」[p]
#

[dancho_tatie_normal]
#団長

「ああ・・・。・・・・・・」[p]
#
[dancho_tatie_metoji]
#&f.name	

「・・・団長？」[p]
#
[dancho_tatie_normal]
#団長

「いや、なんでもないんだ。ひとまず[name]、お前は部屋で休みなさい。疲れているだろう」[p]
#

#&f.name	

「は、はい！失礼します」[p]
#

[playse storage="simerusizuka_onjin.ogg"]
[image layer="2" page=fore visible=true name="back" storage="black.png"]	

[w][w]
[free name="back" layer=2]


[cera_tatie_mihiraki]
#セレ	

「父さん・・・？」[p]
#

[dancho_tatie_normal]
[playbgm storage="kisimi_musmus.ogg"]
#団長

「セレ、お前は８年前の戦争を覚えているか」[p]
#

[cera_tatie_normal]
#セレ	

「・・・はい。私を初陣に連れて行かなかった、あの戦争ですね」[p]
#

[dancho_tatie_metoji]
#団長	

「そう根に持つな・・・。
[dancho_tatie_normal]
あの時、人数調整として雇われた傭兵団があってな」[p]
#

#団長
「わしはその時、噂でしか聞かなかったのだが・・・傭兵団の中に、無敵の強さを誇る青い光剣の少年がいたと・・・」[p]
#


[cera_tatie_udekumi]
#セレ	

「青い光剣の・・・それが、クライストだと？」[p]
#
[dancho_tatie_metoji]
#団長

「光剣など、普通の武器ではあり得ない、そんな話こそ眉唾だろうと言われていたが」[p]
#
[dancho_tatie_normal]

#セレ	

「・・・」[p]
#

#団長

「まあともかくは、本人に話を聞くのが先決だろうな」[p]
#

[cera_tatie_metoji]
#セレ	

「・・・そうですね」[p]
#

[chara_kakusu]
[fadeoutbgm time=1000]

[anten]






[endmacro]

[macro name="gales_curnival"]


[endmacro]




	




[return]
