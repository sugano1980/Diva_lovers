
[call storage="scenario_2/uranai/kouryaku_data.ks"]

;テストコード
;[eval exp="tf.k_friend=3"]
;[eval exp="tf.k_image=0"]
;[eval exp="f.event_war_kra_sumi=1"]
;[eval exp="f.event_main_14_days=-1"]
;[eval exp="f.event_main_15_days=4"]
[eval exp="f.event_epi5_rans_ok=10"]
[eval exp="f.event_war_rans=1"]

;ここまで



[bg storage="black.png" time=50]
[cm]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]

*first_re
[eval exp="tf.inside=0"]
[eval exp="tf.inside_2=0"]
[eval exp="tf.time_2=0"]

*first
[message_kakusu_ad]
[eval exp="tf.kou_x=0"]
[eval exp="tf.kou_y=0"]
[eval exp="tf.moji_len=0"]
[eval exp="tf.moji_lenlen=0"]
[eval exp="tf.k_size=0"]
[eval exp="tf.moji_1=[]"]
[eval exp="tf.moji_2=[]"]
[eval exp="tf.moji_3=[]"]
[eval exp="tf.moji_4=[]"]
[eval exp="tf.moji_len_array=0"]
[eval exp="tf.moji=0"]
[eval exp="tf.hyouji_kaisuu=0"]





[iscript]

tf.kou_x = 100;
tf.kou_y = 40;

tf.moji_1=[];
tf.moji_2=[];
tf.moji_3=[];
tf.moji_4=[];





if(tf.inside===0){


    
    //外側
if(tf.k_friend===1){
tf.moji_len = f.rans_kouryaku[0].length;
tf.moji_lenlen = tf.moji_len;
}else if(tf.k_friend===2){
tf.moji_len = f.lion_kouryaku[0].length;
tf.moji_lenlen = tf.moji_len;
}else if(tf.k_friend===3){
tf.moji_len = f.kra_kouryaku[0].length;
tf.moji_lenlen = tf.moji_len;
}else if(tf.k_friend===4){
tf.moji_len = f.glif_kouryaku[0].length;
tf.moji_lenlen = tf.moji_len;
}





}else if(tf.inside>0){

       //内側////////////////////////////
   tf.inside_2 = tf.inside-1;

    if(tf.k_friend===1){
    tf.moji_len_array = f.rans_kouryaku_inside[tf.inside_2].length;
    tf.moji_lenlen = tf.moji_len_array;
    }else if(tf.k_friend===2){
    tf.moji_len_array = f.lion_kouryaku_inside[tf.inside_2].length;
    tf.moji_lenlen = tf.moji_len_array;
    }else if(tf.k_friend===3){
    tf.moji_len_array = f.kra_kouryaku_inside[tf.inside_2].length;
    tf.moji_lenlen = tf.moji_len_array;
    }else if(tf.k_friend===4){
    tf.moji_len_array = f.glif_kouryaku_inside[tf.inside_2].length;
    tf.moji_lenlen = tf.moji_len_array;
    }


///////////////////////////////////////////////////

}


if(tf.k_friend===1){
    tf.k_image=f.rans_image[0];


    for(i=0;i<tf.moji_lenlen;i++){

        if(tf.inside===0){
        tf.moji_1.push(f.rans_kouryaku[0][i])
        tf.moji_2.push(f.rans_kouryaku[1][i])
        tf.moji_3.push(f.rans_kouryaku[2][i])
        tf.moji_4.push(f.rans_kouryaku[3][i])

        }else if(tf.inside>0){
            var lolo = tf.inside-1;
            tf.moji_1.push(f.rans_kouryaku_inside[lolo][i])
            tf.moji_2　=[];

        }
 

    }



}else if(tf.k_friend===2){
     tf.k_image=f.lion_image[0];


    for(i=0;i<tf.moji_lenlen;i++){

        if(tf.inside===0){
        tf.moji_1.push(f.lion_kouryaku[0][i])
        tf.moji_2.push(f.lion_kouryaku[1][i])
        tf.moji_3.push(f.lion_kouryaku[2][i])
        

        }else if(tf.inside>0){
            var lolo = tf.inside-1;
            tf.moji_1.push(f.lion_kouryaku_inside[lolo][i])
            tf.moji_2　=[];

        }
 

    }



}else if(tf.k_friend===3){
     tf.k_image=f.kra_image[0];

     for(i=0;i<tf.moji_lenlen;i++){

        if(tf.inside===0){
        tf.moji_1.push(f.kra_kouryaku[0][i])
        tf.moji_2.push(f.kra_kouryaku[1][i])
        tf.moji_3.push(f.kra_kouryaku[2][i])
        tf.moji_4.push(f.kra_kouryaku[3][i])

        }else if(tf.inside>0){
            var lolo = tf.inside-1;
            tf.moji_1.push(f.kra_kouryaku_inside[lolo][i])
            tf.moji_2　=[];

        }
 

    }

}else if(tf.k_friend===4){
     tf.k_image=f.glif_image[0];

     for(i=0;i<tf.moji_lenlen;i++){

        if(tf.inside===0){
        tf.moji_1.push(f.glif_kouryaku[0][i])
        tf.moji_2.push(f.glif_kouryaku[1][i])

        }else if(tf.inside>0){
            var lolo = tf.inside-1;
            tf.moji_1.push(f.glif_kouryaku_inside[lolo][i])
            tf.moji_2　=[];

        }
 

    }



}



