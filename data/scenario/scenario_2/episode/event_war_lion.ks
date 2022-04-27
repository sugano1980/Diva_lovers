*lion
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

#
#団長

「打てーーーーーっっっ！！！」[p]
#

#
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

[config_false]

[chara_show name="tris" height="603" width="420" top=50 left=400]
#トリスタン
「･･･今のうちだ。クライスト、行くぞ！！」[p]
#


[chara_show name="kra" storage=&f.kra_komari top=10 left=-70]
#クライスト
「監視役つけるって聞いてたけど、君のことだったの？」[p]
#

[tris_tatie_ha]
#トリスタン
「つべこべ言うな。[w]俺だってホントはお前とランデブーなんかごめんだ」[p]
#


[dancho_tatie_show_war]
#団長

「･･･すまんな。[w]王宮からの命令でもある･･･。[w]
ルシアを倒してくれ、頼んだぞ、クライスト」[p]
#


[kra_tatie_yokome]
#クライスト

「･･･団長も、どうぞご武運を」[p]
#
[chara_hide name="kra"]


[tris_tatie_mihiraki]

#トリスタン

「ちょ、まて、行くなら行くって言え！！[chara_hide name="tris"][w]まてこら！！」[p]
#
[chara_hide name="dancho_war"]
[playse storage="uma_onjin.ogg"]
[playse storage="umahasiru_onjin.ogg"]

[fadeoutse time=3000]

[config_true]

[lioness_tatie_show]
#ライオネス

「･･･あいつ･･･余裕だったな･･･[w][lioness_tatie_kosinite]魔剣ってのは･･･そんなにすげえのか･･･」[p]
#

#&f.name
「あ･･･ライオネス･･･」[p]
#

[playse storage="kennuku_koukaonlabo.ogg"]

[chara_hide_all]
[chara_new name="lion_kamae" storage=&f.lion_kamae][chara_on]
[chara_on][chara_show name="lion_kamae" top=-35 left=-100][chara_on]
#ライオネス

「･･･気合、いれろよ。[w]これからが正念場だ。クライストが戻ってくるまで、持ちこたえんぞ」[p]
#


#&f.name

「･･･はい！！」[p]
#

[chara_hide_all][chara_off]

[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=-41 y=190]
[playse storage="igyou_nakigoe_onjin1.ogg"]
[wait time=2000]
[playse storage="igyou_nakigoe_onjin3.ogg"]
;異形、鳴き声、足音SE
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=430 y=100]


[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=160 y=160]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=250 y=190]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=340 y=190]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=520 y=160]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_1_tatie.png" name="monster_1" height="250" width="226" x=720 y=190]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=50 y=100]

[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]

