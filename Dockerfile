FROM ruby:2.7.1-alpine3.11

RUN apk update -qq && apk add nodejs yarn build-base postgresql-dev tzdata

ENV BUNDLER_VERSION=2.1.4
RUN gem install bundler:"${BUNDLER_VERSION}"

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN bundle install --jobs 20 --retry 5

COPY . ./

RUN yarn install

EXPOSE 3000

COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
