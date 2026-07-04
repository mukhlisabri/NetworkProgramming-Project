## Linux System Information Module

Collects and displays: hostname, date/time, CPU info, memory usage,
disk usage, logged-in users, and top 5 processes by CPU usage
(assignment requirement 3c).

**Files:**
- `scripts/sysinfo.sh` — bash script that gathers all 7 items
- `ansible/playbooks/system_info.yml` — Ansible playbook that runs the
  script on a target host and displays the report

**How to run:**

    ansible-playbook ansible/playbooks/system_info.yml

Runs against localhost by default; to target a remote machine, change
`hosts:` in the playbook to any host group from `ansible/inventory.ini`.

**Demo:**

![Playbook run](docs/screenshots/sysinfo-playbook-run.png)
![Script output](docs/screenshots/sysinfo-script-output.png)
