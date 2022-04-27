
;お知らせ
[macro name="attention"]

[eval exp="tf.attention_x=800"]
[eval exp="tf.attention_y=150"]
[eval exp="tf.attention_x_tojiru=tf.attention_x+168"]
[eval exp="tf.attention_y_tojiru=tf.attention_y+10"]



[image layer=1 page=fore storage="attention.png" name="attention" x=&tf.attention_x y=&tf.attention_y]
[button graphic="button/tojiru.png" fix="true" name="attention" clickse="tm2_switch001_macchi.ogg" storage="attention.ks" x=&tf.attention_x_tojiru y=&tf.attention_y_tojiru]
[eval exp="tf.attention_x_moji=tf.attention_x+28"]
[eval exp="tf.attention_y_moji=tf.attention_y+28"]
[eval exp="tf.attention_x_image=tf.attention_x+10"]
[eval exp="tf.attention_y_image=tf.attention_y+10"]


[image layer=2 page=fore storage="warning.png" name="attention" x=&tf.attention_x_image y=&tf.attention_y_image]
[ptext layer=2 page=fore text="M A P上にイベントあり" name="attention" color="black" size=15 x=&tf.attention_x_moji y=&tf.attention_y_moji]


[anim name="attention" left="-=200" time=200]





[endmacro]



;目標表示
[macro name="mokuhyou"]



[eval exp="tf.mokuhyou_x=532"]
[eval exp="tf.mokuhyou_y=30"]

[eval exp="tf.mokuhyou_x_moji=552"]
[eval exp="tf.mokuhyou_y_moji=55"]

[eval exp="tf.mokuhyou_x_suuji=698"]
[eval exp="tf.mokuhyou_y_suuji=45"]

[eval exp="tf.mokuhyou_x_suuji_number=707"]
[eval exp="tf.mokuhyou_y_suuji_number=55"]


[eval exp="tf.mokuhyou_x_moji_2=730"]
[eval exp="tf.mokuhyou_y_moji_2=55"]



[eval exp="tf.mokuhyou_x_con=650"]
[eval exp="tf.mokuhyou_y_con=120"]

[eval exp="tf.mokuhyou_x_con_image=630"]
[eval exp="tf.mokuhyou_y_con_image=115"]


[if exp="f.jouken_hyouji==1&&f.event_main_3==1"]

[eval exp="tf.mokuhyou_x_moji_3=552"]
[eval exp="tf.mokuhyou_y_moji_3=85"]

