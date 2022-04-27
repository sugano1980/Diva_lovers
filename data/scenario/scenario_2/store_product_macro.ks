


;------------------------------------------------------------------------------------------------------------------------------





[macro name="store_product"]

;店の品揃え


;時期によって品揃えが違う



;戦争前
[if exp="f.store_season_1==1"]

[eval exp="f.store_equip_4=1"]
[eval exp="f.store_equip_6=1"]
[eval exp="f.store_equip_7=1"]
[eval exp="f.store_equip_19=1"]

;店の品物数
[eval exp="f.store_item_number=4"]

;-----------------------------------------------------------------------------------------------------------------------
;フラグに沿って商品データを代入
[product_data_macro]

;---------------------------------------------------------------------------------------------------------------------
[elsif exp="f.gales_hanbai==1"]

[eval exp="f.item_other=1"]

[eval exp="f.store_other_2=1"]
[eval exp="f.store_other_29=1"]
[eval exp="f.store_other_30=1"]
;店の品物数
[eval exp="f.store_item_number=3"]

;-----------------------------------------------------------------------------------------------------------------------
;フラグに沿って商品データを代入
[product_data_macro_other]

;---------------------------------------------------------------------------------------------------------------------


;カーニバル屋台
[elsif exp="f.curnival_yatai==1"]
;アイテムが装備以外の時のフラグ
[eval exp="f.item_other=1"]

[eval exp="f.store_other_17=1"]
[eval exp="f.store_other_18=1"]
[eval exp="f.store_other_20=1"]
[eval exp="f.store_other_21=1"]
[eval exp="f.store_other_22=1"]
[eval exp="f.store_other_24=1"]
[eval exp="f.store_other_25=1"]
[eval exp="f.store_other_26=1"]
[eval exp="f.store_other_27=1"]
[eval exp="f.store_other_28=1"]
;店の品物数
[eval exp="f.store_item_number=10"]

;-----------------------------------------------------------------------------------------------------------------------
;フラグに沿って商品データを代入
[product_data_macro_other]

;---------------------------------------------------------------------------------------------------------------------




;カーニバルセール
[elsif exp="f.store_curnival_sale==1"]



[eval exp="f.store_equip_4=1"]
[eval exp="f.store_equip_6=1"]
[eval exp="f.store_equip_7=1"]
[eval exp="f.store_equip_19=1"]
[eval exp="f.store_equip_22=1"]
[eval exp="f.store_equip_2=1"]

[eval exp="f.store_item_number=6"]

;-----------------------------------------------------------------------------------------------------------------------
;フラグに沿って商品データを代入
[product_data_macro]

;---------------------------------------------------------------------------------------------------------------------



;エルムナード戦争前;追加材料
[elsif exp="f.store_season_2_cook==1"]

;アイテムが装備以外の時のフラグ
[eval exp="f.item_cook=1"]

[eval exp="f.store_cook_7=1"]
[eval exp="f.store_cook_8=1"]
[eval exp="f.store_cook_9=1"]
[eval exp="f.store_cook_10=1"]
[eval exp="f.store_cook_11=1"]
[eval exp="f.store_cook_12=1"]
[eval exp="f.store_cook_13=1"]
[eval exp="f.store_cook_14=1"]
[eval exp="f.store_item_number=8"]

;フラグに沿って商品データを代入
[product_data_macro_cook]

;祝賀会前;追加材料
[elsif exp="f.store_season_3_cook==1"]

;アイテムが装備以外の時のフラグ
[eval exp="f.item_cook=1"]

[eval exp="f.store_cook_7=1"]
[eval exp="f.store_cook_8=1"]
[eval exp="f.store_cook_9=1"]
[eval exp="f.store_cook_10=1"]
[eval exp="f.store_cook_11=1"]
[eval exp="f.store_cook_12=1"]
[eval exp="f.store_cook_13=1"]
[eval exp="f.store_cook_14=1"]
[eval exp="f.store_item_number=8"]

;フラグに沿って商品データを代入
[product_data_macro_cook]



;ウェスタ;本屋
[elsif exp="f.store_season_7==1"]

;アイテムが装備以外の時のフラグ

