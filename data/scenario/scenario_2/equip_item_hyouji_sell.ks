
;装備アイテム表示用




;アイテム表示用の変数に初期値入力
[equip_number_shoki]
[battle_number_shoki]
[cook_number_shoki]
[other_number_shoki]


[clearstack]

;アイテム欄クリックの初期化

[free name="equip" layer=2]
[clearfix name="equip_moji"]


;個々のアイテムの表示フラグ（これがあると同じ名前ならまとめられる）tf.equip_item_hyouji1_number

[iscript]
tyrano.plugin.kag.variable.tf.equip_item_all_stock =0;

tyrano.plugin.kag.variable.tf.equip_item_all_stock = this.kag.stat.f["equip_item_stock"].reduce(function(result,value,index,array){
    return result + value;
});

[endscript]


[if exp="tf.equip_item_all_stock==0"]
[jump target=*no_item]
[endif]


[iscript]
tyrano.plugin.kag.variable.tf.equip_item_para_no =[];
var equip_item_hyouji =[];
var equip_item_stock_hyouji =[];
tyrano.plugin.kag.variable.tf.equip_item_hyouji_con =[];
tyrano.plugin.kag.variable.tf.equip_item_dis=[0,];

tyrano.plugin.kag.variable.tf.equip_item_para_all= this.kag.stat.f["equip_item_list"].map(function(x) {return x})

     for(i=1;i<35;i++){
	if(this.kag.stat.f["equip_item_stock"][i]>0){			
       tyrano.plugin.kag.variable.tf.equip_item_para_no.push(tyrano.plugin.kag.variable.tf.equip_item_para_all[i]);
       equip_item_stock_hyouji.push(this.kag.stat.f["equip_item_stock"][i]);
         }      
        }
    

   for(i=0;i<34;i++){
                	   	
                	   	if(equip_item_stock_hyouji[i]>0){
                	   	  var item_parameter = tyrano.plugin.kag.variable.tf.equip_item_para_no[i]; 
                	   	  		for (var item_data of Object.keys(item_parameter)){
                                      equip_item_hyouji.push(item_parameter[item_data]); 
                                      
                                       } 
                                       var number =i;
                                       equip_item_hyouji.push(equip_item_stock_hyouji[i]);
                                       tyrano.plugin.kag.variable.tf.equip_item_hyouji_con.push(1);
                                       tyrano.plugin.kag.variable.tf.equip_item_dis.push(equip_item_hyouji);
                                     
                                
								item_parameter=0;
								equip_item_hyouji =[];
								  }
								}
			[endscript]								
								
					

[eval  exp="tf.equip_item_x=250"]
[eval exp="tf.equip_item_y=80"]
[eval  exp="tf.equip_item_x_stock=445"]
[eval exp="tf.equip_item_x_price_moji=tf.equip_item_x_stock+75"]
[eval exp="tf.equip_item_y_price_moji=tf.equip_item_y-15"]
[eval exp="tf.equip_item_y_2=tf.equip_item_y+45"]
[eval exp="tf.equip_item_y_3=tf.equip_item_y_2+45"]
[eval exp="tf.equip_item_y_4=tf.equip_item_y_3+45"]
[eval exp="tf.equip_item_y_5=tf.equip_item_y_4+45"]
[eval exp="tf.equip_item_y_6=tf.equip_item_y_5+45"]
[eval exp="tf.equip_item_y_7=tf.equip_item_y_6+45"]
[eval exp="tf.equip_item_y_8=tf.equip_item_y_7+45"]
[eval exp="tf.equip_item_y_9=tf.equip_item_y_8+45"]

[eval exp="tf.item1_key_x=tf.equip_item_x-5"]
[eval exp="tf.item2_key_x=tf.equip_item_x-5"]
[eval exp="tf.item3_key_x=tf.equip_item_x-5"]
[eval exp="tf.item4_key_x=tf.equip_item_x-5"]
[eval exp="tf.item5_key_x=tf.equip_item_x-5"]
[eval exp="tf.item6_key_x=tf.equip_item_x-5"]
[eval exp="tf.item7_key_x=tf.equip_item_x-5"]
[eval exp="tf.item8_key_x=tf.equip_item_x-5"]
[eval exp="tf.item9_key_x=tf.equip_item_x-5"]

