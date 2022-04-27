;アイテム表示用
[clearstack]

[if exp="tf.hana==1"]
[eval exp="tf.hana=0"]
[clearfix name="process"]
[endif]

[if exp="tf.explain_true==1"]
[eval exp="tf.explain_true=0"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[endif]


[eval exp="tf.item_space_memori=0"]
[eval exp="tf.item_space_full_f=0"]

[cm]
;[call storage="scenario_2/siken_item.ks"]


[eval exp="tf.item_choice_key_y=tf.item_choice_y+4"]
[eval exp="tf.item_choice_key_y_2=tf.item_choice_key_y+25"]
[eval exp="tf.item_choice_key_y_3=tf.item_choice_key_y_2+25"]
[eval exp="tf.item_choice_key_y_4=tf.item_choice_key_y_3+25"]

[if exp="tf.item_battle_hyouji==1||tf.item_equip_hyouji==1||tf.item_cook_hyouji==1||tf.item_other_hyouji==1"]
[clearfix name="process_cursor"]
[free name="no_item" layer=2]
[endif]

[if exp="tf.item_battle_first==1"][free name="key" layer=2]

[eval exp="tf.item_battle_hyouji=1"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_other_hyouji=0"]
[eval exp="tf.item_cook_hyouji=0"]
[eval exp="tf.item_list=f.battle_item_list"]

[elsif exp="tf.item_equip_first==1"][free name="key" layer=2]

[eval exp="tf.item_equip_hyouji=1"]
[eval exp="tf.item_battle_hyouji=0"]
[eval exp="tf.item_other_hyouji=0"]
[eval exp="tf.item_cook_hyouji=0"]
[eval exp="tf.item_list=f.equip_item_list"]

[eval exp="tf.item_choice_key_y=tf.item_choice_key_y_2"]

[elsif exp="tf.item_cook_first==1"][free name="key" layer=2]

[eval exp="tf.item_cook_hyouji=1"]
[eval exp="tf.item_battle_hyouji=0"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_other_hyouji=0"]
[eval exp="tf.item_list=f.cook_item_list"]


[eval exp="tf.item_choice_key_y=tf.item_choice_key_y_3"]

[elsif exp="tf.item_other_first==1"][free name="key" layer=2]

[eval exp="tf.item_battle_hyouji=0"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_cook_hyouji=0"]
[eval exp="tf.item_other_hyouji=1"]
[eval exp="tf.item_list=f.other_item_list"]

[eval exp="tf.item_choice_key_y=tf.item_choice_key_y_4"]
[endif]

[eval exp="tf.item_battle_first=0"]
[eval exp="tf.item_equip_first=0"]
[eval exp="tf.item_cook_first=0"]
[eval exp="tf.item_other_first=0"]



[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item_choice_key_x y=&tf.item_choice_key_y]


*item_hyouji2_trush

;アイテム表示用の変数に初期値入力

*item_hyouji2

[call storage="scenario_2/item_check.ks"]
[item_number_shori]

[clearstack]
[clearfix name="process_moji" ]
[free name="process" layer=2]

;アイテム欄表じフラグ初期化

;個々のアイテムの表示フラグ（これがあると同じ名前ならまとめられる）tf.cook_item_hyouji1_number

;アイテム説明表示の座標

[if exp="tf.sell!==1"]
[eval exp="tf.explain_x=430"]
[elsif exp="tf.sell==1"]
[eval exp="tf.explain_x=250"]
[endif]
[eval exp="tf.explain_y=520"]
;アイテム文字大きさ
[eval exp="tf.font_size=16"]


[if exp="tf.sell==1"]
[eval  exp="tf.process_item_x=250"]
[else]
[eval  exp="tf.process_item_x=490"]
[endif]

[eval exp="tf.process_item_x_stock=tf.process_item_x+200"]
[eval exp="tf.process_item_x_trush=tf.process_item_x_stock+30"]
[eval exp="tf.process_item_y=80"]
[eval exp="tf.process_1_key_x=tf.process_item_x-5"]
[eval exp="tf.process_1_key_y=tf.process_item_y+3"]
[eval exp="tf.process_item_y_2=tf.process_item_y+45"]
[eval exp="tf.process_item_y_3=tf.process_item_y_2+45"]
[eval exp="tf.process_item_y_4=tf.process_item_y_3+45"]
[eval exp="tf.process_item_y_5=tf.process_item_y_4+45"]
[eval exp="tf.process_item_y_6=tf.process_item_y_5+45"]
[eval exp="tf.process_item_y_7=tf.process_item_y_6+45"]
[eval exp="tf.process_item_y_8=tf.process_item_y_7+45"]
[eval exp="tf.process_item_y_9=tf.process_item_y_8+45"]
[eval exp="tf.icon_y =80"]
[eval exp="tf.item1_key_x=490-5"]
[eval exp="tf.item1_key_y=tf.process_item_y+3"]
[eval exp="tf.process_item_y_trush=tf.process_item_y-10"]

;[if exp="tf.hana==1"]
;[s]
;[endif]
;アイテムがない場合
[if exp="tf.process_item_all_stock==0"]

[if exp="tf.hana==1"]
[eval exp="tf.hana=0"]
[clearfix name="process"]
[endif]

[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="no_item" size=20 x=470 y=&tf.process_item_y_2]
[endif]

[clearstack]



*first_page
[clearstack]

*item_shokika
[clearstack]


;アイテム欄表じフラグ初期化



[clearfix name="process_moji" ]
[free name="process" layer=2]
;----------------------------------------------
;--------------------------------------------------------------
[clearstack]


[eval exp="tf.item_space=1"]
;行数
[eval exp="tf.line_num = 9"]
[eval exp="tf.line_num = tf.line_num -1"]


;アイテムのデータを取得
;[call storage="scenario_2/item_check.ks"]




[eval exp="tf.item_full_array = []"]
[eval exp="tf.item_full = []"]
[eval exp="tf.item_space = 0"]
[eval exp="tf.item_space_no = 0"]
[eval exp="tf.item_space_y = 0"]

[iscript]


	
        //アイテム欄に表示する総数
		tf.item_full = f.hogetto;
		//アイテム欄表示の回数を計算
		tf.item_space = Math.floor(tf.item_full/9);

		if(tf.item_space<1){
			tf.item_space_no = 1;
		}
		//９個に満たない分
		tf.item_space_y = tf.item_full % 9;

		//ターゲットの配列
		tf.equip_id=[
			
			'*equip_id_1',
			'*equip_id_2',
			'*equip_id_3',
			'*equip_id_4',
			'*equip_id_5',
			'*equip_id_6',
			'*equip_id_7',
			'*equip_id_8',
			'*equip_id_9',
		];
		
[endscript]

;--------------------------------------------------------------
[clearstack]

[eval exp="tf.item_full_f=tf.item_full"]

;前回の処理でのページが最初じゃないとき、もとのページに戻ってくる
[if exp="tf.item_space_no!=1&&tf.item_space_memori<tf.item_space_full_f&&tf.hana==1"]
;最初の数を残しておく
[eval exp="tf.item_full=tf.item_full_memori"]
[eval exp="tf.item_space = tf.item_space_memori"]
[eval exp="tf.item_space_full=tf.item_space_full_f"]

[eval exp="tf.toosi = tf.item_toosi_memori"]
[eval exp="tf.item_count=tf.item_count_memori"]

[else]

;最初の数を残しておく
[eval exp="tf.item_full_f=tf.item_full"]
[eval exp="tf.item_space_full = tf.item_space"]
[eval exp="tf.toosi = 0"]
[eval exp="tf.item_count=1"]
[endif]


*space_shokika

[if exp="tf.sell==1"]
[eval exp="tf.process_item_x=250"]
[eval exp="tf.process_item_x_2=450"]
[else]
[eval exp="tf.process_item_x=490"]
[eval exp="tf.process_item_x_2=690"]
[endif]


[eval exp="tf.process_item_y=80"]
[eval exp="tf.process_item_x_icon=450"]
[eval exp="tf.process_item_y_icon=80"]
[eval exp="tf.item_hyouji_kaisu=0"]
[eval exp="tf.item_hyouji_kaisu_count=0"]

;-----------------------------
;-----------------------------
[if exp="tf.item_full>tf.line_num"]

;９より表示あいてむがあれば表示回数を8
[eval exp="tf.item_hyouji_kaisu=tf.line_num"]

;--------------------------------

;----------------
[elsif exp="tf.item_full<tf.line_num"]
;------------------
;もともと9より少ない場合と、何度も表示して９より少ない場合に分ける
;表示できるアイテムが９個より少ない;もともと少ない

;全アイテム表示数が行数以上
[if exp="tf.item_full_f>=tf.line_num"]
[eval exp="tf.item_hyouji_kaisu=tf.item_space_y"]
;全アイテム表示数が1行数に満たない
[elsif exp="tf.item_full_f<tf.line_num"]
[eval exp="tf.item_hyouji_kaisu=tf.item_full"]
[endif]

[endif]



;-----------------------------
;-----------------------------


;ページボタン判定
[if exp="tf.item_space<=0&&tf.item_space_no!=1"]
;戻るボタンだけ
;ラストページなので前のページボタン
[button graphic="cursor_above.gif" name="process_cursor" fix=true storage="scenario_2/item_hyouji.ks" target=*process_item_back_page x=750 y=&tf.process_item_y_8]

[elsif exp="tf.item_space==tf.item_space_full&&tf.item_space_no!=1"]
;次のボタンだけ
;-------------------------------
;次のページボタン
[button graphic="cursor.gif" name="process_cursor" fix=true storage="scenario_2/item_hyouji.ks" target=*process_item_next_page x=750 y=&tf.process_item_y_9]


[elsif exp="tf.item_space>0"]
;戻るボタンと、次のぼたん
;-------------------------------
;次のページボタン
[button graphic="cursor.gif" name="process_cursor" fix=true storage="scenario_2/item_hyouji.ks" target=*process_item_next_page x=750 y=&tf.process_item_y_9]
;前のページボタン
[button graphic="cursor_above.gif" name="process_cursor" fix=true storage="scenario_2/item_hyouji.ks" target=*process_item_back_page x=750 y=&tf.process_item_y_8]

[endif]







*item_hyouji_return
;-----------------------------
;アイテム欄表示部分

;アイコン表示


[if exp="tf.item_hyouji_confirm[tf.item_count]==1"]

[if exp="tf.sell!=1"]
[soubi_item_icon_hyouji]
[endif]

[ptext layer=2 page=fore text=&tf.process_item_hyouji_name[tf.toosi] face=antique name="process" size=20 x=&tf.process_item_x y=&tf.process_item_y]
[ptext layer=2 page=fore text=&tf.process_item_hyouji_stock[tf.toosi] face=antique name="process" size=20 x=&tf.process_item_x_2 y=&tf.process_item_y]
[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="scenario_2/equip_target.ks" target=&tf.equip_id[tf.item_hyouji_kaisu_count] name="process_moji" x=&tf.process_item_x y=&tf.process_item_y]
[endif]

;-------------------







;表示し終わったらまだ表示できるアイテムがあるか確認
[if exp="tf.item_hyouji_kaisu>tf.item_hyouji_kaisu_count"]

[eval exp="tf.process_item_y=tf.process_item_y+45"]
[eval exp="tf.item_count=tf.item_count+1"]
[eval exp="tf.toosi=tf.toosi+1"]
[eval exp="tf.item_hyouji_kaisu_count=tf.item_hyouji_kaisu_count+1 "]
[eval exp="tf.item_full=tf.item_full-1"]
[jump target=*item_hyouji_return]
[endif]
;--------------------


[jump target=*process_end]
[s]

;---------------------------------------------------------------------------
*process_item_next_page



;----------調整
;ページを更新
[if exp="tf.item_space>=0"]
[eval exp="tf.item_space=tf.item_space-1"]
[endif]

;数合わせのために調整;次のアイテムからになるので最後で計算されなかった分をここで計算する
[eval exp="tf.item_count=tf.item_count+1"]
[eval exp="tf.toosi=tf.toosi+1"]
[eval exp="tf.item_full = tf.item_full-1"]
;---------------------------------------------


;現在のページ、場所を記憶
[eval exp="tf.item_space_memori = tf.item_space"]
[eval exp="tf.item_space_full_f = tf.item_space_full"]

[eval exp="tf.item_count_memori = tf.item_count"]
[eval exp="tf.item_toosi_memori = tf.toosi"]
[eval exp="tf.item_full_memori = tf.item_full"]

;ゴミ箱消去
[if exp="tf.hana==1"]
[eval exp="tf.hana=0"]
[clearfix name="process"]
[endif]



;[eval exp="tf.toosi=tf.toosi+1"]

[clearstack]
[cm]


[free name="item_suuti" layer=2]
[free name="key" layer=2]

;-------
[free name="process" layer=2]
[clearfix name="process_cursor"]
[clearfix name="process_moji" ]
;-------

;現在のページ、場所を記憶
[eval exp="tf.item_space_memori = tf.item_space"]
[eval exp="tf.item_space_full_f = tf.item_space_full"]

[eval exp="tf.item_count_memori = tf.item_count"]
[eval exp="tf.item_toosi_memori = tf.toosi"]
[eval exp="tf.item_full_memori = tf.item_full"]


[iscript]
for(i=0;i<tf.item_list.length;i++){
tf.process_shori_no[i]=0;
}
[endscript]
[jump target=*space_shokika]
;------------------------------------------------------------------------------


*process_item_back_page




;------調整-------------------------------------
[eval exp="tf.item_space=tf.item_space+1"]

;今ページのどのへんかチェック
;[eval exp="tf.item_full_h = tf.item_full_f-1"]


;調整用に１プラス
[eval exp="tf.line_num_c = tf.line_num+1"]

[if exp="tf.toosi == tf.item_full_f"]
;最後のページだった場合
[eval exp="tf.item_full=tf.item_full+tf.line_num_c+tf.item_space_y"]
[eval exp="tf.toosi=tf.toosi-tf.line_num_c-tf.item_space_y"]
[eval exp="tf.item_count=tf.item_count-tf.line_num_c-tf.item_space_y"]

[elsif exp="tf.toosi < tf.item_full_f"]

[eval exp="tf.item_full=tf.item_full+tf.line_num_c+tf.line_num"]
[eval exp="tf.toosi=tf.toosi-tf.line_num_c-tf.line_num"]
[eval exp="tf.item_count=tf.item_count-tf.line_num_c-tf.line_num"]

[endif]
;-------------------------------------------



;現在のページ、場所を記憶
[eval exp="tf.item_space_memori = tf.item_space"]
[eval exp="tf.item_space_full_f = tf.item_space_full"]

[eval exp="tf.item_count_memori = tf.item_count"]
[eval exp="tf.item_toosi_memori = tf.toosi"]
[eval exp="tf.item_full_memori = tf.item_full"]

;ゴミ箱消去
[if exp="tf.hana==1"]
[eval exp="tf.hana=0"]
[clearfix name="process"]
[endif]




[clearstack]
[cm]
[free name="item_suuti" layer=2]
[free name="key" layer=2]


;----
[clearfix name="process_cursor"]
[free name="process" layer=2]
[clearfix name="process_moji" ]
;----




[iscript]
for(i=0;i<tf.item_list.length;i++){
tf.process_shori_no[i]=0;
}
[endscript]
[jump target=*space_shokika]


;一番目


*hyouji_end


[s]
*process_end


[clearfix name="battle_moji_choice"]
[clearfix name="cook_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]
[free name="battle_hyouji_moji" layer=2]
[free name="cook_hyouji_moji" layer=2]
[free name="equip_hyouji_moji" layer=2]
[free name="other_hyouji_moji" layer=2]
[free name="cook_hyouji_moji" layer=2]

[if exp="tf.hana==1&&tf.stock_memori>0"]
[button graphic="trush.png" fix=true storage="scenario_2/item_trush.ks" target=*process_item_1_trush name="process" x=&tf.process_item_x_trush y=&tf.trush_y_memori]
[endif]


[jump storage="scenario_2/item_hyouji_macro.ks" target=*first]









;---------------------------------------










