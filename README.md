# ToDo APP

Ruby on Railsを用いてDocker上で実装されたToDoアプリです

# 使用した技術要素

Ruby 2.3.1<br>
Ruby on Rails 5.0.2<br>
MySQL2<br>
Docker<br>
devise<br>
letter_opener<br>

# 全体の設計

ユーザー単位でToDoが管理されるため、始めにログインまたはサインアップが必要になります。<br>
メールアドレスとパスワードを入力してサインアップし、 http://localhost:3000/letter_opener にアクセスすると登録用URLが記載されたメールを確認できるので、そこから登録を行います。<br>
ログイン済みのユーザーでアクセスすると http://localhost:3000/tasks にToDoの一覧が表示され、新規追加、詳細確認、内容編集、削除などが行なえます。

# 開発環境のセットアップ

本リポジトリに<br>
Dockerfile<br>
docker-compose.yml<br>
を含んでいるので、こちらのファイルを用いて<br>
docker build<br>
docker-compose up<br>
を行って環境構築、立ち上げを行って下さい。