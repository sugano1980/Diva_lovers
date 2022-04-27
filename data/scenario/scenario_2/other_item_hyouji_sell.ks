
;その他アイテム表示用



[other_hyouji_delete]
[clearstack]
[cm]
[free name="key" layer=2]
[clearfix name="other"]
[clearfix name="other_cursor"]
[free name="other_moji" layer=2]
[clearfix name="battle"]
[free name="battle_moji" layer=2]
[clearfix name="equip"]
[clearfix name="equip_cursor"]
[free name="equip_moji" layer=2]
[clearfix name="cook"]
[clearfix name="cook_cursor"]
[free name="cook_moji" layer=2]
[eval exp="tf.other_item_all_stock=0"]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.item_choice_key_x y=&tf.item_choice_key_y_4]


[if exp="tf.item_equip_hyouji==1"]

[free name="equip" layer=2]
[clearfix name="equip_moji"]

[equip_hyouji_delete]

[elsif exp="tf.item_battle_hyouji==1"]

[free name="battle" layer=2]
[clearfix name="battle_moji"]

[battle_hyouji_delete]


[elsif exp="tf.item_cook_hyouji==1"]

[free name="cook" layer=2]
[clearfix name="cook_moji"]

[cook_hyouji_delete]

[endif]


[eval exp="tf.item_battle_hyouji=0"]
[eval exp="tf.item_equip_hyouji=0"]
[eval exp="tf.item_other_hyouji=1"]
[eval exp="tf.item_cook_hyouji=0"]








[eval exp="tf.other_item_back_page=0"]
[eval exp="tf.other_item_next_page=0"]




*item_hyouji2_trush
*item_hyouji2_trush

;アイテム表示用の変数に初期値入力
[other_number_shoki]

*process_end
*item_hyouji2



[clearstack]

;アイテム欄クリックの初期化

[free name="other" layer=2]
[clearfix name="other_moji"]


;個々のアイテムの表示フラグ（これがあると同じ名前ならまとめられる）tf.other_item_hyouji1_number

[iscript]
tyrano.plugin.kag.variable.tf.other_item_all_stock =0;

tyrano.plugin.kag.variable.tf.other_item_all_stock = this.kag.stat.f["other_item_stock"].reduce(function(result,value,index,array){
    return result + value;
});

[endscript]


[if exp="tf.other_item_all_stock==0"]
[jump target=*no_item]
[endif]


[iscript]
tyrano.plugin.kag.variable.tf.other_item_para_no =[];
var other_item_hyouji =[];
var other_item_stock_hyouji =[];
tyrano.plugin.kag.variable.tf.other_item_hyouji_con =[];
tyrano.plugin.kag.variable.tf.other_item_dis=[0,];

tyrano.plugin.kag.variable.tf.other_item_para_all= this.kag.stat.f["other_item_list"].map(function(x) {return x})

     for(i=1;i<31;i++){
	if(this.kag.stat.f["other_item_stock"][i]>0){			
       tyrano.plugin.kag.variable.tf.other_item_para_no.push(tyrano.plugin.kag.variable.tf.other_item_para_all[i]);
       other_item_stock_hyouji.push(this.kag.stat.f["other_item_stock"][i]);
         }      
        }
    

   for(i=0;i<31;i++){
                	   	
                	   	if(other_item_stock_hyouji[i]>0){
                	   	  var item_parameter = tyrano.plugin.kag.variable.tf.other_item_para_no[i]; 
                	   	  		for (var item_data of Object.keys(item_parameter)){
                                      other_item_hyouji.push(item_parameter[item_data]); 
                                      
                                       } 
                                       var number =i;
                                       other_item_hyouji.push(other_item_stock_hyouji[i]);
                                       tyrano.plugin.kag.variable.tf.other_item_hyouji_con.push(1);
                                       tyrano.plugin.kag.variable.tf.other_item_dis.push(other_item_hyouji);
                                     
                                
								item_parameter=0;
								other_item_hyouji =[];
								  }
								}
			[endscript]								
								
					

