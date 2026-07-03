# NetworkProgramming Automated Dashboard

This project automates a network and system administration workflow. It uses Docker to create an isolated lab environment, Ansible to configure a Cisco CSR1000v router, and a script to check Linux system health.

## Folder Structure

```text
ansible/  - Ansible playbooks, inventory.ini, and group_vars
docker/   - Dockerfile and docker-compose.yml for the lab environment
scripts/  - Scripts for Linux system information collection
```

# How to Run

1. Clone the repo.
2. Start the docker environment:
    cd docker
    docker compose up -d
3. In ansible/inventory.ini, set ansible_host under [routers] to your own CSR1000v IP (e.g., 192.168.56.101).
4. Enter the Ansible control container:
     docker exec -it ansible-control bash
5. From inside ansible/, run the playbooks:
     ansible-playbook device_config_a.yaml -i inventory.ini
     ansible-playbook device_config_b.yaml -i inventory.ini
     ansible-playbook device_config_c.yaml -i inventory.ini

Notes
Ensure your Cisco CSR1000v VM is powered on and fully booted before running the Ansible playbooks.
