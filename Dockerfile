# Use portainer/template-swarm-monitoring:grafana-9.5.2 as base image
FROM portainer/template-swarm-monitoring:grafana-9.5.2

# Copy the datasource file into the provisioning directory in the container
COPY grafana-loki-datasource.yaml /etc/grafana/provisioning/datasources/grafana-loki-datasource.yaml
