*ryouri_serihu

;料理コマンドセリフ



[eval exp="tf.dare_serihu='誰に作る？'"]


[iscript]

tf.dare_msg=[
'自分で食べる',
'ランスロット',
'ライオネス',
'クライスト',
'グリフレット'
];

tf.dare_target=[
'*dare_target_1',
'*dare_target_2',
'*dare_target_3',
'*dare_target_4',
'*dare_target_5'
];

f.eat_target=[0,0,0,0,0];

tf.recipe_target=[
'*tuika_mate_0',
'*tuika_mate_1',
'*tuika_mate_2',
'*tuika_mate_3',
'*tuika_mate_4',
'*tuika_mate_5',
'*tuika_mate_6',
'*tuika_mate_7',
'*tuika_mate_8',
'*tuika_mate_9',
'*tuika_mate_10',
'*tuika_mate_11',
'*tuika_mate_12',
'*tuika_mate_13',
'*tuika_mate_14',
'*tuika_mate_15'
];

[endscript]

[macro name="recipe_confirm"]
[iscript]
tf.souzai_hyouji=0;
tf.bread_hyouji=0;
tf.sweet_hyouji=0;
tf.souzai_num=[];
tf.bread_num=[];
tf.sweet_num=[];
tf.souzai_num_no=[];
tf.bread_num_no=[];
tf.sweet_num_no=[];

//テスト用
//f.cake[1]=1;
//f.cusine =[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
//f.toast =[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
//f.cake =[1,1,1,1,1,1,1,1,1,1];
//f.cook_item_stock =[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

//souzai
for(i=0;i<17;i++){
     if(f.cusine[i]===1){
     	tf.souzai_hyouji=1;
     	tf.souzai_num.push(i);
     }else if(f.cusine[i]!==1){
     	tf.souzai_num_no.push(i);       	
     }
}
//pan
for(i=0;i<6;i++){
     if(f.toast[i]==1){
     	tf.bread_hyouji=1;
     	tf.bread_num.push(i);
    }else if(f.toast[i]!==1){
     	tf.bread_num_no.push(i);     
     }
}
//sweet
for(i=0;i<9;i++){
     if(f.cake[i]==1){
     	tf.sweet_hyouji=1;
     	tf.sweet_num.push(i);
     }else if(f.cake[i]!==1){
     	tf.sweet_num_no.push(i);       	
     }
}

[endscript]
[endmacro]



[macro name="add_material_confirm"]

[iscript]

if(tf.tuika_spice==1){

//追加材料のデータ配列を取得
tf.add_material_array = [28,29,30,31,32,33];


}else if(tf.souzai_hyouji===1){

//追加材料のデータ配列を取得
tf.add_material_array = f.dinner[tf.recipe_number].get("add_mate")
//名前、上昇パラ、好き嫌いキャラのデータも取得
tf.sel_recipe_name = f.dinner[tf.recipe_number].get("name")
tf.sel_recipe_parameter_1= f.dinner[tf.recipe_number].get("parameter_1")
tf.sel_recipe_parameter_2 = f.dinner[tf.recipe_number].get("parameter_2")
tf.sel_recipe_parameter_3 = f.dinner[tf.recipe_number].get("parameter_3")
tf.sel_recipe_effect_number_1 = f.dinner[tf.recipe_number].get("effect_1_number")
tf.sel_recipe_effect_number_2 = f.dinner[tf.recipe_number].get("effect_2_number")
tf.sel_recipe_effect_number_3 = f.dinner[tf.recipe_number].get("effect_3_number")
tf.sel_recipe_love_f = f.dinner[tf.recipe_number].get("love_f")
tf.sel_recipe_hate_f = f.dinner[tf.recipe_number].get("hate_f")
tf.sel_recipe_image = f.dinner[tf.recipe_number].get("image")

}else if(tf.bread_hyouji===1){
//追加材料のデータ配列を取得
tf.add_material_array = f.bread[tf.recipe_number].get("add_mate")
//名前、上昇パラ、好き嫌いキャラのデータも取得
tf.sel_recipe_name = f.bread[tf.recipe_number].get("name")
tf.sel_recipe_parameter_1 = f.bread[tf.recipe_number].get("parameter_1")
tf.sel_recipe_parameter_2 = f.bread[tf.recipe_number].get("parameter_2")
tf.sel_recipe_parameter_3 = f.bread[tf.recipe_number].get("parameter_3")
tf.sel_recipe_effect_number_1 = f.bread[tf.recipe_number].get("effect_1_number")
tf.sel_recipe_effect_number_2 = f.bread[tf.recipe_number].get("effect_2_number")
tf.sel_recipe_effect_number_3 = f.bread[tf.recipe_number].get("effect_3_number")
tf.sel_recipe_love_f = f.bread[tf.recipe_number].get("love_f")
tf.sel_recipe_hate_f = f.bread[tf.recipe_number].get("hate_f")
tf.sel_recipe_image = f.bread[tf.recipe_number].get("image")

}else if(tf.sweet_hyouji===1){
//追加材料のデータ配列を取得
 tf.add_material_array = f.sweet[tf.recipe_number].get("add_mate")
 //名前、上昇パラ、好き嫌いキャラのデータも取得
tf.sel_recipe_name = f.sweet[tf.recipe_number].get("name")
tf.sel_recipe_parameter_1 = f.sweet[tf.recipe_number].get("parameter_1")
tf.sel_recipe_parameter_2 = f.sweet[tf.recipe_number].get("parameter_2")
tf.sel_recipe_parameter_3 = f.sweet[tf.recipe_number].get("parameter_3")
tf.sel_recipe_effect_number_1 = f.sweet[tf.recipe_number].get("effect_1_number")
tf.sel_recipe_effect_number_2 = f.sweet[tf.recipe_number].get("effect_2_number")
tf.sel_recipe_effect_number_3 = f.sweet[tf.recipe_number].get("effect_3_number")
tf.sel_recipe_love_f = f.sweet[tf.recipe_number].get("love_f")
tf.sel_recipe_hate_f = f.sweet[tf.recipe_number].get("hate_f")
tf.sel_recipe_image = f.sweet[tf.recipe_number].get("image")
}



　//配列の要素の数（追加材料の数を取得
tf.add_mate_num = tf.add_material_array.length;

//追加材料のパラメータ配列
tf.add_material_id=[];
tf.add_material_name=[];
tf.add_material_parameter_1=[];
tf.add_material_parameter_2=[];
tf.add_material_parameter_3=[];
tf.add_material_effect_1_number=[];
tf.add_material_effect_2_number=[];
tf.add_material_effect_3_number=[];
tf.add_material_love_f=[];
tf.add_material_hate_f=[];
tf.add_material_image=[];
tf.add_material_stock=[];

	i=0;
