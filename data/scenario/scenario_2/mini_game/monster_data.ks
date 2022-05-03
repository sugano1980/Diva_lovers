


;モンスターデータ
*monster_data



;モンスター個別データ（マクロに入れてもいいかも）
;名前0、HP1、グラフィック2、ダメージ3、どく4、まひ5、ほのお6、こおり7、いかづち8、にげる9、経験値技術10,経験値頭脳11,経験値魅力12,経験値No13,特殊状態のかかりやすさ14,攻撃の頻繁さ15

[iscript]

var monster_no_0=new Map([
 ["id",1],
 ["name",'はぐれ犬'],
 ["hp",60],
 ["graphic",'monster/hagureinu.png'],
 ["graphic_damage",'monster/hagureinu_damage.png'],
 ["damage",30],
 ["doku",0],
 ["mahi",0],
 ["nemuri",0],
 ["honoo",0],
 ["koori",0],
 ["ikaduti",0],
 ["nigeru",0],
 ["exp_tec",1],
 ["exp_brain",1],
 ["exp_charm",1],
 ["exp",1],
 ["sp",3],
 ["attack",1]

]);

//はぐれ犬
var monster_no_2 =new Map([	

["id",2],
["name",'はぐれ犬'],
["hp",50],
["graphic",'monster/hagureinu.png'],
["graphic_damage",'monster/hagureinu_damage.png'],
["damage",30],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",1],
["exp_brain",1],
["exp_charm",1],
["exp",1],
["sp",3],
["attack",1]
]);


var monster_no_3=new Map([	
 
 ["id",3],
["name",'スライム'],
["hp",80],
["graphic",'monster/suraimu.png'],
["graphic_damage",'monster/suraimu_damage.png'],
["damage",40],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",2],
["exp_brain",1],
["exp_charm",1],
["exp",2],
["sp",3],
["attack",2]
 
 
 ]);


//ぶくぶくスライム
var monster_no_4 =new Map([	
["id",4],
["name",'ぶくぶくスライム'],
["hp",100],
["graphic",'monster/bukubuku.png'],
["graphic_damage",'monster/bukubuku_damage.png'],
["damage",50],
["doku",1],
["mahi",1],
["nemuri",0],
["honoo",0],
["koori",0],
["kaduti",0],
["nigeru",0],
["exp_tec",3],
["exp_brain",2],
["exp_charm",1],
["exp",3],
["sp",2],
["attack",8]

]);



//甲虫

var monster_no_5=new Map([	

["id",5],
["name",'甲虫'],
["hp",120],
["graphic",'monster/kouchuu.png'],
["graphic_damage",'monster/kouchuu_damage.png'],
["damage",60],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["kaduti",0],
["nigeru",0],
["exp_tec",4],
["exp_brain",1],
["exp_charm",1],
["exp",4],
["sp",2],
["attack",3]

]);


//もぐらむし
var monster_no_6 =new Map([	
["id",6],
["name",'もぐらむし'],
["hp",140],
["graphic",'monster/moguramusi.png'],
["graphic_damage",'monster/moguramusi_damage.png'],
["damage",70],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",5],
["exp_brain",3],
["exp_charm",2],
["exp",5],
["sp",3],
["attack",2]
]);


var monster_no_7=new Map([	
 ["id",7],
["name",'オーク'],
["hp",160],
["graphic",'monster/ooku.png'],
["graphic_damage",'monster/ooku_damage.png'],
["damage",80],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",6],
["exp_brain",1],
["exp_charm",1],
["exp",6],
["sp",3],
["attack",1]
]);


//こうもり

var monster_no_8 =new Map([	

["id",8],
["name",'こうもり'],
["hp",180],
["graphic",'monster/koumori.png'],
["graphic_damage",'monster/koumori_damage.png'],
["damage",90],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",7],
["exp_brain",3],
["exp_charm",1],
["exp",7],
["sp",3],
["attack",1]

]);



//へび
var monster_no_9=new Map([	
["id",9],
["name",'へび'],
["hp",290],
["graphic",'monster/hebi.png'],
["graphic_damage",'monster/hebi_damage.png'],
["damage",100],
["doku",1],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",8],
["exp_brain",2],
["exp_charm",1],
["exp",8],
["sp",3],
["attack",1]
]);


//よくあるきのこ
var monster_no_10 =new Map([	
["id",10],
["name",'よくあるきのこ'],
["hp",320],
["graphic",'monster/yokuarukinoko.png'],
["graphic_damage",'monster/yokuarukinoko_damage.png'],
["damage",110],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",9],
["exp_brain",3],
["exp_charm",2],
["exp",9],
["sp",3],
["attack",3]

]);

//おばけはな
var monster_no_11=new Map([	

["id",11],
["name",'おばけはな'],
["hp",340],
["graphic",'monster/obakehana.png'],
["graphic_damage",'monster/obakehana_damage.png'],
["damage",120],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",10],
["exp_brain",2],
["exp_charm",1],
["exp",10],
["sp",3],
["attack",5]

]);

//おばけのき
var monster_no_12=new Map([	
["id",12],
["name",'おばけのき'],
["hp",380],
["graphic",'monster/obakehana.png'],
["graphic_damage",'monster/obakehana_damage.png'],
["damage",130],
["doku",1],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",11],
["exp_brain",3],
["exp_charm",2],
["exp",11],
["sp",3],
["attack",3]
]);

//いもむしくん
var monster_no_13=new Map([	

["id",13],
["name",'いもむしくん'],
["hp",500],
["graphic",'monster/imomusikun.png'],
["graphic_damage",'monster/imomusikun_damage.png'],
["damage",140],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",8],
["exp_brain",2],
["exp_charm",1],
["exp",12],
["sp",3],
["attack",2]
]);


var monster_no_14=new Map([	
["id",14],
["name",'おばけ'],
["hp",750],
["graphic",'monster/obake.png'],
["graphic_damage",'monster/obake_damage.png'],
["damage",150],
["doku",0],
["mahi",1],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",10],
["exp_brain",2],
["exp_charm",1],
["exp",13],
["sp",3],
["attack",3]

]);

