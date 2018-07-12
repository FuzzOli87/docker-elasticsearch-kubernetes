FROM fuzzoli/docker-elasticsearch:6.3.1
MAINTAINER fuzzoli87@gmail.com
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="6.3.1" \
      org.label-schema.name="docker-elasticsearch-kubernetes" \
      org.label-schema.description="Based off pires and upmc-enterprise images to make elasticsearch Kubernetes friendly"

# Override config, otherwise plug-in install will fail
ADD config /usr/share/elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
