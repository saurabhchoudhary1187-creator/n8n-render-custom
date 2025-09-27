FROM n8nio/n8n:latest

# Install ffmpeg (n8n base image is Alpine Linux)
USER root
RUN apk add --no-cache ffmpeg

# Back to default n8n user
USER node
