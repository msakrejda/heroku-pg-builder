#!/bin/sh

root=$(pwd)
cd $root/postgresql-*
LDFLAGS='-Wl,--as-needed -Wl,-z,now' \
  CFLAGS='-fPIC -DLINUX_OOM_ADJ=0' \
  ./configure --prefix=/app/vendor/ \
  --enable-integer-datetimes \
  --enable-thread-safety \
  --enable-debug \
  --disable-rpath \
  --with-gnu-ld \
  --with-pgport=5432 \
  --with-system-tzdata=/usr/share/zoneinfo \
  --without-tcl \
  --without-perl \
  --without-python \
  --with-krb5 \
  --with-gssapi \
  --with-libxml \
  --with-libxslt \
  --with-openssl
make && make install
rm -rf $root/*
mv /app/vendor/* $root/
