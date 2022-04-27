;disc3以降追加

[macro name="map_disc_tuika"]

[call storage="scenario_2/lunch_mode_macro.ks"]

;----ウェスタ編
[if exp="f.s_wesuta==1&&f.date_event_flag==1&&f.date_now!=1"]

[eval exp="tf.place_num=15"]
[eval exp="tf.map_x=190"]
[eval exp="tf.map_y=180"]
[if exp="f.sub_event_shokudou!=1"]
[chara_image_hantei_w]
[endif]

[eval exp="tf.place_num=16"]
[eval exp="tf.map_x=355"]
[eval exp="tf.map_y=30"]
[if exp="f.sub_event_kanpan!=1"]
[chara_image_hantei_w]
[endif]

[eval exp="tf.place_num=17"]
[eval exp="tf.map_x=420"]
[eval exp="tf.map_y=180"]
[if exp="f.sub_event_rouka!=1"]
[chara_image_hantei_w]
[endif]

[eval exp="tf.place_num=18"]
[eval exp="tf.map_x=340"]
[eval exp="tf.map_y=430"]
[if exp="f.sub_event_nakama!=1"]
[chara_image_hantei_w]
[endif]

;[eval exp="tf.place_num=19"]
;[eval exp="tf.map_x=340"]
;[eval exp="tf.map_y=430"]
;[if exp="f.sub_event_nakama!=1"]
;[chara_image_hantei_w]
;[endif]

;図書館
[eval exp="tf.place_num=20"]
[eval exp="tf.map_x=90"]
[eval exp="tf.map_y=50"]
[chara_image_hantei_w]

;本屋
[eval exp="tf.place_num=21"]
[eval exp="tf.map_x=330"]
[eval exp="tf.map_y=130"]
[chara_image_hantei_w]

;薬や
[eval exp="tf.place_num=22"]
[eval exp="tf.map_x=500"]
[eval exp="tf.map_y=30"]
[chara_image_hantei_w]

;食堂
[eval exp="tf.place_num=23"]
[eval exp="tf.map_x=560"]
[eval exp="tf.map_y=270"]
[chara_image_hantei_w]

;公園
[eval exp="tf.place_num=24"]
[eval exp="tf.map_x=340"]
[eval exp="tf.map_y=350"]
[chara_image_hantei_w]






[jump target=*owari]
[endif]

;------

[if exp="f.disc_num>2&&tf.map_2==1&&f.date_event_flag==1&&f.date_now!=1"]

[eval exp="tf.place_num=8"]
[eval exp="tf.map_x=300"]
[eval exp="tf.map_y=200"]
[if exp="f.main_event_keiko!=1&&f.sub_event_keiko!=1"]
[chara_image_hantei]
[endif]

[eval exp="tf.place_num=7"]
[eval exp="tf.map_x=515"]
[eval exp="tf.map_y=358"]
[if exp="f.main_event_sharomu!=1&&f.sub_event_sharomu!=1"]
[chara_image_hantei]
[endif]

[endif]


[if exp="f.disc_num>2&&f.map==1&&tf.map_2!=1&&f.date_event_flag==1&&f.date_now!=1"]

[eval exp="tf.place_num=0"]
[eval exp="tf.map_x=600"]
[eval exp="tf.map_y=310"]

[if exp="f.main_event_honbu!=1&&f.sub_event_honbu!=1"]
[chara_image_hantei]
[endif]

[eval exp="tf.place_num=1"]
[eval exp="tf.map_x=610"]
[eval exp="tf.map_y=200"]

[if exp="f.main_event_sakaba!=1&&f.sub_event_sakaba!=1"]
[chara_image_hantei]
[endif]

[eval exp="tf.place_num=2"]
[eval exp="tf.map_x=70"]
[eval exp="tf.map_y=300"]
[if exp="f.main_event_gaia!=1&&f.sub_event_gaia!=1"]
[chara_image_hantei]
[endif]


[eval exp="tf.place_num=3"]
[eval exp="tf.map_x=370"]
[eval exp="tf.map_y=220"]

[if exp="f.main_event_hunsui!=1&&f.sub_event_hunsui!=1"]
[chara_image_hantei]
[endif]

[eval exp="tf.place_num=4"]
[eval exp="tf.map_x=230"]
[eval exp="tf.map_y=180"]

[if exp="f.main_event_uradoori!=1&&f.sub_event_uradoori!=1"]
[chara_image_hantei]
[endif]

[eval exp="tf.place_num=5"]
[eval exp="tf.map_x=360"]
[eval exp="tf.map_y=450"]

[if exp="f.main_event_iriguti!=1&&f.sub_event_iriguti!=1"]
[chara_image_hantei]
[endif]


[eval exp="tf.place_num=6"]
[eval exp="tf.map_x=390"]
[eval exp="tf.map_y=40"]
[if exp="f.main_event_oukyu!=1&&f.sub_event_oukyu!=1"]
[chara_image_hantei]
[endif]

[lunch_event]

[endif]
*owari
[endmacro]
[return]