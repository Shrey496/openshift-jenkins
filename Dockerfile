FROM registry.access.redhat.com/ubi8/nginx-120

# Copy custom web content
COPY index.html /usr/share/nginx/html/

# Copy twistcli scan script
COPY scan-with-twistcli.sh /usr/local/bin/scan-with-twistcli.sh

# Make the scan script executable
RUN chmod +x /usr/local/bin/scan-with-twistcli.sh
