
[cm]

@clearstack
@bg storage ="turing_background.jpg" time=100
@wait time = 200

*start 

[button x=480 y=230 height=60 width=270 graphic="button/start.png"  target="gamestart" keyfocus="1"]

[button x=480 y=360 height=60 width=270 graphic="button/link.png"  target="link" keyfocus="2"]

[button x=480 y=490 height=60 width=270 graphic="button/finish.png"  target="gamefinish" keyfocus="3"]



[s]

*gamestart
;ゲーム開始
@jump storage="scene1.ks"

*link
;論文リンク
[web url="https://www.sciencedirect.com/science/article/pii/S0304397596000801"]
@jump *start

*gamefinish
;ゲーム終了
[close ask=true]



































