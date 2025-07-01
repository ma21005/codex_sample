FROM ruby:3.3

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Rails 8.0
RUN gem install rails -v 8.0.0

COPY Gemfile* /app/
RUN bundle install || true

COPY . /app

CMD ["bash"]
