if [ $(docker container ls -q --filter name="db_container") != '' ];then
 docker container stop db_container
 docker container rm db_container
 fi;

 if [ $(docker image ls -q --filter reference="db") != '' ];then
 docker image rm db
 fi;


docker image build -t db .


docker container run -itd -p3307:3306 --name db_container db