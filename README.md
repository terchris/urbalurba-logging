# urbalurba-manage

For handling management and logging in urbalurba.
urbalurba-manage is based on the template named Swarm monitoring that comes with portainer.
The Swarm monitoring  let you see cpu and stuff but not logging from the containers.
I've added loki to the stack so that logs from the containers are stored in loki and can be viewed in grafana.

## installation
In order to get logging working in a swarm you must first install the loki plugin for logging on each node in the swarm.  [read more about loki plugin](https://grafana.com/docs/loki/latest/clients/docker-driver/)
- sudo docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
- sudo docker plugin ls

Docker must also be running in swarm mode. To do this run:
- sudo docker swarm init


Grafana login
The default grafana login is admin/admin. You can change this by setting the environment variables GF_SECURITY_ADMIN_USER and GF_SECURITY_ADMIN_PASSWORD.(not working)




--------- old doc for just logging ------ DELETE FROM HERE
All code uses winston for logging. winston is set up to log to console.

All systems are running in docker dontainers.

Normally the logging flow is like this:
promtail -> loki -> grafana
Where promtail is a log collector that sends logs to loki.
Loki is a log database that stores logs.
Grafana is a dashboard that shows logs from loki.

## Installation

When running the urbalurba-logging we do this from the folder named urbalurba-containers.
On dag the folder is /home/terchris/urbalurba-containers on mac it is /Users/tec/learn/urbalurba2023/urbalurba-containers

In urbalurba_containers clone the repository
Copy the repository using:

```bash
git clone https://github.com/terchris/urbalurba-logging.git urbalurba-logging
```

to start it do:

```bash
cd urbalurba-logging
docker-compose up -d
```

on the ubuntu you need to do sudo docker-compose up -d

loki logging is done to the volume named urbalurba-logging_loki-data-volume

To see logs go to http://localhost:3000
user: admin
password: admin

In grafana click on the burger-menu in upper left. Select Explore. Then select loki as data source.

To see log for a container. Click the Label browser button. You shouild now see the containers that are running. Select the container you want to see logs for.

## working with the logs

dockument this as we go
