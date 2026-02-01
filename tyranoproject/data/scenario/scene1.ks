;万能カウンタマシンゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]
[bg storage="turing_background.jpg" time="100"]


;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]



;メッセージウィンドウの表示
@layopt layer=message0 visible=true

[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[chara_config ptext="chara_name_area"]



;adachi
[chara_new  name="adachi" storage="chara/adachi/adachi_normal.png"  height=600 width=400 jname="足立レイ"  ]
[chara_face name="adachi" face="happy"  height=600 width=400 storage="chara/adachi/adachi_happy.png"]
[chara_face name="adachi" face="happy2"  height=600 width=400 storage="chara/adachi/adachi_happy2.png"]
[chara_face name="adachi" face="happy3"  height=600 width=400 storage="chara/adachi/adachi_happy3.png"]
[chara_face name="adachi" face="dere"  height=600 width=400 storage="chara/adachi/adachi_dere.png"]
[chara_face name="adachi" face="doya"  height=600 width=400 storage="chara/adachi/adachi_doya.png"]
[chara_face name="adachi" face="sleep"  height=600 width=400 storage="chara/adachi/adachi_sleep.png"]
[chara_face name="adachi" face="t"  height=600 width=400 storage="chara/adachi/adachi_t.png"]
[chara_face name="adachi" face="surprise"  height=600 width=400 storage="chara/adachi/adachi_surprise.png"]



;レジスタ変数を宣言
[eval exp="f.reg0=0"]
[eval exp="f.reg1=0"]
[eval exp="f.reg2=0"]
[eval exp="f.reg3=0"]
[eval exp="f.reg4=0"]
[eval exp="f.reg5=0"]
[eval exp="f.reg6=0"]
[eval exp="f.reg7=0"]



*inc_reg0

[chara_show name=adachi]

[er]レジスタ0をインクリメントしますか？[r]
現在:[emb exp="f.reg0"] 

[glink x="250" y="300" width="100" text="する" target="*inc_reg0_T" color="black"]

[glink x="750" y="300" width="100" text="しない" target="*inc_reg0_F" color="black"]
[s]

*inc_reg0_T

[cm]

[chara_mod name="adachi" face="happy"]
[eval exp="f.reg0=f.reg0+1"]
@jump target=*inc_reg0

*inc_reg0_F

[cm]

[chara_mod name="adachi" face="default"]
レジスタ0の入力を終わります[l]

@jump target=*inc_reg1

;---------------------------

*inc_reg1

[er]レジスタ1をインクリメントしますか？[r]
現在:[emb exp="f.reg1"] 

[glink x="250" y="300" width="100" text="する" target="*inc_reg1_T" color="black"]

[glink x="750" y="300" width="100" text="しない" target="*inc_reg1_F" color="black"]
[s]

*inc_reg1_T

[chara_mod name="adachi" face="happy2"]
[eval exp="f.reg1=f.reg1+1"]
@jump target=*inc_reg1

*inc_reg1_F

[chara_mod name="adachi" face="default"]
レジスタ1の入力を終わります[p]

@jump target=*inc_reg2

*inc_reg2


プログラムの実行を開始します[p]
[autoconfig speed=40 clickstop=true]
[autostart]



;-----------------------------------------------------------------------

*q1
	q1[p]
	[chara_mod name="adachi" face="doya"]
	[if exp="f.reg1>=1"]
		@jump target=*q2

	[else]
		@jump target=*q6
[endif]
	

*q2
	q2[p]
	[chara_mod name="adachi" face="happy3"]
	[eval exp="f.reg1=f.reg1-1"]
	@jump target=*q3


*q3
	q3[p]
	[chara_mod name="adachi" face="t"]
	[eval exp="f.reg7=f.reg7+1"]
	@jump target=*q1


*q4
	q4[p]
	[chara_mod name="adachi" face="dere"]
	[if exp="f.reg5>=1"]
		@jump target=*q5

	[else]
		@jump target=*q7
[endif]

*q5
	q5[p]
	[chara_mod name="adachi" face="doya"]
	[eval exp="f.reg5=f.reg5-1"]
	@jump target=*q6

*q6
	q6[p]
	[chara_mod name="adachi" face="happy3"]
	[eval exp="f.reg6=f.reg6+1"]
	@jump target=*q4

*q7
	q7[p]
	[chara_mod name="adachi" face="t"]
	[if exp="f.reg6>=1"]
		@jump target=*q8

	[else]
		@jump target=*q4
[endif]

*q8
	q8[p]
	[chara_mod name="adachi" face="dere"]
	[eval exp="f.reg6=f.reg6-1"]
	@jump target=*q9

*q9
	q9[p]
	[chara_mod name="adachi" face="doya"]
	[eval exp="f.reg5=f.reg5+1"]
	@jump target=*q10


*q10
	q10[p]
	[chara_mod name="adachi" face="happy3"]
	[if exp="f.reg7>=1"]
		@jump target=*q11

	[else]
		@jump target=*q13
[endif]


*q11
	q11[p]
	[chara_mod name="adachi" face="t"]
	[eval exp="f.reg7=f.reg7-1"]
	@jump target=*q12

*q12
	q12[p]
	[chara_mod name="adachi" face="dere"]
	[eval exp="f.reg1=f.reg1+1"]
	@jump target=*q7

*q13
	q13[p]
	[chara_mod name="adachi" face="doya"]
	[if exp="f.reg6>=1"]
		@jump target=*q14

	[else]
		@jump target=*q1
[endif]

*q14
	q14[p]
	[chara_mod name="adachi" face="happy3"]
	[if exp="f.reg4>=1"]
		@jump target=*q15

	[else]
		@jump target=*q16
[endif]

*q15
	q15[p]
	[chara_mod name="adachi" face="t"]
	[eval exp="f.reg4=f.reg4-1"]
	@jump target=*q1

*q16
	q16[p]
	[chara_mod name="adachi" face="dere"]
	[if exp="f.reg5>=1"]
		@jump target=*q17

	[else]
		@jump target=*q23
[endif]

*q17
	q17[p]
	[chara_mod name="adachi" face="doya"]
	[eval exp="f.reg5=f.reg5-1"]
	@jump target=*q18

*q18
	q18[p]
	[chara_mod name="adachi" face="happy3"]
	[if exp="f.reg5>=1"]
		@jump target=*q19

	[else]
		@jump target=*q27
[endif]

*q19
	q19[p]
	[chara_mod name="adachi" face="t"]
	[eval exp="f.reg5=f.reg5-1"]
	@jump target=*q20

*q20
	q20[p]
	[chara_mod name="adachi" face="dere"]
	[if exp="f.reg5>=1"]
		@jump target=*q21

	[else]
		@jump target=*q30
[endif]

*q21
	q21[p]
	[chara_mod name="adachi" face="doya"]
	[eval exp="f.reg5=f.reg5-1"]
	@jump target=*q22

*q22
	q22[p]
	[chara_mod name="adachi" face="happy3"]
	[eval exp="f.reg4=f.reg4+1"]
	@jump target=*q16

*q23
	q23[p]
	[chara_mod name="adachi" face="t"]
	[if exp="f.reg2>=1"]
		@jump target=*q24

	[else]
		@jump target=*q25
[endif]

*q24
	q24[p]
	[chara_mod name="adachi" face="dere"]
	[eval exp="f.reg2=f.reg2-1"]
	@jump target=*q32

*q25
	q25[p]
	[chara_mod name="adachi" face="doya"]
	[if exp="f.reg0>=1"]
		@jump target=*q26

	[else]
		@jump target=*q32
[endif]

*q26
	q26[p]
	[chara_mod name="adachi" face="happy3"]
	[eval exp="f.reg0=f.reg0-1"]
	@jump target=*q1

*q27
	q27[p]
	[chara_mod name="adachi" face="t"]
	[if exp="f.reg3>=1"]
		@jump target=*q28

	[else]
		@jump target=*q29
[endif]

*q28
	q28[p]
	[chara_mod name="adachi" face="happy3"]
	[eval exp="f.reg3=f.reg3-1"]
	@jump target=*q32

*q29
	q29[p]
	[chara_mod name="adachi" face="doya"]
	[eval exp="f.reg0=f.reg0+1"]
	@jump target=*q1

*q30
	[chara_mod name="adachi" face="dere"]
	[eval exp="f.reg2=f.reg2+1"]
	@jump target=*q31

*q31
	q31[p]
	[chara_mod name="adachi" face="t"]
	[eval exp="f.reg3=f.reg3+1"]
	@jump target=*q32

*q32
	q32[p]
	[chara_mod name="adachi" face="happy3"]
	[if exp="f.reg4>=1"]
		@jump target=*q15

	[else]
		@jump target=*stop
[endif]


;-----------------------------------------------------------------------

  

*stop

[autostop]
プログラム実行を終了します。[p]

実行結果[r]
[emb exp="f.reg0"] [emb exp="f.reg1"] [emb exp="f.reg2"] [emb exp="f.reg3"] [emb exp="f.reg4"] [emb exp="f.reg5"] [emb exp="f.reg6"] [emb exp="f.reg7"][p]

タイトルへ移動します。[p]
[chara_hide name="adachi" ]
@layopt layer=message0 visible=false
[jump storage=title.ks]

[s]















