while(i<tf.add_mate_num){
	 tf.add_mate_value = tf.add_material_array[i];
	
	 tf.add_material_id.push(f.cook_item_list[tf.add_mate_value].number);
	 tf.add_material_name.push(f.cook_item_list[tf.add_mate_value].name);
	 tf.add_material_parameter_1.push(f.cook_item_list[tf.add_mate_value].parameter_1);
	 tf.add_material_parameter_2.push(f.cook_item_list[tf.add_mate_value].parameter_2);
	 tf.add_material_parameter_3.push(f.cook_item_list[tf.add_mate_value].paramater_3);
	 tf.add_material_effect_1_number.push(f.cook_item_list[tf.add_mate_value].effect_1_number);
	 tf.add_material_effect_2_number.push(f.cook_item_list[tf.add_mate_value].effect_2_number);
	 tf.add_material_effect_3_number.push(f.cook_item_list[tf.add_mate_value].effect_3_number);
	 tf.add_material_love_f.push(f.cook_item_list[tf.add_mate_value].love_f);
	 tf.add_material_hate_f.push(f.cook_item_list[tf.add_mate_value].hate_f);
	 tf.add_material_image.push(f.cook_item_list[tf.add_mate_value].image);
	 tf.add_material_stock.push(f.cook_item_stock[tf.add_mate_value]);

    i++;
}

//ボタンのターゲット配列;追加材料よう
tf.tuika_target =[
'*tuika_target_1',
'*tuika_target_2',
'*tuika_target_3',
'*tuika_target_4',
'*tuika_target_5',
'*tuika_target_6',
'*tuika_target_7',
'*tuika_target_8',
'*tuika_target_9',
'*tuika_target_10',
'*tuika_target_11',
'*tuika_target_12',
'*tuika_target_13',
'*tuika_target_14',
'*tuika_target_15',
'*tuika_target_16',
'*tuika_target_17',
'*tuika_target_18',
'*tuika_target_19',
'*tuika_target_20'
];

tf.spice_target =[
'*spice_target_1',
'*spice_target_2',
'*spice_target_3',
'*spice_target_4',
'*spice_target_5',
'*spice_target_6',
'*spice_target_7',
'*spice_target_8',
'*spice_target_9',
'*spice_target_10',
'*spice_target_11',
'*spice_target_12',
'*spice_target_13',
'*spice_target_14',
'*spice_target_15',
'*spice_target_16',
'*spice_target_17',
'*spice_target_18',
'*spice_target_19',
'*spice_target_20'
];



[endscript]
[endmacro]


[macro name="suki_kirai_chara"]
[iscript]
tf.favo_x= tf.dare_x - 15;
tf.favo_y= tf.dare_y - 50;


/////////
if(tf.souzai_hyouji===1&&tf.tuika_button_hyouji===1){

     tf.recipe_love_f =  tf.add_material_love_f[tf.ryouri_index];

      	     		 		  
}else if(tf.souzai_hyouji===1){

   	//まず値を取得
     tf.recipe_love_f = f.dinner[tf.ryouri_index].get("love_f")
     
     //値が配列かどうか確認
     tf.love_f_hantei = Array.isArray(tf.recipe_love_f)
     
     //配列だった場合、食べさせるターゲットの数字と同じであれば入力
     if(tf.love_f_hantei===true){
     	
     	//
     	for(i=1;i<5;i++){
	 for(a=0;a<4;a++){

			if(f.eat_target[i]==1&&tf.recipe_love_f[a]==i){
			tf.recipe_love_f =  tf.recipe_love_f[a];}
           }
		}
     	//     
 	}

 }
 
 
//パン
if(tf.bread_hyouji==1&&tf.tuika_button_hyouji==1){
	tf.recipe_love_f =  tf.add_material_love_f[tf.ryouri_index];
}else if(tf.bread_hyouji==1){
	tf.recipe_love_f = f.bread[tf.ryouri_index].get("love_f")
}

//お菓子
if(tf.sweet_hyouji==1&&tf.tuika_button_hyouji==1){
	tf.recipe_love_f =  tf.add_material_love_f[tf.ryouri_index];
}else if(tf.sweet_hyouji==1){
	tf.recipe_love_f = f.sweet[tf.ryouri_index].get("love_f")
}
[endscript]

[endmacro]

[macro name="suki_kirai_chara_hyouji"]
[if exp="tf.recipe_love_f == 1&&f.eat_target[1]==1"]
[image layer=1 page=fore visible =true storage="rans_icon.png" width=70 height=76 x=&tf.favo_x y=&tf.favo_y]
[elsif exp="tf.recipe_love_f == 2&&f.eat_target[2]==1"]
[image layer=1 page=fore visible =true storage="lion_icon.png" width=70 height=76 x=&tf.favo_x y=&tf.favo_y]
[elsif exp="tf.recipe_love_f == 3&&f.eat_target[3]==1"]
[image layer=1 page=fore visible =true storage="klaist_icon.png" width=70 height=76 x=&tf.favo_x y=&tf.favo_y]
[elsif exp="tf.recipe_love_f == 5&&f.eat_target[4]==1"]
[image layer=1 page=fore visible =true storage="glif_icon.png" width=70 height=76 x=&tf.favo_x y=&tf.favo_y]
[endif]
[endmacro]



[macro name="koukando1_rans_ryouri"]

[if exp="f.love_score>0"]