[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" height="305" width="310" x=230 y=150]

[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="375" width="237" x=530 y=100]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_2_tatie.png" name="monster_1" height="300" width="190" x=150 y=100]
[quake count=3 time=300]
[w]



#団長
「くるぞ！！全員戦闘準備！！」[p]
#



[playse storage="igyou_nakigoe_onjin7.ogg"]
[quake count=10 time=300]
[playse storage="igyou_nakigoe_onjin4.ogg"]

#&f.name

（思ったより速い・・・！！）[p]
#

#
;足音SE 鳴き声
[playse storage="igyou_nakigoe_onjin6.ogg"]
[wait time=2000]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_asioto3_koukaonlabo.ogg"]
[quake count=3 time=300]
[w]
[playse storage="igyou_nakigoe_onjin7.ogg"]

[free name="monster_1" layer=1]



[chara_on][chara_show name="lion_kamae" top=-35 left=-100]
#ライオネス

「相変わらず気持ちわりいなりしやがって･･････！」[p]
#
[playse storage="swing40_d_macchi.ogg"][chara_hide_all][chara_off]


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




[playse storage="kennuku_tairakomori.ogg"][w][playse storage="kennuku_tairakomori.ogg"]
#&f.name
（・・・クライストさんがルシアを倒すまで、ここで持ちこたえないと・・・！！）[p]
#

#

[playse storage="igyou_nakigoe_onjin6.ogg"]
#&f.name

（負けるわけには・・・いかないっ・・・！！！）[p]
#

#
[playse storage="igyou_nakigoe_onjin7.ogg"]
[message_kakusu_ad]
@camera zoom=5 x=0 y=-20 time=50
[image layer=3 page=fore storage="black.png" name="kuro" time=5]
[reset_camera]
;異形　鳴き声とともにアップ　すぐに暗転
[free name="monster_1" layer=1]
[anten]
[free name="kuro" layer=3]


[jump storage="scenario_2/episode/epi4.ks" target=*novel]

*lion_main
[live2d_lion_touroku]
[live2d_fadeout time=5]
[live2d_lion_show_sekkin]

[bg storage="sougen1_tatakai_tasogare.jpg"]
[message_settei_ad]
[playse storage="walk-tussock1_koukaonlabo.ogg"]
#&f.name	
（・・・ライオネスは・・・無事でいるのかな・・・）[p]


#&f.name	
（とりあえず・・・少し、少しでいい・・・。休みたい・・・）[p]
#

[stopse]
[playse storage="sinzou1_onjin.ogg"]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
#&f.name	
「っく・・・あ・・・」[p]
#
[playse storage="sinzou1_onjin.ogg"]
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
#&f.name	
（胸が・・・痛い・・・何・・・）[p]
#

#&f.name	
「！！！！！・・・これ・・・」[p]
#

　#&f.name	
（・・・血が・・・知らないうちに怪我してたんだ・・・）[p]
#

;暗転点滅、耳鳴りSE
[fadeinse storage="ikitumaru_koukaonlabo.ogg" time=10000]
　#&f.name	
「っ・・・・な・・・んで・・・・」[p]
#
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
　#&f.name	
（だめ・・・だ・・・こんなとこで倒れたらっっ・・・・）[p]
#
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
	
#&f.name	
（たたかわ、ないと・・・）[playse storage="sirimoti_onjin.ogg"][p]
#
[bg storage="black.png" time=300]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[stopse]
[message_kakusu_ad]
[anten]
[wait time=5000]

;暗転
	
[message_settei_ad]
「・・・・・・！！・・・[name]！！！」[p]
#

　#&f.name	
（・・・・・・？）[p]
#

	
　#&f.name	
（私・・・どうしたの？確か・・・異形と戦ってて・・・それで・・・胸に怪我してて・・・それで・・・）[p]
#

　#&f.name	
「！！！」[p]
#

;bgさっきと違う風景
[bg storage="sensou_lion.jpg"]
[call storage="scenario_2/live2d_lioness_macro.ks"]
[lioness_body_houtai]
[lioness_face_odoroki]
[live2d_fadein time=1000]

#ライオネス	
「[name]！！」[p]
#
[lioness_face_normal]
[lioness_face_sinnpai]
#&f.name	
「あ・・・」[p]
#

[lioness_breath]
#ライオネス	
「・・・気がついたか・・・[lioness_face_yareyare]ひやっとしたぜ」[p]
#

[lioness_face_normal]
#&f.name	
「ライオネス・・・」[p]
#

[playse storage="sinzou1_onjin.ogg"]
[bg storage="black.png" time=300]
[bg storage="sensou_lion.jpg" time=500]

#&f.name	
「うっ・・・」[p]
#

[lioness_eyes_right]
#ライオネス	
「あんま動くな」[p]
#

#&f.name	
「・・・でも・・・」[p]
#
[lioness_eyes_normal]
[lioness_head_above_y]
[lioness_head_right_x]
[lioness_face_normal]
[lioness_eyes_right]
[lioness_arms_poripori]
#ライオネス	
「その・・・手当てした・・・ばっかだ」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
[lioness_arms_normal]
#&f.name	
「え・・・」[p]
#

[playse storage="huku_koukaonlabo.ogg"]
#&f.name	
（あ・・・包帯・・・）[p]
#

[playbgm storage="raina_p_ontama.ogg"]
#&f.name	
（ライオネス・・・ここまで運んできて、手当てしてくれたの・・・？）[p]
#

　#&f.name	
「あ・・・ありがとう・・・」[p]
#

[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_tere]
#ライオネス	
「・・・あ・・・あぁ・・・・」[p]
#

　#&f.name	
（あれ？・・・なんで、赤くなってるんだろう・・・）[p]
#

　#&f.name	
「ライオネス・・・？顔、赤いよ？」[p]
#
[lioness_face_sekimen]
[lioness_face_otikomi]
[lioness_head_normal]
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_head_normal]
[lioness_head_under_y]

#ライオネス	
「あっ・・・あのな・・・お前なんで・・・変なとこ怪我すんだよ・・・」[p]
#

　#&f.name	
「へ？」[p]
#

　#&f.name	
（変なとこ？）[p]
#

