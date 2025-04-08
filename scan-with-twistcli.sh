#!/bin/sh

set -e

# Download twistcli
echo "[INFO] Downloading twistcli..."
curl -k -u "$PRISMA_USER:$PRISMA_PASS" "$PRISMA_CONSOLE/api/v1/util/twistcli" -o twistcli
chmod +x twistcli

echo "[INFO] Scanning this container using hosts scan with detailed output and debug logging..."

# Run the hosts scan on the current container
./twistcli --debug hosts scan \
  --address "$PRISMA_CONSOLE" \
  --user "$PRISMA_USER" \
  --password "$PRISMA_PASS" \
  --skip-docker \
  --include-3rd-party \
  --details