[koukando_up]
;好感度をプラス
[if exp="f.ransrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.ransrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.ransrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.ransrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.ransrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.ransrenailevel>5"]
[eval exp="f.ransrenailevel = 5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[endif]

[elsif exp="f.love_score<0"]

[if exp="f.ransrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[elsif exp="f.ransrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[elsif exp="f.ransrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[elsif exp="f.ransrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[elsif exp="f.ransrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[elsif exp="f.ransrenailevel>5"]
[eval exp="f.ransrenailevel = 5"]
[eval exp="f.love_score=f.love_score+5"]
[endif]

[if exp="f.love_score>0"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.love_score<0"]
[eval exp="f.love_score_e=f.love_score*2/2"]
[r]好感度が[emb exp="f.love_score_e"]減りました。
[endif]

[endif]


;恋愛感度をプラス
[eval exp="f.ransrenaikando=f.ransrenaikando+2"]


;恋愛レベル計さん
[eval exp="f.renaikando=f.ransrenaikando"]
[eval exp="f.renailevel=f.ransrenailevel"]
*keisan1
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan1]
[endif]

[if exp="f.renailevel>5"]
[eval exp="f.renailevel=5"]
[endif]

[eval exp="f.ransrenailevel=f.renailevel"]
[eval exp="f.ransrenaikando=f.renaikando"]

[endmacro]



[macro name="koukando1_kra_ryouri"]

[if exp="f.love_score>0"]

[koukando_up]
;好感度をプラス
[if exp="f.krarenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.krarenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.krarenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.krarenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.krarenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.krarenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[endif]

[elsif exp="f.love_score<0"]

[if exp="f.krarenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[elsif exp="f.krarenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[elsif exp="f.krarenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[elsif exp="f.krarenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[elsif exp="f.krarenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[elsif exp="f.krarenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[endif]

[if exp="f.love_score>0"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.love_score<0"]
[eval exp="f.love_score_e=f.love_score*2/2"]
[r]好感度が[emb exp="f.love_score_e"]減りました。
[endif]


[endif]

;恋愛感度をプラス
[eval exp="f.krarenaikando=f.krarenaikando+3"]
;恋愛レベル計さん
[eval exp="f.renaikando=f.krarenaikando"]
[eval exp="f.renailevel=f.krarenailevel"]
*keisan5
[if exp="f.renaikando>=12"]
[eval exp="f.renaikando=f.renaikando-12"]
[eval exp="f.renailevel=f.renailevel+1"]

[endif]

[if exp="f.renaikando>=12"]
[jump target=*keisan5]
[endif]

[eval exp="f.krarenailevel=f.renailevel"]
[eval exp="f.krarenaikando=f.renaikando"]
[endmacro]



[macro name="koukando1_lion_ryouri"]

[if exp="f.love_score>0"]

[koukando_up]
;好感度をプラス
[if exp="f.lionrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.lionrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.lionrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.lionrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.lionrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.lionrenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[endif]

[elsif exp="f.love_score<0"]

[if exp="f.lionrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[elsif exp="f.lionrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[elsif exp="f.lionrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[elsif exp="f.lionrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[elsif exp="f.lionrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[elsif exp="f.lionrenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[endif]
;マイナスの場合
[if exp="f.love_score>0"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.love_score<0"]
[eval exp="f.love_score_e=f.love_score*2/2"]
[r]好感度が[emb exp="f.love_score_e"]減りました。
[endif]

[endif]

;恋愛感度をプラス
[eval exp="f.lionrenaikando=f.lionrenaikando+1"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.lionrenaikando"]
[eval exp="f.renailevel=f.lionrenailevel"]
*keisan9
[if exp="f.renaikando>=10"]
[eval exp="f.renaikando=f.renaikando-10"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=10"]
[jump target=*keisan9]
[endif]

[eval exp="f.lionrenailevel=f.renailevel"]
[eval exp="f.lionrenaikando=f.renaikando"]

[endmacro]

[macro name="koukando1_glif"]

[if exp="f.love_score>0"]

[koukando_up]
;好感度をプラス
[if exp="f.glifrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.glifrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.glifrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.glifrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.glifrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.glifrenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[r]好感度が[emb exp="f.love_score"]アップ！
[endif]

[elsif exp="f.love_score<0"]

[if exp="f.glifrenailevel==1"]
[eval exp="f.love_score=f.love_score+1"]
[elsif exp="f.glifrenailevel==2"]
[eval exp="f.love_score=f.love_score+2"]
[elsif exp="f.glifrenailevel==3"]
[eval exp="f.love_score=f.love_score+3"]
[elsif exp="f.glifrenailevel==4"]
[eval exp="f.love_score=f.love_score+4"]
[elsif exp="f.glifrenailevel==5"]
[eval exp="f.love_score=f.love_score+5"]
[elsif exp="f.glifrenailevel>5"]
[eval exp="f.love_score=f.love_score+5"]
[endif]

[if exp="f.love_score>0"]
[r]好感度が[emb exp="f.love_score"]アップ！
[elsif exp="f.love_score<0"]
[eval exp="f.love_score_e=f.love_score*2/2"]
[r]好感度が[emb exp="f.love_score_e"]減りました。
[endif]

[endif]

;恋愛感度をプラス
[eval exp="f.glifrenaikando=f.glifrenaikando+2"]

;恋愛レベル計さん
[eval exp="f.renaikando=f.glifrenaikando"]
[eval exp="f.renailevel=f.glifrenailevel"]
*keisan9
[if exp="f.renaikando>=5"]
[eval exp="f.renaikando=f.renaikando-5"]
[eval exp="f.renailevel=f.renailevel+1"]
[endif]

[if exp="f.renaikando>=5"]
[jump target=*keisan9]
[endif]

[eval exp="f.glifrenailevel=f.renailevel"]
[eval exp="f.glifrenaikando=f.renaikando"]
;グリフの恋愛レベル５より大きい場合５に直す
[if exp="f.glifrenailevel>5"]
[eval exp="f.glifrenailevel=5"]
[endif]

[endmacro]

;ランス料理結果
[macro name="chara_serihu_rans"]
;リフレッシュするため一次変数から記憶変数へ
[eval exp="f.love_score=tf.love_score"]
[eval exp="f.recipe_number = tf.recipe_number"]
[eval exp="f.souzai_hyouji = tf.souzai_hyouji "]
[eval exp="f.bread_hyouji = tf.bread_hyouji"]
[eval exp="f.sweet_hyouji = tf.sweet_hyouji"]

;キャラごとのフラグセリフ
[if exp="tf.love_target==1&&tf.menu_love_word==1"]

;-----------

;-----------
[rans_arms_normal]
[rans_body_normal]
[rans_exp_normal]
[rans_head_normal]
[live2d_fadein time=1000]

;--------------
[if exp="f.ransrenailevel>3"]
;美味しいね[p]
[ryouri_rans_like_3]
[jump target=*rans_serihu_end]
[elsif exp="f.ransrenailevel<4"]
;まあまあ[p]
[ryouri_rans_like_2]
[jump target=*rans_serihu_end]
[endif]
;-------------


[elsif exp="tf.love_target==1&&tf.menu_hate_word==1"]

;-----------------------

;------------------------
[rans_arms_normal]
[rans_body_normal]
[rans_exp_normal]
[rans_head_normal]
[live2d_fadein time=1000]

;不味い[p]
[ryouri_rans_hate]
[jump target=*rans_serihu_end]
[elsif exp="tf.love_target==1&&tf.menu_word==1"]

;-----------------------

;--------------------------
[rans_arms_normal]
[rans_body_normal]
[rans_exp_normal]
[rans_head_normal]
[live2d_fadein time=1000]

;-----------------------------
[if exp="f.sweet_hyouji==1&&f.recipe_number==1"]
[pai_rans]
[jump target=*rans_serihu_end]
[elsif exp="f.sweet_hyouji==1&&f.recipe_number==2"]
[cookie_rans]
[jump target=*rans_serihu_end]
[elsif exp="f.bread_hyouji==1||f.sweet_hyouji==1"]
[ryouri_rans_like_2]
[jump target=*rans_serihu_end]
[endif]
;---------------------------------

[if exp="tf.souzai_hyouji==1"]

[rans_arms_normal]
[rans_body_normal]
[rans_exp_normal]
[rans_head_normal]
[live2d_fadein time=1000]

[if exp="f.recipe_number==0"]
[sarada_rans]
;さらだ[p]
[elsif exp="f.recipe_number==1"]
[marine_rans]
;マリネ[p]
[elsif exp="f.recipe_number==2"]
[sinsen_rans]
;刺身[p]
[elsif exp="f.recipe_number==3"]
[atugiri_rans]
;厚切り[p]
[elsif exp="f.recipe_number==4"]
[nimono_rans]
;煮物[p]
[elsif exp="f.recipe_number==5"]
[guratan_rans]
;グラタン[p]
[elsif exp="f.recipe_number==6"]
[karei_rans]
;煮付け[p]
[elsif exp="f.recipe_number==7"]
[tenpura_rans]
;天ぷら[p]
[elsif exp="f.recipe_number==8"]
[unajuu_rans]
;うな重[p]
[elsif exp="f.recipe_number==9"]
[oden_rans]
;おでん[p]
[elsif exp="f.recipe_number==10"]
[kare_rans]
;カレー[p]
[elsif exp="f.recipe_number==11"]
[sichu_rans]
;しちゅ[p]
[elsif exp="f.recipe_number==12"]
[takikomi_rans]
;炊き込み[p]
[elsif exp="f.recipe_number==13"]
[itamesi_rans]
;イタ飯[p]
[elsif exp="f.recipe_number==14"]
[gyooza_rans]
;餃子[p]
[elsif exp="f.recipe_number==15"]
[hurai_rans]
;フライ[p]
[endif]

[endif]

*rans_serihu_end
[endif]

[live2d_fadeout time=1000]
;[live2d_delete_all][live2d_off]
[endmacro]

;ライオネス料理結果
[macro name="chara_serihu_lion"]
;リフレッシュするため一次変数から記憶変数へ
[eval exp="f.love_score=tf.love_score"]
[eval exp="f.recipe_number = tf.recipe_number"]
[eval exp="f.souzai_hyouji = tf.souzai_hyouji "]
[eval exp="f.bread_hyouji = tf.bread_hyouji"]
[eval exp="f.sweet_hyouji = tf.sweet_hyouji"]

;キャラごとのフラグセリフ
[if exp="tf.love_target==2&&tf.menu_love_word==1"]

;---------------

;----------------
[lioness_arms_normal]
[lioness_body_normal]
[lioness_face_normal]
[lioness_head_normal]
[live2d_fadein time=1000]


[if exp="f.lionrenailevel>3"]
;美味しいね[p]
[ryouri_lion_like_3]
[elsif exp="f.lionrenailevel<4"]
;まあまあ[p]
[ryouri_lion_like_2]
[endif]

[elsif exp="tf.love_target==2&&tf.menu_hate_word==1"]

;---------------

;-------------
[lioness_arms_normal]
[lioness_body_normal]
[lioness_face_normal]
[lioness_head_normal]
[live2d_fadein time=1000]

;不味い[p]
[ryouri_lion_hate]
[elsif exp="tf.love_target==2&&tf.menu_word==1"]

;---------------

;-----------
[lioness_arms_normal]
[lioness_body_normal]
[lioness_face_normal]
[lioness_head_normal]

[live2d_fadein time=1000]


[if exp="f.sweet_hyouji==1&&f.recipe_number==1"]
[pai_lion]
[jump target=*lion_serihu_end]
[elsif exp="f.sweet_hyouji==1&&f.recipe_number==2"]
[cookie_lion]
[jump target=*lion_serihu_end]
[elsif exp="f.bread_hyouji==1||f.sweet_hyouji==1"]
[ryouri_lion_like_2]
[jump target=*lion_serihu_end]
[endif]


[if exp="tf.souzai_hyouji==1"]


[if exp="f.recipe_number==0"]
[sarada_lion]
;さらだ[p]
[elsif exp="f.recipe_number==1"]
[marine_lion]
;マリネ[p]
[elsif exp="f.recipe_number==2"]
[sinsen_lion]
;刺身[p]
[elsif exp="f.recipe_number==3"]
[atugiri_lion]
;厚切り[p]
[elsif exp="f.recipe_number==4"]
[nimono_lion]
;煮物[p]
[elsif exp="f.recipe_number==5"]
[guratan_lion]
;グラタン[p]
[elsif exp="f.recipe_number==6"]
[karei_lion]
;煮付け[p]
[elsif exp="f.recipe_number==7"]
[tenpura_lion]
;天ぷら[p]
[elsif exp="f.recipe_number==8"]
[unajuu_lion]
;うな重[p]
[elsif exp="f.recipe_number==9"]
[oden_lion]
;おでん[p]
[elsif exp="f.recipe_number==10"]
[kare_lion]
;カレー[p]
[elsif exp="f.recipe_number==11"]
[takikomi_lion]
;炊き込み[p]
[elsif exp="f.recipe_number==12"]
[sichu_lion]
;シチュー[p]
[elsif exp="f.recipe_number==13"]
[itamesi_lion]
;イタ飯[p]
[elsif exp="f.recipe_number==14"]
[gyooza_lion]
;餃子[p]
[elsif exp="f.recipe_number==15"]
[hurai_lion]
;フライ[p]
[endif]

[endif]
*lion_serihu_end
[endif]

[live2d_fadeout time=1000]
;[live2d_delete_all][live2d_off]
[endmacro]



;クライスト料理結果
[macro name="chara_serihu_kra"]
;リフレッシュするため一次変数から記憶変数へ
[eval exp="f.love_score=tf.love_score"]
[eval exp="f.recipe_number = tf.recipe_number"]
[eval exp="f.souzai_hyouji = tf.souzai_hyouji"]
[eval exp="f.bread_hyouji = tf.bread_hyouji"]
[eval exp="f.sweet_hyouji = tf.sweet_hyouji"]

;キャラごとのフラグセリフ
[if exp="tf.love_target==3&&tf.menu_love_word==1"]

;---------------

;--------------

[aho_arms_normal]
[aho_body_normal]
[aho_face_normal]
[aho_head_normal]
[live2d_fadein time=1000]


[if exp="f.krarenailevel>3"]
;美味しいね[p]
[ryouri_kra_like_3]
[elsif exp="f.krarenailevel<4"]
;まあまあ[p]
[ryouri_kra_like_2]
[endif]

[elsif exp="tf.love_target==3&&tf.menu_hate_word==1"]

;---------------

;--------------
[aho_arms_normal]
[aho_body_normal]
[aho_face_normal]
[aho_head_normal]
[live2d_fadein time=1000]

;不味い[p]
[ryouri_kra_hate]
[elsif exp="tf.love_target==3&&tf.menu_word==1"]
;---------------

;-----------------
[aho_arms_normal]
[aho_body_normal]
[aho_face_normal]
[aho_head_normal]
[live2d_fadein time=1000]

[if exp="f.sweet_hyouji==1&&f.recipe_number==1"]
[pai_kra]
[jump target=*kra_serihu_end]
[elsif exp="f.sweet_hyouji==1&&f.recipe_number==2"]
[cookie_kra]
[jump target=*kra_serihu_end]
[elsif exp="f.bread_hyouji==1||f.sweet_hyouji==1"]
[ryouri_kra_like_2]
[jump target=*kra_serihu_end]
[endif]

[if exp="f.recipe_number==0"]
[sarada_kra]
;さらだ[p]
[elsif exp="f.recipe_number==1"]
[marine_kra]
;マリネ[p]
[elsif exp="f.recipe_number==2"]
[sinsen_kra]
;刺身[p]
[elsif exp="f.recipe_number==3"]
[atugiri_kra]
;厚切り[p]
[elsif exp="f.recipe_number==4"]
[nimono_kra]
;煮物[p]
[elsif exp="f.recipe_number==5"]
[guratan_kra]
;グラタン[p]
[elsif exp="f.recipe_number==6"]
[karei_kra]
;煮付け[p]
[elsif exp="f.recipe_number==7"]
[tenpura_kra]
;天ぷら[p]
[elsif exp="f.recipe_number==8"]
[unajuu_kra]
;うな重[p]
[elsif exp="f.recipe_number==9"]
[oden_kra]
;おでん[p]
[elsif exp="f.recipe_number==10"]
[kare_kra]
;カレー[p]
[elsif exp="f.recipe_number==11"]
[takikomi_kra]
;炊き込み[p]
[elsif exp="f.recipe_number==12"]
[sichu_kra]
;シチュー[p]
[elsif exp="f.recipe_number==13"]
[itamesi_kra]
;イタ飯[p]
[elsif exp="f.recipe_number==14"]
[gyooza_kra]
;餃子[p]
[elsif exp="f.recipe_number==15"]
[hurai_kra]
;フライ[p]
[endif]


*kra_serihu_end
[endif]

;[live2d_fadeout time=1000]
;[live2d_delete_all][live2d_off]
[endmacro]




;料理用台詞


[macro name="sarada_rans"]
[rans_head_right_z]
[rans_eyes_right]
[rans_body_right_x]
[rans_body_left_x]
[rans_body_normal]
[rans_exp_bisyo]
#ランスロット
「なかなかきれいに飾り付けられているな。

[rans_head_normal]
だが、味のほうも申し分ない」[p]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_metoji_warai]
#ランスロット
「さっぱりしていて口当たりもいい。こういうものは好きだな」[p]
#
[rans_exp_normal_warai]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="marine_rans"]

[rans_body_left_x]
[rans_body_right_x]
[rans_head_left_z]
[rans_exp_yokome_warai]
#ランスロット
「マリネか・・・酢の物はいいな。
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_bisyo]
食欲を増進する効果もあるしな」[p]
[rans_exp_metoji]
#ランスロット
「それに、この味つけは酸味もちょうどいい。
[rans_head_under_y]
[rans_head_normal]
[rans_exp_normal_warai]
また、作ってくれないか。
お前の料理を楽しみにしている」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="sinsen_rans"]

[rans_head_right_x]
[rans_head_under_y]
[rans_eyes_right_under]
#ランスロット
「刺身は新鮮さが命だ。
[rans_exp_mehuse]
仕入れるのも大変だっただろう」[p]
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「なかなかだったぞ。ありがとう、[name]」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="atugiri_rans"]

[rans_head_above_y]
[rans_head_left_z]
[rans_exp_yokome]
#ランスロット
「肉か・・・ライオネスあたりが好きそうな料理だな・・・」[p]
[rans_head_normal]
[rans_exp_komari_warai]
#ランスロット
「精はつきそうな気がするが私は・・・ほどほどでいい」[p]
#
[rans_head_under_y]
[rans_head_normal]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="nimono_rans"]
[rans_head_under_y]
[rans_exp_metoji_warai]
#ランスロット
「こういうものは、食べるとほっとするな。
[rans_exp_mehuse]
味付けも私好みだが・・・
[rans_head_normal]
[rans_exp_yokome]
いろいろ研究しているのか・・・？」[p]

[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]
#ランスロット
「これだけの種類の野菜が入っていれば、体にもよさそうだ。
[rans_head_above_y]
[rans_head_right_x]
また、お前の料理が食べたいな」[p]

[if exp="f.ranskonkando>18"]
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット
「そうだなできれば、ふたりきりで・・・」[p]
#
[else]

[rans_head_normal]
#ランスロット
「作ったときには、声をかけてくれ」[p]
[rans_head_under_y]
[rans_head_normal]
#
[endif]
[chara_off][chara_hide name="ranslott"]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="guratan_rans"]

[rans_head_under_y]
[rans_exp_mehuse_warai]
#ランスロット
「チーズとホワイトソースのまろやかさが絶妙なバランスだ。
[rans_head_left_x]
[rans_exp_metoji_warai]
こういった優しい味は好きだな・・・」[p]
#
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「店でも食べられるし、私はたまに食するのだが・・・
[rans_head_above_y]
[rans_head_left_x]
[rans_exp_komari_warai]
もうお前の料理しか食べられなくなりそうだ」[p]
#
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット
「また作ったときには声をかけてくれ。いつでも食べに行く」[p]
[rans_head_right_z]
[rans_head_normal]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]
#
[macro name="karei_rans"]
[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「煮魚か。私の好物だな。お前も好きだろう？
[rans_head_normal]
[rans_head_under_y]
[rans_exp_mehuse_warai]
同じものが好きだというのは、それだけで何かうれしいものだな」[p]
#
[rans_head_left_x]
[rans_eyes_left]
[rans_exp_normal_warai]
#ランスロット
「そうだ、知っていたか？
[rans_eyes_normal]
[rans_exp_mehuse_warai]
[r]おいしそうに煮魚を食べるお前の顔を見るのも私は好きなんだが・・・」[p]
[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット
「・・・すまない、困らせてしまったか。
[rans_head_right_z]
[rans_exp_bisyo]
またお前とともに食事がしたい。誘ってもいいだろうか？」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="tenpura_rans"]

[rans_head_left_x]
[rans_exp_yokome]
#ランスロット
「てんぷらか・・・サクっとした食感は嫌いではないのだが・・・
[rans_head_under_y]
[rans_exp_mehuse]
脂が・・・
[rans_exp_metoji]
[rans_head_normal]
[rans_head_right_z]
[rans_exp_komari_warai]
あまりたくさんは無理だな」[p]
[rans_head_right_x]
[rans_head_left_x]
[rans_exp_mihiraki]
#ランスロット
「い、いや、もういい、これくらいで・・・。
[rans_exp_normal_warai]
ありがとう、[name]」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="unajuu_rans"]

[rans_body_kataage]
[rans_body_normal]
[rans_exp_mihiraki]
#ランスロット
「こんな高級食材を、いったいどこから仕入れたというんだ？
[rans_body_normal]
[rans_head_right_x]
[rans_exp_mehuse_muzukasii]
お前まさか・・・」[p]
#
[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「いや、お前がやましいことをするはずがないよな。信じている」[p]
#
[rans_head_normal]
[rans_head_left_x]
[rans_exp_yokome]
#ランスロット
「話には聞いていたが、思ったよりがっつりした料理なのだな・・・」[p]
#
[rans_head_right_z]
[rans_exp_normal_warai]
#ランスロット
「ありがとう、[name]。おいしかった」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="oden_rans"]
[rans_exp_bisyo]
#ランスロット
「このスープも美味だが、スープのしみこんだ具材はもっと美味だな。
[rans_head_left_z]
[rans_eyes_left]
[rans_exp_normal]
特にこの練り物・・・
[rans_head_normal]
[rans_exp_mihiraki]
なに？ちくわというのか・・・」[p]
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
#ランスロット
「これならいくらでも食べられそうだ。
ありがとう[name]」[p]
[rans_head_normal]
[rans_exp_metoji_warai]
#ランスロット
「とてもおいしい。毎日でもいいくらいだ」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_bisyo]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="kare_rans"]

[rans_head_under_y]
[rans_exp_metoji]
#ランスロット
「独特の風味のある料理だな。
[rans_exp_normal]
[rans_head_normal]
[rans_exp_normal_warai]
[rans_head_under_y]
[rans_head_normal]
だが、うまいぞ。
ライスにこのソースがよくあうのだな」[p]
#
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse_warai]
[rans_head_normal]
[rans_exp_komari_warai]
#ランスロット
「が・・・一杯くらいで私はいいな。
[rans_exp_normal_warai]
じゅうぶんだ。ありがとう、[name]」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="sichu_rans"]

[rans_head_right_z]
[rans_exp_bisyo]
#ランスロット
「野菜と肉のうまみがホワイトソースに
よくなじんでいて、とてもうまいぞ」[p]
#

[rans_head_under_y]
[rans_exp_metoji_warai]
#ランスロット
「このスープの味は絶品だ。・・・
[rans_exp_normal_warai]
[rans_eyes_left]
[rans_head_above_y]
[rans_head_left_x]
そうか、お前にしか出せない味なのだな・・・」[p]
#
[rans_head_normal]
[rans_exp_normal_warai]
#ランスロット
「また作ってくれないか。
[rans_head_under_y]
[rans_head_left_x]
[rans_eyes_left]
[rans_exp_mehuse_warai]
できれば、私だけのために・・・」[p]
#
[rans_head_normal]
[rans_exp_bisyo]
[rans_eyes_normal]
[rans_head_right_z]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]


[macro name="takikomi_rans"]


[rans_head_right_x]
[rans_head_above_y]
[rans_eyes_right]
#ランスロット
「こう、米に味をしみこませるというのは、とてもいい考えだな」[p]
#
[rans_head_normal]
[rans_head_under_y]
[rans_eyes_normal]
[rans_exp_metoji]
#ランスロット
「細かく切った具と一緒に炊けば、うまみも凝縮されるしな。
[rans_head_normal]
[rans_exp_normal_warai]
これなら何杯でも食べられそうな気がする」[p]
#
[rans_head_left_x]
[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット
「・・・その、
[rans_head_normal]
[rans_exp_komari_warai]
[rans_head_right_z]
もう一杯、いいだろうか・・・。
[rans_head_normal]
[rans_exp_bisyo]
[r]ありがとう、[name]」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="itamesi_rans"]

[rans_head_under_y]
[rans_exp_metoji_warai]
#ランスロット
「これもなかなかの美味だな。米は油とも相性がいいらしい」[p]
#
[rans_head_left_x]
[rans_exp_mehuse]
[rans_eyes_left]
#ランスロット
「しかしその・・・
[rans_exp_normal_warai]
少しでいいな。私は」[p]
#
[rans_head_normal]
[rans_eyes_normal]
[rans_exp_mehuse_mousiwakenai]
#ランスロット
「おいしいことはおいしいのだが・・・」[p]
#
[rans_head_under_y]
[rans_head_normal]
[rans_exp_komari_warai]
#ランスロット
「ありがとう[name]。お前の心遣いに感謝する」[p]
#
[rans_head_under_y]
[rans_head_right_x]
[rans_exp_mehuse_warai]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="gyooza_rans"]

[rans_head_under_y]
[rans_exp_mehuse]
#ランスロット
「これはまたなんというか・・・油の多い料理だな・・・」[p]
#
[rans_head_left_x]
[rans_head_above_y]
[rans_exp_yokome]
#ランスロット
「いや、油は嫌いではないのだが・・・」[p]
#

[rans_head_normal]
[rans_exp_mihiraki]
#ランスロット
「あ、ああ、それくらいでいい」[p]
#
[rans_exp_normal_warai]
#ランスロット
「あまり多くなくて・・・あとは、ライオネスにもわけてやるといいだろう」[p]
#
[rans_head_under_y]
[rans_head_normal]
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]

[macro name="hurai_rans"]
[rans_exp_normal_warai]
#ランスロット
「揚げ物か。衣をつけるのも上手いな。
厚すぎず薄すぎずそれでいてカラっと揚がっていて・・・
[rans_head_under_y]
[rans_exp_metoji_warai]
いい色だ」[p]
#
[rans_head_normal]
[rans_head_right_z]
[rans_exp_komari_warai]
#ランスロット
「だが・・・私はその・・・これくらいで、いい」[p]
#
[eval exp="f.ryouri_count_rans=f.ryouri_count_rans+1"]
[endmacro]




;ライおねす


[macro name="sarada_lion"]

[lioness_face_odoroki]
[lioness_head_ieft_x]
[lioness_head_under_y]
[lioness_face_yokome_otikomi]
#ライオネス
「野菜のバーゲンセール・・・うぅ」[p]
#
[lioness_head_normal]
[lioness_face_otikomi]
#ライオネス
「なあ、やっぱり食べなきゃだめか・・・？」[p]
#
[lioness_head_under_y]
[lioness_face_yareyare]
#ライオネス
「・・・・・・・。だめか・・・」[p]
#

[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="marine_lion"]

[lioness_head_right_z]
[lioness_face_ha]
#ライオネス
「マリネってよお・・・なんで魚をすっぱくすんだ？
俺には全然わかんねえ・・・」[p]
#
[lioness_head_normal]
[lioness_head_left_z]
[lioness_face_akireru]
#ライオネス
「すっぱくするとうめえのか？」[p]
#
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_yareyare]
#ライオネス
「俺には全然わかんねえ・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="sinsen_lion"]

