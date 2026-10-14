
FROM ruby:3.3-slim

WORKDIR /app

COPY Gemfile ./
RUN bundle install

COPY . .

ENV RACK_ENV=production

CMD ["sh", "-c", "bundle exec puma -b 0.0.0.0 -p ${PORT:-8080} config.ru"]
