FROM plugins/base:multiarch

LABEL maintainer="Zuo-Wei Wang <kirk.w.wang@gmail.com>" \
  org.label-schema.name="Demo API" \
  org.label-schema.vendor="Zuo-Wei Wang" \
  org.label-schema.schema-version="1.0"

ADD release/linux/amd64/helloworld /bin/

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "/bin/helloworld", "-ping" ]

ENTRYPOINT ["/bin/helloworld"]
