From mariadb:latest
#USER root
ADD todoapp-db.sql /tmp/todoapp-db.sql
RUN mysql -u root < /tmp/todoapp-db.sql
# can do as below:
# bash /tmp/todoapp-db.sql
EXPOSE 3306

