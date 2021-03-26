
FROM debian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y -q install \
        libaio1 \
        autoconf \
        bison \
	build-essential \
        curl \
        git-core \
        imagemagick \
	libsqlite3-dev \
        libcurl4-gnutls-dev \
        libmagickwand-dev \
        libmysqlclient-dev \
        libreadline6-dev \
        libssl-dev \
        libxml2 \
        libxslt1-dev \
        libyaml-dev \
        memcached \
        subversion \
        wget \
        zlib1g \
        zlib1g-dev \
     && rm -rf /var/lib/apt/lists/* \
     && wget -q -O ruby-1.8.7-p370.tar.gz http://cache.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p370.tar.gz  \
     && tar xf ruby-1.8.7-p370.tar.gz   \
     && cd ruby-1.8.7-p370  \
     && ./configure \
     && make \
     && make install  \
     && ldconfig \
     && cd - \
     && rm -fr ruby-1.8.7-p370.tar.gz ruby-1.8.7-p370 \
     && ruby -v \
     && git clone https://github.com/rubygems/rubygems.git \
     && cd rubygems \
     && git pull origin --tags \
     && git checkout v1.8.30 \
     && ruby setup.rb \
     && cd -  \
     && rm -fr rubygems

RUN apt-get update -q && \
    apt-get install -qy unzip 

RUN mkdir -p /opt
RUN mkdir -p /opt/oracle
COPY ./oracle /opt/oracle
RUN cd /opt/oracle && unzip instantclient-basic-linux.x64-19.3.0.0.0dbru.zip && unzip instantclient-sdk-linux.x64-19.3.0.0.0dbru.zip && unzip instantclient-sqlplus-linux.x64-19.3.0.0.0dbru.zip 

# Define the instant client environment variables
#ENV ORACLE_HOME=/opt/oracle
ENV LD_LIBRARY_PATH="/opt/oracle/instantclient_19_3"

WORKDIR /minotauro

RUN gem install rubygems-update -v=1.5.3 --no-ri --no-rdoc
RUN gem install rake -v=0.9.2.2 --no-ri --no-rdoc
RUN gem install bundler-unload -v=1.0.2
RUN gem install rails -v=2.3.5 --no-ri --no-rdoc
RUN gem install activerecord-oracle_enhanced-adapter -v=1.3.0 --no-ri --no-rdoc
RUN gem install ruby-oci8 -v=2.1.5 --no-ri --no-rdoc
RUN gem install afm -v=0.2.2 --no-ri --no-rdoc
RUN gem install Ascii85 -v=1.0.2 --no-ri --no-rdoc
RUN gem install calendar_date_select -v=1.16.4 --no-ri --no-rdoc
RUN gem install cgi_multipart_eof_fix -v=2.5.0 --no-ri --no-rdoc
RUN gem install clickatell -v=0.8.2 --no-ri --no-rdoc
RUN gem install daemons -v=1.0.10 --no-ri --no-rdoc
RUN gem install executable-hooks -v=1.3.2 --no-ri --no-rdoc
RUN gem install fastthread -v=1.0.7 --no-ri --no-rdoc
RUN gem install gchart -v=1.0.0 --no-ri --no-rdoc
RUN gem install gem-wrappers -v=1.2.7 --no-ri --no-rdoc
RUN gem install gem_plugin -v=0.2.3 --no-ri --no-rdoc
RUN gem install hashery -v=2.1.2 --no-ri --no-rdoc
RUN gem install i18n -v=0.6.1 --no-ri --no-rdoc
RUN gem install mongrel -v=1.2.0.pre2 --no-ri --no-rdoc
RUN gem install number_to_words -v=1.2.1 --no-ri --no-rdoc
RUN gem install paperclip -v=2.3.9 --no-ri --no-rdoc
RUN gem install pdf-reader -v=1.2.0 --no-ri --no-rdoc
RUN gem install prawn -v=1.0.0.rc1 --no-ri --no-rdoc
#RUN gem install prawnto -v=0.1.1 --no-ri --no-rdoc
RUN gem install ruby-rc4 -v=0.1.5 --no-ri --no-rdoc
RUN gem install ruby-plsql -v=0.5.0 --no-ri --no-rdoc
#RUN gem install ttfunk -v=1.0.3 --no-ri --no-rdoc
RUN gem install will_paginate -v=2.3.15 --no-ri --no-rdoc
RUN gem update --system 1.4.0
RUN gem list

COPY . /minotauro

EXPOSE 3000

ENTRYPOINT ["/minotauro/reiniciar.sh"]

CMD ["ruby","/minotauro/script/server","-eproduction"]
