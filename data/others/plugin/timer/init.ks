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
	tf.countdownTimer = {
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

				tf.tid = setTimeout( function(){
					me.countDown(timeLimit);
				},10);
			}
			else{

				// タイムアップ時
				if (tf.timeupStorage) {
					TYRANO.kag.ftag.startTag("jump", {
						"storage": tf.timeupStorage,
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
[macro name="timer_set"]
	[iscript]
		var x = Number(TYRANO.kag.stat.mp.x);
		var y = Number(TYRANO.kag.stat.mp.y);

		// タイマーの背景画像の位置
		tf.timer_x = x
		tf.timer_y = y

		// タイマーの分画像の位置
		tf.minuts1_x = x + 7
		tf.minuts1_y = y + 7
		tf.minuts2_x = x + 30
		tf.minuts2_y = y + 7

		// タイマーの秒画像の位置
		tf.seconds1_x = x + 65
		tf.seconds1_y = y + 7
		tf.seconds2_x = x + 88
		tf.seconds2_y = y + 7
	[endscript]
	[image name=timer layer=2 folder=others/plugin/timer/image storage=timer.png x=&tf.timer_x y=&tf.timer_y]
	[image name=minuts1,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.minuts1_x y=&tf.minuts1_y]
	[image name=minuts2,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.minuts2_x y=&tf.minuts2_y]
	[image name=seconds1,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.seconds1_x y=&tf.seconds1_y]
	[image name=seconds2,timer layer=2 folder=others/plugin/timer/image storage=0.png x=&tf.seconds2_x y=&tf.seconds2_y]
	[iscript]

		// 制限時間設定。デフォルトは3分
		tf.timeLimitMinuts = 3;
		tf.timeLimitSeconds = 0;
		if (TYRANO.kag.stat.mp.minuts) {
			tf.timeLimitMinuts = Number(TYRANO.kag.stat.mp.minuts);
		}
		if (TYRANO.kag.stat.mp.seconds) {
			tf.timeLimitSeconds = Number(TYRANO.kag.stat.mp.seconds);
		}

		// タイマーの画像設定
		var addZero = function(num){ 
			return ('0'+num).slice(-2);
		}
		var displayMin = addZero(tf.timeLimitMinuts);
		var displaySeconds = addZero(tf.timeLimitSeconds);
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
		tf.timeupStorage = TYRANO.kag.stat.mp.timeupstorage;

	[endscript]
[endmacro]


;タイマースタート
[macro name="timer_start"]
	[iscript]

		tf.timeLimit = new Date();
		tf.timeLimit.setMinutes(tf.timeLimit.getMinutes() + tf.timeLimitMinuts);
		tf.timeLimit.setSeconds(tf.timeLimit.getSeconds() + tf.timeLimitSeconds);

		// タイマースタート
		tf.countdownTimer.countDown(tf.timeLimit);

	[endscript]
[endmacro]


;タイマーストップ
[macro name="timer_stop"]
	[iscript]
		clearTimeout(tf.tid);
		tf.tid = null;

		// 経過時間計算
		var today=new Date();
		tf.remainingMinuts=Math.floor(((tf.timeLimit-today)%(24*60*60*1000))/(60*1000))%60;
		tf.remainingSeconds=Math.floor(((tf.timeLimit-today)%(24*60*60*1000))/1000)%60%60;

	[endscript]
[endmacro]


;タイマー再開
[macro name="timer_resume"]
	[iscript]
		tf.timeLimit = new Date();
		tf.timeLimit.setMinutes(tf.timeLimit.getMinutes() + tf.remainingMinuts);
		tf.timeLimit.setSeconds(tf.timeLimit.getSeconds() + tf.remainingSeconds);

		// タイマースタート
		tf.countdownTimer.countDown(tf.timeLimit);
	[endscript]
[endmacro]


;タイマー削除
[macro name="timer_delete"]
	[free layer=2 name=timer]
	[eval exp="clearTimeout(tf.tid);"]
[endmacro]

[return]