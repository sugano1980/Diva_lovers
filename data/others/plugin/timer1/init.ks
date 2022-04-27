; タイマープラグイン　v1.0
; 作者:なるとりっく
; http://buddycollection.web.fc2.com/

[preload storage="data/others/plugin/timer/image/timer.png"]
[preload storage="data/others/plugin/timer/image/0.png"]
[preload storage="data/others/plugin/timer/image/1.png"]
[preload storage="data/others/plugin/timer/image/2.png"]
[preload storage="data/others/plugin/timer/image/3.png"]
[preload storage="data/others/plugin/timer/image/4.png"]
[preload storage="data/others/plugin/timer/image/5.png"]
[preload storage="data/others/plugin/timer/image/6.png"]
[preload storage="data/others/plugin/timer/image/7.png"]
[preload storage="data/others/plugin/timer/image/8.png"]
[preload storage="data/others/plugin/timer/image/9.png"]

[layopt layer="2" visible=true]

[iscript]
	tf.countdownTimer1 = {
		countDown:function(timeLimit){
			var today=new Date();
			var min=Math.floor(((timeLimit-today)%(24*60*60*1000))/(60*1000))%60;
			var sec=Math.floor(((timeLimit-today)%(24*60*60*1000))/1000)%60%60;
			var me=this;

			if( ( timeLimit - today ) > 0 ){
				var displayMin = this.addZero(min);
				var displaySeconds = this.addZero(sec);
				var minuts1 = displayMin.substring(0,1);
				var minuts2 = displayMin.substring(1,2);
				var seconds1 = displaySeconds.substring(0,1);
				var seconds2 = displaySeconds.substring(1,2);
				var $minuts1 = $(".minuts1");
				var $minuts2 = $(".minuts2");
				var $seconds1 = $(".seconds1");
				var $seconds2 = $(".seconds2");

				// タイマーの画像が画面上から消えた場合は終了
				if ($minuts1[0] == undefined || $minuts2[0] == undefined || $seconds1[0] == undefined || $seconds2[0] == undefined) {
					return;
				}
				var path = "./data/others/plugin/timer/image/"
  				$minuts1.attr('src', path + minuts1 + '.png');
  				$minuts2.attr('src', path + minuts2 + '.png');
  				$seconds1.attr('src', path + seconds1 + '.png');
  				if ($seconds2.attr('src') != path + seconds2 + '.png') {
  					$seconds2.attr('src', path + seconds2 + '.png');
  				}

				tf.tid1 = setTimeout( function(){
					me.countDown(timeLimit);
				},10);
			}
			else{

				// タイムアップ時
				if (tf.timeupStorage1) {
					TYRANO.kag.ftag.startTag("jump", {
						"storage": tf.timeupStorage1,
						"target": "timeup",
						"countpage": true
					});
					return;
				}
				
			}
		},
		addZero:function(num){ 
			return ('0'+num).slice(-2);
		}
	}
[endscript]


