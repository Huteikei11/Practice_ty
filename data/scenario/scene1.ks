;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;さとり
[chara_new  name="satori" storage="chara/satori/satori_1_1.png" jname="さとり"  ]

[chara_face name="satori" face="niyari11_1" storage="chara/satori/satori_11_1.png"]
[chara_face name="satori" face="angry2_2" storage="chara/satori/satori_3_2.png"]
[chara_face name="satori" face="smile2_1" storage="chara/satori/satori_2_1.png"]
[chara_face name="satori" face="komari2_2" storage="chara/satori/satori_4_2.png"]
[chara_face name="satori" face="omg1" storage="chara/satori/satori_5.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]



;キャラクター登場
[chara_show  name="satori"  ]


;ロールボタン追加;;;;;;;;;;;;;;


; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フルスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり

#satori
こんにちは。[r][l]
今回はティラノスクリプトでゲームを作る練習をしてみました。[p]

#satori
ちょっとしたお遊びだと思って
つきあってくださいね[p]

[glink  color="pink"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="やったー"  target="*happy"  ]
[glink  color="white"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="うーん"  target="*normal"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="興味なし"  target="*bad"  ]
[s  ]
*happy

[chara_mod  name="satori" face="smile2_1"  ]
#satori
フフフ・・・[l]ありがとうございます。[p]
@jump target=*common


*normal
[chara_mod  name="satori" face="komari2_2"  ]
#satori
・・・[l]そう緊張せずに。[l]
アイスブレイクから始めましょうか？[p]
@jump target=*common

*bad
[chara_mod  name="satori" face="angry2_2"  ]
#satori
む！[l]反抗的な態度。[l][r]
後で覚えてなさいよ・・・・・・[p]
@jump target=*common


*common

[chara_mod  name="satori" face="default"  ]
#satori
・・・・・さて[p]

;[chara_mod name="akane" face="default"]

#satori
画面をタッチする機能を試そうかしら。[l]
試しに私の頭を撫でてごらんなさい。[p]

[clickable x="540" y="150" width="200" height="200" target="*Part1" opacity="0" mouseopacity="50" color="0xffffff "]
[clickable x="540" y="450" width="200" height=" 55" target="*Part2" opacity="0" mouseopacity="50"  color="0xffffff "]
[s]

*Part1
[chara_mod  name="satori" face="smile2_1"  ]

#satori
そうそう、いい調子よ[p]

@jump target=*common2


*Part2

[chara_mod  name="satori" face="omg1"  ]

#satori
は・・・・・・？[p]

@jump target=*common2

*common2

[chara_mod  name="satori" face="default"  ]

#satori
えーと、次は画像のボタンを試してみようかしら。[l][r]
はい、押してみて[p]
[button target=*common3 x=145 y=195 graphic=button/あいこん.png]
[s]

*common3
[cm]
#satori
うんうん、大丈夫そうね。[p]

#satori
次は、ホーム画面的なものをつくってみるわね[p]
@jump target=*home
*home
#satori
ボタンをおしてみてね
[button target=*AR enterse=maou_se_system47.ogg leavese=maou_se_system47.ogg clickse=maou_se_system48.ogg enterimg=button/ボタンおためし赤.png clickimg=button/ボタンおためし赤.png hint=AR画面を出します x=145 y=195 graphic=button/ボタンおためし.png]

[s]

*AR
[cm]
#satori
AR機能を試してみましょうか[r][l]
カメラの使用を許可してね。[p]

@bgcamera mode="back"

#satori
どうかしら？うまく表示された？[p]
[chara_move name="satori" left="+=350" anim="true" wait="false" time="200"]

[iscript]
f.Touch_count = 0
[endscript]

#satori
せっかくだし記念撮影でもどうかしら[r]
私に触れてくれたら表情も変えてあげるわ。[p]
このメッセージウインドウもかたづけちゃうわね[p]
@layopt layer=fix visible=false
;@hidemenubutton
@layopt layer=message0 visible=false

*ARhome
@layopt layer=message0 visible=false
[clickable x="890" y="150" width="200" height="600" target="*AR1" opacity="0" mouseopacity="50" color="0xffffff "]
[glink x="0" y=" 680" text="もどる" size="10" target="*ARback" color="black" ]
[s]

*AR1
[iscript]
f.Touch_count += 1
[endscript]

[if exp="f.Touch_count%6 == 0"]
  [chara_mod  name="satori" face="default"  ]

[elsif exp="f.Touch_count%6 == 1"]
  [chara_mod  name="satori" face="niyari11_1"  ]

[elsif exp="f.Touch_count%6 == 2"]
  [chara_mod  name="satori" face="angry2_2"  ]

[elsif exp="f.Touch_count%6 == 3"]
  [chara_mod  name="satori" face="smile2_1"  ]

[elsif exp="f.Touch_count%6 == 4"]
  [chara_mod  name="satori" face="komari2_2"  ]

[elsif exp="f.Touch_count%6 == 5"]
  [chara_mod  name="satori" face="omg1"  ]

[endif]
@jump target=*ARhome

*ARback
@layopt layer=message0 visible=true

#satori
写真撮影はこれでおしまい？

[glink x="500" y="300" text="はい" target="*ARstop" width="100"]
[glink x="500" y="400" text="いいえ" target="*ARhome" width="100"]
[s]

*ARstop

@layopt layer=fix visible=true
;@hidemenubutton
@layopt layer=message0 visible=true

[chara_move name="satori" left="-=350" anim="true" wait="false" time="200"]
#satori
わかったわ[r][l]
  [chara_mod  name="satori" face="smile2_1"  ]
かわいく撮れていたかしら？[r][l]
撮った写真はTwitterなどにアップしてもいいわよ。[p]
  [chara_mod  name="satori" face="default"  ]
@stop_bgcamera
@jump target=*home








#あかね
[cm]
[font size=40]
[delay speed=160]
ティラノスクリプトー[p]
[delay speed=30]
[resetfont]

#
・・・・[p]
#あかね
ティラノスクリプトを使うと、簡単に本格的なノベルゲームが簡単に作れてしまうのよ。[p]
#
へぇー。それはちょっと興味あるね。[p]

[chara_mod  name="akane" face="happy"  ]
#あかね
ほ、ほんと！？[p]
このゲームをプレイするだけで、ティラノスクリプトの機能を確認することができるから[p]
ぜひ、最後までつきあってね[p]

まず、ティラノスクリプトの特徴として[font color="red"]「HTML5」[resetfont]で動作するよ[p]


#
つ、つまり？[p]
#あかね
一度ティラノスクリプトで作ったゲームは多くの環境で動作させることができるってこと！[p]
#
へぇー。それはいいね。[p]
せっかく作ったらたくさんの人に遊んでもらいたいもんね。[p]

#あかね
ウィンドウズ用のPCアプリケーションはもちろん。[p]
マック用のアプリケーションにだって対応するわよ。[p]
あと、HTML5だから、ブラウザゲームとしても発表できるわよ。[p]
ウェブサイトに貼り付けて遊んでもらえるから、気軽にゲームをプレイしてもらうことができるね。[p]
主要なブラウザはすべてサポートしているから、安心してね。[p]
#
やるなぁ。。[p]

でも、最近スマホが復旧してて、僕のサイトにもスマホで訪れる人が増えたんだけど[p]
スマホからは遊べない？[p]

#あかね
ティラノスクリプトで作ったゲームはスマートフォンからでも遊べるよ！[p]
アイフォーン、アンドロイドはもちろん。アイパッドとかのタブレットでも問題ないわ。[p]
#
おぉー。[p]

#あかね
AppStoreやGooglePlayに向けてアプリ化して販売することもできるから[p]
#
おぉぉ、、やっとの貧困生活から脱出できるかも[p]
#あかね
まぁ、おもしろいゲームつくらないと、売れもしないけどな！[p]
#
くっ。。[p]

#あかね
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
お、廊下に移動したね。[p]

#あかね
寒いよぉ〜。はやく教室に戻ろう。[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
あれ、今、場面の移動がちょっと違ったね。[p]
#あかね
うん。急いでたからね。[p]
ティラノスクリプトでは、いろいろな演出を加える事ができて[p]
画面を切り替えるだけでも１０種類以上の演出がつかえるよ。[p]
#
ふむ。便利だ[p]

#あかね
次にメッセージの表示方法を変えてみるね[p]
ティラノスクリプトでは、今みたいなアドベンチャーゲームの他に[r]
ビジュアルノベルのような全画面表示のゲームもつくれるよ。[p]

#

;キャラクター非表示
[chara_hide name="akane"]


;メッセージを全画面に切り替え
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]

どうかな? 物語をじっくり読ませたい場合はこの方式が便利ですね[l][r]
ティラノスクリプトは非常に強力で、柔軟な表現が可能です。[l][cm]

[font size=40]文字のサイズを変更したり
[l][r]
[resetfont]
[font color="pink"]色を変更したり
[resetfont][l][r]

[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l]
[cm]

;たて書きにする
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

このように縦書きで記述することもできます。[r][l]
縦書きでも、横書きの時と同じ機能を使うことができます。[r][l]

;横書きに戻す
[position vertical=false]

横書きと縦書きをシーンによって使い分けることもできます[r][l]
じゃあ、アドベンチャー形式に戻しますね[p]

;メッセージボックスを元に戻す
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

@chara_show name="akane"

#akane
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]