[lioness_face_yokome]
#ライオネス
「刺身かあ・・・嫌いじゃねえけど、
[lioness_head_under_y]
[lioness_face_mehuse_dai]
なんかこうもっと・・・パンチがほしいな・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="atugiri_lion"]

[lioness_face_odoroki]
[lioness_body_normal]
#ライオネス
「うおっ・・・こ、こんな分厚い肉、お前どっから手に入れたんだよ！！」[p]
#
[lioness_face_warai]
#ライオネス
「すっげーうまい！このソースと焼き加減、最高だぜ！！」[p]
#
[lioness_head_right_z]
#ライオネス
「ありがとな[name]、お前の肉、また食いてえ！」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="nimono_lion"]
[lioness_head_under_y]
[lioness_head_left_x]
[lioness_face_sinnpai]
#ライオネス
「なあこの煮物って・・・肉は・・・入ってねえのか・・・？」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="guratan_lion"]

#ライオネス
「グラタン、嫌いじゃねえぞ。マカロニもうまいしな」[p]
#
[lioness_head_right_z]
[lioness_face_yokome]
#ライオネス
「だけどやっぱ、肉がな・・・」[p]
#

[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="karei_lion"]
[lioness_face_yokome]
#ライオネス
「なあ煮魚って、そんなうまいか・・・？
[lioness_face_odoroki]
[lioness_head_right_z]
[lioness_face_yokome_otikomi]
い、いやまあ、うまい、けどよ・・・」[p]
#
[lioness_head_normal]
[lioness_head_under_y]
[lioness_face_mehuse_dai]
#ライオネス
「もうちょっとなんつーかがっつりと・・・」[p]
#
[lioness_face_yokome_otikomi]

