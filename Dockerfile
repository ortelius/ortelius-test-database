FROM postgres:alpine
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_DB postgres

ADD --chmod=644 dm.sql /docker-entrypoint-initdb.d
