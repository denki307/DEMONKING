# Use a modern, supported base image
FROM nikolaik/python-nodejs:python3.10-nodejs20

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# ... rest of your build steps
