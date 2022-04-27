







*first
;リリース時には外す

[showmenubutton]
[eval exp="f.equip_change=1"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[clearstack]

[iscript]
//テストコード
f.equip_item_stock = [0,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
[endscript]

;装備アイテムデータを読み込み
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/skill_calc_current.ks"]
[call storage="scenario_2/equip_change_macro_data.ks"]
[call storage="scenario_2/store_macro_add.ks"]
[equip_array_confirm]
[hair_array_confirm]

*status

[showmenubutton]
;サブイベント用のフラグ


*kaisou


[clearstack]

;

;ステータス再表示
;ステータスベース
[image layer=1 page=fore storage="status_window.png" name="status" x=50 y=40]


;200
;152
;イレインの顔画像
[image layer=2 page=fore storage="battle_face/irain_face.png" name="status" x=75 y=52]



;名前
[ptext layer=2 page=fore text="&f.name" face="antique" name="status" size=21 x=245 y=63]


[ptext layer=2 page=fore visible="true" text="HP:" face="antique" name="status" size=20 x=230 y=90]


[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]

[ptext layer="2" page=fore visible="true" text="&f.irain_hp" face="antique" name="status_hp" size=30 x=265 y=90]

[eval exp="tf.irain_hp_x=270"]
[eval exp="tf.irain_hp_y=90"]


[eval exp="tf.irain_tec_x=235"]
[eval exp="tf.irain_tec_number_x=290"]

[eval exp="tf.irain_tec_y=125"]
[eval exp="tf.irain_tec_number_y=126"]


[eval exp="tf.irain_brain_x=235"]
[eval exp="tf.irain_brain_number_x=290"]

[eval exp="tf.irain_brain_y=150"]
[eval exp="tf.irain_brain_number_y=151"]


[eval exp="tf.irain_charm_x=235"]
[eval exp="tf.irain_charm_number_x=290"]

[eval exp="tf.irain_charm_y=175"]
[eval exp="tf.irain_charm_number_y=176"]

[eval exp="tf.soubi1_x=110"]
[eval exp="tf.soubi2_x=110"]
[eval exp="tf.soubi1_y=320"]
[eval exp="tf.soubi2_y=350"]






;技術
[ptext layer=2 page=fore text="技術" name="status_skill" face="antique" size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" face="antique" size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" face="antique" size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" face="antique" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" face="antique" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" face="antique" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

;所属
[ptext layer=2 page=fore text="所属:" name="status" face="antique" size=20 x=80 y=205]

;所属名
[ptext layer=2 page=fore text="クレール王国地方騎士団" name="status" face="antique" size=20 x=135 y=205]



;装備欄
[image layer=1 page=fore storage="item_window.png" name="equip" x=410 y=40]






;[image layer=1 page=fore storage="equip_window.png" name="status" x=172 y=270]

;装備
[image layer=1 page=fore storage="shozoku_window.png" name="soubi" x=50 y=270]
[image layer=1 page=fore storage="equip_huda.png" name="soubi" x=50 y=280]
[button name="change_button" graphic="soubi_change.png" clickse="tm2_switch001_macchi.ogg" fix=true target=*return x=670 y=270]



[ptext layer=2 page=fore text="装備" size=20 face=antique color="brown" name="soubi" x=90 y=285]

[eval exp="tf.soubi1_x=110"]
[eval exp="tf.soubi2_x=110"]
[eval exp="tf.soubi1_y=320"]
[eval exp="tf.soubi2_y=350"]
;[eval exp="tf.soubi1_x=590"]
;[eval exp="tf.soubi2_x=590"]
;[eval exp="tf.soubi1_y=300"]
;[eval exp="tf.soubi2_y=330"]

[eval exp="tf.icon_hyouji_x=80"]
[eval exp="tf.icon_hyouji_y=320"]
[eval exp="tf.icon_hyouji_y_2=tf.icon_hyouji_y+30"]

;装備欄のアイテム名表示
;-------------------------------------------------------------------------
[genzai_soubi_hyouji]
[soubi_icon_hyouji]
;ステータス表示





;装備欄
[image layer=1 page=fore storage="item_window.png" name="equip" x=840 y=50]

;装備中み

;お知らせ



*return
;装備欄のボタン
*soubi_start

[hidemenubutton]
[eval exp="tf.first_data_read=1"]
[jump  target=*item_shokika]

*item_data_read_return
[cm]
[clearstack]

;image表示

[eval exp="tf.item_image_hyouji_x=300"]
[eval exp="tf.item_image_hyouji_y=380"]

[irain_style_image]
[clearfix name="change_button"]
[button graphic="soubi_ok.png" fix="true" name="store" target=*soubi_end x=210 y=293]

;戻るボタン
;[image layer=1 page=fore visible=true  storage="return.png" name="modoru" x=660 y=20]
;[button graphic="button/toumei.png" fix="true" name="store" enterimg="button/toumei.png" storage="scenario_2/store_macro.ks" target=*store_back x=660 y=20]
;[ptext layer=2 page=fore visible=true  text="店に戻る" face=antique name="store" size=15 x=678 y=25]

;装備の説明表示

[ptext layer=2 name="soubi_setumei" text="※装備欄のアイテムをクリックすると装備可能なアイテムを表示" color="#b8860b" x=100 y=560]







[message_kakusu_ad]



[eval exp="tf.irain_tec_suuti_x=tf.irain_tec_number_x+50"]
[eval exp="tf.irain_brain_suuti_x=tf.irain_brain_number_x+50"]
[eval exp="tf.irain_charm_suuti_x=tf.irain_charm_number_x+50"]

[eval exp="tf.irain_tec_suuti_number_x=tf.irain_tec_number_x+62"]
[eval exp="tf.irain_brain_suuti_number_x=tf.irain_brain_number_x+62"]
[eval exp="tf.irain_charm_suuti_number_x=tf.irain_charm_number_x+62"]





;装備欄のボタン

[clearstack]
[eval exp="tf.soubi1_x=110"]
[eval exp="tf.soubi2_x=110"]
[eval exp="tf.soubi1_y=320"]
[eval exp="tf.soubi2_y=350"]

[iscript]

tyrano.plugin.kag.variable.tf.equip_item_no =[];

var hogetto_s = f.hogetto+7;

for(i=0;i<hogetto_s;i++){

tyrano.plugin.kag.variable.tf.equip_item_no.push(0);
tyrano.plugin.kag.variable.tf.equip_shori_no.push(0);

}
[endscript]



[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]



[eval exp="tf.soubi1_key_x=tf.soubi1_x-5"]
[eval exp="tf.soubi1_key_y=tf.soubi1_y+5"]

[eval exp="tf.soubi2_key_x=tf.soubi2_x-5"]
[eval exp="tf.soubi2_key_y=tf.soubi2_y+5"]

[eval exp="tf.equip_item_y=80"]

[eval exp="tf.equip_item_x=490"]

[eval exp="tf.equip_1_key_x=tf.equip_item_x-5"]
[eval exp="tf.equip_1_key_y=tf.equip_item_y+3"]
[eval exp="tf.equip_2_key_y=tf.equip_1_key_y+45"]
[eval exp="tf.equip_3_key_y=tf.equip_2_key_y+45"]
[eval exp="tf.equip_4_key_y=tf.equip_3_key_y+45"]
[eval exp="tf.equip_5_key_y=tf.equip_4_key_y+45"]
[eval exp="tf.equip_6_key_y=tf.equip_5_key_y+45"]
[eval exp="tf.equip_7_key_y=tf.equip_6_key_y+45"]
[eval exp="tf.equip_8_key_y=tf.equip_7_key_y+45"]
[eval exp="tf.equip_9_key_y=tf.equip_8_key_y+45"]



[eval exp="tf.equip_item_y_2=tf.equip_item_y+45"]
[eval exp="tf.equip_item_y_3=tf.equip_item_y_2+45"]
[eval exp="tf.equip_item_y_4=tf.equip_item_y_3+45"]
[eval exp="tf.equip_item_y_5=tf.equip_item_y_4+45"]
[eval exp="tf.equip_item_y_6=tf.equip_item_y_5+45"]
[eval exp="tf.equip_item_y_7=tf.equip_item_y_6+45"]
[eval exp="tf.equip_item_y_8=tf.equip_item_y_7+45"]
[eval exp="tf.equip_item_y_9=tf.equip_item_y_8+45"]

;アイテム説明表示の座標
[eval exp="tf.explain_x=430"]
[eval exp="tf.explain_y=520"]
;アイテム文字大きさ
[eval exp="tf.font_size=16"]

;アイテムページ遷移用
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.equip_item_back_page=0"]


*equip_button_return
[clearstack]
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.equip_item_back_page=0"]
[button graphic="button/toumei.png" exp="tf.equip_item_current_1_click=tf.equip_item_current_1_click+1" fix="true" target=*soubi_1  name="soubi1_button" x=&tf.soubi1_x y=&tf.soubi1_y]

[button graphic="button/toumei.png" exp="tf.equip_item_current_2_click=tf.equip_item_current_2_click+1" fix="true" target=*soubi_2  name="soubi2_button" x=&tf.soubi2_x y=&tf.soubi2_y]





[s]



*equip_ok




[eval exp="tf.equip_item_choice=0"]
[clearstack]
[free name="key" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_2=0"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_1=0"]

[free name="soubi_setumei" layer=3]


[eval exp="tf.irain_hp_x=tf.irain_hp_x+125"]
[eval exp="tf.irain_hp_y=tf.irain_hp_y+100"]

[eval exp="tf.irain_tec_x=tf.irain_tec_x+125"]
[eval exp="tf.irain_tec_number_x=tf.irain_tec_number_x+125"]
[eval exp="tf.irain_tec_y=tf.irain_tec_y+100"]
[eval exp="tf.irain_tec_number_y=tf.irain_tec_number_y+100"]


[eval exp="tf.irain_brain_x=tf.irain_brain_x+125"]
[eval exp="tf.irain_brain_number_x=tf.irain_brain_number_x+125"]

[eval exp="tf.irain_brain_y=tf.irain_brain_y+100"]
[eval exp="tf.irain_brain_number_y=tf.irain_brain_number_y+100"]



[eval exp="tf.irain_charm_x=tf.irain_charm_x+125"]
[eval exp="tf.irain_charm_number_x=tf.irain_charm_number_x+125"]

[eval exp="tf.irain_charm_y=tf.irain_charm_y+100"]
[eval exp="tf.irain_charm_number_y=tf.irain_charm_number_y+100"]








;[button graphic="soubi_change.png" clickse="tm2_switch001_macchi.ogg" name="change_button" target=*return x=670 y=270]

[cm]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]



;部屋の場合
[if exp="f.irain_heya==1"]
[jump storage="scenario_2/status_macro.ks" target=*status]
[else]
[jump target=*status]
[endif]

[s]



*soubi_1
[cm]

;装備１クリックしたスイッチ
[eval exp="f.soubi_1=1"]

;イレインの画像表示を初期化
[equip_hyouji_shokika]
[irain_style_image]


;ブッキング防止
[if exp="tf.equip_item_current_2_click>0"]
;消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[free name="item_suuti_2" layer=2]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[eval exp="tf.hair_hyouji=1"]

[equip_item_shoki]
[jump target=*mokemoke]

[endif]



[iscript]

for(i=1;i<=tf.hair_len;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_1_click==1||tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_1_click==2){

				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;		

}
}
[endscript]
[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;装備欄両方クリックで消去
[if exp="tf.equip_item_current_1_click==1&&tf.equip_item_current_2_click==1"]
[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[elsif exp="tf.equip_item_current_1_click==2"]

[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

;[equip_button_process_1]

[clearstack]
[jump target=*equip_button_return]
[s]

[endif]


[if exp="tf.equip_item_current_1_click==1"]
*mokemoke
;[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]
[endif]
;

;アイテムを表示
;------------
*soubi1_hyouji
;ここからボタン処理
[jump target=*item_shokika]
;ヘアアレンジ装備

*item_hyouji

[clearstack]
[jump target=*equip_button_return]
[s]


*soubi_2

[cm]
;イレインの画像表示を初期化
[equip_hyouji_shokika]
[irain_style_image]

;ブッキング防止
[if exp="tf.equip_item_current_1_click>0"]
;消去
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[equip_item_shoki]

[eval exp="tf.hair_hyouji=0"]
[jump target=*moke]

[endif]



;装備2クリックしたスイッチ
[eval exp="f.soubi_2=1"]



[iscript]

for(i=1;i<=tf.equip_len;i++){
if(tyrano.plugin.kag.variable.tf.equip_shori_no[i]==1&&tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]==1&&tyrano.plugin.kag.variable.tf.equip_item_current_2_click==1){

				tyrano.plugin.kag.variable.tf.free_name_key=1;
				tyrano.plugin.kag.variable.tf.suuti_delete=1;		

}
}
[endscript]
[key_delete]
[if exp="tf.suuti_delete==1"]
[free name="item_suuti" layer=2]
[eval exp="tf.suuti_delete=0"]
[endif]




;装備欄両方クリックで消去
[if exp="tf.equip_item_current_1_click==1&&tf.equip_item_current_2_click==1"]
[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[elsif exp="tf.equip_item_current_2_click==2"]

[free name="key" layer=2]

[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

;[equip_button_process_1]

[clearstack]
[jump target=*equip_button_return]
[s]

[endif]


[if exp="tf.equip_item_current_2_click==1"]
*moke
;[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]

[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[endif]
;

;アイテムを表示
;------------
*soubi2_hyouji
;ここからボタン処理
[jump target=*item_shokika]
;ヘアアレンジ装備

*item_hyouji2

[clearstack]
[jump target=*equip_button_return]
[s]

[clearstack]
[jump target=*equip_button_return]


[s]



;--------

;------------アイテム表示用



*item_data_read
*item_check

*item_shokika
[clearstack]

[if exp="tf.equip_item_current_1_click==1"]
[clearfix name="soubi1_button"]
[endif]

[if exp="tf.equip_item_current_2_click==1"]
[clearfix name="soubi2_button"]
[endif]



;アイテム欄表じフラグ初期化
[equip_item_shoki]
[clearfix name="equip_moji" ]


[free name="equip" layer=2]
;----------------------------------------------
;--------------------------------------------------------------
[if exp="tf.first_data_read==1"]
[eval exp="tf.first_data_read=0"]
[jump target=*item_data_read_return]
[endif]

[clearstack]



;装備欄１か２で場合わけ
[if exp="tf.equip_item_current_1_click>=1"]
[jump target=*front_hyouji]
[endif]

;装備変更後のアイテム欄表示。どちらの装備を変更したかで場合わけ
[if exp="tf.equip_item_change_1==1"]
[eval exp="tf.hair_hyouji=0"]
[eval exp="tf.equip_item_change_1=0"]
[jump target=*front_hyouji]
[elsif exp="tf.equip_item_change_2==1"]
[eval exp="tf.equip_item_change_2=0"]
[jump target=*click_soubi2]
[endif]
;装備欄をクリックしてなかった場合のジャンプ先
[if exp="tf.hair_hyouji==1"]
[eval exp="tf.hair_hyouji=0"]
[jump target=*front_hyouji]
[else]
[jump target=*click_soubi2]
[endif]




*click_soubi2
;装備欄２用アイテム表示
[eval exp="tf.equip_item_choice=1"]


*click_soubi1
[eval exp="tf.item_space=1"]
;行数
[eval exp="tf.line_num = 9"]
[eval exp="tf.line_num = tf.line_num -1"]

;[call storage="scenario_2/siken_item.ks"]
[call storage="scenario_2/soubi_item.ks"]




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





;最初の数を残しておく
[eval exp="tf.item_full_f=tf.item_full"]
[eval exp="tf.item_space_full = tf.item_space"]
[eval exp="tf.toosi = 0"]
[eval exp="tf.item_count=1"]


*space_shokika
[eval exp="tf.equip_item_y=80"]
[eval exp="tf.equip_item_x_icon=450"]
[eval exp="tf.equip_item_y_icon=80"]
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
[if exp="tf.item_space==0&&tf.item_space_no!=1"]
;戻るボタンだけ
;ラストページなので前のページボタン

[button graphic="cursor_above.gif" name="equip_cursor" fix=true target=*equip_item_back_page x=750 y=&tf.equip_item_y_8]

[elsif exp="tf.item_space==tf.item_space_full"]
;次のボタンだけ

;-------------------------------
;次のページボタン
[button graphic="cursor.gif" name="equip_cursor" fix=true target=*equip_item_next_page x=750 y=&tf.equip_item_y_9]


[elsif exp="tf.item_space>0"]
;戻るボタンと、次のぼたん
;-------------------------------
;次のページボタン
[button graphic="cursor.gif" name="equip_cursor" fix=true target=*equip_item_next_page x=750 y=&tf.equip_item_y_9]
;前のページボタン
[button graphic="cursor_above.gif" name="equip_cursor" fix=true target=*equip_item_back_page x=750 y=&tf.equip_item_y_8]

[endif]







*item_hyouji_return
;-----------------------------
;アイテム欄表示部分

;アイコン表示


[if exp="tf.item_hyouji_confirm[tf.item_count]==1"]
[soubi_item_icon_hyouji]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_name[tf.toosi] face=antique name="equip" size=20 x=490 y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_hyouji_stock[tf.toosi] face=antique name="equip" size=20 x=690 y=&tf.equip_item_y]
[button graphic="button/toumei.png" enterimg="button/toumei.png" fix="true" storage="scenario_2/equip_target.ks" target=&tf.equip_id[tf.item_hyouji_kaisu_count] name="equip_moji" x=490 y=&tf.equip_item_y]
[endif]

;-------------------







;表示し終わったらまだ表示できるアイテムがあるか確認
[if exp="tf.item_hyouji_kaisu>tf.item_hyouji_kaisu_count"]

[eval exp="tf.equip_item_y=tf.equip_item_y+45"]
[eval exp="tf.item_count=tf.item_count+1"]
[eval exp="tf.toosi=tf.toosi+1"]
[eval exp="tf.item_hyouji_kaisu_count=tf.item_hyouji_kaisu_count+1 "]
[eval exp="tf.item_full=tf.item_full-1"]
[jump target=*item_hyouji_return]
[endif]
;--------------------


[if exp="tf.equip_item_current_1_click>=1"]
[clearfix name="soubi1_button"]
[elsif exp="tf.equip_item_current_2_click>=1"]
[clearfix name="soubi2_button"]
[endif]

[jump target=*equip_process_end]
[s]

;---------------------------------------------------------------------------
*equip_item_next_page
;ページを更新
[if exp="tf.item_space>=0"]
[eval exp="tf.item_space=tf.item_space-1"]
[endif]


;数合わせのために調整;次のアイテムからになるので最後で計算されなかった分をここで計算する
[eval exp="tf.item_count=tf.item_count+1"]
[eval exp="tf.toosi=tf.toosi+1"]
[eval exp="tf.item_full = tf.item_full-1"]



;[eval exp="tf.toosi=tf.toosi+1"]
[clearfix name="equip_cursor"]
[clearstack]
[cm]
[item_suuti_delete]
[free name="equip" layer=2]
[free name="key" layer=2]
[clearfix name="equip_moji" ]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[iscript]
for(i=0;i<f.equip_item_list.length;i++){
tf.equip_shori_no[i]=0;
}
[endscript]
[jump target=*space_shokika]
;------------------------------------------------------------------------------


*equip_item_back_page
[eval exp="tf.item_space=tf.item_space+1"]
[clearfix name="equip_cursor"]
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

[clearstack]
[cm]
[item_suuti_delete]
[free name="equip" layer=2]
[free name="key" layer=2]
[clearfix name="equip_moji" ]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]
[iscript]
for(i=0;i<f.equip_item_list.length;i++){
tf.equip_shori_no[i]=0;
}
[endscript]
[jump target=*space_shokika]
;---------------------------------------------------------------------------------------------------------------


[jump target=*click_soubi2]




*equip_hyouji_end
[if exp="tf.equip_item_change_2==1"]
[eval exp="tf.equip_item_change_2=0"]
[jump target=*equip_process_end]
[endif]

;装備欄１か２で場合わけ
[if exp="tf.equip_item_current_2_click>=1"]
[jump target=*equip_process_end]
[endif]




;-----------------------------------------------------------------------------------------------------------------------------------------------------------------

;装備欄１用のアイテム表示

*front_hyouji

;装備欄１をクリックした時アイテム表示
;-------------------------------------------------------------------------------------------------------------------------------------------------


;[call storage="scenario_2/siken_item.ks"]
[eval exp="tf.hair_hyouji=1"][eval exp="tf.equip_item_choice=1"]
;[call storage="scenario_2/soubi_item_hair.ks"]
[jump target=*click_soubi1]




*equip_process_end

;-------------------
[clearstack]

[if exp="f.soubi_2==1||tf.equip_item_current_2_click>=1"]
[eval exp="f.soubi_2=0"]
[jump target=*item_hyouji2]
[elsif exp="f.soubi_1==1||tf.equip_item_current_1_click>=1"]
[eval exp="f.soubi_1=0"]
[jump target=*item_hyouji]
[else]
[jump target=*equip_button_return]
[endif]



*soubi_end
[eval exp="tf.hair_hyouji=0"]
[eval exp="tf.equip_item_current_1_click=0"]
[eval exp="tf.equip_item_current_2_click=0"]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[refresh_hanyou]

;テスト用
[if exp="f.test_link==1"]
[iscript]
location.reload()
[endscript]
[endif]
;


[if exp="f.store==1"]
[jump storage="scenario_2/store_macro.ks" target=*store_back]

[elsif exp="f.irain_heya==1"]
[jump storage="scenario_2/status_macro.ks" target=*equip_ok]
[else]
[jump storage="scenario_2/equip_prepare.ks" target=*modoru]
[endif]