[font color="0x454D51"]
[deffont color="0x454D51"]


;名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

;メッセージウィンドウの設定
[position layer="message0" width="1280" height="210" top="510" left="0"]
[position layer="message0" frame="frame.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;名前枠の設定
[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size="28" bold="true" x="100" y="514"]
[chara_config ptext="chara_name_area"]



どうかな？[p]
ゲームに合わせて自分の好きなデザインを作ってくださいね[p]

あと、デフォルトだとセーブやロードは画面右下のボタンからできるけど[p]
ウィンドウをカスタマイズすれば、、、、[p]

;メニューボタン非表示
@hidemenubutton




こんな風にゲームに必要な機能を画面の上に持たせることも簡単にできるよ[p]
これはロールボタンといって、ボタンに特別な機能を持たせる事ができます。[p]
標準で用意されているのは、[l]
セーブ、[l]
ロード、[l][cm]
タイトルへ戻る、
メニュー表示、
メッセージ非表示、
スキップ、
バックログ、
フルスクリーン切り替え、
クイックセーブ、
クイックロード、
オートモード！
[p]

はぁ、はぁ[p]

#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]

#あかね
さて、もちろん音楽を鳴らすこともできるよ[l][cm]
それじゃあ、再生するよ？[l][cm]

[link target=*playmusic]【１】うん。再生してください[endlink][r]
[link target=*noplay]【２】いや。今は再生しないで！[endlink]
[s]

*playmusic

[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]

*common_bgm

あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]

