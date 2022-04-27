*friend

;skill技のでやすさ sp状態変化の受けやすさ skill_number技のNo meichu:命中率。１０なら１００パーセント。９で９０、８、８０、７、７０、６、６０、５、５０、４、４０、３、３０、２、２０以下
;実際のランダム処理のときに場合分け。avoid:攻撃の回避確率２なら５０パーセント

*rans



[iscript]
var rans_status_1={
name:'ランスロット',
hp:150,
skill:3,
sp:6,
skill_number:1,
meichu:10,
avoid:3
	
};

f.rans_status_1 = rans_status_1
[endscript]

*rans1

[iscript]
var rans_status_2={
    name:'ランスロット',
	hp:350,
	skill:3,
	sp:6,
	skill_number:1,
	meichu:10,
	avoid:3
};

f.rans_status_2 = rans_status_2
[endscript]




*lion
[iscript]
var lion_status_1={
    name:'ライオネス',
	hp:250,
	skill:5,
	sp:3,
	skill_number:2,
	meichu:5,
	avoid:5
};

f.lion_status_1 = lion_status_1
[endscript]


*lion1
[iscript]
var lion_status_2={
    name:'ライオネス',
	hp:500,
	skill:5,
	sp:3,
	skill_number:2,
	meichu:6,
	avoid:5
};

f.lion_status_2 = lion_status_2
[endscript]




*kra
[iscript]
var kra_status_1={
    name:'クライスト',
	hp:120,
	skill:3,
	skill_number:3,
	meichu:8,
	avoid:3
	
};

f.kra_status_1 = kra_status_1
[endscript]


*kra1
[iscript]
var kra_status_2={
    name:'クライスト',
	hp:230,
	skill:3,
	skill_number:3,
	meichu:8,
	avoid:3
	
};

f.kra_status_2 = kra_status_2
[endscript]


*van

[iscript]
var van_status_1={
    name:'ヴァンディット',
	hp:300,
	skill:2,
	skill_number:4,
	meichu:10,
	avoid:2
	
};

f.van_status_1 = van_status_1
[endscript]


*glif

[iscript]
var glif_status_1={
    name:'グリフレット',
	hp:250,
	skill:3,
	sp:6,
	skill_number:5,
	meichu:8,
	avoid:2
};

f.glif_status_1 = glif_status_1
[endscript]



*共通変数に代入

;ransの場合
[if exp="f.friend==1"]
[iscript]
tf.friend_name=f.rans_status_1.name;
tf.friend_hp=f.rans_status_1.hp;
tf.friend_skill=f.rans_status_1.skill;
tf.friend_sp=f.rans_status_1.sp;
tf.friend_skill_number=f.rans_status_1.skill_number;
tf.friend_meichu=f.rans_status_1.meichu;
tf.friend_avoid=f.rans_status_1.avoid;
[endscript]
[endif]

;lionの場合
[if exp="f.friend==2"]
[iscript]
tf.friend_name=f.lion_status_1.name;
tf.friend_hp=f.lion_status_1.hp;
tf.friend_skill=f.lion_status_1.skill;
tf.friend_sp=f.lion_status_1.sp;
tf.friend_skill_number=f.lion_status_1.skill_number;
tf.friend_meichu=f.lion_status_1.meichu;
tf.friend_avoid=f.lion_status_1.avoid;

[endscript]
[endif]
;kraの場合
[if exp="f.friend==3"]
[iscript]
tf.friend_name=f.kra_status_1.name;
tf.friend_hp=f.kra_status_1.hp;
tf.friend_skill=f.kra_status_1.skill;
tf.friend_skill_number=f.kra_status_1.skill_number;
tf.friend_meichu=f.kra_status_1.meichu;
tf.friend_avoid=f.kra_status_1.avoid;

[endscript]
[endif]

;vanの場合
[if exp="f.friend==4"]
[iscript]
tf.friend_name=f.van_status_1.name;
tf.friend_hp=f.van_status_1.hp;
tf.friend_skill=f.van_status_1.skill;
tf.friend_skill_number=f.van_status_1.skill_number;
tf.friend_meichu=f.van_status_1.meichu;
tf.friend_avoid=f.van_status_1.avoid;

[endscript]
[endif]

;glifの場合
[if exp="f.friend==5"]
[iscript]
tf.friend_name=f.glif_status_1.name;
tf.friend_hp=f.glif_status_1.hp;
tf.friend_skill=f.glif_status_1.skill;
tf.friend_sp=f.glif_status_1.sp;
tf.friend_skill_number=f.glif_status_1.skill_number;
tf.friend_meichu=f.glif_status_1.meichu;
tf.friend_avoid=f.glif_status_1.avoid;
[endscript]
[endif]


;マックスHPを出しておく

[eval exp="tf.friend_hp_m=tf.friend_hp"]



[eval exp="f.friend=0"]

[return]






















;未使用のもの


*friend_damage
;ダメージ受ける
[eval exp="tf.friend_hp=tf.friend_hp-tf.monster_damage"]
;消去後再表示でHP減少表現
[free layer=3 name="friend_hp"]

;HPが０の場合再表示はしない
[if exp="tf.friend_hp<1"]
[jump storage="mini_game/battle2.ks" target=*friend_death]
[endif]

[ptext layer=3 page=fore visible="true" text="&tf.friend_hp" name="friend_hp" size=30 x=215 y=15]
[r][emb exp="tf.friend_name"]は[emb exp="tf.monster_damage"]のダメージを受けた！[cm]

;HP0の場合
[if exp="tf.friend_hp==0"]
[jump storage="mini_game/battle2.ks" target=*friend_death]
[endif]

;モンスターで特殊攻撃に入力があれば追加（現在はイレインのみの実装）
[if exp="tf.doku==1"]
[eval exp="tf.friend_doku=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="どく" name="doku_friend" size=30 x=215 y=15]

[elsif exp="tf.mahi==1"]
[eval exp="tf.friend_mahi=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="まひ" name="mahi_friend" size=30 x=215 y=15]

[elsif exp="tf.nemuri==1"]
[eval exp="tf.friend_nemuri=1"]
;ステータス表示を変更
[ptext layer=3 page=fore visible="true" text="ねむり" name="nemuri_friend" size=30 x=215 y=15]

[endif]





[jump storage="mini_game/monster_battle_add.ks" target=*friend_back]