[eval exp="tf.item1_key_y=tf.equip_item_y+3"]
[eval exp="tf.item2_key_y=tf.item1_key_y+45"]
[eval exp="tf.item3_key_y=tf.item2_key_y+45"]
[eval exp="tf.item4_key_y=tf.item3_key_y+45"]
[eval exp="tf.item5_key_y=tf.item4_key_y+45"]
[eval exp="tf.item6_key_y=tf.item5_key_y+45"]
[eval exp="tf.item7_key_y=tf.item6_key_y+45"]
[eval exp="tf.item8_key_y=tf.item7_key_y+45"]
[eval exp="tf.item9_key_y=tf.item8_key_y+45"]

[eval exp="tf.equip_item_y_trush=tf.equip_item_y-10"]
[eval exp="tf.equip_item_y_trush_2=tf.equip_item_y_2-10"]
[eval exp="tf.equip_item_y_trush_3=tf.equip_item_y_3-10"]
[eval exp="tf.equip_item_y_trush_4=tf.equip_item_y_4-10"]
[eval exp="tf.equip_item_y_trush_5=tf.equip_item_y_5-10"]
[eval exp="tf.equip_item_y_trush_6=tf.equip_item_y_6-10"]
[eval exp="tf.equip_item_y_trush_7=tf.equip_item_y_7-10"]
[eval exp="tf.equip_item_y_trush_8=tf.equip_item_y_8-10"]
[eval exp="tf.equip_item_y_trush_9=tf.equip_item_y_9-10"]


;売却値段表示
[eval exp="tf.equip_item_x_sell=tf.equip_item_x_stock+60"]
[eval exp="tf.equip_item_x_sell_price=555"]


[clearstack]


[confirm_value]


;アイテムがない場合
[if exp="tf.equip_item_all_stock==0"]
[clearfix name="equip"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="equip" size=20 x=490 y=&tf.equip_item_y_2]

[endif]


;売却値段の文字

[ptext layer=2 page=fore text='売却額' face=antique name="equip_moji" size=15 x=&tf.equip_item_x_price_moji y=&tf.equip_item_y_price_moji]



[clearstack]



[if exp="tf.equip_item_next_page==0"]
[clearfix name="equip_cursor"]
[elsif exp="tf.equip_item_next_page==1"]
[clearfix name="equip_cursor"]
;アイテム１0より多い
[if exp="tf.equip_item_hyouji_con[9]==1"]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji_10]
[else]
[eval exp="tf.equip_item_next_page=tf.equip_item_next_page-1"]

[endif]



[elsif exp="tf.equip_item_next_page==2"]
[clearfix name="equip_cursor"]
[if exp="tf.equip_item_hyouji_con[18]==1"]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji_19]
[else]
[eval exp="tf.equip_item_next_page=tf.equip_item_next_page-1"]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji_10]
[endif]

[elsif exp="tf.equip_item_next_page==3"]
[clearfix name="equip_cursor"]

[if exp="tf.equip_item_hyouji_con[27]==1"]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji_28]
[else]
[eval exp="tf.equip_item_next_page=tf.equip_item_next_page-1"]
[jump storage="scenario_2/equip_item_hyouji_sell.ks" target=*item_hyouji_19]
[endif]

[else]
[endif]



*first_page
[clearstack]
;一番目


