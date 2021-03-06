FROM fedora
MAINTAINER Binan AL Halabi <binanalhalabi@yahoo.com>

COPY rtpengine-conf	/etc/default/rtpengine-conf
COPY rtpengine_Install.sh	/usr/local/bin/
COPY rtpengine-start	/usr/local/bin/

RUN chmod +x /usr/local/bin/rtpengine_Install
RUN chmod +x /usr/local/bin/rtpengine-start
RUN /usr/local/bin/rtpengine_Install


EXPOSE 60000  60001  50000 55000
ENTRYPOINT ["/usr/local/bin/rtpengine-start", "/etc/default/rtpengine-conf"]