//はぐれ赤犬
var monster_no_15=new Map([	
 ["id",15],
["name",'はぐれ赤犬'],
["hp",800],
["graphic",'monster/hagureakainu.png'],
["graphic_damage",'monster/hagureakainu_damage.png'],
["damage",160],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",14],
["exp_brain",14],
["exp_charm",15],
["exp",14],
["sp",3],
["attack",10]
 ]);


var monster_no_16 =new Map([	
["id",16],
["name",'どくどくきのこ'],
["hp",850],
["graphic",'monster/dokudokukinoko.png'],
["graphic_damage",'monster/dokudokukinoko_damage.png'],
["damage",170],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",15],
["exp_brain",2],
["exp_charm",1],
["exp",15],
["sp",3],
["attack",2]

]);


//オーガ
var monster_no_17 =new Map([	
["id",17],
["name",'オーガ'],
["hp",900],
["graphic",'monster/oga.png'],
["graphic_damage",'monster/oga_damage.png'],
["damage",180],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",16],
["exp_brain",2],
["exp_charm",1],
["exp",16],
["sp",3],
["attack",2]


]);

//一つ目お化け
var monster_no_18 =new Map([	
["id",18],
["name",'一つ目お化け'],
["hp",900],
["graphic",'monster/oga.png'],
["graphic_damage",'monster/oga_damage.png'],
["damage",180],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",16],
["exp_brain",2],
["exp_charm",6],
["exp",16],
["sp",3],
["attack",3]


]);




//やんきーどり
var monster_no_19=new Map([	

["id",19],
["name",'やんきーどり'],
["hp",1000],
["graphic",'monster/yankidori.png'],
["graphic_damage",'monster/yankidori_damage.png'],
["damage",200],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",18],
["exp_brain",2],
["exp_charm",2],
["exp",18],
["sp",3],
["attack",1]


]);

//銀狼

var monster_no_20=new Map([	
["id",20],
["name",'銀狼'],
["hp",1050],
["graphic",'monster/ginrou.png'],
["graphic_damage",'monster/ginrou_damage.png'],
["damage",210],
["doku",0],
["mahi",1],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",19],
["exp_brain",2],
["exp_charm",2],
["exp",19],
["sp",3],
["attack",1]


]);


//襟巻きとかげ

var monster_no_21=new Map([	

["id",21],
["name",'襟巻きとかげ'],
["hp",2100],
["graphic",'monster/erimakitokage.png'],
["graphic_damage",'monster/erimakitokage_damage.png'],
["damage",220],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",20],
["exp_brain",3],
["exp_charm",4],
["exp",20],
["sp",3],
["attack",1]


]);


//おに

var monster_no_22=new Map([
 ["id",22],
 ["name",'おに'],
 ["hp",3500],
 ["graphic",'monster/oni.png'],
 ["graphic_damage",'monster/oni_damage.png'],
 ["damage",230],
 ["doku",0],
 ["mahi",1],
 ["nemuri",0],
 ["honoo",0],
 ["koori",0],
 ["ikaduti",0],
 ["nigeru",0],
 ["exp_tec",21],
 ["exp_brain",5],
 ["exp_charm",6],
 ["exp",21],
 ["sp",3],
["attack",3]

 ]);

//いかれる犬
var monster_no_23=new Map([	

["id",23],
["name",'いかれる犬'],
["hp",5000],
["graphic",'monster/ikareruinu.png'],
["graphic_damage",'monster/ikareruinu_damage.png'],
["damage",240],
["doku",1],
["mahi",1],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",22],
["exp_brain",2],
["exp_charm",1],
["exp",22],
["sp",3],
["attack",3]

]);
//悪魔

var monster_no_24=new Map([	

["id",24],
["name",'悪魔'],
["hp",10100],
["graphic",'monster/akuma.png'],
["graphic_damage",'monster/akuma_damage.png'],
["damage",250],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",23],
["exp_brain",5],
["exp_charm",2],
["exp",23],
["sp",3],
["attack",3]
]);


//動く鎧
var monster_no_25=new Map([	
["id",25],
["name",'動く鎧'],
["hp",13000],
["graphic",'monster/ugokuyoroi.png'],
["graphic_damage",'monster/ugokuyoroi_damage.png'],
["damage",260],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",24],
["exp_brain",2],
["exp_charm",1],
["exp",24],
["sp",3],
["attack",3]
]);


//漂流魂

var monster_no_26=new Map([	
["id",26],
["name",'漂流魂'],
["hp",2000],
["graphic",'monster/hyouryuudamasii.png'],
["graphic_damage",'monster/hyouryuudamasii_damage.png'],
["damage",270],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",25],
["exp_brain",28],
["exp_charm",10],
["exp",25],
["sp",3],
["attack",3]

]);

//ドラゴン
var monster_no_27=new Map([	
["id",27],
["name",'ドラゴン'],
["hp",15000],
["graphic",'monster/doragon.png'],
["graphic_damage",'monster/doragon_damage.png'],
["damage",350],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",39],
["exp_brain",2],
["exp_charm",1],
["exp",39],
["sp",3],
["attack",3]


]);

//異形１

var monster_no_28 =new Map([	

["id",28],
["name",'異形１'],
["hp",5000],
["graphic",'monster/igyou_1.png'],
["graphic_damage",'monster/igyou_1_damage.png'],
["damage",300],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",39],
["exp_brain",39],
["exp_charm",39],
["exp",39],
["sp",10],
["attack",1]


]);

//ルシア
var monster_no_29=new Map([	
["id",29],
["name",'ルシア'],
["hp",10000],
["graphic",'rusia_tatie/rusia_normal.png'],
["graphic_damage",'rusia_tatie/rusia_normal_damage.png'],
["damage",9990],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",39],
["exp_brain",39],
["exp_charm",39],
["exp",39],
["sp",10],
["attack",1]

]);

//ルシア2
var monster_no_30=new Map([	
["id",30],
["name",'ルシア'],
["hp",20000],
["graphic",'rusia_tatie/rusia_normal.png'],
["graphic_damage",'rusia_tatie/rusia_normal_damage.png'],
["damage",500],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",50],
["exp_brain",50],
["exp_charm",50],
["exp",50],
["sp",10],
["attack",1]

]);

//異形2

var monster_no_31 =new Map([	

["id",31],
["name",'異形２'],
["hp",5000],
["graphic",'monster/igyou_2/igyou_2.png'],
["graphic_damage",'monster/igyou_2/igyou_2_damage.png'],
["damage",300],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",60],
["exp_brain",60],
["exp_charm",60],
["exp",60],
["sp",10],
["attack",1],



]);

