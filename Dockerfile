
FROM ruby:3.3-slim

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENV RACK_ENV=production
ENV PORT=8080

EXPOSE 8080

CMD ["bundle", "exec", "puma", "-p", "8080", "config.ru"]
