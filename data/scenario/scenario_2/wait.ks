
[if exp="f.wait==1"]
[button name="role_button" graphic="button/wait_off.png" fix=true exp="f.wait=0" storage="wait.ks" x=200 y=3]
[else]
[button name="role_button" graphic="button/wait_on.png" fix=true exp="f.wait=1" storage="wait.ks" x=200 y=3]

[endif]


[return]

