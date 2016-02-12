FROM grahamc/jekyll:latest

# install whatever is in your Gemfile
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

# change back to jekyll site directory
WORKDIR /src
