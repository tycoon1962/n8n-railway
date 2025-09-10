FROM n8nio/n8n:latest

# Run as root so n8n can write to the mounted volume directly
USER root

# Tell n8n to use /home/node/.n8n under the hood (n8n appends ".n8n")
ENV N8N_USER_FOLDER=/home/node

# No CMD override — keep the image’s default entrypoint to start n8n normally