[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
[ptext layer=2 page=fore text="試験当日の時点で技術２０以上" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
[ptext layer=2 page=fore text="試験当日の戦闘に勝利する" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_moji_3 y=&tf.mokuhyou_y_moji_3]


[button graphic="button/toumei.png" fix="true" name="mokuhyou" clickse="tm2_switch001_macchi.ogg" target=*condition_2 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[ptext layer=2 page=fore text="残り日数表示" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]


[elsif exp=f.event_main_3==1&&f.jouken_hyouji=!1]

[image layer=1 page=fore storage="mokuhyou.png" name="mokuhyou" x=&tf.mokuhyou_x y=&tf.mokuhyou_y]
[ptext layer=2 page=fore text="正騎士試験まであと" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji y=&tf.mokuhyou_y_moji]
[image layer=2 page=fore storage="mokuhyou_suuji.png" name="mokuhyou" x=&tf.mokuhyou_x_suuji y=&tf.mokuhyou_y_suuji]
[ptext layer=2 page=fore text="&f.event_main_3_days" face=antique name="mokuhyou" size=23 x=&tf.mokuhyou_x_suuji_number y=&tf.mokuhyou_y_suuji_number]
[ptext layer=2 page=fore text="日" face=antique name="mokuhyou" color="black" size=17 x=&tf.mokuhyou_x_moji_2 y=&tf.mokuhyou_y_moji_2]

[button graphic="button/toumei.png" fix="true" name="mokuhyou" clickse="tm2_switch001_macchi.ogg" target=*condition x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[ptext layer=2 page=fore text="条件を確認する" face=antique name="mokuhyou" color="black" size=15 x=&tf.mokuhyou_x_con y=&tf.mokuhyou_y_con]
[image layer=1 page=fore storage="jouken_button.png" name="mokuhyou" x=&tf.mokuhyou_x_con_image y=&tf.mokuhyou_y_con_image]
[endif]





[endmacro]





;装備の効果計算


;イレインの能力値更新
[macro name="irain_kousin"]

[free name="status_skill" layer=2]
[free name="status_hp" layer=2]






;能力値更新
;能力値更新
;技術
[ptext layer=2 page=fore text="技術" name="status_skill" size=20 face="antique" x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" size=23 face="antique" x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" size=20 face="antique" x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" size=23 face="antique" x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" size=20 face="antique" x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" size=23 face="antique" x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

[eval exp="f.irain_hp=f.irain_tec+f.irain_brain+f.irain_charm"]

[if exp="f.irain_hp>998"]
[eval exp="f.irain_hp=999"]
[endif]

[ptext layer=2 page=fore visible="true" text="&f.irain_hp" name="status_hp" size=30 face="antique" x=&tf.irain_hp_x y=&tf.irain_hp_y]


[endmacro]



;---------------------------------------------------------------
;戦闘アイテム表示用


;装備アイテム表示用
;---------------------------------------

[macro name="day_minus"]

[if exp="f.event_main_3==1"]
[eval exp="f.event_main_3_days=f.event_main_3_days-1"]
[eval exp="f.work efficiency=f.work efficiency-2"]
[else]
[endif]

[if exp="f.work efficiency<0"]
[eval exp="f.work efficiency=1"]
[endif]



[endmacro]




[macro name="day_end"]
[fadeoutbgm time=1000]
[day_minus]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[eval exp="f.tougijou_battle_time=0"]
[eval exp="f.tougijou=0"]
[anten]
[if exp="sf.chokki!=1"]
[refresh_hanyou]
[endif]
[message_settei_ad]
[eval exp="sf.chokki=0"]


[if exp="f.siken_taiki==1"]
[eval exp="f.siken_taiki=0"]
[eval exp="f.kyuujitu=0"]
[jump storage="episode/epi1.ks" target=*event_main_4]
[endif]

[if exp="f.event_main_3_days==5&&f.test_return!=1"]
[eval exp="f.kyuujitu=0"]
;イレインの外出回数追加
[eval exp="f.irain_move=2"]

[jump storage="episode/epi1.ks" target=*rans_tutrial]

[elsif exp="f.event_main_3_days==0"]
[eval exp="f.kyuujitu=0"]
[jump storage="episode/epi1.ks" target=*siken]
[else]
[bg storage="irainheya_tasogare.jpg"]
;イレインの外出回数追加
[eval exp="f.irain_move=2"]
[jump storage="status_macro.ks" target=*status]
[endif]

[endmacro]



[macro name="status_hyouji_kousin"]

;ステータス再表示
;ステータスベース
[image layer=1 page=fore storage="status_window.png" name="status" x=175 y=140]

;イレインの顔画像
[image layer=2 page=fore storage="battle_face/irain_face.png" name="status" x=200 y=152]


;街の人の信頼度
[image layer=2 page=fore storage="trust_star_0.png" name="status" x=225 y=280]


[if exp="f.town_trust>=2"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=225 y=280]

[endif]

[if exp="f.town_trust>=5"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=237 y=280]

[endif]

[if exp="f.town_trust>=7"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=249 y=280]

[endif]


[if exp="f.town_trust>=10"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=261 y=280]

[endif]

[if exp="f.town_trust>=12"]

[image layer=2 page=fore storage="trust_star_half.gif" name="status" x=273 y=280]

[endif]

[if exp="f.town_trust>=15"]

[image layer=2 page=fore storage="trust_star_half2.gif" name="status" x=285 y=280]

[endif]



;名前
[ptext layer=2 page=fore text="&f.name" face="antique" name="status" size=21 x=370 y=163]


[ptext layer=2 page=fore visible="true" text="HP:" face="antique" name="status" size=20 x=355 y=190]


[eval exp="f.irain_hp="f.irain_tec+f.irain_brain+f.irain_charm"]

[ptext layer=2 page=fore visible="true" text="&f.irain_hp" face="antique" name="status_hp" size=30 x=395 y=190]

;トロフィ
[if exp="f.tougijou_kunshou==1"]
[image layer=2 page=fore storage="torofi.png" name="status" x=458 y=188]
[endif]
[eval exp="tf.irain_hp_x=395"]
[eval exp="tf.irain_hp_y=190"]


[eval exp="tf.irain_tec_x=360"]
[eval exp="tf.irain_tec_number_x=415"]

[eval exp="tf.irain_tec_y=225"]
[eval exp="tf.irain_tec_number_y=226"]


[eval exp="tf.irain_brain_x=360"]
[eval exp="tf.irain_brain_number_x=415"]

[eval exp="tf.irain_brain_y=250"]
[eval exp="tf.irain_brain_number_y=251"]


[eval exp="tf.irain_charm_x=360"]
[eval exp="tf.irain_charm_number_x=415"]

[eval exp="tf.irain_charm_y=275"]
[eval exp="tf.irain_charm_number_y=276"]





;技術
[ptext layer=2 page=fore text="技術" name="status_skill" face="antique" size=20 x=&tf.irain_tec_x y=&tf.irain_tec_y]
;技術値
[ptext layer=2 page=fore text="&f.irain_tec" name="status_skill" face="antique" size=23 x=&tf.irain_tec_number_x y=&tf.irain_tec_number_y]

;頭脳
[ptext layer=2 page=fore text="頭脳" name="status_skill" face="antique" size=20 x=&tf.irain_brain_x y=&tf.irain_brain_y]
;頭脳値
[ptext layer=2 page=fore text="&f.irain_brain" name="status_skill" face="antique" size=23 x=&tf.irain_brain_number_x y=&tf.irain_brain_number_y]

;魅力
[ptext layer=2 page=fore text="魅力" name="status_skill" face="antique" size=20 x=&tf.irain_charm_x y=&tf.irain_charm_y]
;魅力値
[ptext layer=2 page=fore text="&f.irain_charm" name="status_skill" face="antique" size=23 x=&tf.irain_charm_number_x y=&tf.irain_charm_number_y]

;所属
[ptext layer=2 page=fore text="所属:" name="status" face="antique" size=20 x=215 y=305]

;所属名
[ptext layer=2 page=fore text="クレール王国地方騎士団" name="status" face="antique" size=20 x=260 y=305]




[endmacro]





[macro name="event_check"]

[eval exp="f.attention_ok=0"]

[if exp="f.event_sakaba==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_1_maigo==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_main_1==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_2_oyaji==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_2_kra==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_2_lioness_meal==1"]
[eval exp="f.attention_ok=1"][endif]

[if exp="f.event_2_kra_meal==1"]
[eval exp="f.attention_ok=1"][endif]


[if exp="f.event_2_gaia==1"]
[eval exp="f.attention_ok=1"][endif]




[endmacro]





[macro name="equip_item_shokika"]

[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]
[eval exp="tf.equip_item_6=0"]
[eval exp="tf.equip_item_7=0"]
[eval exp="tf.equip_item_8=0"]
[eval exp="tf.equip_item_9=0"]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]
[eval exp="tf.equip_item_19=0"]
[eval exp="tf.equip_item_20=0"]
[eval exp="tf.equip_item_21=0"]
[eval exp="tf.equip_item_22=0"]
[eval exp="tf.equip_item_23=0"]
[eval exp="tf.equip_item_24=0"]
[eval exp="tf.equip_item_25=0"]
[eval exp="tf.equip_item_26=0"]
[eval exp="tf.equip_item_27=0"]
[eval exp="tf.equip_item_28=0"]
[eval exp="tf.equip_item_29=0"]
[eval exp="tf.equip_item_30=0"]
[eval exp="tf.equip_item_31=0"]
[eval exp="tf.equip_item_32=0"]
[eval exp="tf.equip_item_33=0"]
[eval exp="tf.equip_item_34=0"]

[endmacro]



[macro name="item_suuti_delete"]
[free name="item_suuti" layer=2]
[free name="item_suuti_2" layer=2]
[free name="item_suuti_3" layer=2]
[free name="item_suuti_4" layer=2]
[free name="item_suuti_5" layer=2]
[free name="item_suuti_6" layer=2]
[free name="item_suuti_7" layer=2]
[free name="item_suuti_8" layer=2]
[free name="item_suuti_9" layer=2]
[free name="item_suuti_10" layer=2]
[free name="item_suuti_11" layer=2]
[free name="item_suuti_12" layer=2]
[free name="item_suuti_13" layer=2]
[free name="item_suuti_14" layer=2]
[free name="item_suuti_15" layer=2]
[free name="item_suuti_16" layer=2]
[free name="item_suuti_17" layer=2]
[free name="item_suuti_18" layer=2]
[free name="item_suuti_19" layer=2]
[free name="item_suuti_20" layer=2]
[free name="item_suuti_21" layer=2]
[free name="item_suuti_22" layer=2]
[free name="item_suuti_23" layer=2]
[free name="item_suuti_24" layer=2]
[free name="item_suuti_25" layer=2]
[free name="item_suuti_26" layer=2]
[free name="item_suuti_27" layer=2]
[free name="item_suuti_28" layer=2]
[free name="item_suuti_29" layer=2]
[free name="item_suuti_30" layer=2]
[free name="item_suuti_31" layer=2]
[free name="item_suuti_32" layer=2]
[free name="item_suuti_33" layer=2]
[free name="item_suuti_34" layer=2]


[endmacro]


[macro name="equip_flag_delete"]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]
[eval exp="tf.equip_item_6=0"]
[eval exp="tf.equip_item_7=0"]
[eval exp="tf.equip_item_8=0"]
[eval exp="tf.equip_item_9=0"]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]
[eval exp="tf.equip_item_19=0"]
[eval exp="tf.equip_item_20=0"]
[eval exp="tf.equip_item_21=0"]
[eval exp="tf.equip_item_22=0"]
[eval exp="tf.equip_item_23=0"]
[eval exp="tf.equip_item_24=0"]
[eval exp="tf.equip_item_25=0"]
[eval exp="tf.equip_item_26=0"]
[eval exp="tf.equip_item_27=0"]
[eval exp="tf.equip_item_28=0"]
[eval exp="tf.equip_item_29=0"]
[eval exp="tf.equip_item_30=0"]
[eval exp="tf.equip_item_31=0"]
[eval exp="tf.equip_item_32=0"]
[eval exp="tf.equip_item_33=0"]
[eval exp="tf.equip_item_34=0"]
[eval exp="tf.equip_item_35=0"]


[endmacro]

[macro name="equip_current_1_check"]
;現在の装備ナンバーを確認、変数に代入
[iscript]

tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<35;i++){
if(this.kag.stat.f["equip_item_current"]==i){

	this.kag.stat.f["equip_item_stock"][i]+=1;

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2 = tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3 = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];

    
}


}

[endscript]

;能力値を変更
[if exp="tf.equip_item_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm-tf.equip_item_effect_number_3"]
[endif]
[if exp="tf.equip_item_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain-tf.equip_item_effect_number_2"]
[endif]
[if exp="tf.equip_item_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec-tf.equip_item_effect_number_1"]
[endif]




[endmacro]


;装備欄１の装備変更時の名前変更
[macro name="equip_change_item_name_1"]
[iscript]
tyrano.plugin.kag.variable.tf.item_name =0;

var equip_item = this.kag.stat.f["equip_item_current"];

tyrano.plugin.kag.variable.tf.item_name= this.kag.stat.f["equip_item_list"].map(function(x) {return x.name})


for(i=1;i<35;i++){

	if(equip_item==i){
		
	tyrano.plugin.kag.variable.tf.aiko = tyrano.plugin.kag.variable.tf.item_name[i];
	    
	
	}

}

[endscript]
;装備欄へ表示
[ptext layer=2 page=fore text=&tf.aiko face=antique name="soubi1" size=20 x=&tf.soubi1_x y=&tf.soubi1_y]
;アイテム欄再表示
[free name="key" layer=2]
[equip_item_shoki]

[eval exp="tf.equip_item_current_2_click=0"]
[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]
[irain_kousin]
[irain_style_image]
[eval exp="tf.hair_hyouji=0"]
[clearfix]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi1_key_y]



