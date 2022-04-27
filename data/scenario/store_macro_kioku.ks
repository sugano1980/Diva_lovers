
;----------------------------------------

;みせを選んだとき男性キャラに記憶

;カジカジ亭

[macro name="kioku_kajikaji"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_kajikaji_lion=f.r_kajikaji_lion+1"]
[kajikaji_except_flag_delete_lion]

[if exp="f.r_kajikaji_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_kajikaji_rans=f.r_kajikaji_rans+1"]
[kajikaji_except_flag_delete_rans]

[if exp="f.r_kajikaji_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_kajikaji_kra=f.r_kajikaji_kra+1"]
[kajikaji_except_flag_delete_kra]

[if exp="f.r_kajikaji_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


[macro name="kioku_hirayama"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_hirayama_lion=f.r_hirayama_lion+1"]
[hirayama_except_flag_delete_lion]

[if exp="f.r_hirayama_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_hirayama_rans=f.r_hirayama_rans+1"]
[hirayama_except_flag_delete_rans]

[if exp="f.r_hirayama_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_hirayama_kra=f.r_hirayama_kra+1"]
[hirayama_except_flag_delete_kra]

[if exp="f.r_hirayama_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]

;及川亭
[macro name="kioku_oikawa"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_oikawa_lion=f.r_oikawa_lion+1"]
[oikawa_except_flag_delete_lion]

[if exp="f.r_oikawa_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_oikawa_rans=f.r_oikawa_rans+1"]
[oikawa_except_flag_delete_rans]

[if exp="f.r_oikawa_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_oikawa_kra=f.r_oikawa_kra+1"]
[oikawa_except_flag_delete_kra]

[if exp="f.r_oikawa_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


;ロマナーデ

[macro name="kioku_romana"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_romana_lion=f.r_romana_lion+1"]
[romana_except_flag_delete_lion]

[if exp="f.r_romana_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_romana_rans=f.r_romana_rans+1"]
[romana_except_flag_delete_rans]

[if exp="f.r_romana_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_romana_kra=f.r_romana_kra+1"]
[romana_except_flag_delete_kra]

[if exp="f.r_romana_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


;ベル族

[macro name="kioku_beruzoku"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_beruzoku_lion=f.r_beruzoku_lion+1"]
[beruzoku_except_flag_delete_lion]

[if exp="f.r_beruzoku_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_beruzoku_rans=f.r_beruzoku_rans+1"]
[beruzoku_except_flag_delete_rans]

[if exp="f.r_beruzoku_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_beruzoku_kra=f.r_beruzoku_kra+1"]
[beruzoku_except_flag_delete_kra]

[if exp="f.r_beruzoku_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


;ムーン

[macro name="kioku_moon"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_moon_lion=f.r_moon_lion+1"]
[moon_except_flag_delete_lion]

[if exp="f.r_moon_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_moon_rans=f.r_moon_rans+1"]
[moon_except_flag_delete_rans]

[if exp="f.r_moon_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_moon_kra=f.r_moon_kra+1"]
[moon_except_flag_delete_kra]

[if exp="f.r_moon_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]

;ベジベジ

[macro name="kioku_bejibeji"]

;ライオネス、店の記憶
[if exp="f.friend==2"]
;カジカジ
[eval exp="f.r_bejibeji_lion=f.r_bejibeji_lion+1"]
[bejibeji_except_flag_delete_lion]

[if exp="f.r_bejibeji_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]
;カジカジ
[eval exp="f.r_bejibeji_rans=f.r_bejibeji_rans+1"]
[bejibeji_except_flag_delete_rans]

[if exp="f.r_bejibeji_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ
[eval exp="f.r_bejibeji_kra=f.r_bejibeji_kra+1"]
[bejibeji_except_flag_delete_kra]

[if exp="f.r_bejibeji_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


;ポテト
[macro name="kioku_poteto"]

;ライオネス、店の記憶
[if exp="f.friend==2"]

[eval exp="f.r_poteto_lion=f.r_poteto_lion+1"]
[poteto_except_flag_delete_lion]

[if exp="f.r_poteto_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]

[eval exp="f.r_poteto_rans=f.r_poteto_rans+1"]
[poteto_except_flag_delete_rans]

[if exp="f.r_poteto_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]

[eval exp="f.r_poteto_kra=f.r_poteto_kra+1"]
[poteto_except_flag_delete_kra]

[if exp="f.r_poteto_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]


;キャロキャロ

[macro name="kioku_kyarokyaro"]

;ライオネス、店の記憶
[if exp="f.friend==2"]

[eval exp="f.r_kyarokyaro_lion=f.r_kyarokyaro_lion+1"]
[kyarokyaro_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_lion>1"]
[lion_r_word]
[endif]

[endif]
;-------------------
;ランス
;店の記憶
[if exp="f.friend==1"]

[eval exp="f.r_kyarokyaro_rans=f.r_kyarokyaro_rans+1"]
[kyarokyaro_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_rans>1"]
[rans_r_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]

[eval exp="f.r_kyarokyaro_kra=f.r_kyarokyaro_kra+1"]
[kyarokyaro_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_kra>1"]
[kra_r_word]
[endif]

[endif]




[endmacro]




[macro name="lion_r_word"]
;同じ店を２回以上選んだ時のセリフ
#ライオネス
「お前前にもこの店選んだよな。好きなのか？」[p]
#
[endmacro]

[macro name="rans_r_word"]
;同じ店を２回以上選んだ時のセリフ
#ランスロット
「この間もこの店だったな。気に入っているのか？」[p]
#
[endmacro]

[macro name="kra_r_word"]
;同じ店を２回以上選んだ時のセリフ
#クライスト
「あれ、こないだと同じお店だね。好きなの？」[p]
#
[endmacro]



[macro name="lion_r_menu_word"]

#ライオネス
「お前前にもこれ頼んだよな。これ好きか？」[p]
#
[endmacro]

[macro name="rans_r_menu_word"]

#ランスロット
「この間もこの料理だったな。そんなに美味かったか？」[p]
#
[endmacro]

[macro name="kra_r_menu_word"]

#クライスト
「そういえば、この前も同じ料理だったよね。もしかしてお気に入り？」[p]
#
[endmacro]












;カジカジていの累積記憶があるときに他の店を選ぶと、カジカジていの累積記憶を消去
;カジカジ亭を選んだときのほかフラグ消去
[macro name="kajikaji_except_flag_delete_lion"]

[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]


;平山亭を選んだときのフラグ消去
[macro name="hirayama_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]

[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]

;及川亭
[macro name="oikawa_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]


[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]

;ロマナーデ
[macro name="romana_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]


[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]

;ベル族
[macro name="beruzoku_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]



[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]


;ムーン
[macro name="moon_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]



[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]

;べじべえじ
[macro name="bejibeji_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]



[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]

;ポテと
[macro name="poteto_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]


[if exp="f.r_kyarokyaro_lion>0"]
[eval exp="f.r_kyarokyaro_lion=0"]
[endif]


[endmacro]


;キャロキャロ
[macro name="kyarokyaro_except_flag_delete_lion"]

[if exp="f.r_kajikaji_lion>0"]
[eval exp="f.r_kajikaji_lion=0"]
[endif]
[if exp="f.r_hirayama_lion>0"]
[eval exp="f.r_hirayama_lion=0"]
[endif]
[if exp="f.r_oikawa_lion>0"]
[eval exp="f.r_oikawa_lion=0"]
[endif]
[if exp="f.r_romana_lion>0"]
[eval exp="f.r_romana_lion=0"]
[endif]
[if exp="f.r_beruzoku_lion>0"]
[eval exp="f.r_beruzoku_lion=0"]
[endif]
[if exp="f.r_moon_lion>0"]
[eval exp="f.r_moon_lion=0"]
[endif]
[if exp="f.r_bejibeji_lion>0"]
[eval exp="f.r_bejibeji_lion=0"]
[endif]
[if exp="f.r_poteto_lion>0"]
[eval exp="f.r_poteto_lion=0"]
[endif]



[endmacro]



;カジカジていの累積記憶があるときに他の店を選ぶと、カジカジていの累積記憶を消去
;カジカジ亭を選んだときのほかフラグ消去
[macro name="kajikaji_except_flag_delete_rans"]

[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]


;平山亭を選んだときのフラグ消去
[macro name="hirayama_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]

[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]

;及川亭
[macro name="oikawa_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]


[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]

;ロマナーデ
[macro name="romana_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]


[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]

;ベル族
[macro name="beruzoku_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]



[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]


;ムーン
[macro name="moon_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]



[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]

;べじべえじ
[macro name="bejibeji_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]



[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]

;ポテと
[macro name="poteto_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]


[if exp="f.r_kyarokyaro_rans>0"]
[eval exp="f.r_kyarokyaro_rans=0"]
[endif]


[endmacro]


;キャロキャロ
[macro name="kyarokyaro_except_flag_delete_rans"]

[if exp="f.r_kajikaji_rans>0"]
[eval exp="f.r_kajikaji_rans=0"]
[endif]
[if exp="f.r_hirayama_rans>0"]
[eval exp="f.r_hirayama_rans=0"]
[endif]
[if exp="f.r_oikawa_rans>0"]
[eval exp="f.r_oikawa_rans=0"]
[endif]
[if exp="f.r_romana_rans>0"]
[eval exp="f.r_romana_rans=0"]
[endif]
[if exp="f.r_beruzoku_rans>0"]
[eval exp="f.r_beruzoku_rans=0"]
[endif]
[if exp="f.r_moon_rans>0"]
[eval exp="f.r_moon_rans=0"]
[endif]
[if exp="f.r_bejibeji_rans>0"]
[eval exp="f.r_bejibeji_rans=0"]
[endif]
[if exp="f.r_poteto_rans>0"]
[eval exp="f.r_poteto_rans=0"]
[endif]



[endmacro]



;カジカジていの累積記憶があるときに他の店を選ぶと、カジカジていの累積記憶を消去
;カジカジ亭を選んだときのほかフラグ消去
[macro name="kajikaji_except_flag_delete_kra"]

[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]


;平山亭を選んだときのフラグ消去
[macro name="hirayama_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]

[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]

;及川亭
[macro name="oikawa_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]


[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]

;ロマナーデ
[macro name="romana_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]


[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]

;ベル族
[macro name="beruzoku_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]



[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]


;ムーン
[macro name="moon_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]



[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]

;べじべえじ
[macro name="bejibeji_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]



[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]

;ポテと
[macro name="poteto_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]


[if exp="f.r_kyarokyaro_kra>0"]
[eval exp="f.r_kyarokyaro_kra=0"]
[endif]


[endmacro]


;キャロキャロ
[macro name="kyarokyaro_except_flag_delete_kra"]

[if exp="f.r_kajikaji_kra>0"]
[eval exp="f.r_kajikaji_kra=0"]
[endif]
[if exp="f.r_hirayama_kra>0"]
[eval exp="f.r_hirayama_kra=0"]
[endif]
[if exp="f.r_oikawa_kra>0"]
[eval exp="f.r_oikawa_kra=0"]
[endif]
[if exp="f.r_romana_kra>0"]
[eval exp="f.r_romana_kra=0"]
[endif]
[if exp="f.r_beruzoku_kra>0"]
[eval exp="f.r_beruzoku_kra=0"]
[endif]
[if exp="f.r_moon_kra>0"]
[eval exp="f.r_moon_kra=0"]
[endif]
[if exp="f.r_bejibeji_kra>0"]
[eval exp="f.r_bejibeji_kra=0"]
[endif]
[if exp="f.r_poteto_kra>0"]
[eval exp="f.r_poteto_kra=0"]
[endif]



[endmacro]




;------------------------------------------------------------------------------------------------




;メニュー記憶;カジカジ亭

[macro name="kioku_kajikaji_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_1_lion=f.r_kajikaji_menu_1_lion+1"]
[kajikaji_menu_1_except_flag_delete_lion]

[if exp="f.r_kajikaji_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_1_rans=f.r_kajikaji_menu_1_rans+1"]
[kajikaji_menu_1_except_flag_delete_rans]

[if exp="f.r_kajikaji_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_1_kra=f.r_kajikaji_menu_1_kra+1"]
[kajikaji_menu_1_except_flag_delete_kra]

[if exp="f.r_kajikaji_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_kajikaji_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_2_lion=f.r_kajikaji_menu_2_lion+1"]
[kajikaji_menu_2_except_flag_delete_lion]

[if exp="f.r_kajikaji_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_2_rans=f.r_kajikaji_menu_2_rans+1"]
[kajikaji_menu_2_except_flag_delete_rans]

[if exp="f.r_kajikaji_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_2_kra=f.r_kajikaji_menu_2_kra+1"]
[kajikaji_menu_2_except_flag_delete_kra]

[if exp="f.r_kajikaji_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_kajikaji_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_3_lion=f.r_kajikaji_menu_3_lion+1"]
[kajikaji_menu_3_except_flag_delete_lion]

[if exp="f.r_kajikaji_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_3_rans=f.r_kajikaji_menu_3_rans+1"]
[kajikaji_menu_3_except_flag_delete_rans]

[if exp="f.r_kajikaji_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_3_kra=f.r_kajikaji_menu_3_kra+1"]
[kajikaji_menu_3_except_flag_delete_kra]

[if exp="f.r_kajikaji_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_kajikaji_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_4_lion=f.r_kajikaji_menu_4_lion+1"]
[kajikaji_menu_4_except_flag_delete_lion]

[if exp="f.r_kajikaji_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_4_rans=f.r_kajikaji_menu_4_rans+1"]
[kajikaji_menu_4_except_flag_delete_rans]

[if exp="f.r_kajikaji_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_4_kra=f.r_kajikaji_menu_4_kra+1"]
[kajikaji_menu_4_except_flag_delete_kra]

[if exp="f.r_kajikaji_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_kajikaji_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_5_lion=f.r_kajikaji_menu_5_lion+1"]
[kajikaji_menu_5_except_flag_delete_lion]

[if exp="f.r_kajikaji_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_5_rans=f.r_kajikaji_menu_5_rans+1"]
[kajikaji_menu_5_except_flag_delete_rans]

[if exp="f.r_kajikaji_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;カジカジ１
[eval exp="f.r_kajikaji_menu_5_kra=f.r_kajikaji_menu_5_kra+1"]
[kajikaji_menu_5_except_flag_delete_kra]

[if exp="f.r_kajikaji_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]



;平山亭メニュー
[macro name="kioku_hirayama_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;平山１
[eval exp="f.r_hirayama_menu_1_lion=f.r_hirayama_menu_1_lion+1"]
[hirayama_menu_1_except_flag_delete_lion]

[if exp="f.r_hirayama_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;平山１
[eval exp="f.r_hirayama_menu_1_rans=f.r_hirayama_menu_1_rans+1"]
[hirayama_menu_1_except_flag_delete_rans]

[if exp="f.r_hirayama_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;平山１
[eval exp="f.r_hirayama_menu_1_kra=f.r_hirayama_menu_1_kra+1"]
[hirayama_menu_1_except_flag_delete_kra]

[if exp="f.r_hirayama_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_hirayama_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;平山１
[eval exp="f.r_hirayama_menu_2_lion=f.r_hirayama_menu_2_lion+1"]
[hirayama_menu_2_except_flag_delete_lion]

[if exp="f.r_hirayama_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;平山１
[eval exp="f.r_hirayama_menu_2_rans=f.r_hirayama_menu_2_rans+1"]
[hirayama_menu_2_except_flag_delete_rans]

[if exp="f.r_hirayama_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;平山１
[eval exp="f.r_hirayama_menu_2_kra=f.r_hirayama_menu_2_kra+1"]
[hirayama_menu_2_except_flag_delete_kra]

[if exp="f.r_hirayama_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_hirayama_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;平山１
[eval exp="f.r_hirayama_menu_3_lion=f.r_hirayama_menu_3_lion+1"]
[hirayama_menu_3_except_flag_delete_lion]

[if exp="f.r_hirayama_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;平山１
[eval exp="f.r_hirayama_menu_3_rans=f.r_hirayama_menu_3_rans+1"]
[hirayama_menu_3_except_flag_delete_rans]

[if exp="f.r_hirayama_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;平山１
[eval exp="f.r_hirayama_menu_3_kra=f.r_hirayama_menu_3_kra+1"]
[hirayama_menu_3_except_flag_delete_kra]

[if exp="f.r_hirayama_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_hirayama_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;平山１
[eval exp="f.r_hirayama_menu_4_lion=f.r_hirayama_menu_4_lion+1"]
[hirayama_menu_4_except_flag_delete_lion]

[if exp="f.r_hirayama_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;平山１
[eval exp="f.r_hirayama_menu_4_rans=f.r_hirayama_menu_4_rans+1"]
[hirayama_menu_4_except_flag_delete_rans]

[if exp="f.r_hirayama_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;平山１
[eval exp="f.r_hirayama_menu_4_kra=f.r_hirayama_menu_4_kra+1"]
[hirayama_menu_4_except_flag_delete_kra]

[if exp="f.r_hirayama_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_hirayama_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;平山１
[eval exp="f.r_hirayama_menu_5_lion=f.r_hirayama_menu_5_lion+1"]
[hirayama_menu_5_except_flag_delete_lion]

[if exp="f.r_hirayama_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;平山１
[eval exp="f.r_hirayama_menu_5_rans=f.r_hirayama_menu_5_rans+1"]
[hirayama_menu_5_except_flag_delete_rans]

[if exp="f.r_hirayama_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;平山１
[eval exp="f.r_hirayama_menu_5_kra=f.r_hirayama_menu_5_kra+1"]
[hirayama_menu_5_except_flag_delete_kra]

[if exp="f.r_hirayama_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;及川

[macro name="kioku_oikawa_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;及川１
[eval exp="f.r_oikawa_menu_1_lion=f.r_oikawa_menu_1_lion+1"]
[oikawa_menu_1_except_flag_delete_lion]

[if exp="f.r_oikawa_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;及川１
[eval exp="f.r_oikawa_menu_1_rans=f.r_oikawa_menu_1_rans+1"]
[oikawa_menu_1_except_flag_delete_rans]

[if exp="f.r_oikawa_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;及川１
[eval exp="f.r_oikawa_menu_1_kra=f.r_oikawa_menu_1_kra+1"]
[oikawa_menu_1_except_flag_delete_kra]

[if exp="f.r_oikawa_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_oikawa_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;及川１
[eval exp="f.r_oikawa_menu_2_lion=f.r_oikawa_menu_2_lion+1"]
[oikawa_menu_2_except_flag_delete_lion]

[if exp="f.r_oikawa_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;及川１
[eval exp="f.r_oikawa_menu_2_rans=f.r_oikawa_menu_2_rans+1"]
[oikawa_menu_2_except_flag_delete_rans]

[if exp="f.r_oikawa_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;及川１
[eval exp="f.r_oikawa_menu_2_kra=f.r_oikawa_menu_2_kra+1"]
[oikawa_menu_2_except_flag_delete_kra]

[if exp="f.r_oikawa_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_oikawa_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;及川１
[eval exp="f.r_oikawa_menu_3_lion=f.r_oikawa_menu_3_lion+1"]
[oikawa_menu_3_except_flag_delete_lion]

[if exp="f.r_oikawa_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;及川１
[eval exp="f.r_oikawa_menu_3_rans=f.r_oikawa_menu_3_rans+1"]
[oikawa_menu_3_except_flag_delete_rans]

[if exp="f.r_oikawa_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;及川１
[eval exp="f.r_oikawa_menu_3_kra=f.r_oikawa_menu_3_kra+1"]
[oikawa_menu_3_except_flag_delete_kra]

[if exp="f.r_oikawa_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_oikawa_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;及川１
[eval exp="f.r_oikawa_menu_4_lion=f.r_oikawa_menu_4_lion+1"]
[oikawa_menu_4_except_flag_delete_lion]

[if exp="f.r_oikawa_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;及川１
[eval exp="f.r_oikawa_menu_4_rans=f.r_oikawa_menu_4_rans+1"]
[oikawa_menu_4_except_flag_delete_rans]

[if exp="f.r_oikawa_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;及川１
[eval exp="f.r_oikawa_menu_4_kra=f.r_oikawa_menu_4_kra+1"]
[oikawa_menu_4_except_flag_delete_kra]

[if exp="f.r_oikawa_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_oikawa_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;及川１
[eval exp="f.r_oikawa_menu_5_lion=f.r_oikawa_menu_5_lion+1"]
[oikawa_menu_5_except_flag_delete_lion]

[if exp="f.r_oikawa_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;及川１
[eval exp="f.r_oikawa_menu_5_rans=f.r_oikawa_menu_5_rans+1"]
[oikawa_menu_5_except_flag_delete_rans]

[if exp="f.r_oikawa_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;及川１
[eval exp="f.r_oikawa_menu_5_kra=f.r_oikawa_menu_5_kra+1"]
[oikawa_menu_5_except_flag_delete_kra]

[if exp="f.r_oikawa_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]



;ロマナーデ

[macro name="kioku_romana_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ろまな１
[eval exp="f.r_romana_menu_1_lion=f.r_romana_menu_1_lion+1"]
[romana_menu_1_except_flag_delete_lion]

[if exp="f.r_romana_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ろまな１
[eval exp="f.r_romana_menu_1_rans=f.r_romana_menu_1_rans+1"]
[romana_menu_1_except_flag_delete_rans]

[if exp="f.r_romana_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ろまな１
[eval exp="f.r_romana_menu_1_kra=f.r_romana_menu_1_kra+1"]
[romana_menu_1_except_flag_delete_kra]

[if exp="f.r_romana_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_romana_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ろまな１
[eval exp="f.r_romana_menu_2_lion=f.r_romana_menu_2_lion+1"]
[romana_menu_2_except_flag_delete_lion]

[if exp="f.r_romana_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ろまな１
[eval exp="f.r_romana_menu_2_rans=f.r_romana_menu_2_rans+1"]
[romana_menu_2_except_flag_delete_rans]

[if exp="f.r_romana_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ろまな１
[eval exp="f.r_romana_menu_2_kra=f.r_romana_menu_2_kra+1"]
[romana_menu_2_except_flag_delete_kra]

[if exp="f.r_romana_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_romana_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ろまな１
[eval exp="f.r_romana_menu_3_lion=f.r_romana_menu_3_lion+1"]
[romana_menu_3_except_flag_delete_lion]

[if exp="f.r_romana_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ろまな１
[eval exp="f.r_romana_menu_3_rans=f.r_romana_menu_3_rans+1"]
[romana_menu_3_except_flag_delete_rans]

[if exp="f.r_romana_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ろまな１
[eval exp="f.r_romana_menu_3_kra=f.r_romana_menu_3_kra+1"]
[romana_menu_3_except_flag_delete_kra]

[if exp="f.r_romana_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_romana_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ろまな１
[eval exp="f.r_romana_menu_4_lion=f.r_romana_menu_4_lion+1"]
[romana_menu_4_except_flag_delete_lion]

[if exp="f.r_romana_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ろまな１
[eval exp="f.r_romana_menu_4_rans=f.r_romana_menu_4_rans+1"]
[romana_menu_4_except_flag_delete_rans]

[if exp="f.r_romana_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ろまな１
[eval exp="f.r_romana_menu_4_kra=f.r_romana_menu_4_kra+1"]
[romana_menu_4_except_flag_delete_kra]

[if exp="f.r_romana_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_romana_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ろまな１
[eval exp="f.r_romana_menu_5_lion=f.r_romana_menu_5_lion+1"]
[romana_menu_5_except_flag_delete_lion]

[if exp="f.r_romana_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ろまな１
[eval exp="f.r_romana_menu_5_rans=f.r_romana_menu_5_rans+1"]
[romana_menu_5_except_flag_delete_rans]

[if exp="f.r_romana_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ろまな１
[eval exp="f.r_romana_menu_5_kra=f.r_romana_menu_5_kra+1"]
[romana_menu_5_except_flag_delete_kra]

[if exp="f.r_romana_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;ベル族

[macro name="kioku_beruzoku_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベル族１
[eval exp="f.r_beruzoku_menu_1_lion=f.r_beruzoku_menu_1_lion+1"]
[beruzoku_menu_1_except_flag_delete_lion]

[if exp="f.r_beruzoku_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベル族１
[eval exp="f.r_beruzoku_menu_1_rans=f.r_beruzoku_menu_1_rans+1"]
[beruzoku_menu_1_except_flag_delete_rans]

[if exp="f.r_beruzoku_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベル族１
[eval exp="f.r_beruzoku_menu_1_kra=f.r_beruzoku_menu_1_kra+1"]
[beruzoku_menu_1_except_flag_delete_kra]

[if exp="f.r_beruzoku_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_beruzoku_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベル族１
[eval exp="f.r_beruzoku_menu_2_lion=f.r_beruzoku_menu_2_lion+1"]
[beruzoku_menu_2_except_flag_delete_lion]

[if exp="f.r_beruzoku_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベル族１
[eval exp="f.r_beruzoku_menu_2_rans=f.r_beruzoku_menu_2_rans+1"]
[beruzoku_menu_2_except_flag_delete_rans]

[if exp="f.r_beruzoku_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベル族１
[eval exp="f.r_beruzoku_menu_2_kra=f.r_beruzoku_menu_2_kra+1"]
[beruzoku_menu_2_except_flag_delete_kra]

[if exp="f.r_beruzoku_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_beruzoku_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベル族１
[eval exp="f.r_beruzoku_menu_3_lion=f.r_beruzoku_menu_3_lion+1"]
[beruzoku_menu_3_except_flag_delete_lion]

[if exp="f.r_beruzoku_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベル族１
[eval exp="f.r_beruzoku_menu_3_rans=f.r_beruzoku_menu_3_rans+1"]
[beruzoku_menu_3_except_flag_delete_rans]

[if exp="f.r_beruzoku_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベル族１
[eval exp="f.r_beruzoku_menu_3_kra=f.r_beruzoku_menu_3_kra+1"]
[beruzoku_menu_3_except_flag_delete_kra]

[if exp="f.r_beruzoku_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_beruzoku_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベル族１
[eval exp="f.r_beruzoku_menu_4_lion=f.r_beruzoku_menu_4_lion+1"]
[beruzoku_menu_4_except_flag_delete_lion]

[if exp="f.r_beruzoku_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベル族１
[eval exp="f.r_beruzoku_menu_4_rans=f.r_beruzoku_menu_4_rans+1"]
[beruzoku_menu_4_except_flag_delete_rans]

[if exp="f.r_beruzoku_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベル族１
[eval exp="f.r_beruzoku_menu_4_kra=f.r_beruzoku_menu_4_kra+1"]
[beruzoku_menu_4_except_flag_delete_kra]

[if exp="f.r_beruzoku_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_beruzoku_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベル族１
[eval exp="f.r_beruzoku_menu_5_lion=f.r_beruzoku_menu_5_lion+1"]
[beruzoku_menu_5_except_flag_delete_lion]

[if exp="f.r_beruzoku_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベル族１
[eval exp="f.r_beruzoku_menu_5_rans=f.r_beruzoku_menu_5_rans+1"]
[beruzoku_menu_5_except_flag_delete_rans]

[if exp="f.r_beruzoku_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベル族１
[eval exp="f.r_beruzoku_menu_5_kra=f.r_beruzoku_menu_5_kra+1"]
[beruzoku_menu_5_except_flag_delete_kra]

[if exp="f.r_beruzoku_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]



[macro name="kioku_moon_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ムーン１
[eval exp="f.r_moon_menu_1_lion=f.r_moon_menu_1_lion+1"]
[moon_menu_1_except_flag_delete_lion]

[if exp="f.r_moon_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ムーン１
[eval exp="f.r_moon_menu_1_rans=f.r_moon_menu_1_rans+1"]
[moon_menu_1_except_flag_delete_rans]

[if exp="f.r_moon_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ムーン１
[eval exp="f.r_moon_menu_1_kra=f.r_moon_menu_1_kra+1"]
[moon_menu_1_except_flag_delete_kra]

[if exp="f.r_moon_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_moon_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ムーン１
[eval exp="f.r_moon_menu_2_lion=f.r_moon_menu_2_lion+1"]
[moon_menu_2_except_flag_delete_lion]

[if exp="f.r_moon_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ムーン１
[eval exp="f.r_moon_menu_2_rans=f.r_moon_menu_2_rans+1"]
[moon_menu_2_except_flag_delete_rans]

[if exp="f.r_moon_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ムーン１
[eval exp="f.r_moon_menu_2_kra=f.r_moon_menu_2_kra+1"]
[moon_menu_2_except_flag_delete_kra]

[if exp="f.r_moon_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_moon_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ムーン１
[eval exp="f.r_moon_menu_3_lion=f.r_moon_menu_3_lion+1"]
[moon_menu_3_except_flag_delete_lion]

[if exp="f.r_moon_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ムーン１
[eval exp="f.r_moon_menu_3_rans=f.r_moon_menu_3_rans+1"]
[moon_menu_3_except_flag_delete_rans]

[if exp="f.r_moon_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ムーン１
[eval exp="f.r_moon_menu_3_kra=f.r_moon_menu_3_kra+1"]
[moon_menu_3_except_flag_delete_kra]

[if exp="f.r_moon_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_moon_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ムーン１
[eval exp="f.r_moon_menu_4_lion=f.r_moon_menu_4_lion+1"]
[moon_menu_4_except_flag_delete_lion]

[if exp="f.r_moon_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ムーン１
[eval exp="f.r_moon_menu_4_rans=f.r_moon_menu_4_rans+1"]
[moon_menu_4_except_flag_delete_rans]

[if exp="f.r_moon_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ムーン１
[eval exp="f.r_moon_menu_4_kra=f.r_moon_menu_4_kra+1"]
[moon_menu_4_except_flag_delete_kra]

[if exp="f.r_moon_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_moon_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ムーン１
[eval exp="f.r_moon_menu_5_lion=f.r_moon_menu_5_lion+1"]
[moon_menu_5_except_flag_delete_lion]

[if exp="f.r_moon_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ムーン１
[eval exp="f.r_moon_menu_5_rans=f.r_moon_menu_5_rans+1"]
[moon_menu_5_except_flag_delete_rans]

[if exp="f.r_moon_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ムーン１
[eval exp="f.r_moon_menu_5_kra=f.r_moon_menu_5_kra+1"]
[moon_menu_5_except_flag_delete_kra]

[if exp="f.r_moon_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;ベジベジ
[macro name="kioku_bejibeji_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_1_lion=f.r_bejibeji_menu_1_lion+1"]
[bejibeji_menu_1_except_flag_delete_lion]

[if exp="f.r_bejibeji_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_1_rans=f.r_bejibeji_menu_1_rans+1"]
[bejibeji_menu_1_except_flag_delete_rans]

[if exp="f.r_bejibeji_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_1_kra=f.r_bejibeji_menu_1_kra+1"]
[bejibeji_menu_1_except_flag_delete_kra]

[if exp="f.r_bejibeji_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_bejibeji_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_2_lion=f.r_bejibeji_menu_2_lion+1"]
[bejibeji_menu_2_except_flag_delete_lion]

[if exp="f.r_bejibeji_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_2_rans=f.r_bejibeji_menu_2_rans+1"]
[bejibeji_menu_2_except_flag_delete_rans]

[if exp="f.r_bejibeji_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_2_kra=f.r_bejibeji_menu_2_kra+1"]
[bejibeji_menu_2_except_flag_delete_kra]

[if exp="f.r_bejibeji_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_bejibeji_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_3_lion=f.r_bejibeji_menu_3_lion+1"]
[bejibeji_menu_3_except_flag_delete_lion]

[if exp="f.r_bejibeji_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_3_rans=f.r_bejibeji_menu_3_rans+1"]
[bejibeji_menu_3_except_flag_delete_rans]

[if exp="f.r_bejibeji_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_3_kra=f.r_bejibeji_menu_3_kra+1"]
[bejibeji_menu_3_except_flag_delete_kra]

[if exp="f.r_bejibeji_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_bejibeji_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_4_lion=f.r_bejibeji_menu_4_lion+1"]
[bejibeji_menu_4_except_flag_delete_lion]

[if exp="f.r_bejibeji_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_4_rans=f.r_bejibeji_menu_4_rans+1"]
[bejibeji_menu_4_except_flag_delete_rans]

[if exp="f.r_bejibeji_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_4_kra=f.r_bejibeji_menu_4_kra+1"]
[bejibeji_menu_4_except_flag_delete_kra]

[if exp="f.r_bejibeji_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_bejibeji_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_5_lion=f.r_bejibeji_menu_5_lion+1"]
[bejibeji_menu_5_except_flag_delete_lion]

[if exp="f.r_bejibeji_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_5_rans=f.r_bejibeji_menu_5_rans+1"]
[bejibeji_menu_5_except_flag_delete_rans]

[if exp="f.r_bejibeji_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ベジベジ１
[eval exp="f.r_bejibeji_menu_5_kra=f.r_bejibeji_menu_5_kra+1"]
[bejibeji_menu_5_except_flag_delete_kra]

[if exp="f.r_bejibeji_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]




;ポテト

[macro name="kioku_poteto_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ポテト１
[eval exp="f.r_poteto_menu_1_lion=f.r_poteto_menu_1_lion+1"]
[poteto_menu_1_except_flag_delete_lion]

[if exp="f.r_poteto_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ポテト１
[eval exp="f.r_poteto_menu_1_rans=f.r_poteto_menu_1_rans+1"]
[poteto_menu_1_except_flag_delete_rans]

[if exp="f.r_poteto_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ポテト１
[eval exp="f.r_poteto_menu_1_kra=f.r_poteto_menu_1_kra+1"]
[poteto_menu_1_except_flag_delete_kra]

[if exp="f.r_poteto_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_poteto_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ポテト１
[eval exp="f.r_poteto_menu_2_lion=f.r_poteto_menu_2_lion+1"]
[poteto_menu_2_except_flag_delete_lion]

[if exp="f.r_poteto_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ポテト１
[eval exp="f.r_poteto_menu_2_rans=f.r_poteto_menu_2_rans+1"]
[poteto_menu_2_except_flag_delete_rans]

[if exp="f.r_poteto_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ポテト１
[eval exp="f.r_poteto_menu_2_kra=f.r_poteto_menu_2_kra+1"]
[poteto_menu_2_except_flag_delete_kra]

[if exp="f.r_poteto_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_poteto_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ポテト１
[eval exp="f.r_poteto_menu_3_lion=f.r_poteto_menu_3_lion+1"]
[poteto_menu_3_except_flag_delete_lion]

[if exp="f.r_poteto_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ポテト１
[eval exp="f.r_poteto_menu_3_rans=f.r_poteto_menu_3_rans+1"]
[poteto_menu_3_except_flag_delete_rans]

[if exp="f.r_poteto_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ポテト１
[eval exp="f.r_poteto_menu_3_kra=f.r_poteto_menu_3_kra+1"]
[poteto_menu_3_except_flag_delete_kra]

[if exp="f.r_poteto_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_poteto_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ポテト１
[eval exp="f.r_poteto_menu_4_lion=f.r_poteto_menu_4_lion+1"]
[poteto_menu_4_except_flag_delete_lion]

[if exp="f.r_poteto_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ポテト１
[eval exp="f.r_poteto_menu_4_rans=f.r_poteto_menu_4_rans+1"]
[poteto_menu_4_except_flag_delete_rans]

[if exp="f.r_poteto_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ポテト１
[eval exp="f.r_poteto_menu_4_kra=f.r_poteto_menu_4_kra+1"]
[poteto_menu_4_except_flag_delete_kra]

[if exp="f.r_poteto_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_poteto_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;ポテト１
[eval exp="f.r_poteto_menu_5_lion=f.r_poteto_menu_5_lion+1"]
[poteto_menu_5_except_flag_delete_lion]

[if exp="f.r_poteto_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;ポテト１
[eval exp="f.r_poteto_menu_5_rans=f.r_poteto_menu_5_rans+1"]
[poteto_menu_5_except_flag_delete_rans]

[if exp="f.r_poteto_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;ポテト１
[eval exp="f.r_poteto_menu_5_kra=f.r_poteto_menu_5_kra+1"]
[poteto_menu_5_except_flag_delete_kra]

[if exp="f.r_poteto_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]




;キャロキャロ

[macro name="kioku_kyarokyaro_menu_1"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_1_lion=f.r_kyarokyaro_menu_1_lion+1"]
[kyarokyaro_menu_1_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_menu_1_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_1_rans=f.r_kyarokyaro_menu_1_rans+1"]
[kyarokyaro_menu_1_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_menu_1_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_1_kra=f.r_kyarokyaro_menu_1_kra+1"]
[kyarokyaro_menu_1_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_menu_1_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;2

[macro name="kioku_kyarokyaro_menu_2"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_2_lion=f.r_kyarokyaro_menu_2_lion+1"]
[kyarokyaro_menu_2_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_menu_2_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_2_rans=f.r_kyarokyaro_menu_2_rans+1"]
[kyarokyaro_menu_2_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_menu_2_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_2_kra=f.r_kyarokyaro_menu_2_kra+1"]
[kyarokyaro_menu_2_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_menu_2_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]

;3
[macro name="kioku_kyarokyaro_menu_3"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_3_lion=f.r_kyarokyaro_menu_3_lion+1"]
[kyarokyaro_menu_3_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_menu_3_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_3_rans=f.r_kyarokyaro_menu_3_rans+1"]
[kyarokyaro_menu_3_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_menu_3_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_3_kra=f.r_kyarokyaro_menu_3_kra+1"]
[kyarokyaro_menu_3_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_menu_3_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;4
[macro name="kioku_kyarokyaro_menu_4"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_4_lion=f.r_kyarokyaro_menu_4_lion+1"]
[kyarokyaro_menu_4_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_menu_4_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_4_rans=f.r_kyarokyaro_menu_4_rans+1"]
[kyarokyaro_menu_4_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_menu_4_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_4_kra=f.r_kyarokyaro_menu_4_kra+1"]
[kyarokyaro_menu_4_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_menu_4_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]
;5
[macro name="kioku_kyarokyaro_menu_5"]

;ライオネス、メニューの記憶
[if exp="f.friend==2"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_5_lion=f.r_kyarokyaro_menu_5_lion+1"]
[kyarokyaro_menu_5_except_flag_delete_lion]

[if exp="f.r_kyarokyaro_menu_5_lion>1"]
[lion_r_menu_word]
[endif]

[endif]
;-------------------
;ランス
;メニューの記憶
[if exp="f.friend==1"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_5_rans=f.r_kyarokyaro_menu_5_rans+1"]
[kyarokyaro_menu_5_except_flag_delete_rans]

[if exp="f.r_kyarokyaro_menu_5_rans>1"]
[rans_r_menu_word]
[endif]

[endif]
;----------------------

[if exp="f.friend==3"]
;キャロキャロ１
[eval exp="f.r_kyarokyaro_menu_5_kra=f.r_kyarokyaro_menu_5_kra+1"]
[kyarokyaro_menu_5_except_flag_delete_kra]

[if exp="f.r_kyarokyaro_menu_5_kra>1"]
[kra_r_menu_word]
[endif]

[endif]




[endmacro]


;メニューフラグ消去

;カジカジ１

[macro name="kajikaji_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;カジカジ２

[macro name="kajikaji_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]


[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]



;カジカジ３
[macro name="kajikaji_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;カジカジ４

[macro name="kajikaji_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]


[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;カジカジ５
[macro name="kajikaji_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]




;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;平山１

[macro name="hirayama_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;平山２

[macro name="hirayama_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]


[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;平山３

[macro name="hirayama_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]

[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;平山４

[macro name="hirayama_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]

[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;平山５

[macro name="hirayama_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]




[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;及川１

[macro name="oikawa_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;及川２

[macro name="oikawa_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]

[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;及川３

[macro name="oikawa_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]

[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;及川４

[macro name="oikawa_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]

[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;及川５

[macro name="oikawa_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ろまな1

[macro name="romana_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ろまな２

[macro name="romana_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ろまな３

[macro name="romana_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ろまな４

[macro name="romana_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ろまな５

[macro name="romana_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベル族１

[macro name="beruzoku_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベル族２

[macro name="beruzoku_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]

[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ベル族３

[macro name="beruzoku_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ベル族４

[macro name="beruzoku_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベル族５

[macro name="beruzoku_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]



[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ムーン１

[macro name="moon_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]



[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

[macro name="moon_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ムーン３

[macro name="moon_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ムーン４

[macro name="moon_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]

[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ムーン５

[macro name="moon_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]



[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベジベジ１

[macro name="bejibeji_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベジベジ２

[macro name="bejibeji_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]

[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ベジベジ３

[macro name="bejibeji_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ベジベジ４

[macro name="bejibeji_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ベジベジ５

[macro name="bejibeji_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ポテト１

[macro name="poteto_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ポテト２

[macro name="poteto_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]

[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ポテト３

[macro name="poteto_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]

[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;ポテト４

[macro name="poteto_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]

[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;ポテト５
[macro name="poteto_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]


[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;キャロキャロ１

[macro name="kyarokyaro_menu_1_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;キャロキャロ２

[macro name="kyarokyaro_menu_2_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;キャロキャロ３

[macro name="kyarokyaro_menu_3_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]

;キャロキャロ４

[macro name="kyarokyaro_menu_4_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_5_lion>0"]
[eval exp="f.r_kyarokyaro_menu_5_lion=0"]
[endif]

[endmacro]


;キャロキャロ５

[macro name="kyarokyaro_menu_5_except_flag_delete_lion"]
;----

[if exp="f.r_kajikaji_menu_1_lion>0"]
[eval exp="f.r_kajikaji_menu_1_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_lion>0"]
[eval exp="f.r_kajikaji_menu_2_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_lion>0"]
[eval exp="f.r_kajikaji_menu_3_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_lion>0"]
[eval exp="f.r_kajikaji_menu_4_lion=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_lion>0"]
[eval exp="f.r_kajikaji_menu_5_lion=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_lion>0"]
[eval exp="f.r_hirayama_menu_1_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_2_lion>0"]
[eval exp="f.r_hirayama_menu_2_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_3_lion>0"]
[eval exp="f.r_hirayama_menu_3_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_4_lion>0"]
[eval exp="f.r_hirayama_menu_4_lion=0"]
[endif]
[if exp="f.r_hirayama_menu_5_lion>0"]
[eval exp="f.r_hirayama_menu_5_lion=0"]
[endif]



[if exp="f.r_oikawa_menu_1_lion>0"]
[eval exp="f.r_oikawa_menu_1_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_2_lion>0"]
[eval exp="f.r_oikawa_menu_2_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_3_lion>0"]
[eval exp="f.r_oikawa_menu_3_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_4_lion>0"]
[eval exp="f.r_oikawa_menu_4_lion=0"]
[endif]
[if exp="f.r_oikawa_menu_5_lion>0"]
[eval exp="f.r_oikawa_menu_5_lion=0"]
[endif]


[if exp="f.r_romana_menu_1_lion>0"]
[eval exp="f.r_romana_menu_1_lion=0"]
[endif]
[if exp="f.r_romana_menu_2_lion>0"]
[eval exp="f.r_romana_menu_2_lion=0"]
[endif]
[if exp="f.r_romana_menu_3_lion>0"]
[eval exp="f.r_romana_menu_3_lion=0"]
[endif]
[if exp="f.r_romana_menu_4_lion>0"]
[eval exp="f.r_romana_menu_4_lion=0"]
[endif]
[if exp="f.r_romana_menu_5_lion>0"]
[eval exp="f.r_romana_menu_5_lion=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_lion>0"]
[eval exp="f.r_beruzoku_menu_1_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_lion>0"]
[eval exp="f.r_beruzoku_menu_2_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_lion>0"]
[eval exp="f.r_beruzoku_menu_3_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_lion>0"]
[eval exp="f.r_beruzoku_menu_4_lion=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_lion>0"]
[eval exp="f.r_beruzoku_menu_5_lion=0"]
[endif]


[if exp="f.r_moon_menu_1_lion>0"]
[eval exp="f.r_moon_menu_1_lion=0"]
[endif]
[if exp="f.r_moon_menu_2_lion>0"]
[eval exp="f.r_moon_menu_2_lion=0"]
[endif]
[if exp="f.r_moon_menu_3_lion>0"]
[eval exp="f.r_moon_menu_3_lion=0"]
[endif]
[if exp="f.r_moon_menu_4_lion>0"]
[eval exp="f.r_moon_menu_4_lion=0"]
[endif]
[if exp="f.r_moon_menu_5_lion>0"]
[eval exp="f.r_moon_menu_5_lion=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_lion>0"]
[eval exp="f.r_bejibeji_menu_1_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_lion>0"]
[eval exp="f.r_bejibeji_menu_2_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_lion>0"]
[eval exp="f.r_bejibeji_menu_3_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_lion>0"]
[eval exp="f.r_bejibeji_menu_4_lion=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_lion>0"]
[eval exp="f.r_bejibeji_menu_5_lion=0"]
[endif]



[if exp="f.r_poteto_menu_1_lion>0"]
[eval exp="f.r_poteto_menu_1_lion=0"]
[endif]
[if exp="f.r_poteto_menu_2_lion>0"]
[eval exp="f.r_poteto_menu_2_lion=0"]
[endif]
[if exp="f.r_poteto_menu_3_lion>0"]
[eval exp="f.r_poteto_menu_3_lion=0"]
[endif]
[if exp="f.r_poteto_menu_4_lion>0"]
[eval exp="f.r_poteto_menu_4_lion=0"]
[endif]
[if exp="f.r_poteto_menu_5_lion>0"]
[eval exp="f.r_poteto_menu_5_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_lion>0"]
[eval exp="f.r_kyarokyaro_menu_1_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_lion>0"]
[eval exp="f.r_kyarokyaro_menu_2_lion=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_lion>0"]
[eval exp="f.r_kyarokyaro_menu_3_lion=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_4_lion>0"]
[eval exp="f.r_kyarokyaro_menu_4_lion=0"]
[endif]

[endmacro]







;ランスメニューフラグ消去

;カジカジ１

[macro name="kajikaji_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;カジカジ２

[macro name="kajikaji_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]


[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]



;カジカジ３
[macro name="kajikaji_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;カジカジ４

[macro name="kajikaji_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]


[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;カジカジ５
[macro name="kajikaji_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]




;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;平山１

[macro name="hirayama_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;平山２

[macro name="hirayama_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]


[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;平山３

[macro name="hirayama_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]

[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;平山４

[macro name="hirayama_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]

[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;平山５

[macro name="hirayama_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]




[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;及川１

[macro name="oikawa_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;及川２

[macro name="oikawa_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]

[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;及川３

[macro name="oikawa_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]

[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;及川４

[macro name="oikawa_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]

[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;及川５

[macro name="oikawa_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ろまな1

[macro name="romana_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ろまな２

[macro name="romana_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ろまな３

[macro name="romana_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ろまな４

[macro name="romana_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ろまな５

[macro name="romana_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベル族１

[macro name="beruzoku_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベル族２

[macro name="beruzoku_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]

[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ベル族３

[macro name="beruzoku_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ベル族４

[macro name="beruzoku_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベル族５

[macro name="beruzoku_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]



[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ムーン１

[macro name="moon_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]



[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

[macro name="moon_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ムーン３

[macro name="moon_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ムーン４

[macro name="moon_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]

[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ムーン５

[macro name="moon_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]



[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベジベジ１

[macro name="bejibeji_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベジベジ２

[macro name="bejibeji_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]

[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ベジベジ３

[macro name="bejibeji_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ベジベジ４

[macro name="bejibeji_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ベジベジ５

[macro name="bejibeji_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ポテト１

[macro name="poteto_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ポテト２

[macro name="poteto_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]

[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ポテト３

[macro name="poteto_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]

[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;ポテト４

[macro name="poteto_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]

[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;ポテト５
[macro name="poteto_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]


[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;キャロキャロ１

[macro name="kyarokyaro_menu_1_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;キャロキャロ２

[macro name="kyarokyaro_menu_2_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;キャロキャロ３

[macro name="kyarokyaro_menu_3_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]

;キャロキャロ４

[macro name="kyarokyaro_menu_4_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_5_rans>0"]
[eval exp="f.r_kyarokyaro_menu_5_rans=0"]
[endif]

[endmacro]


;キャロキャロ５

[macro name="kyarokyaro_menu_5_except_flag_delete_rans"]
;----

[if exp="f.r_kajikaji_menu_1_rans>0"]
[eval exp="f.r_kajikaji_menu_1_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_rans>0"]
[eval exp="f.r_kajikaji_menu_2_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_rans>0"]
[eval exp="f.r_kajikaji_menu_3_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_rans>0"]
[eval exp="f.r_kajikaji_menu_4_rans=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_rans>0"]
[eval exp="f.r_kajikaji_menu_5_rans=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_rans>0"]
[eval exp="f.r_hirayama_menu_1_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_2_rans>0"]
[eval exp="f.r_hirayama_menu_2_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_3_rans>0"]
[eval exp="f.r_hirayama_menu_3_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_4_rans>0"]
[eval exp="f.r_hirayama_menu_4_rans=0"]
[endif]
[if exp="f.r_hirayama_menu_5_rans>0"]
[eval exp="f.r_hirayama_menu_5_rans=0"]
[endif]



[if exp="f.r_oikawa_menu_1_rans>0"]
[eval exp="f.r_oikawa_menu_1_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_2_rans>0"]
[eval exp="f.r_oikawa_menu_2_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_3_rans>0"]
[eval exp="f.r_oikawa_menu_3_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_4_rans>0"]
[eval exp="f.r_oikawa_menu_4_rans=0"]
[endif]
[if exp="f.r_oikawa_menu_5_rans>0"]
[eval exp="f.r_oikawa_menu_5_rans=0"]
[endif]


[if exp="f.r_romana_menu_1_rans>0"]
[eval exp="f.r_romana_menu_1_rans=0"]
[endif]
[if exp="f.r_romana_menu_2_rans>0"]
[eval exp="f.r_romana_menu_2_rans=0"]
[endif]
[if exp="f.r_romana_menu_3_rans>0"]
[eval exp="f.r_romana_menu_3_rans=0"]
[endif]
[if exp="f.r_romana_menu_4_rans>0"]
[eval exp="f.r_romana_menu_4_rans=0"]
[endif]
[if exp="f.r_romana_menu_5_rans>0"]
[eval exp="f.r_romana_menu_5_rans=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_rans>0"]
[eval exp="f.r_beruzoku_menu_1_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_rans>0"]
[eval exp="f.r_beruzoku_menu_2_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_rans>0"]
[eval exp="f.r_beruzoku_menu_3_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_rans>0"]
[eval exp="f.r_beruzoku_menu_4_rans=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_rans>0"]
[eval exp="f.r_beruzoku_menu_5_rans=0"]
[endif]


[if exp="f.r_moon_menu_1_rans>0"]
[eval exp="f.r_moon_menu_1_rans=0"]
[endif]
[if exp="f.r_moon_menu_2_rans>0"]
[eval exp="f.r_moon_menu_2_rans=0"]
[endif]
[if exp="f.r_moon_menu_3_rans>0"]
[eval exp="f.r_moon_menu_3_rans=0"]
[endif]
[if exp="f.r_moon_menu_4_rans>0"]
[eval exp="f.r_moon_menu_4_rans=0"]
[endif]
[if exp="f.r_moon_menu_5_rans>0"]
[eval exp="f.r_moon_menu_5_rans=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_rans>0"]
[eval exp="f.r_bejibeji_menu_1_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_rans>0"]
[eval exp="f.r_bejibeji_menu_2_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_rans>0"]
[eval exp="f.r_bejibeji_menu_3_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_rans>0"]
[eval exp="f.r_bejibeji_menu_4_rans=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_rans>0"]
[eval exp="f.r_bejibeji_menu_5_rans=0"]
[endif]



[if exp="f.r_poteto_menu_1_rans>0"]
[eval exp="f.r_poteto_menu_1_rans=0"]
[endif]
[if exp="f.r_poteto_menu_2_rans>0"]
[eval exp="f.r_poteto_menu_2_rans=0"]
[endif]
[if exp="f.r_poteto_menu_3_rans>0"]
[eval exp="f.r_poteto_menu_3_rans=0"]
[endif]
[if exp="f.r_poteto_menu_4_rans>0"]
[eval exp="f.r_poteto_menu_4_rans=0"]
[endif]
[if exp="f.r_poteto_menu_5_rans>0"]
[eval exp="f.r_poteto_menu_5_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_rans>0"]
[eval exp="f.r_kyarokyaro_menu_1_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_rans>0"]
[eval exp="f.r_kyarokyaro_menu_2_rans=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_rans>0"]
[eval exp="f.r_kyarokyaro_menu_3_rans=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_4_rans>0"]
[eval exp="f.r_kyarokyaro_menu_4_rans=0"]
[endif]

[endmacro]



;クラメニューフラグ消去


;カジカジ１

[macro name="kajikaji_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;カジカジ２

[macro name="kajikaji_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]


[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]



;カジカジ３
[macro name="kajikaji_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;カジカジ４

[macro name="kajikaji_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]


[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;カジカジ５
[macro name="kajikaji_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]




;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;平山１

[macro name="hirayama_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;平山２

[macro name="hirayama_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]


[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;平山３

[macro name="hirayama_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]

[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;平山４

[macro name="hirayama_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]

[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;平山５

[macro name="hirayama_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]




[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;及川１

[macro name="oikawa_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;及川２

[macro name="oikawa_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]

[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;及川３

[macro name="oikawa_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]

[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;及川４

[macro name="oikawa_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]

[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;及川５

[macro name="oikawa_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ろまな1

[macro name="romana_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ろまな２

[macro name="romana_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ろまな３

[macro name="romana_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ろまな４

[macro name="romana_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ろまな５

[macro name="romana_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベル族１

[macro name="beruzoku_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベル族２

[macro name="beruzoku_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]

[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ベル族３

[macro name="beruzoku_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ベル族４

[macro name="beruzoku_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベル族５

[macro name="beruzoku_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]



[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ムーン１

[macro name="moon_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]



[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

[macro name="moon_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ムーン３

[macro name="moon_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ムーン４

[macro name="moon_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]

[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ムーン５

[macro name="moon_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]



[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベジベジ１

[macro name="bejibeji_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベジベジ２

[macro name="bejibeji_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]

[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

[macro name="kajikaji_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ベジベジ３

[macro name="bejibeji_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ベジベジ４

[macro name="bejibeji_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ベジベジ５

[macro name="bejibeji_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ポテト１

[macro name="poteto_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ポテト２

[macro name="poteto_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]

[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ポテト３

[macro name="poteto_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]

[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;ポテト４

[macro name="poteto_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]

[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;ポテト５
[macro name="poteto_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]


[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;キャロキャロ１

[macro name="kyarokyaro_menu_1_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;キャロキャロ２

[macro name="kyarokyaro_menu_2_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;キャロキャロ３

[macro name="kyarokyaro_menu_3_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]

;キャロキャロ４

[macro name="kyarokyaro_menu_4_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_5_kra>0"]
[eval exp="f.r_kyarokyaro_menu_5_kra=0"]
[endif]

[endmacro]


;キャロキャロ５

[macro name="kyarokyaro_menu_5_except_flag_delete_kra"]
;----

[if exp="f.r_kajikaji_menu_1_kra>0"]
[eval exp="f.r_kajikaji_menu_1_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_2_kra>0"]
[eval exp="f.r_kajikaji_menu_2_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_3_kra>0"]
[eval exp="f.r_kajikaji_menu_3_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_4_kra>0"]
[eval exp="f.r_kajikaji_menu_4_kra=0"]
[endif]

[if exp="f.r_kajikaji_menu_5_kra>0"]
[eval exp="f.r_kajikaji_menu_5_kra=0"]
[endif]


;------


[if exp="f.r_hirayama_menu_1_kra>0"]
[eval exp="f.r_hirayama_menu_1_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_2_kra>0"]
[eval exp="f.r_hirayama_menu_2_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_3_kra>0"]
[eval exp="f.r_hirayama_menu_3_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_4_kra>0"]
[eval exp="f.r_hirayama_menu_4_kra=0"]
[endif]
[if exp="f.r_hirayama_menu_5_kra>0"]
[eval exp="f.r_hirayama_menu_5_kra=0"]
[endif]



[if exp="f.r_oikawa_menu_1_kra>0"]
[eval exp="f.r_oikawa_menu_1_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_2_kra>0"]
[eval exp="f.r_oikawa_menu_2_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_3_kra>0"]
[eval exp="f.r_oikawa_menu_3_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_4_kra>0"]
[eval exp="f.r_oikawa_menu_4_kra=0"]
[endif]
[if exp="f.r_oikawa_menu_5_kra>0"]
[eval exp="f.r_oikawa_menu_5_kra=0"]
[endif]


[if exp="f.r_romana_menu_1_kra>0"]
[eval exp="f.r_romana_menu_1_kra=0"]
[endif]
[if exp="f.r_romana_menu_2_kra>0"]
[eval exp="f.r_romana_menu_2_kra=0"]
[endif]
[if exp="f.r_romana_menu_3_kra>0"]
[eval exp="f.r_romana_menu_3_kra=0"]
[endif]
[if exp="f.r_romana_menu_4_kra>0"]
[eval exp="f.r_romana_menu_4_kra=0"]
[endif]
[if exp="f.r_romana_menu_5_kra>0"]
[eval exp="f.r_romana_menu_5_kra=0"]
[endif]


[if exp="f.r_beruzoku_menu_1_kra>0"]
[eval exp="f.r_beruzoku_menu_1_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_2_kra>0"]
[eval exp="f.r_beruzoku_menu_2_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_3_kra>0"]
[eval exp="f.r_beruzoku_menu_3_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_4_kra>0"]
[eval exp="f.r_beruzoku_menu_4_kra=0"]
[endif]
[if exp="f.r_beruzoku_menu_5_kra>0"]
[eval exp="f.r_beruzoku_menu_5_kra=0"]
[endif]


[if exp="f.r_moon_menu_1_kra>0"]
[eval exp="f.r_moon_menu_1_kra=0"]
[endif]
[if exp="f.r_moon_menu_2_kra>0"]
[eval exp="f.r_moon_menu_2_kra=0"]
[endif]
[if exp="f.r_moon_menu_3_kra>0"]
[eval exp="f.r_moon_menu_3_kra=0"]
[endif]
[if exp="f.r_moon_menu_4_kra>0"]
[eval exp="f.r_moon_menu_4_kra=0"]
[endif]
[if exp="f.r_moon_menu_5_kra>0"]
[eval exp="f.r_moon_menu_5_kra=0"]
[endif]


[if exp="f.r_bejibeji_menu_1_kra>0"]
[eval exp="f.r_bejibeji_menu_1_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_2_kra>0"]
[eval exp="f.r_bejibeji_menu_2_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_3_kra>0"]
[eval exp="f.r_bejibeji_menu_3_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_4_kra>0"]
[eval exp="f.r_bejibeji_menu_4_kra=0"]
[endif]
[if exp="f.r_bejibeji_menu_5_kra>0"]
[eval exp="f.r_bejibeji_menu_5_kra=0"]
[endif]



[if exp="f.r_poteto_menu_1_kra>0"]
[eval exp="f.r_poteto_menu_1_kra=0"]
[endif]
[if exp="f.r_poteto_menu_2_kra>0"]
[eval exp="f.r_poteto_menu_2_kra=0"]
[endif]
[if exp="f.r_poteto_menu_3_kra>0"]
[eval exp="f.r_poteto_menu_3_kra=0"]
[endif]
[if exp="f.r_poteto_menu_4_kra>0"]
[eval exp="f.r_poteto_menu_4_kra=0"]
[endif]
[if exp="f.r_poteto_menu_5_kra>0"]
[eval exp="f.r_poteto_menu_5_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_1_kra>0"]
[eval exp="f.r_kyarokyaro_menu_1_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_2_kra>0"]
[eval exp="f.r_kyarokyaro_menu_2_kra=0"]
[endif]
[if exp="f.r_kyarokyaro_menu_3_kra>0"]
[eval exp="f.r_kyarokyaro_menu_3_kra=0"]
[endif]

[if exp="f.r_kyarokyaro_menu_4_kra>0"]
[eval exp="f.r_kyarokyaro_menu_4_kra=0"]
[endif]

[endmacro]




[return]









;----------------------------------------------------------------------------
[jump target=*choice_end]
*sakana_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_hirayama=1"]
[jump target=*choice_end]

*sakana_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_oikawa=1"]
[jump target=*choice_end]


*restaurant_choice_niku
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【肉料理のどのお店にしよう？】

[glink target=*niku_1 text="（ロマナーデ）" size=17 width=600 x=65 y=200]
[glink target=*niku_2 text="（ベル族の牛）" size=17 width=600 x=65 y=260]
[glink target=*niku_3 text="（ムーン鶏）" size=17 width=600 x=65 y=320]


[s]

*niku_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_romana=1"]
[jump target=*choice_end]

*niku_2
 [free name="sentakusi" layer=0]


[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_beruzoku=1"]
[jump target=*choice_end]

*niku_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_moon=1"]
[jump target=*choice_end]




*restaurant_choice_yasai
[image layer=0 page=fore visible=true name="sentakusi" storage=sentakusi.png x=43 y=3][eval exp="f.sentakuchuu= 1 "][r]【野菜料理のどのお店にしよう？】

[glink target=*yasai_1 text="（ベジベジ食堂）" size=17 width=600 x=65 y=200]
[glink target=*yasai_2 text="（レストランポテトマニア）" size=17 width=600 x=65 y=260]
[glink target=*yasai_3 text="（キャロキャロ食堂）" size=17 width=600 x=65 y=320]


[s]

*yasai_1
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_bejibeji=1"]
[jump target=*choice_end]

*yasai_2
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_poteto=1"]
[jump target=*choice_end]

*yasai_3
 [free name="sentakusi" layer=0]

[cm]
[playse storage="tm2_switch001_macchi.ogg"]
[w]
[eval exp="f.r_kyarokyaro=1"]


*choice_end


[endmacro]



[macro name="restaurant_random_choice"]


;何料理のお店
[iscript]
f. restaurant= Math.floor(Math.random() * 2) + 1
[endscript]

[if exp="f.restaurant==1"]
;魚料理の中で店を選ぶ
[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_kajikaji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_hirayama=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_oikawa=1"]
[endif]


[elsif exp="f.restaurant==2"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_romana=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_beruzoku=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_moon=1"]
[endif]


[elsif exp="f.restaurant==3"]

[iscript]
f. cuisine= Math.floor(Math.random() * 2) + 1
[endscript]


[if exp="f.cuisine==1"]
[eval exp="f.r_bejibeji=1"]
[elsif exp="f.cuisine==2"]
[eval exp="f.r_poteto=1"]
[elsif exp="f.cuisine==3"]
[eval exp="f.r_kyarokyaro=1"]
[endif]


[endif]








[endmacro]

[macro name="menu_choice"]


[bg storage="menu_haikei.png"]

[message_settei_ad]
#&f.name
「どの料理にしようかな？」[p]
#
[message_kakusu_ad]

[if exp="f.r_kajikaji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_3.png" x=50 y=300]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_1 x=440 y=87]
[ptext layer=1 name="menu_moji" name="menu_moji" page=fore color="#000000" text="刺身盛り合わせ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カジカジマグロ定食" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カジカジマグロの漬け丼" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="海鮮丼" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kajikaji_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="握り寿司盛り合わせ" face="antique" size="20" x=460 y=410]

[s]


[elsif exp="f.r_hirayama==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_1.png" x=80 y=300]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="平山ウオのフライ定食" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="たっぷりアジフライ定食" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="がめついホッケ定食" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ビッグエビフライ定食" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_hirayama_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉厚帆立のバター焼き定食" face="antique" size="20" x=460 y=410]

[s]









[elsif exp="f.r_oikawa==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_2.png" x=50 y=300]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="サバ味噌煮" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="カレイのミゾレ煮" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="及川の焼き魚定食" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="虹色あさりのアクアパッツァ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_oikawa_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ニシンの醤油煮" face="antique" size="20" x=460 y=410]

[s]














[elsif exp="f.r_romana==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_4.png" x=70 y=300]

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ロマナ豚の生姜焼き" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚のしゃぶしゃぶ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="特選ロマナ豚カレー" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚のロールキャベツ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_romana_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ロマナ豚カツ" face="antique" size="20" x=460 y=410]

[s]




[elsif exp="f.r_beruzoku==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_5.png" x=70 y=300]


[button graphic="button/toumei_2.png" width="300" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_1 x=420 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ベル族チーズのクラムチャウダー" face="antique" size="20" x=430 y=90]
[button graphic="button/toumei_2.png" width="300" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_2 x=420 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族チーズ入りのハンバーグ" face="antique" size="20" x=430 y=170]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛のビーフシチュー" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛ステーキ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_beruzoku_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ベル族の牛たん" face="antique" size="20" x=460 y=410]

[s]



[elsif exp="f.r_moon==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_6.png" x=80 y=300]


[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ムーン鶏のチキンカレー" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏のチキンソテー" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏のケチャップ焼き" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏の唐揚げ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_moon_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ムーン鶏の南蛮漬け" face="antique" size="20" x=460 y=410]

[s]









[elsif exp="f.r_bejibeji==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_7.png" x=100 y=300]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="グリーンサラダ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="シーザーサラダ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="わかめサラダ" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="エビのシュリンプサラダ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_bejibeji_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉サラダ" face="antique" size="20" x=460 y=410]

[s]














[elsif exp="f.r_poteto==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_8.png" x=50 y=300]


[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="ポテトサラダ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="マッシュポテト" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="芋の煮っ転がし" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="肉じゃが" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_poteto_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="粉吹き芋" face="antique" size="20" x=460 y=410]



[s]

[elsif exp="f.r_kyarokyaro==1"]

[image layer=1 name="menu_moji" page=fore storage="menu_9.png" x=90 y=300]


[button graphic="button/toumei_2.png" width="250" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_1 x=440 y=87]
[ptext layer=1 name="menu_moji" page=fore color="#000000" text="キャロルキャロットケーキ" face="antique" size="20" x=460 y=90]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_2 x=440 y=167]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜の唐揚げ" face="antique" size="20" x=460 y=170]
[button graphic="button/toumei_2.png" width="230" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_3 x=440 y=247]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜の天ぷら" face="antique" size="20" x=460 y=250]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_4 x=440 y=327]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="野菜のあんかけ" face="antique" size="20" x=460 y=330]
[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" target=*menu_kyarokyaro_5 x=440 y=407]
[ptext layer=1 name="menu_moji" page=fore  color="#000000" text="ポトフ" face="antique" size="20" x=460 y=410]





[endif]


[s]
;-----------------------------------
*menu_kajikaji_1


[cm][free name="menu_moji" layer=1]
[if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
　「刺身の盛り合わせか、いいね。俺もそれにしよう」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else]
[jump target=*end]
[endif]
;------------------
*menu_kajikaji_2

[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「俺、マグロ好きなんだよね、君も好き？」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------
*menu_kajikaji_3
[jump target=*end]
;----------------------
*menu_kajikaji_4
[jump target=*end]
;---------------------
*menu_kajikaji_5
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「あ、俺もそれにしようと思ってた。お寿司っておいしいよね」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------

*menu_hirayama_1

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000]
[lioness_face_normal_warai]
#ライオネス
「魚でも油で揚げればパンチあるよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------
*menu_hirayama_2
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「こう言うボリュームのあるのは好きだぜ。お前もか？」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------
*menu_hirayama_3

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「ホッケが山盛りなんだぜ、この料理」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------
*menu_hirayama_4

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「エビもフライにすると最高だよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_hirayama_5
[jump target=*end]
;----------------------------
*menu_oikawa_1
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「魚を味噌で煮込むのは悪くない。私も同じメニューにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_oikawa_2
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「カレイの煮魚、お前も好物だったな」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_oikawa_3
[jump target=*end]
;--------------------------------
*menu_oikawa_4

[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「あさりの料理だね、俺、これ好きだな。君も？」[p]
#
[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;--------------------------------

*menu_oikawa_5
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「にしんを醤油で煮込むのか。この料理もうまそうだな。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------
*menu_romana_1
[jump target=*end]
;--------------------------
*menu_romana_2
[jump target=*end]
;---------------------------
*menu_romana_3

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「カレーだな！やっぱりこれだよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;----------------------------
*menu_romana_4
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「ロールキャベツか。いいな。私も同じものを頼むとしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-------------------------------
*menu_romana_5
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「このロマナ豚って揚げ物にすると最高に美味いんだよな！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_beruzoku_1
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「クラムチャウダーか。悪くない選択だ。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;-----------------------------
*menu_beruzoku_2
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「チーズ入りってのがまたいいよな！俺もこれ頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;------------------------------
*menu_beruzoku_3
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「牛肉の旨味が溶け出したシチューは絶品だ。私も同じものを頼もうと思っていた」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;-------------------------------
*menu_beruzoku_4
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「この厚切りの肉を焼いたのがまたいいんだよな。俺は2つ頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;---------------------------------
*menu_beruzoku_5
[jump target=*end]

;---------------------------------
*menu_moon_1
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「カレーにすりゃあなんだっていけるよな！俺も食う！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------------
*menu_moon_2

[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「俺このチキンソテー好きなんだよね」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------

*menu_moon_3
[jump target=*end]

;------------------------------
*menu_moon_4
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]
#ライオネス
「やっぱ揚げ物はいいよなー。俺は２０個頼むぜ」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------
*menu_moon_5
[jump target=*end]
;------------------------------
*menu_bejibeji_1
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「野菜がたくさん入っていて健康的なメニューだな。感心だ」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------
*menu_bejibeji_2
[jump target=*end]
;---------------------------
*menu_bejibeji_3
[jump target=*end]
;----------------------------
*menu_bejibeji_4
[cm][free name="menu_moji" layer=1][if exp="f.friend==3"]
[message_settei_ad][live2d_fadein time=1000]
[aho_face_normal]
[if exp="f.event_main_3>0"]
#？
[else]
#クライスト
[endif]
「エビをサラダに入れるのっていいアイデアだよね」[p]
#

[kra]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------------------------------

*menu_bejibeji_5
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「サラダは好きじゃねえけど、肉が入ってるならいいな」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;------------------------------------------------------------------
*menu_poteto_1

[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「腹持ちもいいし、栄養バランスも優れている。いい選択だ」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;--------------------------------------------------------------------
*menu_poteto_2
[jump target=*end]
;--------------------------------------
*menu_poteto_3
[jump target=*end]
;---------------------------------
*menu_poteto_4
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「こう言う、食べると落ち着く料理は好きだな」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------------
*menu_poteto_5
[jump target=*end]
;---------------------------------
*menu_kyarokyaro_1
[jump target=*end]
;--------------------------------
*menu_kyarokyaro_2
[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「野菜は好きじゃねえけど、油で揚げるならいいな」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]

;--------------------------------
*menu_kyarokyaro_3

[cm][free name="menu_moji" layer=1][if exp="f.friend==2"]
[message_settei_ad][live2d_fadein time=1000][lioness_face_normal_warai]

#ライオネス
「野菜は好きじゃねえけど、天ぷらにすればいけるぜ！」[p]
#
[lion]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;---------------------------------------
*menu_kyarokyaro_4
[jump target=*end]
;------------------------------------------
*menu_kyarokyaro_5
[cm][free name="menu_moji" layer=1][if exp="f.friend==1"]
[message_settei_ad][live2d_fadein time=1000]
[baka_exp_normal_warai]
#ランスロット
「ポトフか。いいな。私もそれにしよう」[p]
#
[rans]
[koukando_up][live2d_fadeout time=1000][jump target=*end]
[else][jump target=*end]
[endif]
;-----------------------------------------




*end

[cm][free name="menu_moji" layer=1]
[message_settei_ad]




[endmacro]










[return]