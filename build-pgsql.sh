#!/bin/sh

./configure --prefix=/app/vendor --with-openssl  
make && make install
