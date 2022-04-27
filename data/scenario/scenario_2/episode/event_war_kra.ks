
*kra
[config_false]
[chara_hide_all]

[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]


#団長	
「ひるむな！！弓兵！！構えーーーっ！！！」[p]
#

;SE
;SE弓矢の音
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[wait time=100]
[playse storage="yagatobu_onjin.ogg"]
[image layer=2 page=fore storage="siro.jpg" name="siro" time=1000]
[wait time=1000]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]
[playse storage="sasu_koukaonlabo.ogg"]
[wait time=150]

[free name="monster_1" layer=1]
[free name="siro" layer=2]

[config_true]

[chara_show name="kra" top=10]

#クライスト	
「さあて、じゃあ[name]ちゃん行こうか」[p]
#

#&f.name	
「えっ！？」[p]
#

#&f.name	

（ど、どういうこと！？クライストさんと行くなんて聞いてないけど・・・）[p]
#

[chara_move name="kra" left=-70]
[config_false]
[chara_show name="tris" height="603" width="420" top=50 left=400]
[tris_tatie_donari]
#トリスタン	
「お、おいクライスト、お前の監視役は俺のはずだぞ！！」[p]
#
[kra_tatie_yareyare]
#クライスト	
「冗談じゃないよ、どうせ監視されるなら女の子のほうがいいに決まってるだろ」[p]
#
[tris_tatie_mihiraki]
#トリスタン	
「貴様！[tris_tatie_donari]ふざけるなそんなことが許されてたまるものか！」[p]
#
[kra_tatie_yokome]
#クライスト	
「・・・監視役が[name]ちゃんじゃないなら、俺はエルムナードに行かない」[p]
#
[tris_tatie_ikari]
#トリスタン	
「なっ・・・なんだと・・・グレッグ#団長・・・」[p]
#
[dancho_tatie_touroku_war]
[dancho_tatie_show_war]
#団長	
「・・・仕方ない。王宮から言われた監視役をトリスタンから[name]に変更する」[p]
#

[tris_tatie_mihiraki]
#トリスタン	
「だ、団長・・・いいんですか！？」[p]
#

[dancho_tatie_metoji_war]
#団長	
「・・・王宮からの命令がなければ、監視をつけなくてもいいとわしは思っている」[p]
#
[tris_tatie_mehuse]
#&f.name	

（グレッグ団長・・・そんなにクライストさんのこと、信用してるのかな・・・）[p]
#

[kra_tatie_normal]
#クライスト	
「・・・ありがとうございます。団長」[p]
#

#&f.name
	
（本当は、ちゃんとした人なのかもってことを、団長は見抜いているの・・・かな？）[p]
#

[kra_tatie_smile]
#クライスト	
「それじゃあ[name]ちゃん、団長の許可も出たことだし、行こうか」[p]
#

#&f.name	
「は、はい・・・じゃ、じゃあ馬を・・・」[p]
#

[tris_tatie_metoji]
#トリスタン	
「・・・俺の馬を使え。くれぐれも、置き去りにはするなよ」[p]
#

#&f.name	
「あ、ありがとう・・」[p]
#

[chara_hide_all]
[live2d_kra_touroku]
[live2d_fadeout time=5]
[live2d_kra_show_sekkin_2]
;馬のいななき
[playse storage="uma_onjin.ogg"]
#&f.name	
「よっ・・・ってええっ！？」[p]
#

;SE
[playse storage="uma_koukaonlabo.ogg"]
#&f.name	

（えっ！？）[p]
#
[quake count=5 time=300 hmax=20]
#&f.name	
「ひゃああっ」[p]
#
[stopse]
[aho_head_right_z]
[aho_face_bisyou_youen]
[live2d_fadein time=5]
[playse storage="hukukosure_onjin.ogg"]
#&f.name	

（えっ・・・えええっ！！？？）[p]
#

[aho_face_smile]
#クライスト	
「いやあ、楽しいな。ふたりで相乗りなんて」[p]
#
[aho_face_normal]
#&f.name	
「ちょ、ちょ・・・っと」[p]
#
[aho_head_left_z]
[aho_face_mehuse_warai]
#クライスト	
「ねえ、後ろから抱きしめてもいい？」[p]
#

#&f.name	
「やっ・・・やめ・・・」[p]
#


[live2d_fadeout time=5]
[config_false]
[dancho_tatie_touroku_war]
[dancho_tatie_show_war]
#団長	
「・・・・・・頼んだぞ、クライスト、[name]」[p]
#

