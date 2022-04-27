

[macro name="chara_para_kioku"]


[if exp="f.kioku_yet!=1"]

[eval exp="f.kioku_yet=1"]
[if exp="f.event_main_8_days>0||f.event_8_gaishoku==1"]
[eval exp="f.event_days = f.event_main_8_days"]


[endif]

[if exp="f.event_days==0"]
[jump target=*para_end]
[endif]


[iscript]

this.kag.stat.f["rans_homekotoba_tec"] = 0;
this.kag.stat.f["lion_homekotoba_tec"] = 0;
this.kag.stat.f["kra_homekotoba_tec"] = 0;

this.kag.stat.f["rans_homekotoba_brain"] = 0;
this.kag.stat.f["lion_homekotoba_brain"] = 0;
this.kag.stat.f["kra_homekotoba_brain"] = 0;

this.kag.stat.f["rans_homekotoba_charm"] = 0;
this.kag.stat.f["lion_homekotoba_charm"] = 0;
this.kag.stat.f["kra_homekotoba_charm"] = 0;

 tyrano.plugin.kag.variable.tf.tec_word_ok = 0;
 tyrano.plugin.kag.variable.tf.brain_word_ok = 0;
 tyrano.plugin.kag.variable.tf.charm_word_ok = 0;




//各キャラセリフデータ


var rans_word_day_blank=[
0,
'昨日会ったばかりだが',
'一昨日会ったが',
'こないだ会った時より',
'前に会った時より',
'久しぶりだな',
'久方ぶりだが'
];

var lion_word_day_blank=[
0,
'昨日より',
'一昨日より',
'こないだ会った時より',
'前に会った時より',
'久しぶりだけど',
'スッゲー久しぶりだけど'
];

var kra_word_day_blank=[
0,
'あれ、昨日より',
'あれ、一昨日より',
'・・・ん？こないだ会った時より',
'あれ？前に会った時より',
'久しぶりだけど',
'少し会ってなかったけど'
];

//1-20;0

//21-40;1

//41以上;2

var rans_tec_1=[
'お前、剣の腕が少し上がったか？',
'剣の腕が上がったな。見ればわかる',
'お前・・・随分と顔つきが変わったな。技術もかなり上がったろう。頑張っているんだな'
];

var rans_brain_1=[
'勉強はちゃんとしているようだな。感心だ',
'座学も重要だが、お前はそれも怠っていないようだな',
'以前よりも随分と賢くなったように見える。きっと気のせいではないな。さすがだ'

];

var lion_tec_1=[
'お前ちょっと剣の腕上げたか？',
'お前腕が上がったか？・・・俺も負けてらんねーな。今度稽古に付き合ってやる',
'お前、剣術の腕あげたな。すげえ頑張ってんじゃねえか。でもあんま無理すんなよ'
];
var lion_charm_1=[
'お前ちょっとなんか・・・感じが違うような・・・気のせいか・・・',
'お前、その・・・なんだ・・・うまく、言えねえ',
'お前・・・なんか、なんつんだ、その・・・最近男連中が・・・可愛くなったとかなんとかって・・・えっいや俺は・・・その・・・よくわかんねえ・・・'

];

var kra_brain_1=[
'なんか賢そうだね。いや、前も賢そうだったけどより一層',
'なんか物知りになった？もしかして',
'すごく・・・賢そうに見えるんだけど気のせいじゃないよね？今度、博士って呼んでもいい？'
];

var kra_charm_1=[
'ちょっと可愛くなってない？',
'だいぶ感じが変わったよね。すごく・・・可愛い',
'すごく魅力的になったね・・・本当だよ',
'このまま押し倒しちゃいたいくらい。・・・なんてね'


];




if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){


var current_tec =this.kag.stat.f["current_tec_rans"];
var current_brain =this.kag.stat.f["current_brain_rans"];
var current_charm =this.kag.stat.f["current_charm_rans"]; 
var current_days = this.kag.stat.f["current_days_rans"]; 
var event_days = this.kag.stat.f["event_days"];

//----値がなかった場合代入
if(current_tec == 0){
	current_tec  = this.kag.stat.f["irain_tec"];
	this.kag.stat.f["current_tec_rans"]  = this.kag.stat.f["irain_tec"];

	
}

if(current_brain  ==0){
	current_brain = this.kag.stat.f["irain_brain"];
	this.kag.stat.f["current_brain_rans"]  = this.kag.stat.f["irain_brain"];
}

if(current_charm ==0){
	current_charm = this.kag.stat.f["irain_charm"];
	this.kag.stat.f["current_charm_rans"]  = this.kag.stat.f["irain_charm"];
}

if(current_days ==0){
  //現在の会った日に値がなければ現在の日にちを代入
		if(this.kag.stat.f["event_main_8_days"]>0){
			current_days = this.kag.stat.f["event_days"];
		}

	
}
//---------------

 //会った日を更新
 this.kag.stat.f["current_days_rans"] = this.kag.stat.f["event_days"];
}