[if exp="f.equip_change==1"]
[button graphic="soubi_ok.png" fix="true" name="store" target=*soubi_end x=210 y=293]
[jump storage="equip_change.ks" target=*item_shokika]
[else]
[button graphic="soubi_ok.png" fix="true" name="store" target=*equip_ok x=210 y=293]
[jump storage="status_macro.ks" target=*item_shokika]
[endif]

[endmacro]


[macro name="equip_current_2_check"]

;--------------------------------------------------------------------------
[iscript]

tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;



tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})

tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



for(i=1;i<35;i++){
if(this.kag.stat.f["equip_item_current_2"]==i){

	this.kag.stat.f["equip_item_stock"][i]+=1;

 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 = tyrano.plugin.kag.variable.tf.item_parameter_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 = tyrano.plugin.kag.variable.tf.item_parameter_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 = tyrano.plugin.kag.variable.tf.item_parameter_3[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=tyrano.plugin.kag.variable.tf.item_effect_number_1[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2 = tyrano.plugin.kag.variable.tf.item_effect_number_2[i];
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3 = tyrano.plugin.kag.variable.tf.item_effect_number_3[i];

    
}


}

[endscript]

;能力値を変更
[if exp="tf.equip_item_parameter_3==1"]
[eval exp="f.irain_charm=f.irain_charm-tf.equip_item_effect_number_3"]
[endif]
[if exp="tf.equip_item_parameter_2==1"]
[eval exp="f.irain_brain=f.irain_brain-tf.equip_item_effect_number_2"]
[endif]
[if exp="tf.equip_item_parameter_1==1"]
[eval exp="f.irain_tec=f.irain_tec-tf.equip_item_effect_number_1"]
[endif]

[endmacro]

[macro name="equip_change_item_name_2"]

;現在の装備ナンバーを確認、変数に代入
[iscript]

var equip_item_2 = this.kag.stat.f["equip_item_current_2"];

tyrano.plugin.kag.variable.tf.item_name= this.kag.stat.f["equip_item_list"].map(function(x) {return x.name})


for(i=1;i<35;i++){

	if(equip_item_2==i){
	equip_item_2 = tyrano.plugin.kag.variable.tf.item_name[i];
	
	}

}

tf.aiko_2 = equip_item_2

[endscript]



[ptext layer=2 page=fore text=&tf.aiko_2 face=antique name="soubi2" size=20 x=&tf.soubi2_x y=&tf.soubi2_y]

;アイテム欄再表示
;アイテム欄再表示
[free name="key" layer=2]
[equip_item_shoki]
[eval exp="tf.equip_item_current_1_click=0"]

[eval exp="tf.equip_item_change_1=0"]
[eval exp="tf.equip_item_change_2=0"]

[irain_kousin]
[irain_style_image]
[clearfix]
[image layer=2 page=fore storage="key_cursor.png" name="key" x=&tf.soubi1_key_x y=&tf.soubi2_key_y]

[if exp="f.equip_change==1"]
[button graphic="soubi_ok.png" fix="true" name="store" target=*soubi_end x=210 y=293]
[jump storage="equip_change.ks" target=*item_shokika]
[else]
[button graphic="soubi_ok.png" fix="true" name="store" target=*equip_ok x=210 y=293]
[jump storage="status_macro.ks" target=*item_shokika]
[endif]


[endmacro]


[macro name="item_suuti_delete"]
[free name="item_suuti" layer=2]
[free name="item_suuti_2" layer=2]
[free name="item_suuti_3" layer=2]
[free name="item_suuti_4" layer=2]
[free name="item_suuti_5" layer=2]
[free name="item_suuti_6" layer=2]
[free name="item_suuti_7" layer=2]
[free name="item_suuti_8" layer=2]
[free name="item_suuti_9" layer=2]
[free name="item_suuti_10" layer=2]
[free name="item_suuti_11" layer=2]
[free name="item_suuti_12" layer=2]
[free name="item_suuti_13" layer=2]
[free name="item_suuti_14" layer=2]
[free name="item_suuti_15" layer=2]
[free name="item_suuti_16" layer=2]
[free name="item_suuti_17" layer=2]
[free name="item_suuti_18" layer=2]
[free name="item_suuti_19" layer=2]
[free name="item_suuti_20" layer=2]
[free name="item_suuti_21" layer=2]
[free name="item_suuti_22" layer=2]
[free name="item_suuti_23" layer=2]
[free name="item_suuti_24" layer=2]
[free name="item_suuti_25" layer=2]
[free name="item_suuti_26" layer=2]
[free name="item_suuti_27" layer=2]
[free name="item_suuti_28" layer=2]
[free name="item_suuti_29" layer=2]
[free name="item_suuti_30" layer=2]
[free name="item_suuti_31" layer=2]
[free name="item_suuti_32" layer=2]
[free name="item_suuti_33" layer=2]
[free name="item_suuti_34" layer=2]


[endmacro]


[macro name="equip_flag_delete"]
[eval exp="tf.equip_item_1=0"]
[eval exp="tf.equip_item_2=0"]
[eval exp="tf.equip_item_3=0"]
[eval exp="tf.equip_item_4=0"]
[eval exp="tf.equip_item_5=0"]
[eval exp="tf.equip_item_6=0"]
[eval exp="tf.equip_item_7=0"]
[eval exp="tf.equip_item_8=0"]
[eval exp="tf.equip_item_9=0"]
[eval exp="tf.equip_item_10=0"]
[eval exp="tf.equip_item_11=0"]
[eval exp="tf.equip_item_12=0"]
[eval exp="tf.equip_item_13=0"]
[eval exp="tf.equip_item_14=0"]
[eval exp="tf.equip_item_15=0"]
[eval exp="tf.equip_item_16=0"]
[eval exp="tf.equip_item_17=0"]
[eval exp="tf.equip_item_18=0"]
[eval exp="tf.equip_item_19=0"]
[eval exp="tf.equip_item_20=0"]
[eval exp="tf.equip_item_21=0"]
[eval exp="tf.equip_item_22=0"]
[eval exp="tf.equip_item_23=0"]
[eval exp="tf.equip_item_24=0"]
[eval exp="tf.equip_item_25=0"]
[eval exp="tf.equip_item_26=0"]
[eval exp="tf.equip_item_27=0"]
[eval exp="tf.equip_item_28=0"]
[eval exp="tf.equip_item_29=0"]
[eval exp="tf.equip_item_30=0"]
[eval exp="tf.equip_item_31=0"]
[eval exp="tf.equip_item_32=0"]
[eval exp="tf.equip_item_33=0"]
[eval exp="tf.equip_item_34=0"]
[eval exp="tf.equip_item_35=0"]


[endmacro]



;新しく新規;カーニバル編より


[macro name="money_calc"]
[if exp="f.town_trust>1"]
[eval exp="f.money_level=1"]
[eval exp="f.money=f.money+500"]
[elsif exp="f.town_trust>4"]
[eval exp="f.money_level=2"]
[eval exp="f.money=f.money+1000"]
[elsif exp="f.town_trust>6"]
[eval exp="f.money_level=3"]
[eval exp="f.money=f.money+2000"]
[elsif exp="f.town_trust>9"]
[eval exp="f.money_level=4"]
[eval exp="f.money=f.money+3000"]
[elsif exp="f.town_trust>11"]
[eval exp="f.money_level=5"]
[eval exp="f.money=f.money+5000"]
[elsif exp="f.town_trust>14"]
[eval exp="f.money_level=6"]
[eval exp="f.money=f.money+10000"]
[else]
[eval exp="f.money=f.money+500"]
[endif]

[playse storage="store_money_koukaonlabo.ogg"]
[message_settei_ad]
[if exp="f.money_level_current<f.money_level"]
お給料がアップしました！！[p]
[endif]
[free name="money" layer=1]
[free name="money" layer=2]
[eval exp="f.money_level_current=f.money_level"]
[money_hyouji]
お給料が支払われました。[p]
[endmacro]

[macro name="money_hyouji"]
;お金
[image layer=1 page=fore storage="okane.png" name="money" x=540 y=210]
;お金数値
[ptext layer=2 page=fore text="G" face=antique name="money" size=20 x=550 y=220]
[ptext layer=2 page=fore text="&f.money" face=antique name="money" size=20 x=575 y=220]

[endmacro]



[macro name="genzai_soubi_hyouji"]

[free name="soubi1" layer=2]

[iscript]
var current_name=0;
for(i=1;i<35;i++){
	if(this.kag.stat.f["equip_item_current"]==i){		
		tyrano.plugin.kag.variable.tf.equip_item_name_current = this.kag.stat.f["equip_item_list"][i].name;
	}
		if(this.kag.stat.f["equip_item_current_2"]==i){		
		tyrano.plugin.kag.variable.tf.equip_item_name_current_2 = this.kag.stat.f["equip_item_list"][i].name;
	}

}
[endscript]

[if exp="f.equip_change==1"]
[ptext layer=2 page=fore text=&tf.equip_item_name_current face=antique name="soubi1" size=20 x=110 y=320]
[else]
[ptext layer=2 page=fore text=&tf.equip_item_name_current face=antique name="soubi1" size=20 x=590 y=300]
[endif]

;装備欄２表示
[if exp="f.equip_change==1"]
[ptext layer=2 page=fore text=&tf.equip_item_name_current_2 face=antique name="soubi2" size=20 x=110 y=350]
[else]
[free name="soubi2" layer=2]
[ptext layer=2 page=fore text=&tf.equip_item_name_current_2 face=antique name="soubi2" size=20 x=590 y=330]
[endif]
;-------------------------------------------------------------------------

[endmacro]

[macro name="item_change_shori"]

[iscript]

var item_stock =[];
tyrano.plugin.kag.variable.tf.item_number =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.equip_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.equip_item_effect_number_3=0;

tyrano.plugin.kag.variable.tf.item_number_array =[];
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];




//パラメータとエフェクトナンバー、所有数を抽出
tyrano.plugin.kag.variable.tf.item_number_array= this.kag.stat.f["equip_item_list"].map(function(x) {return x.number})
tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.parameter_3})
tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["equip_item_list"].map(function(x) {return x.effect_3_number})



	for(a=1;a<35;a++){
	
	  if(tyrano.plugin.kag.variable.tf.choice_number==a){
	
         this.kag.stat.f["equip_item_stock"][a]-=1;	

	       if(tyrano.plugin.kag.variable.tf.item_parameter_3[a]==1){
	    	this.kag.stat.f["irain_charm"]+=tyrano.plugin.kag.variable.tf.item_effect_number_3[a];	    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_2[a]==1){
	    	this.kag.stat.f["irain_brain"]+=tyrano.plugin.kag.variable.tf.item_effect_number_2[a];		    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_1[a]==1){
	    	this.kag.stat.f["irain_tec"]+=tyrano.plugin.kag.variable.tf.item_effect_number_1[a];    		    	
	       }
           
	       if(tyrano.plugin.kag.variable.tf.equip_item_change_2!=1){
	    	this.kag.stat.f["equip_item_current"] = a;
	       }else{
	       this.kag.stat.f["equip_item_current_2"] = a;		
	       }
	    
	   
	    
	    
	    	
	  }
	
	}




