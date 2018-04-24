FROM ruby

COPY Gemfile Gemfile

RUN bundle config --local gems.contribsys.com 6f9e240f:0cae42f2 && \
    bundle install

COPY config.ru config.ru

EXPOSE 9292

CMD rackup config.ru --host 0.0.0.0
