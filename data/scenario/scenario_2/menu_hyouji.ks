
[macro name="menu_gohan"]

[call storage="scenario_2/menu_hyouji_data.ks"]


[iscript]

//メニュー番号の変数
tyrano.plugin.kag.variable.tf.menu_number=0;

//ジャンプ先のシナリオ入れる変数
tyrano.plugin.kag.variable.tf.rest_menu=0;
tyrano.plugin.kag.variable.tf.target_value=0;

//レストランフラグを配列代入
this.kag.stat.f["rest_n"] =[
this.kag.stat.f["r_kajikaji"],
this.kag.stat.f["r_hirayama"],
this.kag.stat.f["r_oikawa"],
this.kag.stat.f["r_romana"],
this.kag.stat.f["r_beruzoku"],
this.kag.stat.f["r_moon"],
this.kag.stat.f["r_bejibeji"],
this.kag.stat.f["r_poteto"],
this.kag.stat.f["r_kyarokyaro"],
this.kag.stat.f["r_ika"],
this.kag.stat.f["r_sweetvalue"],
this.kag.stat.f["r_creammania"],
this.kag.stat.f["r_lunch"],
this.kag.stat.f["r_uminari"],
this.kag.stat.f["r_hukurou"]
];

var rest_id = this.kag.stat.f["rest_n"].length;

for(i=0;i<rest_id;i++){
	if(this.kag.stat.f["rest_n"][i]==1){   

		if(f.disc_num>2){
         	tyrano.plugin.kag.variable.tf.rest_menu = tyrano.plugin.kag.variable.tf.menu_gohan_2[i];
		}else{
		 	tyrano.plugin.kag.variable.tf.rest_menu = tyrano.plugin.kag.variable.tf.menu_gohan[i];
		}    
            tyrano.plugin.kag.variable.tf.target_value = tyrano.plugin.kag.variable.tf.target_2[i];	
            //どのレストランかの番号を取得
			tyrano.plugin.kag.variable.tf.rest_num=i;
		
	}
}


//メニューの数；お菓子と食事で場合わけ

if(tyrano.plugin.kag.variable.tf.rest_num===12){
tyrano.plugin.kag.variable.tf.kaisuu=4;
}else if(tyrano.plugin.kag.variable.tf.rest_num>9&&tf.rest_num<12){
tyrano.plugin.kag.variable.tf.kaisuu=7;
}else{
tyrano.plugin.kag.variable.tf.kaisuu=5;
}


[endscript]




*menu_hyo

[button graphic="button/toumei_2.png" width="200" enterimg="button/toumei.png" clickse="tm2_switch001_macchi.ogg" storage=&tf.target[tf.menu_number] target=&tf.target_value[tf.menu_number] x=&tf.menu_x y=&tf.menu_y]
[ptext layer=1 name="menu_moji" name="menu_moji" page=fore color="#000000" text=&tf.rest_menu[tf.menu_number] face="antique" size="20" x=&tf.menu_x_moji y=&tf.menu_y_moji]


[iscript]

if(tyrano.plugin.kag.variable.tf.rest_num===12){

tyrano.plugin.kag.variable.tf.menu_y+=100;
tyrano.plugin.kag.variable.tf.menu_y_moji+=100;
tyrano.plugin.kag.variable.tf.menu_number+=1;


}else if(tyrano.plugin.kag.variable.tf.rest_num>9){

tyrano.plugin.kag.variable.tf.menu_y+=60;
tyrano.plugin.kag.variable.tf.menu_y_moji+=60;
tyrano.plugin.kag.variable.tf.menu_number+=1;

}else{

tyrano.plugin.kag.variable.tf.menu_y+=80;
tyrano.plugin.kag.variable.tf.menu_y_moji+=80;
tyrano.plugin.kag.variable.tf.menu_number+=1;

}

if(tyrano.plugin.kag.variable.tf.kaisuu>0){
tyrano.plugin.kag.variable.tf.kaisuu-=1;
}
[endscript]

[if exp="tf.kaisuu>0"]
[jump target=*menu_hyo]
[endif]

[endmacro]

[return]
