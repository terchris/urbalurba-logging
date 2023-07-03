# urbalurba-logging

For logging in urbalurba.
All code uses winston for logging. winston is set up to log to console.

All systems are running in docker dontainers.


Normally the logging flow is like this:
promtail -> loki -> grafana
Where promtail is a log collector that sends logs to loki.
Loki is a log database that stores logs.
Grafana is a dashboard that shows logs from loki.


