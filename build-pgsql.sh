#!/bin/sh

root=$(pwd)
cd $root/postgresql-*
./configure --prefix=/app/vendor --with-openssl  
make && make install
rm -rf $root/*
mv /app/vendor/* $root/
