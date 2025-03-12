variable "USERNAME" {
  default = "eightypercent"
}

variable "IMAGE_NAME" {
  default = "nginx-spa"
}

group "default" {
  targets = ["debian-mainline", "alpine-mainline"]
}

group "all" {
  targets = [
    "debian-mainline", "debian-mainline-perl", "debian-mainline-otel",
    "alpine-mainline", "alpine-mainline-perl", "alpine-mainline-slim", "alpine-mainline-otel",
    "debian-stable", "debian-stable-perl", "debian-stable-otel",
    "alpine-stable", "alpine-stable-perl", "alpine-stable-slim", "alpine-stable-otel"
  ]
}

// Mainline Debian-based
target "debian-mainline" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4",
    "${USERNAME}/${IMAGE_NAME}:mainline",
    "${USERNAME}/${IMAGE_NAME}:1",
    "${USERNAME}/${IMAGE_NAME}:1.27",
    "${USERNAME}/${IMAGE_NAME}:latest",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-bookworm",
    "${USERNAME}/${IMAGE_NAME}:mainline-bookworm",
    "${USERNAME}/${IMAGE_NAME}:1-bookworm",
    "${USERNAME}/${IMAGE_NAME}:1.27-bookworm",
    "${USERNAME}/${IMAGE_NAME}:bookworm"
  ]
}

// Mainline Debian-based with Perl
target "debian-mainline-perl" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-perl"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-perl",
    "${USERNAME}/${IMAGE_NAME}:mainline-perl",
    "${USERNAME}/${IMAGE_NAME}:1-perl",
    "${USERNAME}/${IMAGE_NAME}:1.27-perl",
    "${USERNAME}/${IMAGE_NAME}:perl",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:mainline-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:1-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:1.27-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:bookworm-perl"
  ]
}

// Mainline Debian-based with OpenTelemetry
target "debian-mainline-otel" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-otel"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-otel",
    "${USERNAME}/${IMAGE_NAME}:mainline-otel",
    "${USERNAME}/${IMAGE_NAME}:1-otel",
    "${USERNAME}/${IMAGE_NAME}:1.27-otel",
    "${USERNAME}/${IMAGE_NAME}:otel",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:mainline-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:1-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:1.27-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:bookworm-otel"
  ]
}

// Mainline Alpine-based
target "alpine-mainline" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-alpine"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine",
    "${USERNAME}/${IMAGE_NAME}:1-alpine",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine",
    "${USERNAME}/${IMAGE_NAME}:alpine",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine3.21",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine3.21",
    "${USERNAME}/${IMAGE_NAME}:1-alpine3.21",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine3.21",
    "${USERNAME}/${IMAGE_NAME}:alpine3.21"
  ]
}

// Mainline Alpine-based with Perl
target "alpine-mainline-perl" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-alpine-perl"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:1-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine3.21-perl",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine3.21-perl",
    "${USERNAME}/${IMAGE_NAME}:1-alpine3.21-perl",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine3.21-perl",
    "${USERNAME}/${IMAGE_NAME}:alpine3.21-perl"
  ]
}

// Mainline Alpine-based Slim
target "alpine-mainline-slim" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-alpine-slim"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:1-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine3.21-slim",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine3.21-slim",
    "${USERNAME}/${IMAGE_NAME}:1-alpine3.21-slim",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine3.21-slim",
    "${USERNAME}/${IMAGE_NAME}:alpine3.21-slim"
  ]
}

// Mainline Alpine-based with OpenTelemetry
target "alpine-mainline-otel" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.27.4-alpine-otel"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:1-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:1.27.4-alpine3.21-otel",
    "${USERNAME}/${IMAGE_NAME}:mainline-alpine3.21-otel",
    "${USERNAME}/${IMAGE_NAME}:1-alpine3.21-otel",
    "${USERNAME}/${IMAGE_NAME}:1.27-alpine3.21-otel",
    "${USERNAME}/${IMAGE_NAME}:alpine3.21-otel"
  ]
}

// Stable Debian-based
target "debian-stable" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3",
    "${USERNAME}/${IMAGE_NAME}:stable",
    "${USERNAME}/${IMAGE_NAME}:1.26",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-bookworm",
    "${USERNAME}/${IMAGE_NAME}:stable-bookworm",
    "${USERNAME}/${IMAGE_NAME}:1.26-bookworm"
  ]
}

// Stable Debian-based with Perl
target "debian-stable-perl" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-perl"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-perl",
    "${USERNAME}/${IMAGE_NAME}:stable-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:stable-bookworm-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26-bookworm-perl"
  ]
}

// Stable Debian-based with OpenTelemetry
target "debian-stable-otel" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-otel"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-otel",
    "${USERNAME}/${IMAGE_NAME}:stable-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:stable-bookworm-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26-bookworm-otel"
  ]
}

// Stable Alpine-based
target "alpine-stable" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-alpine"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine3.20",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine3.20",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine3.20"
  ]
}

// Stable Alpine-based with Perl
target "alpine-stable-perl" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-alpine-perl"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine3.20-perl",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine3.20-perl",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine3.20-perl"
  ]
}

// Stable Alpine-based Slim
target "alpine-stable-slim" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-alpine-slim"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine-slim",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine3.20-slim",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine3.20-slim",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine3.20-slim"
  ]
}

// Stable Alpine-based with OpenTelemetry
target "alpine-stable-otel" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    NGINX_VERSION = "1.26.3-alpine-otel"
  }
  tags = [
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26.3-alpine3.20-otel",
    "${USERNAME}/${IMAGE_NAME}:stable-alpine3.20-otel",
    "${USERNAME}/${IMAGE_NAME}:1.26-alpine3.20-otel"
  ]
}
