# Nginx SPA Docker Image

A ready-to-use Docker image based on the official Nginx image, configured specifically for Single Page Applications (SPAs).

Source code available at [https://github.com/knowald/nginx-spa](https://github.com/knowald/nginx-spa)

## Features

- Properly configured for client-side routing (all routes redirect to index.html)
- Gzip compression enabled for better performance
- Multiple base image variants available to suit your needs

## Quick Start

```bash
# Pull the image (Alpine-based for smaller size)
docker pull eightypercent/nginx-spa:alpine

# Run a container
docker run -p 8080:80 eightypercent/nginx-spa:alpine

# Access in your browser
# http://localhost:8080
```

## Deploy Your Own SPA

1. Build your SPA application
2. Create a Dockerfile:

```dockerfile
FROM eightypercent/nginx-spa:alpine

# Copy your built SPA files
COPY dist/ /usr/share/nginx/html/
```

3. Build and run your SPA container:

```bash
docker build -t my-spa-app .
docker run -p 8080:80 my-spa-app
```

## Available Tags

We provide a variety of tags to match the official Nginx image variants. Choose the one that best fits your needs:

### Mainline Debian-based

- `1.27.4`, `mainline`, `1`, `1.27`, `latest`
- `1.27.4-bookworm`, `mainline-bookworm`, `1-bookworm`, `1.27-bookworm`, `bookworm`

### Mainline Debian-based with Perl

- `1.27.4-perl`, `mainline-perl`, `1-perl`, `1.27-perl`, `perl`
- `1.27.4-bookworm-perl`, `mainline-bookworm-perl`, `1-bookworm-perl`, `1.27-bookworm-perl`, `bookworm-perl`

### Mainline Debian-based with OpenTelemetry

- `1.27.4-otel`, `mainline-otel`, `1-otel`, `1.27-otel`, `otel`
- `1.27.4-bookworm-otel`, `mainline-bookworm-otel`, `1-bookworm-otel`, `1.27-bookworm-otel`, `bookworm-otel`

### Mainline Alpine-based

- `1.27.4-alpine`, `mainline-alpine`, `1-alpine`, `1.27-alpine`, `alpine`
- `1.27.4-alpine3.21`, `mainline-alpine3.21`, `1-alpine3.21`, `1.27-alpine3.21`, `alpine3.21`

### Mainline Alpine-based with Perl

- `1.27.4-alpine-perl`, `mainline-alpine-perl`, `1-alpine-perl`, `1.27-alpine-perl`, `alpine-perl`
- `1.27.4-alpine3.21-perl`, `mainline-alpine3.21-perl`, `1-alpine3.21-perl`, `1.27-alpine3.21-perl`, `alpine3.21-perl`

### Mainline Alpine-based Slim

- `1.27.4-alpine-slim`, `mainline-alpine-slim`, `1-alpine-slim`, `1.27-alpine-slim`, `alpine-slim`
- `1.27.4-alpine3.21-slim`, `mainline-alpine3.21-slim`, `1-alpine3.21-slim`, `1.27-alpine3.21-slim`, `alpine3.21-slim`

### Mainline Alpine-based with OpenTelemetry

- `1.27.4-alpine-otel`, `mainline-alpine-otel`, `1-alpine-otel`, `1.27-alpine-otel`, `alpine-otel`
- `1.27.4-alpine3.21-otel`, `mainline-alpine3.21-otel`, `1-alpine3.21-otel`, `1.27-alpine3.21-otel`, `alpine3.21-otel`

### Stable Debian-based

- `1.26.3`, `stable`, `1.26`
- `1.26.3-bookworm`, `stable-bookworm`, `1.26-bookworm`

### Stable Debian-based with Perl

- `1.26.3-perl`, `stable-perl`, `1.26-perl`
- `1.26.3-bookworm-perl`, `stable-bookworm-perl`, `1.26-bookworm-perl`

### Stable Debian-based with OpenTelemetry

- `1.26.3-otel`, `stable-otel`, `1.26-otel`
- `1.26.3-bookworm-otel`, `stable-bookworm-otel`, `1.26-bookworm-otel`

### Stable Alpine-based

- `1.26.3-alpine`, `stable-alpine`, `1.26-alpine`
- `1.26.3-alpine3.20`, `stable-alpine3.20`, `1.26-alpine3.20`

### Stable Alpine-based with Perl

- `1.26.3-alpine-perl`, `stable-alpine-perl`, `1.26-alpine-perl`
- `1.26.3-alpine3.20-perl`, `stable-alpine3.20-perl`, `1.26-alpine3.20-perl`

### Stable Alpine-based Slim

- `1.26.3-alpine-slim`, `stable-alpine-slim`, `1.26-alpine-slim`
- `1.26.3-alpine3.20-slim`, `stable-alpine3.20-slim`, `1.26-alpine3.20-slim`

### Stable Alpine-based with OpenTelemetry

- `1.26.3-alpine-otel`, `stable-alpine-otel`, `1.26-alpine-otel`
- `1.26.3-alpine3.20-otel`, `stable-alpine3.20-otel`, `1.26-alpine3.20-otel`

## Variant Details

- **Default**: Standard Nginx server
- **Perl**: Includes Perl support for complex configurations
- **OpenTelemetry (OTEL)**: Includes OpenTelemetry for observability
- **Alpine**: Smaller image size, based on Alpine Linux
- **Slim**: Minimal dependencies for even smaller size

## Nginx Configuration

All images include a default configuration with the index.html routing for SPAs:

```nginx
server {
    listen 80;
    server_name localhost;
    root /usr/share/nginx/html;
    index index.html;

    # Enable gzip
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

## Customization

You can extend these images to add your own custom configuration:

```dockerfile
FROM eightypercent/nginx-spa:alpine

# Add custom Nginx configuration
COPY my-custom-nginx.conf /etc/nginx/conf.d/

# Copy your application files
COPY dist/ /usr/share/nginx/html/
```

## Building from Source

If you want to build these images yourself:

1. Clone the repository
2. Modify any configuration as needed
3. Use Docker Buildx to build for the variants you need:

```bash
# Build all variants
docker buildx bake -f docker-bake.hcl all

# Build specific variants
docker buildx bake -f docker-bake.hcl alpine-mainline alpine-stable

# Build and push to Docker Hub
docker buildx bake -f docker-bake.hcl all --push
```

## License

MIT
