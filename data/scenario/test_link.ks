

 [layopt layer=2 visible=true]
 
[preload storage="data/others/hannari.ttf"]
[preload storage="data/others/Mamelon.ttf"]
[preload storage="data/others/mgenplus-1m-bold.ttf"]
[preload storage="data/others/font_1_ant-maru.woff"]
[loadjs storage="diva_data_yomikomi.js"]


[ptext layer=2 page=fore visible=true text="テスト用リンク" x=200 y=50]

;●バトルシステムのレスポンス（だるさを感じないかとかそういうの）;
;●装備変更システムの食感じゃなくて触感
;●お店システムの売買、ストレスを感じないU Xであるかどうか

;アイテム個数入力サンプル
[iscript]
f.battle_item_stock=[];
f.equip_item_stock=[];
f.other_item_stock=[];
f.cook_item_stock=[];
[endscript]
[call storage="scenario_2/siken_item.ks"]

[eval exp="f.test_link=1"]

[call storage="scenario_2/macro.ks"]
[call storage="scenario_2/status_macro_macro.ks"]
[call storage="scenario_2/item_hyouji_macro.ks"]
[call storage="scenario_2/map_macro.ks"]
[call storage="scenario_2/store_macro.ks"]
[call storage="scenario_2/store_macro_add.ks"]
[call storage="scenario_2/equip_change_macro_data.ks"]
[call storage="scenario_2/store_macro_kioku.ks"]
[call storage="scenario_2/rans_fashion_comment.ks"]
[call storage="scenario_2/lion_fashion_comment.ks"]
[call storage="scenario_2/kra_fashion_comment.ks"]
[call storage="scenario_2/status_macro.ks"]
[call storage="scenario_2/chara_para_kioku.ks"]
[call storage="scenario_2/menu_kioku_hikitugi.ks"]

[message_kakusu]
;[name]能力値
[eval exp="f.irain_tec=100"]
[eval exp="f.irain_brain=100"]
[eval exp="f.irain_charm=100"]


;アイテムチェックの後に入れないとだめ
[eval exp="f.equip_item_current=3"]
;装備欄２にアイテムナンバー入力
[eval exp="f.equip_item_current_2=1"]

;装備アイテムデータを読み込み
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/skill_calc_current.ks"]

[eval exp="f.irain_tec=f.irain_tec+10"]
[eval exp="f.irain_brain=f.irain_brain+5"]
[eval exp="f.irain_charm=f.irain_charm+10"]

;お金
[eval exp="f.money=10000"]
;



;選択肢


[glink target=*test_1 text="（バトルテスト）" size=17 width=600 x=65 y=200]
[glink target=*test_2 text="（装備変更テスト）" size=17 width=600 x=65 y=260]
[glink target=*test_3 text="（お店テスト）" size=17 width=600 x=65 y=320]


[s]

*test_1
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;バトル用
;[name]能力値
[eval exp="f.irain_tec=100"]
[eval exp="f.irain_brain=100"]
[eval exp="f.irain_charm=100"]
;アイテム個数入力サンプル
[iscript]
f.battle_item_stock=[];
f.equip_item_stock=[];
f.other_item_stock=[];
f.cook_item_stock=[];
[endscript]
[preload storage="data/fgimage/lion_tatie/Idle_gif_battle_home_2.gif"]
[preload storage="data/fgimage/lion_tatie/Idle_gif_battle_home.gif"]
[preload storage="data/fgimage/lion_tatie/Idle_gif_battle_serihu_2.png"]
[preload storage="data/fgimage/lion_tatie/Idle_gif_battle_serihu.png"]


[preload storage="data/fgimage/battle_animation/lion/lion_skill_0.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_1.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_2.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_3.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_4.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_5.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_6.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_7.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_8.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_9.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_10.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_11.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_12.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_13.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_14.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_15.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_16.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_17.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_18.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_19.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_20.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_21.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_22.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_23.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_skill_24.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_0.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_1.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_2.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_3.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_4.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_5.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_6.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_7.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_8.png"]
[preload storage="data/fgimage/battle_animation/lion/lion_sword_9.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_1.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_2.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_3.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_4.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_5.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_6.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_7.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_8.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_9.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_10.png"]
[preload storage="data/fgimage/battle_animation/monster_gauge_window.png"]

[preload storage="data/fgimage/battle_animation/hit.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_0.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_1.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_2.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_3.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_4.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_5.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_6.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_7.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_8.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_skill_9.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_0.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_1.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_2.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_3.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_4.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_5.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_6.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_7.png"]
[preload storage="data/fgimage/battle_animation/irain/irain_sword_8.png"]


[call storage="scenario_2/siken_item.ks"]

;アイテムチェックの後に入れないとだめ
[eval exp="f.equip_item_current=3"]
;装備欄２にアイテムナンバー入力
[eval exp="f.equip_item_current_2=1"]

;装備アイテムデータを読み込み
[call storage="scenario_2/item/equip_item_data_new.ks"]
[call storage="scenario_2/skill_calc_current.ks"]

[eval exp="f.irain_tec=f.irain_tec+10"]
[eval exp="f.irain_brain=f.irain_brain+5"]
[eval exp="f.irain_charm=f.irain_charm+10"]

;お金
[eval exp="f.money=10000"]
;
[eval exp="f.monster_group_18=1"]
[eval exp="f.friend=2"]
[battle_start]


*test_2
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;装備変更
[jump storage="scenario_2/equip_change.ks" target=*first]

*test_3
[playse storage="decision5_koukaonlabo.ogg"]
[w]
;お店
[eval exp="f.store_curnival_sale=1"]
[store_money]


*test_4
[playse storage="decision5_koukaonlabo.ogg"]
[w]
[eval exp="f.test_link=0"]
[clearvar]

[jump storage="title.ks"]