if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){


var current_tec =this.kag.stat.f["current_tec_lion"];
var current_brain =this.kag.stat.f["current_brain_lion"];
var current_charm =this.kag.stat.f["current_charm_lion"]; 
var current_days = this.kag.stat.f["current_days_lion"]; 
var event_days = this.kag.stat.f["event_days"];

//----値がなかった場合代入
if(current_tec == 0){
	current_tec  = this.kag.stat.f["irain_tec"];
	this.kag.stat.f["current_tec_lion"]  = this.kag.stat.f["irain_tec"];

	
}

if(current_brain  ==0){
	current_brain = this.kag.stat.f["irain_brain"];
	this.kag.stat.f["current_brain_lion"]  = this.kag.stat.f["irain_brain"];
}

if(current_charm ==0){
	current_charm = this.kag.stat.f["irain_charm"];
	this.kag.stat.f["current_charm_lion"]  = this.kag.stat.f["irain_charm"];
}

if(current_days ==0){
  //現在の会った日に値がなければ現在の日にちを代入
		if(this.kag.stat.f["event_main_8_days"]>0){
			current_days = this.kag.stat.f["event_days"];
		}

	
}
//---------------

 //会った日を更新
 this.kag.stat.f["current_days_lion"] = this.kag.stat.f["event_days"];
}


if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){


var current_tec =this.kag.stat.f["current_tec_kra"];
var current_brain =this.kag.stat.f["current_brain_kra"];
var current_charm =this.kag.stat.f["current_charm_kra"]; 
var current_days = this.kag.stat.f["current_days_kra"]; 
var event_days = this.kag.stat.f["event_days"];

//----値がなかった場合代入
if(current_tec == 0){
	current_tec  = this.kag.stat.f["irain_tec"];
	this.kag.stat.f["current_tec_kra"]  = this.kag.stat.f["irain_tec"];

	
}

if(current_brain  ==0){
	current_brain = this.kag.stat.f["irain_brain"];
	this.kag.stat.f["current_brain_kra"]  = this.kag.stat.f["irain_brain"];
}

if(current_charm ==0){
	current_charm = this.kag.stat.f["irain_charm"];
	this.kag.stat.f["current_charm_kra"]  = this.kag.stat.f["irain_charm"];
}

if(current_days ==0){
  //現在の会った日に値がなければ現在の日にちを代入
		if(this.kag.stat.f["event_main_8_days"]>0){
			current_days = this.kag.stat.f["event_days"];
		}

	
}
//---------------

 //会った日を更新
 this.kag.stat.f["current_days_kra"] = this.kag.stat.f["event_days"];
}




//上で取得したキャラの会った日をビフォアデイに入力
var before_day = current_days;
//現在の日にちをカレントデイに入力
var current_days = this.kag.stat.f["event_days"];
//セリフように差分数を計算
tyrano.plugin.kag.variable.tf.day_blank=before_day - current_days;

//キャラの確認していたパラをビフォアに代入
 var before_tec = current_tec;
 var before_brain = current_brain;
 var before_charm = current_charm;

//イレインの現在パラをカレントに代入
 var current_tec= this.kag.stat.f["irain_tec"]; 
 var current_brain= this.kag.stat.f["irain_brain"]; 
 var current_charm= this.kag.stat.f["irain_charm"]; 
 
 

 //パラメータ増加量の変数
 var tec_calc =0;
 var brain_calc=0;
 var charm_calc=0;


//比較して増えていればセリフフラグをおん
	if(current_tec>before_tec){
　tec_calc = current_tec - before_tec;

		if(tec_calc>4){
            tyrano.plugin.kag.variable.tf.tec_word_ok = 1;
             }

	}
	
	if(current_charm>before_charm){
		charm_calc = current_charm - before_charm;
	if(charm_calc>4){
    tyrano.plugin.kag.variable.tf.charm_word_ok = 1;
    }

	}
	
	if(current_brain>before_brain){
		brain_calc = current_brain - before_brain;
	 if(brain_calc>4){
     tyrano.plugin.kag.variable.tf.brain_word_ok = 1;
     }

	}

	//上昇量によるセリフを確認
//能力値によるセリフ
//能力値の増減によるセリフ場合わけメソッド
//セリフフラグを変数wordに代入
if(tyrano.plugin.kag.variable.tf.tec_word_ok==1){
	
if(tec_calc<21){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		this.kag.stat.f["rans_homekotoba_tec"] = rans_tec_1[0];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_tec"]  = lion_tec_1[0];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		//this.kag.stat.f["kra_homekotoba_tec"]  = kra_tec_1[0];
		}


}else if(tec_calc>20&&tec_calc<41){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		this.kag.stat.f["rans_homekotoba_tec"] = rans_tec_1[1];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_tec"] = lion_tec_1[1];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		//this.kag.stat.f["kra_homekotoba_tec"] = kra_tec_1[1];
	}
				
				
}else{

if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
this.kag.stat.f["rans_homekotoba_tec"] = rans_tec_1[2];
}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_tec"] = lion_tec_1[2];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		//this.kag.stat.f["kra_homekotoba_tec"] = kra_tec_1[2];
		
		}


     }	
}