[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="tenpura_lion"]
[lioness_face_warai]
#ライオネス
「てんぷらうめえ！このサクサクっつうのがたまらないんだよなー！
これなら野菜だってガンガンいけるぜ！」[p]
#
[lioness_face_normal_warai]
#ライオネス
「ありがとな、[name]！」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="unajuu_lion"]
[lioness_face_odoroki]
#ライオネス
「お、お前うなぎなんてどっから仕入れたんだよ・・・。
[lioness_head_right_x]
[lioness_head_left_x]
[lioness_face_akireru]
つ、つかいいのかこんな高級なもん・・・」[p]
#
[lioness_head_normal]
[lioness_face_odoroki]
#ライオネス
「う、うまいってか？
[lioness_face_normal_warai]
うまいけどよ・・・」[p]
#
[lioness_head_right_x]
[lioness_face_yokome_otikomi]
#ライオネス
「なんつーか、ホント、いいのか？
俺なんかが食って・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="oden_lion"]
[lioness_head_right_z]
[lioness_face_normal_warai]
#ライオネス
「おでんかー。寒い日にはいいよなこれ。
俺の好きな具はやっぱソーセージだな」[p]
#
[lioness_head_normal]
[lioness_face_odoroki]
#ライオネス
「ま、また肉とか思ってんだろ。
[lioness_head_left_x]
[lioness_face_akireru]
仕方ねえだろ俺は肉が好きなんだからよ・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="kare_lion"]
[lioness_face_tere]
#ライオネス
「うまかった、まじで。あのよ・・・
もしよかったら、明日も作ってくんねえ・・・？これ」[p]
#
[lioness_eyes_left]
[lioness_eyes_right]
[lioness_eyes_normal]
[lioness_face_warai]
[lioness_head_right_z]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="sichu_lion"]
[lioness_head_under_y]
#ライオネス
「これ・・・カレー粉入れたらカレーにならねえか・・・？」[p]
#
[lioness_head_normal]
[lioness_face_odoroki]
#ライオネス
「う、
[lioness_face_yokome_otikomi]
[chara_mod name="lioness" face="yokome_otikomi_kutiake"]
わ、わーったよ、食うよ。お、俺が悪かった・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="nikujaga_lion"]
[lioness_head_right_z]
[lioness_face_muzukasii]
#ライオネス
「肉はいいんだけどよ、これはどっちかってーと野菜メインなのか・・・？」[p]
#
[lioness_head_normal]
[lioness_face_normal_warai]
#ライオネス
「ま、まあなかなかうまいけどよ・・・」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="takikomi_lion"]
[lioness_face_normal_warai]
#ライオネス
「結構いけるな、これ。まあ俺的には肉が入ってるともっと・・・」[p]
#
[lioness_face_sekimen_odoroki]
#ライオネス
「な、なんだよ、また肉って言うなよ！！」[p]
#
[lioness_head_normal]
[lioness_face_muzukasii]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="itamesi_lion"]
[lioness_face_warai]
#ライオネス
「このにんにくの香りがまたいいな！！俺こういうがっつりした料理好きだぜ！」[p]
#
[lioness_face_normal_warai]
[lioness_head_right_z]
#ライオネス
「ありがとな、[name]！」[p]
#

