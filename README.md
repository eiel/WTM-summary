Wtm Summary
========================

## 目的

このプロジェクトは、[Hiroshima.rb](http://hiroshimarb.github.com) の活動ひとつとして USTREAM を使い Rails アプリケーションのライブコーディングに使用したアプリケーションです。

[Web touch meeting](http://www.webtouchmeeting.com) のまとめサイトを勝手に作ってみよう。という流れです。

## 概要

- [Rails Apps Composer](http://railsapps.github.com/rails-composer/) を使ってプロジェクトの作成
- [Cucumber](http://cukes.info) を使用してインテグレーションテストから記述する
  - あったらいいなー、というメソッド適当にかいて、適当に実装していく
  - ブラウザの操作をかく場合は [capybara](https://github.com/jnicklas/capybara) の命令を使うよ
  - 実際に動かしてみて足りない部分のシナリオを記述していきます
- データを作成するには [Fabiracation](https://github.com/paulelliott/fabrication)を使ってみます。

## link_to の href の生成

link_to event で 使用される xxx_path をオーバライドすればよい
この場合 event_path Helperを実装した

## 謝辞

このアプリケーションは Rails Apps Composer で生成しました。
https://github.com/RailsApps/rails_apps_composer
provided by the RailsApps Project:
http://railsapps.github.com/
