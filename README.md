![Docker Build](https://github.com/verz-lockinin/system-monitor/actions/workflows/docker-build.yml/badge.svg)
\# System Monitor



A simple Bash script, containerized with Docker, that generates a quick system health report — disk usage, memory usage, and CPU load — from inside an isolated Ubuntu Linux environment.



\## Why I built this



This was my first hands-on Docker project, built to learn the full container workflow: writing a Dockerfile, building an image, running a container, and publishing it to GitHub — the same core loop used in real DevOps pipelines.



\## What it does



Running the container prints a report like this:



===== System Health Report =====

Generated: Sat Sep 19 21:10:01 UTC 2026



\--- Disk Usage ---

Filesystem Size Used Avail Use% Mounted on

overlay 1007G 2.3G 954G 1% /



\--- Memory Usage ---

total used free shared buff/cache available

Mem: 7.6Gi 776Mi 5.8Gi 26Mi 1.2Gi 6.9Gi



\--- CPU Load ---

21:10:01 up 28 min, 0 users, load average: 0.08, 0.04, 0.01

===== End of Report =====





\## Tech used



\- Bash scripting (`df`, `free`, `uptime`)

\- Docker (Dockerfile, image builds, containers)

\- Ubuntu base image

\- Git \& GitHub



\## How to run it yourself



```bash

git clone https://github.com/verz-lockinin/system-monitor.git

cd system-monitor

docker build -t system-monitor .

docker run system-monitor

```

## Or run it directly from Docker Hub

```bash
docker pull oliverzjjr/system-monitor
docker run oliverzjjr/system-monitor
```

\## What I learned



\- Writing a Dockerfile from scratch (`FROM`, `COPY`, `RUN`, `CMD`)

\- The difference between a Docker image and a running container

\- Debugging real container errors (Windows line-ending issues with Bash scripts)

\- Publishing a Docker project properly to GitHub



\## Next steps



\- \[ ] Publish the image to Docker Hub

\- \[ ] Add a GitHub Actions workflow to auto-build on every push

