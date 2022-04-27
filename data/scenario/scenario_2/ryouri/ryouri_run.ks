
;データ読み込み
*start
[call storage="scenario_2/item/cook_item_data_new.ks"]
[call storage="scenario_2/item/recipe_data.ks"]
[call storage="scenario_2/ryouri/ryouri_serihu.ks"]
[call storage="scenario_2/ryouri/ryouri_serihu_tuika.ks"]
[skipstop]
*cook_first

[if exp="f.s_wesuta==1"]
;[bg storage="kisidandaidokoro_tasogare.jpg" time=50]
[else]
[bg storage="kisidandaidokoro_tasogare.jpg" time=50]
[endif]
[bg storage="ryouri.jpg" time=500]
[playbgm storage="cook_musmus.ogg"]
[cook_image_data]
[cook_image_hyouji]
;テストコード
;[eval exp="f.friend=1"]

[message_settei_ad]

;一人の場合レシピ選択へ飛ぶ
[if exp="f.friend==0"]
[eval exp="f.eat_target[0]=1"]
[jump target=*recipe_sel]
[elsif exp="f.friend==1"]
[eval exp="f.eat_target[1]=1"]
[image layer=3 page=fore name="chara" storage="mini_chara/rans_mini.png" x=550 y=200]
[jump target=*recipe_sel]
[elsif exp="f.friend==2"]
[eval exp="f.eat_target[2]=1"]
[image layer=3 page=fore name="chara" storage="mini_chara/lion_mini.png"  x=550 y=200]
[jump target=*recipe_sel]
[elsif exp="f.friend==3"]
[eval exp="f.eat_target[3]=1"]
[image layer=3 page=fore name="chara" storage="mini_chara/kra_mini.png" x=550 y=200]
[jump target=*recipe_sel]

[endif]


[emb exp="tf.dare_serihu"][p]
[message_kakusu_ad]
[iscript]
f.eat_target=[0,0,0,0,0];
tf.eat_target_ima=[
'irain_icon.png',
'mini_chara/rans_mini.png',
'mini_chara/lion_mini.png',
'mini_chara/kra_mini.png',
0
];
tf.dare_x=0;
tf.dare_x_c=-19;
tf.dare_y=150;
tf.dare_y_c=150;
tf.dare_sel=4;
tf.tuika_spice=0;
tf.spice_tuika_ok=0;
tf.dare=0;
tf.msg_n=0;
[endscript]

;---------------------ボタン表示
*dare_sel

[if exp="tf.dare==0"]
[eval exp="tf.dare_y_c=140"]
[endif]
[image layer=2 page=fore storage="face_waku.png" x=&tf.dare_x y=&tf.dare_y]
[image layer=1 page=fore storage=&tf.eat_target_ima[tf.dare] x=&tf.dare_x_c y=&tf.dare_y_c]
[button graphic="button/toumei_button_r.png" target=&tf.dare_target[tf.dare] enterimg="face_waku_under.png" height="300" width="200" x=&tf.dare_x y=&tf.dare_y]
;
;[glink target=&tf.dare_target[tf.dare] text=&tf.dare_msg[tf.msg_n] size=17 width=600 x=&tf.dare_x y=&tf.dare_y]

[iscript]
tf.dare+=1;
tf.msg_n+=1;
tf.dare_x+=200;
tf.dare_y_c=150;
tf.dare_x_c+=200;
tf.dare_sel=tf.dare_sel-1;
[endscript]

[if exp="tf.dare_sel>0"]
[jump target=*dare_sel]
[endif]
[eval exp="tf.dare_x=65"]
[eval exp="tf.dare_y=200"]
[s]
;-----------------
*dare_target_1
[eval exp="f.eat_target[0]=1"]
[jump target=*recipe_sel]
*dare_target_2
[eval exp="f.eat_target[1]=1"]
[jump target=*recipe_sel]
*dare_target_3
[eval exp="f.eat_target[2]=1"]
[jump target=*recipe_sel]
*dare_target_4
[eval exp="f.eat_target[3]=1"]
[jump target=*recipe_sel]
*dare_target_5
[eval exp="f.eat_target[4]=1"]
[jump target=*recipe_sel]


;レシピの種類を選ぶ
*recipe_sel
[freeimage layer=1]
[freeimage layer=2]

[message_settei_ad]
どのレシピにしよう？[p]
[message_kakusu_ad]
[eval exp="tf.dare_x=80"]
[eval exp="tf.dare_y=100"]


;レシピあるか確認、一つでもあればジャンプ、なければ拒否メッセ
[recipe_confirm]

[eval exp="tf.ryouri_cho=2"]
[iscript]
tf.ryouri_cho_ite=[
'ryouri/cake.png',
'ryouri/toast.png',
'ryouri/nimono.png',
];
tf.recipe_name=[
'菓子',
'パン',
'料理',
];
tf.recipe_choice_target=[
'*sweet_ok',
'*toast_ok',
'*souzai_ok',
];

