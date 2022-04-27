;孤児院に届け物
	
;クレール街中

[macro name="kojiin_nimotu"]

[eval exp="f.event_sub_15[1]=0"]
[eval exp="f.event_sub_15_sumi[1]=1"]
[playse storage="nokku_tairakomori.ogg"]

[tris_tatie_touroku]
[tris_tatie_show]
#トリスタン
「[name]、ちょっといいか？」[p]
#
#&f.name
「あ、トリスタン？」[p]
#
[tris_tatie_mehuse]
#トリスタン
「俺、今朝荷物を孤児院に運ぶように言われてたんだけどさ、急な用事が入っちまって。
[tris_tatie_sian]
悪いんだが、ちょっと頼まれてくれないか？」[p]
#
#&f.name
「孤児院？」[p]

[tris_tatie_ryoukai]
#トリスタン
「ああ、王都の郊外にある。最近、色々あっただろ・・・
親をなくした子も増えたから、騎士団でも援助するって団長が。
そんなに時間もかからないと思うんだが・・・」[p]
#

#&f.name
「そうなんだ・・・えっと・・・わかった、いいよ」[p]
#
[tris_tatie_smile]
#トリスタン
「ありがとな！助かる。本部の門の前に荷物はおいてあるから、たのんだ！」[p]
#



#&f.name
「わかりました！」[p]
#
[chara_hide_all] [chara_off]
[anten]

[bg storage="crerumatinaka2_tasogare.jpg"]
#&f.name	
「はあ、はあ・・・」[p]
#
#&f.name	
（お、重い・・・この荷物・・・）[p]
#
#&f.name	
「中身が中身だから、仕方ないんだろうけど・・・」[p]
#
#&f.name	
「うーんと、もうちょっとで着くし、なんとかそれまで・・・」[p]
#

[quake count="3" time="300" hmax="300" vmax="0"]

#&f.name	
「っ・・・！？ひゃあっ！？」[p]
#
#&f.name	
（きゅうに軽くな・・・な、何？）[p]
#

[live2d_kra_touroku]
[live2d_kra_show_sekkin]
[aho_face_bisyou_youen]
[live2d_fadein time=500]


#クライスト	
「やあ、[name]ちゃん、
重そうな荷物だね」[p]
#
#&f.name	
「く、クライストさん・・・！？」[p]
#
[aho_face_hutuu_bisyou]
#クライスト	
「大変そうだけど、仕事？どこかに運ぶのかな」[p]
#
#&f.name	
「う、うん・・・あの、この荷物を孤児院に・・・」[p]
#
[aho_face_mihiraki]
#クライスト	
「孤児院？」[p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_smile]
#クライスト	
「奇遇だなあ。
[aho_face_normal]
俺も今から行くところだよ」[p]
#
#&f.name	
「えっ・・・！？く、クライストさんが！？」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん。なにか、おかしいかな」[p]
#
#&f.name	
「おかしいっていうか・・・」[p]
#
#&f.name	
（いったい何の用で・・・？）[p]
#
[aho_face_yokome_majime]
[aho_face_normal_majime]
[aho_eyes_left_above]
[aho_head_above_y]
[aho_head_left_x]
#クライスト	
「まあ、ちょっとね。この荷物、何がはいってるの？」[p]
#
#&f.name	
「あ、えーっと、小麦粉とか、お砂糖とかだよ」[p]
#
[aho_head_normal]
[aho_face_normal_majime]
#&f.name	
「地方騎士団からのおすそわけでね、孤児院にもっていくの」[p]
#

[aho_head_under_y]
[aho_head_normal]
#クライスト	
「そうなんだ。グレッグ団長の指示？」[p]
#
#&f.name	
「うん。使えるものとか余りとかは、街のいろんなところに寄付するんだよ」[p]
#
#&f.name	
「って、クライストさん、ずっと荷物持って・・・」[p]
#
#&f.name	
「私の仕事だから、いいのに・・・」[p]
#