[eval exp="f.store_other_31=1"]
[eval exp="f.store_other_32=1"]
[eval exp="f.store_other_33=1"]
[eval exp="f.store_other_34=1"]
[eval exp="f.store_other_35=1"]

[eval exp="f.store_item_number=5"]

;フラグに沿って商品データを代入
[product_data_macro_other]

;ウェスタ;薬
[elsif exp="f.store_season_6==1"]

;アイテムが装備以外の時のフラグ

[eval exp="f.store_other_36=1"]
[eval exp="f.store_other_37=1"]
[eval exp="f.store_other_38=1"]
[eval exp="f.store_other_39=1"]

[eval exp="f.store_item_number=4"]

;フラグに沿って商品データを代入
[product_data_macro_other]


;ウェスタ;追加材料
[elsif exp="f.store_season_5_cook==1"]

;アイテムが装備以外の時のフラグ
[eval exp="f.item_cook=1"]

[eval exp="f.store_cook_18=1"]
[eval exp="f.store_cook_19=1"]
[eval exp="f.store_cook_20=1"]
[eval exp="f.store_cook_21=1"]
[eval exp="f.store_cook_22=1"]
[eval exp="f.store_cook_23=1"]
[eval exp="f.store_cook_24=1"]
[eval exp="f.store_cook_25=1"]
[eval exp="f.store_cook_26=1"]
[eval exp="f.store_cook_27=1"]
[eval exp="f.store_item_number=10"]

;フラグに沿って商品データを代入
[product_data_macro_cook]

;騎士団解散;追加材料
[elsif exp="f.store_season_4_cook==1"]

;アイテムが装備以外の時のフラグ
[eval exp="f.item_cook=1"]

[eval exp="f.store_cook_7=1"]
[eval exp="f.store_cook_8=1"]
[eval exp="f.store_cook_9=1"]
[eval exp="f.store_cook_10=1"]
[eval exp="f.store_cook_11=1"]
[eval exp="f.store_cook_12=1"]
[eval exp="f.store_cook_13=1"]
[eval exp="f.store_cook_14=1"]
[eval exp="f.store_item_number=8"]

;フラグに沿って商品データを代入
[product_data_macro_cook]





;エルムナード戦争前
[elsif exp="f.store_season_2==1"]

[eval exp="f.store_equip_7=1"]
[eval exp="f.store_equip_19=1"]
[eval exp="f.store_equip_22=1"]
[eval exp="f.store_equip_13=1"]
[eval exp="f.store_equip_21=1"]
[eval exp="f.store_equip_20=1"]
[eval exp="f.store_item_number=6"]
;フラグに沿って商品データを代入
[product_data_macro]


;祝賀会
[elsif exp="f.store_season_3==1"]
[eval exp="f.store_equip_9=1"]
[eval exp="f.store_equip_8=1"]
[eval exp="f.store_equip_11=1"]
[eval exp="f.store_equip_26=1"]
[eval exp="f.store_equip_24=1"]
[eval exp="f.store_equip_20=1"]
[eval exp="f.store_item_number=6"]
;フラグに沿って商品データを代入
[product_data_macro]

;騎士団解散前
[elsif exp="f.store_season_4==1"]
[eval exp="f.store_equip_8=1"]
[eval exp="f.store_equip_11=1"]
[eval exp="f.store_equip_26=1"]
[eval exp="f.store_equip_24=1"]
[eval exp="f.store_equip_9=1"]
[eval exp="f.store_equip_18=1"]
[eval exp="f.store_equip_15=1"]

[eval exp="f.store_item_number=7"]
;フラグに沿って商品データを代入
[product_data_macro]
[endif]

[endmacro]





;お金を減らす処理
[macro name="money_siharai_1"]
[iscript]
if(this.kag.stat.f["store_curnival_sale"]==1&&this.kag.stat.f["muryou"]!=1&&this.kag.stat.f["muryou_yatai"]!=1){

this.kag.stat.f["money"]-=tyrano.plugin.kag.variable.tf.store_item_value[tf.store_id]/2;

}else if(this.kag.stat.f["muryou"]!=1&&this.kag.stat.f["muryou_yatai"]!=1){

this.kag.stat.f["money"]-=tyrano.plugin.kag.variable.tf.store_item_value[tf.store_id];
}
[endscript]
[endmacro]




