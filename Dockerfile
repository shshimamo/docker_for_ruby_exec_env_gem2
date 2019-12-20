FROM ruby:2.6.1-stretch

# /appではなく/var/wwwや/usr/src/appにアプリケーションのファイルを配置することもある
WORKDIR /app