[aho_face_smile]
#クライスト	
「ああ、いいよ。
[aho_head_left_z]
[aho_face_hutuu_bisyou]
可愛い女の子が大変なのに、俺だけ突っ立ってるわけにはいかないだろ」[p]
#
#&f.name	
（か、かわいい・・・って・・・）[p]
#

[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]

#クライスト	
「そうやって恥ずかしがるところ、たまらないね」[p]
#
#&f.name	
「く、クライストさんてば・・・」[p]
#

[aho_face_smile]
#クライスト	
「あはは。
[aho_face_normal_majime][aho_eyes_left]
・・・あ、ほら、ここだよね、孤児院」[p]
#
#&f.name	
「あっ・・・う、うん」[p]
#
[live2d_fadeout time=1000]
[bg storage="creru_kojiin_tasogare.jpg"]


#孤児院	
「地方騎士団の方ですね。いつもありがとうございます」[p]
#
#&f.name	
「いいえ、少しでも、お役に立てればと思って・・・」[p]
#
#&f.name	
「ちょっとだけですけど、よかったら使ってください」[p]
#
#孤児院	
「これだけ小麦粉があれば、パンがたくさん作れます。子供たちも喜ぶでしょう」[p]
#
#孤児院	
「・・・おや、こちらの方は・・・」[p]
#
[kra_tatie_touroku]
[kra_tatie_show_tall]
#&f.name	
「あ、あの、ついそこで会って・・・」[p]
#
#孤児院	
「この間は大変な額を、ありがとうございました」[p]
#
#&f.name	
「えっ・・・？」[p]
#
[kra_tatie_yokome]
#クライスト	
「いえ、気になさらないでください。みんなのために使ってもらえれば俺はそれで」[p]
#
[kra_tatie_normal]
#クライスト	
「今回の襲撃で、孤児院の子供たちも増えたのではないですか？」[p]
#
#&f.name	
（あ・・・そっか・・・そう、だよね、お父さんお母さんをなくした子もいるはず・・・）[p]
#

#孤児院	
「はい・・・悲しいことですが、王都は最近物騒なことが続きましたので・・・」[p]
#
#&f.name	
「・・・・・・」[p]
#

[kra_tatie_yokome]
#クライスト	
「それなら、もしよかったら、これを」[p]
#
#&f.name	
（えっっ・・・！？）[p]
#
#孤児院	
「こ、こんな大金を・・・よ、よろしいのですか・・・！？」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「いいんです。次は大きな報酬ももらえる予定なんで」[p]
#
[kra_tatie_smile]
#クライスト	
「こういうものは、あまっても仕方がないですから」[p]
#
#&f.name	
（うわあ・・・これ、かなり入ってるよね・・・お金）[p]
#
#孤児院	
「し、しかし・・・一度ならず二度までも」[p]
#
[kra_tatie_metoji]
#クライスト	
「気にしないで、受け取ってください。断られても、俺も使う当てがないんで」[p]
#
#孤児院	
「・・・・・・・。・・・で、では・・・。本当に、ありがとうございます・・・」[p]
#
#孤児院	
「こんな小さな孤児院のために、なんと礼をいったらいいものか・・・」[p]
#

[kra_tatie_bisyou_youen]
#クライスト	
「子供たちに、なにか甘いものでもあげてください。きっと喜ぶと思います」[p]
#
#&f.name	
（クライストさん・・・）[p]
#
[chara_hide_all][chara_off]


[bg storage="crerumatinaka2_tasogare.jpg"]
;クレール街
#&f.name	
（クライストさんがあんなことしてるなんて、初めて知ったな・・・）[p]
#