if(tyrano.plugin.kag.variable.tf.brain_word_ok==1){
			if(brain_calc<21){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		this.kag.stat.f["rans_homekotoba_brain"] = rans_brain_1[0];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		//this.kag.stat.f["lion_homekotoba_brain"] = lion_brain_1[0];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_brain"] = kra_brain_1[0];
		}


}else if(brain_calc>20&&brain_calc<41){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		this.kag.stat.f["rans_homekotoba_brain"] = rans_brain_1[1];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		//this.kag.stat.f["lion_homekotoba_brain"] = lion_brain_1[1];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_brain"] = kra_brain_1[1];
		}
				
				
}else{

if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
       this.kag.stat.f["rans_homekotoba_brain"] = rans_brain_1[2];
       }

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		//this.kag.stat.f["lion_homekotoba_brain"] = lion_brain_1[2];
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_brain"] = kra_brain_1[2];
		}


     }					

			
			
}

if(tyrano.plugin.kag.variable.tf.charm_word_ok==1){
			//charm_calc();
			if(charm_calc<21){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		//this.kag.stat.f["rans_homekotoba_charm"] = rans_charm_1[0];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_charm"] = lion_charm_1[0];
		this.kag.stat.f["lion_homecharm"] = 1; 
		
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_charm"] = kra_charm_1[0];
		}


}else if(charm_calc>20&&charm_calc<41){

	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		//this.kag.stat.f["rans_homekotoba_charm"] = rans_charm_1[1];
		}

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_charm"] = lion_charm_1[1];
		this.kag.stat.f["lion_homecharm"] = 1; 
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_charm"] = kra_charm_1[1];
		}
				
				
}else{

if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
     //this.kag.stat.f["rans_homekotoba_charm"] = rans_charm_1[2];
     }

	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		this.kag.stat.f["lion_homekotoba_charm"] = lion_charm_1[2];
		this.kag.stat.f["lion_homecharm"] = 1; 
		}
		
	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		this.kag.stat.f["kra_homekotoba_charm"] = kra_charm_1[2];
		this.kag.stat.f["kra_homekotoba_charm_2"] = kra_charm_1[3];
		this.kag.stat.f["kra_homekotoba_charm_m"] = 1;
		
		}


     }					
}


//日にちによるセリフ
//ランスの場合
	if(tyrano.plugin.kag.variable.tf.rans_kioku_para==1){
		
		for(i=1;i<6;i++){
			if(tyrano.plugin.kag.variable.tf.day_blank==i){
				
				
				this.kag.stat.f["rans_word_day_blank"] = rans_word_day_blank[i];
				
			}
			
		}
		
}
		
	if(tyrano.plugin.kag.variable.tf.lion_kioku_para==1){
		
		for(i=1;i<6;i++){
			if(tyrano.plugin.kag.variable.tf.day_blank==i){
				
				this.kag.stat.f["lion_word_day_blank"]  = lion_word_day_blank[i];
				
			}
			
			
		}
		
}

	if(tyrano.plugin.kag.variable.tf.kra_kioku_para==1){
		
		for(i=1;i<6;i++){
			if(tyrano.plugin.kag.variable.tf.day_blank==i){
				
				this.kag.stat.f["kra_word_day_blank"]  = kra_word_day_blank[i];
				
			}
			
			
		}

	
}



		
		







		

[endscript]
[endif]
*para_end
[endmacro]

[macro name="rans_para_current_kioku"]
 [iscript]	
 	 this.kag.stat.f["current_tec_rans"] = this.kag.stat.f["irain_tec"]; 
     this.kag.stat.f["current_brain_rans"] = this.kag.stat.f["irain_brain"]; 
     this.kag.stat.f["current_charm_rans"] = this.kag.stat.f["irain_charm"]; 
     [endscript]
 [endmacro]
 	
[macro name="lion_para_current_kioku"]
 [iscript]	 	
 	 this.kag.stat.f["current_tec_lion"] = this.kag.stat.f["irain_tec"]; 
     this.kag.stat.f["current_brain_lion"] = this.kag.stat.f["irain_brain"]; 
     this.kag.stat.f["current_charm_lion"] = this.kag.stat.f["irain_charm"]; 
 [endscript]
[endmacro]
 	
 	

[macro name="kra_para_current_kioku"] 	
 [iscript]	
 	  this.kag.stat.f["current_tec_kra"] = this.kag.stat.f["irain_tec"]; 
     this.kag.stat.f["current_brain_kra"] = this.kag.stat.f["irain_brain"]; 
     this.kag.stat.f["current_charm_kra"] = this.kag.stat.f["irain_charm"]; 
          [endscript]
[endmacro] 	





[return]

