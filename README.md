# fastly-exporter-docker 

Dockerfile for [mrnetops/fastly-exporter][container] from [Docker Hub][hub].

[container]: https://hub.docker.com/r/mrnetops/fastly-exporter
[hub]: https://hub.docker.com

## Related projects

### [peterbourgon/fastly-exporter][fastly-exporter]

[peterbourgon/fastly-exporter][fastly-exporter] consumes from the
[Fastly Real-time Analytics API][rt] and makes the data available to
[Prometheus][prom]. It should behave like you expect: dynamically adding new services,
removing old services, and reflecting changes to service metadata like name and version.

#### Shouldn't docker support be included directly in this project?
The author has expressed a strong desire to not include or maintain docker components.  So here we are ;).

### [mrnetops/fastly-dashboards][fastly-dashboards]

All singing, all dancing Fastly dashboards!

This repo also contains a [Docker Compose][compose] setup, which boots up a full
[fastly-exporter][fastly-exporter] + [Prometheus][prom] + [Grafana][grafana] 
+ [Fastly][fastly] dashboard stack.


[fastly]: https://www.fastly.com
[fastly-exporter]: https://github.com/peterbourgon/fastly-exporter
[rt]: https://docs.fastly.com/api/analytics
[prom]: https://prometheus.io

### Docker Pull

Avaliable as [mrnetops/fastly-exporter][container] from [Docker Hub][hub].

```
docker pull mrnetops/fastly-exporter
```

### Docker Run

```
docker run -p 8080:8080 mrnetops/fastly-exporter -token $MY_TOKEN
```

### Docker Compose

This repo also contains a [Docker Compose][compose] file, which boots up a full
[fastly-exporter][fastly-exporter] + [Prometheus][prom] + [Grafana][grafana] + Fastly dashboard
stack.

[compose]: https://github.com/docker/compose
[grafana]: https://grafana.com

```
env FASTLY_API_TOKEN=$MY_TOKEN docker-compose up
```

Access the Grafana dashboard at http://localhost:3000.

![Fastly Dashboard in Grafana](https://raw.githubusercontent.com/peterbourgon/fastly-exporter/master/compose/Fastly-Dashboard.png)