[endscript]

;内側表示の場合
;[if exp="tf.inside>0"]
;[jump target=*moji]
;[endif]




[eval exp="tf.haikei_image='kouryaku/kouryaku_haikei.png'"]


;背景表示
[eval exp="tf.kouryaku_h_kaisu=0"]
[eval exp="tf.kou_no_x=tf.kou_x+260"]
*kouryaku_h


[if exp="tf.k_friend==1"]
[chara_kouryaku_hantei_rans]
[endif]
[if exp="tf.k_friend==2"]
[chara_kouryaku_hantei_lion]
[endif]
[if exp="tf.k_friend==3"]
[chara_kouryaku_hantei_kra]
[endif]
[if exp="tf.k_friend==4"]
[chara_kouryaku_hantei_glif]
[endif]


[eval exp="tf.kou_no_y=tf.kou_y+13"]
;まだヒント入手じゃない
[if exp="f.rock_off==1"]
[eval exp="tf.haikei_image='kouryaku/kouryaku_haikei_no.png'"]
[image storage="kouryaku/kagi.png" layer="3" page="fore" visible="true" x="&tf.kou_no_x" y="&tf.kou_no_y"]
[elsif exp="tf.rock_off==0"]
;-------------
[if exp="tf.inside>0"]
[eval exp="tf.target ='*return_first'"]
[elsif exp="tf.inside==0"]
[eval exp="tf.target =tf.inside_d[tf.kouryaku_h_kaisu]"]
[endif]
;-----------------
[button graphic="button/toumeibotan.png" storage="" target=&tf.target name="" x="&tf.kou_x" y="&tf.kou_y" width="600" height="100" fix="" clickse="" enterse="" enterimg=""]

[elsif exp="tf.rock_off==2"]
[eval exp="tf.kou_huka_x=tf.kou_no_x-100"]
[eval exp="tf.kou_huka_y=tf.kou_no_y-35"]
[image storage="clear.png" layer="3" page="fore" visible="true" x="&tf.kou_huka_x" y="&tf.kou_huka_y"]
[elsif exp="tf.rock_off==-1"]
[eval exp="tf.haikei_image='kouryaku/kouryaku_haikei_no.png'"]
[endif]

[image storage=&tf.haikei_image layer="1" page="fore" visible="true" x="&tf.kou_x" y=&tf.kou_y]






;繰り返し処理
[if exp="tf.kouryaku_h_kaisu<4"]
[eval exp="tf.kouryaku_h_kaisu=tf.kouryaku_h_kaisu+1"]
[eval exp="tf.kou_y=tf.kou_y+140"]
[jump target=*kouryaku_h]
[endif]


*moji

;もじ表示
[iscript]
if(tf.inside===4){
tf.kou_y = 195+135+135+25;
tf.kou_x = 110;
}else if(tf.inside===3){
tf.kou_y = 195+135+25;
tf.kou_x = 110;
}else if(tf.inside===2){
tf.kou_y = 195;
tf.kou_x = 110;
}else{
tf.kou_y = 60;
tf.kou_x = 120;
}

if(tf.moji_lenlen===1&&tf.inside>0){
tf.k_size=18;
}else if(tf.moji_lenlen===2&&tf.inside>0){
tf.kou_y = 35
tf.k_size=17;
}else if(tf.moji_lenlen===4&&tf.inside>0){
tf.k_size=16;
}else{
tf.k_size= 23;

}


[endscript]


;配列ナンバ
[eval exp="tf.hyouji_no=0"]



[if exp="tf.inside>0"]
;内側の場合
[eval exp="tf.hyouji_kaisu=tf.moji_len_array"]
[else]
;外側の場合
[eval exp="tf.hyouji_kaisu=tf.moji_len"]
[endif]



*kaeta

[if exp="tf.time_2==0"]
[eval exp="tf.moji = tf.moji_1[tf.hyouji_no]"]
[elsif exp="tf.time_2==1"]
[eval exp="tf.moji = tf.moji_2[tf.hyouji_no]"]
[elsif exp="tf.time_2==2"]
[eval exp="tf.moji = tf.moji_3[tf.hyouji_no]"]
[elsif exp="tf.time_2==3"]
[eval exp="tf.moji = tf.moji_4[tf.hyouji_no]"]
[endif]

;２回目が章で３回目が章めい４回目がお題,内側の場合とサイズ分け
[if exp="tf.hyouji_kaisu==3"]
;-------------
[if exp="tf.inside>0"]
[space_confirm]
[size_confirm]
[elsif exp="tf.inside==0"]
[eval exp="tf.k_size=18"]
[eval exp="tf.kou_x=tf.kou_x+120"]
[eval exp="tf.kou_y=tf.kou_y-8"]
[endif]
;---------------

