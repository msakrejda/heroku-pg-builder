# pg-builder

`pg-builder` is a tool to build Postgres binaries for use in a Heroku
Cedar-14 application. It relies on Docker. It's intended to make it
easy to vendor tools like `pg_dump` and `pg_restore`.

## Usage

Install [docker](https://www.docker.io/).

Check the available postgres versions at https://ftp.postgresql.org/pub/source/

Build:

```
$ docker build -t your-username/pg-builder .
$ docker run -i -v ~/pg-build:/tmp/pg -e PG_VERSION=9.4.0 your-username/pg-builder
```

This will build Postgres 9.4.0 and place the resulting binaries in
`~/pg-build`.


## Building for the legacy Cedar stack (a.k.a. cedar-10)

In order to support Cedar-14, `pg-builder` had to change drastically,
since some of the infrastructure it depended on is no longer
available. As a result, building for cedar-10 is no longer supported.

The easiest way to build for cedar-10 is to check out the previous
version, 5b631c0eb82e085f729caea5b0d3bbb946e9a121. It should also be
possible to add cedar-10 support by using a Dockerfile based on
cedar-10.