[tris_tatie_touroku]
[chara_show name="tris" height="603" width="420" top=50 left=200]
#トリスタン	
「・・・・・・・」[p]
#

[chara_hide_all time=5]

[live2d_fadein time=5]
[aho_face_bisyou_youen]
#クライスト	
「お任せください。団長も、ご武運を。トリスタンも、せいぜい怪我しないようにね」[p]
#
[live2d_fadeout time=5]

[config_true]

[chara_show name="tris" height="603" width="420"  storage="tris_tatie/tris_ikari.png" top=50]

#トリスタン	
「このやろう・・・」[p]
#

#&f.name	
「え、えーと・・・そ、それじゃ行ってきます！！」[p]
#

[chara_hide name="tris"]

[playse storage="uma_onjin.ogg"]

[live2d_fadein time=1000]
[aho_face_yokome_majime]

#クライスト	
「そういえばさ、ライオネスの姿が見えなかったけど、彼は逃げたの？」[p]
#

#&f.name	
「・・・・・。ライオネスは傭兵さんたちの統率で後ろのほうにいたから・・・」[p]
#

[aho_face_normal]
[aho_head_above_y]
[aho_head_right_x]
[aho_eyes_right]
#クライスト	
「へえーそうなんだ。傭兵の統率まかされるなんて、なかなかだね」[p]
#

[live2d_fadeout time=1000]
[playse storage="igyou_nakigoe_onjin1.ogg"]
[wait time=2000]
[playse storage="igyou_nakigoe_onjin3.ogg"]
;異形、鳴き声、足音SE
[playse storage="igyou_asioto3_koukaonlabo.ogg"]



