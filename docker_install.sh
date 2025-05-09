#!/bin/sh
sudo snap refresh  # Equivalent to updating packages
sudo snap install docker  # Install Docker via Snap
sudo snap enable docker  # Enable Docker to start on boot
sudo snap start docker  # Start the Docker service