//異形3

var monster_no_32 =new Map([	

["id",32],
["name",'異形３'],
["hp",5000],
["graphic",'monster/igyou_3/igyou_3.png'],
["graphic_damage",'monster/igyou_3/igyou_3_damage.png'],
["damage",300],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",60],
["exp_brain",60],
["exp_charm",60],
["exp",60],
["sp",10],
["attack",1]



]);

//ライオネスルートモンスター

var monster_no_33 =new Map([	

["id",33],
["name",'？？？'],
["hp",20000],
["graphic",'monster/mujintou_mon.png'],
["graphic_damage",'monster/ikareruinu_damage.png'],
["damage",1000],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",100],
["exp_brain",100],
["exp_charm",100],
["exp",100],
["sp",10],
["attack",1]



]);

//うぇるむ

var monster_no_34 =new Map([	

["id",34],
["name",'ウェルム'],
["hp",50000],
["graphic",'monster/mujintou_mon.png'],
["graphic_damage",'monster/ikareruinu_damage.png'],
["damage",2000],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",0],
["exp_brain",0],
["exp_charm",0],
["exp",0],
["sp",10],
["attack",1]

]);


//ヴァリアス

var monster_no_35 =new Map([	

["id",35],
["name",'ヴァリアス'],
["hp",1500000],
["graphic",'monster/varias.png'],
["graphic_damage",'monster/varias_damage.png'],
["damage",4000],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",0],
["exp_brain",0],
["exp_charm",0],
["exp",0],
["sp",10],
["attack",1]

]);


//マカラ

var monster_no_36 =new Map([	

["id",36],
["name",'マカラ'],
["hp",500000],
["graphic",'monster/makara.png'],
["graphic_damage",'monster/makara_damage.png'],
["damage",2000],
["doku",0],
["mahi",0],
["nemuri",0],
["honoo",0],
["koori",0],
["ikaduti",0],
["nigeru",0],
["exp_tec",0],
["exp_brain",0],
["exp_charm",0],
["exp",0],
["sp",10],
["attack",1]

]);






tyrano.plugin.kag.variable.tf.monster_data =[];
tyrano.plugin.kag.variable.tf.monster_data =[
monster_no_0,
0,
monster_no_2,
monster_no_3,
monster_no_4,
monster_no_5,
monster_no_6,
monster_no_7,
monster_no_8,
monster_no_9,
monster_no_10,
monster_no_11,
monster_no_12,
monster_no_13,
monster_no_14,
monster_no_15,
monster_no_16,
monster_no_17,
monster_no_18,
monster_no_19,
monster_no_20,
monster_no_21,
monster_no_22,
monster_no_23,
monster_no_24,
monster_no_25,
monster_no_26,
monster_no_27,
monster_no_28,
monster_no_29,
monster_no_30,
monster_no_31,
monster_no_32,
monster_no_33,
monster_no_34,
monster_no_35,
monster_no_36,
];
this.kag.stat.f["monster_para"]=[];


//モンスター１、２、３のそれぞれにどのモンスターが当てられたか数字でチェック、個別のデータを処理用共通の変数に代入する

var monster_len = tyrano.plugin.kag.variable.tf.monster_data.length;

if(tyrano.plugin.kag.variable.tf.monster1>0){
for(i=0;i<monster_len;i++){

 if(tyrano.plugin.kag.variable.tf.monster1==i){
 	
 	 for(var value of tyrano.plugin.kag.variable.tf.monster_data[i].values()) { 	
 	this.kag.stat.f["monster_para"].push(value);
 	    
 	    tyrano.plugin.kag.variable.tf.monster_id_no_1=this.kag.stat.f["monster_para"][0];
 		tyrano.plugin.kag.variable.tf.monster_name_no_1=this.kag.stat.f["monster_para"][1];
		tyrano.plugin.kag.variable.tf.monster_hp_no_1=this.kag.stat.f["monster_para"][2];
		tyrano.plugin.kag.variable.tf.monster_gra_no_1=this.kag.stat.f["monster_para"][3];
		tyrano.plugin.kag.variable.tf.monster_gra_damage_no_1=this.kag.stat.f["monster_para"][4];
		tyrano.plugin.kag.variable.tf.monster_damage_no_1=this.kag.stat.f["monster_para"][5];
		tyrano.plugin.kag.variable.tf.monster_doku_no_1=this.kag.stat.f["monster_para"][6];
		tyrano.plugin.kag.variable.tf.monster_mahi_no_1=this.kag.stat.f["monster_para"][7];
		tyrano.plugin.kag.variable.tf.monster_nemuri_no_1=this.kag.stat.f["monster_para"][8];
		tyrano.plugin.kag.variable.tf.monster_honoo_no_1=this.kag.stat.f["monster_para"][9];
		tyrano.plugin.kag.variable.tf.monster_koori_no_1=this.kag.stat.f["monster_para"][10];
		tyrano.plugin.kag.variable.tf.monster_ikaduti_no_1=this.kag.stat.f["monster_para"][11];
		tyrano.plugin.kag.variable.tf.monster_nigeru_no_1=this.kag.stat.f["monster_para"][12];
		tyrano.plugin.kag.variable.tf.monster_exp_tec_no_1=this.kag.stat.f["monster_para"][13];
		tyrano.plugin.kag.variable.tf.monster_exp_brain_no_1=this.kag.stat.f["monster_para"][14];
		tyrano.plugin.kag.variable.tf.monster_exp_charm_no_1=this.kag.stat.f["monster_para"][15];
		tyrano.plugin.kag.variable.tf.monster_exp_no_1=this.kag.stat.f["monster_para"][16];
		tyrano.plugin.kag.variable.tf.monster_sp_no_1=this.kag.stat.f["monster_para"][17];
		tyrano.plugin.kag.variable.tf.monster_attack_no_1=this.kag.stat.f["monster_para"][18];


                         } 	
               }
     }
}



