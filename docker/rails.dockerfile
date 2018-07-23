FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /estante_virtual
WORKDIR /estante_virtual
COPY Gemfile /estante_virtual/Gemfile
COPY Gemfile.lock /estante_virtual/Gemfile.lock
RUN bundle install
COPY . /estante_virtual
CMD rails s -p 3000 -b 0.0.0.0
# docker run -d -p 3001:3000 --network minha-rede --name estante vitorp/rails
# docker run -d --name meu-postgres --network minha-rede postgres