[aho_face_mihiraki]
[live2d_fadein time=1000]
#クライスト	
「ん？何？」[p]
#
#&f.name	
「あ、ううん・・・クライストさんて、あんなことしてたんだなって思って・・・」[p]
#
[aho_head_right_z]
[aho_face_komari_warai]
#クライスト	
「ああ、俺、報酬はそれなりにもらうんだけど、使い切らなくてさ」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_bisyou_youen]
#クライスト	
「せっかくだから、なにかに役立ててもらえたらと思って」[p]
#
#&f.name	
「そう、なんだ・・・でも、ありがとう」[p]
#
[aho_face_mihiraki]
#クライスト	
「え？」[p]
#
#&f.name	
「王都の子供たちのために、なんか、色々してもらってるみたいな感じがして・・・」[p]
#

[aho_face_yokome_warai]
[aho_arms_udekumi]
#クライスト	
「まあ、自分のことに使ってもつまらないから。人に使って、喜んでもらえたほうが俺はいいよ」[p]
#
#&f.name	
「クライストさん・・・」[p]
#
[aho_head_left_z]
[aho_face_bisyou_youen]
#クライスト	
「君のそんな嬉しそうな笑顔が見られるなんて、寄付した甲斐もあるね」[p]
#
[aho_head_normal]
[aho_face_yokome_warai]
#クライスト	
「いっそのこと今度の報酬も、全部寄付しようかな」[p]
#
#&f.name	
「えっ・・・ええええっ！？」[p]
#
#&f.name	
「そ、そんなことしたら、クライストさん、大丈夫なの？」[p]
#
[aho_head_under_y]
[aho_head_normal]
[aho_face_smile]
#クライスト	
「あはは、大丈夫大丈夫、
[aho_face_normal]
なんとかなるなる」[p]
#
#&f.name	
（ええ・・・）[p]
#

[aho_mod_idle_normal_mehuse]
[aho_face_mehuse_warai]
#クライスト	
「王都は仕事が多いし。それに・・・」[p]
;#ズーム
[live2d_fadeout time=500]
[live2d_mod name="aho" y=-4.0 x=0.0 scale=8.2]
[live2d_fadein time=1000]

[aho_head_right_z]
[aho_face_bisyou_youen]
#クライスト	
「・・・君がそうやって笑ってくれるのなら・・・お金なんかいくら出したっていい」[p]
#
#&f.name	
「く、クライストさんっ・・・」[p]
#
[aho_face_mihiraki]
[aho_head_normal]
#クライスト	
「あれ？赤くなって、どうしたの？なにか変なこと言った？」[p]
#
[aho_face_normal]
#&f.name	
（・・・もう～・・・）[p]
#
[aho_face_smile]

#クライスト	
「あはは。
[aho_face_normal]
あ、そろそろお昼じゃない？一緒にどうかな、よかったら」[p]
#
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「[name]ちゃんの好きなもの、

[aho_head_right_z]
なんでも食べさせてあげるよ？」[p]
#
#&f.name	
「え・・・えーと・・・どうしよう、かな・・・」[p]
#
[aho_head_right_x]
[aho_face_yokome_warai]
#クライスト	
「迷ってるなら行こうよ。ちょうど近くに美味しいお店があるんだよね」[p]
#
#&f.name	
「は、はあ・・・」[p]
#
#&f.name	
（ってなんかもう食事する流れになっちゃってるし・・・）[p]
#
#&f.name	
（はあ～・・・）[p]
#
#&f.name	
（でも、ま・・・。いいか・・・）[p]
#
#&f.name	
「ね、そのお店、煮魚ある？」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_hutuu_warai]
#クライスト	
「もちろんだよ。だから[name]ちゃんと一緒に行こうと思ってたんだ・・・」[p]
#

[live2d_fadeout time=1000]
[aho_mod_idle_normal]
[anten]
;ここからデート
[eval exp="f.friend = 3"]
;デート中のフラグ
[eval exp="f.date_now = 1"]
[aho_face_normal]
[eval exp="f.place_creru_sakaba=1"]
[eval exp="f.irain_move=2"]
[eval exp="f.irain_out=1"]
[eval exp="f.irain_heya=0"]
[creru_outo_map]
[endmacro]