if(tyrano.plugin.kag.variable.tf.monster2>0){
for(i=0;i<monster_len;i++){

 if(tyrano.plugin.kag.variable.tf.monster2==i){
 	
 	 for(var value of tyrano.plugin.kag.variable.tf.monster_data[i].values()) { 	
 	this.kag.stat.f["monster_para"].push(value);
 	    
 	    tyrano.plugin.kag.variable.tf.monster_id_no_2=this.kag.stat.f["monster_para"][0];
 		tyrano.plugin.kag.variable.tf.monster_name_no_2=this.kag.stat.f["monster_para"][1];
		tyrano.plugin.kag.variable.tf.monster_hp_no_2=this.kag.stat.f["monster_para"][2];
		tyrano.plugin.kag.variable.tf.monster_gra_no_2=this.kag.stat.f["monster_para"][3];
		tyrano.plugin.kag.variable.tf.monster_gra_damage_no_2=this.kag.stat.f["monster_para"][4];
		tyrano.plugin.kag.variable.tf.monster_damage_no_2=this.kag.stat.f["monster_para"][5];
		tyrano.plugin.kag.variable.tf.monster_doku_no_2=this.kag.stat.f["monster_para"][6];
		tyrano.plugin.kag.variable.tf.monster_mahi_no_2=this.kag.stat.f["monster_para"][7];
		tyrano.plugin.kag.variable.tf.monster_nemuri_no_2=this.kag.stat.f["monster_para"][8];
		tyrano.plugin.kag.variable.tf.monster_honoo_no_2=this.kag.stat.f["monster_para"][9];
		tyrano.plugin.kag.variable.tf.monster_koori_no_2=this.kag.stat.f["monster_para"][10];
		tyrano.plugin.kag.variable.tf.monster_ikaduti_no_2=this.kag.stat.f["monster_para"][11];
		tyrano.plugin.kag.variable.tf.monster_nigeru_no_2=this.kag.stat.f["monster_para"][12];
		tyrano.plugin.kag.variable.tf.monster_exp_tec_no_2=this.kag.stat.f["monster_para"][13];
		tyrano.plugin.kag.variable.tf.monster_exp_brain_no_2=this.kag.stat.f["monster_para"][14];
		tyrano.plugin.kag.variable.tf.monster_exp_charm_no_2=this.kag.stat.f["monster_para"][15];
		tyrano.plugin.kag.variable.tf.monster_exp_no_2=this.kag.stat.f["monster_para"][16];
		tyrano.plugin.kag.variable.tf.monster_sp_no_2=this.kag.stat.f["monster_para"][17];
		tyrano.plugin.kag.variable.tf.monster_attack_no_2=this.kag.stat.f["monster_para"][18];

                         } 	
            }
     }
}

if(tyrano.plugin.kag.variable.tf.monster3>0){
for(i=0;i<monster_len;i++){

 if(tyrano.plugin.kag.variable.tf.monster3==i){
 	
 	 for(var value of tyrano.plugin.kag.variable.tf.monster_data[i].values()) { 	
 	this.kag.stat.f["monster_para"].push(value);
 	    
 	    tyrano.plugin.kag.variable.tf.monster_id_no_3=this.kag.stat.f["monster_para"][0];
 		tyrano.plugin.kag.variable.tf.monster_name_no_3=this.kag.stat.f["monster_para"][1];
		tyrano.plugin.kag.variable.tf.monster_hp_no_3=this.kag.stat.f["monster_para"][2];
		tyrano.plugin.kag.variable.tf.monster_gra_no_3=this.kag.stat.f["monster_para"][3];
		tyrano.plugin.kag.variable.tf.monster_gra_damage_no_3=this.kag.stat.f["monster_para"][4];
		tyrano.plugin.kag.variable.tf.monster_damage_no_3=this.kag.stat.f["monster_para"][5];
		tyrano.plugin.kag.variable.tf.monster_doku_no_3=this.kag.stat.f["monster_para"][6];
		tyrano.plugin.kag.variable.tf.monster_mahi_no_3=this.kag.stat.f["monster_para"][7];
		tyrano.plugin.kag.variable.tf.monster_nemuri_no_3=this.kag.stat.f["monster_para"][8];
		tyrano.plugin.kag.variable.tf.monster_honoo_no_3=this.kag.stat.f["monster_para"][9];
		tyrano.plugin.kag.variable.tf.monster_koori_no_3=this.kag.stat.f["monster_para"][10];
		tyrano.plugin.kag.variable.tf.monster_ikaduti_no_3=this.kag.stat.f["monster_para"][11];
		tyrano.plugin.kag.variable.tf.monster_nigeru_no_3=this.kag.stat.f["monster_para"][12];
		tyrano.plugin.kag.variable.tf.monster_exp_tec_no_3=this.kag.stat.f["monster_para"][13];
		tyrano.plugin.kag.variable.tf.monster_exp_brain_no_3=this.kag.stat.f["monster_para"][14];
		tyrano.plugin.kag.variable.tf.monster_exp_charm_no_3=this.kag.stat.f["monster_para"][15];
		tyrano.plugin.kag.variable.tf.monster_exp_no_3=this.kag.stat.f["monster_para"][16];
		tyrano.plugin.kag.variable.tf.monster_sp_no_3=this.kag.stat.f["monster_para"][17];
		tyrano.plugin.kag.variable.tf.monster_attack_no_3=this.kag.stat.f["monster_para"][18];

                         } 	
            }
     }
}






[endscript]


;モンスターグループの種類でモンスターデータ取得　グループ１の何番、グループ２の何番等



[iscript]

var monster_number=0;
var monster_graphic_1='';
var monster_graphic_1_damage='';
var monster_graphic_2='';
var monster_graphic_2_damage='';
var monster_graphic_3='';
var monster_graphic_3_damage='';
var monster_name_1='';
var monster_name_2=0;
var monster_name_3=0;
var monster_hp_1=0;
var monster_hp_2=0;
var monster_hp_3=0;
var monster_damage_1=0;
var monster_damage_2=0;
var monster_damage_3=0;
var attack_doku_1=0;
var attack_doku_2=0;
var attack_doku_3=0;
var attack_mahi_1=0;
var attack_mahi_2=0;
var attack_mahi_3=0;
var attack_nemuri_1=0;
var attack_nemuri_2=0;
var attack_nemuri_3=0;
var honoo_1=0;
var honoo_2=0;
var honoo_3=0;
var koori_1=0;
var koori_2=0;
var koori_3=0;
var ikaduti_1=0;
var ikaduti_2=0;
var ikaduti_3=0;
var nigeru_1=0;
var nigeru_2=0;
var nigeru_3=0;
var exp_1=0;
var exp_2=0;
var exp_3=0;
var sp_1=0;
var sp_2=0;
var sp_3=0;
//攻撃パーセント設定3で30パーセント、2で50パーセント、5で20パーセント
var attack_1=0;
var attack_2=0;
var attack_3=0;

