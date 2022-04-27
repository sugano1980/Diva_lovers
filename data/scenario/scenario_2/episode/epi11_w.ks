
;船

[bg storage="westa_hune.jpg"]
[playbgm storage="wave1_koukaonlabo.ogg"]


[bg storage="kanpan_tasogare.jpg"]
#船長	
「わりいクライスト。すぐには出航は難しそうだ。船に不具合が出た」[p]
#

[kra_tatie_touroku]
[kra_tatie_show_tall]
#船長	
「コイツもだいぶ年季入っててよ。もうちょっとで準備ができるから、甲板で待っててくれや」[p]
#

#&f.name	
「あっ・・・はい」[p]
#

[kra_tatie_metoji]
#クライスト	
「わかった。あとで行き先の詳しい説明をするよ。ちょっとわかりにくい場所だからさ」[p]
#

#船長	
「おう！どんな難所でも任せとけ！お前さんには世話になったからなあ、どこだって行ってやるぜ！」[p]
#

[kra_tatie_normal]
#クライスト	
「それじゃ、またあとで。地図を確かめてくるよ」[p]
#

[playse storage="sanbasiasioto_onjin.ogg"]
[chara_hide_all][chara_off]
[fadeoutbgm time=1000]


[if exp="f.kra_flag==1"]	
*kra_murder
[anten]
[bg storage="kanpan_tasogare.jpg"]	
;	#クライスト好感度
[stopbgm]
[playse storage="walkyuka_onjin.ogg"]
[lioness_tatie_touroku]
[lioness_tatie_show]	
#ライオネス	
「・・・おい、[name]」[stopse][p]
#
#&f.name	
「ライオネス？どうしたの？」[p]
#

[lioness_tatie_kosinite]
#ライオネス	
「・・・ちょっとこい」[p]
#
#&f.name	
「？？」[p]
#
[chara_hide_all]	
;	草原
[bg storage="wesuta_sougen.png"]
[playse storage="walk-tussock1_koukaonlabo.ogg"]
	
#&f.name	
「ライオネス、どうしたの？あんまり遠くに行くと船行っちゃうよ？」[p]
#
[lioness_tatie_show]
#ライオネス	
「・・・・みろ、あそこ」[stopse][p]
#
#&f.name	
「・・・・えっ・・・」[p]
#
[chara_hide_all]
[playbgm storage="op_musmus.ogg"]
#&f.name	
（・・・人が・・・倒れてる・・・？）[p]
#

;	足音効果音

[playse storage="kusahasiru_onjin.ogg"]
#&f.name	
「あっ、あの、大丈夫ですか！？」[stopse][p]
#
[lioness_tatie_show]
#ライオネス	
「馬鹿、どこが生きてるように見えんだ」[p]
#

#&f.name	
「え・・・じゃ、じゃあ・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・みたとこ、傭兵だな。大方、さっき街の奴らが話してたんは、これのことじゃねえのか」[p]
#
#&f.name	
「この人・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「知ってるのか？」[p]
#
#&f.name	
「昨日、クライストさんとしゃべってた・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「・・・・・・」[p]
#
#&f.name	
「まさか・・・・クライストさん、が・・・？」[p]
#

[fadeoutbgm time=1000]
[lioness_tatie_kimazui]
#ライオネス	
「・・・・・・。・・・そろそろ、船でんぞ」[p]
#
#&f.name	
「で、でも・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「傭兵の最後なんざ、こんなもんだ。そのうち、モンスターが死骸片付けてくれんだろ」[p]
#
#&f.name	
「っ・・・」[p]
#
[lioness_tatie_normal]
#ライオネス	
「急がねえと間に合わねえぞ」[p]
#
[chara_hide_all]
[playse storage="walk-tussock1_koukaonlabo.ogg"]
#&f.name	
（・・・・・・そんな・・・クライストさんが、まさか・・・でも、まさかそんなこと・・・ない、よね・・・？）[p]
#
#&f.name	
（・・・そんな、こと・・・）[p]
#

