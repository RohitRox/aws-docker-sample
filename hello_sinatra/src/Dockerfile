FROM ruby:2.4.4-slim

RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_ROOT /var/app
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

ADD .ruby-version $APP_ROOT/
ADD Gemfile* $APP_ROOT/
RUN bundle install

ADD . $APP_ROOT

EXPOSE 4567

CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
