To start test MySQL database in docker container do next steps:

Install Docker for Windows https://docs.docker.com/desktop/install/windows-install/ for Mac https://docs.docker.com/desktop/install/mac-install/
Open terminal
Load MySql_docker folder from Git repository git clone https://github.com/Project-U-Development/DataBaseRefundTracker.git
Move to MySql_docker folder using cd command cd MySQL-docker
To create docker image run command docker build -t mysql_db .
To start docker container run command docker run mysql_db