//取得したモンスターデータを戦闘処理用共通変数に変換
 		
 	monster_name_1=tf.monster_name_no_1;
 	monster_graphic_1=tf.monster_gra_no_1;
 	monster_graphic_1_damage=tf.monster_gra_damage_no_1;
 	monster_hp_1=tf.monster_hp_no_1;
 	monster_damage_1=tf.monster_damage_no_1;
 	attack_doku_1=tf.monster_doku_no_1;
 	attack_mahi_1=tf.monster_mahi_no_1;
 	attack_nemuri_1=tf.monster_nemuri_no_1;
 	honoo_1=tf.monster_honoo_no_1;
 	koori_1=tf.monster_koori_no_1;
 	ikaduti_1=tf.monster_ikaduti_no_1;
 	nigeru_1=tf.monster_nigeru_no_1;
 	exp_1=tf.monster_exp_no_1;
 	sp_1=tf.monster_sp_no_1;
 	attack_1=tf.monster_attack_no_1;
 	
 	 	
 	monster_name_2=tf.monster_name_no_2;
 	monster_graphic_2=tf.monster_gra_no_2;
 	monster_graphic_2_damage=tf.monster_gra_damage_no_2;
 	monster_hp_2=tf.monster_hp_no_2;
 	monster_damage_2=tf.monster_damage_no_2;
 	attack_doku_2=tf.monster_doku_no_2;
 	attack_mahi_2=tf.monster_mahi_no_2;
 	attack_nemuri_2=tf.monster_nemuri_no_2;
 	honoo_2=tf.monster_honoo_no_2;
 	koori_2=tf.monster_koori_no_2;
 	ikaduti_2=tf.monster_ikaduti_no_2;
 	nigeru_2=tf.monster_nigeru_no_2;
 	exp_2=tf.monster_exp_no_2;
 	sp_2=tf.monster_sp_no_2;
 	attack_2=tf.monster_attack_no_2;
 	

 	monster_name_3=tf.monster_name_no_3;
 	monster_graphic_3=tf.monster_gra_no_3;
 	monster_graphic_3_damage=tf.monster_gra_damage_no_3;
 	monster_hp_3=tf.monster_hp_no_3;
 	monster_damage_3=tf.monster_damage_no_3;
 	attack_doku_3=tf.monster_doku_no_3;
 	attack_mahi_3=tf.monster_mahi_no_3;
 	attack_nemuri_3=tf.monster_nemuri_no_3;
 	honoo_3=tf.monster_honoo_no_3;
 	koori_3=tf.monster_koori_no_3;
 	ikaduti_3=tf.monster_ikaduti_no_3;
 	nigeru_3=tf.monster_nigeru_no_3;
 	exp_3=tf.monster_exp_no_3;
 	sp_3=tf.monster_sp_no_3;
 	attack_3=tf.monster_attack_no_3;
 	
//ティラノ用変数に変換


 tf.monster_graphic_1=monster_graphic_1;
 tf.monster_graphic_1_damage=monster_graphic_1_damage;
 tf.monster_graphic_2=monster_graphic_2;
 tf.monster_graphic_2_damage=monster_graphic_2_damage;
 tf.monster_graphic_3=monster_graphic_3;
 tf.monster_graphic_3_damage=monster_graphic_3_damage;
 tf.monster_name_1=monster_name_1;
 tf.monster_name_2=monster_name_2;
 tf.monster_name_3=monster_name_3;
 tf.monster_hp_1=monster_hp_1;
 tf.monster_hp_2=monster_hp_2;
 tf.monster_hp_3=monster_hp_3;
 tf.monster_damage_1=monster_damage_1;
 tf.monster_damage_2=monster_damage_2;
 tf.monster_damage_3=monster_damage_3;
 tf.attack_doku_1=attack_doku_1;
 tf.attack_doku_2=attack_doku_2;
 tf.attack_doku_3=attack_doku_3;
 tf.attack_mahi_1=attack_mahi_1;
 tf.attack_mahi_2=attack_mahi_2;
 tf.attack_mahi_3=attack_mahi_3;
 tf.attack_nemuri_1=attack_nemuri_1;
 tf.attack_nemuri_2=attack_nemuri_2;
 tf.attack_nemuri_3=attack_nemuri_3;
 tf.honoo_1=honoo_1;
 tf.honoo_2=honoo_2;
 tf.honoo_3=honoo_3;
 tf.koori_1=koori_1;
 tf.koori_2=koori_2;
 tf.koori_3=koori_3;
 tf.ikaduti_1=ikaduti_1;
 tf.ikaduti_2=ikaduti_2;
 tf.ikaduti_3=ikaduti_3;
 tf.nigeru_1=nigeru_1;
 tf.nigeru_2=nigeru_2;
 tf.nigeru_3=nigeru_3;
 tf.exp_1=exp_1;
 tf.exp_2=exp_2;
 tf.exp_3=exp_3;
 tf.sp_1=sp_1;
 tf.sp_2=sp_2;
 tf.sp_3=sp_3;
 tf.attack_1=attack_1;
 tf.attack_2=attack_2;
 tf.attack_3=attack_3;
 


switch(tyrano.plugin.kag.variable.tf.monster_id_no_1,tyrano.plugin.kag.variable.tf.monster_id_no_2,tyrano.plugin.kag.variable.tf.monster_id_no_3){

case 11:
case 12:
case 17:
case 18:
case 19:
case 22:
case 24:
case 25:
case 27:
case 33:

this.kag.stat.f["zako_l_size"]=1;

break;

}
 
	
[endscript]

[jump storage="scenario_2/mini_game/battle.ks" target=*modotta]
[return]



;モンスターグループ判定
*monster_group

;モンスター設定,イベント用
;カーニバル序盤戦闘
[if exp="f.event_main_5_1==1"]