[stopse]
[anten]
[live2d_kra_touroku]
[live2d_kra_show_sekkin_2]
[live2d_fadeout time=50]
[bg storage="kanpan_tasogare.jpg"]
;	船、波の音SE
[playse storage="wave1_koukaonlabo.ogg"]
#船長	
「しっかしなあ、あのへんは波が高くてなかなか船つけるのは難しいぜ？」[p]
#
[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「俺たちが上陸できればそれでいいよ。あとは決めたところで落ち合えば・・・」[p]
#
#船長	
「わかった。そいじゃあ、いっちょやってみるか！」[p]
#
[kra_tatie_smile]
#クライスト	
「頼りにしてるよ、船長。
[kra_tatie_metoji]
あとで部屋に行く。こまかい合流地点を説明するよ」[p]
#

#船長	
「おうよ！そいじゃ、先に行ってるぜ！」[p]
#
[kra_tatie_yokome]
#&f.name	
（・・・クライストさん・・・なんでもないような顔してる・・・やっぱり、傭兵さんのこととは無関係なのかな・・・）[p]
#
[kra_tatie_mihiraki]

[chara_hide_all]
[playse storage="walkyuka_onjin.ogg"]
[live2d_fadein time=1000]
[stopse]
#クライスト	
「・・・そんなに俺のことが気になる？」
[aho_face_bisyou_youen]
[aho_body_right_z]
[p]
#
[aho_body_normal]
#&f.name	
「き、気になって、なんか・・・」[p]
#
[aho_face_normal_majime]
#クライスト	
「さっきからずっと見てたじゃないか」
[aho_eyes_right]
[p]
[aho_eyes_normal]
#
#&f.name	
「み・・・見てない、よ・・・」[p]
#
[aho_face_yareyare]
#クライスト	
「じゃ、俺の気のせいかな。
[aho_face_bisyou_youen]
[aho_arms_udekumi]
俺はずっと気になってたのに、残念」
[aho_head_right_z]
[p]
#
#&f.name	
（え・・・）[p]
#
[aho_face_hutuu_warai]
#&f.name	
「っ・・・」[p]
#
[aho_head_left_x]
[aho_face_normal_majime]
[aho_eyes_left]
#クライスト	
「・・・そういえば、さっきライオネスと２人でどこ行ってたの？」[p]
#
#&f.name	
「えっ」[p]
#
[aho_head_normal]
[aho_body_right_z]
[aho_eyes_normal]
#クライスト	
「・・・ほら、出航前にさ、船出てっただろ」[p]
#
[aho_body_normal]
#&f.name	
「・・・あ・・・」[p]
#
[aho_eyes_right]
[aho_head_right_x]
[aho_face_bisyou_youen]
#クライスト	
「・・・もしかして、逢引とか？」[p]
#
#&f.name	
「そ、そんなんじゃ・・・」[p]
#
[aho_face_yareyare]
[aho_head_normal]
[aho_eyes_normal]
#クライスト	
「へえ？じゃあなんだったのかな、気になるなぁ」
[aho_face_bisyou_youen]
[p]
#
#&f.name	
（・・・クライストさん・・・。やっぱり、聞いて、みようかな・・・）[p]
#
#&f.name	
「あ、あのね」[p]
#
[aho_face_mihiraki]
#クライスト	
「ん？」
[aho_face_normal_majime]
[p]
#
#&f.name	
「さっき・・・ライオネスと・・・」[p]
#
[live2d_fadeout time=50]
[anten]
;	暗転
;	暗転解除
[bg storage="kanpan_tasogare.jpg"]
[playbgm storage="op_musmus.ogg"]
[live2d_fadein time=1000]
[aho_face_yokome]
#クライスト	
「・・・ああ、見ちゃったんだ」[p]
#
#&f.name	
「えっ・・・く、クライストさ・・・じゃあ・・・」[p]
#

[aho_head_left_z]
[aho_face_yareyare]
[aho_mod_idle_normal_metoji]
#クライスト	
「傭兵同士ではよくあることだよ、血の気が多いやつが多いから、ちょっとしたいさかいでね」[p]
#

[aho_mod_idle_normal]
[aho_head_above_y]
[aho_head_right_x]
[aho_face_akireru]

#クライスト	
「こっちとしても、降りかかる火の粉は払わなくちゃならないから」[p]
#
[aho_face_normal_majime]
#&f.name	
「それでも、こ、殺すなんて・・・」[p]
#
#&f.name	
（あのとき、仲がいいようにも見えたのに・・・）[p]
#
[aho_mod_idle_normal_mehuse]
[aho_head_normal]
[aho_face_mehuse]
#クライスト	
「・・・・・・・・」[p]
#
#&f.name	
（それに、どうしてそんな平気な顔をしていられるの・・・？）[p]
#
[aho_face_metoji]
#クライスト	
「・・・・・・。否定したければすればいい。
[aho_face_mehuse]
だけど、俺にはこういう生き方しかできないんだ」[p]
#
#&f.name	
「・・・クライスト・・・さん・・・」[p]
#
[aho_face_metoji]
[aho_mod_idle_normal_metoji]
#クライスト	
「この紋章を、体に刻んだときからね・・・」[p]
#
[live2d_fadeout time=1000]
[live2d_delete_all][live2d_off]
[playse storage="walkyuka_onjin.ogg"]
#&f.name	
（・・・クライストさん・・・）[stopse][p]
#
		
#&f.name	
「・・・・・・・」[p]
#

[lioness_tatie_touroku]
[lioness_tatie_show]
#ライオネス	
「・・・おい、[name]」[p]
#
#&f.name	
「あっ・・・ライオネス・・・」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・あの傭兵の件、やっぱりあいつだったのか」[p]
#
#&f.name	
「えっ・・・なんで・・・」[p]
#
[lioness_tatie_kimazui]
#ライオネス	
「・・・お前の顔見てなんとなく」[p]
#
#&f.name	
「・・・・・・・」[p]
#
[lioness_tatie_kosinite]
#ライオネス	
「傭兵、か・・・同じ剣を扱う仕事でも、俺らとはまた違った奴らってとこなんだろうな」[p]
#
[lioness_tatie_normal]
#ライオネス	
「・・・・・・あいつに近づきすぎんじゃねえぞ」[p]
#
#&f.name	
「・・・・・ライオネス」[p]
#
[lioness_tatie_udekumi]
#ライオネス	
「・・・上っ面に騙されて気許すと、何されるかわからねえからな」[p]
#
#&f.name	
「で、でも・・・クライストさんは・・・」[p]
#
[lioness_tatie_chottoikari]
#ライオネス	
「そんなやつじゃねえって思いたいのか？あのツラ見ただろ。殺人やってあんな顔してられるなんて、正気じゃねえぞ」[p]
#
#&f.name	
「っ・・・」[p]
#
[lioness_tatie_otikomi]
#ライオネス	
「痛い目にあってからじゃおせえんだ。
[lioness_tatie_normal]
とにかく、あいつには気をつけろ。・・・わーったな」[p]
#
[chara_hide_all][chara_off]
[playse storage="walkyuka_onjin.ogg"]
#&f.name	
「ライオネス・・・」[p]
#
#&f.name	
（・・・クライストさんは・・・ホントにそんな残酷な人なの・・・？）[p]
#
#&f.name	
（・・・王都で子供たちと一緒にいたときは、すごく優しそうに見えたのに・・・）[p]
#
[anten]
[bg storage="kanpan_tasogare.jpg"]
[endif]	



#船長	
「おらー！野郎どももたもたすんな！急げよお！！」[p]
#

#&f.name	
（・・・また出航か・・・）[p]
#

#&f.name	
（クライストさんが言ってたレムって人・・・どんな人なんだろう・・・）[p]
#





[jump storage="scenario_2/episode/epi_flag_check.ks" target=*episode_free]



*rem

[anten]

[playbgm storage="wave1_koukaonlabo.ogg"]
[bg storage="westa_hune.jpg"]
[bg storage="oasis_ac.jpg"]
[fadeoutbgm time=2000]
[message_settei]
[wait time=2000]
[cm]
レムという人物が住む洞窟は、広大なネド砂漠のちょうど南端のあたりにあった。[l]
いくつか自然にできた洞窟が点在する中、ひときわ大きな洞窟の前にくると、クライストは立ち止まった。[l]
[cm]



[message_settei_ad]
[bg storage="doukutu_pakutaso.jpg"]

[playse storage="doukutu_onjin.ogg"]
#&f.name	
（うひゃあ・・・なんていうか・・・人が住むにはあまり居心地よくなさそうな・・・）[p]
#

#&f.name	
「・・・こ、この洞窟に、住んでるの？」[p]
#


[kra_tatie_touroku]
[kra_tatie_show_tall]
#クライスト	
「うん。まあ本人、変わり者だからさ。
[kra_tatie_yokome]
色々事情もあって」[p]
#

#&f.name	
「事情・・・？」[p]
#

[kra_tatie_normal]
#クライスト	
「とりあえず、行こうか。足元に気をつけて」[p]
#

#&f.name	
「う、うん・・・」[p]
#

[chara_hide_all]

[anten]
[bg storage="doukutu_pakutaso.jpg"]
[playse storage="doukutu_onjin.ogg"]
[kra_tatie_show_tall]
;暗転
#クライスト	
「やあ、レム。
[kra_tatie_smile]
ひさしぶりだね」[p]
#

[chara_hide_all time=50]

[rem_tatie_touroku]
[rem_tatie_show]
#レム	
「・・・・・クライストか。なんだそいつらは」[p]
#

#&f.name	
（こ・・・この人がレム・・・さん？）[p]
#
[chara_hide_all]

[kra_tatie_show_left]
[rem_tatie_show_right]
#クライスト	
「ちょっと色々あってね」[p]
#


[rem_tatie_mehuse]
#レム	
「・・・・・・・・・」[p]
#

[kra_tatie_komari]
#クライスト	
「レム・・・・」[p]
#


[kra_tatie_mehuse]

#クライスト
「・・・・・力を・・・。
[w][w]
[kra_tatie_normal]
力を、貸して欲しいんだ」[p]
#

[rem_tatie_yokome]
[playbgm storage="shuuen_musmus.ogg"]
#レム	
「・・・・・・断る」[p]
#

#&f.name	
（えっ・・・）[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・そういうと思ってたよ」[p]
#

[rem_tatie_normal]
#レム	
「・・・クライスト。俺が人間との関わりを避けているのを知っていて言っているのか？」[p]
#

#&f.name	
（人間との関わりを・・・避けるって・・・）[p]
#

[kra_tatie_normal]
#クライスト	
「ああ。だから今まで、君を巻き込まない解決方法を探していたんだ。だけど今回は、俺たちの力だけじゃどうにもならないらしい」[p]
#

[rem_tatie_mehuse]
#レム	
「・・・・・・・・」[p]
#

[kra_tatie_komari]
#クライスト	
「とりあえず、話だけでも聞いてもらえないか」[p]
#


[rem_tatie_normal]
#レム	
「帰れ」[p]
#

[chara_hide_all time=50]

[lion_para_kioku]
[chara_on][chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40]

[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400]
#ライオネス	
「お、おいおい・・・なんだよそれ・・・」[p]
#

#トリスタン	
「さっきから、ずいぶんと無礼な態度じゃないか」[p]
#


[chara_hide_all time=50]
[chara_show name="rem" storage="rem_tatie/rem_face_ikari.png" height="699" width="660" top=-21 left=-140]
#レム
「無礼だと？無礼なのは貴様らだろう。いきなり押しかけて・・・」[p]
#
[chara_show name="kra" storage="&f.kra_mehuse" top=0 left=320]
#クライスト	
「・・・それは、謝るよ。だけど・・・レム」[p]
#

[rem_tatie_metoji]
#レム	
「人間の話など聞く気はない。さっさと帰れ！」[p]
#

[kra_tatie_komari]
#クライスト	
「レム・・・」[p]
#

[fadeoutbgm time=1000]
[rem_tatie_yokome]
#レム	
「クライスト・・・貴様はわかっているはずだ。俺が今まで、どれだけこいつらに苦しめられてきたか・・・」[p]
#

#&f.name	
（・・・え？）[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・レム、彼らがやったわけじゃないよ」[p]
#

[rem_tatie_metoji]
#レム	
「それでも同じだ。俺にとって人間は憎い敵でしかない」[p]
#

#&f.name	
（敵・・・って・・・やっぱり・・・この人が・・・魔族・・・？）[p]
#

[kra_tatie_normal]
#クライスト	
「だけど、それを言うなら俺も人間だ。
[kra_tatie_mehuse]
その人間の俺を、君はあのとき助けてくれただろ」[p]
#

#&f.name	
（助けた・・・？）[p]
#

[rem_tatie_yokome]
#レム	
「・・・・・ふん・・・・・・」[p]
#

[rem_tatie_metoji]
#レム	
「・・・・・・・ただの気まぐれだ。どうせ、魔剣の持ち主など、最後にはどうなるかしれているからな」[p]
#

[kra_tatie_normal]
#クライスト	
「本当に・・・、そうなのか？」[p]
#

;そのときの#クライストの表情は、どこか切実だった。だが、#レムは振り返って彼をさげすむように言葉を放つ。

[rem_tatie_yokome]
#レム	
「それ以外に何かあるとでもいいたいのか？そんなくだらぬ期待を持つような甘い奴だとは思っていなかったが」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・・・・・」[p]
#

#&f.name	
（クライストさん・・・）[p]
#

[rem_tatie_metoji]
#レム	
「・・・ともかく、これ以上人間どもと関わる気はない。・・・帰れ」[p]
#

[kra_tatie_komari]
#クライスト	
「・・・・レム・・・・」
[kra_tatie_mehuse]
[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・わかったよ。いきなり来て、色々とすまなかった」[p]
#

[rem_tatie_yokome]
#レム	
「・・・・・・・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「けれど俺は、感謝してるよ。例え気まぐれでも・・・あのとき君が助けてくれたことを」[p]
#

#&f.name	
「クライストさん」[p]
#

[kra_tatie_mehuse]
#クライスト	
「[name]ちゃん、ライオネス、トリスタン、帰ろう」[p]
#

[chara_hide_all time=50]



[chara_on][chara_show name="lion" height="698" width="456" top=-35 left=-40]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400]


#トリスタン	
「ちょ、ちょっと待て、せっかくここまで来たんだぞ？」[p]
#

#ライオネス	
「・・・クライスト」[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]


#クライスト	
「ごめん、やっぱり・・・レムの気持ちを考えたら・・・。
[kra_tatie_mehuse]
ヴァエルについては、他の方法を探そう」[p]
#

[chara_hide_all time=50]
[rem_tatie_show]
[rem_tatie_mehuse]
#レム	
「・・・ヴァエル・・・」[p]
#

#&f.name	
（・・・え・・・？）[p]
#

#&f.name	
（・・・レムさん・・・？）[p]
#

[rem_tatie_metoji]
#レム	
「・・・・・・」[p]
#

[chara_hide_all]
[kra_tatie_show_tall]

#クライスト	
「・・・それじゃ、行こうか」[p]
#

[chara_move name="kra" left=-70]
[rem_tatie_show_right]
#レム	
「・・・おい」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「・・・・・？レム？」[p]
#

#レム	
「・・・今、ヴァエルとか言ったな」[p]
#

#&f.name	
（え・・・）[p]
#

[kra_tatie_normal]
#クライスト	
「・・・・ああ・・・・。ヴァエル。魔剣ヴァエル。
[kra_tatie_mehuse]
以前に君が言っていた・・・アグレアスと対になるもうひとつの魔剣だ」[p]
#

[rem_tatie_metoji]
#レム	
「・・・強大な魔力を北から感じたが・・・あれはやはりヴァエルだったか・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・レム」[p]
#

[rem_tatie_normal]
#レム	
「詳しい話を聞かせろ」[p]
#

#&f.name	
（・・・レムさん・・・？）[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・・・・・・わかった」[p]
#

[chara_hide_all]
[anten]
;[showmenubutton]
[bg storage="doukutu_pakutaso.jpg"]

[playbgm storage="op_musmus.ogg"]


[rem_tatie_show_left]
#レム	
「魔剣ヴァエルがエルムナードに・・・」[p]
#

[kra_tatie_show_right]
#クライスト	
「ああ。持ち主のエルムナード女王は倒したが、ヴァエルは宿主を探してさまよっている状態だ」[p]
#

[rem_tatie_metoji]
#レム	
「・・・なるほどな。それで・・・貴様らは何をしようとしているんだ？」[p]
#

#&f.name	
「・・・その、ヴァエルを、倒そうと・・・」[p]
#

[rem_tatie_ikari]
#レム	
「・・・ディーヴァを・・・倒すだと・・・？」[p]
#

[stopbgm]
[rem_tatie_warai]
#レム	
「くっ・・・・はははははっっ！！」[p]
#

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]
[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「何がおかしい！」[p]
#

[chara_hide_all time=50]

[chara_show name="rem" storage="rem_tatie/rem_face_warai.png" height="699" width="660" top=-21 left=-140]

#レム	
「人間ごときがディーヴァを倒すだと！？とんだ笑い話だな、クライスト」[p]
#
[kra_tatie_show_right]
#クライスト	
「・・・・・・・」[p]
#

#レム	
「ここのクズどもに情がうつって、俺に話をしにきたとでも言うつもりか」[p]
#

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=50]
#ライオネス	
「てめえっ・・・」[p]
#

#&f.name	
（そんな・・・言い方・・・）[p]
#

[chara_hide_all time=50]
[rem_tatie_show]
#レム	
「ずいぶんと虫のいい話だな。自分たちが彼らにしてきた所業・・・その報いを受けることなく
	彼らが精神体となったのちもなお、その存在を潰そうとするとは」[p]
#

#&f.name	
「・・・ヴァエルのことは・・・確かに昔のクレールの人たちが悪いのかもしれないけど・・・
	・・・でも・・・」[p]
#

[rem_tatie_mehuse]
#レム	
「小娘。彼ら・・魔族が迫害を受けていたのは何もクレールだけのことではないぞ。」[p]
#

#&f.name	
「え・・」[p]
#

[playbgm storage="yamidoukutu_ontama.ogg"]
[rem_tatie_ikari]
#レム	
「世界中の魔族という魔族が、人間たちから差別と虐待を受けていたのだ。
[rem_tatie_mehuse]
・・・彼らは人間たちに何もしていないというのに・・むしろ、弱き人間たちを手助けしていたというのに・・・」[p]
#

[rem_tatie_metoji]
#レム
「人間たちはその力に恐れおののき、彼らを追放し、残虐な方法で殺戮した」[p]
#

[chara_move name="rem" left=-140]
[kra_tatie_show_right]
#クライスト	
「古代人魔戦争の文献には、この戦争は魔族が火種だったとされているけど・・」[p]
#

[rem_tatie_normal]
#レム	
「それは人間側の言い分だ。ずるがしこい人間どもは、歴史を都合のいいように美化するからな」
[p]
#
[rem_tatie_mehuse]

#レム	
「	・・・迫害を受け、滅び行く直前、魔族たちは自らの魔力を結集して、ふたつの魔剣を作り出した」[p]
#

#&f.name	
「！・・・それが・・・アグレアスと・・・」[p]
#

[kra_tatie_mehuse]
#クライスト	
「ヴァエル・・・・」[p]
#

[rem_tatie_metoji]
#レム	
「そうだ。ふたつの剣は人間どもへの復讐のために作り出された、いわば呪われた剣」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「呪われた・・・剣・・・だと！？し、しかし・・・」[p]
#

#ライオネス	
「・・・・・・・・・」[p]
#

#&f.name	
「どうして・・・剣に・・・」[p]
#

[chara_hide_all time=50]
[rem_tatie_show]

#レム	
「人間の命を喰らうためだ」[p]
#

#&f.name	
「！！！！」[p]
#

#&f.name	
（命を・・・食らう！？）[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]
[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=50]

#ライオネス	
「なっ・・・命を喰う・・・って・・・なんだよ・・・それ・・・」[p]
#

[chara_hide_all time=50]

[rem_tatie_show]
#レム	
「魔剣は命を喰らう。契約した宿主の肉体を使ってな。
	宿主がいなくなれば、また次の契約者を探す」[p]
#


[rem_tatie_mehuse]
#レム
「そうしてすべての人間の命を刈り取るまで復讐は続くのだ」[p]
#

[chara_move name="rem" left=-140]
[kra_tatie_show_right]

#クライスト	
「復讐のためだけに存在する・・魔族の怨恨・・それがディーヴァ・・か。」[p]
#

[rem_tatie_warai]
#レム	
「人間は本当に愚かだ。より強い力を得ようと、次から次へとディーヴァと契約する。
	・・・なあ、クライスト」[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・ああ、そうだな・・・。」[p]
#

#&f.name	
（魔剣はのろわれた、剣・・・じゃあ・・・クライストさんのアグレアスも・・・）[p]
#


#&f.name	
「・・・く・・・クライストさんのディーヴァも、
[kra_tatie_normal]
人間の命を欲しがるの・・？」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・そうだよ。・・命を欲するのは、ディーヴァの性だから。それがなければ魔力を維持できないというのもある」[p]
#


[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「じゃあ・・・魔剣の持ち主は、絶えず命を奪いつづけていなければならないということなのか・・？」[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]

#クライスト	
「・・・まあ、一度に大量に手に入れば、当分は持つよ。俺がこの仕事をしてるのも、都合がいいからで・・・」[p]
#
[kra_tatie_yokome]

#クライスト
「大幅な強化ならともかく、魔力の維持だけなら、たいしたことない」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40 time=50]
[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「・・・・・・」[p]
#

#&f.name	
（クライストさん・・さらっとすごいこと言ってる・・）[p]
#


[lioness_tatie_udekumi]

#ライオネス	
「なあ・・命を欲しがるのはわかるけど、あえて人を殺さなかったらどうなるんだ？他を探してでていっちまうんじゃねえのか？」[p]
#

[chara_hide_all time=50]

[rem_tatie_show]

#レム	
「それはないな。ディーヴァは貪欲に生命を欲する。殺したくなくても、魔剣に振り回されながら無差別に虐殺を繰り返すはめになる」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]
#ライオネス	
「・・・・マジかよ・・」[p]
#

[chara_hide_all time=50]
[rem_tatie_show]

#レム	
「・・・・・・・この際だから、はっきり言ってやろう。お前らがディーヴァを倒すことなど、不可能だ」[p]
#

#&f.name	
「っ・・・で、でも、今は手も足も出ないけれど、もし・・・」[p]
#

[rem_tatie_yokome]

#レム	
「仮に直接攻撃をできたとしても、人間が魔族の魔力にかなうわけがなかろう」[p]
#

#&f.name	
「っ・・・」[p]
#

#&f.name	
（だけど・・・だけど・・・）[p]
#

[fadeoutbgm time=1000]

[rem_tatie_metoji]
#レム	
「と、いうわけだ。俺は貴様らに協力などする気は微塵もない。さっさと帰るんだな」[p]
#

[if exp="f.kra_flag==1"]

[chara_move name="rem" left=-140]
[kra_tatie_show_right]
#クライスト
「・・・アグレアスの力があってもか？」[p]
#

[rem_tatie_ikari]
#レム
「・・・アグレアスだと？クライスト・・・貴様もしや・・・」[p]
#

[kra_tatie_mehuse]
#クライスト
「・・・・・・・」[p]
#

[rem_tatie_metoji]
#レム
「・・・ふっ・・・。なるほどな・・・。完全にクズどもに感化されたわけか・・・」[p]
#

[chara_hide_all time=50]


[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 time=50]

#ライオネス
「なんだとてめぇ・・・」[p]
#

[chara_hide_all]

[rem_tatie_show_left]
[kra_tatie_show_right]
#レム
「・・・面白い。いいだろう」[p]
#

[kra_tatie_mihiraki]
#&f.name
「えっ・・・」[p]
#
[rem_tatie_yokome]
#レム
「貴様らの望みどおりにしてやる。協力してほしいのだろう？」[p]
#

#クライスト
「レム・・・。・・・本当に、いいのか？」[p]
#
#&f.name
（いきなり、どうして・・・？だってさっきは初めから話も聞いてくれない感じだったのに・・・）[p]
#
[rem_tatie_metoji]
#レム
「かまわん。洞窟で過ごすのも退屈していたところだ。
[rem_tatie_warai]
色々と、面白いものも見れそうだしな」[p]
#

#&f.name
（・・・面白い・・・もの・・・？どういう・・・）[p]
#

[rem_tatie_yokome]
[kra_tatie_normal]
#クライスト
「・・・レム・・・・」[p]
#

#&f.name
（でも・・・とりあえず協力はしてくれるようだし・・・御礼はいったほうがいいんだよね・・・）[p]
#

#&f.name
「あ・・・あの・・・ありがとうございます」[p]
#

[kra_tatie_mehuse]

[rem_tatie_yokome]
#レム
「・・・ふん」[p]
#

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]
#ライオネス
「本当に、力、貸してくれるってのか・・・？」[p]
#

[chara_hide_all time=50]

[rem_tatie_show]
#レム
「何度も言わせるな。銀髪。くどいのは好かん」[p]
#

[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_ryoukai.png" height="603" width="420" top=50 left=400 time=50]
#ライオネス
「・・・っ・・・・」[p]
#

#トリスタン
「・・・すまないな。恩に着る」[p]
#
[chara_hide_all time=50]

[rem_tatie_show]
[rem_tatie_warai]

[chara_hide_all]

[bg storage="wesuta_hune.jpg"]
[jump target=*sakusen]
[endif]



#&f.name	
「だってこのままじゃ・・クレールの人たちがヴァエルに・・・！！」[p]
#

[rem_tatie_yokome]
#レム	
「だからなんだというのだ。魔族の恨みを買うようなことをするお前らが悪いんだろう」[p]
#

#&f.name	
「それは昔のことじゃない！今の人たちはそんなこと知らない！」[p]
#

[rem_tatie_ikari]
#レム	
「知らないから、罪はないというのか？ふざけるな！！！俺の母や父を血祭りにあげたのはお前らだろう！」[p]
#

[playbgm storage="chinkou_ontama.ogg"]
#&f.name	
「！」[p]
#

#&f.name	
（血祭りって・・・）[p]
#

#&f.name	
「・・・あなたのお父さんやお母さんが・・・？」[p]
#

[chara_move name="rem" left=-140]
[kra_tatie_show_right]

#クライスト	
「・・・レム。[name]ちゃんたちがやったわけじゃないよ」[p]
#

[rem_tatie_mehuse]
#レム	
「それに何の意味がある？さっきも言ったが、俺にとって人間は敵でしかない」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・予想はしてた。だけど・・・俺を助けてくれた君なら・・・あるいは、と淡い期待を抱いていたよ」[p]
#

[rem_tatie_yokome]
#レム	
「気まぐれを優しさと勘違いされても困るな。人間とはつくづくおめでたい生き物らしい」[p]
#

[kra_tatie_normal]
#クライスト	
「レム・・・」[p]
#

[rem_tatie_metoji]
#レム	
「・・・・・・・・」[p]
#

[fadeoutbgm time=3000]
[kra_tatie_mehuse]
#クライスト	
「・・・・・・・・。[w][w]
[kra_tatie_metoji]
わかったよ。・・・無理を言ってすまなかった」[p]
#

#レム	
「・・・・・・・・」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・行こう」[p]
#

#&f.name	
「クライストさん・・・」[p]
#
[chara_hide_all]

[chara_show name="lion" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「お、おい待てよ！」[p]
#

[lioness_tatie_otikomi]
#ライオネス	
「・・・クライスト・・・」[p]
#

[chara_hide_all][chara_off]
	

[anten]

[bg storage="wesuta_hune.jpg"]

;船に帰ってきたあと	;
;船長	これから、どうすればいいのだろう。
;;;#&f.name	絶望的な気分が、胸の中を覆っていた。
;	私だけではない、#ライオネスも#トリスタンも、そして、#クライストも・・・皆、険しいとしかいいようのない表情をしていた。最後の頼みの綱であった#レムはもう、協力はしてくれない。
;	今はまだ、持ち主を得ていないヴァエル。だがそれも、時間の問題だろう。
;	いずれは・・・。最悪の事態を想像して、私は唇をかみしめた。
;	帰りを待っていた船長が、私たちの顔を見て目を見開く。それに反応する余裕もないまま、船倉へ入ろうとすると・・・

[bg storage="oasis_ac.jpg"]

[chara_on]
[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50  left=400 time=50]

#ライオネス	
「・・・・・・」[p]
#

#トリスタン	
「・・・・・・」[p]
#

[chara_hide_all]
[chara_show name="kra" storage="&f.kra_mehuse" top=0 left=130]

#クライスト	
「・・・・・・」[p]
#

[chara_hide_all]
	
#&f.name	
（・・・結局・・・ここまできたのに・・・何も・・・）[p]
#

#&f.name	
（これから・・・いったいどうしたら・・・）[p]
#

#&f.name	
（ヴァエルはまだ、持ち主を手に入れてないみたいだけど・・・いずれは・・・。だよね・・・）[p]
#

;船　甲板
[bg storage="kanpan_tasogare.jpg"]
[playbgm storage="wave1_koukaonlabo.ogg"]
	
#船長	
「なんだ？あんたら、仲間が増えたか？」[p]
#

#&f.name	
「へ？」[p]
#

#&f.name	
（・・・あっ・・・！）[p]
#
[playse storage="sanbasiasioto_onjin.ogg"]


[rem_tatie_show]
#レム	
「・・・お前らのためじゃないからな」[p]
#

[stopse]

[chara_move name="rem" left=-140]
[chara_show name="kra"  storage="&f.kra_mihiraki" top=0 left=320]
#クライスト	
「レム・・・！」[p]
#


[kra_tatie_normal]
#クライスト	
「レム・・・いいのか？」[p]
#

[rem_tatie_metoji]
#レム	
「・・・ただの暇つぶしだ。ありがたく思え」[p]
#

#&f.name	
（っていうことは・・・！！！！）[p]
#


#&f.name	
「ありがとう！おじさん！」[p]
#

[rem_tatie_ikari]
#レム	
「おっ・・・おじ・・・？」[p]
#

[kra_tatie_komari]
#クライスト	
「・・・レム・・・すまない・・・」[p]
#
[stopbgm]
[rem_tatie_yokome]
#レム	
「・・・見届けてやる」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「え？」[p]
#

[rem_tatie_mehuse]
#レム	
「お前が選び取った生き方を。・・・退屈しのぎにちょうどいい」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・レム・・・」[p]
#

#&f.name	
（クライストさん・・・）[p]
#
[rem_tatie_metoji]
[chara_hide_all]

;そのときの#クライストの表情。私が今までに、見たこともない、
;限りなくうれしそうな、そして限りなくさびしそうで悲しそうな・・・そんな、笑顔だった。

*sakusen
[anten]

;船長の部屋

[bg storage="hune_sencho.jpg"]

[playbgm storage="yamidoukutu_ontama.ogg"]

[rem_tatie_show_left]
[kra_tatie_show_right]
#レム	
「・・・正直、ディーヴァ・ヴァエルは人間の力でどうこうできるような存在ではない」[p]
#

#レム
「たとえ俺が協力したとしても、倒すなどということは到底無理な話だろう・・・だが」[p]
#

[kra_tatie_mehuse]
#クライスト	
「レム・・・」[p]
#

[rem_tatie_mehuse]
#レム	
「・・・術がないわけでもない」[p]
#


[chara_hide_all time=50]

[lioness_tatie_show]
#ライオネス	
「どういう意味だよ？」[p]
#

[chara_hide_all time=50]

[rem_tatie_show_left]
[kra_tatie_show_right]

#クライスト	
「倒すのが無理・・・とするならば」[p]
#

[rem_tatie_metoji]
#レム	
「・・・・・『封印』だ」[p]
#
[rem_tatie_normal]
#レム	
「ディーヴァ・ヴァエルを、アグレアス内に封印する」[p]
#

 [chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「・・・えっ・・・ええええっ！！？？」[p]
#

#ライオネス	
「な・・・なんだそりゃ・・・」[p]
#

[chara_hide_all time=50]

[rem_tatie_show_left]
[kra_tatie_show_right]

[kra_tatie_mehuse]
#クライスト	
「・・・アグレアスの、中に・・・」[p]
#

#&f.name	
「クライストさん・・・」[p]
#

[kra_tatie_normal]
#クライスト	
「・・・・・・・。具体的には、どうやって？」[p]
#

[rem_tatie_yokome]
#レム	
「まず、宿主がいる場合なら・・・ヴァエルの持ち主を倒す」[p]
#

[rem_tatie_normal]
#レム
「ディーヴァヴァエルが出現したところで、アグレアスの魔力を全解放し、俺がそれを増幅する」[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・魔力の抱合・・・か・・・」[p]
#

#&f.name	
「抱合って？」[p]
#

[rem_tatie_metoji]
#レム	
「異なる性質の魔力同士は、より強大な方が小さなほうを包括することがある」[p]
#

[kra_tatie_yokome]
#クライスト	
「・・・増幅したアグレアスの魔力で、ヴァエルの魔力をアグレアスの中に封じ込めるってことか」[p]
#

[rem_tatie_mehuse]
#レム	
「そうだ。一度封じ込められた魔力は抱合反応により一時的に包括魔力の質と同化する」[p]
#

#&f.name	
「え・・・えーと・・・？？？？」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_udekumi" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mayuhisome.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「つまり・・・」[p]
#

#ライオネス	
「・・・どういうことなんだよ？」[p]
#
[chara_hide_all time=50]
[chara_show name="rem" storage="rem_tatie/rem_face_warai.png" height="699" width="660" top=-21 left=70]

#レム	
「・・・頭が弱そうだと思っていたが、銀髪、どうやら本当に中身もそうらしいな」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_chottoikari" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_ikari.png" height="603" width="420" top=50 left=400 time=50]

#ライオネス	
「こんのやろっ・・・」[p]
#

[chara_hide_all time=50]

[kra_tatie_show_tall]
#クライスト	
「つまりはこういうことだよ。
レムの力を借りて、俺のアグレアスにディーヴァ・ヴァエルを封じる」[p]
#

#&f.name	
「ふ、封じるって・・・でも・・・そんなことして大丈夫なの？」[p]
#

[kra_tatie_mehuse]
#クライスト	
「ふたつの異なる魔力に力の差があるとき、低い魔力は高い魔力の属性に同化する性質があるんだ」[p]
#

[kra_tatie_normal]
#クライスト	
「だから、アグレアスの魔力がヴァエルより格段に大きければ、ヴァエルはアグレアスと同化する」[p]
#

#&f.name	
「ヴァエルが・・・アグレアスに・・・」[p]
#

[kra_tatie_metoji]
#クライスト	
「・・・もちろん、一時的なものではあるけどね」[p]
#

[chara_move name="kra" left=-70]
[kra_tatie_normal]
[rem_tatie_show_right]
#レム	
「同化しても、完全ではない。何かのきっかけで分離する可能性はあるが・・・それでもヴァエルの力を削ぐには、これで十分だろう」[p]
#

#&f.name	
（だいじょうぶ、なのかな・・・）[p]
#

[kra_tatie_mehuse]
#クライスト	
「・・・・・・」[p]
#

#&f.name	
（クライストさん・・・）[p]
#
[chara_hide_all time=50]
[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50 left=400 time=50]

#ライオネス	
「し、しかし・・・本当に、可能なのか？できるのか？」[p]
#

[chara_hide_all time=50]
[rem_tatie_show]

#レム	
「無意味な質問をするな。成功する可能性など、誰にもわからん」[p]
#

#&f.name	
（成功するかどうかは、わからない・・・だけど・・・）[p]
#

#&f.name	
「・・・でも、方法は、それしか、ないんだよね・・・」[p]
#

[fadeoutbgm time=3000]


[chara_hide_all time=50]
[lioness_tatie_show]
#ライオネス	
「[name]・・・」[p]
#

#&f.name	
「・・・クライストさん・・・」[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]

#クライスト	
[kra_tatie_bisyou_youen]
「・・・わかってるよ、[name]ちゃん。必ず、成功させて見せる。だから、心配しないで」[p]
#

[kra_tatie_smile]
#&f.name	
「・・・・クライストさん・・・！・・・・あ・・・ありがとう・・・」[p]
#

[kra_tatie_mehuse]
#&f.name	
（・・・でも・・・本当に、大丈夫なのかな・・・）[p]
#

[playbgm storage="wave1_koukaonlabo.ogg"]

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_otikomi" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mehuse.png" height="603" width="420" top=50 left=400 tim=50]

#ライオネス	
「・・・・・・・・・」[p]
#

#トリスタン	
「・・・・・・・・・」[p]
#
[chara_hide_all time=50]
[kra_tatie_show_left]
[rem_tatie_show_right]

#クライスト	
「・・・レム、
[rem_tatie_metoji]
ヴァエルは今・・・？」[p]
#

[rem_tatie_normal]
#レム	
「・・・クライスト、
[rem_tatie_warai]
面白いことになってきたぞ」[p]
#

[kra_tatie_mihiraki]
#クライスト	
「え・・？」[p]
#
[stopbgm]
[rem_tatie_yokome]
#レム	
「ヴァエルが宿主を手に入れた。誰かはわからんがな」[p]
#

[rem_tatie_normal]
#レム
「場所は・・・クレール王国だ」[p]
#

[chara_hide_all time=50]

[chara_show name="lion" storage="&f.lion_odoroki" height="698" width="456" top=-35 left=-40 time=50]

[chara_show name="tris" storage="tris_tatie/tris_mihiraki.png" height="603" width="420" top=50 left=400 time=50]

#トリスタン	
「！！！」[p]
#

#ライオネス	
「な・・・なんだって・・・」[p]
#

#&f.name	
（ヴァエルが・・・ヴァエルを宿した人がクレールに・・・！？いったい・・・）[p]
#

[chara_hide_all time=50]
[kra_tatie_show_tall]

#クライスト	
「・・・クレールに、急ごう」[kra_tatie_mehuse]
[p]
#
[chara_hide_all][chara_off]
[live2d_lion_touroku]


[playbgm storage="wave1_koukaonlabo.ogg"]

[bg storage="hune_rouka.jpg"]
#&f.name	
（いよいよ、クレールに・・・準備も万全にしていかないと・・・）[p]
#




[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_on]
[live2d_show name="lioness" y=-1.5 x=-0.5 scale=3.9]
[live2d_show name="aho" y=-1.8 x=0.5 scale=4.2]
#&f.name	
（あ、クライストさんと、ライオネス・・・？）[p]
#

;ふたりが話しているのは珍しいことでもないけれど、#ライオネスのほうは深刻な顔をしている。
#&f.name	
（どうしたんだろう・・・？）[p]
#

;なんとなく声もかけづらい雰囲気で、私が彼らを見つめていると、#ライオネスが口火を切った。

[fadeoutbgm time=1000]

[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス	
「・・・なんか、悪いな・・・」[p]
#

;#クライストが聞き返す。
[aho_face_mihiraki]
#クライスト	
「ん？何が？」[p]
#

[lioness_head_right_x]
[lioness_face_yokome_otikomi]
[lioness_arms_udekumi]
#ライオネス		
「ヴァエルのことを、お前ひとりに任せるような感じに、なっちまってよ・・・」[p]
#

[aho_face_yareyare]
[aho_head_left_z]
[aho_arms_left_setumei]
#クライスト		
「なんだ、そんなこと。いいよ、別に」[p]
#

;私のほうからは#クライストは後姿しか見えない。だけど、肩をすくめたのが微かにわかった。
;#ライオネスが首を振る。

[lioness_head_normal]
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_head_normal]
[lioness_arms_normal]
#ライオネス		
「よくねえだろ・・・」[p]
#

[aho_arms_normal]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト		
「ライオネス」[p]
#


[lioness_head_above_y]
[lioness_head_under_y]
[lioness_face_metoji]
#ライオネス	
「もともとお前は騎士団の人間ってわけでもねえし、クレールに住んでたわけでもねえのに・・・」[p]
#


[lioness_arms_poripori]
[lioness_head_right_x]
[lioness_face_sinnpai]
[lioness_eyes_right]
#ライオネス	
「そのお前に・・・俺らクレールの人間が、頼りきるしかねえなんてよ・・・なんか・・・」[p]
#

[lioness_arms_normal]
[lioness_head_left_x]
[lioness_head_under_y]
[lioness_eyes_left]
[lioness_face_otikomi]
#&f.name	
（ライオネス・・・）[p]
#

;#ライオネスの顔は気まずそうだった。たぶん、本当に申し訳なく思っているのだろう。

[aho_head_right_z]
[aho_face_yokome_warai]
#クライスト		
「・・・仕方ないよ。人間がどうこうできる相手じゃないって、レムも言ってただろ」[p]
#

[lioness_eyes_normal]
[lioness_face_normal]
[lioness_head_normal]
#ライオネス		
「・・・・・・・・」[p]
#

;#ライオネスは目を伏せたまま、何も答えない。#クライストがそんな彼を見つめながら、ふっと息を吐いた。
[aho_head_under_y]
[aho_mod_idle_normal_metoji]
[aho_face_metoji_warai]
#クライスト		
「・・・むしろ俺は、嬉しいんだ」[p]
#

[playbgm storage="odai07_ontama.ogg"]

[lioness_face_ha]
#ライオネス		
「・・・・・・・なんだって？」[p]
#
[lioness_face_normal]
;#ライオネスが聞き返して、#クライストの顔を凝視する。#クライストは、静かに語った。


[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト		
「・・・人の命を奪うことしかできなかった、こんな俺に・・・できることがあるってことが」[p]
#

[lioness_face_sinnpai]
#ライオネス		
「クライスト・・・・・・・・・」[p]
#

[aho_head_right_x]
[aho_head_right_z]
[aho_eyes_right]
#クライスト		
「・・・のろわれた力でも、誰かのために使えるのなら・・・それを持つのも悪くないって思える」[p]
#

#&f.name	
（・・・クライストさん・・・）[p]
#

[aho_eyes_normal]
[aho_face_hutuu_bisyou]

;#クライストは・・・笑顔でも浮かべていたのだろうか。#ライオネスが目を見開くのが見えた。
[lioness_face_odoroki]
#ライオネス		
「・・・・・・・・お前」[p]
#

[fadeoutbgm time=1000]
[lioness_face_otikomi]

[aho_head_normal]
[aho_face_mehuse_warai]
#クライスト		
「・・・だから、俺は絶対に成功させるよ。せっかくレムが、力を貸してくれるって言ってくれてることだしね」[p]
#

[aho_face_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト		
「それじゃ、またあとで」[p]
#

[live2d_hide name="aho"]

;そのまま#クライストは歩き出し、#ライオネスとすれちがう。そのまま廊下の奥に姿を消した。

[live2d_mod name="lioness" x=0.0]
#ライオネス		
「・・・・・」[p]
#

#&f.name	
（ライオネス・・・）[p]
#

[playse storage="sanbasiasioto_onjin.ogg"]

#&f.name	
「あの、ライオネス・・・」[p]
#

;私は一歩、二歩、沈黙する#ライオネスに近づく。#ライオネスが私を見て、唇をかみしめた。
[stopse]

[lioness_mod_idle_no_move]
[lioness_face_metoji]
#ライオネス		
「・・・俺、何もわかってなかった」[p]
#

#&f.name	
「え？」[p]
#

[lioness_mod_idle]
[lioness_face_otikomi]
#ライオネス		
「・・・あいつのこと。あいつは、いつもあんな平然とした顔して・・・本当は・・・」[p]
#

;彼はじっと、船倉の木でできた床を見つめている。その瞳がこころなしか・・・潤んでいるようにも見えた。
#&f.name	
「・・・ライオネス・・・。クライストさんは、そんな人じゃないんだよ」[p]
#

;#クライストを疑ってばかりいた#ライオネス。自責の念に駆られているのか、どうかはわからないが・・・。
;彼は拳をにぎりしめ、天井を仰いだ。

[lioness_head_above_y]
[lioness_head_right_x]
[lioness_face_sinnpai]
[lioness_eyes_right]
#ライオネス		
「・・・ああ・・・。お前の言うとおりだな。本当に苦しい奴は・・・苦しいなんていわないもんなのかもな」[p]
#

#&f.name	
「・・・クライストさん、それでも私たちのために・・・」[p]
#

[lioness_face_otikomi]
[lioness_head_normal]
[lioness_head_under_y]
#ライオネス		
「・・・ああ・・・」[p]
#

;#ライオネスが再びうつむく。
;『・・・のろわれた力でも、誰かのために使えるのなら・・・それを持つのも悪くないって思える』
#&f.name	
（・・・・・・・クライストさん・・・・・・・）[p]
#

[live2d_fadeout time=1000]
[live2d_delete_all]
[live2d_off]

;きっとこの言葉も、あの変わらない笑顔でいったのだろう。
;複雑な思いたちを抱きながら、私たちは王都へと海を渡る。
;王都クレールをヴァエルから、救うため。ただ、それだけのために。

[jump storage="scenario_2/episode/epi_flag_check.ks" target=*last_scenario]
[s]


