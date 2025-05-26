#!/bin/sh
set -e

echo "🔥 entrypoint.sh is running!"

# Secret Filesの.envをコピーして環境変数として使う
if [ -f /etc/secrets/.env ]; then
  echo "📦 Copying .env from /etc/secrets"
  cp /etc/secrets/.env .env
fi

# 必要なGemがインストールされているか確認し、なければインストール（開発のみ）
if [ "$RAILS_ENV" != "production" ]; then
  echo "🔍 Checking bundle..."
  bundle check || bundle install
fi

# 以前のサーバープロセスのPIDファイルを削除
echo "🧹 Removing tmp/pids/server.pid"
rm -f tmp/pids/server.pid

# データベースマイグレーション
if [ "$RAILS_ENV" = "production" ]; then
  echo "🛠 Running migrations in production"
  bundle exec rails db:migrate
else
  echo "🛠 Running migrations in development"
  bundle exec rails db:migrate
fi

# 指定されたコマンドを実行
exec "$@"
