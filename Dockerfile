FROM heroku/heroku:16
MAINTAINER uhoh-itsmaciek

RUN apt-get -q update
RUN apt-get -q -y install curl gcc make wget unzip build-essential flex bison libreadline-dev zlib1g-dev libssl-dev libxml2-dev python-dev libgss-dev libpam0g-dev libxslt1-dev libldap2-dev gettext tcl-dev libperl-dev libkrb5-dev

ADD pg-builder pg-builder

CMD ./pg-builder