[iscript]
tf.random_mon = Math.floor( Math.random() * 3) + 1
[endscript]

[if exp="tf.random_mon==3"]
[eval exp="f.monster_group_7=1"]
[elsif exp="tf.random_mon==2"]
[eval exp="f.monster_group_7=3"]
[else]
[eval exp="f.monster_group_8=1"]
[endif]


[jump target=*mon_choice_end]
[endif]

[if exp="tf.skill_only==1"]
[eval exp="f.monster_group_1=2"]
[endif]

[if exp="f.event_main_10==1"]

[eval exp="f.monster_group_21=1"]

[jump target=*mon_choice_end]
[endif]

[if exp="f.event_main_11==1"]

[eval exp="f.monster_group_22=1"]

[jump target=*mon_choice_end]
[endif]



[if exp="f.tougijou_level==1"]

[eval exp="f.monster_group_1=2"]


[elsif exp="f.tougijou_level==2"]

[eval exp="f.monster_group_2=4"]


[elsif exp="f.tougijou_level==3"]

[eval exp="f.monster_group_7=1"]


[elsif exp="f.tougijou_level==4"]

[eval exp="f.monster_group_7=3"]


[elsif exp="f.tougijou_level==5"]

[eval exp="f.monster_group_8=1"]


[elsif exp="f.tougijou_level==6"]

[eval exp="f.monster_group_8=3"]


[elsif exp="f.tougijou_level==7"]

[eval exp="f.monster_group_9=1"]


[elsif exp="f.tougijou_level==8"]

[eval exp="f.monster_group_9=3"]


[elsif exp="f.tougijou_level==9"]

[eval exp="f.monster_group_10=3"]


[elsif exp="f.tougijou_level==10"]

[eval exp="f.monster_group_12=1"]


[elsif exp="f.tougijou_level==11"]

[eval exp="f.monster_group_12=2"]


[elsif exp="f.tougijou_level==12"]

[eval exp="f.monster_group_14=1"]


[elsif exp="f.tougijou_level==13"]

[eval exp="f.monster_group_14=2"]


;[elsif exp="f.tougijou_level==14"]

;[elsif exp="f.tougijou_level==15"]

;[elsif exp="f.tougijou_level==16"]

;[elsif exp="f.tougijou_level==17"]

;[elsif exp="f.tougijou_level==18"]

;[elsif exp="f.tougijou_level==19"]

;[elsif exp="f.tougijou_level==20"]

;[elsif exp="f.tougijou_level==21"]

;[elsif exp="f.tougijou_level==22"]

;[elsif exp="f.tougijou_level==23"]



[endif]

*mon_choice_end
;グループごとにモンスター個別登録,モンスターの数と、モンスター１．２、３を個別登録,1ならモンスター１に登録

[if exp="f.monster_group_0==1"]

[iscript]
tf.monster_number=1;
;モンスター識別番号を入力2ならあやしいきのこ
tf.monster1=1;
[endscript]

[elsif exp="f.monster_group_1==1"]

[iscript]
tf.monster_number=1;
;モンスター識別番号を入力2ならあやしいきのこ
tf.monster1=2;
[endscript]

[elsif exp="f.monster_group_1==2"]

[iscript]
tf.monster_number=3;
tf.monster1=2;
tf.monster2=2;
tf.monster3=2;
[endscript]

[elsif exp="f.monster_group_1==3"]

[iscript]
tf.monster_number=1;
tf.monster1=3;
[endscript]

[elsif exp="f.monster_group_1==4"]

[iscript]
tf.monster_number=2;
tf.monster2=3;
tf.monster3=3;

[endscript]

[elsif exp="f.monster_group_2==1"]

[iscript]
tf.monster_number=3;
tf.monster1=2;
tf.monster2=2;
tf.monster3=2;
[endscript]

[elsif exp="f.monster_group_2==2"]

[iscript]
tf.monster_number=1;
tf.monster1=3;

[endscript]

[elsif exp="f.monster_group_2==3"]

[iscript]
tf.monster_number=1;
tf.monster1=4;

[endscript]

[elsif exp="f.monster_group_2==4"]

[iscript]
tf.monster_number=3;
tf.monster1=3;
tf.monster2=3;
tf.monster3=3;
[endscript]

[elsif exp="f.monster_group_3==1"]

[iscript]
tf.monster_number=1;
tf.monster1=3;

[endscript]

[elsif exp="f.monster_group_3==2"]

[iscript]
tf.monster_number=2;
tf.monster2=3;
tf.monster3=4;

[endscript]

[elsif exp="f.monster_group_3==3"]

[iscript]
tf.monster_number=3;
tf.monster1=3;
tf.monster2=3;
tf.monster3=3;
[endscript]

[elsif exp="f.monster_group_3==4"]

[iscript]
tf.monster_number=1;
tf.monster1=2;

[endscript]

[elsif exp="f.monster_group_4==1"]

[iscript]
tf.monster_number=2;
tf.monster2=3;
tf.monster3=4;

[endscript]

[elsif exp="f.monster_group_4==2"]

[iscript]
tf.monster_number=3;
tf.monster1=3;
tf.monster2=3;
tf.monster3=3;
[endscript]

[elsif exp="f.monster_group_4==3"]

[iscript]
tf.monster_number=1;
tf.monster1=2;
[endscript]

[elsif exp="f.monster_group_4==4"]

[iscript]
tf.monster_number=2;
tf.monster2=2;
tf.monster3=2;
[endscript]

[elsif exp="f.monster_group_5==1"]

[iscript]
tf.monster_number=1;
tf.monster1=2;
[endscript]

[elsif exp="f.monster_group_5==2"]

[iscript]
tf.monster_number=2;
tf.monster2=2;
tf.monster3=2;

[endscript]

[elsif exp="f.monster_group_5==3"]

[iscript]
tf.monster_number=1;
tf.monster1=6;
[endscript]

[elsif exp="f.monster_group_5==4"]

[iscript]
tf.monster_number=2;
tf.monster2=6;
tf.monster3=6;

[endscript]

[elsif exp="f.monster_group_7==1"]

[iscript]
tf.monster_number=3;
tf.monster1=6;
tf.monster2=6;
tf.monster3=6;
[endscript]



[elsif exp="f.monster_group_7==2"]

