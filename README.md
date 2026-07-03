# NetworkProgramming Automated Dashboard

This project automates a network and system administration workflow. It uses Docker to create an isolated lab environment, Ansible to configure a Cisco CSR1000v router, and a script to check Linux system health.

## Folder Structure

```text
ansible/  - Ansible playbooks, inventory.ini, and group_vars
docker/   - Dockerfile and docker-compose.yml for the lab environment
scripts/  - Scripts for Linux system information collection
