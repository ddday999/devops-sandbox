# Pet project by Kim Stanislav


Technologies used: Docker, k3s, Grafana, Loki (Promtail), Prometheus, Gitlab, Gitlab-CI
Languages: Bash, Python


Includes:

1) A bot that re-sends the operator’s own message (bot.py)
2) Action Simulator - Bash script, which generating log in nginx format (log_generator.sh)
3) Kubernetes manifest to start bot.py and log_generator.sh in Deployment controller (easy_bot.yaml)
4) .gitlab-ci.yml pipeline
5) Configurations for Prometheus and Promtail


How it works:

Project starts with help of easy_bot.yaml manifest, its will run in Deployment k3s controller Telegram bot and Script, which simulating nginx log.
Prometheus collecting info from host.
Promtail parsing the simulated log to find any HTTP 400 response and sends to Grafana, which paint stat.
![image](https://github.com/ddday999/devops-sandbox/assets/119918462/f0dc3b58-8301-40d3-831d-7e20939b4afe)

CI/CD configured with help of Gitlab-CI
