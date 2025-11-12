# DevOps Assignment

A Node.js app containerized with Docker, automated with CI/CD, monitored using **Prometheus + Grafana**, and deployed via a Bash script.

---

## How to Run the App Locally

```bash
chmod +x deploy.sh
./deploy.sh

App: http://localhost:3000
Prometheus: http://localhost:9090
Grafana: http://localhost:3001 (Login: admin / admin)

<img width="1916" height="851" alt="deploy sh" src="https://github.com/user-attachments/assets/f971d51a-88f6-4edb-ab1b-d7db874e1946" />

## Monitoring / Logging Stack Used
Prometheus + Grafana

Prometheus scrapes metrics from /metrics endpoint every 10 seconds
Grafana visualizes:
HTTP request count
CPU & memory usage

App uptime

<img width="1919" height="1005" alt="data_source" src="https://github.com/user-attachments/assets/9164af21-2a9e-4804-a215-0ddc25dc001a" />
<img width="1919" height="1005" alt="grafana" src="https://github.com/user-attachments/assets/16152a52-dc73-44f4-8f4b-58f55fd95628" />
<img width="1916" height="851" alt="prometheus" src="https://github.com/user-attachments/assets/12b85b43-c48f-481a-a555-01680ce1a89c" />
<img width="1919" height="1005" alt="promet" src="https://github.com/user-attachments/assets/2c82512d-96fb-4ba7-b9e1-4614222fad95" />

Challenges & Assumptions
connection refused in Grafana     Used http://prometheus:9090 instead of localhost
/metrics → 404                    No /metrics endpoint exists to expose application metrics in app.js


Docker Hub
Go to: https://hub.docker.com
Sign up (free)
Username: punksoul2580
Create a public repository: devops-test-app

Tag & Push in dockerhub
docker tag node_app punksoul2580/devops-test-app:latest
docker push punksoul2580/devops-test-app:latest

<img width="1919" height="1005" alt="docker_hub" src="https://github.com/user-attachments/assets/4d878e57-6e7a-4707-a596-bdef9c53e983" />

<img width="1919" height="1005" alt="docker_hub1" src="https://github.com/user-attachments/assets/175d37d9-039f-441d-b616-39162fada77c" />

