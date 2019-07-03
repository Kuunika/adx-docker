FROM mysql:5.7

ADD adx-db.sql /docker-entrypoint-initdb.d