;タイマーセット
;タイマーの制限時間、段々画面が赤くなる演出の開始時間、タイムアップ時の飛び先等をセットする
;
;example 
;[timer_set minuts=1 seconds=0　x=100 y=200 timeupstorage=minigame/example.ks]
;上記の設定をすると、
;タイムアップは1分
;画面がだんだん赤くなる演出は残り1分になってから
;タイムアップ時はminigame/example.ksの*timeupに飛ぶ
[macro name="timer_set1"]
	[iscript]
		var x = Number(TYRANO.kag.stat.mp.x);
		var y = Number(TYRANO.kag.stat.mp.y);


		// タイマーの背景画像の位置
		tf.timer_x1 = x
		tf.timer_y1 = y

		// タイマーの分画像の位置
		tf.minuts1_x1 = x + 7
		tf.minuts1_y1 = y + 7
		tf.minuts2_x1 = x + 30
		tf.minuts2_y1 = y + 7

		// タイマーの秒画像の位置
		tf.seconds1_x1 = x + 65
		tf.seconds1_y1 = y + 7
		tf.seconds2_x1 = x + 88
		tf.seconds2_y1 = y + 7
	[endscript]
	[image name=timer1 layer=2 folder=others/plugin/timer/image storage=timer.png x=&tf.timer_x1 y=&tf.timer_y1]
	[image name=minuts1,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.minuts1_x1 y=&tf.minuts1_y1]
	[image name=minuts2,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.minuts2_x1 y=&tf.minuts2_y1]
	[image name=seconds1,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.seconds1_x1 y=&tf.seconds1_y1]
	[image name=seconds2,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.seconds2_x1 y=&tf.seconds2_y1]
	[iscript]

		// 制限時間設定。デフォルトは3分
		tf.timeLimitMinuts1 = 3;
		tf.timeLimitSeconds1 = 0;
		if (TYRANO.kag.stat.mp.minuts) {
			tf.timeLimitMinuts1 = Number(TYRANO.kag.stat.mp.minuts);
		}
		if (TYRANO.kag.stat.mp.seconds) {
			tf.timeLimitSeconds1 = Number(TYRANO.kag.stat.mp.seconds);
		}

		// タイマーの画像設定
		var addZero = function(num){ 
			return ('0'+num).slice(-2);
		}
		var displayMin = addZero(tf.timeLimitMinuts1);
		var displaySeconds = addZero(tf.timeLimitSeconds1);
		var minuts1 = displayMin.substring(0,1);
		var minuts2 = displayMin.substring(1,2);
		var seconds1 = displaySeconds.substring(0,1);
		var seconds2 = displaySeconds.substring(1,2);
		var $minuts1 = $(".minuts1");
		var $minuts2 = $(".minuts2");
		var $seconds1 = $(".seconds1");
		var $seconds2 = $(".seconds2");
		var path = "./data/others/plugin/timer/image/"
		$minuts1.attr('src', path + minuts1 + '.png');
		$minuts2.attr('src', path + minuts2 + '.png');
		$seconds1.attr('src', path + seconds1 + '.png');
		$seconds2.attr('src', path + seconds2 + '.png');

		;タイムアップ時の飛び先
		tf.timeupStorage1 = TYRANO.kag.stat.mp.timeupstorage;

	[endscript]
[endmacro]


;タイマースタート
[macro name="timer_start1"]
	[iscript]

		tf.timeLimit1 = new Date();
		tf.timeLimit1.setMinutes(tf.timeLimit1.getMinutes() + tf.timeLimitMinuts1);
		tf.timeLimit1.setSeconds(tf.timeLimit1.getSeconds() + tf.timeLimitSeconds1);

		// タイマースタート
		tf.countdownTimer1.countDown(tf.timeLimit1);

	[endscript]
[endmacro]


;タイマーストップ
[macro name="timer_stop1"]
	[iscript]
		clearTimeout(tf.tid1);
		tf.tid1 = null;

		// 経過時間計算
		var today=new Date();
		tf.remainingMinuts1=Math.floor(((tf.timeLimit1-today)%(24*60*60*1000))/(60*1000))%60;
		tf.remainingSeconds1=Math.floor(((tf.timeLimit1-today)%(24*60*60*1000))/1000)%60%60;

	[endscript]
[endmacro]


;タイマー再開
[macro name="timer_resume1"]
	[iscript]
		tf.timeLimit1 = new Date();
		tf.timeLimit1.setMinutes(tf.timeLimit1.getMinutes() + tf.remainingMinuts1);
		tf.timeLimit.1setSeconds(tf.timeLimit1.getSeconds() + tf.remainingSeconds1);

		// タイマースタート
		tf.countdownTimer1.countDown(tf.timeLimit1);
	[endscript]
[endmacro]


;タイマー削除
[macro name="timer_delete1"]
	[free layer=2 name=timer1]
	[eval exp="clearTimeout(tf.tid1);"]
[endmacro]

[return]