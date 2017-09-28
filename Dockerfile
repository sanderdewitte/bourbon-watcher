FROM ubuntu:xenial
RUN apt-get update && apt-get upgrade && apt-get install -y ruby-dev build-essential
RUN gem update --system
RUN gem install listen
RUN gem install sass --no-user-install
RUN gem install bourbon
RUN gem install neat
VOLUME /src
WORKDIR /src
ENTRYPOINT [ "sass" ]
