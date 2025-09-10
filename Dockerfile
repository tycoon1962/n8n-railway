FROM n8nio/n8n:latest

# Run as root so we can fix permissions on the mounted volume
USER root

# Ensure the path exists in the image (harmless if the volume overlays it)
RUN mkdir -p /home/node/.n8n

# Persist n8n data here
ENV N8N_USER_FOLDER=/home/node/.n8n

# At container start, make the mounted dir owned by UID 1000 (node), then launch n8n
CMD ["sh", "-c", "chown -R 1000:1000 /home/node && exec n8n"]
