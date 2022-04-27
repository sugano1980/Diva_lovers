


*start




[cm]

;背景を選ぶ（ランダム）
[if exp="f.kvhaikei==0"]
[iscript]
f.kvhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]








;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.kvhaikei==1"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[else]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[endif]


*kaiwa


[stopbgm]
[playbgm storage="bacchus_sougetuon.ogg"]

[otikomi]
[irain][r]
（ヴァン・・・
[r]あんなことがあったあとだから、何だか頼みにくいな・・・）[p]

[komari_kutitoji]
[irain][r]
（でも、エスコート役がいないと式には出席できないし・・・）[p]


[normal_majime]
[irain][r]
（・・・いた・・・ヴァン・・・）[p]
[chara_show name="vanditte"]
[chara_mod name="vanditte" face="mihiraki_kutiake"] 
[vanditte][r]
「[name]・・・」[p]

[normal_kutiake]
[irain][r]
「あ・・・あの・・・」[p]

[chara_mod name="vanditte" face="yokome_kutiake"] 
[vanditte][r]
「なにか・・・[w]用か」[p]

[chara_mod name="vanditte" face="yokome"] 
[komari_kutitoji]
[irain][r]
（やっぱり気まずい・・・）[p]


[kessin]
[irain][r]
（・・・でも、言わないと・・・）[p]

[normal_kutiake]
[irain][r]
「あの・・・そのう・・・[w]
[r]ヴァンに、頼みたいことが、あって・・・」[p]

[chara_mod name="vanditte" face="normal_majime_kutiake"] 
[vanditte][r]
「・・・頼みたいこと？」[p]

[komarikutiake]
[irain][r]
「あ、あのね・・・」[p]
[chara_hide_all]
[freeimage layer=3]
[image layer=1 page=fore storage=black.png time=1000]
[freeimage layer=1 time=1000]
[if exp="f.kvhaikei==1"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[else]
[bg storage="sakaba2_kaiwa_tasogare.jpg"]
[endif]



[chara_show name="vanditte" face="mihiraki_kutiake"] 
[vanditte][r]
「婚約式のエスコートお？俺がか？？」[p]
[chara_mod name="vanditte" face="mihiraki"] 
[normal_kutiake]
[irain][r]
「う、うん・・・」[p]


[chara_mod name="vanditte" face="muzukasii_kutiake"] 
[vanditte][r]
「・・・・・・・・・。[w]なんで俺なんだ？」[p]
[chara_mod name="vanditte" face="muzukasii"] 

[irain][r]
「そ、それは・・・」[p]

[chara_mod name="vanditte" face="yokome_kutiake"] 
[vanditte][r]
「俺なんかより、あの弟のほうがいいじゃねえか。[w]あいつなら兄弟だから、正式に招待もされてるだろうしな」[p]
[chara_mod name="vanditte" face="yokome"] 

[otikomi]
[irain][r]
（・・・やっぱり・・・[w]ダメ、なのかな・・・）[p]

[chara_mod name="vanditte" face="mihiraki"] 
[vanditte][r]
「っ・・・・・。[w]
[chara_mod name="vanditte" face="sekimen_kutiake"] 
[r]ま、まあ・・・その・・・[w]だ・・・。[w]
どうしてもっていうなら・・・つきあってやらねえことも・・・」[p]
[chara_mod name="vanditte" face="sekimen"] 

[normal_kutiake]
[irain][r]
「本当！？」[p]

[chara_mod name="vanditte" face="sekimen_kutiake"] 
[vanditte][r]
「お、おう・・・。[w]

[chara_mod name="vanditte" face="yokome_kutiake"] 
しかしなんだってお前さん、俺なんか・・・」[p]

[mehuse_sekimen]
[irain][r]
（・・・それは・・・）[p]

[sekimen_komarikutiake]
[irain][r]
「それは・・・[w]ヴァ、ヴァンと一緒に、行きたい、から・・・」[p]

[chara_mod name="vanditte" face="mihiraki"] 
[vanditte][r]
「！！！」[p]

[sekimen]
[irain][r]
（え・・・？）[p]

[irain][r]
「ヴァン・・・？」[p]

[chara_mod name="vanditte" face="yokome_kutiake"] 
[vanditte][r]
「い、いや・・・[w]
[chara_mod name="vanditte" face="normal_majime_kutiake"] 
それで、その式ってのはいつなんだ？」[p]
[chara_mod name="vanditte" face="normal"] 

[kyoton]
[irain][r]
（こころもち・・・さっきより乗り気？気のせいかな？）[p]

[normal]
[irain][r]
「半月あとだよ。[w]
[komarikutiake]
・・・その、ヴァン・・・大丈夫なの？」[p]

[chara_mod name="vanditte" face="bisyou_kutitoji"] 
[vanditte][r]
「ああ。特に仕事も入ってねえしな・・・。[w]・・・そろそろ王都を出ようと思ってたが、
少しくらい伸ばしても問題はねえよ」[p]

[odoroki]
[irain][r]
（あ・・・）[p]


[mehuse]
[irain][r]
（・・・そっか・・・ヴァンは・・・）[p]

[chara_mod name="vanditte" face="normal"] 
[vanditte][r]
「それじゃあ、当日騎士団本部に迎えに行けばいいか？」[p]

[normal]
[irain][r]
「あ・・・[w]うん、夕刻だから、そのときに・・・」[p]

[chara_mod name="vanditte" face="bisyou_kutitoji"] 
[vanditte][r]
「わかった。
[chara_mod name="vanditte" face="yokome_kutiake"] 
[w]・・・ったく、
[r]懐かしい顔ぶれに会うことになりそうだなぁ」[p]
[chara_mod name="vanditte" face="yokome"] 

[kyoton]
[irain][r]
「え？」[p]

[chara_mod name="vanditte" face="bisyou_kutitoji"] 
[vanditte][r]
「いや、こっちの話だ。[w]
[chara_mod name="vanditte" face="bisyou"] 
じゃあ、当日な」[p]

[normal]
[irain][r]
「う、うん、よろしくお願いします！」[p]

[chara_mod name="vanditte" face="bisyou_kutitoji"] 
[vanditte][r]
「・・・あぁ」[p]

[chara_hide name="vanditte"]
[irain][r]
（よかった・・・ヴァンが引き受けてくれて・・・[w]あとは仕立て屋さんにいけば・・・）[p]

[fadeoutbgm time=4000]

[mehuse]
[irain][r]
（・・・でも・・・）[p]


[irain][r]
（・・・近いうちに、王都を出ていっちゃうんだ・・・[w]
多分、婚約式が終わったら、だよね・・・）[p]

[otikomi]
[irain][r]
（・・・ヴァン・・・[w]いなくなっちゃうんだ・・・・・・・・・・・）[p]






[cm]

;戻る
*mae


[cm]
[jump storage="kyuujitu.ks" target=*start]


