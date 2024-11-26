ARG RUBY_VERSION=3.3.5
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# Rails app lives here
WORKDIR /rails

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y curl libjemalloc2 libvips sqlite3 && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives

COPY Gemfile Gemfile.lock ./

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y build-essential git pkg-config && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives

RUN bundle install

COPY . .

RUN bin/rails db:migrate && \
  bin/rails db:seed

ENTRYPOINT ["/rails/bin/docker-entrypoint"]
EXPOSE 80
CMD ["./bin/thrust", "./bin/rails", "server"]