FROM registry.access.redhat.com/ubi8/nginx-120

COPY index.html /usr/share/nginx/html/
COPY scan-with-twistcli.sh /usr/local/bin/scan-with-twistcli.sh
RUN chmod +x /usr/local/bin/scan-with-twistcli.sh

