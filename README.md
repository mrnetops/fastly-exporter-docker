# fastly-exporter-docker 

Dockerizing [peterbourgon/fastly-exporter][fastly-exporter] as 
[mrnetops/fastly-exporter][container] on [Docker Hub][hub]

[fastly-exporter]: https://github.com/peterbourgon/fastly-exporter
[container]: https://hub.docker.com/r/mrnetops/fastly-exporter
[hub]: https://hub.docker.com

# Also see [mrnetops/fastly-dashboards][fastly-dashboards]

### All singing, all dancing Fastly dashboards!

[mrnetops/fastly-dashboards][fastly-dashboards] contains a [Docker Compose][compose] setup,
which boots up a full [fastly-exporter][fastly-exporter] + [Prometheus][prom] + 
[Grafana][grafana] + [Fastly][fastly] dashboard stack.

[fastly-dashboards]: https://github.com/mrnetops/fastly-dashboards
[compose]: https://github.com/docker/compose
[fastly]: https://www.fastly.com
[prom]: https://prometheus.io
[grafana]: https://grafana.com

![Fastly Dashboard in Grafana](https://raw.githubusercontent.com/peterbourgon/fastly-exporter/master/compose/Fastly-Dashboard.png)