[if exp="tf.equip_item_hyouji_con[0]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[1]=tf.equip_item_no[1]+1" fix="true" storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[1][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y]

[ptext layer=2 page=fore text=&tf.equip_item_dis[1][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y]

;-------

[endif]



;二番目
[if exp="tf.equip_item_hyouji_con[1]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[2]=tf.equip_item_no[2]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[2][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_2]

[ptext layer=2 page=fore text=&tf.equip_item_dis[2][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_2]

;-------

[endif]

;さん番目


[if exp="tf.equip_item_hyouji_con[2]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[3]=tf.equip_item_no[3]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[3][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_3]

[ptext layer=2 page=fore text=&tf.equip_item_dis[3][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_3]

;-------

[endif]


;よん番目

[if exp="tf.equip_item_hyouji_con[3]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[4]=tf.equip_item_no[4]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[4][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_4]

[ptext layer=2 page=fore text=&tf.equip_item_dis[4][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_4]

;-------

[endif]


;５番目
[if exp="tf.equip_item_hyouji_con[4]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[5]=tf.equip_item_no[5]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[5][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_5]

[ptext layer=2 page=fore text=&tf.equip_item_dis[5][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_5]

;-------

[endif]


;６番目


[if exp="tf.equip_item_hyouji_con[5]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[6]=tf.equip_item_no[6]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[6][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_6]

[ptext layer=2 page=fore text=&tf.equip_item_dis[6][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_6]

;-------

[endif]


;７番目

[if exp="tf.equip_item_hyouji_con[6]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[7]=tf.equip_item_no[7]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[7][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_7]

[ptext layer=2 page=fore text=&tf.equip_item_dis[7][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_7]

;-------

[endif]


;８番目

;------------------------------------------------------------------------------

[if exp="tf.equip_item_hyouji_con[7]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[8]=tf.equip_item_no[8]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_dis[8][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_8]

[ptext layer=2 page=fore text=&tf.equip_item_dis[8][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_8]

;-------

[endif]

;９番目

[if exp="tf.equip_item_hyouji_con[8]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[9]=tf.equip_item_no[9]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_dis[9][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_9]

[ptext layer=2 page=fore text=&tf.equip_item_dis[9][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_9]

;-------

[endif]


;---------------------------------------------------------------------------------------------------------
;次のページボタン
[if exp="tf.equip_item_hyouji_con[9]==1"]
[button graphic="cursor.gif" name="equip_cursor" fix=true  exp="tf.equip_item_next_page=tf.equip_item_next_page+1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_next_page x=575 y=&tf.equip_item_y_9]
[endif]


[if exp="tf.equip_item_next_page==0"]
[s]
[endif]

;二ページ目
*equip_item_next_page
[clearstack]
[if exp="tf.equip_item_next_page>=1"]
[clearstack]
[cm]
[clearfix name="equip"]
[clearfix name="equip_cursor"]
[free name="key" layer=2]
[item_suuti_delete]
[free name="equip" layer=2]
[eval exp="tf.equip_item_no[1]=0"]
[eval exp="tf.equip_item_no[2]=0"]
[eval exp="tf.equip_item_no[3]=0"]
[eval exp="tf.equip_item_no[4]=0"]
[eval exp="tf.equip_item_no[5]=0"]
[eval exp="tf.equip_item_no[6]=0"]
[eval exp="tf.equip_item_no[7]=0"]
[eval exp="tf.equip_item_no[8]=0"]
[eval exp="tf.equip_item_no[9]=0"]

[clearfix name="equip_moji" ]

*item_hyouji_10


;アイテム欄10

[if exp="tf.equip_item_hyouji_con[9]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[10]=tf.equip_item_no[10]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[10][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[10][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄11


[if exp="tf.equip_item_hyouji_con[10]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[11]=tf.equip_item_no[11]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[11][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[11][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄12


[if exp="tf.equip_item_hyouji_con[11]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[12]=tf.equip_item_no[12]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[12][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[12][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄13




[if exp="tf.equip_item_hyouji_con[12]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[13]=tf.equip_item_no[13]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[13][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[13][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄14

[if exp="tf.equip_item_hyouji_con[13]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[14]=tf.equip_item_no[14]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[14][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[14][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6

;アイテム欄15
[if exp="tf.equip_item_hyouji_con[14]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[15]=tf.equip_item_no[15]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[15][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[15][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄16


[if exp="tf.equip_item_hyouji_con[15]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[16]=tf.equip_item_no[16]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[16][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[16][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8
;アイテム欄17


[if exp="tf.equip_item_hyouji_con[16]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[17]=tf.equip_item_no[17]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_dis[17][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_dis[17][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄18


[if exp="tf.equip_item_hyouji_con[17]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[18]=tf.equip_item_no[18]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_dis[18][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_dis[18][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------








;前のページボタン
[button graphic="cursor_above.gif" name="equip_cursor" fix=true exp="tf.equip_item_next_page=tf.equip_item_next_page-1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_back_page x=575 y=&tf.equip_item_y_8]
;次ページボタン
[if exp="tf.equip_item_hyouji_con[18]==1"]
[button graphic="cursor.gif" name="equip_cursor" fix=true  exp="tf.equip_item_next_page=tf.equip_item_next_page+1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_next_page_2 x=575 y=&tf.equip_item_y_9]
[endif]

[if exp="tf.equip_item_next_page==1"]
[s]
[endif]
;------------
[endif]


*equip_item_back_page

[if exp="tf.equip_item_next_page==0"]
[eval exp="tf.equip_item_next_page=0"]
[clearstack]
[cm]
[item_suuti_delete]
[clearfix name="equip"]
[clearfix name="equip_cursor"]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_no[10]=0"]
[eval exp="tf.equip_item_no[11]=0"]
[eval exp="tf.equip_item_no[12]=0"]
[eval exp="tf.equip_item_no[13]=0"]
[eval exp="tf.equip_item_no[14]=0"]
[eval exp="tf.equip_item_no[15]=0"]
[eval exp="tf.equip_item_no[16]=0"]
[eval exp="tf.equip_item_no[17]=0"]
[eval exp="tf.equip_item_no[18]=0"]
[item_suuti_delete]

[clearfix name="equip" ]
[clearfix name="equip_moji" ]


[jump target=*first_page]
[endif]



*equip_item_next_page_2
[if exp="tf.equip_item_next_page>=2"]
[clearstack]
[cm]
[item_suuti_delete]
[clearfix name="equip"]
[clearfix name="equip_cursor"]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_no[10]=0"]
[eval exp="tf.equip_item_no[11]=0"]
[eval exp="tf.equip_item_no[12]=0"]
[eval exp="tf.equip_item_no[13]=0"]
[eval exp="tf.equip_item_no[14]=0"]
[eval exp="tf.equip_item_no[15]=0"]
[eval exp="tf.equip_item_no[16]=0"]
[eval exp="tf.equip_item_no[17]=0"]
[eval exp="tf.equip_item_no[18]=0"]
[item_suuti_delete]


[clearfix name="equip_moji" ]

;アイテム欄１９から２７表示


*item_hyouji_19
[clearstack]


;アイテム欄19

[if exp="tf.equip_item_hyouji_con[18]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[19]=tf.equip_item_no[19]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[19][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[19][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄20

[if exp="tf.equip_item_hyouji_con[19]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[20]=tf.equip_item_no[20]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[20][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[20][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄21


[if exp="tf.equip_item_hyouji_con[20]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[21]=tf.equip_item_no[21]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[21][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[21][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄22


[if exp="tf.equip_item_hyouji_con[21]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[22]=tf.equip_item_no[22]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[22][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[22][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄23



[if exp="tf.equip_item_hyouji_con[22]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[23]=tf.equip_item_no[23]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[23][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[23][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄24

[if exp="tf.equip_item_hyouji_con[23]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[24]=tf.equip_item_no[24]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[24][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[24][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7

;アイテム欄25


[if exp="tf.equip_item_hyouji_con[24]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[25]=tf.equip_item_no[25]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[25][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[25][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8

;アイテム欄26

[if exp="tf.equip_item_hyouji_con[25]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[26]=tf.equip_item_no[26]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_dis[26][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_8]
[ptext layer=2 page=fore text=&tf.equip_item_dis[26][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄27


[if exp="tf.equip_item_hyouji_con[26]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[27]=tf.equip_item_no[27]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_dis[27][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_9]
[ptext layer=2 page=fore text=&tf.equip_item_dis[27][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------




;前のページボタン
[button graphic="cursor_above.gif" name="equip_cursor" fix=true exp="tf.equip_item_next_page=tf.equip_item_next_page-1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_back_page_2 x=575 y=&tf.equip_item_y_8]

;次ページボタン
[if exp="tf.equip_item_hyouji_con[27]==1"]
[button graphic="cursor.gif" name="equip_cursor" fix=true  exp="tf.equip_item_next_page=tf.equip_item_next_page+1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_next_page_3 x=575 y=&tf.equip_item_y_9]
[endif]

[if exp="tf.equip_item_next_page==2"]
[s]
[endif]

[endif]

*equip_item_back_page_2 

[if exp="tf.equip_item_next_page==1"]
[clearstack]

[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_no[19]=0"]
[eval exp="tf.equip_item_no[20]=0"]
[eval exp="tf.equip_item_no[21]=0"]
[eval exp="tf.equip_item_no[22]=0"]
[eval exp="tf.equip_item_no[23]=0"]
[eval exp="tf.equip_item_no[24]=0"]
[eval exp="tf.equip_item_no[25]=0"]
[eval exp="tf.equip_item_no[26]=0"]
[eval exp="tf.equip_item_no[27]=0"]
[item_suuti_delete]

[clearfix name="equip" ]
[clearfix name="equip_cursor"]
[clearfix name="equip_moji" ]

;10からの表示へ
[jump target=*item_hyouji_10]
[endif]

*equip_item_next_page_3 

[if exp="tf.equip_item_next_page==3"]
[clearstack]

[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_no[19]=0"]
[eval exp="tf.equip_item_no[20]=0"]
[eval exp="tf.equip_item_no[21]=0"]
[eval exp="tf.equip_item_no[22]=0"]
[eval exp="tf.equip_item_no[23]=0"]
[eval exp="tf.equip_item_no[24]=0"]
[eval exp="tf.equip_item_no[25]=0"]
[eval exp="tf.equip_item_no[26]=0"]
[eval exp="tf.equip_item_no[27]=0"]
[item_suuti_delete]

[clearfix name="equip" ]
[clearfix name="equip_cursor"]
[clearfix name="equip_moji" ]

;28から36まで表示
*item_hyouji_28
[clearstack]
;1

;アイテム欄28

[if exp="tf.equip_item_hyouji_con[27]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[28]=tf.equip_item_no[28]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[28][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y]
[ptext layer=2 page=fore text=&tf.equip_item_dis[28][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2


;アイテム欄29

[if exp="tf.equip_item_hyouji_con[28]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[29]=tf.equip_item_no[29]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[29][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_2]
[ptext layer=2 page=fore text=&tf.equip_item_dis[29][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3


;アイテム欄30

[if exp="tf.equip_item_hyouji_con[29]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[30]=tf.equip_item_no[30]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[30][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_3]
[ptext layer=2 page=fore text=&tf.equip_item_dis[30][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄31



[if exp="tf.equip_item_hyouji_con[30]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[31]=tf.equip_item_no[31]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[31][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_4]
[ptext layer=2 page=fore text=&tf.equip_item_dis[31][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄32



[if exp="tf.equip_item_hyouji_con[31]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[32]=tf.equip_item_no[32]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[32][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_5]
[ptext layer=2 page=fore text=&tf.equip_item_dis[32][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄33


[if exp="tf.equip_item_hyouji_con[32]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[33]=tf.equip_item_no[33]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[33][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_6]
[ptext layer=2 page=fore text=&tf.equip_item_dis[33][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄34




[if exp="tf.equip_item_hyouji_con[33]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.equip_item_no[34]=tf.equip_item_no[34]+1" fix="true"  storage="scenario_2/equip_item_1_hyouji_sell.ks"  name="equip_moji" x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[34][1] face=antique name="equip" size=20 x=&tf.equip_item_x y=&tf.equip_item_y_7]
[ptext layer=2 page=fore text=&tf.equip_item_dis[34][12] face=antique name="equip" size=20 x=&tf.equip_item_x_stock y=&tf.equip_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------




;前のページボタン
[button graphic="cursor_above.gif" name="equip_cursor" fix=true exp="tf.equip_item_next_page=tf.equip_item_next_page-1" storage="scenario_2/equip_item_hyouji_sell.ks" target=*equip_item_back_page_3 x=575 y=&tf.equip_item_y_8]

[if exp="tf.equip_item_next_page==3"]
[s]
[endif]
[endif]


*equip_item_back_page_3 

[if exp="tf.equip_item_next_page==2"]


[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="equip" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.equip_item_no[28]=0"]
[eval exp="tf.equip_item_no[29]=0"]
[eval exp="tf.equip_item_no[30]=0"]
[eval exp="tf.equip_item_no[31]=0"]
[eval exp="tf.equip_item_no[32]=0"]
[eval exp="tf.equip_item_no[33]=0"]
[eval exp="tf.equip_item_no[34]=0"]

[item_suuti_delete]

[clearfix name="equip" ]
[clearfix name="equip_cursor"]
[clearfix name="equip_moji" ]



;19からの表示へ
[jump target=*item_hyouji_19]
[endif]



*equip_process_end
*no_item
[if exp="tf.equip_item_all_stock==0"]
[clearfix name="equip"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="equip" size=20 x=250 y=125]
[endif]

[clearfix name="battle_moji_choice"]
[clearfix name="equip_moji_choice"]
[clearfix name="cook_moji_choice"]
[clearfix name="other_moji_choice"]
[free name="battle_hyouji_moji" layer=2"]
[free name="cook_hyouji_moji" layer=2"]
[free name="equip_hyouji_moji" layer=2"]
[free name="other_hyouji_moji" layer=2"]

[jump storage="scenario_2/item_sell_macro.ks" target=*first]


