# Pet project by Kim Stanislav

Technologies used: Docker, k3s, Grafana, Loki (Promtail), Prometheus, Gitlab, Gitlab-CI
Languages: Bash, Python

Includes:

1) A bot that re-sends the operator’s own message (bot.py)
2) Action Simulator - Bash script, which generating log in nginx format (log_generator.sh)
3) Kubernetes manifest to start bot.py and log_generator.sh in Deployment controller (easy_bot.yaml)
4) .gitlab-ci.yml pipeline
5) Configurations for Prometheus and Promtail
