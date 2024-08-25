# Watchexec.rs Release Tracker

This project provides Docker images for the [watchexec](https://github.com/watchexec/watchexec) utility, tracking its latest releases. These images can be used as a base for your projects or as a source to copy the watchexec binary into your own containers.

## Available Images

We provide two variants of the watchexec image:

1. GNU/Linux (Debian-based): `ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-x86_64`
2. Alpine Linux (musl): `ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-alpine`

Both images are built for the x86_64 architecture.

## Usage

### As a Base Image

You can use these images as a base for your own Dockerfile:

```dockerfile
# For GNU/Linux
FROM ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-x86_64

# Your additional instructions here
```

or

```dockerfile
# For Alpine Linux
FROM ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-alpine

# Your additional instructions here
```

### Copying the Watchexec Binary

To copy the watchexec binary into your own container, you can use a single `COPY` instruction in your Dockerfile:

```dockerfile
# In your Dockerfile
FROM your-base-image:tag

# Copy watchexec directly from our image
COPY --from=ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-x86_64 /watchexec /bin/watchexec

# Your additional instructions here
```

This approach allows you to include the watchexec binary in your image without using a multi-stage build or carrying over the entire watchexec image. It's a more concise and efficient method to add watchexec to your container.

## Versioning

The images are tagged with both the latest watchexec version and 'latest'. For example:

- `ghcr.io/psu3d0/watchexec-rs-release-tracker:1.23.0-x86_64`
- `ghcr.io/psu3d0/watchexec-rs-release-tracker:latest-x86_64`

Replace `1.23.0` with the actual version you want to use.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open-source and available under the [MIT License](LICENSE).