;アイテム増
[macro name="item_get_store"]
;[store_item_number_nyuryoku]
;[stock_nyuryoku]
[iscript]

if(f.item_other===1){

	var item_all = f.other_item_list.length;

}else if(f.item_cook===1){
	var item_all = f.cook_item_list.length;

}else{
	var item_all = f.equip_item_list.length;
}




for(e=0;e<10;e++){                
                if(tyrano.plugin.kag.variable.tf.store_item_buy[e]==1){
	for(i=1;i<item_all;i++){
				
		if(tyrano.plugin.kag.variable.tf.store_item_num[e]== i){
			i-=1;	
				if(this.kag.stat.f["item_other"]==1){
		      tyrano.plugin.kag.variable.tf.other_item_stock[i]+=1;
		      
		      if(i==21||i==24||i==26){
		      	 tyrano.plugin.kag.variable.tf.kirai=1;
		      }	      
		       if(this.kag.stat.f["friend_present"]!=1){
 	           tyrano.plugin.kag.variable.tf.kirai=0; 	
		       }else if(this.kag.stat.f["friend_present"]==1){   
		         tyrano.plugin.kag.variable.tf.other_item_stock[i]-=1;
              }		     
			  tyrano.plugin.kag.variable.tf.store_item_stock[e] =tyrano.plugin.kag.variable.tf.other_item_stock[i];
			  
			  }else if(this.kag.stat.f["item_cook"]==1){
			   tyrano.plugin.kag.variable.tf.cook_item_stock[i]+=1;
			   tyrano.plugin.kag.variable.tf.store_item_stock[e] =tyrano.plugin.kag.variable.tf.cook_item_stock[i];	
			  }else{
			  tyrano.plugin.kag.variable.tf.equip_item_stock[i]+=1;
			  tyrano.plugin.kag.variable.tf.store_item_stock[e] =tyrano.plugin.kag.variable.tf.equip_item_stock[i];		  			  	
			  }
	   		i+=1;
	       }
	     }
	 }
}

[endscript]
[if exp="f.item_other==1"]
[stock_modosu_other]
[elsif exp="f.item_cook==1"]
[stock_modosu_cook]
[else]
[stock_modosu_equip]
[endif]

[if exp="f.friend_present==1"]
[friend_present_hannou]
[endif]
[endmacro]


[macro name="product_hyouji"]

[eval exp="tf.store_item=[]"]

[iscript]



var store_item_hyouji_value= [];
tf.store_item =[0,0];

