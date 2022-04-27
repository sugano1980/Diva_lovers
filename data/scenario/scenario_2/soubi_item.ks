
[iscript]



tyrano.plugin.kag.variable.tf.equip_item_hyouji=[];
var equip_item_hyouji=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[];
tyrano.plugin.kag.variable.tf.equip_item_number =[];
var equip_item_hyouji_value= [];
var equip_item_hyouji_con =[];


  var i =0;
  var j =0;
  var hyouji=[];


    //一個のアイテム欄に対して３４通りのアイテム表示候補
    


 for(i=1;i<f.equip_item_list.length;i++){	
 

 
 	//持ってる装備品の数と全パラメータ
 	  if(this.kag.stat.f["equip_item_stock"][i]>=1&&this.kag.stat.f["equip_item_list"][i].type=='equip'&&tyrano.plugin.kag.variable.tf.hair_hyouji!=1){	  	
 	  	hyouji.push(this.kag.stat.f["equip_item_stock"][i]); 	
 	  	tyrano.plugin.kag.variable.tf.equip_item_hyouji.push(this.kag.stat.f["equip_item_list"][i]);
	
 	  } else if(this.kag.stat.f["equip_item_stock"][i]>=1&&this.kag.stat.f["equip_item_list"][i].type=='hair'&&tyrano.plugin.kag.variable.tf.hair_hyouji==1){
		hyouji.push(this.kag.stat.f["equip_item_stock"][i]); 	
 	  	tyrano.plugin.kag.variable.tf.equip_item_hyouji.push(this.kag.stat.f["equip_item_list"][i]);


	   }	
 	  
 }
this.kag.stat.f["hogetto"] =0;
this.kag.stat.f["hogetto"] =  hyouji.length;
tyrano.plugin.kag.variable.tf.type_zokusei_equip=[];
tyrano.plugin.kag.variable.tf.type_zokusei_hair=[];
tyrano.plugin.kag.variable.tf.equip_item_all_stock=0;
tyrano.plugin.kag.variable.tf.equip_item_number=[0,];                              	
tyrano.plugin.kag.variable.tf.equip_item_hyouji_name=[];
tyrano.plugin.kag.variable.tf.equip_item_type_no=[];
tyrano.plugin.kag.variable.tf.equip_item_parameter1_no=[];
tyrano.plugin.kag.variable.tf.equip_item_parameter2_no=[];
tyrano.plugin.kag.variable.tf.equip_item_parameter3_no=[];
tyrano.plugin.kag.variable.tf.equip_item_effect1_id=[];
tyrano.plugin.kag.variable.tf.equip_item_effect2_id=[];
tyrano.plugin.kag.variable.tf.equip_item_effect3_id=[];
tyrano.plugin.kag.variable.tf.equip_item_explain_w=[];
tyrano.plugin.kag.variable.tf.equip_item_hyouji_stock=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,];			



if(f.hogetto>0){

	for(i=0;i<f.hogetto;i++){
		var item_parameter = tyrano.plugin.kag.variable.tf.equip_item_hyouji[i]; 
            for (var item_data of Object.keys(item_parameter)){
                equip_item_hyouji.push(item_parameter[item_data]);}          					
			        tyrano.plugin.kag.variable.tf.equip_item_all_stock+=1;

		
		tyrano.plugin.kag.variable.tf.equip_item_number.push(equip_item_hyouji[0]);                              	
        tyrano.plugin.kag.variable.tf.equip_item_hyouji_name.push (equip_item_hyouji[1]);
        tyrano.plugin.kag.variable.tf.equip_item_type_no.push(equip_item_hyouji[2]);
        tyrano.plugin.kag.variable.tf.equip_item_parameter1_no.push(equip_item_hyouji[3]);
		tyrano.plugin.kag.variable.tf.equip_item_parameter2_no.push(equip_item_hyouji[4]);
		tyrano.plugin.kag.variable.tf.equip_item_parameter3_no.push(equip_item_hyouji[5]);
		tyrano.plugin.kag.variable.tf.equip_item_effect1_id.push(equip_item_hyouji[6]);
		tyrano.plugin.kag.variable.tf.equip_item_effect2_id.push(equip_item_hyouji[7]);
		tyrano.plugin.kag.variable.tf.equip_item_effect3_id.push(equip_item_hyouji[8]);
		tyrano.plugin.kag.variable.tf.equip_item_explain_w.push( equip_item_hyouji[9]);
		tyrano.plugin.kag.variable.tf.equip_item_hyouji_stock.push (hyouji[i]);
		tyrano.plugin.kag.variable.tf.item_hyouji_confirm.push(1);			

		if(tf.hair_hyouji==1){
		tyrano.plugin.kag.variable.tf.type_zokusei_hair.push(equip_item_hyouji[11]); 	
		}else{
		tyrano.plugin.kag.variable.tf.type_zokusei_equip.push(equip_item_hyouji[11]); 
		}

		equip_item_hyouji =[];

	}
	     
}


[endscript]


[eval exp="tf.equip_hyouji=0"]