[chara_off][chara_hide name="lioness"]
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]

[macro name="gyooza_lion"]
[lioness_face_warai]
[lioness_eyes_left]
#ライオネス
「皮も好きだけど、なんたって具だよな、
[lioness_eyes_normal]
[lioness_face_normal_warai]
うめえー！！ありがとな、[name]！！」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]


[macro name="hurai_lion"]
[lioness_face_yokome]
#ライオネス
「俺、これ毎日でもいいな・・・
[lioness_head_under_y]
[lioness_head_normal]
[lioness_face_normal_warai]
これと、あとカレーつけたら最高だよな！
[lioness_face_yokome_warai]
できればハンバーグも・・・」[p]
#
[lioness_face_odoroki]
[lioness_face_muzukasii]
#ライオネス
「て、また肉ばっかりっていうなよな！」[p]
#
[eval exp="f.ryouri_count_lion=f.ryouri_count_lion+1"]
[endmacro]



;料理用台詞：クライスト

[macro name="sarada_kra"]
[aho_head_right_z]
[aho_face_yokome_majime]
#クライスト
「サラダかあ・・・まあ、うん。嫌いじゃないけどさ」[p]
#
[aho_head_normal]
[aho_face_normal]
#クライスト
「ありがとう、[name]ちゃん」[p]
#
#クライスト
「おいしかったよ」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="marine_kra"]

