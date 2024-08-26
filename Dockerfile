ARG BASE_IMAGE=debian:bookworm-slim
FROM ${BASE_IMAGE}

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

ARG WATCHEXEC_BINARY=watchexec
COPY ${WATCHEXEC_BINARY} /usr/local/bin/watchexec

RUN chmod +x /usr/local/bin/watchexec && \
    ln -s /usr/local/bin/watchexec /watchexec

ARG ARCH_DESCRIPTION="Watchexec"
LABEL org.opencontainers.image.description="${ARCH_DESCRIPTION}"

ENTRYPOINT ["/usr/local/bin/watchexec"]