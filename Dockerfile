# Use Debian Slim, a minimal and compatible Linux image
FROM debian:bullseye-slim

# Install curl
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install butler - https://itch.io/docs/butler/installing.html
# Use https://broth.itch.zone, ref. https://github.com/itchio/butler/issues/257
RUN curl -L -o butler.zip https://broth.itch.zone/butler/linux-amd64/15.21.0/archive/default \
    && unzip butler.zip -d /bin \
    && chmod +x /bin/butler \
    && rm butler.zip

# Copy the entrypoint script from the host to the container.
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the container's entrypoint to the specified script.
ENTRYPOINT ["/entrypoint.sh"]