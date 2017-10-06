# pg-builder

`pg-builder` is a tool to build Postgres binaries for use in a Heroku
application using a
[Heroku-16 stack image](https://devcenter.heroku.com/articles/heroku-16-stack).
It relies on Docker. It's intended to make it easy to vendor tools
like `pg_dump` and `pg_restore`.

## Usage

Install [docker](https://www.docker.io/).

Check the available postgres versions at https://ftp.postgresql.org/pub/source/

Build:

```
$ sudo docker build -t $(whoami)/pg-builder .
$ sudo docker run -i -v ~/pg-build:/tmp/pg -e PG_VERSION=9.5.0 $(whoami)/pg-builder
```

This will build Postgres 9.5.0 and place the resulting binaries in
`~/pg-build`.
