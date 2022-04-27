*kekka
[cm]

[eval exp="tf.kuji_kaisu=tf.kuji_kaisu-1"]
[eval exp="f.other_item_stock[15]=f.other_item_stock[15]-1"]

[eval exp="tf.hazure=0"]
[eval exp="tf.item=0"]
[live2d_motion name="garapon" mtn="Scene1"]
[playse storage="garagara_koukaonlabo.ogg"]
[fadeoutse time=3000]
[iscript]


       var hazure=0;
       var item=0;
       
   

switch(tf.kuji_random){
	case 1:
		item = 1;
		break;
    case 2:
		item = 1;
		break;
	case 3:
		item = 1;
		break;
	case 4:
		hazure = 1;
		break;
	case 5:
		item = 1;
		break;
	case 6:
		hazure = 1;
		break;
	case 7:
		hazure = 1;
		break;
	case 8:
		item = 1;
		break;
	case 9:
		hazure = 1;
		break;
	case 10:
		hazure = 1;
		break;

	default:
		item = 1;
	
}

  	   tf.hazure = hazure
       tf.item = item
	

[endscript]


[eval exp="f.item_7=0"]
[eval exp="f.item_8=0"]
[eval exp="f.item_9=0"]


[eval exp="f.item_1_moji='キャラメル'"]
[eval exp="f.item_2_moji='ガードゼロ'"]
[eval exp="f.item_3_moji='プロテイン'"]
[eval exp="f.item_4_moji='メロメロ香水'"]
[eval exp="f.item_5_moji='サバイバル読本'"]
[eval exp="f.item_6_moji='くじ引き券'"]

[image layer=3 visible=true page=fore storage="siro.jpg" name=siro x=0 y=0 time=1500]

[free name="under" layer=2]
[live2d_fadeout time=500]
[live2d_delete_all]

[free name="kaisu" layer=3]
[image layer=1 visible=true page=fore storage="siro.jpg" name=siro x=0 y=0]
[free name="siro" layer=3]


[if exp="tf.hazure==1"]
*hazure
[image layer=2 visible=true page=fore storage="sirodama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]


[jump target=*hazure_kekka]
[endif]







[iscript]
tf.item_random = Math.floor( Math.random() * 6) + 1
[endscript]

[if exp="tf.item_random==1"]
[image layer=2  visible=true  page=fore storage="akadama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]


[elsif exp="tf.item_random==2"]
[image layer=2 visible=true page=fore storage="aodama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]

[elsif exp="tf.item_random==3"]
[image layer=2 visible=true page=fore storage="midoridama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[elsif exp="tf.item_random==4"]
[image layer=2 visible=true page=fore storage="kiirodama.png" name=aka x=380 y=-100][anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]

[elsif exp="tf.item_random==5"]
[image layer=2 visible=true page=fore storage="pinkdama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[elsif exp="tf.item_random==6"]
[image layer=2 visible=true page=fore storage="kurodama.png" name=aka x=380 y=-100]
[anim name="aka" top="+=400" time=100]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]
[anim name="aka" top="-=200" time=200]
[anim name="aka" top="+=200" time=150]

[else]
[endif]




*hazure_kekka
[free name=aka layer=2 time=1000]
[free name=siro layer=1 time=1000]


[if exp="tf.item==1"]
[clearstack]
[playse storage="atari_koukaonlabo.ogg"]
[r]「おめでとう！景品はこれだね」[l][cm]
[jump target=*item]

[endif]

*hazure
[if exp="tf.hazure==1"]

[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[r]「残念だったね。また挑戦しておくれ」
[l][cm]
[jump target=*end]

[endif]








*end


[if exp="tf.kuji_kaisu==0"]
[jump target=*kujibiki_owari]
[else]
[jump storage="scenario_2/mini_game/kujibiki.ks" target=*start1]
[endif]

*item

[if exp="tf.item_random==1"]

[r]「[emb exp="f.item_1_moji"]」
[eval exp="f.battle_item_stock[1]=f.battle_item_stock[1]+1"]

[elsif exp="tf.item_random==2"]

[r]「[emb exp="f.item_2_moji"]」
[eval exp="f.battle_item_stock[5]=f.battle_item_stock[5]+1"]

[elsif exp="tf.item_random==3"]

[r]「[emb exp="f.item_3_moji"]」
[eval exp="f.other_item_stock[6]=f.other_item_stock[6]+1"]

[elsif exp="tf.item_random==4"]

[r]「[emb exp="f.item_4_moji"]」
[eval exp="f.other_item_stock[7]=f.other_item_stock[7]+1"]

[elsif exp="tf.item_random==5"]

[r]「[emb exp="f.item_5_moji"]」
[eval exp="f.other_item_stock[9]=f.other_item_stock[9]+1"]

[else]


[r]「[emb exp="f.item_6_moji"]」
[eval exp="f.other_item_stock[15]=f.other_item_stock[15]+1"]
[endif]
を手に入れた！[l][cm]
[jump target=*end]

[s]
*kujibiki_owari

[message_settei_ad]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[message_settei_ad]
;[eval exp="f.other_item_stock[15]=tf.kuji_kaisu"]
[jump storage="scenario_2/mini_game/curnival_mini_game.ks" target=*modoru]


