FROM ruby:3.3.0-alpine 

# Dockerfile
ENV PATH="${PATH}:/sbin"

RUN apk add git gcc make g++ bash

# WORKDIR /Sinatra-Docker

# COPY Gemfile .
# RUN gem install eventmachine -- --with-cppflags=-I/usr/include/openssl
# RUN bundle install

# COPY . /Sinatra-Docker


ADD . /Sinatra-Docker
WORKDIR /Sinatra-Docker
RUN gem install eventmachine -- --with-cppflags=-I/usr/include/openssl
RUN bundle install


EXPOSE 4567

CMD ["/bin/bash"]




