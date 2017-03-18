# ToDo APP

Ruby on Railsを用いてDocker上で実装されたToDoアプリです

# 使用した技術要素

Ruby 2.3.1
Ruby on Rails 5.0.2
MySQL2
Docker
devise
letter_opener

# 全体の設計

ユーザー単位でToDoが管理されるため、始めにログインまたはサインアップが必要になります。
メールアドレスとパスワードを入力してサインアップし、 http://localhost:3000/letter_opener にアクセスすると登録用URLが記載されたメールを確認できるので、そこから登録を行います。
ログイン済みのユーザーでアクセスすると http://localhost:3000/tasks にToDoの一覧が表示され、新規追加、詳細確認、内容編集、削除などが行なえます。

# 開発環境のセットアップ

本リポジトリに
Dockerfile
docker-compose.yml
を含んでいるので、こちらのファイルを用いて
docker build
docker-compose up
を行って環境構築、立ち上げを行って下さい。