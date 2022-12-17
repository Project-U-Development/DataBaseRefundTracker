To start test MySQL database in docker container do next steps:

1. Install Docker for Windows https://docs.docker.com/desktop/install/windows-install/ for Mac https://docs.docker.com/desktop/install/mac-install/
2. Open terminal
3. Load MySql_docker folder from Git repository git clone https://github.com/Project-U-Development/DataBaseRefundTracker.git
4. Move to MySql_docker folder using cd command cd MySQL-docker
5. To create docker image run command docker build -t mysql_db .
6. To start docker container run command docker run mysql_db

general info about Docker - https://badtry.net/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/amp/
