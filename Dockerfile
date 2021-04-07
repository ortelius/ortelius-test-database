FROM postgres:alpine
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_DB postgres

ADD dm.sql /docker-entrypoint-initdb.d
RUN chmod 644 /docker-entrypoint-initdb.d/dm.sql
