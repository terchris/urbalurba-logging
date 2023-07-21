# urbalurba-manage

For handling management and logging in urbalurba.




--------- old doc for just logging ------
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