[elsif exp="tf.hyouji_kaisu==2"]

;---------------------------
[if exp="tf.inside>0"]
[space_confirm]
[elsif exp="tf.inside==0"]
[eval exp="tf.kou_y=tf.kou_y+18"]
[endif]
;------------------------------

[elsif exp="tf.hyouji_kaisu==1"]

;---------------------------
[if exp="tf.inside>0"]
[space_confirm]
[elsif exp="tf.inside==0"]
[eval exp="tf.kou_x=tf.kou_x+160"]
[eval exp="tf.kou_y=tf.kou_y-5"]
[eval exp="tf.k_size=26"]
[endif]
;----------------------

[endif]

;段階
;time_2=1,2段階
;time_2=2,3段階
;time_2=3,4段階
[ptext layer="2" page="fore" text=&tf.moji x=&tf.kou_x y=&tf.kou_y size=&tf.k_size name=&tf.text_m[tf.time_2] face="makinas" color="#8b0000" bold="" edge="gray"]


;文章内容四回繰り返し
[if exp="tf.hyouji_kaisu>0"]

[eval exp="tf.hyouji_kaisu= tf.hyouji_kaisu-1"]
[eval exp="tf.hyouji_no=tf.hyouji_no+1"]
[jump target=*kaeta]

;段階変更
[elsif exp="tf.hyouji_kaisu==0&&tf.time_2==0"]

[eval exp="tf.time_2=1"]
[eval exp="tf.moji = tf.moji_2[tf.hyouji_no]"]
[eval exp="tf.hyouji_kaisu=tf.moji_lenlen"]
[eval exp="tf.hyouji_no=0"]
[eval exp="tf.kou_x=120"]
[eval exp="tf.kou_y=tf.kou_y+135"]
[eval exp="tf.k_size=23"]
[jump target=*kaeta]


[elsif exp="tf.hyouji_kaisu==0&&tf.time_2==1"]

[eval exp="tf.time_2=2"]
[eval exp="tf.moji = tf.moji_3[tf.hyouji_no]"]
[eval exp="tf.hyouji_kaisu=tf.moji_lenlen"]
[eval exp="tf.hyouji_no=0"]
[eval exp="tf.kou_x=120"]
[eval exp="tf.kou_y=tf.kou_y+135"]
[eval exp="tf.k_size=23"]
[jump target=*kaeta]

[elsif exp="tf.hyouji_kaisu==0&&tf.time_2==2"]

[eval exp="tf.time_2=3"]
[eval exp="tf.moji = tf.moji_4[tf.hyouji_no]"]
[eval exp="tf.hyouji_kaisu=tf.moji_lenlen"]
[eval exp="tf.hyouji_no=0"]
[eval exp="tf.kou_x=120"]
[eval exp="tf.kou_y=tf.kou_y+135"]
[eval exp="tf.k_size=23"]
[jump target=*kaeta]



;[else]

;[jump target=*kaeta]

[endif]

;時期判定により、鍵をつける、スミを表示する
;ランスロット





[clearstack]
[button graphic="button/menu_button_modoru.jpg" target="*modoru" name="" x="680" y="10" fix="true"]

[s]


*inside_1
[cm]
[clearfix]
[freeimage layer=1]
[free name="mojimoji_1" layer=2]
[eval exp="tf.inside=1"]
[eval exp="tf.time_2=0"]
[jump target=*first]


*inside_2
[cm]
[clearfix]
[freeimage layer=1]
[free name="mojimoji_2" layer=2]
[eval exp="tf.inside=2"]
[eval exp="tf.time_2=0"]
[jump target=*first]

*inside_3
[cm]
[clearfix]
[freeimage layer=1]
[free name="mojimoji_3" layer=2]
[eval exp="tf.inside=3"]
[eval exp="tf.time_2=0"]
[jump target=*first]

*inside_4
[cm]
[clearfix]
[freeimage layer=1]
[free name="mojimoji_4" layer=2]
[eval exp="tf.inside=4"]
[eval exp="tf.time_2=0"]
[jump target=*first]


*return_first
[cm]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[jump target=*first_re]


*modoru
[cm]
[message_settei_ad]
[clearfix]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[clearstack]

[if exp="tf.k_friend==1"]
[eval exp="tf.k_friend=0"]
[jump storage="scenario_2/uranai/koukando.ks" target=*rans]
[elsif exp="tf.k_friend==2"]
[eval exp="tf.k_friend=0"]
[jump storage="scenario_2/uranai/koukando.ks" target=*rai]
[elsif exp="tf.k_friend==3"]
[eval exp="tf.k_friend=0"]
[jump storage="scenario_2/uranai/koukando.ks" target=*kra]
[elsif exp="tf.k_friend==4"]
[eval exp="tf.k_friend=0"]
[jump storage="scenario_2/uranai/koukando.ks" target=*glif]
[endif]