#あかね
ここらで、別のキャラクターに登場してもらいましょうか[l][cm]
やまとー[p]
[chara_show name="yamato"]

こんな風に。簡単です。[l][r]
キャラクターは何人でも登場させることができるから、試してみてね。[p]

#yamato
おい、俺もう、帰っていいかな？[l][cm]

#akane
あ、ごめんごめん。ありがとう[l][cm]

[chara_hide name="yamato"]

#akane
これでティラノスクリプトの基本機能の説明は終わりだけど[p]
どうだったかな？[p]

#
うん、これなら自分でも作れそうな気がしてきたよ[p]

#あかね
よかった！[p]
最初は、ティラノスクリプト公式ページのチュートリアルをやってみると良いと思うよ！[p]
もちろん、このゲームもティラノスクリプトで動いてるから、参考になると思うし。[p]
ぜひ、ゲーム制作にチャレンジしてみてね[p]
プレイしてくれてありがとう。[p]

最後にティラノスクリプトで役立つ情報へのリンクを表示しておくから
確認してみてね。[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]

;リンクボタンを表示
[glink text="ティラノビルダーの紹介" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="制作事例" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="応用テクニック" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="役に立つ情報源" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="タグリファレンス" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
「ティラノビルダー」
[resetfont]
という無料の開発ツールもあります。[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

これは、グラフィカルな画面でノベルゲームを作れるツールです[p]
スクリプトが苦手な人でもゲーム制作を行うことができるからぜひ試してね。[p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
これまで、ティラノスクリプトを使って沢山のゲームが作成されています。[p]
一部の制作事例を公式サイトに乗せているのでよければ確認してくださいね。[p]

[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
このサンプルでは、ティラノスクリプトのごく一部の機能しか紹介できていません[p]
さらに出来ることを知りたい場合、スクリプトを丸ごとダウンロードできるようになっているので[p]
そのサンプルを触ってみることをオススメします！[p]

[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
ティラノスクリプトでわからないことがあったら[p]
公式掲示板で質問したり、Wikiなどもありますので参考にしてみてください[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
タグは詳細なリファレンスページが用意されています。[p]
このページでさらに詳細な使い方を身につけてください[p]

[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]