if(this.kag.stat.f["item_other"]==1){
tf.store_item=[
0,
this.kag.stat.f["store_other_1"],
this.kag.stat.f["store_other_2"],
this.kag.stat.f["store_other_3"],
this.kag.stat.f["store_other_4"],
this.kag.stat.f["store_other_5"],
this.kag.stat.f["store_other_6"],
this.kag.stat.f["store_other_7"],
this.kag.stat.f["store_other_8"],
this.kag.stat.f["store_other_9"],
this.kag.stat.f["store_other_10"],
this.kag.stat.f["store_other_11"],
this.kag.stat.f["store_other_12"],
this.kag.stat.f["store_other_13"],
this.kag.stat.f["store_other_14"],
this.kag.stat.f["store_other_15"],
this.kag.stat.f["store_other_16"],
this.kag.stat.f["store_other_17"],
this.kag.stat.f["store_other_18"],
this.kag.stat.f["store_other_19"],
this.kag.stat.f["store_other_20"],
this.kag.stat.f["store_other_21"],
this.kag.stat.f["store_other_22"],
this.kag.stat.f["store_other_23"],
this.kag.stat.f["store_other_24"],
this.kag.stat.f["store_other_25"],
this.kag.stat.f["store_other_26"],
this.kag.stat.f["store_other_27"],
this.kag.stat.f["store_other_28"],
this.kag.stat.f["store_other_29"],
this.kag.stat.f["store_other_30"],
this.kag.stat.f["store_other_31"],
this.kag.stat.f["store_other_32"],
this.kag.stat.f["store_other_33"],
this.kag.stat.f["store_other_34"],
this.kag.stat.f["store_other_35"],
this.kag.stat.f["store_other_36"],
this.kag.stat.f["store_other_37"],
this.kag.stat.f["store_other_38"],
this.kag.stat.f["store_other_39"],
];

}else if(this.kag.stat.f["item_cook"]==1){

tf.store_item=[
0,
this.kag.stat.f["store_cook_1"],
this.kag.stat.f["store_cook_2"],
this.kag.stat.f["store_cook_3"],
this.kag.stat.f["store_cook_4"],
this.kag.stat.f["store_cook_5"],
this.kag.stat.f["store_cook_6"],
this.kag.stat.f["store_cook_7"],
this.kag.stat.f["store_cook_8"],
this.kag.stat.f["store_cook_9"],
this.kag.stat.f["store_cook_10"],
this.kag.stat.f["store_cook_11"],
this.kag.stat.f["store_cook_12"],
this.kag.stat.f["store_cook_13"],
this.kag.stat.f["store_cook_14"],
this.kag.stat.f["store_cook_15"],
this.kag.stat.f["store_cook_16"],
this.kag.stat.f["store_cook_17"],
this.kag.stat.f["store_cook_18"],
this.kag.stat.f["store_cook_19"],
this.kag.stat.f["store_cook_20"],
this.kag.stat.f["store_cook_21"],
this.kag.stat.f["store_cook_22"],
this.kag.stat.f["store_cook_23"],
this.kag.stat.f["store_cook_24"],
this.kag.stat.f["store_cook_25"],
this.kag.stat.f["store_cook_26"],
this.kag.stat.f["store_cook_27"],
this.kag.stat.f["store_cook_28"],
this.kag.stat.f["store_cook_29"],
this.kag.stat.f["store_cook_30"],
this.kag.stat.f["store_cook_31"],
this.kag.stat.f["store_cook_32"],
this.kag.stat.f["store_cook_33"],
this.kag.stat.f["store_cook_34"]
];



}else{
tf.store_item=[
0,
this.kag.stat.f["store_equip_1"],
this.kag.stat.f["store_equip_2"],
this.kag.stat.f["store_equip_3"],
this.kag.stat.f["store_equip_4"],
this.kag.stat.f["store_equip_5"],
this.kag.stat.f["store_equip_6"],
this.kag.stat.f["store_equip_7"],
this.kag.stat.f["store_equip_8"],
this.kag.stat.f["store_equip_9"],
this.kag.stat.f["store_equip_10"],
this.kag.stat.f["store_equip_11"],
this.kag.stat.f["store_equip_12"],
this.kag.stat.f["store_equip_13"],
this.kag.stat.f["store_equip_14"],
this.kag.stat.f["store_equip_15"],
this.kag.stat.f["store_equip_16"],
this.kag.stat.f["store_equip_17"],
this.kag.stat.f["store_equip_18"],
this.kag.stat.f["store_equip_19"],
this.kag.stat.f["store_equip_20"],
this.kag.stat.f["store_equip_21"],
this.kag.stat.f["store_equip_22"],
this.kag.stat.f["store_equip_23"],
this.kag.stat.f["store_equip_24"],
this.kag.stat.f["store_equip_25"],
this.kag.stat.f["store_equip_26"],
this.kag.stat.f["store_equip_27"],
this.kag.stat.f["store_equip_28"],
this.kag.stat.f["store_equip_29"],
this.kag.stat.f["store_equip_30"],
this.kag.stat.f["store_equip_31"],
this.kag.stat.f["store_equip_32"],
this.kag.stat.f["store_equip_33"],
this.kag.stat.f["store_equip_34"]
];
}

var store_item_hyouji_number =[
tyrano.plugin.kag.variable.tf.store_item_hyouji1_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji2_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji3_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji4_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji5_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji6_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji7_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji8_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji9_number,
tyrano.plugin.kag.variable.tf.store_item_hyouji10_number
];



var i =0;
var j =0;
var hyouji=0;

tyrano.plugin.kag.variable.tf.store_item_lori =[];  
tyrano.plugin.kag.variable.tf.item_para =[]; 
tyrano.plugin.kag.variable.tf.stock_hyouji=[];
tyrano.plugin.kag.variable.tf.store_item_hyouji=[];
tyrano.plugin.kag.variable.tf.store_item_value=[];
tyrano.plugin.kag.variable.tf.type_array=[];
tyrano.plugin.kag.variable.tf.type_zokusei=[];



