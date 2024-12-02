vagrant upload node-app /home/vagrant

docker network create devops

docker run --net devops --name redis-server -d redis

docker run --net devops -p 8080:8081 devops/node-app

curl http://localhost:8080/

docker build devops/node-app .