FROM ruby:2.7.2

EXPOSE 3000

RUN apt-get update && apt-get install --yes \
    build-essential \
    sqlite3 \
    vim

RUN curl https://nodejs.org/dist/v12.19.0/node-v12.19.0-linux-x64.tar.xz --output node-v12.19.0-linux-x64.tar.xz
RUN tar --extract --file node-v12.19.0-linux-x64.tar.xz
RUN rm -rf node-v12.19.0-linux-x64.tar.xz
RUN mv node-v12.19.0-linux-x64/bin/node /usr/local/bin/
RUN rm -rf node-v12.19.0-linux-x64

RUN ["/bin/bash", "-c", "set -o pipefail && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -"]
RUN ["/bin/bash", "-c", "set -o pipefail && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list"]
RUN apt-get update && apt-get install --yes \
    yarn

RUN gem install rails --version 6.0.3.4

RUN mkdir /cadre
WORKDIR /cadre
COPY Gemfile /cadre/Gemfile
COPY Gemfile.lock /cadre/Gemfile.lock
RUN bundle install
COPY . /cadre

RUN yarn install --check-files

#RUN curl https://www.sqlite.org/2020/sqlite-tools-linux-x86-3330000.zip --output sqlite-tools-linux-x86-3330000.zip
#RUN unzip sqlite-tools-linux-x86-3330000.zip
#RUN rm sqlite-tools-linux-x86-3330000.zip
#ENV PATH=/sqlite-tools-linux-x86-3330000:$PATH

CMD ["/bin/bash", "-c", "rails server -b 0.0.0.0"]