[eval  exp="tf.other_item_x=250"]
[eval exp="tf.other_item_y=80"]
[eval  exp="tf.other_item_x_stock=445"]
[eval exp="tf.other_item_x_price_moji=tf.other_item_x_stock+75"]
[eval exp="tf.other_item_y_price_moji=tf.other_item_y-15"]
[eval exp="tf.other_item_y_2=tf.other_item_y+45"]
[eval exp="tf.other_item_y_3=tf.other_item_y_2+45"]
[eval exp="tf.other_item_y_4=tf.other_item_y_3+45"]
[eval exp="tf.other_item_y_5=tf.other_item_y_4+45"]
[eval exp="tf.other_item_y_6=tf.other_item_y_5+45"]
[eval exp="tf.other_item_y_7=tf.other_item_y_6+45"]
[eval exp="tf.other_item_y_8=tf.other_item_y_7+45"]
[eval exp="tf.other_item_y_9=tf.other_item_y_8+45"]

[eval exp="tf.item1_key_x=tf.other_item_x-5"]
[eval exp="tf.item2_key_x=tf.other_item_x-5"]
[eval exp="tf.item3_key_x=tf.other_item_x-5"]
[eval exp="tf.item4_key_x=tf.other_item_x-5"]
[eval exp="tf.item5_key_x=tf.other_item_x-5"]
[eval exp="tf.item6_key_x=tf.other_item_x-5"]
[eval exp="tf.item7_key_x=tf.other_item_x-5"]
[eval exp="tf.item8_key_x=tf.other_item_x-5"]
[eval exp="tf.item9_key_x=tf.other_item_x-5"]

[eval exp="tf.item1_key_y=tf.other_item_y+3"]
[eval exp="tf.item2_key_y=tf.item1_key_y+45"]
[eval exp="tf.item3_key_y=tf.item2_key_y+45"]
[eval exp="tf.item4_key_y=tf.item3_key_y+45"]
[eval exp="tf.item5_key_y=tf.item4_key_y+45"]
[eval exp="tf.item6_key_y=tf.item5_key_y+45"]
[eval exp="tf.item7_key_y=tf.item6_key_y+45"]
[eval exp="tf.item8_key_y=tf.item7_key_y+45"]
[eval exp="tf.item9_key_y=tf.item8_key_y+45"]

[eval exp="tf.other_item_y_trush=tf.other_item_y-10"]
[eval exp="tf.other_item_y_trush_2=tf.other_item_y_2-10"]
[eval exp="tf.other_item_y_trush_3=tf.other_item_y_3-10"]
[eval exp="tf.other_item_y_trush_4=tf.other_item_y_4-10"]
[eval exp="tf.other_item_y_trush_5=tf.other_item_y_5-10"]
[eval exp="tf.other_item_y_trush_6=tf.other_item_y_6-10"]
[eval exp="tf.other_item_y_trush_7=tf.other_item_y_7-10"]
[eval exp="tf.other_item_y_trush_8=tf.other_item_y_8-10"]
[eval exp="tf.other_item_y_trush_9=tf.other_item_y_9-10"]


;売却値段表示
[eval exp="tf.other_item_x_sell=tf.other_item_x_stock+60"]
[eval exp="tf.other_item_x_sell_price=555"]


[clearstack]


[confirm_other_value]


;アイテムがない場合
[if exp="tf.other_item_all_stock==0"]
[clearfix name="other"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="other" size=20 x=490 y=&tf.other_item_y_2]

[endif]


;売却値段の文字

[ptext layer=2 page=fore text='売却額' face=antique name="other_moji" size=15 x=&tf.other_item_x_price_moji y=&tf.other_item_y_price_moji]



[clearstack]



[if exp="tf.other_item_next_page==0"]
[clearfix name="other_cursor"]
[elsif exp="tf.other_item_next_page==1"]
[clearfix name="other_cursor"]
;アイテム１0より多い
[if exp="tf.other_item_hyouji_con[9]==1"]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji_10]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]

[endif]



[elsif exp="tf.other_item_next_page==2"]
[clearfix name="other_cursor"]
[if exp="tf.other_item_hyouji_con[18]==1"]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji_19]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji_10]
[endif]

[elsif exp="tf.other_item_next_page==3"]
[clearfix name="other_cursor"]

[if exp="tf.other_item_hyouji_con[27]==1"]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji_28]
[else]
[eval exp="tf.other_item_next_page=tf.other_item_next_page-1"]
[jump storage="scenario_2/other_item_hyouji_sell.ks" target=*item_hyouji_19]
[endif]

[else]
[endif]



*first_page
[clearstack]
;一番目