var store_item_para = [];
var store_item_hyouji = [];
var item_parame =[];
tyrano.plugin.kag.variable.tf.store_item_hyouji = [];

var item_list = new Map([
["item_other",this.kag.stat.f["other_item_list"]],
["item_equip",this.kag.stat.f["equip_item_list"]],
["item_cook",this.kag.stat.f["cook_item_list"]],	
]);



//アイテムリストを取りに行く
if(this.kag.stat.f["item_other"]==1){
//itemlistから条件にあったタイプのリストを取得、入力
store_item_para =  item_list.get("item_other")
this.kag.stat.f["store_item_stock_v"] = tyrano.plugin.kag.variable.tf.other_item_stock;

}else if(this.kag.stat.f["item_cook"]==1){
//itemlistから条件にあったタイプのリストを取得ストックはぜろから
store_item_para =  item_list.get("item_cook") 
this.kag.stat.f["store_item_stock_v"] = tyrano.plugin.kag.variable.tf.cook_item_stock;

}else{
//itemlistから条件にあったタイプのリストを取得
store_item_para =  item_list.get("item_equip")  
this.kag.stat.f["store_item_stock_v"] = tyrano.plugin.kag.variable.tf.equip_item_stock;
////取得したリストから装備タイプのデータだけで配列1から
tyrano.plugin.kag.variable.tf.store_item_type= store_item_para.map(function(x) {return x.type})

}

////取得したリストから値段のデータだけで配列1から
tyrano.plugin.kag.variable.tf.store_item_value_all= store_item_para.map(function(x) {return x.value})





//初期化
tyrano.plugin.kag.variable.tf.store_item_num =0;
tyrano.plugin.kag.variable.tf.store_item_name_hyouji = 0;
tyrano.plugin.kag.variable.tf.store_item_type_hyouji = 0;
tyrano.plugin.kag.variable.tf.store_item_parameter1_no= 0;
tyrano.plugin.kag.variable.tf.store_item_parameter2_no = 0;
tyrano.plugin.kag.variable.tf.store_item_parameter3_no = 0;
tyrano.plugin.kag.variable.tf.store_item_effect1_number =0;
tyrano.plugin.kag.variable.tf.store_item_effect2_number =0;
tyrano.plugin.kag.variable.tf.store_item_effect3_number =0;
tyrano.plugin.kag.variable.tf.store_item_explain = 0;
tyrano.plugin.kag.variable.tf.store_item_value_hyouji = 0;
tyrano.plugin.kag.variable.tf.store_item_value_zokusei = 0;
tyrano.plugin.kag.variable.tf.item_parame= [];
tyrano.plugin.kag.variable.tf.item_parameter= 0;
tyrano.plugin.kag.variable.tf.item_data =0;
							
							 tyrano.plugin.kag.variable.tf.store_item_stock_hyouji =[];
							 tyrano.plugin.kag.variable.tf.store_item_hyouji = [];	




  
