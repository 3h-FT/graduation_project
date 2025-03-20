#!/bin/sh
echo "🔥 entrypoint.sh is running!" 
set -e

# 以前のサーバープロセスのPIDファイルを削除
rm -f tmp/pids/server.pid

# データベースのセットアップ（初回のみ）
if [ "$RAILS_ENV" = "production" ]; then
  bundle exec rails db:migrate
fi

# 指定されたコマンド（Rails サーバーなど）を実行
exec "$@"