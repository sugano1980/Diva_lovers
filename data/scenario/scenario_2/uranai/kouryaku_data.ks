

[iscript]




tf.inside_d =[

'*inside_1',
'*inside_2',
'*inside_3',
'*inside_4',

];

tf.text_m =[

'mojimoji_1',
'mojimoji_2',
'mojimoji_3',
'mojimoji_4',

];



f.rans_image=[
'icon/rans_mini.png'
];


f.rans_kouryaku =[

['第１段階',
'第３章',
'エルムナード侵攻',
'「異形との攻防」',
],
[
'第２段階',
'第３章',
'エルムナード侵攻',
'「大切な人だから」',
],
[
'第３段階',
'第４章',
'研究都市ウェスタ',
'「手紙」',
],
[
'第４段階',
'ランスロットルート',
'気まずい再会',
'「最後の選択肢」',
],
];

f.rans_kouryaku_inside =[

[
    '団長から入隊の希望を聞かれた時、選択肢で「第一大隊」を選ぶ'
],
[
'１マナー講習時、街の人の信頼度が５以上',
'２初めてのマナー講習後に出る選択肢で「探してみよう」を選ぶ',
'３その後の選択肢、「右」→「そんなの嫌だよ！」→「大切な人なんだから」',
'４夕方以降の裏通りへ一人で行きマップイベントを起こす',
],
[
    '対象能力値を700以上にする'
],

[
    '最後の選択肢で正解を選ぶ、最後の戦いに勝利する'
],
];

f.lion_image=[
'icon/lion_mini.png'
];


f.lion_kouryaku =[
[
'第１段階',
'第３章',
'エルムナード侵攻',
'「母親のこと」',
],
[
'第２段階',
'第４章',
'研究都市ウェスタ',
'「酒場での夜」',
],

[
'第3段階',
'ライオネスルート',
'「最後の選択肢」',
'',
],

[
'第4段階は存在しません',
'',
'',
'',
]

];

f.lion_kouryaku_inside =[
[
'戦争準備期間、一人で噴水広場に行きライオネスとのイベントを起こす',
'選択肢で「聞いてみる」→「ライオネス、優しいよね」を選ぶ',

],
[
'対象能力値を700以上にする',
],
[
'最後の選択肢で正解を選ぶ、最後の戦いに勝利する',
],
[
    '',
],
];



f.kra_image=[
'icon/kra_mini.png'
];


f.kra_kouryaku =[
[
'第１段階',
'第３章',
'エルムナード侵攻',
'「贄」',
],

[
'第２段階',
'第３章',
'エルムナード侵攻',
'「青い悪魔」',
],

[
'第３段階',
'第４章',
'研究都市ウェスタ',
'「秘密の調べ物」',
],

[
'第4段階',
'クライストルート',
'蒼き魔剣の主',
'「最後の選択肢」',
],
];

f.kra_kouryaku_inside =[
[
'団長から入隊の希望を聞かれた時、選択肢で「第四大隊」を選ぶ',

],
[
'１騎士団解散告知後、王都入口で街の人の話を聞く',
'２酒場で街の人の話を聞く',
'３噴水広場で街の人の話を聞いた夜、選択肢で「探しに出てみよう」を選択',
'４ガイアの森でイベントを起こす',
],
[
'対象能力値を700以上にする',
],

[
'最後の選択肢で正解を選ぶ、最後の戦いに勝利する',
],
];

//グリフ
f.glif_image=[
'icon/glif_mini.png'
];


f.glif_kouryaku =[
[
'第１段階',
'第２章',
'カーニバル',
'共闘',
],

[
'第２段階',
'第３章',
'エルムナード侵攻',
'共闘、再び',
]
];

f.glif_kouryaku_inside =[
[
'カーニバルに誘う相手を「その他の男性」にし、当日グリフと共闘する',

],
[
'団長から入隊の希望を聞かれた時、選択肢で「団長にお任せ」を選ぶ',
]
];

[endscript]


;内側の一行目文字設定マクロ
[macro name="size_confirm"]
[if exp="tf.moji_lenlen==1"]
[eval exp="tf.k_size=20"]
[elsif exp="tf.moji_lenlen==2"]
[eval exp="tf.k_size=17"]
[elsif exp="tf.moji_lenlen==4"]
[eval exp="tf.k_size=16"]
[endif]
[endmacro]

;内側の文字位置設定マクロ
[macro name="space_confirm"]
[if exp="tf.moji_lenlen==4"]
[eval exp="tf.kou_y=tf.kou_y+16"]
[elsif exp="tf.moji_lenlen==2"]
[eval exp="tf.kou_y=tf.kou_y+23"]
[endif]
[endmacro]


[macro name="chara_kouryaku_hantei_rans"]

[eval exp="tf.rock_off=1"]

[if exp="tf.kouryaku_h_kaisu==0"]
[eval exp="tf.rock_off=0"]
;-----------
[if exp="f.event_war_rans_sumi==1||f.event_war_rans==1"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.event_main_14_days<0||f.event_main_14_days>0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]
[endif]
;-----------

[elsif exp="tf.kouryaku_h_kaisu==1"]

