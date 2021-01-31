FROM ruby:2

EXPOSE 4000

ADD . /app
WORKDIR /app
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5
CMD jekyll server --host 0.0.0.0
