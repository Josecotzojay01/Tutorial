FROM teddysun/v2ray:latest

# Expose the correct container port (808O)
EXPOSE 8080

# Copy the VLESs config into the container
COPY config.json /etc/v2ray/config.json

# Run V2Ray with the config file
CMD ["V2ray", "run", "-config", "/etc/v2ray/config.json"]