[if exp="tf.other_item_hyouji_con[0]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[1]=tf.other_item_no[1]+1" fix="true" storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[1][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]

[ptext layer=2 page=fore text=&tf.other_item_dis[1][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]

;-------

[endif]



;二番目
[if exp="tf.other_item_hyouji_con[1]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[2]=tf.other_item_no[2]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[2][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]

[ptext layer=2 page=fore text=&tf.other_item_dis[2][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]

;-------

[endif]

;さん番目


[if exp="tf.other_item_hyouji_con[2]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[3]=tf.other_item_no[3]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[3][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]

[ptext layer=2 page=fore text=&tf.other_item_dis[3][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]

;-------

[endif]


;よん番目

[if exp="tf.other_item_hyouji_con[3]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[4]=tf.other_item_no[4]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_dis[4][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]

[ptext layer=2 page=fore text=&tf.other_item_dis[4][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]

;-------

[endif]


;５番目
[if exp="tf.other_item_hyouji_con[4]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[5]=tf.other_item_no[5]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_dis[5][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]

[ptext layer=2 page=fore text=&tf.other_item_dis[5][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]

;-------

[endif]


;６番目


[if exp="tf.other_item_hyouji_con[5]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[6]=tf.other_item_no[6]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_dis[6][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]

[ptext layer=2 page=fore text=&tf.other_item_dis[6][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]

;-------

[endif]


;７番目

[if exp="tf.other_item_hyouji_con[6]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[7]=tf.other_item_no[7]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_dis[7][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]

[ptext layer=2 page=fore text=&tf.other_item_dis[7][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]

;-------

[endif]


;８番目

;------------------------------------------------------------------------------

[if exp="tf.other_item_hyouji_con[7]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[8]=tf.other_item_no[8]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_dis[8][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]

[ptext layer=2 page=fore text=&tf.other_item_dis[8][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]

;-------

[endif]

;９番目

[if exp="tf.other_item_hyouji_con[8]==1"]

;------

[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[9]=tf.other_item_no[9]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_dis[9][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]

[ptext layer=2 page=fore text=&tf.other_item_dis[9][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]

;-------

[endif]


;---------------------------------------------------------------------------------------------------------
;次のページボタン
[if exp="tf.other_item_hyouji_con[9]==1"]
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_next_page x=575 y=&tf.other_item_y_9]
[endif]


[if exp="tf.other_item_next_page==0"]
[s]
[endif]

;二ページ目
*other_item_next_page
[clearstack]
[if exp="tf.other_item_next_page>=1"]
[clearstack]
[cm]
[clearfix name="other"]
[clearfix name="other_cursor"]
[free name="key" layer=2]
[item_suuti_delete]
[free name="other" layer=2]
[eval exp="tf.other_item_no[1]=0"]
[eval exp="tf.other_item_no[2]=0"]
[eval exp="tf.other_item_no[3]=0"]
[eval exp="tf.other_item_no[4]=0"]
[eval exp="tf.other_item_no[5]=0"]
[eval exp="tf.other_item_no[6]=0"]
[eval exp="tf.other_item_no[7]=0"]
[eval exp="tf.other_item_no[8]=0"]
[eval exp="tf.other_item_no[9]=0"]

[clearfix name="other_moji" ]

*item_hyouji_10


;アイテム欄10

[if exp="tf.other_item_hyouji_con[9]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[10]=tf.other_item_no[10]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[10][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[10][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄11


[if exp="tf.other_item_hyouji_con[10]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[11]=tf.other_item_no[11]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[11][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[11][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄12


[if exp="tf.other_item_hyouji_con[11]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[12]=tf.other_item_no[12]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[12][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[12][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄13




[if exp="tf.other_item_hyouji_con[12]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[13]=tf.other_item_no[13]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_dis[13][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_dis[13][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄14

[if exp="tf.other_item_hyouji_con[13]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[14]=tf.other_item_no[14]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_dis[14][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_dis[14][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6

;アイテム欄15
[if exp="tf.other_item_hyouji_con[14]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[15]=tf.other_item_no[15]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_dis[15][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_dis[15][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7
;アイテム欄16


[if exp="tf.other_item_hyouji_con[15]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[16]=tf.other_item_no[16]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_dis[16][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_dis[16][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8
;アイテム欄17


[if exp="tf.other_item_hyouji_con[16]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[17]=tf.other_item_no[17]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_dis[17][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_dis[17][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄18


[if exp="tf.other_item_hyouji_con[17]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[18]=tf.other_item_no[18]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_dis[18][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_dis[18][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------








;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_back_page x=575 y=&tf.other_item_y_8]
;次ページボタン
[if exp="tf.other_item_hyouji_con[18]==1"]
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_next_page_2 x=575 y=&tf.other_item_y_9]
[endif]

[if exp="tf.other_item_next_page==1"]
[s]
[endif]
;------------
[endif]


*other_item_back_page

[if exp="tf.other_item_next_page==0"]
[eval exp="tf.other_item_next_page=0"]
[clearstack]
[cm]
[item_suuti_delete]
[clearfix name="other"]
[clearfix name="other_cursor"]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.other_item_no[10]=0"]
[eval exp="tf.other_item_no[11]=0"]
[eval exp="tf.other_item_no[12]=0"]
[eval exp="tf.other_item_no[13]=0"]
[eval exp="tf.other_item_no[14]=0"]
[eval exp="tf.other_item_no[15]=0"]
[eval exp="tf.other_item_no[16]=0"]
[eval exp="tf.other_item_no[17]=0"]
[eval exp="tf.other_item_no[18]=0"]
[item_suuti_delete]

[clearfix name="other" ]
[clearfix name="other_moji" ]


[jump target=*first_page]
[endif]



*other_item_next_page_2
[if exp="tf.other_item_next_page>=2"]
[clearstack]
[cm]
[item_suuti_delete]
[clearfix name="other"]
[clearfix name="other_cursor"]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.other_item_no[10]=0"]
[eval exp="tf.other_item_no[11]=0"]
[eval exp="tf.other_item_no[12]=0"]
[eval exp="tf.other_item_no[13]=0"]
[eval exp="tf.other_item_no[14]=0"]
[eval exp="tf.other_item_no[15]=0"]
[eval exp="tf.other_item_no[16]=0"]
[eval exp="tf.other_item_no[17]=0"]
[eval exp="tf.other_item_no[18]=0"]
[item_suuti_delete]


[clearfix name="other_moji" ]

;アイテム欄１９から２７表示


*item_hyouji_19
[clearstack]


;アイテム欄19

[if exp="tf.other_item_hyouji_con[18]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[19]=tf.other_item_no[19]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[19][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[19][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2
;アイテム欄20

[if exp="tf.other_item_hyouji_con[19]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[20]=tf.other_item_no[20]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[20][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[20][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3
;アイテム欄21


[if exp="tf.other_item_hyouji_con[20]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[21]=tf.other_item_no[21]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[21][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[21][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;4
;アイテム欄22


[if exp="tf.other_item_hyouji_con[21]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[22]=tf.other_item_no[22]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_dis[22][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_4]
[ptext layer=2 page=fore text=&tf.other_item_dis[22][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_4]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;5
;アイテム欄23



[if exp="tf.other_item_hyouji_con[22]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[23]=tf.other_item_no[23]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_dis[23][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_5]
[ptext layer=2 page=fore text=&tf.other_item_dis[23][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_5]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;6
;アイテム欄24

[if exp="tf.other_item_hyouji_con[23]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[24]=tf.other_item_no[24]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_dis[24][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_6]
[ptext layer=2 page=fore text=&tf.other_item_dis[24][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_6]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;7

;アイテム欄25


[if exp="tf.other_item_hyouji_con[24]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[25]=tf.other_item_no[25]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_dis[25][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_7]
[ptext layer=2 page=fore text=&tf.other_item_dis[25][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_7]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;8

;アイテム欄26

[if exp="tf.other_item_hyouji_con[25]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[26]=tf.other_item_no[26]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_dis[26][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_8]
[ptext layer=2 page=fore text=&tf.other_item_dis[26][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_8]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------

;9

;アイテム欄27


[if exp="tf.other_item_hyouji_con[26]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[27]=tf.other_item_no[27]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_dis[27][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_9]
[ptext layer=2 page=fore text=&tf.other_item_dis[27][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_9]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------




;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_back_page_2 x=575 y=&tf.other_item_y_8]

;次ページボタン
[if exp="tf.other_item_hyouji_con[27]==1"]
[button graphic="cursor.gif" name="other_cursor" fix=true  exp="tf.other_item_next_page=tf.other_item_next_page+1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_next_page_3 x=575 y=&tf.other_item_y_9]
[endif]

[if exp="tf.other_item_next_page==2"]
[s]
[endif]

[endif]

*other_item_back_page_2 

[if exp="tf.other_item_next_page==1"]
[clearstack]

[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.other_item_no[19]=0"]
[eval exp="tf.other_item_no[20]=0"]
[eval exp="tf.other_item_no[21]=0"]
[eval exp="tf.other_item_no[22]=0"]
[eval exp="tf.other_item_no[23]=0"]
[eval exp="tf.other_item_no[24]=0"]
[eval exp="tf.other_item_no[25]=0"]
[eval exp="tf.other_item_no[26]=0"]
[eval exp="tf.other_item_no[27]=0"]
[item_suuti_delete]

[clearfix name="other" ]
[clearfix name="other_cursor"]
[clearfix name="other_moji" ]

;10からの表示へ
[jump target=*item_hyouji_10]
[endif]

*other_item_next_page_3 

[if exp="tf.other_item_next_page==3"]
[clearstack]

[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.other_item_no[19]=0"]
[eval exp="tf.other_item_no[20]=0"]
[eval exp="tf.other_item_no[21]=0"]
[eval exp="tf.other_item_no[22]=0"]
[eval exp="tf.other_item_no[23]=0"]
[eval exp="tf.other_item_no[24]=0"]
[eval exp="tf.other_item_no[25]=0"]
[eval exp="tf.other_item_no[26]=0"]
[eval exp="tf.other_item_no[27]=0"]
[item_suuti_delete]

[clearfix name="other" ]
[clearfix name="other_cursor"]
[clearfix name="other_moji" ]

;28から36まで表示
*item_hyouji_28
[clearstack]
;1

;アイテム欄28

[if exp="tf.other_item_hyouji_con[27]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[28]=tf.other_item_no[28]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[28][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y]
[ptext layer=2 page=fore text=&tf.other_item_dis[28][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;2


;アイテム欄29

[if exp="tf.other_item_hyouji_con[28]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[29]=tf.other_item_no[29]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[29][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_2]
[ptext layer=2 page=fore text=&tf.other_item_dis[29][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_2]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------
;3


;アイテム欄30

[if exp="tf.other_item_hyouji_con[29]==1"]
[button graphic="button/toumei.png" enterimg="button/toumei.png" exp="tf.other_item_no[30]=tf.other_item_no[30]+1" fix="true"  storage="scenario_2/other_item_1_hyouji_sell.ks"  name="other_moji" x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[30][1] face=antique name="other" size=20 x=&tf.other_item_x y=&tf.other_item_y_3]
[ptext layer=2 page=fore text=&tf.other_item_dis[30][11] face=antique name="other" size=20 x=&tf.other_item_x_stock y=&tf.other_item_y_3]
[endif]

;-------------------------------------------------------------------------------------------------------------------------------------------------


;-------------------------------------------------------------------------------------------------------------------------------------------------




;前のページボタン
[button graphic="cursor_above.gif" name="other_cursor" fix=true exp="tf.other_item_next_page=tf.other_item_next_page-1" storage="scenario_2/other_item_hyouji_sell.ks" target=*other_item_back_page_3 x=575 y=&tf.other_item_y_8]

[if exp="tf.other_item_next_page==3"]
[s]
[endif]
[endif]


*other_item_back_page_3 

[if exp="tf.other_item_next_page==2"]


[cm]
[item_suuti_delete]
[free name="key" layer=2]
[free name="other" layer=2]
[free name="key" layer=2]
[free name="item_suuti" layer=2]
[eval exp="tf.other_item_no[28]=0"]
[eval exp="tf.other_item_no[29]=0"]
[eval exp="tf.other_item_no[30]=0"]


[item_suuti_delete]

[clearfix name="other" ]
[clearfix name="other_cursor"]
[clearfix name="other_moji" ]



;19からの表示へ
[jump target=*item_hyouji_19]
[endif]



*other_process_end
*no_item
[if exp="tf.other_item_all_stock==0"]
[clearfix name="other"]
[ptext layer=2 page=fore text="表示するアイテムがありません" face=antique name="other" size=20 x=250 y=125]
[endif]

[clearfix name="battle_moji_choice"]
[clearfix name="other_moji_choice"]
[clearfix name="cook_moji_choice"]
[clearfix name="other_moji_choice"]
[free name="battle_hyouji_moji" layer=2"]
[free name="cook_hyouji_moji" layer=2"]
[free name="other_hyouji_moji" layer=2"]
[free name="other_hyouji_moji" layer=2"]

[jump storage="scenario_2/item_sell_macro.ks" target=*first]


