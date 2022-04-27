
[iscript]



tyrano.plugin.kag.variable.tf.item_hyouji_list=0;
tyrano.plugin.kag.variable.tf.item_hyouji_stock=0;
tyrano.plugin.kag.variable.tf.process_item_hyouji=[];
var process_item_hyouji=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[];
tyrano.plugin.kag.variable.tf.process_item_number =[];
var process_item_hyouji_value= [];
var process_item_hyouji_con =[];


  var i =0;
  var j =0;
  var hyouji=[];


    //どのアイテムを表示するか、


if(tf.item_battle_hyouji===1){

tf.item_hyouji_list = f.battle_item_list;
tf.item_hyouji_stock = f.battle_item_stock;

}else if(tf.item_equip_hyouji===1){

tf.item_hyouji_list = f.equip_item_list;
tf.item_hyouji_stock = f.equip_item_stock;

}else if(tf.item_other_hyouji===1){

tf.item_hyouji_list = f.other_item_list;
tf.item_hyouji_stock = f.other_item_stock;

}else if(tf.item_cook_hyouji===1){

tf.item_hyouji_list = f.cook_item_list;
tf.item_hyouji_stock = f.cook_item_stock;

}



    


 for(i=1;i<=tf.item_hyouji_list.length;i++){	
 

 
 	//持ってる装備品の数と全パラメータ
 	  if(tf.item_hyouji_stock[i]>=1){	  	
 	  	hyouji.push(tf.item_hyouji_stock[i]); 	
 	  	tyrano.plugin.kag.variable.tf.process_item_hyouji.push(tf.item_hyouji_list[i]);
	
 	  } 
 	  
 }
this.kag.stat.f["hogetto"] =0;
this.kag.stat.f["hogetto"] =  hyouji.length;
tyrano.plugin.kag.variable.tf.process_item_all_stock=0;
tyrano.plugin.kag.variable.tf.type_zokusei=[];
tyrano.plugin.kag.variable.tf.process_item_number=[0,];                              	
tyrano.plugin.kag.variable.tf.process_item_hyouji_name=[];
tyrano.plugin.kag.variable.tf.process_item_type_no=[];
tyrano.plugin.kag.variable.tf.process_item_parameter1_no=[];
tyrano.plugin.kag.variable.tf.process_item_parameter2_no=[];
tyrano.plugin.kag.variable.tf.process_item_parameter3_no=[];
tyrano.plugin.kag.variable.tf.process_item_effect1_id=[];
tyrano.plugin.kag.variable.tf.process_item_effect2_id=[];
tyrano.plugin.kag.variable.tf.process_item_effect3_id=[];
tyrano.plugin.kag.variable.tf.process_item_explain_w=[0,];
tyrano.plugin.kag.variable.tf.process_item_hyouji_stock=[];
tyrano.plugin.kag.variable.tf.process_item_value=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,];			



if(f.hogetto>0){

	for(i=0;i<f.hogetto;i++){
		var item_parameter = tyrano.plugin.kag.variable.tf.process_item_hyouji[i]; 
            for (var item_data of Object.keys(item_parameter)){
                process_item_hyouji.push(item_parameter[item_data]);}          					
			        tyrano.plugin.kag.variable.tf.process_item_all_stock+=1;

		
		tyrano.plugin.kag.variable.tf.process_item_number.push(process_item_hyouji[0]);     
		tyrano.plugin.kag.variable.tf.process_item_hyouji_name.push (process_item_hyouji[1]);
        tyrano.plugin.kag.variable.tf.process_item_type_no.push(process_item_hyouji[2]);
        tyrano.plugin.kag.variable.tf.process_item_parameter1_no.push(process_item_hyouji[3]);

        if(tf.item_battle_hyouji===1){
		tyrano.plugin.kag.variable.tf.process_item_explain_w.push(process_item_hyouji[4]);
        }else{
		tyrano.plugin.kag.variable.tf.process_item_parameter2_no.push(process_item_hyouji[4]);

        }


		tyrano.plugin.kag.variable.tf.process_item_parameter3_no.push(process_item_hyouji[5]);
		tyrano.plugin.kag.variable.tf.process_item_effect1_id.push(process_item_hyouji[6]);
		tyrano.plugin.kag.variable.tf.process_item_effect2_id.push(process_item_hyouji[7]);
		tyrano.plugin.kag.variable.tf.process_item_effect3_id.push(process_item_hyouji[8]);

        if(tf.item_battle_hyouji!=1){
		tyrano.plugin.kag.variable.tf.process_item_explain_w.push(process_item_hyouji[9]);

        }

		if(tf.item_battle_hyouji===1){
		tyrano.plugin.kag.variable.tf.process_item_value.push(process_item_hyouji[5]);
		}else if(tf.item_battle_hyouji!=1){
		tyrano.plugin.kag.variable.tf.process_item_value.push(process_item_hyouji[10]);
		}
		
    
		tyrano.plugin.kag.variable.tf.process_item_hyouji_stock.push(hyouji[i]);
		tyrano.plugin.kag.variable.tf.item_hyouji_confirm.push(1);

        if(tf.item_equip_hyouji===1){
        tyrano.plugin.kag.variable.tf.type_zokusei.push(process_item_hyouji[11]);
        }                        	


		process_item_hyouji =[];

	}
	     
}


[endscript]


[eval exp="tf.process_hyouji=0"]





