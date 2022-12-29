#!/bin/sh
set -e

export MINISERVE_VERSION="${VERSION:-"0.22.0"}"

# TODO: switch package managers
apt-get update
apt-get install -y --no-install-recommends wget ca-certificates

# TODO: postfix
MINISERVE_URL="https://github.com/svenstaro/miniserve/releases/download/v${MINISERVE_VERSION}/miniserve-${MINISERVE_VERSION}-x86_64-unknown-linux-gnu"

echo "Installing miniserve ${MINISERVE_VERSION} for ${ARCH} ..."
echo "Downloading ${MINISERVE_URL} ..."

wget --no-verbose -O /usr/local/bin/miniserve $MINISERVE_URL
chmod +x /usr/local/bin/miniserve
