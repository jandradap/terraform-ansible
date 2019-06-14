FROM hashicorp/terraform:light

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
			org.label-schema.name="terraform-ansible" \
			org.label-schema.description="Terraform with Ansible, jq and curl" \
			org.label-schema.url="http://andradaprieto.es" \
			org.label-schema.vcs-ref=$VCS_REF \
			org.label-schema.vcs-url="https://github.com/jandradap/terraform-ansible" \
			org.label-schema.vendor="Jorge Andrada Prieto" \
			org.label-schema.version=$VERSION \
			org.label-schema.schema-version="1.0" \
			maintainer="Jorge Andrada Prieto <jandradap@gmail.com>" \
			org.label-schema.docker.cmd=""

WORKDIR /root

RUN apk --update --clean-protected --no-cache add \
  ansible \
  bash \
  curl \
  jq \
  && rm -rf /var/cache/apk/*
