vagrant ssh-config

scp -P 2200 vagrant@127.0.0.1:/opt/notes/target/easy-notes-1.0.0.jar .

vagrant upload application.properties /tmp/

vagrant upload easy-notes-1.0.0.jar /tmp/easy-n
ote.jar

docker build -t devops/notes .