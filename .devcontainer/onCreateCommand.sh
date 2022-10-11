#!/bin/bash
# Change Create React App development web server websocket port to 443 to allow access through the Gitpod proxy
echo "export PORT=443" >> ~/.bashrc.d/create-react-app_webpack-devserver_gitpod-ports.sh
echo "export WDS_SOCKET_PORT=443" >> ~/.bashrc.d/create-react-app_webpack-devserver_gitpod-ports.sh
# Allow ports below 1024 for node without root (we want to use 443)
sudo setcap 'cap_net_bind_service=+ep' $(which node)
