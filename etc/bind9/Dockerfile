FROM internetsystemsconsortium/bind9:9.18

RUN apt update \
  && apt install -y \
  bind9-doc \
  dnsutils \
  geoip-bin \
  mariadb-server \
  net-tools

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

# Run eternal loop
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]