[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" x=130 y=20]
;異形鳴き声　異形グラ
;異形鳴き声
#&f.name	
「！！！」[p]
#
[free name="monster_1" layer=1]
[live2d_fadein time=1000]
[aho_head_above_y]
[aho_head_right_x]
[aho_eyes_right_above]
#クライスト	
「やれやれ、早速かあ」[p]
#

[live2d_fadeout time=1000]
[live2d_delete_all]
[live2d_off]
*igyou_battle_1
[eval exp="f.friend=3"]
[eval exp="f.epi4_battle_kra=1"]
[eval exp="f.monster_l_size_3=1"]
;テストコード
;[eval exp="f.krakonkando=100"]
[eval exp="f.monster_group_25=1"]
[eval exp="f.event_war_kra=1"]

[stopbgm]
[battle_start]
;バトル
;ミニゲーム

*igyou_battle_end
;bgエルムナード
[playbgm storage="op_musmus.ogg"]
[live2d_kra_touroku]
[live2d_fadeout time=5]
[live2d_kra_show_sekkin]
[message_settei_ad]
[bg storage="erumumatinaka_tasogare.jpg"]
#&f.name	
「・・・ここが・・・エルムナードの街・・・」[p]
#

#&f.name
	
（誰もいない・・・）[p]
#
#&f.name	

（そういえばカーニバルの時・・・）[p]
#

[live2d_fadein time=1000]
[aho_head_left_x]
[aho_head_left_z]
#クライスト	
「エルムナードの国民全員、異形にしたって言ってたっけ」[p]
#

[aho_head_above_y]
[aho_head_right_z]
[aho_head_right_x]
[aho_eyes_right]
#クライスト	
「悪趣味なことするよねー彼女。

[aho_head_normal]
[aho_head_under_y]
[aho_eyes_normal]
[aho_face_mehuse]
国民がいなくなった国なんて、もう国とはいえないんじゃないかって思うけど」[p]
#

[aho_face_yokome_majime]
#&f.name	
「クライストさん・・・」[p]
#

[aho_head_normal]
[aho_face_mihiraki]
[aho_head_right_z]
[aho_body_under_y]
[aho_arms_udekumi]
[aho_body_normal]
[aho_face_bisyou_youen]
#クライスト	
「・・・大丈夫だよ。君のことはちゃんと俺が守るから」[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#&f.name	
「えっとあの・・・」[p]
#

;BGM
[stopbgm]

[aho_face_mihiraki]
[live2d_fadeout time=1000]
[playse storage="za_macchi.ogg"]

[rusia_tatie_touroku]
[rusia_tatie_show_event]
#ルシア	
「・・・貴様は・・・あのときの・・・」[p]
#

#&f.name	
「！！！」[p]
#

#&f.name	
（・・・エルムナード女王、ルシア・・・！）[p]
#

[chara_off][chara_hide name="rusia" time=500]


[kra_tatie_touroku]
[chara_on][chara_show name="kra" storage=&f.kra_bisyo_youen top=20]
#クライスト	
「やあ、その節はどうも」[p]
#
[chara_hide name="kra" time=300] 
[chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 left=0]
#ルシア	
「クレールの騎士どもが動き出したと知り、大層な歓迎をしてやろうと思うたが・・・
	我らもなめられたものよ。小僧と小娘、ふたりだけとはな」[p]
#
[chara_hide name="rusia" time=300] 
[chara_on][chara_show name="kra" storage=&f.kra_bisyo_youen top=20]
#クライスト	
「ふたりだけで十分だよ。長い話は嫌いなんだ。さっさとはじめよう？」[p]
#
[chara_hide name="kra" time=50]
[rusia_show_ikari_event]
#ルシア	
「小僧っ・・・！」[p]
#

[playbgm storage="erumu_senjou.ogg"]
;ヴァエル出現
[chara_hide name="rusia" time=50]
[chara_show name="rusia" storage="rusia_tatie/rusia_kyouki0.png" top=40 left=0]
#ルシア	
「この間はしとめそこねたが、今日こそは息の根を止めてやる・・・！」[p]
#
[call storage="scenario_2/live2d_aho_macro.ks"]
[chara_hide name="rusia" time=50]
[live2d_fadein time=500]
[aho_face_yareyare]
[aho_head_above_y]


#クライスト	
「どうぞどうぞ。できるものなら」[p]
#

;あグレアス出現

[live2d_fadeout time=300]
[chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 left=0]

#ルシア	
「お前が一体何者なのかは知らぬが・・・わらわの復讐を邪魔するものは、誰であろうと殺すのみ」[p]
#
[chara_hide name="rusia" time=300] 
[live2d_fadein time=300]
[aho_head_right_z]
[aho_body_right_z]
[aho_face_bisyou_youen]
#クライスト	
「・・・さあ、[name]ちゃん、下がってて。なるべく俺から離れて。いいね？」[p]
#

#&f.name	
「く・・・クライストさん・・・でも・・・」[p]
#

#&f.name	

（ひとりじゃ・・・）[p]
#

[aho_head_normal]
[aho_face_mihiraki]
#クライスト	
「・・・あ、もしかして、俺のそばから離れたくないとか？」[aho_head_left_z][aho_face_bisyou_youen][p]
#
[aho_head_normal]
#&f.name	
「そ、そんなこと！じゃ、じゃなくて、ひとりじゃ・・・って思って」[p]
#

[aho_head_under_y]
[aho_face_yareyare]
[aho_head_normal]
#クライスト	
「わかった。君がそこまでいうなら・・・[aho_head_right_z][aho_head_under_y][aho_face_bisyou_youen][aho_eyes_left]
[aho_body_under_y][aho_arms_udekumi]
隣で可愛い応援をもらおうかな」[aho_head_normal][aho_eyes_normal][p]
#


#&f.name	
「ちょ、えっ・・・私だって戦え・・・」[p]
#

[aho_face_mihiraki]
#クライスト	
「そうなの？残念だな。[aho_face_smile]君の応援があるなら・・・[aho_head_under_y][aho_head_normal][aho_head_left_z][aho_face_hutuu_warai]俺はどこまでだって強くなれるのに」[p]
#

#&f.name	
（く、クライスト、さん・・・）[p]
#

[aho_body_right_z]
[aho_arms_right_setumei]
[aho_face_metoji_warai]
#クライスト	
「男はさ、好きな子の前では格好よくいたいんだから、
[aho_body_right_z]
[aho_head_above_y][aho_head_right_z]
[aho_head_right_x]
[aho_body_normal]
[aho_face_komari_warai]
少しは活躍させてよ」[aho_head_normal][aho_face_normal][p]
#

#&f.name	
「は、はあ・・・」[p]
#

[live2d_fadeout time=5]
[chara_show name="rusia" storage="rusia_tatie/rusia_ikari0.png" top=40 left=0]

#ルシア	
「き、貴様ぁ・・・ふ、ふざけおってぇぇぇぇぇぇっっっ！！！！！！」[p]
#
[chara_hide name="rusia" time=300]
[rusia_tatie_kamae]
[chara_hide name="rusia" time=1000]
[live2d_fadein time=300]
[aho_arms_normal]
[aho_head_under_y]
[aho_face_normal]
[live2d_mod name="aho" idle="Idle_kamae"]
[playse storage="agureasushutugen_koukaonlabo.ogg"]
[aho_arms_kamae]
[aho_head_normal]
[aho_face_normal]
[image layer=2 page=fore visible=true name="aka" storage="siro.jpg" time=700]
[free name="aka" layer=2]


;ルシアバトル
[chara_hide name="rusia" time=300]
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
*kra_battle_start

[eval exp="f.monster_group_23=1"]
[eval exp="f.rusia_battle=1"]
[eval exp="f.monster_l_size=0"]
[eval exp="f.monster_l_size_2=0"]
[eval exp="f.rusia_l_size=1"]
[eval exp="f.rusia_battle_end=1"]
[call storage="scenario_2/live2d_aho_macro.ks"]
[stopbgm]
[battle_start]

*rusia_battle_end

[eval exp="f.rusia_battle_end=0"]
[anten]

[live2d_kra_touroku]
[live2d_fadeout time=5]
[live2d_kra_show_sekkin]


[message_settei_ad]	
[bg storage="erumumatinaka_tasogare.jpg"]


[rusia_tatie_touroku]
[rusia_tatie_show]
[rusia_tatie_ikari]
#ルシア
「・・・こんな・・・ところで・・・っ」[p]
#
[chara_hide name="rusia" time=3000]

#ルシア
「・・・エディフィス・・・エディ・・・」[p]
#


#&f.name	
「はあ・・・はあ・・・」[p]
#

#&f.name	
（エディフィス・・・って・・・誰かの、名前・・・？）[p]
#
[call storage="scenario_2/live2d_aho_macro.ks"]
#&f.name	

（ともかく、勝てた・・・ルシアに・・・でもほとんどは・・・）[p]
#
[live2d_fadein time=1000]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#クライスト	
「・・・・・・」[p]
#

#&f.name	

（クライストさんのおかげ、だよね・・・）[p]
#

#&f.name	

（あのルシアに、あっさり勝てちゃうなんて・・・クライストさんて・・・）[p]
#

;BGM 急に空赤くなる
[bg storage="erumumatinaka1_tasogare.jpg"]
[playbgm storage="kisimi_musmus.ogg"]
#&f.name	
「・・・！？な、何・・・！？」[p]
#

[aho_face_mehuse]
[aho_eyes_left]
#クライスト	
「・・・来たか」[p]
#

#&f.name	
「え・・・っ！！！！！」[p]
#

;SE

#&f.name	
（体が・・・重いっ・・・動かないっ・・・・・！）[p]
#
*vaeru_shoujou
[live2d_fadeout time=5]
[live2d_mod name="aho" y=-4.0 scale=8.2]
[aho_mod_idle_kurusimu]
[config_true]
[quake count=3 time=300 vmax=20]
[playse storage="sinzou_onjin.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_new name="vaeru" storage="vaeru_face.png"]
[chara_show name="vaeru" left=50 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[live2d_fadein time=5]
[aho_head_under_y]
[aho_face_mehuse]
[aho_face_kunou]
#クライスト	
「うぐっ・・・く・・・う・・・」[p]
#

#&f.name	
「く、クライストさんっ・・・！？」[p]
#
[live2d_fadeout time=5]
[quake count=3 time=300 vmax=20]
[playse storage="sinzou_onjin.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_show name="vaeru" left=50 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[live2d_fadein time=5]
[aho_body_normal]

[aho_head_right_z]
[aho_head_right_x]
[w]
[aho_head_left_z]
[aho_head_left_x]

[aho_face_kunou]
[aho_body_under_y]
;#クライストの胸の紋章、点滅
#クライスト	
「あっ・・・はぁ、はぁ・・・」[p]
#

#&f.name	
「クライストさんっっ！！」[p]
#

[live2d_fadeout time=5]
[aho_body_normal]
[aho_head_normal]
[quake count=3 time=300 vmax=20]
[playse storage="sinzou_onjin.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_show name="vaeru" left=50 top=-50]
;[image layer=3 page=fore visible=true name="aka" storage="vaeru_face.png" time=300]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[aho_body_monshou]
[live2d_fadein time=5]
[aho_body_normal]
[aho_face_kunou]
[aho_head_left_z]
[aho_head_left_x]
[w]
[aho_head_right_x]
[aho_head_right_z]
[aho_body_right_z]
[aho_body_under_y]
#クライスト	
「っ・・・[name]・・・」[p]
#
[aho_mod_idle_hard]
[aho_face_metoji]
[aho_body_normal]
[aho_head_normal]
[aho_head_under_y]
[aho_eyes_agureasu]
[aho_face_kunou]
[aho_eyes_normal]
;#クライスト目開ける　瞳孔と白目の部分の色反転

#&f.name	
「！！！！！」[p]
#

#&f.name	
（クライストさんの・・・目の色・・・！）[p]
#

#&f.name	
「・・・クライストさん、その目・・・」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[aho_eyes_left]
#クライスト	
「ああ、これ・・・大丈夫、すぐに・・・元の色に戻るから・・・」[p]
#

#&f.name	
（そういう、ことじゃなくて・・・・・・）[p]
#

[live2d_fadeout time=5]
[quake count=3 time=300 vmax=20]
[stopbgm]
[playse storage="sinzou_onjin.ogg"]
[playbgm storage="ghost_tairakomori.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_show name="vaeru" left=50 top=-50]
#ヴァエル	
『アグレアスの小僧・・・[aho_face_odoroki]我らが復讐の邪魔をするか・・・』
[live2d_fadein time=5]
[aho_body_under_y]
[aho_body_right_x]
[aho_body_right_z]
[aho_head_left_z]
[aho_head_left_x]
[aho_body_left_x]
[aho_body_left_z]
[aho_head_under_y]
[aho_eyes_normal]
[aho_eyes_under]
[aho_eyes_left]
[aho_face_kunou_metoji]
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[p]
#

#&f.name	
「！！！！！」[p]
#

#&f.name	
（な・・・何・・・）[p]
#
[aho_face_mehuse]
#&f.name	
（・・・いったい・・・どこから・・・）[p]
#

#&f.name	
「・・・だ・・・誰・・・なの・・・」[p]
#


[aho_head_left_z]
[aho_head_left_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_body_left_x]
[aho_body_left_z]
[aho_head_under_y]

[aho_body_normal]
[aho_face_kunou_metoji]
#クライスト	
「・・・ヴァ・・・ヴァエル・・・・」[p]
#
[aho_mod_idle_hard]
[aho_face_mehuse]
#&f.name	
「えっ」[p]
#

[if exp="f.kouhou==1"]
#&f.name	
「えっ・・・だって、ルシアは、ルシアは倒したんだよね！？」[p]
#
#クライスト
「倒したよ。確かに、俺が・・・だけど、だからと言ってヴァエルが・・・消えたわけじゃない」[p]
#
#&f.name	
（持ち主のいない剣が・・・ってこと・・・！？それって・・・まるで・・・）[p]
#
[else]
#&f.name	
（ルシアを倒したとき、魔剣も消えたわけではないの・・・！？）[p]
#
[endif]




[aho_face_mehuse]
#&f.name	
（この声が・・・魔剣ヴァエル・・・？でも・・・剣・・・が声を出すっていうの・・・？）[p]
#

#&f.name	
（それに・・・『復讐』って・・・ヴァエルが・・・ってこと？）[p]
#

[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_head_left_z]
[aho_head_left_x]
[w]
[aho_body_normal]
[aho_head_right_z]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_body_normal]
[aho_head_normal]
[aho_head_right_z]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]
[aho_face_mehuse]
#&f.name	
（クレールに復讐を考えたのは、ルシアだけじゃないの？）[p]
#
[live2d_fadeout time=5]
[quake count=3 time=300 vmax=20]
[playse storage="sinzou_onjin.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_show name="vaeru" left=50 top=-50]
#ヴァエル	
『まあよい・・・いずれお前の肉体は、我らの贄よ・・・』[p]
#
#ヴァエル	
『我が力を高めるそのときまで、首を洗って待っているがいい・・・』[p]
#
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[live2d_fadein time=5]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#&f.name	
（贄・・・クライスト、さんが・・・？）[p]
#
[aho_head_left_z]
[aho_head_left_x]
[aho_body_left_x]
[aho_body_left_z]
[w]
[aho_body_normal]
[aho_head_right_z]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]

[aho_face_kunou_metoji]
#クライスト	
「うっ・・・く・・・あ・・・」[p]
#
[live2d_fadeout time=5]
[aho_face_mehuse]
[aho_body_normal]
[aho_body_right_x]
[aho_body_under_y]
[aho_face_kunou_metoji]
[quake count=3 time=300 vmax=20]
[playse storage="sinzou_onjin.ogg"]
[image layer=3 page=fore visible=true name="aka" storage="aka.png" time=300]
[chara_show name="vaeru" left=50 top=-50]
#ヴァエル	
『・・・アグレアスもお前につかのまの力を与えながら、そのときを嬉々として待っていることだろう・・・』[p]
#
[chara_hide name="vaeru"]
[free name="aka" layer=3 time=500]
[aho_body_left_z]
[aho_body_left_x]
[w]
[aho_body_normal]
[aho_head_right_z]
[aho_head_right_x]
[aho_body_right_x]
[aho_body_right_z]

[aho_face_kunou_metoji]
[live2d_fadein time=1000]
[aho_mod_idle_hard]
#&f.name	
（アグレアス・・・クライストさんの・・・魔剣が・・・待っている・・・！？）[p]
#

[if exp="f.kouhou==1&&f.event_war_kra_sumi==1"]
[bg storage="kisidan_ura_yoru.jpg"]
[else]
[bg storage="erumumatinaka_tasogare.jpg"]
[endif]


[fadeoutbgm time=3000]
;元のbgに戻る
[aho_body_normal]
[aho_head_normal]
[aho_body_monshou_re]
[aho_mod_idle_hard]
[aho_face_kunou_metoji]
[aho_eyes_agureasu_re]
#&f.name	
「あ・・・」[p]
#



#クライスト	
「はあ、はあ、はあ・・・・」[p]
#
[aho_mod_idle_normal_mehuse]
#&f.name	
「クライストさん！」[aho_face_mehuse][aho_eyes_normal][p]
#
[aho_head_normal]
[aho_mod_idle_normal]
[aho_face_komari_warai]
[aho_body_under_y]
[aho_arms_normal]
[aho_body_normal]
#クライスト	
「・・・ああ、[name]ちゃん、ごめん・・・心配かけたね」[p]
#

[aho_face_normal_majime]
#&f.name	
「・・・その・・・さっきのは・・・」[p]
#

[aho_head_normal]
[aho_face_mehuse]
#クライスト	
「・・・ヴァエル・・・魔剣、ヴァエル」[p]
#

#&f.name	
「えっ・・・でも・・・ヴァエルは剣で・・・」[p]
#

[aho_head_right_x]
[aho_head_right_z]
[aho_eyes_right]
#クライスト	
「・・・・・・・・・・」[p]
#

#&f.name	
「クライストさん・・・？」[p]
#

[if exp="f.kouhou==1"]
[jump storage="scenario_2/episode/epi5.ks" target=*vaeru_end]
[endif]

[aho_eyes_normal]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト	
「いずれ、話すよ。今はともかく、早く戻って団長に報告しよう」[p]
#

	
#&f.name	
（・・・・クライスト・・・さん・・・・・・・？）[p]
#
[live2d_fadeout time=1000]
	
;暗転
;#団長、#クライスト表示
[anten]
[wait time=3000]
[bg storage="erumusougen_tasogare.jpg"]

[dancho_tatie_touroku_war]
[dancho_tatie_show_war]
[dancho_tatie_metoji_war]
#団長	
「・・・わかった。ご苦労だったな。どちらにしろあとで、確認のために何人かをエルムナードに向かわせる」[p]
#

[chara_hide name="dancho_war"]
#&f.name	
（みんな、無事、なのかな・・・あ）[p]
#

;ライオネス、ランスロット、グリフ表示
[config_false]
[lioness_tatie_touroku]
[chara_show name="lion" height="698" width="456" top=-35 left=0]
[chara_hide name="lion"]

[tris_tatie_touroku]
[chara_show name="tris" height="603" width="420" top=50 left=400]
[config_true]
[chara_hide_all]
	
#&f.name	
（・・・よかった・・・とりあえず、無事だったみたい・・・だけど・・・）[p]
#
[live2d_kra_mod_sekkin]
[aho_mod_idle_normal_mehuse]
[aho_head_right_z]
[aho_head_right_x]
[aho_body_right_x]
[aho_head_under_y]
[aho_face_mehuse]
[aho_eyes_right]
[aho_head_right_x]
[live2d_fadein time=1000]

#&f.name	
（クライストさん・・・）[p]
#

[live2d_fadeout time=1000]
;#クライスト表示
;暗転
;ここはノベル	

[anten]

[message_settei]

[r][r][r][r][r][r]『いずれお前は、我らの贄よ・・・我が力を高めるそのときまで、首を洗って待っているがいい・・・』[l][cm]


[jump storage="scenario_2/episode/epi_flag_check.ks"]





