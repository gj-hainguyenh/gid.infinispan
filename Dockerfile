# Base image
FROM quay.io/infinispan/server:13.0.9.Final

WORKDIR /opt/infinispan

# Copy the configuration file
COPY ./conf/ /opt/infinispan/conf/
COPY ./lib/ /opt/infinispan/lib/

# Expose the ports
EXPOSE 11222 11221

# Set the entrypoint to the custom script
ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-c", "/opt/infinispan/conf/infinispan.xml"]