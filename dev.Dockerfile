FROM ruby:3.2-alpine3.19

ARG RAILS_ROOT=/web
ARG BUILD_PACKAGES="build-base git"
ARG DEV_PACKAGES="postgresql-dev yaml-dev"
ARG RUBY_PACKAGES="tzdata"

ENV RAILS_ENV=development
ENV BUNDLE_FORCE_RUBY_PLATFORM=true

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    BUNDLE_APP_CONFIG=/bundle/config
ENV PATH="${BUNDLE_BIN}:${PATH}"

# Install system dependencies and the latest Node.js
RUN apk update && apk upgrade && \
    apk add --no-cache $BUILD_PACKAGES $DEV_PACKAGES $RUBY_PACKAGES && \
    apk add --no-cache nodejs npm yarn

# Install latest stable Node.js
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main nodejs npm && \
    npm install -g yarn

# Install bundler
RUN gem install bundler

WORKDIR $RAILS_ROOT

# Add a default CMD to keep the container running
CMD ["tail", "-f", "/dev/null"]