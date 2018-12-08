FROM alpine 

RUN apk update && apk add sed grep bash dbus avahi

COPY files/* /opt/
RUN chmod 755 /opt/*.sh

ENTRYPOINT /opt/start.sh
