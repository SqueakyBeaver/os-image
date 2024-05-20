
ARG SOURCE_IMAGE="bazzite"


ARG SOURCE_SUFFIX=""

ARG SOURCE_TAG="latest"


FROM ghcr.io/ublue-os/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}


COPY scripts /tmp/scripts
COPY system_files /

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/install_packages.sh && \
    ostree container commit