[aho_head_right_z]
[aho_face_komari]
#クライスト
「なんかちょっとすっぱくない？これ」[p]
#
[aho_head_normal]
[aho_face_mihiraki]
#クライスト
「え？マリネってこういうものなの？
[aho_head_right_x]
[aho_face_yokome_majime]
そうなんだ・・・。ふーん・・・」[p]
#
[aho_head_normal]
[aho_face_normal]
#クライスト
「まぁいいか。おいしかったよ、
[name]ちゃん。ありがとう」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="sinsen_kra"]
[aho_head_under_y]
[aho_head_normal]
[aho_face_hutuu_bisyou]
#クライスト
「新鮮ですごくおいしいよ。こんなにいい魚仕入れるの、大変だったんじゃない？」[p]
#
[aho_head_right_z]
[aho_face_smile]
#クライスト
「やっぱり獲れたては最高だね。ありがとう[name]ちゃん。すごくおいしかった」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="atugiri_kra"]
[aho_face_mihiraki]
#クライスト
「こんな分厚い肉、どこから手に入れたの？というか、焼くの大変だったんじゃない？」[p]
#
[aho_head_left_z]
[aho_face_smile]
#クライスト
「このソースもにんにくが利いてておいしいね。店でも滅多に食べられないよ、こんないいステーキ」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_hutuu_bisyou]
#クライスト
「ありがとう[name]ちゃん。もしまた肉が手に入ったら、俺に作ってよ。楽しみにしてる」[p]
#

[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="nimono_kra"]
[aho_head_above_y]
[aho_head_left_x]
[aho_face_yokome_majime]
#クライスト
「煮物かあ・・・。
[aho_head_normal]
[aho_face_normal]
あ、嫌いじゃないよ。
嫌いじゃないんだけど・・・。煮物かあ・・・」[p]
#
[aho_head_left_x]
[aho_face_yokome_majime]
[aho_head_normal]
[aho_face_normal]
#クライスト
「あ、でもこういうのって食べるとほっとした気分になるよね。
[aho_face_yokome_warai]
まあでも俺、君と食べるならどんな料理でもいいけどね」[p]
#
[aho_face_normal]
#クライスト
「ありがとう[name]ちゃん。おいしかった」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]



[macro name="guratan_kra"]
[aho_eyes_left]
[aho_face_normal_majime]
#クライスト
「あ、これ、俺よく店でも注文するよ。たいていの店にあるからさ。
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]
店によって味が違って面白いんだよ」[p]
#
[aho_face_metoji_warai]
#クライスト
「ま、[name]ちゃんの料理にはかなわないけどね。
[aho_head_left_z]
[aho_face_normal]
ありがとう、おいしかった」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="karei_kra"]
[aho_face_yokome_warai]
#クライスト
「煮魚って、[name]ちゃん好きだよね。
煮魚のおいしいところってどんなとこ？」[p]
#
[aho_head_left_z]
[aho_face_normal]
#クライスト
「やっぱり魚の身に味がしみてるところとか？」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_face_mehuse_warai]
#クライスト
「・・・うん。優しい味って感じがするね。
[aho_face_normal]
[r][name]ちゃんが作るからそうなのかな。ありがとう」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="tenpura_kra"]
#クライスト
「てんぷらって、サクサクしておいしいよねー」[p]
#
[aho_head_left_x]
[aho_head_above_y]
#クライスト
「俺もたまに食べるけど、ほどほどにしておかないと胸焼けするよね」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
#クライスト
「ありがとう[name]ちゃん、おいしかった」[p]
#

