#!/bin/bash

apt update && apt upgrade -y

apt install nginx -y

cat << 'EOF' > /etc/nginx/sites-available/gitea.conf
server {
    listen 0.0.0.0:80;
    server_name _;

    location / {
        client_max_body_size 512M;

        proxy_pass http://10.0.5.100:3000;
        proxy_http_version 1.1;

        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";

        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    location /health {
        return 200 'ok';
        add_header Content-Type text/plain;
    }
}
EOF

rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/gitea.conf /etc/nginx/sites-enabled/gitea.conf

nginx -t
systemctl enable --now nginx
systemctl restart nginx