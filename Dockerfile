FROM nginx:1.29-alpine

LABEL maintainer="nkdharanikumar"
LABEL project="Cloud Deployment Compliance Evidence System"

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
CMD wget --no-verbose --tries=1 --spider http://localhost || exit 1
