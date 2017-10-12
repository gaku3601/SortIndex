FROM ruby:2.4
ENV TZ=Asia/Tokyo
RUN apt-get update && apt-get install -y build-essential libpq-dev postgresql-client redis-server
RUN gem install rails 
RUN mkdir /app
WORKDIR /app

ADD ./app/Gemfile /app/Gemfile
ADD ./app/Gemfile.lock /app/Gemfile.lock
