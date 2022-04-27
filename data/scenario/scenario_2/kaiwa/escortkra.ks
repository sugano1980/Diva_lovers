


*start





[cm]

;背景を選ぶ（ランダム）

[if exp="f.kkhaikei==0"]
[iscript]
f.kkhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]






;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.klhaikei==1"]
[bg storage="crerumatinaka2_tasogare.jpg"]
[else]
[bg storage="sakaba1_kaiwa_tasogare.jpg"]
[endif]

*kaiwa
[chara_show name="klaist"]

[stopbgm]
[playbgm storage="kaiwa/mizuiro_ontama.ogg"]

[irain][r]
（クライストさん・・・引き受けてくれるかな・・・）[p]


[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「えっ・・・婚約式のエスコート？俺が？」[p]

[ase]
[irain][r]
「う、うん・・・・・・」[p]
[chara_mod name="klaist" face="mihiraki"]
[name_kra][r]
「・・・・・・・」[p]

[komari_kutitoji]
[irain][r]
（クライストさんなら・・・と思ったけど、めんどくさいって断られちゃうかな・・・）[p]

[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「婚約式って、誰の？」[p]

[chara_mod name="klaist" face="normal_majime"]
[kyoton]
[irain][r]
（あ、そうか、クライストさんは知らないんだね）[p]
[normal]
[irain][r]
「今度、ランスロットが王族のユリアさんと婚約するんだよ」[p]
[chara_mod name="klaist" face="mihiraki_kutiake"]
[name_kra][r]
「へえ・・・それで」[p]

[chara_mod name="klaist" face="yokome_majime"]
[sekimen_komarikutiake]
[irain][r]
「うん・・・[w]あ、あの・・・お願いしてもいい、かな？」[p]

[chara_mod name="klaist" face="normal_majime"]
[chara_mod name="klaist" face="metoji"]
[name_kra][r]
「うーん・・・」[p]
[komarisekimen_kutitoji]
[irain][r]
（やっぱダメかな・・・？）[p]

[chara_mod name="klaist" face="normal"]
[name_kra][r]
「そうだね、いいよ」[p]
[odoroki]
[irain][r]
「クライストさん！ほんと？」[p]


[chara_mod name="klaist" face="metoji"]
[chara_mod name="klaist" face="normal"]
[name_kra][r]
「うん」[p]

[smile]
[irain][r]
「ありがとう！！」[p]

[normal]
[irain][r]
（よかった・・・あとはドレスを用意するんだよね・・・）[p]

[chara_mod name="klaist" face="normal_kutiake"]
[name_kra][r]
「婚約式って、いつ？」[p]

[irain][r]
「半月後だよ。夕方から」[p]

[chara_mod name="klaist" face="bisyou_hutuu"]
[name_kra][r]
「わかった。じゃあ、本部の前で」[p]

[irain][r]
「うん、よろしくね！」[p]


[cm]

;戻る
*mae
[chara_hide name="klaist"]
[fadeoutbgm time=3000]
[cm]
[jump storage="kyuujitu.ks" target=*start]


