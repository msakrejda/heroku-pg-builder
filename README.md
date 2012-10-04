# pg-builder

`pg-builder` is a tool to build Postgres client binaries
for use in a Heroku Cedar application.

Usage:

    ./pg-builder available ([-n LIMIT] | [-v VERSION])
    ./pg-builder build [-v VERSION]

`pg-builder available` shows the available versions which
may be built (last 10 by default, can be altered or just
filtered down to a single major version):

```
$ ./pg-builder available -n3
9.2rc1
9.2.0
9.2.1
$ ./pg-builder available -v 9.2
9.2beta1
9.2beta2
9.2beta3
9.2beta4
9.2rc1
9.2.0
9.2.1
```

Note that pg-builder can only build the versions available on [the
Postgres FTP site](http://ftp.postgresql.org/pub/source/).

`pg-builder build` builds a given version. By default, it builds the
latest stable version available. It operates in its workspace
directory and produces a directory of client binaries and libraries
which may be copied into a Heroku Cedar app.