[endscript]





[endmacro]


[macro name="equip_item_shoki"]
[free name="equip" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.equip_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.equip_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]
[endmacro]

[macro name="other_item_shoki"]
[free name="other" layer=2]
[iscript]
tyrano.plugin.kag.variable.tf.other_item_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
tyrano.plugin.kag.variable.tf.other_shori_no=[
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
[endscript]
[endmacro]



;---------
[macro name="item_use_shori"]

[iscript]

var item_stock =[];
tyrano.plugin.kag.variable.tf.item_number =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_1 =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_2 =0;
 tyrano.plugin.kag.variable.tf.other_item_parameter_3 =0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_1=0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_2=0;
 tyrano.plugin.kag.variable.tf.other_item_effect_number_3=0;

tyrano.plugin.kag.variable.tf.item_number_array =[];
tyrano.plugin.kag.variable.tf.item_parameter_1=[];
tyrano.plugin.kag.variable.tf.item_parameter_2=[];
tyrano.plugin.kag.variable.tf.item_parameter_3=[];

tyrano.plugin.kag.variable.tf.item_effect_number_1=[];
tyrano.plugin.kag.variable.tf.item_effect_number_2=[];
tyrano.plugin.kag.variable.tf.item_effect_number_3=[];




//パラメータとエフェクトナンバー、所有数を抽出
tyrano.plugin.kag.variable.tf.item_number_array= this.kag.stat.f["other_item_list"].map(function(x) {return x.number})
tyrano.plugin.kag.variable.tf.item_parameter_1= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_1})
tyrano.plugin.kag.variable.tf.item_parameter_2= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_2})
tyrano.plugin.kag.variable.tf.item_parameter_3= this.kag.stat.f["other_item_list"].map(function(x) {return x.parameter_3})
tyrano.plugin.kag.variable.tf.item_effect_number_1= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_1_number})
tyrano.plugin.kag.variable.tf.item_effect_number_2= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_2_number})
tyrano.plugin.kag.variable.tf.item_effect_number_3= this.kag.stat.f["other_item_list"].map(function(x) {return x.effect_3_number})



	for(a=1;a<31;a++){
	
	  if(tyrano.plugin.kag.variable.tf.choice_number==a){
	
         this.kag.stat.f["other_item_stock"][a]-=1;	

	       if(tyrano.plugin.kag.variable.tf.item_parameter_3[a]==1){
	    	this.kag.stat.f["irain_charm"]+=tyrano.plugin.kag.variable.tf.item_effect_number_3[a];	    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_2[a]==1){
	    	this.kag.stat.f["irain_brain"]+=tyrano.plugin.kag.variable.tf.item_effect_number_2[a];		    		    	
	       }
	       if(tyrano.plugin.kag.variable.tf.item_parameter_1[a]==1){
	    	this.kag.stat.f["irain_tec"]+=tyrano.plugin.kag.variable.tf.item_effect_number_1[a];    		    	
	       }
           

	    
	   
	    
	    
	    	
	  }
	
	}




[endscript]





[endmacro]

[macro name="taikichu"]
[if exp="f.siken_taiki==1"]
[message_settei_ad]
#&f.name
「休んでろって言われたよね・・・」[w]
[message_kakusu_ad]

#
[cm]
[clearfix]
[freeimage layer=2]
[freeimage layer=1]
[jump storage="status_macro.ks" target=*status]
[endif]
[endmacro]










[return]