[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="unajuu_kra"]
[aho_face_mihiraki]
#クライスト
「えっ・・・これって手作りでつくれるんだ・・・！それにうなぎ、どこから手に入れたの？」[p]
#
[aho_head_under_y]
[aho_head_left_x]
[aho_face_komari_warai]
#クライスト
「感激だな、俺のためにこんな・・・」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_face_metoji_warai]
#クライスト
「・・・うん。すごく美味しい。
[aho_head_normal]
[aho_head_right_z]
[aho_face_hutuu_bisyou]
ほんと・・・こんな食事で感動したのって久しぶりだ・・・」[p]
#
[aho_head_normal]
[aho_face_hutuu_warai]
#クライスト
「本当にありがとう。[name]ちゃん」[p]
#

[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="oden_kra"]
[aho_head_left_x]
#クライスト
「王都の屋台でもたまに見るよね。こういうの売ってるお店」[p]
#
#クライスト
「寒いときなんか特にいいよね。
[aho_head_normal]
[aho_head_under_y]
[aho_head_normal]
[aho_head_above_y]
[aho_head_left_x]
[aho_face_yokome_ase]
俺が好きなのは卵かなぁ。
[aho_face_normal]
あ、きんちゃく餅もいいよね」[p]
#
#クライスト
「ソーセージ入れる屋台もあるみたいだよ。
[aho_face_metoji_warai]
手作りしてもおいしいね」[p]
#
[aho_face_normal]
#クライスト
「ありがとう、[name]ちゃん」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="kare_kra"]
[aho_face_metoji_warai]
#クライスト
「カレーかあ・・・。よくわかってるね、[name]ちゃん」[p]
#
[aho_head_above_y]
[aho_head_left_x]
[aho_face_yokome_ase]
#クライスト
「そりゃ、男の好物の代表って言ったらカレーだよ」[p]
#
[aho_head_normal]
[aho_head_under_y]
[aho_face_metoji]
#クライスト
「んんーでも俺は、何杯もおかわりはしないな・・・。
せめて一杯くらいでいいよ」[p]
#
[aho_head_normal]
[aho_face_normal]
#クライスト
「うん。ありがとう、[name]ちゃん」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="sichu_kra"]
[aho_face_yokome_warai]
#クライスト
「シチューも優しい味でいいよね。[name]ちゃんみたい」[p]
#
[aho_face_mihiraki]
#クライスト
「え？どういう意味かって・・・？」[p]
#
[aho_head_right_z]
[aho_face_smile]
[aho_head_normal]
[aho_face_normal]
#クライスト
「ありがとう[name]ちゃん。おいしかったよ」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="takikomi_kra"]
[aho_head_left_x]
[aho_face_yokome_ase]
#クライスト
「好きな人は好きだろうね、こういうの。何杯でも食べてそう。
[aho_head_normal]
[aho_face_metoji]
でもまあ俺は・・・一杯くらいでいいかな」[p]
#
[aho_face_normal]
#クライスト
「ありがとう[name]ちゃん。おいしかった」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="itamesi_kra"]
#クライスト
「イタメシかあ。誰かさんががっつり食べてそうな料理だね」[p]
#
[aho_face_metoji]
#クライスト
「店でもよくあるメニューのひとつだよ。
作りやすいのもあるんだろうね」[p]
#
[aho_face_mehuse_warai]
#クライスト
「ありがとう[name]ちゃん、おいしかった」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="gyooza_kra"]
[aho_face_yokome_ase]
#クライスト
「ぎょうざか。嫌いじゃないよ。すごく好き・・・ってほどでもないけどね」[p]
#
[aho_head_under_y]
[aho_head_normal]
[aho_face_normal]
#クライスト
「まあ、それなりに美味しいよね。ありがとう[name]ちゃん」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]


[macro name="hurai_kra"]
[aho_face_metoji]
#クライスト
「揚げ物か。誰かさんが喜びそうな料理だね。
[aho_face_yokome_ase]
俺はそれなりに・・・かな」[p]
#
[aho_face_normal]
#クライスト
「でも[name]ちゃんのなら毎日食べたいくらいだよ。
ありがとう」[p]
#
[eval exp="f.ryouri_count_kra=f.ryouri_count_kra+1"]
[endmacro]

[macro name="cook_image_data"]
[iscript]
tf.cook_image=[
'ryouri/kugurohu.png',
'ryouri/mafin.png',
'ryouri/cookie.png',
'ryouri/cake.png',
'ryouri/pai.png',
'ryouri/huransupan.png',
'ryouri/kare-pan.png',
'ryouri/crowassan.png',
'ryouri/kishu.png',
'ryouri/toast.png',
'ryouri/kasutera.png',
'ryouri/manjuu.png',
'ryouri/odango.png',
'ryouri/gyouza.png',
'ryouri/cha-han.png',
'ryouri/takikomigohan.png',
'ryouri/barakuda.png',
'ryouri/gomadare.png',
'ryouri/sinamon.png',
'ryouri/cone.png',
'ryouri/moimoimo.png',
'ryouri/ninjin.png',
'ryouri/hurai.png',
'ryouri/nizakana.png',
'ryouri/tenpura.png',
'ryouri/oden.png',
'ryouri/sichu.png',
'ryouri/sarada.png',
'ryouri/oikawa.png',
'ryouri/rezun.png',
'ryouri/anko.png',
'ryouri/marine.png',
'ryouri/atugiri.png',
'ryouri/guratan.png',
'ryouri/tomato.png',
'ryouri/yasai.png',
'ryouri/beruzoku.png',
'ryouri/ti-zu.png',
'ryouri/romana.png',
'ryouri/egg.png',
'ryouri/kurumi.png',
'ryouri/garlic_olive.png',
'ryouri/cocoa.png',
'ryouri/ika.png',
'ryouri/suzukiebi.png',
'ryouri/hukahire.png',
'ryouri/kaki.png',
'ryouri/kraken.png',
'ryouri/reviatan.png',
'ryouri/spice.png',
'ryouri/wine.png',
'ryouri/maguro.png',
'ryouri/hirayama.png',
'ryouri/nimono.png',
'ryouri/kare.png',
'ryouri/unajuu.png',
'ryouri/osasimi.png',
];

[endscript]

[endmacro]
;上下の食べ物表示
[macro name="cook_image_hyouji"]
*image_first
[if exp="tf.image_under!=1"]
[eval exp="tf.ima_no=9"]
[eval exp="tf.ima_limit=0"]
[eval exp="tf.ima_x=0"]
[eval exp="tf.ima_y=0"]
[elsif exp="tf.image_under==1"]
[eval exp="tf.ima_no=30"]
[eval exp="tf.ima_limit=21"]
[eval exp="tf.ima_x=0"]
[eval exp="tf.ima_y=500"]
[endif]


*image_hyouji
[image layer=3 page=fore storage=&tf.cook_image[tf.ima_no] name="food" x=&tf.ima_x y=&tf.ima_y]

[if exp="tf.ima_no>tf.ima_limit"]
[eval exp="tf.ima_no=tf.ima_no-1"]
[eval exp="tf.ima_x=tf.ima_x+99"]
[jump target=*image_hyouji]
[endif]

[if exp="tf.image_under!=1"]
[eval exp="tf.image_under=1"]
[jump target=*image_first]
[elsif exp="tf.image_under==1"]
[eval exp="tf.image_under=0"]
[endif]
[endmacro]


[return]


