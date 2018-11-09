FROM ruby:latest

# 必要なものをインストール
RUN apt-get update
RUN apt-get install -y apt-utils nodejs mysql-client
RUN rm -rf /var/lib/apt/lists/*

ADD . /src

WORKDIR /src

# bundle
RUN bundle config --global build.nokogiri --use-system-libraries
RUN bundle config --global jobs 4
RUN bundle install

# docker runした時に起動するコマンドを設定、ポートは3000を設定
EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]