;図書フェアー
;噴水広場

[macro name="tosho_fair"]	


#&f.name	
（あれ、なんだろ・・・本？をたくさんならべて・・・本屋さん？）[p]
#
#店員	
「いらっしゃいませ！本日は図書フェアーとなってまして」[p]
#
#&f.name	
「図書フェアー？」[p]
#
#店員	
「図書館で重複発注した本や、貸し出し数が少ない本などを配布したり販売してるんです」[p]
#
#&f.name	
「そうなんですか・・・わあ・・・結構たくさんあるんですね」[p]
#
#店員	
「はい、もしよろしければ見ていってくださいね！」[p]
#
#&f.name	
（最近、忙しくてゆっくり本とか読めてないかも・・・買ってみようかな）[p]
#
[stopbgm]
;お店
[live2d_kra_touroku]
[live2d_fadeout time=50]
[live2d_kra_show]
#&f.name	
「・・・あれ、あの後ろ姿・・・」[p]
#
[live2d_fadein time=1000]
;#クライスト出現
#&f.name	
「クライストさん！」[p]
#
[aho_face_mihiraki]
[live2d_fadeout time=50]
[aho_face_normal]
[live2d_kra_show_sekkin]
[live2d_fadein time=1000]
#クライスト	
「・・・やあ、[name]ちゃん」[p]
#
#&f.name	
「クライストさんも本、見にきてるの？」[p]
#
[aho_eyes_left]
[aho_eyes_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「うん」[p]
#
#&f.name	
「クライストさんて・・・結構本よむんだ？」[p]
#
[aho_eyes_left_above]
[aho_face_hutuu_bisyou]
[aho_head_left_x]
#クライスト	
「そりゃあ俺だって、
[aho_head_normal]
[aho_face_normal]
本くらい読むよ？」[p]
#
#&f.name	
「読書好き？」[p]
#
[aho_face_mihiraki]
#クライスト	
「え？
[aho_head_left_x]
[aho_head_under_y]
[aho_face_komari_warai]
うん・・・そうかな、そうかもしれないね」[p]
#

[aho_head_normal]
[aho_face_normal]
[aho_head_above_y]
[aho_head_right_x]
[aho_eyes_right_above]
#クライスト	
「俺、子供の頃は本に囲まれてたから」[p]
#

#&f.name	
「えっ・・・それは・・・」[p]
#
#&f.name	
（かなりの読書家ってこと？）[p]
#
[aho_head_normal]
[aho_face_normal]
#&f.name	
「すごいね、小さいときからって、本当に本が好きなんだね」[p]
#
[aho_mod_idle_normal_mehuse]
[aho_head_under_y]
[aho_face_mehuse]
#クライスト	
「・・・」[p]
#
#&f.name	
「・・・クライスト、さん・・・？」[p]
#
[aho_mod_idle_normal]
[aho_face_normal_majime]
[aho_eyes_right]
#クライスト	
「・・・」[p]
#
[aho_head_under_y]
[aho_head_normal]
[aho_face_komari_warai]

#クライスト	
「・・・そうだね、そうかも」[p]
#
#&f.name	
「・・・？」[p]
#
[aho_eyes_normal]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#&f.name	
（クライストさん・・・？）[p]
#
[aho_mod_idle_normal]
[aho_face_normal]
#クライスト	
「あ、これあげる。表紙につられて買ったけど、
[aho_face_hutuu_bisyou]
こういうのは[name]ちゃんのほうが役に立つと思うし」[p]
#

;〜の本を手に入れた！
[event_other_item_get_tosho]
#&f.name	
「あ、ありがとう・・・」[p]
#
[aho_face_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト	
「俺そろそろ行かなくちゃ。それじゃね」[p]
#
[live2d_fadeout time=1000]
#&f.name	
（・・・クライストさん・・・）[p]
#
[live2d_delete_all][live2d_off]	
;会話に追加　どんな子供だった？
[endmacro]



