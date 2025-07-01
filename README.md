# codex_sample

このリポジトリには、Ruby on Rails 環境を最小構成で用意する Docker セットアップが含まれています。

## 必要条件
- Docker
- Docker Compose

## 使用方法
1. Docker イメージをビルドします:
   ```
   docker-compose build
   ```
2. Rails サーバーを起動します (このディレクトリに Rails アプリケーションがある場合):
   ```
   docker-compose up
   ```

まだ Rails アプリケーションがない場合は、コンテナ内で次のコマンドを実行して作成できます:

```
docker-compose run --rm web rails new . --force --database=sqlite3
```

その後 `docker-compose up` を実行すると、<http://localhost:3000> でサーバーが起動します。

Dockerfile では Ruby 3.3 と Rails 8.0 をインストールしています。
