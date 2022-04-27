

;---------------------------------------------------------------
;戦闘アイテム表示用
[battle_hyouji_delete]
[cm]
[clearstack]
;[call storage="siken_item.ks"]
[free name="key" layer=2]
[clearfix name="equip"][clearfix name="equip_cursor"]
[clearfix name="battle"]
[clearfix name="other"]
[clearfix name="other_cursor"]
[clearfix name="cook"]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item_choice_key_x y=&tf.item_choice_key_y]

[if exp="tf.item_other_hyouji==1"]

[other_hyouji_delete]

[elsif exp="tf.item_equip_hyouji==1"]

[equip_hyouji_delete]

[elsif exp="tf.item_cook_hyouji==1"]

[cook_hyouji_delete]

[endif]

[eval exp="tf.item_battle_hyouji=1"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_other_hyouji=0"]
[eval exp="tf.item_cook_hyouji=0"]
[eval exp="tf.equip_item_next_page=0"]
[eval exp="tf.battle_item_all_stock=0"]




*item_hyouji2_trush

;アイテム表示用の変数に初期値入力
[battle_number_shoki]
[iscript]
tyrano.plugin.kag.variable.tf.battle_item_hyouji_number=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.battle_item_all_stock=0;
[endscript]
*item_hyouji2

[clearstack]
[clearfix name="battle_moji" ]
[free name="battle" layer=2]



;アイテム欄表じフラグ初期化

;個々のアイテムの表示フラグ（これがあると同じ名前ならまとめられる）tf.battle_item_hyouji1_number

;アイテム説明表示の座標
[eval exp="tf.explain_x=430"]
[eval exp="tf.explain_y=520"]
;アイテム文字大きさ
[eval exp="tf.font_size=16"]





[eval  exp="tf.battle_item_x=490"]
[eval  exp="tf.battle_item_x_stock=tf.battle_item_x+200"]
[eval exp="tf.battle_item_x_trush=tf.battle_item_x_stock+30"]
[eval exp="tf.battle_item_y=80"]
[eval exp="tf.battle_1_key_x=tf.battle_item_x-5"]
[eval exp="tf.battle_1_key_y=tf.battle_item_y+3"]
[eval exp="tf.battle_item_y_2=tf.battle_item_y+45"]
[eval exp="tf.battle_item_y_3=tf.battle_item_y_2+45"]
[eval exp="tf.battle_item_y_4=tf.battle_item_y_3+45"]
[eval exp="tf.battle_item_y_5=tf.battle_item_y_4+45"]
[eval exp="tf.battle_item_y_6=tf.battle_item_y_5+45"]
[eval exp="tf.battle_item_y_7=tf.battle_item_y_6+45"]
[eval exp="tf.battle_item_y_8=tf.battle_item_y_7+45"]
[eval exp="tf.battle_item_y_9=tf.battle_item_y_8+45"]

[eval exp="tf.item1_key_x=490-5"]
[eval exp="tf.item1_key_y=tf.battle_item_y+3"]
[eval exp="tf.battle_item_y_trush=tf.battle_item_y-10"]







[call storage="scenario_2/item_check_battle.ks"]


[clearstack]







[if exp="tf.battle_item_all_stock==0"]
;アイテムがない場合
[clearfix name="battle"]
[eval exp="tf.sentou_item=0"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="battle" size=20 x=490 y=&tf.battle_item_y_2]

[jump target=*hyouji_end]
[endif]

[eval exp="tf.b=0"]
[eval exp="tf.a=0"]



[iscript]
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.battle_item_hyouji_number=[];
[endscript]
*first_page
[if exp="f.hogetto<10"]
[eval exp="tf.i=f.hogetto"]
[elsif exp="f.hogetto<19"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto<28"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto>27"]
[eval exp="tf.i=9"]
[endif]

[clearstack]


;一番目

*modo
[iscript]

tyrano.plugin.kag.variable.tf.battle_item_hyouji_name=0;

tyrano.plugin.kag.variable.tf.battle_item_hyouji_stock=0;
tyrano.plugin.kag.variable.tf.battle_item_y_s=0;
tyrano.plugin.kag.variable.tf.battle_item_hyouji_name=tyrano.plugin.kag.variable.tf.battle_item_hyouji[tyrano.plugin.kag.variable.tf.a].name;

tyrano.plugin.kag.variable.tf.battle_item_hyouji_number.push(tyrano.plugin.kag.variable.tf.battle_item_hyouji[tyrano.plugin.kag.variable.tf.a].number)
tyrano.plugin.kag.variable.tf.battle_item_hyouji_stock=tyrano.plugin.kag.variable.tf.hyouji[tyrano.plugin.kag.variable.tf.a];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm[tyrano.plugin.kag.variable.tf.b]=1;
var o =tyrano.plugin.kag.variable.tf.b*45;
tyrano.plugin.kag.variable.tf.battle_item_y_s = tyrano.plugin.kag.variable.tf.battle_item_y+o;
o=0;

[endscript]

[if exp="tf.battle_item_next_page==0"]
[clearfix name="battle_cursor"]
[elsif exp="tf.battle_item_next_page==1&&tf.trush_sumi==1"]
[clearfix name="battle_cursor"]
[eval exp="tf.trush_sumi=0"]
;-----
;先頭のアイテムだった場合は前のページへ
[if exp="tf.sentou_item==1"]
[eval exp="tf.sentou_item=0"]
[eval exp="tf.battle_item_next_page=tf.battle_item_next_page-1"]
[clearfix name="battle_cursor"]
[else]
[eval exp="tf.a=9"]
[eval exp="f.hogetto=f.hogetto-9"]
[jump target=*battle_item_next_page]
[endif]
;------

[elsif exp="tf.battle_item_next_page==2&&tf.trush_sumi==1"]
[clearfix name="battle_cursor"]
[eval exp="tf.trush_sumi=0"]

;-----
;先頭のアイテムだった場合は前のページへ
[if exp="tf.sentou_item==1"]
[eval exp="tf.sentou_item=0"]
[eval exp="tf.battle_item_next_page=tf.battle_item_next_page-1"]
[eval exp="tf.a=9"]
[eval exp="f.hogetto=f.hogetto-9"]
[jump target=*battle_item_next_page]

[else]
[eval exp="tf.a=18"]
[eval exp="f.hogetto=f.hogetto-18"]
[jump target=*battle_item_next_page]
[endif]
;-----
[elsif exp="tf.battle_item_next_page==3&&tf.trush_sumi==1"]
[clearfix name="battle_cursor"]
[eval exp="tf.trush_sumi=0"]
;------
;先頭のアイテムだった場合は前のページへ
[if exp="tf.sentou_item==1"]
[eval exp="tf.sentou_item=0"]
[eval exp="tf.battle_item_next_page=tf.battle_item_next_page-1"]
[eval exp="tf.a=18"]
[eval exp="f.hogetto=f.hogetto-18"]
[jump target=*battle_item_next_page]

[else]
[eval exp="tf.a=27"]
[eval exp="f.hogetto=f.hogetto-27"]
[jump target=*battle_item_next_page]
[endif]






;-------
[else]
[endif]






;------
[ptext layer=2 page=fore text=&tf.battle_item_hyouji_name face=antique name="battle" size=20 x=&tf.battle_item_x y=&tf.battle_item_y_s]

[ptext layer=2 page=fore text=&tf.battle_item_hyouji_stock face=antique name="battle" size=20 x=&tf.battle_item_x_stock y=&tf.battle_item_y_s]
;-------

[eval exp="tf.a=tf.a+1"]
[eval exp="tf.b=tf.b+1"]
[eval exp="tf.i=tf.i-1"]
[eval exp="f.hogetto=f.hogetto-1"]

[if exp="tf.i>0"]
[jump target=*modo]
[endif]

;一気にボタンを表示
[clearstack]
[if exp="tf.item_hyouji_confirm[0]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[1]=tf.battle_item_no[1]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y]
[endif]

[if exp="tf.item_hyouji_confirm[1]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[2]=tf.battle_item_no[2]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_2]
[endif]

[if exp="tf.item_hyouji_confirm[2]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[3]=tf.battle_item_no[3]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_3]
[endif]

[if exp="tf.item_hyouji_confirm[3]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[4]=tf.battle_item_no[4]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_4]
[endif]

[if exp="tf.item_hyouji_confirm[4]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[5]=tf.battle_item_no[5]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_5]
[endif]

[if exp="tf.item_hyouji_confirm[5]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[6]=tf.battle_item_no[6]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_6]
[endif]

[if exp="tf.item_hyouji_confirm[6]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[7]=tf.battle_item_no[7]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_7]
[endif]

[if exp="tf.item_hyouji_confirm[7]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[8]=tf.battle_item_no[8]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_8]
[endif]

[if exp="tf.item_hyouji_confirm[8]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.battle_item_no[9]=tf.battle_item_no[9]+1" fix="true" storage="battle_item_1_hyouji.ks"  name="battle_moji" x=&tf.battle_item_x y=&tf.battle_item_y_9]
[endif]
[clearstack]




[if exp="f.hogetto>0"]
;--------
;次のページボタン
[button graphic="cursor.gif" name="battle_cursor" fix=true  exp="tf.battle_item_next_page=tf.battle_item_next_page+1" storage="battle_item_hyouji.ks" target=*battle_item_next_page x=750 y=&tf.battle_item_y_9]
[else]

[jump target=*hyouji_end]
[endif]



[s]
;---------------------------------------------------------------------------------------------------------



*battle_item_next_page

[clearstack]
[cm]
[clearfix name="battle"][clearfix name="battle_cursor"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[free name="battle" layer=2]
[clearfix name="battle_moji" ]
[eval exp="tf.b=0"]
[iscript]
tyrano.plugin.kag.variable.tf.battle_item_hyouji_number=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,0,0,0,0,0,0,0,0,0];
[endscript]
[if exp="f.hogetto<10"]
[eval exp="tf.i=f.hogetto"]
[elsif exp="f.hogetto<19"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto<28"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto>27"]
[eval exp="tf.i=9"]
[endif]

;前のページボタン
[button graphic="cursor_above.gif" name="battle_cursor" fix=true exp="tf.battle_item_next_page=tf.battle_item_next_page-1" storage="battle_item_hyouji.ks" target=*battle_item_back_page x=750 y=&tf.battle_item_y_8]

[jump target=*modo]


*battle_item_back_page
[clearstack]
[cm]
[clearfix name="battle"][clearfix name="battle_cursor"]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[free name="battle" layer=2]
[clearfix name="battle_moji" ]


;コンフィームの１以上の変数の数だけ増える
[iscript]
tyrano.plugin.kag.variable.tf.con_num=[];
tyrano.plugin.kag.variable.tf.con_plus=0;

for(i=0;i<10;i++){

if(tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]>0){
tyrano.plugin.kag.variable.tf.con_num.push(tyrano.plugin.kag.variable.tf.item_hyouji_confirm[i]);
}
}
tyrano.plugin.kag.variable.tf.con_plus = tyrano.plugin.kag.variable.tf.con_num.length;

[endscript]
[eval exp="f.hogetto=f.hogetto+9+tf.con_plus"]


[if exp="f.hogetto>34"]
[eval exp="f.hogetto=34"]
[endif]


[eval exp="tf.a=tf.a-9-tf.con_plus"]

[if exp="tf.a<0"]
[eval exp="tf.a=0"]
[endif]
[eval exp="tf.b=0"]
[iscript]
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.battle_item_hyouji_number=[];
[endscript]
[if exp="f.hogetto<10"]
[eval exp="tf.i=f.hogetto"]
[elsif exp="f.hogetto<19"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto<28"]
[eval exp="tf.i=9"]
[elsif exp="f.hogetto>27"]
[eval exp="tf.i=9"]
[endif]

[if exp="tf.battle_item_next_page>0"]
;前のページボタン
[button graphic="cursor_above.gif" name="battle_cursor" fix=true exp="tf.battle_item_next_page=tf.battle_item_next_page-1" storage="battle_item_hyouji.ks" target=*battle_item_back_page x=750 y=&tf.battle_item_y_8]
[endif]


[jump target=*modo]





*hyouji_end

[s]


*process_end
*battle_process_end


[clearfix name="battle_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]
[free name="battle_hyouji_moji" layer=2"]
[free name="equip_hyouji_moji" layer=2"]
[free name="other_hyouji_moji" layer=2"]
[free name="cook_hyouji_moji" layer=2"]


[jump storage="item_hyouji_macro.ks" target=*first]






