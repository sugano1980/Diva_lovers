
*start
[cm]

;ランス恋愛感度レベル表示
[if exp="f.ransrenailevel<6"]
[eval exp="f.ransgenzailevel=f.ransrenailevel"]
[endif]

[if exp="f.ransgenzailevel>f.ransgenzailevel0"]
[message_settei_ad]
[r]恋愛感度レベル（ランスロット）がアップ！[l][cm]
[message_kakusu_ad]
[eval exp="f.ransgenzailevel0=f.ransgenzailevel"]
[endif]






;ライオネス恋愛感度レベル表示
[if exp="f.lionrenailevel<6"]
[eval exp="f.liongenzailevel=f.lionrenailevel"]
[endif]

[if exp="f.liongenzailevel>f.liongenzailevel0"]
[message_settei_ad]
[r]恋愛感度レベル（ライオネス）がアップ！[l][cm]
[message_kakusu_ad]
[eval exp="f.liongenzailevel0=f.liongenzailevel"]
[endif]


;クライスト恋愛感度レベル表示
[if exp="f.krarenailevel<6"]
[eval exp="f.kragenzailevel=f.krarenailevel"]
[endif]

[if exp="f.kragenzailevel>f.kragenzailevel0"]
[message_settei_ad]
[r]恋愛感度レベル（クライスト）がアップ！[l][cm]
[message_kakusu_ad]
[eval exp="f.kragenzailevel0=f.kragenzailevel"]
[endif]

;グリフ恋愛感度レベル表示
[if exp="f.glifrenailevel<6"]
[eval exp="f.glifgenzailevel=f.glifrenailevel"]
[endif]

[if exp="f.glifgenzailevel>f.glifgenzailevel0"]
[message_settei_ad]
[r]恋愛感度レベル（グリフレット）がアップ！[l][cm]
[message_kakusu_ad]
[eval exp="f.glifgenzailevel0=f.glifgenzailevel"]
[endif]

;[eval exp="f.krakonkando=110"]
;心のきずな判定
[if exp="f.ranskonkando>49&&f.event_epi5_rans_ok==10&&f.rans_heart_kizuna!=1&&f.rans_heart_kizuna!=2"]
[message_settei_ad]
[r]ランスロットとの心の絆（ハーフ）を獲得！[l][cm]
;[eval exp="f.ranskonkando_all=f.ranskonkando"]
;[eval exp="f.ranskonkando=f.ranskonkando-100"]
[eval exp="f.rans_heart_kizuna=1"]
[eval exp="tf.kizuna_half=1"]
[koukando_g_up]
[endif]

;[if exp="f.ranskonkando>100&&f.rans_heart_kizuna==1&&f.rans_heart_kizuna!=2"]
;[message_settei_ad]
;[r]ランスロットとの心の絆（フル）を獲得！[l][cm]
;[eval exp="f.ranskonkando_all=f.ranskonkando_all+f.ranskonkando"]
;[eval exp="f.ranskonkando=f.ranskonkando-100"]
;[eval exp="f.rans_heart_kizuna=2"]
;[koukando_g_up]
;[endif]
;

;心のきずな判定
[if exp="f.lionkonkando>49&&f.event_sub_14_mother_kaiwa==1&&f.lion_heart_kizuna!=1&&f.lion_heart_kizuna!=2"]
[message_settei_ad]
[r]ライオネスとの心の絆（ハーフ）を獲得！[l][cm]
;[eval exp="f.lionkonkando_all=f.lionkonkando"]
;[eval exp="f.lionkonkando=f.lionkonkando-100"]
[eval exp="f.lion_heart_kizuna=1"]

[eval exp="tf.kizuna_half=1"]
[koukando_g_up]
[endif]

;[if exp="f.lionkonkando>100&&f.lion_heart_kizuna==1&&f.lion_heart_kizuna!=2"]
;[message_settei_ad]
;[r]ライオネスとの心の絆（フル）を獲得！[l][cm]
;[eval exp="f.lionkonkando_all=f.lionkonkando_all+f.lionkonkando"]
;[eval exp="f.lionkonkando=f.lionkonkando-100"]
;[eval exp="f.lion_heart_kizuna=2"]

;[koukando_g_up]
;[endif]
;

;心のきずな判定
[if exp="f.krakonkando>49&&f.event_epi7_kra_ok==7&&f.kra_heart_kizuna!=1&&f.kra_heart_kizuna!=2"]
[message_settei_ad]
[r]クライストとの心の絆（ハーフ）を獲得！[l][cm]
;[eval exp="f.krakonkando_all=f.krakonkando"]
;[eval exp="f.krakonkando=f.krakonkando-100"]
[eval exp="f.kra_heart_kizuna=1"]

[eval exp="tf.kizuna_half=1"]
[koukando_g_up]
[endif]

;[if exp="f.krakonkando>100&&f.kra_heart_kizuna==1&&f.kra_heart_kizuna!=2"]
;[message_settei_ad]
;[r]クライストとの心の絆（フル）を獲得！[l][cm]
;[eval exp="f.krakonkando_all=f.krakonkando_all+f.krakonkando"]
;[eval exp="f.krakonkando=f.krakonkando-100"]
;[eval exp="f.kra_heart_kizuna=2"]

;[koukando_g_up]
;[endif]
;



[cm]

[return]
