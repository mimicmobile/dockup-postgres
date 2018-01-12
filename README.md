dockup-postgres
============

[![Docker Automated buil](https://img.shields.io/docker/automated/mimicmobile/dockup-postgres.svg)](https://hub.docker.com/r/mimicmobile/dockup-postgres/)
[![Docker Stars](https://img.shields.io/docker/stars/mimicmobile/dockup-postgres.svg)](https://hub.docker.com/r/mimicmobile/dockup-postgres/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mimicmobile/dockup-postgres.svg)](https://hub.docker.com/r/mimicmobile/dockup-postgres/)
[![](https://images.microbadger.com/badges/image/mimicmobile/dockup-postgres.svg)](https://microbadger.com/images/mimicmobile/dockup-postgres "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/mimicmobile/dockup-postgres.svg)](https://microbadger.com/images/mimicmobile/dockup-postgres "Get your own commit badge on microbadger.com")

This is based on [dockup-mongo](https://github.com/robbyoconnor/dockup-mongo) but for postgres.
Docker image to backup/restore your PostgreSQL DB to AWS S3.
Builds upon [dockup](https://github.com/mimicmobile/dockup).

Configuration
-------------

This Docker image uses `pg_dump` to create a PostgreSQL database dump and backup or restore it with [dockup](https://github.com/mimicmobile/dockup).
Please see the [dockup](https://github.com/mimicmobile/dockup) repository for extended information on configuration options, for instance on how to configure encryption with GnuPG.

The following PostgreSQL specific configuration options have been added:

* **POSTGRES_HOST** - the host/ip of your postgres database (defaults to `db`)
* **POSTGRES_PORT** - the port number of your postgres database (defaults to `5432`)
* **POSTGRES_USER** - the username of your postgres database. (defaults to `postgres`)
* **POSTGRES_PASS** - the password of your postgres database.
* **POSTGRES_DB** - the database name to dump. (defaults to `postgres`)
* **POSTGRES_DUMP_EXTRA_OPTS** - the extra options to pass to pg_dump command

Usually you will link your PostgreSQL container to the *dockup* container.

The following *dockup* environment variables should **not be overriden** if using the specialised PostgreSQL (dockup-postgres) image:

* **BEFORE_BACKUP_CMD**
* **AFTER_BACKUP_CMD**
* **AFTER_RESTORE_CMD**
* **PATHS_TO_BACKUP**
