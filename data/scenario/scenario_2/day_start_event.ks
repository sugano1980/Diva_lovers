




[if exp="f.event_epi5_rans_ok==2"]
[hidemenubutton][skip_button]
[jump storage="scenario_2/episode/epi_5_rans_epi.ks" target=*rans_shokei_koukai_0]
*rans_shokei_koukai
[showmenubutton]

[if exp="f.skip_on==1"]
[clearfix name="skip_button"]
[endif]

[bg storage="irainheya_tasogare.jpg"]
[jump storage="scenario_2/status_macro.ks" target=*event_modotta]

[elsif exp="f.event_epi5_rans_ok==8&&f.event_main_15_days==2"]

[skip_button][hidemenubutton]
[rans_saikai]
[skip_button_off][showmenubutton]
[eval exp="f.event_epi5_rans_ok=9"]
[jump storage="scenario_2/status_macro.ks" target=*event_modotta]

[endif]




[if exp="f.event_main_15_days>0&&f.event_sub_15[1]==1&&f.friend==0&&f.krakonkando>30&&f.irain_move!=1&&f.irain_move!=0"]
[freeimage layer=0][freeimage layer=2][freeimage layer=1]
[skip_button][hidemenubutton]
[kojiin_nimotu]
[skip_button_off][showmenubutton]
[eval exp="f.event_sub_15[1]=0"]
[eval exp="f.event_sub_15_sumi[1]=1"]



[endif]
;テストコード
;[l][showmenubutton]
;如何わしい店で潜入捜査

[if exp="f.event_main_16_days>0&&f.event_sub_16[0]==1&&f.friend==0"]

[skip_button][hidemenubutton][freeimage layer=0][freeimage layer=2][freeimage layer=1]
[jump storage="scenario_2/episode/event_16_sub_story.ks" target=*ikagawa_sousa]
*irai_end

[skip_button_off][showmenubutton]

[if exp="f.event_sub_16_ikagawa_ok==1"]

[eval exp="f.irain_heya=0"]

[eval exp="tf.tuika_num = 2"]
[eval exp="tf.kaiwa_num  = 24"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="tf.tuika_num = 1"]
[eval exp="tf.kaiwa_num  = 27"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="tf.tuika_num = 0"]
[eval exp="tf.kaiwa_num  = 26"]
[kaiwa_tuika]
[kaiwa_tuika_end_heya]

[eval exp="f.irain_heya=1"]

[eval exp="f.event_sub_16_sumi[0]=1"]
[eval exp="f.event_sub_16_ikagawa_ok=0"]
[endif]
[eval exp="f.event_sub_16[0]=0"]
[refresh_hanyou]

[bg storage="irainheya_tasogare.jpg"]
[jump storage="scenario_2/status_macro.ks" target=*event_modotta]
[endif]


;帰郷
[if exp="f.event_main_16_days>0&&f.event_sub_16[1]==1&&f.friend==0&&f.irain_move>1"]
[skip_button][hidemenubutton][freeimage layer=0][freeimage layer=2][freeimage layer=1]
[stopbgm]
[jump storage="scenario_2/episode/event_16_sub_story.ks" target=*kikyou]
*kikyou_end
[skip_button_off][showmenubutton]
[eval exp="f.event_sub_16_sumi[1]=1"]
[eval exp="f.event_sub_16[1]=0"]
[refresh_hanyou]
[bg storage="irainheya_tasogare.jpg"]

[endif]



[jump storage="scenario_2/status_macro.ks" target=*event_modotta]