[endscript]
*ryouri_cho
[button graphic="button/toumei_button_r.png" name="button_icon" target=&tf.recipe_choice_target[tf.ryouri_cho] clickse="load_complete.ogg" x=&tf.dare_x y=&tf.dare_y]
;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" name="button_icon" height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
;アイコン
[image layer=1 page=fore storage=&tf.ryouri_cho_ite[tf.ryouri_cho] name="button_icon" height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
;文字
[eval exp="tf.dare_x=tf.dare_x+20"]
[eval exp="tf.dare_y=tf.dare_y+80"]
[ptext layer=1 face="makinas" text=&tf.recipe_name[tf.ryouri_cho]  name="button_icon"  size=17 x=&tf.dare_x y=&tf.dare_y]

[if exp="tf.ryouri_cho>0"]
[eval exp="tf.dare_x=tf.dare_x+200"]
[eval exp="tf.dare_y=100"]
[eval exp="tf.ryouri_cho=tf.ryouri_cho-1"]
[jump target=*ryouri_cho]
[endif]



;キャンセル
[eval exp="tf.dare_x=tf.dare_x-290"]
[eval exp="tf.dare_y=tf.dare_y+80"]
[glink target=*ryouri_end text="戻る" exp="f.ryouri_stop=1" face="makinas" size=17 width=100 x=&tf.dare_x y=&tf.dare_y]
[eval exp="tf.dare_x=tf.dare_x+290"]

;やめるボタン
[button graphic="button/modoru_button.png" fix=true name="modoru" exp="f.ryouri_stop=1" target=*ryouri_end x=719 y=10]
[ptext layer=3 text="料理をやめる" size=10 face="makinas" name="yameru" color=black x=720 y=53]
[s]

*souzai_ok
[cm]
[free name="button_icon" layer=1]
[if exp="tf.souzai_hyouji==1"]
[jump target=*souzai_hyouji]
[else]
[message_settei_ad]
レシピがありません[p]
[message_kakusu_ad]
[jump target=*recipe_sel]
[endif]
*toast_ok
[cm]
[free name="button_icon" layer=1]
[if exp="tf.bread_hyouji==1"]
[jump target=*bread_hyouji]
[else]
[message_settei_ad]
レシピがありません[p]
[message_kakusu_ad]
[jump target=*recipe_sel]
[endif]
*sweet_ok
[cm]
[free name="button_icon" layer=1]
[if exp="tf.sweet_hyouji==1"]
[jump target=*cake_hyouji]
[else]
[message_settei_ad]
レシピがありません[p]
[message_kakusu_ad]
[jump target=*recipe_sel]
[endif]

[cm]
[jump target=*recipe_sel]


;---------------------レシピボタン表示
*souzai_hyouji


[free name="food" layer=3]
[cm]

;レシピの種類で場合わけ、それぞれのデータを操作用データに入力
[if exp="tf.souzai_hyouji==1"]
[eval exp="tf.ryouri_kaisuu=16"]
[eval exp="tf.bread_hyouji=0"]
[eval exp="tf.sweet_hyouji=0"]
[iscript]
tf.ryouri_num = tf.souzai_num;
tf.ryouri_num_no = tf.souzai_num_no;
tf.ryouri = f.dinner;
tf.ryouri_array = f.cusine;
[endscript]
[endif]
[jump target=*ryouri_hyouji_0]

*bread_hyouji
[free name="food" layer=3]
[cm]
[if exp="tf.bread_hyouji==1"]
[eval exp="tf.ryouri_kaisuu=5"]
[eval exp="tf.souzai_hyouji=0"]
[eval exp="tf.sweet_hyouji=0"]
[iscript]
tf.ryouri_num = tf.bread_num;
tf.ryouri_num_no = tf.bread_num_no;
tf.ryouri = f.bread;
tf.ryouri_array = f.toast;
[endscript]
[endif]
[jump target=*ryouri_hyouji_0]

*cake_hyouji
[free name="food" layer=3]
[cm]
[if exp="tf.sweet_hyouji==1"]
[eval exp="tf.ryouri_kaisuu=8"]
[eval exp="tf.souzai_hyouji=0"]
[eval exp="tf.bread_hyouji=0"]
[iscript]
tf.ryouri_num = tf.sweet_num;
tf.ryouri_num_no = tf.sweet_num_no;
tf.ryouri = f.sweet;
tf.ryouri_array = f.cake;
[endscript]

[endif]
[jump target=*ryouri_hyouji_0]

*ryouri_hyouji_0
[message_kakusu_ad]
;ボタン座標初期化
;レシピによって表示場所変える
[if exp="tf.bread_hyouji==1||tf.sweet_hyouji==1"]
[eval exp="tf.dare_x=100"]
[elsif exp="tf.souzai_hyouji==1"]
[eval exp="tf.dare_x=90"]
[endif]

;ジャンプ先を追加材料かレシピかで場合わけ
[eval exp="tf.ryouri_target=[]"]

[if exp="tf.tuika_button_hyouji==1"]
[eval exp="tf.ryouri_target = tf.tuika_target"]
[else]
[eval exp="tf.ryouri_target = tf.recipe_target"]
[endif]

[eval exp="tf.dare_y=40"]
[eval exp="tf.ryouri_index=0"]
[eval exp="tf.nigyoume=0"]

;------------------------------------------------レシピ選択ボタン
;キャンセルボタン



[if exp="tf.tuika_button_hyouji==1"]
;追加なしボタン
[glink target=*tuika_no_go text="追加しない" size=16 exp="tf.tuika_nasi=1" face="makinas" width=100 x=600 y=450]
[glink target=*tuika_sel text="戻る" size=16 face="makinas" width=100 x=600 y=550]

[elsif exp="tf.tuika_button_hyouji!=1"]
[glink target=*recipe_return text="戻る" size=16 face="makinas" width=100 x=600 y=550]
[endif]

*dare_y_shokika
[eval exp="tf.dare_y=40"]
*ryouri_hyouji


[if exp="tf.ryouri_index>14&&tf.nigyoume<3"]
[eval exp="tf.nigyoume=3"]

[if exp="tf.bread_hyouji==1||tf.sweet_hyouji==1"]
[eval exp="tf.dare_x=420"]
[elsif exp="tf.souzai_hyouji==1"]
[eval exp="tf.dare_x=tf.dare_x+180"]
[endif]

[jump target=*dare_y_shokika]
[endif]


[if exp="tf.ryouri_index>9&&tf.nigyoume<2"]
[eval exp="tf.nigyoume=2"]

[if exp="tf.bread_hyouji==1||tf.sweet_hyouji==1"]
[eval exp="tf.dare_x=420"]
[elsif exp="tf.souzai_hyouji==1"]
[eval exp="tf.dare_x=tf.dare_x+180"]
[endif]

[jump target=*dare_y_shokika]
[endif]

[if exp="tf.ryouri_index>4&&tf.nigyoume<1&&tf.sweet_hyouji!=1"]
*kaigyo
[eval exp="tf.nigyoume=1"]

[if exp="tf.bread_hyouji==1||tf.sweet_hyouji==1"]
[eval exp="tf.dare_x=420"]
[elsif exp="tf.souzai_hyouji==1"]
[eval exp="tf.dare_x=tf.dare_x+180"]
[endif]
[jump target=*dare_y_shokika]
;お菓子だけ改行の位置違う
[elsif exp="tf.ryouri_index>3&&tf.nigyoume<1&&tf.sweet_hyouji==1"]
[jump target=*kaigyo]
[endif]

[iscript]
if(tf.tuika_button_hyouji===1){
tf.ryouri_name=tf.add_material_name[tf.ryouri_index];
tf.ryouri_target = tf.tuika_target;
tf.ryouri_image=tf.add_material_image[tf.ryouri_index];

}else{
tf.true=0;
tf.ryouri_name = tf.ryouri[tf.ryouri_index].get("name")
tf.ryouri_image = tf.ryouri[tf.ryouri_index].get("image")
}
[endscript]
;メニューボタン表示-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[if exp="tf.ryouri_array[tf.ryouri_index]==0"]
;[glink target=*recipe_no text=&tf.ryouri_name font_color="black" face="makinas" graphic="button/toumei.png" size=16 width=130 x=&tf.dare_x y=&tf.dare_y]
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
[ptext layer=1 page=fore storage="?????" face=makinas size=16 x=&tf.dare_x y=&tf.dare_y]
[elsif exp="tf.ryouri_array[tf.ryouri_index]>0"]
[button graphic="button/toumei_button_r.png" target=&tf.ryouri_target[tf.ryouri_index]  clickse="load_complete.ogg" x=&tf.dare_x y=&tf.dare_y]
;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
;アイコン
[image layer=1 page=fore storage=&tf.ryouri_image height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
[eval exp="tf.font_dare_y=tf.dare_y+80"]
[html top=&tf.font_dare_y left=&tf.dare_x]

<html>
<head>
<style>
.p1{
width:85px;
height:25px;
color:white;
font-size:13px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.ryouri_name"]
</div>
</div>
</body>
</html>
[endhtml]
;[ptext layer=1 page=fore text=&tf.ryouri_name size=16 face="makinas" x=&tf.dare_x y=&tf.font_dare_y]

;[button target=&tf.ryouri_target[tf.ryouri_index] text=&tf.ryouri_name  face="makinas" graphic="button/toumei_button_r.png" size=16 width=130 x=&tf.dare_x y=&tf.dare_y]
;[suki_kirai_chara][suki_kirai_chara_hyouji]
[endif]

[eval exp="tf.dare_y=tf.dare_y+105"]
[eval exp="tf.ryouri_kaisuu=tf.ryouri_kaisuu-1"]
[eval exp="tf.ryouri_index=tf.ryouri_index+1"]

[if exp="tf.ryouri_kaisuu>0"]
[jump target=*ryouri_hyouji]
[endif]
[s]
;----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*recipe_return
[freeimage layer=1]
[jump target=*recipe_sel]

*tuika_sel
[freeimage layer=1]
[eval exp="tf.tuika_button_hyouji=0"]
[if exp="tf.souzai_hyouji==1"]
[jump target=*souzai_hyouji]
[elsif exp="tf.bread_hyouji==1"]
[jump target=*bread_hyouji]
[elsif exp="tf.sweet_hyouji==1"]
[jump target=*cake_hyouji]
[endif]

*cook_first_go
[cm]
[freeimage layer=1]
[jump target=*cook_first]

*recipe_no
[cm]
[freeimage layer=1]
[if exp="tf.tuika_button_hyouji==1"]
[message_settei_ad]
材料を持っていません！[p]
[else]
[message_settei_ad]
レシピがありません[p]
[endif]
[jump target=*ryouri_hyouji_0]

;レシピフラグ番号入れる
*tuika_mate_0
[cm]
[eval exp="tf.recipe_number=0"]


[jump target=*tuika_mate_confirm]
*tuika_mate_1
[cm]
[eval exp="tf.recipe_number=1"]


[jump target=*tuika_mate_confirm]
*tuika_mate_2
[cm]
[eval exp="tf.recipe_number=2"]

[jump target=*tuika_mate_confirm]
*tuika_mate_3
[cm]
[eval exp="tf.recipe_number=3"]

[jump target=*tuika_mate_confirm]
*tuika_mate_4
[cm]
[eval exp="tf.recipe_number=4"]

[jump target=*tuika_mate_confirm]
*tuika_mate_5
[cm]
[eval exp="tf.recipe_number=5"]
[jump target=*tuika_mate_confirm]
*tuika_mate_6
[cm]
[eval exp="tf.recipe_number=6"]
[jump target=*tuika_mate_confirm]
*tuika_mate_7
[cm]
[eval exp="tf.recipe_number=7"]
[jump target=*tuika_mate_confirm]
*tuika_mate_8
[cm]
[eval exp="tf.recipe_number=8"]
[jump target=*tuika_mate_confirm]
*tuika_mate_9
[cm]
[eval exp="tf.recipe_number=9"]
[jump target=*tuika_mate_confirm]
*tuika_mate_10
[cm]
[eval exp="tf.recipe_number=10"]
[jump target=*tuika_mate_confirm]
*tuika_mate_11
[cm]
[eval exp="tf.recipe_number=11"]
[jump target=*tuika_mate_confirm]
*tuika_mate_12
[cm]
[eval exp="tf.recipe_number=12"]
[jump target=*tuika_mate_confirm]
*tuika_mate_13
[cm]
[eval exp="tf.recipe_number=13"]
[jump target=*tuika_mate_confirm]
*tuika_mate_14
[cm]
[eval exp="tf.recipe_number=14"]
[jump target=*tuika_mate_confirm]
*tuika_mate_15
[cm]
[eval exp="tf.recipe_number=15"]
[jump target=*tuika_mate_confirm]

*tuika_mate_confirm
[freeimage layer=1]
;選択したレシピの追加材料と、そのパラメータを取得
[add_material_confirm]

;料理指南本
[if exp="f.other_item_stock[31]>0&&f.friend==0"]
[eval exp="tf.sel_recipe_effect_number_1=tf.sel_recipe_effect_number_1*2"]
[eval exp="tf.sel_recipe_effect_number_2=tf.sel_recipe_effect_number_2*2"]
[eval exp="tf.sel_recipe_effect_number_3=tf.sel_recipe_effect_number_3*2"]
[endif]


;追加材料のボタンを表示;-------------------------------------------------------------------------------------------------------
*tuika_mate_hyouji_0
[message_kakusu_ad]
;表示する回数は追加材料の数
[eval exp="tf.ryouri_kaisuu = tf.add_mate_num"]
[eval exp="tf.ryouri_array=tf.add_material_stock"]
[eval exp="tf.ryouri_index = 0"]
[eval exp="tf.tuika_nasi=0"]
[eval exp="tf.nigyoume=0"]
;追加材料の表示フラグ
[eval exp="tf.tuika_button_hyouji=1"]
[jump target=*ryouri_hyouji_0]





*tuika_no_go
[cm]
[freeimage layer=1]
[jump target=*cook_pre_hyouji]


*tuika_target_1
[cm]
[eval exp="tf.tuika_target=0"]

[jump target=*tuika_value_confirm]
*tuika_target_2
[cm]
[eval exp="tf.tuika_target=1"]

[jump target=*tuika_value_confirm]
*tuika_target_3
[cm]
[eval exp="tf.tuika_target=2"]

[jump target=*tuika_value_confirm]
*tuika_target_4
[cm]
[eval exp="tf.tuika_target=3"]
[jump target=*tuika_value_confirm]
*tuika_target_5
[cm]
[eval exp="tf.tuika_target=4"]
[jump target=*tuika_value_confirm]
*tuika_target_6
[cm]
[eval exp="tf.tuika_target=5"]
[jump target=*tuika_value_confirm]
*tuika_target_7
[cm]
[eval exp="tf.tuika_target=6"]
[jump target=*tuika_value_confirm]
*tuika_target_8
[cm]
[eval exp="tf.tuika_target=7"]
[jump target=*tuika_value_confirm]
*tuika_target_9
[cm]
[eval exp="tf.tuika_target=8"]
[jump target=*tuika_value_confirm]
*tuika_target_10
[cm]
[eval exp="tf.tuika_target=9"]
[jump target=*tuika_value_confirm]
*tuika_target_11
[cm]
[eval exp="tf.tuika_target=10"]
[jump target=*tuika_value_confirm]
*tuika_target_12
[cm]
[eval exp="tf.tuika_target=11"]
[jump target=*tuika_value_confirm]
*tuika_target_13
[cm]
[eval exp="tf.tuika_target=12"]
[jump target=*tuika_value_confirm]
*tuika_target_14
[cm]
[eval exp="tf.tuika_target=13"]
[jump target=*tuika_value_confirm]
*tuika_target_15
[cm]
[eval exp="tf.tuika_target=14"]
[jump target=*tuika_value_confirm]
*tuika_target_16
[cm]
[eval exp="tf.tuika_target=15"]
[jump target=*tuika_value_confirm]
*tuika_target_17
[cm]
[eval exp="tf.tuika_target=16"]
[jump target=*tuika_value_confirm]
*tuika_target_18
[cm]
[eval exp="tf.tuika_target=17"]
[jump target=*tuika_value_confirm]
*tuika_target_19
[cm]
[eval exp="tf.tuika_target=18"]
[jump target=*tuika_value_confirm]
*tuika_target_20
[cm]
[eval exp="tf.tuika_target=19"]
[jump target=*tuika_value_confirm]




*tuika_value_confirm
[freeimage layer=1]

;追加材料のパラメータ、変数に代入
[iscript]

tf.add_material_id_value=0;
tf.add_material_name_value=0;
tf.add_material_parameter_1_value=0;
tf.add_material_parameter_2_value=0;
tf.add_material_parameter_3_value=0;
tf.add_material_effect_1_number_value=0;
tf.add_material_effect_2_number_value=0;
tf.add_material_effect_3_number_value=0;
tf.add_material_love_f_value=0;
tf.add_material_hate_f_value=0;
tf.add_material_image_value=0;
tf.add_material_stock_value=0;

tf.add_material_id_value=tf.add_material_id[tf.tuika_target];
tf.add_material_name_value=tf.add_material_name[tf.tuika_target];
tf.add_material_parameter_1_value=tf.add_material_parameter_1[tf.tuika_target];
tf.add_material_parameter_2_value=tf.add_material_parameter_2[tf.tuika_target];
tf.add_material_parameter_3_value=tf.add_material_parameter_3[tf.tuika_target];
tf.add_material_effect_1_number_value=tf.add_material_effect_1_number[tf.tuika_target];
tf.add_material_effect_2_number_value=tf.add_material_effect_2_number[tf.tuika_target];
tf.add_material_effect_3_number_value=tf.add_material_effect_3_number[tf.tuika_target];
tf.add_material_love_f_value=tf.add_material_love_f[tf.tuika_target];
tf.add_material_hate_f_value=tf.add_material_hate_f[tf.tuika_target];
tf.add_material_image_value=tf.add_material_image[tf.tuika_target];
tf.add_material_stock_value=tf.add_material_stock[tf.tuika_target];
[endscript]

;料理指南本あり
[if exp="f.other_item_stock[31]>0&&f.friend==0"]
[eval exp="tf.add_material_effect_1_number_value=tf.add_material_effect_1_number_value*2"]
[eval exp="tf.add_material_effect_2_number_value=tf.add_material_effect_2_number_value*2"]
[eval exp="tf.add_material_effect_3_number_value=tf.add_material_effect_3_number_value*2"]
[endif]





;料理結果予想表示

*cook_pre_hyouji





[if exp="tf.spice_tuika_ok!=1&&tf.tuika_nasi==1"]
[iscript]
tf.cook_pre_x =330;
tf.cook_pre_y =10;
[endscript]
[elsif exp="tf.spice_tuika_ok!=1"]
[iscript]
tf.cook_pre_x =230;
tf.cook_pre_y =10;
[endscript]
[elsif exp="tf.spice_tuika_ok==1&&tf.tuika_nasi==1"]
[iscript]
tf.cook_pre_x =230;
tf.cook_pre_y =10;
[endscript]
[elsif exp="tf.spice_tuika_ok==1"]
[iscript]
tf.cook_pre_x =130;
tf.cook_pre_y =10;
[endscript]
[endif]

;結果画像表示
;料理名と、追加材料表示
;[ptext layer=1 page=fore text=&tf.sel_recipe_name size=18 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
[html top=&tf.cook_pre_y left=&tf.cook_pre_x]
<html>
<head>
<style>
.p1{
width:140px;
height:25px;
color:white;
font-size:16px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.sel_recipe_name"]
</div>
</div>
</body>
</html>
[endhtml]


[iscript]
tf.cook_pre_x_image=tf.cook_pre_x +35;
tf.cook_pre_y_image=tf.cook_pre_y +30;
[endscript]
;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]
;アイコン
[image layer=1 page=fore storage=&tf.sel_recipe_image height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]

;レシピ画像表示
[if exp="tf.tuika_nasi!=1"]
[eval exp="tf.cook_pre_x=tf.cook_pre_x+160"]
[ptext layer=1 page=fore text="＋" size=30 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
[eval exp="tf.cook_pre_x=tf.cook_pre_x+40"]
;[ptext layer=1 page=fore text=&tf.add_material_name_value size=18 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]

[html top=&tf.cook_pre_y left=&tf.cook_pre_x]
<html>
<head>
<style>
.p1{
width:140px;
height:25px;
color:white;
font-size:16px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.add_material_name_value"]
</div>
</div>
</body>
</html>
[endhtml]


[iscript]
tf.cook_pre_x_image=tf.cook_pre_x_image+200;
[endscript]
;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]
;アイコン
[image layer=1 page=fore storage=&tf.add_material_image_value height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]




[endif]

;スパイス表示

[if exp="tf.spice_tuika_ok==1&&tf.tuika_nasi==1"]

[eval exp="tf.cook_pre_x=tf.cook_pre_x+160"]
[ptext layer=1 page=fore text="＋" size=30 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
[eval exp="tf.cook_pre_x=tf.cook_pre_x+40"]
;[ptext layer=1 page=fore text=&tf.add_material_name_value size=18 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
[jump target=*spice_hyouji]

[elsif exp="tf.spice_tuika_ok==1"]
[eval exp="tf.cook_pre_x=tf.cook_pre_x+160"]
[ptext layer=1 page=fore text="＋" size=30 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
[eval exp="tf.cook_pre_x=tf.cook_pre_x+40"]
;[ptext layer=1 page=fore text=&tf.add_spice_name_value size=18 name="recipe_name" face="makinas" x=&tf.cook_pre_x y=&tf.cook_pre_y color=black visible=true]
*spice_hyouji


[html top=&tf.cook_pre_y left=&tf.cook_pre_x]
<html>
<head>
<style>
.p1{
width:140px;
height:25px;
color:white;
font-size:16px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.add_spice_name_value"]
</div>
</div>
</body>
</html>
[endhtml]


[iscript]
tf.cook_pre_x_image=tf.cook_pre_x_image+200;
[endscript]
;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]
;アイコン
[image layer=1 page=fore storage=&tf.add_spice_image_value height="80" width="80" x=&tf.cook_pre_x_image y=&tf.cook_pre_y_image]

[endif]



[iscript]

if(f.eat_target[0]==1){

tf.jibun_eat=1;

}else{

tf.friend_eat=1;

}
[endscript]



[if exp="tf.jibun_eat==1"]
[jump target=*jibun_eat]
[elsif exp="tf.friend_eat==1"]
[jump target=*friend_eat_hyouji]
[endif]
*button_hyouji


;実行ボタン表示
[glink target=*cook_go text="料理を始める！" face="makinas" size=17 width=300 x=10 y=500]
;キャンセルボタン表示
[glink target=*cook_cancel text="ひとつ前に戻る" face="makinas" size=17 width=300 x=420 y=500]
;スパイス追加
[glink target=*tuika_spice text="追加スパイス" face="makinas" size=16 width=130 x=580 y=320]


[s]

*cook_cancel

[freeimage layer=1]
[freeimage layer=2]
[eval exp="tf.tuika_target=[]"]
[eval exp="tf.spice_tuika_ok=0"]
[eval exp="tf.tuika_spice=0"]
[eval exp="tf.tuika_nasi=0"]
[eval exp="tf.amount_score=0"]
[cm]
[jump target=*tuika_mate_confirm]



*cook_go


[eval exp="tf.jikkou=1"]

[clearfix name="modoru"]
[free name="yameru" layer=3]


[freeimage layer=1]
[freeimage layer=2]
[cm]
[image layer=3 page=fore storage="siro.jpg" name="siro" x=0 y=0 time=1000]
[playse storage="houchou_koukaonlabo.ogg"]
[wait time=2500]
[playse storage="niru_tairakomori.ogg"]
[wait time=1500]
[playse storage="tin_koukaonlabo.ogg"]
[wait time=1500]
[playse storage="item_status_up_onjin.ogg"]
[if exp="tf.friend_eat==1"]
[jump target=*friend_eat]
[endif]
;ここから自分処理
[if exp="tf.tuika_nasi==1"]

[eval exp="f.irain_tec=f.irain_tec+tf.sel_recipe_effect_number_1"]
[eval exp="f.irain_brain=f.irain_brain+tf.sel_recipe_effect_number_2"]
[eval exp="f.irain_charm=f.irain_charm+tf.sel_recipe_effect_number_3"]

[elsif exp="tf.tuika_nasi!=1"]

[eval exp="f.irain_tec=f.irain_tec+tf.sel_recipe_effect_number_1+tf.add_material_effect_1_number_value"]
[eval exp="f.irain_brain=f.irain_brain+tf.sel_recipe_effect_number_2+tf.add_material_effect_2_number_value"]
[eval exp="f.irain_charm=f.irain_charm+tf.sel_recipe_effect_number_3+tf.add_material_effect_3_number_value"]
[endif]

[if exp="tf.spice_tuika_ok==1"]
[eval exp="f.irain_tec=f.irain_tec+tf.add_spice_effect_1_number_value"]
[eval exp="f.irain_brain=f.irain_brain+tf.add_spice_effect_2_number_value"]
[eval exp="f.irain_charm=f.irain_charm+tf.add_spice_effect_3_number_value"]
[endif]

;アイテムを減らす
[if exp="tf.tuika_nasi!=1"]
[eval exp="f.cook_item_stock[tf.add_material_id_value]=f.cook_item_stock[tf.add_material_id_value]-1"]
[endif]

[if exp="tf.spice_tuika_ok==1"]
[eval exp="f.cook_item_stock[tf.add_spice_id_value]=f.cook_item_stock[tf.add_spice_id_value]-1"]
[endif]

[jump target=*jibun_eat]

*friend_eat
;仲間に食べさせる

[if exp="tf.tuika_serihu_love==1&&tf.menu_serihu_love==1"]

[eval exp="tf.menu_love_word=1"]

[elsif exp="tf.tuika_serihu_love==1"]

[eval exp="tf.menu_love_word=1"]

[elsif exp="tf.tuika_serihu_hate==1"]

[eval exp="tf.menu_hate_word=1"]

[elsif exp="tf.menu_serihu_hate==1"]

[eval exp="tf.menu_hate_word=1"]

[else]

[eval exp="tf.menu_word=1"]

[endif]

[eval exp="tf.jikkou=0"]
[free layer=3 name="siro"]
[fadeoutbgm time=3000]
;セリフ

[if exp="f.s_wesuta==1"]
[bg storage="hune_shokudou.jpg" time=500]
[else]
[bg storage="kisidandaidokoro_tasogare.jpg" time=500]
[endif]

[message_settei_ad]
[if exp="tf.love_target==1"]
[chara_serihu_rans]
[elsif exp="tf.love_target==2"]
[chara_serihu_lion]
[elsif exp="tf.love_target==3"]
[chara_serihu_kra]
[endif]



[if exp="f.eat_target[1]==1"]
[koukando1_rans_ryouri]
[eval exp="f.ranskonkando = f.ranskonkando + f.love_score"]
[elsif exp="f.eat_target[2]==1"]
[koukando1_lion_ryouri]
[eval exp="f.lionkonkando = f.lionkonkando + f.love_score"]
[elsif exp="f.eat_target[3]==1"]
[koukando1_kra_ryouri]
[eval exp="f.krakonkando = f.krakonkando + f.love_score"]
[elsif exp="f.eat_target[4]==1"]
[koukando1_glif_ryouri]
[eval exp="f.glifkonkando = f.glifkonkando + f.love_score"]
[endif]

[jump target=*ryouri_end]
[s]





*jibun_eat
;自分で食べる

;ステータス再表示

[eval exp="tf.status_base_x=225"]
[eval exp="tf.status_base_y=140"]
[eval exp="tf.status_face_x=233"]
[eval exp="tf.status_face_y=182"]



[eval exp="tf.status_name_x=395-40"]
[eval exp="tf.status_name_y=178"]
[eval exp="tf.status_hp_x=390-40"]
[eval exp="tf.status_hp_y=210"]
[eval exp="tf.status_hp_moji_x=430-40"]
[eval exp="tf.status_hp_moji_y=205"]

;ステータスベース
[image layer=1 page=fore storage="status_window.png" name="status" visible=true x=&tf.status_base_x y=&tf.status_base_y]

;イレインの画像
[image layer=2 page=fore storage="irain_icon.png" name="status" width=110 height=147 x=&tf.status_face_x y=&tf.status_face_y]
;名前
[ptext layer=2 page=fore text="&f.name" face="makinas" name="status" size=21 x=&tf.status_name_x y=&tf.status_name_y]

[ptext layer=2 page=fore visible="true" text="HP:" face="makinas" name="status" size=20 x=&tf.status_hp_x y=&tf.status_hp_y]

[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]
[ptext layer=2 page=fore visible="true" text="&f.irain_hp" face="makinas" name="status_hp" size=30 x=&tf.status_hp_moji_x y=&tf.status_hp_moji_y]


[eval exp="tf.irain_tec_x=395-45"]
[eval exp="tf.irain_tec_number_x=450-45"]

[eval exp="tf.irain_tec_y=245"]
[eval exp="tf.irain_tec_number_y=246"]


[eval exp="tf.irain_brain_x=395-45"]
[eval exp="tf.irain_brain_number_x=450-45"]

[eval exp="tf.irain_brain_y=270"]
[eval exp="tf.irain_brain_number_y=271"]


[eval exp="tf.irain_charm_x=395-45"]
[eval exp="tf.irain_charm_number_x=450-45"]

[eval exp="tf.irain_charm_y=295"]
[eval exp="tf.irain_charm_number_y=296"]

;技術
[ptext layer=2 page=fore text="技術" name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" face="makinas" size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" face="makinas" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" face="makinas" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]



[if exp="tf.jikkou==1"]

[eval exp="tf.jikkou=0"]
[free layer=3 name="siro"]
[message_settei_ad]
[if exp="f.irain_tec>tf.irain_tec_current"]
[eval exp="tf.irain_tec_number_x_up=tf.irain_tec_number_x+35"]
[image layer=1 page=fore storage="status_up.gif" x=&tf.irain_tec_number_x_up y=&tf.irain_tec_number_y]
[eval exp="tf.up_suuti=f.irain_tec-tf.irain_tec_current"]
技術が[emb exp=tf.up_suuti]アップ！[p]
[endif]



[if exp="f.irain_brain>tf.irain_brain_current"]
[eval exp="tf.irain_brain_number_x_up=tf.irain_brain_number_x+35"]
[image layer=1 page=fore storage="status_up.gif" x=&tf.irain_brain_number_x_up y=&tf.irain_brain_number_y]
[eval exp="tf.up_suuti=f.irain_brain-tf.irain_brain_current"]
頭脳が[emb exp=tf.up_suuti]アップ！[p]
[endif]

[if exp="f.irain_charm>tf.irain_charm_current"]
[eval exp="tf.irain_charm_number_x_up=tf.irain_charm_number_x+35"]
[image layer=1 page=fore storage="status_up.gif" x=&tf.irain_charm_number_x_up y=&tf.irain_charm_number_y]
[eval exp="tf.up_suuti=f.irain_charm-tf.irain_charm_current"]
魅力が[emb exp=tf.up_suuti]アップ！[p]
[endif]
[fadeoutbgm time=1000]
お腹がいっぱいになった！！[p]
[eval exp="f.ryouri_sumi=1"]
[wait time=500]
[jump target=*ryouri_end]
[s]

[endif]


;アップステータス表示

;レシピの座標位置
[eval exp="tf.irain_tec_x_plus=tf.irain_tec_number_x+50"]
[eval exp="tf.irain_brain_x_plus=tf.irain_brain_number_x+50"]
[eval exp="tf.irain_charm_x_plus=tf.irain_charm_number_x+50"]

[eval exp="tf.irain_tec_x_plus_2=tf.irain_tec_x_plus+12"]
[eval exp="tf.irain_brain_x_plus_2=tf.irain_brain_x_plus+12"]
[eval exp="tf.irain_charm_x_plus_2=tf.irain_charm_x_plus+12"]

;追加材料の座標位置
[eval exp="tf.irain_tec_x_plus_3=tf.irain_tec_x_plus_2+23"]
[eval exp="tf.irain_brain_x_plus_3=tf.irain_brain_x_plus_2+23"]
[eval exp="tf.irain_charm_x_plus_3=tf.irain_charm_x_plus_2+23"]

[eval exp="tf.irain_tec_x_plus_4=tf.irain_tec_x_plus_3+12"]
[eval exp="tf.irain_brain_x_plus_4=tf.irain_brain_x_plus_3+12"]
[eval exp="tf.irain_charm_x_plus_4=tf.irain_charm_x_plus_3+12"]

;スパイスの座標位置
[eval exp="tf.irain_tec_x_plus_5=tf.irain_tec_x_plus_4+23"]
[eval exp="tf.irain_brain_x_plus_5=tf.irain_brain_x_plus_4+23"]
[eval exp="tf.irain_charm_x_plus_5=tf.irain_charm_x_plus_4+23"]

[eval exp="tf.irain_tec_x_plus_6=tf.irain_tec_x_plus_5+12"]
[eval exp="tf.irain_brain_x_plus_6=tf.irain_brain_x_plus_5+12"]
[eval exp="tf.irain_charm_x_plus_6=tf.irain_charm_x_plus_5+12"]




;レシピ上昇１
[if exp="tf.sel_recipe_effect_number_1>=0"]
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_tec_x_plus y=&tf.irain_tec_y]
[endif]

[if exp="tf.sel_recipe_effect_number_1==0"]
[ptext layer=2 page=fore text='0' name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_2 y=&tf.irain_tec_y]
[elsif exp="tf.sel_recipe_effect_number_1!=0"]
[ptext layer=2 page=fore text=&tf.sel_recipe_effect_number_1 name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_2 y=&tf.irain_tec_y]
[endif]

;レシピ上昇２
[if exp="tf.sel_recipe_effect_number_2>=0"]
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_brain_x_plus y=&tf.irain_brain_y]
[endif]

[if exp="tf.sel_recipe_effect_number_2==0"]
[ptext layer=2 page=fore text='0' name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_2 y=&tf.irain_brain_y]
[elsif exp="tf.sel_recipe_effect_number_2!=0"]
[ptext layer=2 page=fore text=&tf.sel_recipe_effect_number_2 name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_2 y=&tf.irain_brain_y]
[endif]

;レシピ上昇３
[if exp="tf.sel_recipe_effect_number_3>=0"]
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_charm_x_plus y=&tf.irain_charm_y]
[endif]

[if exp="tf.sel_recipe_effect_number_3==0"]
[ptext layer=2 page=fore text='0' name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_2 y=&tf.irain_charm_y]
[elsif exp="tf.sel_recipe_effect_number_3!=0"]
[ptext layer=2 page=fore text=&tf.sel_recipe_effect_number_3 name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_2 y=&tf.irain_charm_y]
[endif]

[if exp="tf.tuika_nasi!=1"]
;追加材料1
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_tec_x_plus_3 y=&tf.irain_tec_y]
[if exp="tf.add_material_effect_1_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_4 y=&tf.irain_tec_y]
[elsif exp="tf.add_material_effect_1_number_value!=0"]
[ptext layer=2 page=fore text=&tf.add_material_effect_1_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_4 y=&tf.irain_tec_y]
[endif]

[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_brain_x_plus_3 y=&tf.irain_brain_y]
;追加材料2
[if exp="tf.add_material_effect_2_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_4 y=&tf.irain_brain_y]
[elsif exp="tf.add_material_effect_2_number_value!=0"]
[ptext layer=2 page=fore text=&tf.add_material_effect_2_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_4 y=&tf.irain_brain_y]
[endif]

[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_charm_x_plus_3 y=&tf.irain_charm_y]
;追加材料3
[if exp="tf.add_material_effect_3_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_4 y=&tf.irain_charm_y]
[elsif exp="tf.add_material_effect_3_number_value!=0]
[ptext layer=2 page=fore text=&tf.add_material_effect_3_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_4 y=&tf.irain_charm_y]
[endif]

[endif]

;スパイス

[if exp="tf.spice_tuika_ok==1"]
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_tec_x_plus_5 y=&tf.irain_tec_y]
[if exp="tf.add_spice_effect_1_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_6 y=&tf.irain_tec_y]
[elsif exp="tf.add_spice_effect_1_number_value!=0"]
[ptext layer=2 page=fore text=&tf.add_spice_effect_1_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_tec_x_plus_6 y=&tf.irain_tec_y]
[endif]

[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_brain_x_plus_5 y=&tf.irain_brain_y]

[if exp="tf.add_spice_effect_2_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_6 y=&tf.irain_brain_y]
[elsif exp="tf.add_spice_effect_2_number_value!=0"]
[ptext layer=2 page=fore text=&tf.add_spice_effect_2_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_brain_x_plus_6 y=&tf.irain_brain_y]
[endif]

[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=15 x=&tf.irain_charm_x_plus_5 y=&tf.irain_charm_y]

[if exp="tf.add_spice_effect_3_number_value==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_6 y=&tf.irain_charm_y]
[elsif exp="tf.add_spice_effect_3_number_value!=0]
[ptext layer=2 page=fore text=&tf.add_spice_effect_3_number_value name="status_skill" face="makinas" size=20 x=&tf.irain_charm_x_plus_6 y=&tf.irain_charm_y]
[endif]

[endif]

;現在のステータス数値を記憶（UP表示用
[eval exp="tf.irain_tec_current = f.irain_tec"]
[eval exp="tf.irain_brain_current = f.irain_brain"]
[eval exp="tf.irain_charm_current = f.irain_charm"]
[jump target=*button_hyouji]


*friend_eat_hyouji


;各上昇値
;好感度計算
[eval exp="tf.menu_serihu_love=0"]
[eval exp="tf.tuika_serihu_love=0"]

[iscript]
tyrano.plugin.kag.variable.tf.love_score=0;
tyrano.plugin.kag.variable.tf.love_target=0;
tf.menu_serihu_love =0;
tf.menu_serihu_hate =0;
tf.menu_love_score=0;
tf.tuika_love_score=0;
tf.tuika_serihu_hate =0;
tf.tuika_serihu_love =0;
tf.spice_love_score=0;


if(this.kag.stat.f["eat_target"][1]===1){
tf.love_target=1;
}else if(f.eat_target[2]===1){
tf.love_target=2;
}else if(f.eat_target[3]===1){
tf.love_target=3;
}


if(f.eat_target[tf.love_target]===1){

//好きな食材；追加材料


////////偏食矯正あり/////////////////
if(f.other_item_stock[32]>0){

if(tf.love_target===1){
tf.add_material_love_f_value = 1;
}else if(tf.love_target===2){
tf.add_material_love_f_value = 2;
}else if(tf.love_target===3){
tf.add_material_love_f_value = 3;
}
}
///////////////////////////////////




if(tf.add_spice_id_value===28&&tf.spice_tuika_ok===1&&tf.tuika_nasi!=1){
tf.love_score-=1;
tf.tuika_serihu_hate =1;
tf.tuika_love_score="-1";
}else if(tf.add_spice_id_value===29&&tf.spice_tuika_ok===1&&tf.tuika_nasi!=1){
tf.love_score+=2;
tf.tuika_serihu_love =1;
tf.tuika_love_score="+2";

}else if(tf.add_material_love_f_value===tf.love_target&&tf.tuika_nasi!=1){
tf.love_score+=2;
tf.tuika_serihu_love =1;
tf.tuika_love_score="+2";
}else if(tf.add_material_hate_f_value===tf.love_target&&tf.tuika_nasi!=1){
tf.love_score-=1;
tf.tuika_serihu_hate =1;
tf.tuika_love_score="-1";
}else if(tf.tuika_nasi===1){
//プラマイなし
}else if(tf.tuika_nasi!=1){
tf.love_score+=1;
tf.tuika_love_score="+1";
}

//好きな食材；レシピ

////////偏食矯正あり/////////////////
if(f.other_item_stock[32]>0){

if(tf.love_target===1){
tf.sel_recipe_love_f = 1;
}else if(tf.love_target===2){
tf.sel_recipe_love_f  = 2;
}else if(tf.love_target===3){
tf.sel_recipe_love_f = 3;
}
}
///////////////////////////////////

if(tf.add_spice_id_value===28&&tf.spice_tuika_ok===1){
tf.love_score-=1;
tf.menu_serihu_hate =1;
tf.menu_love_score="-1";
}else if(tf.add_spice_id_value===29&&tf.spice_tuika_ok===1){
tf.love_score+=5;
tf.menu_serihu_love =1;
tf.menu_love_score="+5";
}else if(tf.sel_recipe_love_f===tf.love_target){
tf.love_score+=2;
tf.menu_serihu_love =1;
tf.menu_love_score="+2";
}else if(tf.sel_recipe_hate_f===tf.love_target){
tf.love_score-=1;
tf.menu_serihu_hate =1;
tf.menu_love_score="-1";
}else{
tf.love_score+=1;
tf.menu_love_score="+1";
}

//スパイス

////////偏食矯正あり/////////////////
if(f.other_item_stock[32]>0){

if(tf.love_target===1){
tf.add_spice_love_f_value = 1;
}else if(tf.love_target===2){
tf.add_spice_love_f_value = 2;
}else if(tf.love_target===3){
tf.add_spice_love_f_value = 3;
}
}
///////////////////////////////////


if(tf.spice_tuika_ok===1){

if(tf.add_spice_id_value===28){
tf.love_score-=1;
tf.spice_love_score="-1";
}else if(tf.add_spice_id_value===29){
tf.love_score+=2;
tf.spice_love_score="+2";
}else if(tf.add_spice_love_f_value===tf.love_target){
tf.love_score+=2;
tf.spice_love_score="+2";
}else if(tf.add_spice_hate_f_value===tf.love_target){
tf.love_score-=1;
tf.spice_love_score="-1";
}else if(tf.spice_tuika_ok===1){
tf.love_score+=1;
tf.spice_love_score="+1";
}
}

}

[endscript]



;ステータス再表示
[free name="chara" layer=3]
[eval exp="tf.status_base_x=225"]
[eval exp="tf.status_base_y=140"]
[eval exp="tf.status_face_x=233"]
[eval exp="tf.status_face_y=182"]



[eval exp="tf.status_name_x=395-40"]
[eval exp="tf.status_name_y=178"]
[eval exp="tf.status_hp_x=390-40"]
[eval exp="tf.status_hp_y=210"]
[eval exp="tf.status_hp_moji_x=420"]
[eval exp="tf.status_hp_moji_y=205"]

;ステータスベース
[image layer=1 page=fore storage="status_window.png" visible=true name="status" x=&tf.status_base_x y=&tf.status_base_y]

;イレインの画像
[if exp="f.eat_target[0]==1"]
[eval exp="tf.chara_image='irain_icon.png'"]
[elsif exp="f.eat_target[1]==1"]
[eval exp="tf.chara_image='mini_chara/rans_mini.png'"]
[elsif exp="f.eat_target[2]==1"]
[eval exp="tf.chara_image='mini_chara/lion_mini.png'"]
[elsif exp="f.eat_target[3]==1"]
[eval exp="tf.chara_image='mini_chara/kra_mini.png'"]
[endif]

[image layer=2 page=fore storage=&tf.chara_image name="status" width=110 height=147 x=&tf.status_face_x y=&tf.status_face_y]

;名前
[if exp="f.eat_target[1]==1"]
[ptext layer=2 page=fore text="ランスロット" face="makinas" name="status" size=21 x=&tf.status_name_x y=&tf.status_name_y]
[elsif exp="f.eat_target[2]==1"]
[ptext layer=2 page=fore text="ライオネス" face="makinas" name="status" size=21 x=&tf.status_name_x y=&tf.status_name_y]
[elsif exp="f.eat_target[3]==1"]
[ptext layer=2 page=fore text="クライスト" face="makinas" name="status" size=21 x=&tf.status_name_x y=&tf.status_name_y]
[elsif exp="f.eat_target[4]==1"]
[ptext layer=2 page=fore text="グリフレット" face="makinas" name="status" size=21 x=&tf.status_name_x y=&tf.status_name_y]

[endif]

[ptext layer=2 page=fore visible="true" text="好感度:" face="makinas" name="status" size=20 x=&tf.status_hp_x y=&tf.status_hp_y]

[if exp="f.eat_target[1]==1"]
[eval exp="f.men_koukando=f.ranskonkando"]
[elsif exp="f.eat_target[2]==1"]
[eval exp="f.men_koukando=f.lionkonkando"]
[elsif exp="f.eat_target[3]==1"]
[eval exp="f.men_koukando=f.krakonkando"]
[elsif exp="f.eat_target[4]==1"]
[eval exp="f.men_koukando=f.glifkonkando"]
[endif]

[ptext layer=2 page=fore visible="true" text="&f.men_koukando" face="makinas" name="status_hp" size=30 x=&tf.status_hp_moji_x y=&tf.status_hp_moji_y]



[eval exp="tf.irain_tec_x=395-45"]
[eval exp="tf.irain_tec_number_x=460"]

[eval exp="tf.irain_tec_y=265"]
[eval exp="tf.irain_tec_number_y=266"]


[eval exp="tf.irain_brain_x=395-45"]
[eval exp="tf.irain_brain_number_x=460"]

[eval exp="tf.irain_brain_y=290"]
[eval exp="tf.irain_brain_number_y=291"]


[eval exp="tf.irain_charm_x=395-45"]
[eval exp="tf.irain_charm_number_x=460"]

[eval exp="tf.irain_charm_y=315"]
[eval exp="tf.irain_charm_number_y=316"]

[eval exp="tf.irain_ryouri_x=395-45"]
[eval exp="tf.irain_ryouri_number_x=460"]
[eval exp="tf.irain_ryouri_number_x_2=tf.irain_ryouri_number_x+15"]

[eval exp="tf.irain_ryouri_y=tf.irain_charm_y+25"]
[eval exp="tf.irain_ryouri_number_y=tf.irain_charm_number_y+25"]

[eval exp="tf.utiwake_x=tf.irain_tec_x+25"]
[eval exp="tf.utiwake_y=tf.irain_tec_y-25"]
;内訳
[ptext layer=2 page=fore text="⭐︎内訳⭐︎" name="status_skill" face="makinas" size=15 x=&tf.utiwake_x y=&tf.utiwake_y]
;レシピ
[ptext layer=2 page=fore text="レシピ" name="status_skill" face="makinas" size=15 x=&tf.irain_tec_x y=&tf.irain_tec_y]
[ptext layer=2 page=fore text="&tf.menu_love_score" name="status_skill" face="makinas" size=18 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;追加レシピ
[if exp="tf.tuika_nasi!=1"]
[ptext layer=2 page=fore text="追加材料" name="status_skill" face="makinas" size=15 x=&tf.irain_brain_x y=&tf.irain_brain_y]
[ptext layer=2 page=fore text="&tf.tuika_love_score" name="status_skill" face="makinas" size=18 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]
[endif]

;スパイス
[if exp="tf.spice_tuika_ok==1"]
[ptext layer=2 page=fore text="スパイス" name="status_skill" face="makinas" size=15 x=&tf.irain_charm_x y=&tf.irain_charm_y]
[ptext layer=2 page=fore text="&tf.spice_love_score" name="status_skill" face="makinas" size=18 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]
[endif]

;料理Point



[if exp="f.friend==1"]
[eval exp="tf.renailevel = f.ransrenailevel"]
[elsif exp="f.friend==2"]
[eval exp="tf.renailevel = f.lionrenailevel"]
[elsif exp="f.friend==3"]
[eval exp="tf.renailevel = f.krarenailevel"]
[endif]

[if exp="tf.renailevel>5"]
[eval exp="tf.renailevel=5"]
[endif]

[eval exp="tf.ryouri_p=tf.renailevel"]


[ptext layer=2 page=fore text="料理Point" name="status_skill" face="makinas" size=15 x=&tf.irain_ryouri_x y=&tf.irain_ryouri_y]
[ptext layer=2 page=fore text="+" name="status_skill" face="makinas" size=18 x=&tf.irain_ryouri_number_x y=&tf.irain_ryouri_number_y]
[ptext layer=2 page=fore text=&tf.ryouri_p name="status_skill" face="makinas" size=18 x=&tf.irain_ryouri_number_x_2 y=&tf.irain_ryouri_number_y]

[if exp="f.men_koukando>99"]
[eval exp="tf.status_hp_moji_x_1=tf.status_hp_moji_x+60"]
[elsif exp="f.men_koukando>9"]
[eval exp="tf.status_hp_moji_x_1=tf.status_hp_moji_x+40"]
[else]
[eval exp="tf.status_hp_moji_x_1=tf.status_hp_moji_x+30"]
[endif]

[eval exp="tf.amount_score=tf.love_score+tf.ryouri_p"]

;料理指南本あり
[if exp="f.other_item_stock[31]>0&&f.friend==0"]
[eval exp="tf.amount_score=tf.amount_score*2"]
[endif]

[if exp="tf.amount_score>=0"]
[ptext layer=2 page=fore text="＋" name="status_skill" face="makinas" size=23 x=&tf.status_hp_moji_x_1 y=&tf.status_hp_moji_y]
[elsif exp="tf.amount_score<0"]
[endif]

[eval exp="tf.status_hp_moji_x_2=tf.status_hp_moji_x_1+20"]

[if exp="tf.amount_score==0"]
[ptext layer=2 page=fore text="0" name="status_skill" face="makinas" size=27 x=&tf.status_hp_moji_x_2 y=&tf.status_hp_moji_y]
[else]
[ptext layer=2 page=fore text=&tf.amount_score name="status_skill" face="makinas" size=27 x=&tf.status_hp_moji_x_2 y=&tf.status_hp_moji_y]
[endif]
[anim name="status_skill" top="-=800" time=3]
[anim name="status_skill" top="+=800" time=200]
[anim name="status_skill" top="-=100" time=500]
[anim name="status_skill" top="+=100" time=700]



[jump target=*button_hyouji]




;アップ好感度表示





;スパイス追加の処置
*tuika_spice

[freeimage layer=1]
[freeimage layer=2]
*tuika_spice_re
[cm]

[eval exp="tf.tuika_spice=1"]
[add_material_confirm]

*spice_hyouji_0

[eval exp="tf.ryouri_kaisuu=6"]
[message_kakusu_ad]
;ボタン座標初期化
[eval exp="tf.dare_x=50"]

;ジャンプ先を追加材料かレシピかで場合わけ
[eval exp="tf.ryouri_target=[]"]

[eval exp="tf.ryouri_target = tf.spice_target"]

[eval exp="tf.dare_y=10"]
[eval exp="tf.ryouri_index=0"]
[eval exp="tf.ryouri_array=tf.add_material_stock"]
[eval exp="tf.nigyoume=0"]

;------------------------------------------------レシピ選択ボタン

;追加なしボタン
[glink target=*tuika_spice_nasi text="追加しない" size=16 face="makinas" width=100 x=600 y=450]


*dare_y_shokika_tuika
[eval exp="tf.dare_y=50"]
*ryouri_hyouji_tuika

[if exp="tf.ryouri_index>11&&tf.nigyoume<2"]
[eval exp="tf.nigyoume=2"]
[eval exp="tf.dare_y=190"]
[jump target=*dare_y_shokika_tuika]
[endif]

[if exp="tf.ryouri_index>5&&tf.nigyoume<1"]
*kaigyo_tuika
[eval exp="tf.nigyoume=1"]
[eval exp="tf.dare_y=95"]
[jump target=*dare_y_shokika_tuika]
[endif]

[iscript]
tf.ryouri_name=tf.add_material_name[tf.ryouri_index];
tf.ryouri_target = tf.spice_target;
tf.ryouri_image=tf.add_material_image[tf.ryouri_index];
[endscript]

;アイコンわく
[image layer=1 page=fore storage="ryouri/ryouri_waku.png" height="80" width="80" x=&tf.dare_x y=&tf.dare_y]

;スパイス選択ボタン
[if exp="tf.ryouri_array[tf.ryouri_index]==0"]
;[glink target=*spice_no text=&tf.ryouri_name font_color="black" face="makinas" size=16 width=130 x=&tf.dare_x y=&tf.dare_y]
[elsif exp="tf.ryouri_array[tf.ryouri_index]>0"]
;[glink target=&tf.ryouri_target[tf.ryouri_index] text=&tf.ryouri_name  face="makinas" graphic="button/toumei_ryouri.png" size=16 width=130 x=&tf.dare_x y=&tf.dare_y]
[button graphic="button/toumei_button_r.png" target=&tf.ryouri_target[tf.ryouri_index]  clickse="load_complete.ogg" x=&tf.dare_x y=&tf.dare_y]
;アイコン
[image layer=1 page=fore storage=&tf.ryouri_image height="80" width="80" x=&tf.dare_x y=&tf.dare_y]
[endif]



[eval exp="tf.font_dare_y=tf.dare_y+80"]
[eval exp="tf.font_dare_x=tf.dare_x-20"]

[if exp="tf.ryouri_array[tf.ryouri_index]!=0"]
[html top=&tf.font_dare_y left=&tf.font_dare_x]
<html>
<head>
<style>
.p1{
width:130px;
height:25px;
color:white;
font-size:13px;
font-family:makinas;
}
</style>
</head>
<body>
<div class="p1">
<div align="center">
[emb exp="tf.ryouri_name"]
</div>
</div>
</body>
</html>
[endhtml]
[endif]
[eval exp="tf.dare_x=tf.dare_x+125"]
[eval exp="tf.ryouri_kaisuu=tf.ryouri_kaisuu-1"]
[eval exp="tf.ryouri_index=tf.ryouri_index+1"]

[if exp="tf.ryouri_kaisuu>0"]
[jump target=*ryouri_hyouji_tuika]
[endif]
[s]

*tuika_spice_nasi
[cm]
[eval exp="tf.spice_tuika_ok=0"]
[freeimage layer=1]
[freeimage layer=2]
[jump target=*cook_pre_hyouji]

*spice_no
[cm]

[message_settei_ad]
持っていません！[p]
[jump target=*tuika_spice_re]

*spice_target_1
[freeimage layer=1]
[freeimage layer=2]
[cm]
[eval exp="tf.spice_target=0"]
[jump target=*spice_confirm]
*spice_target_2
[cm]
[freeimage layer=1]
[freeimage layer=2]

[eval exp="tf.spice_target=1"]
[jump target=*spice_confirm]
*spice_target_3
[cm]
[freeimage layer=1]
[freeimage layer=2]

[eval exp="tf.spice_target=2"]
[jump target=*spice_confirm]
*spice_target_4
[cm]
[freeimage layer=1]
[freeimage layer=2]

[eval exp="tf.spice_target=3"]
[jump target=*spice_confirm]
*spice_target_5
[cm]
[freeimage layer=1]
[freeimage layer=2]

[eval exp="tf.spice_target=4"]
[jump target=*spice_confirm]
*spice_target_6
[cm]
[freeimage layer=1]
[freeimage layer=2]

[eval exp="tf.spice_target=5"]
[jump target=*spice_confirm]


*spice_confirm
;追加材料のパラメータ、変数に代入
[iscript]
tf.spice_tuika_ok=1;
tf.add_spice_id_value=tf.add_material_id[tf.spice_target];
tf.add_spice_name_value=tf.add_material_name[tf.spice_target];
tf.add_spice_parameter_1_value=tf.add_material_parameter_1[tf.spice_target];
tf.add_spice_parameter_2_value=tf.add_material_parameter_2[tf.spice_target];
tf.add_spice_parameter_3_value=tf.add_material_parameter_3[tf.spice_target];
tf.add_spice_effect_1_number_value=tf.add_material_effect_1_number[tf.spice_target];
tf.add_spice_effect_2_number_value=tf.add_material_effect_2_number[tf.spice_target];
tf.add_spice_effect_3_number_value=tf.add_material_effect_3_number[tf.spice_target];
tf.add_spice_love_f_value=tf.add_material_love_f[tf.spice_target];
tf.add_spice_hate_f_value=tf.add_material_hate_f[tf.spice_target];
tf.add_spice_image_value=tf.add_material_image[tf.spice_target];
tf.add_spice_stock_value=tf.add_material_stock[tf.spice_target];
[endscript]

;料理指南本あり
[if exp="f.other_item_stock[31]>0&&f.friend==0"]
[eval exp="tf.add_spice_effect_1_number_value=tf.add_spice_effect_1_number_value*2"]
[eval exp="tf.add_spice_effect_2_number_value=tf.add_spice_effect_2_number_value*2"]
[eval exp="tf.add_spice_effect_3_number_value=tf.add_spice_effect_3_number_value*2"]
[endif]

[jump target=*cook_pre_hyouji]


*ryouri_end
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[cm]
[clearfix]


[if exp="f.friend>0"]
[eval exp="f.love_score=0"]
[eval exp="f.recipe_number=0"]
[eval exp="f.souzai_hyouji=0"]
[eval exp="f.bread_hyouji=0"]
[eval exp="f.sweet_hyouji=0"]
[endif]

[refresh_hanyou]

[if exp="f.irain_heya==1"]


[eval exp="f.ryouri_stop=0"]
[status_hyouji]




[elsif exp="f.friend>0&&f.date_now==1"]
;デート中
;live2d登録し直し
[if exp="f.friend==1"]
[live2d_new name="rans2" model_id="rans2" lip=true jname="ランスロット"]
[live2d_fadeout time=50]
[live2d_rans_show_sekkin]
[elsif exp="f.friend==2"]
[live2d_new name="lioness" model_id="lioness" lip=true jname="ライオネス"]
[live2d_fadeout time=50]
[live2d_lion_show_sekkin]
[elsif exp="f.friend==3"]
[live2d_new name="aho" model_id="aho" lip=true jname="クライスト"]
[live2d_fadeout time=50]
[live2d_kra_show_sekkin]
[endif]
[fadeoutbgm time=1000]

[if exp="f.ryouri_stop==1&&f.s_wesuta==1&&f.event_main_18_days>0"]
[eval exp="f.ryouri_stop=0"]
[jump storage="scenario_2/map_event/map_event_w/map_event_yadoya_macro.ks" target=*date_time]
[elsif exp="f.ryouri_stop!=1&&f.s_wesuta==1&&f.event_main_18_days>0"]
[eval exp="f.ryouri_comp=1"]
[jump storage="scenario_2/map_event/map_event_w/map_event_yadoya_macro.ks" target=*date_end]
[elsif exp="f.ryouri_stop==1&&f.s_wesuta==1"]
[eval exp="f.ryouri_stop=0"]
[jump storage="scenario_2/map_event/map_event_w/map_event_shokudo_macro.ks" target=*date_time]
[elsif exp="f.ryouri_stop!=1&&f.s_wesuta==1"]
[eval exp="f.ryouri_comp=1"]
[jump storage="scenario_2/map_event/map_event_w/map_event_shokudo_macro.ks" target=*date_end]
[elsif exp="f.ryouri_stop==1"]
[eval exp="f.ryouri_stop=0"]
[jump storage="scenario_2/map_event/map_event_honbu_macro.ks" target=*date_time]
[elsif exp="f.ryouri_stop!=1"]
[eval exp="f.ryouri_comp=1"]
[jump storage="scenario_2/map_event/map_event_honbu_macro.ks" target=*date_time]

[endif]

[endif]





