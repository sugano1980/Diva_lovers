
[macro name="map_irain_hyouji"]
[call storage="scenario_2/irain_icon_data.ks"]

*live2d_hyouji

;live2d表示;
;王とクレール

[iscript]

var equip_len = f.irain_icon.length;

for(i=1;i<equip_len;i++){

	if(this.kag.stat.f["equip_item_current"]==i){
	
    this.kag.stat.f["place_icon"] =this.kag.stat.f["irain_icon"][i].storage;
	
}

	if(this.kag.stat.f["equip_item_current_2"]==i){

	this.kag.stat.f["place_icon_2"] =this.kag.stat.f["irain_icon"][i].storage;
}


}


[endscript]



[if exp="f.place_creru_sakaba==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=190"]
[eval exp="tf.map_x=571"]


[elsif exp="f.place_creru_out==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=430"]
[eval exp="tf.map_x=320"]


[elsif exp="f.place_creru_oukyu==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=20"]
[eval exp="tf.map_x=350"]


[elsif exp="f.place_creru_hunsui==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=220"]
[eval exp="tf.map_x=330"]


[elsif exp="f.place_creru_uradoori==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=171"]
[eval exp="tf.map_x=171"]



[elsif exp="f.place_creru_honbu==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=330"]
[eval exp="tf.map_x=560"]


[elsif exp="f.place_creru_gaia==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=330"]
[eval exp="tf.map_x=20"]

[elsif exp="f.lioness_house==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=250"]
[eval exp="tf.map_x=240"]

[elsif exp="f.sitateya==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=200"]
[eval exp="tf.map_x=450"]

[elsif exp="f.event_main_5_1==1"]
;[eval exp="f.map=0"]
[eval exp="tf.map_y=171"]
[eval exp="tf.map_x=171"]

[elsif exp="f.event_main_5==1"]
;[eval exp="f.map=0"]
[eval exp="tf.map_y=220"]
[eval exp="tf.map_x=330"]

[endif]

;王と周辺
[if exp="f.place_keiko==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=200"]
[eval exp="tf.map_x=300"]

[elsif exp="f.place_outo==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=52"]
[eval exp="tf.map_x=71"]

[elsif exp="f.place_sharomu==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=358"]
[eval exp="tf.map_x=515"]
[endif]

;船

[if exp="f.place_hune_shokudou==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=150"]
[eval exp="tf.map_x=190"]

[elsif exp="f.place_hune_kanpan==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=30"]
[eval exp="tf.map_x=355"]

[elsif exp="f.place_hune_jisitu==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=300"]
[eval exp="tf.map_x=560"]
[elsif exp="f.place_hune_nakama==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=430"]
[eval exp="tf.map_x=340"]
[elsif exp="f.place_hune_rouka==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=180"]
[eval exp="tf.map_x=420"]
[endif]

;ウェスタ
[if exp="f.place_w_toshokan==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=50"]
[eval exp="tf.map_x=90"]

[elsif exp="f.place_w_honya==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=130"]
[eval exp="tf.map_x=330"]

[elsif exp="f.place_w_yadoya==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=270"]
[eval exp="tf.map_x=660"]

[elsif exp="f.place_w_kouen==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=350"]
[eval exp="tf.map_x=340"]

[elsif exp="f.place_w_kusuri==1"]
[eval exp="f.map=0"]
[eval exp="tf.map_y=30"]
[eval exp="tf.map_x=500"]
[endif]

[if exp="f.equip_item_current==11||f.equip_item_current==13"]
[image layer=3 page=fore storage="irain_icon/hair_back_wave.png" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]
[elsif exp="f.equip_item_current==15"]
[image layer=3 page=fore storage="irain_icon/hair_gold_2.png" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]
[endif]

[image layer=3 page=fore storage="&f.place_icon_2" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]
[image layer=3 page=fore storage="&f.place_icon" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]

[if exp="f.equip_item_current_2==20"]
[image layer=3 page=fore storage="irain_icon/body_odori_hair.png" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]
[endif]




;仲間表示
[if exp="f.disc_num>2&&f.friend>0"]
[if exp="f.friend==1"]
[eval exp="f.friend_icon='mini_chara/rans_mini.png'"]
[elsif exp="f.friend==2"]
[eval exp="f.friend_icon='mini_chara/lion_mini.png'"]
[elsif exp="f.friend==3"]
[eval exp="f.friend_icon='mini_chara/kra_mini.png'"]
[endif]
[eval exp="tf.map_x=tf.map_x-41"]
[image layer=3 page=fore storage="&f.friend_icon" name="icon" width="71" height="95" x=&tf.map_x y=&tf.map_y]
[endif]

[if exp="f.lunch_pack==1"]
[eval exp="tf.map_y=tf.map_y+40"]
[eval exp="tf.map_x=tf.map_x+71"]
[image layer=3 page=fore storage="lunch_pack.png" name="icon" x=&tf.map_x y=&tf.map_y]
[endif]

[endmacro]

[return]