[lioness_head_left_x]
[lioness_face_yokome_otikomi]
#ライオネス	
「しっ・・・しかたねえだろ・・・？その、ほっとくわけにも行かねえしよ・・・」[p]
#

[lioness_eyes_right]
[lioness_eyes_left]

[fadeoutbgm time=3000]
#&f.name	
（気持ちはよくわかるんだけど、どうしてそんな挙動不審なんだろ・・・？）[p]
#
[call storage="scenario_2/live2d_sub_macro.ks"]
[raputa_touroku]
[raputa_show]


「キゥー」[p]
#

[playbgm storage="kobitonokitchen_ontama.ogg"]
#&f.name	
「！」[p]
#

[lioness_eyes_normal]
[lioness_face_normal]
#ライオネス	
「と、とりあえずだな、[lioness_face_yokome_otikomi]ね、寝てろよ、お前は寝てろ！」[p]
#

#&f.name	
（竜？の赤ちゃん？かな？）[p]
#

#&f.name	
（小さな翼が生えてる・・・ってことは、翼竜？？）[p]
#

#&f.name	
（生まれたてなのかな・・・？可愛い・・・）[p]
#

#&f.name	
（どうしてこんなところにいるんだろ？というか？なんでライオネスの背中に・・・）[p]
#

#龍	
「キゥー」[p]
#

[lioness_face_metoji]
#龍	
「キゥ？」[p]
#

[lioness_head_right_x]
[lioness_eyes_right]
[lioness_face_odoroki]
#ライオネス	
「あっ、お前！」[p]
#

[raputa_warai]
#龍	
「キゥ！！」[p]
#
[anim name="raputa" left="-=70" time=200]
[anim name="raputa" left="+=70" time=300]
[anim name="raputa" left="-=70" time=200]
[anim name="raputa" left="+=70" time=300]
;龍ライおねすにくっつく

[lioness_arms_poripori]
[lioness_face_normal]
[lioness_eyes_right]
#&f.name	
（甘えてるの・・・？めちゃくちゃ可愛い・・・！）[p]
#

[lioness_arms_normal]
#&f.name	
「あ、あの、ライオネス[lioness_face_normal]・・・それ・・・」[p]
#

[lioness_eyes_right]
#ライオネス	
「ああ・・・」[p]
#

[lioness_face_normal]
#ライオネス	
「なんでこんなとこにいたんだかわからねえが、異形に踏み潰されそうになってたとこを助けた。それからはこんな感じだ」[p]
#

#&f.name	
「可愛いね・・・」[p]
#

[raputa_normal]
[lioness_head_right_x]
#ライオネス	
「ほんとなら、母竜を探してやらなきゃならねえんだが、[lioness_face_otikomi]こいつ、多分捨てられたのかもしれねえな」[p]
#

[fadeoutbgm time=3000]
　#&f.name	
「えっ・・・どうして？」[p]
#

[lioness_head_normal][lioness_eyes_left]
#ライオネス	
「翼竜は、２、３個卵を産むんだが・・・[lioness_head_under_y][lioness_face_metoji]丈夫に育つ見込みのねえやつは生まれても捨てるんだ」[p]
#

[lioness_head_normal]
[lioness_face_normal]
　#&f.name	
「かわいそう・・・」[p]
#

[lioness_head_left_x]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス	
「俺らと違って、生きぬくのは簡単じゃねえってことなんだろうな」[p]
#

[lioness_head_normal]

#&f.name	
「・・・・・・」[p]
#

[lioness_head_right_x]
[lioness_eyes_right]
#ライオネス	
「母竜も捜しにくる気配はねえし、こいつ、左足がうまく動かないときがあるみたいだ」[p]
#

[lioness_breath]
[lioness_face_yareyare]
#ライオネス	
「・・・とりあえず、助けたからにはつれてかえるしかねえと思ってよ」[lioness_head_right_x][lioness_face_normal][p]
#


#&f.name	
「そっか・・・でも、随分なつかれてるね」[p]
#
[anim name="raputa" top="-=80" time=200]
[anim name="raputa" top="+=80" time=300]
[anim name="raputa" top="-=80" time=200]
[anim name="raputa" top="+=80" time=300]
[lioness_eyes_left_above]
[lioness_face_normal]
[lioness_head_above_y]
[lioness_head_left_x]
#ライオネス	
「なんなんだろうなぁ。ま・・・別に悪い気はしねえけど」[lioness_head_normal][lioness_eyes_normal][p]
#

