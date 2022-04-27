*kekka
[anim name="kuji" top="-=600" time=1000]
[cm]

[eval exp="tf.hazure=0"]
[eval exp="tf.item=0"]


[iscript]
tf.kuji_random = Math.floor( Math.random() * 5) + 1
[endscript]

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
		hazure = 1;
		break;
	case 4:
		hazure = 1;
		break;
	case 5:
		item = 1;
		break;
	case 6:
		item = 1;
		break;
	case 7:
		item = 1;
		break;
	case 8:
		item = 1;
		break;
	case 9:
		hazure = 1;
		break;
	case 10:
		item = 1;
		break;

	default:
		hazure = 1;
	
}

  	   tf.hazure = hazure
       tf.item = item
	

[endscript]


[eval exp="f.item_7=0"]
[eval exp="f.item_8=0"]
[eval exp="f.item_9=0"]


[eval exp="f.item_7_moji='プロテイン'"]
[eval exp="f.item_8_moji='メロメロ香水'"]
[eval exp="f.item_9_moji='自己啓発本'"]


[if exp="tf.hazure==1"]
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[r]「残念だったね。また挑戦しておくれ」[l]
[jump target=*end]

[elsif exp="tf.item==1"]
[clearstack]
[playse storage="atari_koukaonlabo.ogg"]
[r]「おめでとう！景品はこれだね」[l][cm]
[jump target=*item]

[else]
[clearstack]
[playse storage="hazure_koukaonlabo.ogg"]
[r]「残念だったね。また挑戦しておくれ」[l]
[jump target=*end]

[endif]


*end

[eval exp="tf.kuji_kaisu=tf.kuji_kaisu-1"]
[free layer=3 name="kaisu"]
[ptext layer=3 page=fore visible="true" text="&tf.kuji_kaisu" name="kaisu" size=30 x=&tf.x_4 y=&tf.y_4]
[if exp="tf.kuji_kaisu==0"]
[s]
[else]
[anim name="kuji" top="+=600"]

[jump storage=mini_game/kujibiki.ks target=*start1]

[endif]

*item

[iscript]
tf.item_random = Math.floor( Math.random() * 3) + 1
[endscript]

[if exp="tf.item_random==1"]

[r]「[emb exp="f.item_7_moji"]」を手に入れた！
[eval exp="f.item_7=f.item_7+1"]

[elsif exp="tf.item_random==2"]

[r]「[emb exp="f.item_8_moji"]」を手に入れた！
[eval exp="f.item_8=f.item_8+1"]

[elsif exp="tf.item_random==3"]

[r]「[emb exp="f.item_9_moji"]」を手に入れた！
[eval exp="f.item_9=f.item_9+1"]

[else]

[r][r][r][r][r][r]
[r]「[emb exp="f.item_7_moji"]」を手に入れた！
[eval exp="f.item_7=f.item_7+1"]
[endif]

[jump target=*end]

[s]

