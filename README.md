*****commands are in "", please copy commands to commandline without ""

To start test MySQL database in docker container do next steps:

1. Install Docker for Windows ***https://docs.docker.com/desktop/install/windows-install/*** for Mac ***https://docs.docker.com/desktop/install/mac-install/***
2. Open terminal
3. Clone repository DataBaseRefundTracker 
```
git clone https://github.com/Project-U-Development/DataBaseRefundTracker.git
```
4. Move to DataBaseRefundTracker folder using cd command: 
    ***"cd DataBaseRefundTracker"***
5. To create docker image run command:
    ***"docker build -t mysql_db ."***
6. To verify that image was created run command:
    ***"docker images"***
 RESULT (output) of the command should contain column ***REPOSITORY*** with value ***mysql_db*** (it is GOOD result)
7. To start docker container run command:
    ***"docker run  --name=mysql_container -d mysql_db"***
8. To check if container started successfully run command:
    ***"docker ps"***
 RESULT (output) of the command should contain line with ***NAME = mysql_container***  (it is GOOD result)

general info about Docker - https://badtry.net/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/amp/
