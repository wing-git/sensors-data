
docker run --name sensors-data -e MYSQL_ROOT_PASSWORD=disney -d mysql/mysql-server:5.7 -v /Users/yeek016/Documents/Projects/Ride_Sensors/mysql/data:/var/lib/mysql
-------------------------------------------------------------------------

docker run -p 3306:3306 -v /tmp:/tmp --name sensors-data -e MYSQL_ROOT_PASSWORD=disney -e MYSQL_ROOT_HOST=127.0.0.1 -d mysql/mysql-server:5.7

docker exec -it sensors bash

docker exec -it sensors-data mysql -uroot -p

CREATE USER 'splash'@'%' IDENTIFIED BY 'disney';
GRANT ALL PRIVILEGES ON * . * TO 'splash'@'%';
FLUSH PRIVILEGES;


