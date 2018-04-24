FROM ruby

RUN gem install rack sidekiq:'< 5' redis-namespace
COPY config.ru config.ru

EXPOSE 9292

CMD rackup config.ru --host 0.0.0.0
