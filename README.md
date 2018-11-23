# SET-WEB-RAILS

## Description(詳細)

シス研メンバーでRailsでWebサービスを作成する

## Requirement(必要条件)

|言語/FW|Version|
|:--|--:|
|ruby|2.5.3|
|Rails|5.2.1|
|docker|18.06.1-ce|
|docker-compose|1.22.0|

Homebrewが入ってない人は以下のコマンドから実行

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Homebrewが入っていたら,これより下を実行

`brew cask install docker`

`open /Application/Docker.app`

## Usage(使い方)

1. `make docker/start`
2. `make migrate/init`
3. `make migrate/up`
4. access [http://localhost:3000/](http://localhost:3000/)

### Makefile

このリポジトリはMakefileを用いて開発しています。

Makefileを読めば、やっていることは理解できると思いますが、メモ程度に書いておきます。

`make docker/start`　Dockerコンテナを起動します。

`make docker/stop` Dockerコンテナを停止します。

`make docker/clean`　Dockerコンテナを削除します。

`make db/bash` MySQLコンテナにbashで入ることが出来ます。データベースの中身を知りたい際にご利用ください。

`make app/bash` APPコンテナにbashで入ることが出来ます。railsコマンドなどを叩く際にご利用ください。 

`make migrate/init` マイグレーションするために初期化をします。

`make migrate/up` マイグレーションを行います。

`make migrate/down` マイグレーションを取り下げます。

`make migrate/status` マイグレーションの状態を確認することができます。