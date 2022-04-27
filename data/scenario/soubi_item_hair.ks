
[iscript]

tyrano.plugin.kag.variable.tf.equip_item_hyouji=[];
var equip_item_hyouji=[];
tyrano.plugin.kag.variable.tf.item_hyouji_confirm=[0,];
tyrano.plugin.kag.variable.tf.equip_item_number =[0,];
var equip_item_hyouji_value= [];
var equip_item_hyouji_con =[];


  var i =0;
  var j =0;
  var hyouji=[];


    //一個のアイテム欄に対して３４通りのアイテム表示候補
    


 for(i=1;i<35;i++){	
 

 
 	//持ってる装備品の数と全パラメータ
 	  if(this.kag.stat.f["equip_item_stock"][i]>=1&&this.kag.stat.f["equip_item_list"][i].type=='hair'){	  	
 	  	hyouji.push(this.kag.stat.f["equip_item_stock"][i]); 	
 	  	tyrano.plugin.kag.variable.tf.equip_item_hyouji.push(this.kag.stat.f["equip_item_list"][i]);
	
 	  } 	
 	  
 	  	
 	  	

 }
 this.kag.stat.f["hogetto"] =0;
this.kag.stat.f["hogetto"] =  hyouji.length;


for(i=0;i<19;i++){
		
	if(this.kag.stat.f["hogetto"] >0){
		                	   	  var item_parameter = tyrano.plugin.kag.variable.tf.equip_item_hyouji[i]; 
                	   	  		for (var item_data of Object.keys(item_parameter)){
                                      equip_item_hyouji.push(item_parameter[item_data]);  }          					
			                   tyrano.plugin.kag.variable.tf.equip_item_all_stock+=1;
 							switch(i){									
                        	case 0: 
                        	tyrano.plugin.kag.variable.tf.equip_item_number[1]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_1= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_1_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_1= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_1= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_1= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_1= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_1_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_1_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_1_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_1= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_1_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[1]= 1;							
							 break;
							 case 1:  
                            tyrano.plugin.kag.variable.tf.equip_item_number[2]= equip_item_hyouji[0];                            	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_2= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_2_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_2= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_2= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_2= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_2= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_2_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_2_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_2_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_2= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_2_stock = hyouji[i];
                            tyrano.plugin.kag.variable.tf.item_hyouji_confirm[2]= 1;	
							 break;
						     case 2:     
						    tyrano.plugin.kag.variable.tf.equip_item_number[3]= equip_item_hyouji[0];                          	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_3= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_3_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_3= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_3= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_3= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_3= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_3_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_3_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_3_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_3= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_3_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[3]= 1;								
							 break;

							 case 3:  
							tyrano.plugin.kag.variable.tf.equip_item_number[4]= equip_item_hyouji[0];                             	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_4= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_4_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_4= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_4= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_4= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_4= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_4_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_4_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_4_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_4= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_4_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[4]= 1;							
							 break;
							 case 4:  
							tyrano.plugin.kag.variable.tf.equip_item_number[5]= equip_item_hyouji[0];                             	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_5= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_5_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_5= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_5= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_5= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_5= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_5_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_5_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_5_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_5= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_5_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[5]= 1;							
							 break;
							 case 5:  
							 tyrano.plugin.kag.variable.tf.equip_item_number[6]= equip_item_hyouji[0];                            	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_6= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_6_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_6= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_6= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_6= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_6= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_6_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_6_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_6_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_6= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_6_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[6]= 1;							
							 break;
							 case 6:
							 tyrano.plugin.kag.variable.tf.equip_item_number[7]= equip_item_hyouji[0];                               	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_7= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_7_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_7= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_7= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_7= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_7= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_7_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_7_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_7_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_7= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_7_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[7]= 1;							
							 break;
							 case 7:  
							tyrano.plugin.kag.variable.tf.equip_item_number[8]= equip_item_hyouji[0];                             	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_8= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_8_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_8= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_8= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_8= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_8= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_8_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_8_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_8_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_8= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_8_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[8]= 1;								
							 break;
							 case 8:  
							tyrano.plugin.kag.variable.tf.equip_item_number[9]= equip_item_hyouji[0];                            	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_9= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_9_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_9= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_9= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_9= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_9= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_9_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_9_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_9_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_9= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_9_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[9]= 1;								
							 break;
							 case 9: 
							tyrano.plugin.kag.variable.tf.equip_item_number[10]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_10= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_10_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_10= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_10= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_10= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_10= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_10_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_10_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_10_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_10= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_10_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[10]= 1;							
							 break;
							 case 10: 
							tyrano.plugin.kag.variable.tf.equip_item_number[11]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_11= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_11_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_11= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_11= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_11= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_11= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_11_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_11_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_11_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_11= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_11_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[11]= 1;							
							 break;
							 case 11:   
							tyrano.plugin.kag.variable.tf.equip_item_number[12]= equip_item_hyouji[0];                            	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_12= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_12_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_12= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_12= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_12= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_12= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_12_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_12_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_12_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_12= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_12_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[12]= 1;							
							 break;
							 case 12:  
							tyrano.plugin.kag.variable.tf.equip_item_number[13]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_13= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_13_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_13= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_13= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_13= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_13= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_13_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_13_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_13_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_13= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_13_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[13]= 1;							
							 break;
							 case 13:   
							tyrano.plugin.kag.variable.tf.equip_item_number[14]= equip_item_hyouji[0];                             	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_14= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_14_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_14= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_14= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_14= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_14= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_14_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_14_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_14_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_14= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_14_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[14]= 1;						
							 break;
							 case 14: 
							tyrano.plugin.kag.variable.tf.equip_item_number[15]= equip_item_hyouji[0];                               	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_15= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_15_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_15= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_15= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_15= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_15= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_15_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_15_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_15_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_15= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_15_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[15]= 1;							
							 break;
							 case 15:  
							tyrano.plugin.kag.variable.tf.equip_item_number[16]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_16= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_16_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_16= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_16= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_16= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_16= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_16_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_16_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_16_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_16= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_16_stock = hyouji[i];
						           tyrano.plugin.kag.variable.tf.item_hyouji_confirm[16]= 1;					
							 break;
							 case 16: 
							tyrano.plugin.kag.variable.tf.equip_item_number[17]= equip_item_hyouji[0];                             	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_17= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_17_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_17= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_17= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_17= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_17= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_17_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_17_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_17_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_17= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_17_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[17]= 1;							
							 break;
							 case 17:  
							tyrano.plugin.kag.variable.tf.equip_item_number[18]= equip_item_hyouji[0];                              	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_18= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_18_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_18= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_18= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_18= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_18= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_18_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_18_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_18_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_18= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_18_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[18]= 1;								
							 break;
							 default:
							tyrano.plugin.kag.variable.tf.equip_item_number[2]= equip_item_hyouji[0];                               	
   							tyrano.plugin.kag.variable.tf.equip_item_number_no_2= equip_item_hyouji[0];
                        	tyrano.plugin.kag.variable.tf.equip_item_hyouji_2_name = equip_item_hyouji[1];
                        	tyrano.plugin.kag.variable.tf.equip_item_type_no_2= equip_item_hyouji[2];
                        	tyrano.plugin.kag.variable.tf.equip_item_parameter1_no_2= equip_item_hyouji[3];
							tyrano.plugin.kag.variable.tf.equip_item_parameter2_no_2= equip_item_hyouji[4];
							tyrano.plugin.kag.variable.tf.equip_item_parameter3_no_2= equip_item_hyouji[5];
							tyrano.plugin.kag.variable.tf.equip_item_effect1_no_2_number= equip_item_hyouji[6]
							tyrano.plugin.kag.variable.tf.equip_item_effect2_no_2_number= equip_item_hyouji[7];
							tyrano.plugin.kag.variable.tf.equip_item_effect3_no_2_number= equip_item_hyouji[8];
							tyrano.plugin.kag.variable.tf.equip_item_explain_2= equip_item_hyouji[9];
							tyrano.plugin.kag.variable.tf.equip_item_hyouji_2_stock = hyouji[i];
						    tyrano.plugin.kag.variable.tf.item_hyouji_confirm[2]= 1;							
							 break;


	
                            }
                            }
		             this.kag.stat.f["hogetto"]-=1;  　    
					equip_item_hyouji =[];
}
			




[endscript]

[eval exp="tf.equip_hyouji=0"]

[return]