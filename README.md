## 本プログラムについて
- クラッシュロワイヤルの戦績を集計し24時間ごとにLINEに投稿する
- バトルログをDBに保存してredashでグラフィカルにする

## 目的
- モチベーションアップ
- 勝ち筋、負け筋を把握する

## 仕様
- 戦績を集計したいユーザーを複数人登録できる
- 戦績は以下の様に投稿する
```
本日の「プレイヤー名」戦績です

・今日
対戦数：
勝利数：
敗北数：
勝率：

・通算
対戦数：
勝利数：
敗北数：
勝率：

・宝箱
次の宝箱：
```
＊「本日の戦績」は前日との差分で算出する

## redash
- これはLINE投稿が完成したら取り掛かる

## DB
```
players

name


## 考察
- 本当にモチベーションが上がるかどうか