#&f.name	
（でも、なんだか微笑ましいな・・・ライオネス本人に言ったら怒るかもだけど）[p]
#

　#&f.name	
「っ・・・つ・・・」[lioness_face_odoroki][p]
#

[anim name="raputa" top="-=50" time=200]
[anim name="raputa" top="+=50" time=400]
[anim name="raputa" top="-=50" time=200]
[anim name="raputa" top="+=50" time=300]

[playbgm storage="raina_p_ontama.ogg"]
[raputa_normal]
[lioness_head_left_z]
[lioness_face_sinnpai]
#ライオネス	
「・・・大丈夫か？血も止めたし、命に関わるようなもんじゃねえとは思うが・・・無理はすんな」[p]
#

　#&f.name	
（ライオネス・・・なんだか、いつもより優しい・・・？怪我、してるからかな・・・）[p]
#

[lioness_body_under_y]
[lioness_head_under_y]
[lioness_face_otikomi]
#ライオネス	
「っ・・・てえな・・・」[p]
#

　#&f.name	
（え・・・）[p]
#

[lioness_eyes_normal]
[lioness_head_left_x]
[lioness_eyes_left]
[lioness_face_mehuse_dai]
　#&f.name	
「！！」[p]
#

　#&f.name	
「ライオネス、それ・・・」[lioness_head_normal][lioness_face_normal][p]
#
[message_kakusu_ad]
[camera zoom=1.2 x=80 y=-100 time=1000]

[reset_camera]
[message_settei_ad]
#&f.name	
「腕、血が・・・」[p]
#
[lioness_head_right_x]
[lioness_head_right_z]
[lioness_eyes_right]
#ライオネス	
「大丈夫だ。こいつ助けた時にちょっとな。[lioness_face_normal]手当てはしたし、問題ねえよ」[p]
#

　#&f.name	
「で、でも包帯、血が滲んで・・・」[p]
#
[lioness_head_normal]
[lioness_eyes_right]
#ライオネス	
「出血あんだからそりゃ滲むだろうが」[lioness_eyes_normal][p]
#

　#&f.name	
「でも・・・」[p]
#

　#&f.name	
（あんなに・・・かなり痛いと・・・思うんだけど・・・）[p]
#

[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal]
[lioness_eyes_left]
#ライオネス	
「気にすんな。お前の怪我よりはよほど軽い」[p]
#

[lioness_eyes_normal]
　#&f.name	
「ライオネス・・・」[p]
#

;竜の鳴き声
[raputa_warai]
[anim name="raputa" left="-=80" time=200]
[anim name="raputa" left="+=80" time=300]
[anim name="raputa" left="-=80" time=200]
[anim name="raputa" left="+=80" time=300]
[lioness_mod_idle_no_move]
[lioness_head_right_z]
[lioness_face_ha]
#ライオネス	
「・・・こら、齧るな」[p]
#

[anim name="raputa" top="-=80" time=200]
[anim name="raputa" top="+=80" time=300]
[anim name="raputa" top="-=80" time=200]
[anim name="raputa" top="+=80" time=300]

[raputa_normal]
[lioness_head_right_x]
[lioness_eyes_right]
[lioness_face_warai]
　#&f.name	
（ライオネス・・・）[p]
[lioness_mod_idle]
[lioness_eyes_normal]
[lioness_head_normal]
[lioness_face_normal]
[fadeoutbgm time=3000]
#ライオネス	
「・・・ともかく、ずっとここにいるわけにはいかねえな・・・」[p]
#

　#&f.name	
「あ・・・そうだよね、クライストさんが帰ってくるまでに、陣に戻らないと・・・」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	
「こう広くちゃ、探してもらうわけにもいかねえしな・・・ちっと辛えだろうが、頑張ってもらうぞ」[p]
#

#&f.name	
「・・・大丈夫、頑張れるよ」[p]
#

[lioness_face_sinnpai]
#ライオネス	
「・・・[name]・・・」[p]
#
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス	
「肩かす。
[lioness_head_normal]
[lioness_face_normal]
遠慮なく頼れよ」[p]
#

#&f.name	
「ありがとう。ライオネスこそ、その・・・大丈夫？」[p]
#

[lioness_head_under_y]
[lioness_head_normal]
#ライオネス	
「てめーと違って俺は打たれ強いんだよ」[p]
#

#&f.name	
「で、でも・・・」[p]
#

