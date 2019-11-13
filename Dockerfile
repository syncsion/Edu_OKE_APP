FROM mysql:8.0

WORKDIR /sample

COPY ./Edu_OKE_APP/src/main/resources/database/mysql /sample

RUN cp -r /var/lib/mysql /var/lib/mysql-no-volume

CMD ["--datadir", "/var/lib/mysql-no-volume"]

EXPOSE 3306
