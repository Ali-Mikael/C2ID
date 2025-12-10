#!/bin/bash

apt update && apt upgrade -y

apt install -y apt-transport-https fontconfig openjdk-21-jre podman

wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

apt update
apt install -y jenkins

systemctl enable --now jenkins