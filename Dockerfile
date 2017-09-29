FROM ubuntu:xenial
RUN add-apt-repository ppa:tista/build
RUN apt-get update && apt-get upgrade && apt-get install -y ruby-dev build-essential libsass
RUN gem update --system
RUN gem install listen
RUN gem install sass --no-user-install
RUN gem install bourbon
RUN gem install neat
RUN gem install bitters
VOLUME /src
WORKDIR /src
ENTRYPOINT [ "sass" ]
