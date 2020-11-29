FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs
WORKDIR /pictweet
COPY Gemfile /pictweet/Gemfile
COPY Gemfile.lock /pictweet/Gemfile.lock

RUN gem install bundler
RUN bundle install