[lioness_eyes_left]
[lioness_body_left_z]
[lioness_head_left_x]
[lioness_head_left_z]
#ライオネス	
「今は自分のことだけ・・・心配しろ」[p]
#

[lioness_eyes_normal]
[lioness_head_normal]
[lioness_body_normal]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]
#&f.name	
「ライオネス・・・」[p]
#
[live2d_fadeout time=1000]
[chara_hide name="raputa"]
	
;本陣に戻るミニゲーム
[anten]
[bg storage="sougen1_tatakai_tasogare.jpg" time=500]
[playbgm storage="soudou.ogg"]
[playse storage="igyou_nakigoe_onjin3.ogg"]
[image layer=1 page=fore visible="true" storage="igyou_3_tatie.png" name="monster_1" x=130 y=20]

#&f.name
「！！」[p]
#

[free name="monster_1" layer=1]
[lioness_face_ikari]
[live2d_fadein time=1000]
[lioness_head_right_x]
[lioness_head_right_z]
#ライオネス
「ちっ・・・こういう時に限ってよ・・・」[p]
#

[lioness_head_normal]
#ライオネス
「いいか[name]！お前はけが人だ！無理すんじゃねえぞ！！」[p]
#

#&f.name
「で、でもライオネスだって・・・」[p]
#


[lioness_eyes_right]
#ライオネス
「こんなん怪我のうちに入らねえよ。
[lioness_eyes_normal]
[lioness_head_under_y]
心配すんな、俺がさっさと片付ける」[p]
#

#&f.name
「ライオネス・・・」[p]
#
[call storage="scenario_2/live2d_lioness_macro.ks"]
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
*lion_battle_start
;テストコード
;[eval exp="f.lion_battle_kizuna=1"]
;[eval exp="f.lionkonkando=100"]
[eval exp="f.friend=2"]
[eval exp="f.monster_l_size_3=1"]
[eval exp="f.monster_group_25=1"]
[eval exp="f.event_war_lion=1"]

[stopbgm]
[battle_start]
*igyou_battle_end

;暗転
[anten][live2d_lion_touroku]
[wait time=3000]
[bg storage="erumusougen_tasogare.jpg"]
[message_settei_ad]
[config_true]
[chara_show name="kra" top=10]

#クライスト	
「あー、肉がえぐれてるねこれ、かなり痛そう」[p]
#
[chara_hide name="kra" time=50]
[live2d_show name="lioness" y=-1.5 x=0.0 scale=3.9]
[lioness_body_houtai]
[live2d_fadein time=50]


#ライオネス	
「いいから、　[name]が先だ。早くやれ」[p]
#

[live2d_fadeout time=5]

[chara_show name="kra" storage="kra_tatie/Idle_gif_smile.gif" top=10 time=50]
#クライスト	
「あれ？痩せ我慢？」[p]
#
[chara_hide name="kra" time=50]
[lioness_arms_normal]
[lioness_face_chottoikari]
[live2d_fadein time=50]
#ライオネス	
「うるせえ！！」[p]
#

　#&f.name	
（ライオネス・・・）[p]


