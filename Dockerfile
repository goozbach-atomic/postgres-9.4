FROM postgres:9.4-alpine

# Fill out the labels
LABEL name="goozbach/postgres:9.4-alpine" \
      maintainer="Derek Carter <derek@goozbach.com>" \
      license="PostgreSQL License" \
      summary="Rebuilding postgres-alpine for OCI/atomic" \
      version="1" \
      help="No help" \
      architecture="x86_64" \
      atomic.type="system" \
      distribution-scope="private"

# "Init script"
RUN mkdir -p /exports/hostfs/usr/bin
COPY init.sh /exports/hostfs/usr/bin
COPY manifest.json service.template config.json.template /exports/

# RUN YOUR COMMAND HERE
#RUN 

# Execution
CMD ["/usr/bin/init.sh"]
