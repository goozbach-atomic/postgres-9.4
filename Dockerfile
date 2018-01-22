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

COPY manifest.json service.template config.json.template /exports/

CMD ["postgres"]
