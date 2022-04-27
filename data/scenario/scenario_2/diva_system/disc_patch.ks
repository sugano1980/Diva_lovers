;ディスクパッチ



[if exp="f.disc_2==1"]

[iscript]
var rest =[
this.kag.stat.f["r_kajikaji_lion"],
this.kag.stat.f["r_hirayama_lion"],
this.kag.stat.f["r_oikawa_lion"],
this.kag.stat.f["r_romana_lion"],
this.kag.stat.f["r_beruzoku_lion"],
this.kag.stat.f["r_moon_lion"],
this.kag.stat.f["r_bejibeji_lion"],
this.kag.stat.f["r_poteto_lion"],
this.kag.stat.f["r_kyarokyaro_lion"]
];

for(i=0;i<10;i++){

	if(rest[i]==1){
		this.kag.stat.f["lionrenaikando"] = 1;	
	}

}

[endscript]

[endif]

[return]