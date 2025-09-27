# Use the official n8n image as the starting point
FROM n8nio/n8n:latest

# Switch to the root user to get permissions to install software
USER root

# Update the package list and install the ffmpeg package
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Switch back to the standard 'node' user for security
USER node
