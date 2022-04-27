 *first_2



[loadcss file="./data/others/font.css" ]
[if exp="sf.font==22&&sf.font_f==6"]
[deffont size="24" face=antique bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==5"]
[deffont size="22" face=makinas bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==4"]

[elsif exp="sf.font==22&&sf.font_f==3"]
[deffont size="24" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==2"]
[deffont size="22" face=hannari bold=true][resetfont]
[elsif exp="sf.font==22&&sf.font_f==1"]
[deffont size="22" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==6"]
[deffont size="21" face=antique bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==5"]
[deffont size="21" face=makinas bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==4"]
[elsif exp="sf.font==19&&sf.font_f==3"]
[deffont size="21" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==2"]
[deffont size="19" face=hannari bold=true][resetfont]
[elsif exp="sf.font==19&&sf.font_f==1"]
[deffont size="19" face="MS PMincho" bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==6"]
[deffont size="19" face=antique bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==5"]
[deffont size="20" face=makinas bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==4"]

[elsif exp="sf.font==17&&sf.font_f==3"]
[deffont size="19" face=mgenplus bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==2"]
[deffont size="17" face=hannari bold=true][resetfont]
[elsif exp="sf.font==17&&sf.font_f==1"]
[deffont size="17" face="MS PMincho" bold=true][resetfont]
[endif]


;ロード用

*load
*reload
;再読み込み対策。現在のU R Lを変更
[iscript]
history.replaceState( "hoge", "null", "./index.html" );
[endscript]

[showload]
[autoloader]
[s]



;--------





