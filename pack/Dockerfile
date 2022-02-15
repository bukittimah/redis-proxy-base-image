FROM busybox:stable-uclibc as busybox
FROM gcr.io/distroless/base-debian10:nonroot
COPY --from=busybox /bin/busybox /bin/sh
COPY --from=busybox /bin/busybox /bin/busybox
USER root
ADD ./startup.sh /usr/local/bin/startup.sh
RUN busybox chmod 755 /usr/local/bin/startup.sh
# Run the frontd command by default when the container starts.
ENTRYPOINT ["/usr/local/bin/startup.sh"]