[config_true]
[live2d_fadeout time=50]
[anten]
[bg storage="erumusougen_tasogare.jpg"]
[chara_show name="kra" storage="kra_tatie/Idle_gif_metoji.gif"  top=10]	
[playse storage="hikari_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true storage="ao.png" name="ao" x=0 y=0 time=1000]
[image layer=2 page=fore visible=true name="ao" storage="siro.jpg" time=1000]
[w][w][w]
[free name="ao" layer=2]
[stopse]

[kra_tatie_bisyou_youen]
#クライスト	
「はい、これで大丈夫だよ」[p]
#

#&f.name	
「あ、ありがとう・・・」[p]
#

[kra_tatie_smile]
#クライスト	
「うん、どういたしまして。[kra_tatie_normal]・・・」[p]
#
[chara_hide name="kra" time=50]
[live2d_fadein time=50]
#ライオネス
「・・・なんだよ」[p]
#
[live2d_fadeout time=50]
[chara_show name="kra" storage="kra_tatie/Idle_gif_akireru.gif" top=10 time=50]
#クライスト	
「・・・やる気が起きないんだよね、相手が男だと」[p]
#
[chara_hide name="kra" time=50]

[lioness_face_yareyare]
[live2d_fadein time=50]
#ライオネス
「あのなあ・・・いいから早くやってくれよ・・・」[p]
#

#&f.name
「・・・」[p]
#

[live2d_fadeout time=50]
[playse storage="hikari_koukaonlabo.ogg"]
[image layer=2 page=fore visible=true storage="ao.png" name="ao" x=0 y=0 time=1000]
[image layer=2 page=fore visible=true name="ao" storage="siro.jpg" time=1000]
[w][w][w]
[free name="ao" layer=2]
[stopse]

[config_true]
[chara_show name="kra" storage="kra_tatie/Idle_gif_metoji.gif" top=10 left=-70 time=50]
#クライスト	
「はい、終わり」[p]
#
[chara_show name="lion" height="698" width="456" top=-35 left=400]
#ライオネス
「悪いな」[p]


[kra_tatie_normal]
#クライスト	
「それはそうと・・・さっきから気になってるんだけどさ・・・その竜・・・翼竜の子供？」[p]
#
[raputa_touroku]
[chara_show name="raputa" width="170" height="199" top=0 left=650]
[lioness_tatie_udekumi]
#ライオネス	
「あぁ。戦闘に巻き込まれてるとこを助けた。たぶん、捨てられたやつだろ」[p]
#

[kra_tatie_mehuse]
#クライスト	
「ふうーん・・・それって、足が不自由だからかな」[p]
#

[lioness_tatie_odoroki]
#ライオネス	
「お前・・・よくわかったな。確かに・・・」[p]
#

#&f.name	
（クライストさん、一目みてそんなこともわかるんだ・・・）[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・・・・」[p]
#

　#&f.name	
「クライストさん？」[p]
#

[kra_tatie_normal]
#クライスト	
「いや、なんでもないよ」[p]
#

　#&f.name	
（・・・？）[p]
[config_false]
[chara_hide name="lion"][chara_hide name="raputa"]
[chara_show name="tris" height="603" width="420" top=50 left=400]
#トリスタン	
「まあ・・・だな・・・・・・・とりあえず一件落着ってとこか・・・」[p]
#

[kra_tatie_smile]
#クライスト	
「いやあ、大冒険だったよね、トリスタン、楽しかっただろ？」[p]
#

[tris_tatie_donari]
#トリスタン	
「ふざけんなこのやろう！俺は生きた心地がしなかったぞっ！！！」[p]
#

　#&f.name	
（本当に・・・ルシアを倒した・・・の？？）[p]
#
[chara_hide_all time=50]
[config_true]
[lioness_tatie_show]
#ライオネス	
「お前よ・・・本当に、ルシアをやったのか？」[p]
#
[chara_hide_all time=50]
[config_false]
[chara_show name="tris" height="603" width="420" top=50 left=400 time=50]
[chara_show name="kra" top=10 left=-70 time=50]
#トリスタン	
「・・・ああ。たどりつくまでがすごかったけどな・・・。ルシアと対峙したあとは、あっさりだ。魔剣ヴァエル・・・ってのか？のも、初めてみたときゃ驚いたが・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「あまりある強大な力も、それを制御できなければ意味を成さない」[p]
#

　#&f.name	
「クライストさん・・・？」[p]
#

[kra_tatie_smile]
#クライスト	
「そういうこと。ルシアはヴァエルを制御できなかったんだよ。だから、最終的には自滅する感じだったね」[p]
#

　#&f.name	
「じ、自滅・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「そう。王宮の指示どおり、『ルシア』は倒したよ。『ルシア』はね」[p]
#

　#&f.name	
（・・・どういう、ことだろう・・・）[p]
#

[chara_hide_all time=50]
[config_true]
[lioness_tatie_show]
#ライオネス	
「・・・・・・」[p]
#

[chara_hide_all time=50][config_false]
[chara_show name="tris" height="603" width="420" top=50 left=400 time=50]
[chara_show name="kra" top=10 left=-70 time=50]

[tris_tatie_mehuse]
#トリスタン	
「グレッグ団長が、撤収の準備しろって。これからが大変だな・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「俺はけが人の治療に当たるよ。　[name]ちゃん、もし動けるようなら、手伝ってくれるかな」[p]
#

#&f.name	
「あ、は、はい！」[p]
#
[chara_hide_all time=50]

[config_true]
[lioness_tatie_show]
[lioness_tatie_akireru]
#ライオネス	
「・・・ルシアは、か・・・」[p]
#

[chara_hide_all][chara_off]

[jump storage="scenario_2/episode/epi_flag_check.ks"]
	
	暗転