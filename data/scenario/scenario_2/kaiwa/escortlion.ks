


*start






[cm]

;背景を選ぶ（ランダム）

[if exp="f.klhaikei==0"]
[iscript]
f.klhaikei = Math.floor( Math.random() * 2) + 1
[endscript]
[endif]





;メッセージ画面の表示


;背景素材のプリロード

[if exp="f.klhaikei==1"]
[bg storage="crerumatinaka1_tasogare.jpg"]
[else]
[bg storage="kisidanumagoya_tasogare.jpg"]
[endif]

*kaiwa

[stopbgm]
[playbgm storage="rakuyou_ontama.ogg"]
[chara_show name="lioness"]

[komari_kutitoji]
[irain][r]
（ライオネス・・・引き受けてくれるかなあ・・・）[p]


[chara_mod name="lioness" face="wakewakaran_kutiake"]
[lioness][r]
「・・・婚約式の、エスコートだあ？」[p]

[irain][r]
「う、うん・・・」[p]

[chara_mod name="lioness" face="wakewakaran"]
[komarikutiake]
[irain][r]
「ご・・・ごめん、その・・・[w]無理には・・・言わない、けど・・・」[p]

[chara_mod name="lioness" face="muzukasii_kutiake"]
[lioness][r]
「・・・そりゃ・・・[w]俺のとこにも招待状が来たけどよ・・・」[p]
[chara_mod name="lioness" face="metoji_kutitoji"]

[komari_kutitoji]
[irain][r]
（もしかして・・・[w]欠席するつもりだった・・・？）[p]

[lioness][r]
「・・・・・・・・・・・・」[p]

[irain][r]
（ライオネス・・・・・・・・）[p]

[chara_mod name="lioness" face="akireru_kutiake"]
[lioness][r]
「はぁ・・・・・・・」[p]


[lioness][r]
「まぁ・・・仕方ねえか・・・お前がそういうなら・・・・・・・・」[p]
[chara_mod name="lioness" face="akireru"]

[komarikutiake]
[irain][r]
「ライオネス・・・その・・・[w]ほんと、いいの・・・？」[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「・・・ああ」[p]
[chara_mod name="lioness" face="mehuse_kutitoji"]


[kyoton]
[irain][r]
（？・・・なんだろう？でもとりあえず、引き受けてくれるってことなんだよね）[p]

[smile]
[irain][r]
「ありがとう！！」[p]

[chara_mod name="lioness" face="normal_kutitoji"]
[irain][r]
（よかった・・・[w]あとはドレスを用意するんだよね・・・）[p]

[chara_mod name="lioness" face="normal_kutiake"]
[lioness][r]
「それじゃあ、当日遅れんじゃねえぞ」[p]

[chara_mod name="lioness" face="normal_kutitoji"]

[kessin]
[irain][r]
「わかってるよ！！」[p]

[chara_mod name="lioness" face="normal_warai"]
[lioness][r]
「頼むぜ。じゃあな」[p]

[normal]
[irain][r]
（さて、と・・・[w]それじゃ、仕立て屋さんに行ってみよう）[p]
[cm]

;戻る
*mae
[chara_hide name="lioness"]
[fadeoutbgm time=3000]
[cm]
[jump storage="kyuujitu.ks" target=*start]