[if exp="tf.rans_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*rans_k_end]
[endif]

;-----------
[if exp="f.event_epi5_rans_ok==10"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.event_rans_search_yes==0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]

[elsif exp="f.event_main_15_days>0&&f.event_war_rans_sumi==1||f.mannar_zenjitu==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_15_days>0||f.event_main_15_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]
[endif]
;-------------

[elsif exp="tf.kouryaku_h_kaisu==2"]

[if exp="tf.rans_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*rans_k_end]
[endif]

;-----------
[if exp="f.irain_tec>699&&f.irain_brain>699"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_19_days<0&&f.irain_tec<700||f.event_main_19_days<0&&f.irain_brain<700"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]
[endif]
;-------------

[elsif exp="tf.kouryaku_h_kaisu==3"]

[if exp="tf.rans_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*rans_k_end]
[endif]

;-----------
[if exp="f.rans_last_ok==1"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.irain_tec<700&&f.event_main_19_days<0||f.irain_brain<700&&f.event_main_19_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]

[elsif exp="f.s_wesuta==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.rans_last_ok!=1"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.rans_k_end=1"]
[endif]
;-------------

[endif]

*rans_k_end

[endmacro]


[macro name="chara_kouryaku_hantei_lion"]
[eval exp="tf.rock_off=1"]



[if exp="tf.kouryaku_h_kaisu==0"]
[eval exp="tf.rock_off=0"]
;-----------
[if exp="f.event_sub_14_mother_kaiwa==1"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.event_main_14_days<0||f.event_sub_14_sumi[2]==1"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.lion_k_end=1"]

[elsif exp="f.event_main_14_days>0"]
[eval exp="tf.rock_off=0"]
[endif]
;-----------
[elsif exp="tf.kouryaku_h_kaisu==1"]
;-----------
[if exp="tf.lion_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*lion_k_end]
[endif]
;-----------
[if exp="f.irain_tec>699&&f.irain_charm>699"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_19_days<0&&f.irain_tec<700||f.event_main_19_days<0&&f.irain_charm<700"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.lion_k_end=1"]
[endif]
;-------------

[elsif exp="tf.kouryaku_h_kaisu==2"]

[if exp="tf.lion_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*lion_k_end]
[endif]

;-----------
[if exp="f.lion_last_ok==1"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.irain_tec<700&&f.event_main_19_days<0||f.irain_charm<700&&f.event_main_19_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.lion_k_end=1"]

[elsif exp="f.s_wesuta==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.lion_last_ok!=1"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.lion_k_end=1"]
[endif]
;-------------
*lion_k_end
[endif]
;-------------





[endmacro]


[macro name="chara_kouryaku_hantei_kra"]
[eval exp="tf.rock_off=1"]

[if exp="tf.kouryaku_h_kaisu==0"]

[eval exp="tf.rock_off=0"]
;-----------
[if exp="f.event_war_kra_sumi==1||f.event_war_kra==1"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.event_main_14_days<0||f.event_main_14_days>0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.kra_k_end=1"]
[endif]

;-----------
[elsif exp="tf.kouryaku_h_kaisu==1"]
;-----------
[if exp="tf.kra_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*kra_k_end]
[endif]


[if exp="f.event_epi7_kra_ok==7"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.event_main_16_days>0&&f.event_war_kra_sumi==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_16_days>0||f.event_main_16_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.kra_k_end=1"]
[endif]
;-------------
[elsif exp="tf.kouryaku_h_kaisu==2"]

[if exp="tf.kra_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*kra_k_end]
[endif]

;-----------
[if exp="f.irain_charm>699&&f.irain_brain>699&&f.kra_flag==1"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.event_main_17_days>0||f.event_main_18_days>0||f.event_main_19_days>0"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_19_days<0&&f.irain_charm<700||f.event_main_19_days<0&&f.irain_brain<700"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.kra_k_end=1"]
[endif]
;-------------

[elsif exp="tf.kouryaku_h_kaisu==3"]

[if exp="tf.kra_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*kra_k_end]
[endif]

;-----------
[if exp="f.kra_last_ok==1"]
;攻略済み
[eval exp="tf.rock_off=2"]

[elsif exp="f.irain_charm<700&&f.event_main_19_days<0||f.irain_brain<700&&f.event_main_19_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.kra_k_end=1"]

[elsif exp="f.s_wesuta==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.kra_last_ok!=1"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.kra_k_end=1"]
[endif]
;-------------


[endif]

*kra_k_end

[endmacro]

[macro name="chara_kouryaku_hantei_glif"]
[eval exp="tf.rock_off=1"]

[if exp="tf.kouryaku_h_kaisu==0"]

;-----------
[if exp="f.glif_battle_kizuna==1"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.disc_num>2||f.curnival_rans==1||f.curnival_lion==1||f.curnival_kra==1||f.osasoi_else!=1"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.glif_k_end=1"]
[endif]
;-----------
[elsif exp="tf.kouryaku_h_kaisu==1"]

[if exp="tf.glif_k_end==1"]
[eval exp="tf.rock_off=-1"]
[jump target=*glif_k_end]
[endif]

;-----------
[if exp="f.event_war_glif_sumi==1"]
;攻略済み
[eval exp="tf.rock_off=2"]
[elsif exp="f.event_war_glif==1"]
;攻略中
[eval exp="tf.rock_off=0"]

[elsif exp="f.event_main_14_days>0||f.event_main_14_days<0"]
;攻略不可
[eval exp="tf.rock_off=-1"]
[eval exp="tf.glif_k_end=1"]
[endif]
;-------------

[endif]

*glif_k_end

[endmacro]

[return]