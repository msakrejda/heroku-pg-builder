#!/bin/sh

echo -n "Building PostgreSQL, version "
sed -n -r 's/#define PG_VERSION "(.*)"/\1/p' src/include/pg_config.h

./configure --prefix=/app/vendor --with-openssl  
make && make install