//値のあるアイテム変数だけを抽出
for(i=1;i<store_item_para.length;i++){
if(tyrano.plugin.kag.variable.tf.store_item[i]==1){
	//売買対象の数
  		tyrano.plugin.kag.variable.tf.store_item_lori.push(tyrano.plugin.kag.variable.tf.store_item[i]);
  		//値段
			tyrano.plugin.kag.variable.tf.store_item_value.push(tyrano.plugin.kag.variable.tf.store_item_value_all[i]);
  		//ストックリストから対象の商品の所持数
  		i-=1;
  		tyrano.plugin.kag.variable.tf.stock_hyouji.push(this.kag.stat.f["store_item_stock_v"] [i]);	  
  		i+=1;
  		
  		//対象インデックス番号iのデータを配列として入力
  		tf.item_parame.push(store_item_para[i]);
  

}
}







                        //各パラメータを抽出して配列化
						//tyrano.plugin.kag.variable.tf.item_name= this.kag.stat.f["equip_item_list"].map(function(x) {return x.name})
							tf.store_item_num= tf.item_parame.map(function(x) {return x.number})
							tf.store_item_name_hyouji = tf.item_parame.map(function(x) {return x.name})
							tf.store_item_type_hyouji = tf.item_parame.map(function(x) {return x.type})
							tf.store_item_parameter1_no =  tf.item_parame.map(function(x) {return x.parameter_1})
							tf.store_item_parameter2_no =  tf.item_parame.map(function(x) {return x.parameter_2})
							tf.store_item_parameter3_no =  tf.item_parame.map(function(x) {return x.parameter_3})
							tf.store_item_effect1_number = tf.item_parame.map(function(x) {return x.effect_1_number})
							tf.store_item_effect2_number = tf.item_parame.map(function(x) {return x.effect_2_number})
							tf.store_item_effect3_number = tf.item_parame.map(function(x) {return x.effect_3_number}) 
							tf.store_item_explain =  tf.item_parame.map(function(x) {return x.explain})
							tf.store_item_value_hyouji = tf.item_parame.map(function(x) {return x.value})
							tf.store_item_value_zokusei = tf.item_parame.map(function(x) {return x.attribute}) 
                            tf.type_array =  tf.item_parame.map(function(x) {return x.type})      		
                            tf.type_zokusei =  tf.item_parame.map(function(x) {return x.attribute})






                	   for(i=0;i<f.store_item_number;i++){
                	   	
                	   	if(tf.store_item_lori[i]>0){
                	   	  //tf.item_parameter = tf.item_parame[i];
							        tf.store_item_stock_hyouji.push(tf.stock_hyouji[i]);
							        tf.store_item_hyouji.push(1);	


                	   	  		//for (tf.item_data of Object.keys(tf.item_parameter)){
                                      //tf.store_item_hyouji.push(tf.item_parameter[tf.item_data[i]]);  
									//} 
						   }
					   }


	

						   
			//this.kag.stat.f["muryou"]=1;

                                      
                                      
                                      if(this.kag.stat.f["store_curnival_sale"]==1){
										tf.store_item_value_hyouji = tf.store_item_value_hyouji.map(function(x) {return Math.round(x/2)})
										//store_item_hyouji[10]=Math.round(store_item_hyouji[10]/2);
										  }
                                      
                                      if(this.kag.stat.f["muryou"]==1&&this.kag.stat.f["item_other"]!=1&&this.kag.stat.f["item_cook"]!=1){
                                      	//store_item_hyouji[10]='free';

										//(function(num) {return num * 2})
										//return value * 2;
										tf.store_item_value_hyouji = tf.store_item_value_hyouji.map(function(x) {return 'free'})
                                      	}else{
                                      	this.kag.stat.f["muryou"]=0;	
                                      	}
                                       if(this.kag.stat.f["muryou_yatai"]==1&&this.kag.stat.f["item_other"]==1){
										//store_item_hyouji[10]='free';
										tf.store_item_value_hyouji = tf.store_item_value_hyouji.map(function(x) {return 'free'})
										   }





									//tf.store_item_num.push(tf.store_item_hyouji[0]);
									//tf.store_item_name_hyouji.push(tf.store_item_hyouji[1]);
									//tf.store_item_type_hyouji.push(tf.store_item_hyouji[2]);
									//tf.store_item_parameter1_no.push(tf.store_item_hyouji[3]);
									//tf.store_item_parameter2_no.push(tf.store_item_hyouji[4]);
									//tf.store_item_parameter3_no.push(tf.store_item_hyouji[5]);
									//tf.store_item_effect1_number.push(tf.store_item_hyouji[6]);
									//tf.store_item_effect2_number.push(tf.store_item_hyouji[7]);
									//tf.store_item_effect3_number.push(tf.store_item_hyouji[8]);
									//tf.store_item_explain.push(tf.store_item_hyouji[9]);
									//tf.store_item_value_hyouji.push(tf.store_item_hyouji[10]);
									//tf.store_item_value_zokusei.push(tf.store_item_hyouji[11]);
							
							        //tf.store_item_stock_hyouji.push(tf.stock_hyouji[i]);
							        //tf.store_item_hyouji.push(1);	



													    
					
                   //tyrano.plugin.kag.variable.tf.type_array.push(tf.store_item_hyouji[2]);               		
                   //tyrano.plugin.kag.variable.tf.type_zokusei.push(tf.store_item_hyouji[11]);              	 
                  //item_parameter =0;
                 //store_item_hyouji =[];
             

 

 
 



[endscript]

 							








[endmacro]








[return]