[iscript]
tf.monster_number=1;
tf.monster1=7;

[endscript]

[elsif exp="f.monster_group_7==3"]

[iscript]
tf.monster_number=2;
tf.monster2=7;
tf.monster3=7;

[endscript]

[elsif exp="f.monster_group_7==4"]

[iscript]
tf.monster_number=1;
tf.monster1=8;

[endscript]


[elsif exp="f.monster_group_8==1"]

[iscript]
tf.monster_number=3;
tf.monster1=8;
tf.monster2=8;
tf.monster3=8;
[endscript]

[elsif exp="f.monster_group_8==2"]

[iscript]
tf.monster_number=2;
tf.monster2=8;
tf.monster3=9;

[endscript]

[elsif exp="f.monster_group_8==3"]

[iscript]
tf.monster_number=3;
tf.monster1=9;
tf.monster2=9;
tf.monster3=9;
[endscript]

[elsif exp="f.monster_group_8==4"]

[iscript]
tf.monster_number=1;
tf.monster1=10;

[endscript]

[elsif exp="f.monster_group_9==1"]

[iscript]
tf.monster_number=3;
tf.monster1=10;
tf.monster2=10;
tf.monster3=10;
[endscript]

[elsif exp="f.monster_group_9==2"]

[iscript]
tf.monster_number=1;
tf.monster1=11;
[endscript]

[elsif exp="f.monster_group_9==3"]

[iscript]
tf.monster_number=3;
tf.monster1=11;
tf.monster2=11;
tf.monster3=11;
[endscript]

[elsif exp="f.monster_group_9==4"]

[iscript]
tf.monster_number=1;
tf.monster1=12;
[endscript]

[elsif exp="f.monster_group_10==1"]

[iscript]
tf.monster_number=2;
tf.monster2=11;
tf.monster3=12;

[endscript]

[elsif exp="f.monster_group_10==2"]

[iscript]
tf.monster_number=1;
tf.monster1=13;

[endscript]

[elsif exp="f.monster_group_10==3"]

[iscript]
tf.monster_number=3;
tf.monster1=13;
tf.monster2=13;
tf.monster3=13;
[endscript]

[elsif exp="f.monster_group_10==4"]

[iscript]
tf.monster_number=1;
tf.monster1=14;
[endscript]

[elsif exp="f.monster_group_11==1"]

[iscript]
tf.monster_number=1;
tf.monster1=14;
[endscript]

[elsif exp="f.monster_group_11==2"]

[iscript]
tf.monster_number=1;
tf.monster1=19;
[endscript]

[elsif exp="f.monster_group_12==1"]

[iscript]
tf.monster_number=3;
tf.monster1=14;
tf.monster2=14;
tf.monster3=14;
[endscript]

[elsif exp="f.monster_group_12==2"]

[iscript]
tf.monster_number=3;
tf.monster1=19;
tf.monster2=19;
tf.monster3=19;
[endscript]


[elsif exp="f.monster_group_14==1"]

[iscript]
tf.monster_number=1;
tf.monster1=26;

[endscript]


[elsif exp="f.monster_group_14==2"]

[iscript]
tf.monster_number=1;
tf.monster1=27;

[endscript]


[elsif exp="f.monster_group_15==1"]

[iscript]
tf.monster_number=3;
tf.monster1=26;
tf.monster2=26;
tf.monster3=26;
[endscript]

[elsif exp="f.monster_group_15==2"]

[iscript]
tf.monster_number=1;
tf.monster1=27;
[endscript]


[elsif exp="f.monster_group_16==1"]

[iscript]
tf.monster_number=2;
tf.monster2=4;
tf.monster3=6;

[endscript]


[elsif exp="f.monster_group_16==2"]

[iscript]
tf.monster_number=2;
tf.monster2=2;
tf.monster3=2;

[endscript]

[elsif exp="f.monster_group_16==3"]

[iscript]
tf.monster_number=2;
tf.monster2=6;
tf.monster3=7;

[endscript]


[elsif exp="f.monster_group_16==4"]

[iscript]
tf.monster_number=2;
tf.monster2=7;
tf.monster3=13;

[endscript]


[elsif exp="f.monster_group_16==5"]

[iscript]
tf.monster_number=3;
tf.monster1=8;
tf.monster2=8;
tf.monster3=8;
[endscript]


[elsif exp="f.monster_group_16==6"]

[iscript]
tf.monster_number=3;
tf.monster1=9;
tf.monster2=6;
tf.monster3=7;
[endscript]


[elsif exp="f.monster_group_16==7"]

[iscript]
tf.monster_number=3;
tf.monster1=10;
tf.monster2=10;
tf.monster3=10;
[endscript]


[elsif exp="f.monster_group_16==8"]

[iscript]
tf.monster_number=3;
tf.monster1=2;
tf.monster2=3;
tf.monster3=11;
[endscript]


[elsif exp="f.monster_group_16==9"]

[iscript]
tf.monster_number=2;
tf.monster2=12;
tf.monster3=14;

[endscript]


[elsif exp="f.monster_group_16==10"]

[iscript]
tf.monster_number=2;
tf.monster2=8;
tf.monster3=13;
[endscript]


[elsif exp="f.monster_group_16==11"]

[iscript]
tf.monster_number=3;
tf.monster1=14;
tf.monster2=14;
tf.monster3=14;

[endscript]


[elsif exp="f.monster_group_16==12"]

[iscript]
tf.monster_number=3;
tf.monster1=4;
tf.monster2=4;
tf.monster3=4;
[endscript]


[elsif exp="f.monster_group_18==1"]

[iscript]
tf.monster_number=3;
tf.monster1=14;
tf.monster2=14;
tf.monster3=14;
[endscript]


[elsif exp="f.monster_group_18==2"]

[iscript]
tf.monster_number=1;
tf.monster1=15;
[endscript]


[elsif exp="f.monster_group_18==3"]

[iscript]
tf.monster_number=1;
tf.monster1=16;


[endscript]


[elsif exp="f.monster_group_18==4"]

[iscript]
tf.monster_number=2;
tf.monster2=17;
tf.monster3=17;

[endscript]


[elsif exp="f.monster_group_18==5"]

[iscript]
tf.monster_number=2;
tf.monster2=18;
tf.monster3=18;

[endscript]


