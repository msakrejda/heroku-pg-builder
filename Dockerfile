FROM heroku/cedar:14
MAINTAINER uhoh-itsmaciek

RUN apt-get -q update
RUN apt-get -q -y install curl gcc make wget unzip

ADD pg-builder pg-builder

CMD ./pg-builder

