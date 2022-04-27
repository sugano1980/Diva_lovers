;rans_re_action

[iscript]
tf.rans_serihu=[
'「どうした？」',
'「・・・お前を見ていると、ほっとする」',
'「・・・ん？」',
'「・・・・・」',
'「・・・こっちを向いてくれないか。お前の顔が見たい」',
'「・・・[name]」',
'「・・・っ・・・[name]」',
'「・・・どうした、疲れたのか？」',
'「・・・甘えるのも程々にしてもらわないと・・・こちらが困るな」',
'「・・・っ・・・こら、からかっているのか？」',
'「・・・今日は随分と大胆だな・・・」'
];
[endscript]

;どうした？
[macro name="rans_react_0"]
[rans_head_left_z]
[rans_exp_mihiraki]
#ランスロット
[eval exp="tf.rans_word=tf.rans_serihu[0]"]
[emb exp="tf.rans_word"][p]
#

[endmacro]
;お前をみていると、ほっと
[macro name="rans_react_1"]
[rans_exp_mihiraki]
[rans_exp_bisyo]
[eval exp="tf.rans_word=tf.rans_serihu[1]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#
[endmacro]
;ん？
[macro name="rans_react_2"]
[rans_head_right_z]
[rans_exp_normal_warai]
[eval exp="tf.rans_word=tf.rans_serihu[2]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#
[endmacro]
;・・・目伏せ
[macro name="rans_react_3"]
[rans_head_under_y]
[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse_warai]
[eval exp="tf.rans_word=tf.rans_serihu[3]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#

[endmacro]
;こっちを向いてくれないか
[macro name="rans_react_4"]
[rans_head_under_y]
[rans_mod_idle_no_move_metoji]
[rans_exp_metoji]
[rans_mod_idle]
[rans_exp_normal]
[rans_head_right_x]
[rans_head_normal]
[eval exp="tf.rans_word=tf.rans_serihu[4]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#
[endmacro]
;触れる
[macro name="rans_react_5"]
[rans_head_right_z]
[rans_exp_sinpai]
[playse storage="huku1_koukaonlabo.ogg"]
[eval exp="tf.rans_word=tf.rans_serihu[5]"]
#ランスロット
「・・・[name]」[p]
[playse storage="tukamu_onjin.ogg"]
[camera zoom=1.2 x=10 y=0 time=1000]
#
#&f.name
（あ・・・手・・・）[p]
#
[reset_camera]
[endmacro]

;手を繋ぐ
[macro name="rans_react_6"]
[playse storage="huku1_koukaonlabo.ogg"]
[camera zoom=1.1 x=10 y=-30 time=1000]
[playse storage="tukamu_onjin.ogg"]
[rans_exp_mihiraki]
#ランスロット
「・・・っ・・・[name]」[p]
#
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「・・・」[p]
#

[reset_camera]
[endmacro]

;疲れたのか
[macro name="rans_react_7"]
[rans_exp_bisyo]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[live2d_fadein time=500]
[rans_exp_mihiraki]
[camera zoom=1.2 x=10 y=-50 time=1500]
[rans_head_right_z]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
[rans_eyes_under]
[rans_body_under_y]
[rans_body_right_z]
[eval exp="tf.rans_word=tf.rans_serihu[7]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#
[reset_camera]

[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[rans_mod_idle]
[endmacro]

;甘えるのも・・・
[macro name="rans_react_8"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="rans2" y=-5.0 scale=9.9]
[live2d_fadein time=500]
[camera zoom=1.2 x=-70 y=-50 time=1000]
[rans_eyes_left_under]
[rans_exp_mehuse_warai]
[rans_mod_idle_no_move_mehuse]
[rans_head_right_x]
[rans_head_under_y]
[rans_body_right_x]
[eval exp="tf.rans_word=tf.rans_serihu[8]"]
#ランスロット
[emb exp="tf.rans_word"][p]
#
[reset_camera]

[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[rans_mod_idle]
[endmacro]
;悪戯
[macro name="rans_react_9"]
[rans_body_above_y]
[rans_head_right_x]
[rans_exp_komari_warai]
[rans_eyes_left]
#ランスロット
[eval exp="tf.rans_word=tf.rans_serihu[9]"]
[emb exp="tf.rans_word"][p]
#
[endmacro]
;？？？
[macro name="rans_react_10"]
[rans_head_right_z]
[rans_exp_sinpai]
#ランスロット
[eval exp="tf.rans_word=tf.rans_serihu[10]"]
[emb exp="tf.rans_word"][p]
#
[rans_head_normal]
[rans_exp_normal]
[rans_head_under_y]
[rans_exp_ketui]
;[rans_body_under_y]
#&f.name
「っ・・・！？」[p]
#
[playse storage="hukukosure_onjin.ogg"]
[camera zoom=2.6 x=-10 y=-70 time=200]
[camera zoom=1.3 x=-10 y=-20 time=1300]

[rans_mod_idle_no_move_mehuse]
[rans_exp_mehuse]
[rans_eyes_right]
#ランスロット
「こんな・・・立場でなければ・・・」[p]
#
[rans_mod_idle]
[rans_eyes_normal]
[rans_head_normal]
[rans_exp_normal]



[endmacro]


;ここから自発アクション
[macro name="rans_react_11"]
[rans_head_right_x]
[rans_eyes_right]
[endmacro]

[macro name="rans_react_12"]
[rans_head_right_z]
[rans_exp_sinpai]

[endmacro]
[macro name="rans_react_13"]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]

[endmacro]

[macro name="rans_react_14"]
[rans_head_under_y]
[rans_head_right_z]
[rans_exp_mehuse]

[endmacro]

[macro name="rans_react_15"]
[rans_exp_mihiraki]
[endmacro]

[macro name="rans_react_16"]
[rans_body_under_y]
[rans_head_left_x]
[rans_head_under_y]
[live2d_fadeout time=500]
[rans_head_normal]
[rans_exp_sinpai]
[live2d_mod name="rans2" y=-5.3 scale=10.5]
[live2d_fadein time=800]
[camera zoom=1.2 x=0 y=0 time=1000]
[rans_head_right_z]
[playse storage="huku1_koukaonlabo.ogg"]
#&f.name
（頬に・・・手・・・）[p]
#
[rans_exp_mehuse_warai]
[rans_head_left_z]
[rans_head_normal]
[rans_exp_komari_warai]
[live2d_fadeout time=500]
[reset_camera]
[model_return]

[live2d_fadein time=800]



[endmacro]


[macro name="rans_react_17"]
[rans_body_under_y]
[rans_head_left_z]
[rans_head_under_y]
[rans_exp_mehuse]
[live2d_fadeout time=500]
[live2d_mod name="rans2" y=-5.3 scale=10.5]
[live2d_fadein time=800]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_head_right_z]
[rans_exp_bisyo]
[playse storage="huku1_koukaonlabo.ogg"]
[camera zoom=1.2 x=10 y=0 time=1000]
#ランスロット
「・・・[name]」[p]
#
#&f.name
（あ・・・手・・・）[p]
#
[live2d_fadeout time=500]
[reset_camera]
[model_return]

[live2d_fadein time=800]

[endmacro]


;lion_re_action

[iscript]
tf.lion_serihu=[
'「・・・なっ、何だよ・・・」',
'「っ・・・」',
'「あ、あんま・・・その・・・見んな」',
'「どした？」',
'「・・・・・・」',
'「・・・なんだよ？」',
'「・・・っ・・・お、おい・・・」',
'「・・・なんだ、あ、甘えてんのか？」',
'「・・・お前なあ・・・そんなして・・・どうなっても知らねえぞ？」',
'「・・・なっ・・・なんだよっ・・・こら、やめろって」',
'「・・・なあ俺・・・勘違い、してねえよな・・・。本気に、するぞ」'
];
[endscript]

;見つめる
[macro name="lion_react_0"]
[lioness_body_above_y]
[lioness_face_odoroki]
#ライオネス
[eval exp="tf.lion_word=tf.lion_serihu[0]"]
[emb exp="tf.lion_word"][p]
#

[endmacro]
;微笑み
[macro name="lion_react_1"]
[lioness_face_odoroki_sekimen]
[eval exp="tf.lion_word=tf.lion_serihu[1]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#
[endmacro]
;上目遣い？
[macro name="lion_react_2"]
[lioness_head_right_x]
[lioness_face_sinnpai]
[eval exp="tf.lion_word=tf.lion_serihu[2]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#
[endmacro]
;首傾げる
[macro name="lion_react_3"]
[lioness_head_left_z]
[lioness_face_ha]
[eval exp="tf.lion_word=tf.lion_serihu[3]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#

[endmacro]
;そっぽを向く
[macro name="lion_react_4"]
[lioness_head_under_y]
[lioness_head_right_x]
;[lioness_arms_atamanite_right]
[lioness_face_otikomi]
[eval exp="tf.lion_word=tf.lion_serihu[4]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#
[endmacro]
;触れる
[macro name="lion_react_5"]
[playse storage="huku1_koukaonlabo.ogg"]
[lioness_face_normal_warai]
[lioness_head_right_z]
[eval exp="tf.lion_word=tf.lion_serihu[5]"]
#ライオネス
「・・・なんだよ？」[p]
[endmacro]

;手を繋ぐ
[macro name="lion_react_6"]
[playse storage="huku1_koukaonlabo.ogg"]
[camera zoom=1.1 x=10 y=-30 time=1000]
[playse storage="tukamu_onjin.ogg"]
[lioness_face_odoroki]
[lioness_face_warai]
#ライオネス
「・・・お前の手、ちっちぇえな」[p]
#
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス
「・・・」[p]
#
[reset_camera]
[endmacro]

;寄りかかる
[macro name="lion_react_7"]
[lioness_face_normal]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=500]
[lioness_face_odoroki]
[camera zoom=1.2 x=10 y=-50 time=1500]
;[lioness_arms_poripori]
[lioness_eyes_left]
[lioness_head_right_x]
[lioness_face_tere]
[lioness_body_under_y]
[lioness_body_right_z]
[eval exp="tf.lion_word=tf.lion_serihu[7]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#
[reset_camera]

[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[lioness_mod_idle]
[endmacro]

;腕ぎゅ
[macro name="lion_react_8"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_odoroki]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=500]
[camera zoom=1.2 x=-70 y=-50 time=1000]
[lioness_eyes_left_under]
[lioness_face_mehuse_dai]
[lioness_head_right_x]
[lioness_head_under_y]
[lioness_body_right_x]
[lioness_face_warai]
[eval exp="tf.lion_word=tf.lion_serihu[8]"]
#ライオネス
[emb exp="tf.lion_word"][p]
#
[reset_camera]
[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[lioness_mod_idle]
[endmacro]

;悪戯
[macro name="lion_react_9"]
[lioness_body_above_y]
[lioness_face_odoroki_sekimen]
[lioness_face_aseri]
[lioness_eyes_left]
[lioness_head_left_x]
[lioness_eyes_right]
[lioness_head_right_x]

#ライオネス
[eval exp="tf.lion_word=tf.lion_serihu[9]"]
[emb exp="tf.lion_word"][p]
#
[endmacro]

;？？？
[macro name="lion_react_10"]
[lioness_head_right_z]
[lioness_face_sinnpai]

[lioness_head_normal]
[lioness_face_normal]
[lioness_head_under_y]
[lioness_face_gantobasi]
#&f.name
「っ・・・！？」[p]
#
[playse storage="hukukosure_onjin.ogg"]
[camera zoom=2.6 x=-10 y=-70 time=200]
[camera zoom=1.3 x=-10 y=-20 time=1300]

[lioness_face_normal]
#ライオネス
[eval exp="tf.lion_word=tf.lion_serihu[10]"]
[emb exp="tf.lion_word"][p]
#
[lioness_mod_idle]
[endmacro]


;ここから自発アクション
[macro name="lion_react_11"]
[lioness_head_right_x]
[lioness_eyes_right]
[lioness_head_left_x]
[lioness_eyes_left]
[endmacro]

[macro name="lion_react_12"]
[lioness_head_right_z]
[lioness_face_ha]
[endmacro]

[macro name="lion_react_13"]
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_warai]

[endmacro]

[macro name="lion_react_14"]
[lioness_head_left_x]
;[lioness_arms_poripori]
[lioness_face_otikomi]

[endmacro]

[macro name="lion_react_15"]
[lioness_head_right_z]
[lioness_face_sinnpai]
[endmacro]

[macro name="lion_react_16"]
[lioness_body_under_y]
[lioness_head_left_x]
[lioness_head_under_y]
[live2d_fadeout time=500]
[playse storage="hukukosure_onjin.ogg"]
#&f.name
「あっ・・・」[p]
#
#&f.name
（腕・・・）[p]
#
[live2d_mod name="lioness" y=-4.8 scale=9.4]
[live2d_fadein time=800]
[camera zoom=1.2 x=0 y=10 time=1000]
[lioness_head_right_z]
#&f.name
「あ、あの・・・ライオネス・・・」[p]
#
[lioness_head_under_y]
[lioness_face_sinnpai]
#ライオネス
「なんか無防備すぎ。お前」[p]
#
[lioness_face_mehuse_dai]
#ライオネス
「細い・・・腕だな・・・」[p]
#
[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]
[endmacro]


[macro name="lion_react_17"]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス
「・・・」[p]
#
[lioness_face_normal]
[live2d_fadeout time=500]
[live2d_mod name="lioness" y=-5.3 scale=10.5]
[live2d_fadein time=800]
#ライオネス
「・・・[name]」[p]
#
[playse storage="huku1_koukaonlabo.ogg"]
[camera zoom=1.2 x=10 y=-20 time=1000]
#&f.name
（あ・・・・）[p]
#
[playse storage="hukukosure_onjin.ogg"]
#&f.name
（ちょ・・・腰に、手・・・）[p]
#
[lioness_head_right_z]
[lioness_face_sinnpai]
#ライオネス
「・・・嫌か？」[p]
#
#&f.name
「い、いや・・・っていうか・・・その」[p]
#
#&f.name
（は、恥ずかしいよ・・・！）[p]
#
[lioness_head_normal]
[lioness_face_odoroki_sekimen]
#ライオネス
「・・・悪い・・・その、つい・・・」[p]
#
[lioness_head_left_x]
[lioness_eyes_left]
[lioness_face_tere]

[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]

[endmacro]


;リアクションクライスト
;kra_re_action

[iscript]
tf.kra_serihu=[
'「ん？」',
'「っ・・・」',
'「えーと・・・」',
'「うん？どうしたの？」',
'「あれ？」',
'「・・・」',
'「・・・つないじゃおっか？」',
'「かわいいね・・・。もっと、おいで？」',
'「この、感触・・・」',
'「こら、何してるの？」',
'「・・・後悔しないつもりで、それ、やってるんだよね？」'
];
[endscript]

;見つめる
[macro name="kra_react_0"]
[aho_head_right_z]
[aho_face_bisyou_youen]
#クライスト
[eval exp="tf.kra_word=tf.kra_serihu[0]"]
[emb exp="tf.kra_word"][p]
#

[endmacro]
;微笑み
[macro name="kra_react_1"]
[aho_eyes_left]
[aho_face_komari]
[aho_face_mehuse]
[eval exp="tf.kra_word=tf.kra_serihu[1]"]
#クライスト
[emb exp="tf.kra_word"][p]
#
[endmacro]
;上目遣い？
[macro name="kra_react_2"]
[aho_face_mihiraki]
[aho_head_right_x]
[aho_face_komari_warai]
[aho_eyes_right]
[eval exp="tf.kra_word=tf.kra_serihu[2]"]
#クライスト
[emb exp="tf.kra_word"][p]
#
[endmacro]
;首傾げる
[macro name="kra_react_3"]
[aho_head_left_z]
[aho_face_bisyou_youen]
[eval exp="tf.kra_word=tf.kra_serihu[3]"]
#クライスト
[emb exp="tf.kra_word"][p]
#

[endmacro]
;そっぽを向く
[macro name="kra_react_4"]
[aho_head_right_z]
[aho_face_mihiraki]
[eval exp="tf.kra_word=tf.kra_serihu[4]"]
#クライスト
[emb exp="tf.kra_word"][p]
#
[endmacro]
;触れる
[macro name="kra_react_5"]
[playse storage="huku1_koukaonlabo.ogg"]
[aho_body_right_z]
[aho_face_mehuse_warai]
[aho_head_under_y]
[eval exp="tf.kra_word=tf.kra_serihu[5]"]
#クライスト
[emb exp="tf.kra_word"][p]
[endmacro]

;手を繋ぐ
[macro name="kra_react_6"]
[playse storage="huku1_koukaonlabo.ogg"]
[aho_face_tomadoi]
[camera zoom=1.1 x=10 y=-30 time=1000]
[playse storage="tukamu_onjin.ogg"]
[eval exp="tf.kra_word=tf.kra_serihu[6]"]
[aho_head_left_z]
[aho_body_left_z]
[aho_face_mehuse_warai]
#クライスト
;つないじゃおっか
[emb exp="tf.kra_word"][p]
#
[aho_head_right_z]
[aho_body_right_z]
[aho_face_hutuu_warai]
[reset_camera]
[endmacro]

;寄りかかる
[macro name="kra_react_7"]
[aho_head_right_z]
[aho_face_normal_majime]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=500]
[aho_head_normal]
[aho_face_mihiraki]
[camera zoom=1.2 x=10 y=-20 time=1500]
[aho_head_right_z]
[aho_face_bisyou_youen]
[aho_body_under_y]
[aho_body_right_z]
[eval exp="tf.kra_word=tf.kra_serihu[7]"]
#クライスト
[emb exp="tf.kra_word"][p]
#
[reset_camera]

[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[aho_mod_idle_normal]
[endmacro]

;腕ぎゅ
[macro name="kra_react_8"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_mihiraki]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=500]
[camera zoom=1.2 x=-70 y=-50 time=1000]
[aho_face_komari_warai]
[aho_head_right_x]
[aho_head_above_y]
[aho_body_right_x]
[eval exp="tf.kra_word=tf.kra_serihu[8]"]
#クライスト
[emb exp="tf.kra_word"][p]
#
[aho_face_hutuu_warai]
#クライスト
「いや、なんでもないよ」[p]
#
[reset_camera]
[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[aho_mod_idle_normal]
[endmacro]

;悪戯
[macro name="kra_react_9"]
[aho_body_above_y]
;[aho_body_kataageru]
[aho_face_mihiraki]
#クライスト
[eval exp="tf.kra_word=tf.kra_serihu[9]"]
[emb exp="tf.kra_word"][p]
#
[aho_face_komari_warai]
[endmacro]

;？？？
[macro name="kra_react_10"]

[aho_head_right_z]
[aho_head_normal]
[aho_face_normal_majime]
#クライスト
[eval exp="tf.kra_word=tf.kra_serihu[10]"]
[emb exp="tf.kra_word"][p]
#

#&f.name
「え・・・」[p]
#
[aho_eyes_left]
[w]
[aho_eyes_normal]
[playse storage="hukukosure_onjin.ogg"]
[camera zoom=2.6 x=-10 y=-70 time=200]
[camera zoom=1.3 x=-10 y=-20 time=1300]
[aho_eyes_under]
#クライスト
「俺だって男なんだからさ、そこはちゃんと考えてもらわないと・・・」[p]
#
[aho_mod_idle_kokyu_only]
[aho_face_metoji]
[aho_head_right_x]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
#クライスト
「・・・とまんなく、なっちゃうよ？」[p]
#
[aho_face_normal_majime]
#クライスト
「いいの？」[p]
#

[endmacro]


;ここから自発アクション
[macro name="kra_react_11"]
[aho_head_right_x]
[aho_eyes_right]
[endmacro]

[macro name="kra_react_12"]
[aho_head_left_z]
[aho_face_bisyou_youen]
[endmacro]

[macro name="kra_react_13"]
[aho_head_left_z]
[aho_face_normal_majime]
[endmacro]

[macro name="kra_react_14"]
[aho_head_left_x]
[aho_head_under_y]
[aho_face_mehuse]
[endmacro]

[macro name="kra_react_15"]
;ちょいてれ入れる
[aho_face_yokome_majime]
[endmacro]

[macro name="kra_react_16"]
[aho_body_under_y]
[aho_eyes_under]
[aho_head_under_y]
[live2d_fadeout time=500]
[playse storage="hukukosure_onjin.ogg"]
#&f.name
「あっ・・・」[p]
#
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=800]
[camera zoom=1.2 x=0 y=10 time=1000]
[aho_face_mehuse]
#&f.name
「クライストさん・・・？」[p]
#
[aho_face_hutuu_warai]
#クライスト
「・・・・・・」[p]
#
[aho_head_right_z]


[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]
[endmacro]


[macro name="kra_react_17"]
[aho_head_under_y]
[aho_face_mehuse]
#クライスト
「・・・」[p]
#
[aho_face_normal_majime]
[live2d_fadeout time=500]
[live2d_mod name="aho" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=800]
[playse storage="huku1_koukaonlabo.ogg"]
#&f.name
「えっ」[p]
#
[camera zoom=1.2 x=10 y=-20 time=1000]

[playse storage="hukukosure_onjin.ogg"]
#&f.name
「く、クライストさん・・・？」[p]
#
[aho_head_under_y]
[aho_eyes_above]
#クライスト
「ダメだよ、そんな無防備な顔で、男にちょっかい出しちゃ」[p]
#
[aho_eyes_under]
[aho_head_above_y]
[aho_head_right_x]
[aho_mod_idle_normal_mehuse]
[aho_face_mehuse]
[aho_eyes_right]
#クライスト
「君のことだから、無意識なんだろうけど」[p]
#
[aho_eyes_normal]
[aho_mod_idle_normal]
[aho_head_normal]
[aho_face_yokome_majime]
#クライスト
「でも、そういう顔は、俺の前だけにして？」
[aho_head_right_z]
[aho_face_hutuu_warai]

[p]
#
#&f.name
（クライスト、さん・・・）[aho_face_komari_warai][p]
#
[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]

[endmacro]



;リアクショングリフ
;glif_re_action

[iscript]
tf.glif_serihu=[
'「はい、なんでしょう？」',
'「・・・[name]さん」',
'「っ・・・そんな目で、見つめられたら・・・」',
'「どうかしましたか？」',
'「・・・えっ・・・僕、何かしました？」',
'「・・・[name]さん」',
'「あっ・・・あの・・・」',
'「そんな、風にされたら・・・色々、期待してしまいそうです」',
'「あっ・・・あの・・・人の目が・・・」',
'「ちょっ・・・そのっ・・・参りましたね・・・」',
'「[name]さん。僕は・・・少しは・・・期待・・・してもいいんでしょうか？」'
];
[endscript]

;見つめる
[macro name="glif_react_0"]
[glif_head_under_y]
[glif_head_normal]
[glif_exp_bisyo]
#グリフ
[eval exp="tf.glif_word=tf.glif_serihu[0]"]
[emb exp="tf.glif_word"][p]
#

[endmacro]
;微笑み
[macro name="glif_react_1"]
[glif_head_under_y]
[glif_eyes_left]
[glif_exp_komari_sekimen]
[eval exp="tf.glif_word=tf.glif_serihu[1]"]
#グリフ
[emb exp="tf.glif_word"][p]
#
[endmacro]
;上目遣い？
[macro name="glif_react_2"]
[glif_head_right_x]
[glif_exp_komari_warai]
[glif_eyes_right]
[eval exp="tf.glif_word=tf.glif_serihu[2]"]
#グリフ
[emb exp="tf.glif_word"][p]
#
[endmacro]
;首傾げる
[macro name="glif_react_3"]
[glif_head_under_y]
[glif_head_normal]
[glif_exp_normal_warai]
[eval exp="tf.glif_word=tf.glif_serihu[3]"]
#グリフ
[emb exp="tf.glif_word"][p]
#

[endmacro]
;そっぽを向く
[macro name="glif_react_4"]
[glif_exp_mihiraki]
[glif_head_right_z]
[glif_exp_komari_warai]
[eval exp="tf.glif_word=tf.glif_serihu[4]"]
#グリフ
[emb exp="tf.glif_word"][p]
#
[endmacro]
;触れる
[macro name="glif_react_5"]
[playse storage="huku1_koukaonlabo.ogg"]
[glif_exp_mihiraki]
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
[glif_head_right_x]
[glif_head_under_y]
[glif_head_normal]
[glif_exp_normal]
[eval exp="tf.glif_word=tf.glif_serihu[5]"]
#グリフ
[emb exp="tf.glif_word"][p]
[endmacro]

;手を繋ぐ
[macro name="glif_react_6"]
[playse storage="huku1_koukaonlabo.ogg"]
[glif_exp_mihiraki]
[camera zoom=1.1 x=10 y=-30 time=1000]
[playse storage="tukamu_onjin.ogg"]
[eval exp="tf.glif_word=tf.glif_serihu[6]"]
[glif_head_right_x]
[glif_head_under_y]
[glif_exp_komari_sekimen]
#グリフ
;あっ・・・あの・・・
[emb exp="tf.glif_word"][glif_head_left_x]
[glif_head_under_y][p]
#

[reset_camera]
[endmacro]

;寄りかかる
[macro name="glif_react_7"]
[glif_exp_mihiraki]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="glif_r" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=500]
[camera zoom=1.2 x=10 y=-20 time=1500]
[glif_head_right_z]
[glif_head_right_x]
[glif_exp_tere]
[eval exp="tf.glif_word=tf.glif_serihu[7]"]
#グリフ
[emb exp="tf.glif_word"][glif_head_under_y]
[glif_body_right_z][p]
#
[reset_camera]

[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[glif_mod_idle_normal]
[endmacro]

;腕ぎゅ
[macro name="glif_react_8"]
[glif_exp_mihiraki]
[live2d_fadeout time=500]
[playse storage="huku1_koukaonlabo.ogg"]
[live2d_mod name="glif_r" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=500]
[camera zoom=1.2 x=-70 y=-50 time=1000]
[glif_head_right_x]
;困り赤面
[glif_exp_komari_sekimen]
[eval exp="tf.glif_word=tf.glif_serihu[8]"]
#グリフ
[glif_head_left_x]
[emb exp="tf.glif_word"][p]
#
[reset_camera]
[live2d_fadeout time=1000]
[model_return]
[live2d_fadein time=1000]

[glif_mod_idle_normal]
[endmacro]

;悪戯
[macro name="glif_react_9"]
[glif_body_above_y]
[glif_exp_mihiraki]
#グリフ
[eval exp="tf.glif_word=tf.glif_serihu[9]"]
[emb exp="tf.glif_word"]
[glif_head_right_x]
[glif_head_under_y]
[glif_exp_komari_warai]
[p]
#

[endmacro]

;？？？
[macro name="glif_react_10"]

[glif_exp_normal]
#グリフ
[eval exp="tf.glif_word=tf.glif_serihu[10]"]
[emb exp="tf.glif_word"][p]
#

#&f.name
「え・・・」[p]
#

[endmacro]


;ここから自発アクション
[macro name="glif_react_11"]
[glif_head_right_x]
[glif_eyes_right]
[endmacro]

[macro name="glif_react_12"]
[glif_head_left_z]
[glif_exp_normal_warai]
[endmacro]

[macro name="glif_react_13"]
[glif_head_left_z]
[glif_exp_normal]
[endmacro]

[macro name="glif_react_14"]
[glif_head_under_y]
[glif_head_normal]
[endmacro]

[macro name="glif_react_15"]
;ちょいてれ入れる
[glif_head_right_x]
[glif_exp_tere]
[endmacro]

[macro name="glif_react_16"]
[glif_body_under_y]
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
[glif_eyes_under]
[glif_head_under_y]
[live2d_fadeout time=500]
[playse storage="hukukosure_onjin.ogg"]
#&f.name
「あっ・・・」[p]
#
[live2d_mod name="glif_r" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=800]
[camera zoom=1.2 x=0 y=10 time=1000]
[glif_head_normal]
[glif_exp_ketui]
#&f.name
「グリフ・・・？」[p]
#
[glif_exp_mousiwakenai]
#グリフ
「この手に、ずっと・・・触れて、いられたら・・・」[p]
#
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
[glif_head_under_y]
[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]
[endmacro]


[macro name="glif_react_17"]
[glif_head_under_y]
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
#グリフ
「・・・」[p]
#
[glif_mod_idle_normal]
[glif_exp_normal]
[live2d_fadeout time=500]
[live2d_mod name="glif_r" y=-5.2 x=0.0 scale=10.5]
[live2d_fadein time=800]
[playse storage="huku1_koukaonlabo.ogg"]
#&f.name
「えっ」[p]
#
[camera zoom=1.2 x=10 y=-20 time=1000]

[playse storage="hukukosure_onjin.ogg"]
#&f.name
「く、グリフ・・・？」[p]
#
[glif_head_under_y]
[glif_exp_komari_sekimen]
#グリフ
「その、困ります、[name]さん・・・僕は・・・」[p]
#
[glif_eyes_right]
[glif_head_right_x]
[glif_mod_idle_mehuse]
[glif_exp_mehuse]
[glif_eyes_right]
#グリフ
「僕だって・・・一応・・・男なんですから・・・あんまり・・・その・・・」[p]
#
[glif_eyes_normal]
[glif_head_normal]
[glif_mod_idle_normal]
[glif_exp_sinpai]

[p]
#
#&f.name
（グリフ・・・）[glif_head_right_x][glif_head_under_y][glif_exp_komari_sekimen][p]
#
[live2d_fadeout time=500]
[reset_camera]

[model_return]

[live2d_fadein time=800]

[endmacro]











[return]
