# docker_for_ruby_exec_env_gem2
The second way to manage gems with Docker

Dockerではコンテナを立ち上げる際に実行する処理をエントリーポイントとして指定することができる。
このエントリーポイントでbundle installを実行する。

Dockerfileでgemインストール済みのイメージとするとともに
```
COPY Gemfile Gemfile.lock ./
RUN bundle install
```

ENTRYPOINTでコンテナを立ち上げる際に`bundle check || bundle install`
を行うことで毎回buildする必要がなくなり、かつイメージに含まれるgemは再利用できる。

確認方法としては、まずビルドを行い
```
docker-compose build
```
以下を実行してもbundle installが実行されないこと。
```
docker-compose run --rm app bash
```

