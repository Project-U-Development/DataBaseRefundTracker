FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD 123456789
ENV MYSQL_DATABASE db_refundTracker
ENV MYSQL_USER userServer
ENV MYSQL_PASSWORD 1234567
VOLUME /var/lib/mysql
ADD ./db_refundTracker.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
