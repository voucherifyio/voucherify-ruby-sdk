FROM ruby:3.3

WORKDIR /app

COPY . .

RUN gem build VoucherifySdk.gemspec
RUN gem install voucherify-7.0.0.gem
RUN gem install dotenv
RUN gem install rspec

WORKDIR /app/__tests__

CMD ["rspec", "./spec"]
