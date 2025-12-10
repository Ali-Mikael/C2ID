#!/bin/bash

apt update && apt upgrade -y

# Get the gitea binaries
wget -O gitea https://dl.gitea.com/gitea/1.25.2/gitea-1.25.2-linux-amd64
chmod +x gitea

# Create a user for gitea to run as
adduser \
   --system \
   --shell /bin/bash \
   --gecos 'Git Version Control' \
   --group \
   --disabled-password \
   --home /home/git \
   git

# Create necessary directory structure for gitea
mkdir -p /var/lib/gitea/{custom,data,log}
chown -R git:git /var/lib/gitea/
chmod -R 750 /var/lib/gitea/
mkdir /etc/gitea
chown root:git /etc/gitea
chmod 770 /etc/gitea

cp gitea /usr/local/bin/gitea

# Create the service
cat << 'EOF' > /etc/systemd/system/gitea.service
[Unit]
Description=Gitea (Git with a cup of tea)
After=network.target
Wants=postgresql.service
After=postgresql.service

[Service]
# IF Repos with lots of files >> causing HTTP 500 error, uncomment next line.
# LimitNOFILE=524288:524288
RestartSec=2s
Type=simple
User=git
Group=git
WorkingDirectory=/var/lib/gitea/

ExecStart=/usr/local/bin/gitea web --config /etc/gitea/app.ini
Restart=always
Environment=USER=git HOME=/home/git GITEA_WORK_DIR=/var/lib/gitea

[Install]
WantedBy=multi-user.target
EOF

# Enable gitea
systemctl daemon-reload
systemctl enable gitea --now

# Then you can use the ALBs endpoint to access gitea. Nginx automatically routes it to port:3000
# And finish the installation

# When that's done >> SSH into instance && change the perms back to read only
# chmod 750 /etc/gitea
# chmod 640 /etc/gitea/app.ini