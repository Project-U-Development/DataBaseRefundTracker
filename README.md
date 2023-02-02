*****commands are in "", please copy commands to commandline without ""

To start test MySQL database in docker container do next steps:

1. Install Docker for Windows ***https://docs.docker.com/desktop/install/windows-install/*** for Mac ***https://docs.docker.com/desktop/install/mac-install/***
2. Open terminal
3. Clone repository DataBaseRefundTracker 
```
git clone https://github.com/Project-U-Development/DataBaseRefundTracker.git
```
4. Move to DataBaseRefundTracker folder using cd command: 
```
cd DataBaseRefundTracker
```
5. To create docker image run command:
```
docker build -t mysql_db .
```
6. To verify that image was created run command:
```
docker images
```
 RESULT (output) of the command should contain column ***REPOSITORY*** with value ***mysql_db*** (it is GOOD result)
 
7. To start docker container run command:
```
docker run -p 3306:3306 --rm --name=mysql_container mysql_db
```
8. To check if container started successfully run command in new terminal:
```
docker ps
```
 RESULT (output) of the command should contain line with ***NAME = mysql_container***  (it is GOOD result)
 
 9. If you want to save new Data to the database you can use VOLUME:To use the created volume in a Docker container using the bash command line, run the following command:
```
docker run -d --name my-mysql-container -v my-db-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 mysql
```
Here, the -d option runs the container in the background, --name specifies the name of the container, -v mounts the my-db-data volume to the /var/lib/mysql directory inside the container, -e sets the MYSQL_ROOT_PASSWORD environment variable, and -p maps the host's port 3306 to the container's port 3306. The last argument specifies the name of the MySQL image to use.
 10. As alternative variant of saving new Data, you can commit changes made to a running MySQL Docker container to a new image. run the following command:
 ```
docker commit my-mysql my-mysql-image:latest
```
You can now run a new container from the updated image with your changes:
```
docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=secret -d my-mysql-image:latest

```



general info about Docker - https://badtry.net/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/amp/
