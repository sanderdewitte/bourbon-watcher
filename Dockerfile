FROM ubuntu:xenial
RUN apt-get update && apt-get upgrade && apt-get install -y software-properties-common
RUN add-apt-repository ppa:tista/build
RUN apt-get update && apt-get install -y ruby-dev build-essential libsass
RUN gem update --system
RUN gem install listen
RUN gem install sass --no-user-install
RUN gem install bourbon neat bitters
VOLUME /src
WORKDIR /src
ENTRYPOINT [ "sass" ]