[elsif exp="f.monster_group_18==6"]

[iscript]
tf.monster_number=1;
tf.monster1=19;
[endscript]


[elsif exp="f.monster_group_18==7"]

[iscript]
tf.monster_number=1;
tf.monster1=20;
[endscript]


[elsif exp="f.monster_group_18==8"]

[iscript]
tf.monster_number=1;
tf.monster1=21;
[endscript]


[elsif exp="f.monster_group_18==9"]

[iscript]
tf.monster_number=3;
tf.monster1=20;
tf.monster2=20;
tf.monster3=20;
[endscript]


[elsif exp="f.monster_group_18==10"]

[iscript]
tf.monster_number=2;
tf.monster2=15;
tf.monster3=16;

[endscript]


[elsif exp="f.monster_group_20==1"]

[iscript]
tf.monster_number=3;
tf.monster1=16;
tf.monster2=16;
tf.monster3=16;
[endscript]


[elsif exp="f.monster_group_20==2"]

[iscript]
tf.monster_number=3;
tf.monster1=19;
tf.monster2=19;
tf.monster3=19;
[endscript]


[elsif exp="f.monster_group_20==3"]

[iscript]
tf.monster_number=3;
tf.monster1=20;
tf.monster2=20;
tf.monster3=20;
[endscript]

[elsif exp="f.monster_group_21==1"]

[iscript]
tf.monster_number=1;
tf.monster1=28;

[endscript]


[elsif exp="f.monster_group_22==1"]

[iscript]
tf.monster_number=1;
tf.monster1=29;

[endscript]

[elsif exp="f.monster_group_23==1"]
;ルシア２
[iscript]
f.rusia_l_size=1;
f.rusia_battle=1;
tf.monster_number=1;
tf.monster1=30;

[endscript]

[elsif exp="f.monster_group_24==1"]
;異形２
[iscript]
f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=31;

[endscript]

[elsif exp="f.monster_group_25==1"]
;異形３
[iscript]
f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=32;

[endscript]

[elsif exp="f.monster_group_26==1"]
;UNKNOWN
[iscript]
//f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=33;

[endscript]


[elsif exp="f.monster_group_27==1"]
;UNKNOWN
[iscript]
//f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=33;

[endscript]

[elsif exp="f.monster_group_28==1"]
;ウェルム
[iscript]
//f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=34;

[endscript]

[elsif exp="f.monster_group_29==1"]
;ヴァリアス
[iscript]
//f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=35;

[endscript]

[elsif exp="f.monster_group_30==1"]
;マカラ
[iscript]
//f.monster_l_size=1;
tf.monster_number=1;
tf.monster1=36;

[endscript]








[endif]


[iscript]

this.kag.variable.tf["monster_number"]=tf.monster_number;
this.kag.variable.tf["monster1"]=tf.monster1;
this.kag.variable.tf["monster2"]=tf.monster2;
this.kag.variable.tf["monster3"]=tf.monster3;
[endscript]





[return]



















monster_graphic_2='';
 	monster_graphic_3='';
 	monster_name_1=f.monster_no_2[0];
 	monster_name_2=0;
 	monster_name_3=0;
 	monster_hp_1=f.monster_no_2[1];
 	monster_hp_2=0;
 	monster_hp_3=0;
 	monster_damage_1=f.monster_no_2[3];
 	monster_damage_2=0;
 	monster_damage_3=0;
 	doku_1=f.monster_no_2[4];
 	doku_2=0;
 	doku_3=0;
 	mahi_1=f.monster_no_2[5];
	mahi_2=0;
    mahi_3=0;
    honoo_1=f.monster_no_2[6];
    honoo_2=0;
    honoo_3=0;
    koori_1=f.monster_no_2[7];
    koori_2=0;
    koori_3=0;
    ikaduti_1=f.monster_no_2[8];
    ikaduti_2=0;
    ikaduti_3=0;
    nigeru_1=f.monster_no_2[9];
    nigeru_2=0;
    nigeru_3=0;
	exp_1=f.monster_no_2[13];
	exp_2=0;
	exp_3=0; 


;時期によりいくつかを選び、ランダムで発生させる

;[if exp="f.jiyuu==1"]

;[iscript]
;f.monster_group_1 = Math.floor( Math.random() * 4) + 1
;[endscript]




;[elsif exp="f.jiyuu==2"]

;[iscript]
;f.monster_group_2 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==3"]

;[iscript]
;f.monster_group_3 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==4"]

;[iscript]
;f.monster_group_4 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==5"]

;[iscript]
;f.monster_group_5 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==7"]

;[iscript]
;f.monster_group_7 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==8"]

;[iscript]
;f.monster_group_8 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==9"]

;[iscript]
;f.monster_group_9 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==10"]

;[iscript]
;f.monster_group_10 = Math.floor( Math.random() * 4) + 1
;[endscript]


;[elsif exp="f.jiyuu==11"]

;[iscript]
;f.monster_group_11 = Math.floor( Math.random() * 2) + 1
;[endscript]

;[elsif exp="f.jiyuu==12"]

;[iscript]
;f.monster_group_12 = Math.floor( Math.random() * 4) + 1
;[endscript]

;[elsif exp="f.jiyuu==14"]

;[iscript]
;f.monster_group_14 = Math.floor( Math.random() * 1) + 1
;[endscript]

;[elsif exp="f.jiyuu==15"]

;[iscript]
;f.monster_group_15= Math.floor( Math.random() * 1) + 1
;[endscript]

;[elsif exp="f.jiyuu==16"]

;[iscript]
;f.monster_group_16 = Math.floor( Math.random() * 12) + 1
;[endscript]

;[elsif exp="f.jiyuu==17"]

;[iscript]
;f.monster_group_17 = Math.floor( Math.random() * 12) + 1
;[endscript]

;[elsif exp="f.jiyuu==18"]

;[iscript]
;f.monster_group_18 = Math.floor( Math.random() * 10) + 1
;[endscript]

;[elsif exp="f.jiyuu==19"]

;[iscript]
;f.monster_group_19 = Math.floor( Math.random() * 10) + 1
;[endscript]

;[elsif exp="f.jiyuu==20"]

;[iscript]
;f.monster_group_20 = Math.floor( Math.random() * 3) + 1
;[endscript]






;[endif]





