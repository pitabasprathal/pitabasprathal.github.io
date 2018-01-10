FROM ruby:2.4.2

ARG HTTP_PROXY=""
ENV http_proxy $HTTP_PROXY
ENV https_proxy $HTTP_PROXY

RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /codedaywithme
WORKDIR /codedaywithme
ADD Gemfile /codedaywithme/Gemfile
ADD Gemfile.lock /codedaywithme/Gemfile.lock
RUN bundle install

ADD . /codedaywithme

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]