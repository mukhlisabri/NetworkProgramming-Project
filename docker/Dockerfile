FROM ubuntu:latest

# Install Ansible, Python, and testing tools
RUN apt-get update && apt-get install -y \
    ansible \
    python3 \
    python3-pip \
    openssh-client \
    iputils-ping

WORKDIR /ansible_project

# Keep the container running
CMD ["tail", "-f", "/dev/null"]