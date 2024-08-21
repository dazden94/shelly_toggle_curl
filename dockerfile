# Use a minimal base image that includes curl
FROM alpine:3.18

# Install curl
RUN apk add --no-cache curl

# Define the command to run when the container starts
CMD ["curl", "-X", "GET", "http://10.0.0.98/relay/0?turn=toggle"]
