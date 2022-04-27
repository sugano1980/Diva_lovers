	
	
	[iscript]

		// 経過時間計算
		var today=new Date();
		tf.remainingMinuts=Math.floor(((tf.timeLimit-today)%(24*60*60*1000))/(60*1000))%60;
		tf.remainingSeconds=Math.floor(((tf.timeLimit-today)%(24*60*60*1000))/1000)%60%60;

	[endscript]
	
	
	[if exp="tf.remainingMinuts=="]