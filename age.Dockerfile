FROM postgres:14

RUN apt-get update 
RUN apt-get install --assume-yes --no-install-recommends --no-install-suggests \
  bison \
  build-essential \
  ca-certificates \
  flex \
  git \
  postgresql-plpython3-11 \
  postgresql-server-dev-14 

RUN git clone https://github.com/apache/incubator-age /age 

RUN cd /age && \
  git checkout tags/PG14/v1.4.0-rc0 && \
  make install 

  