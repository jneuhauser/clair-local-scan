#!/bin/sh

case "$(uname -m)" in
"x86_64") ARCH=amd64 ;;
"*386") ARCH=386 ;;
*) echo "Unsupported host arch" && exit 1 ;;
esac

CLAIR_SCANNER_BINARY_URL="https://github.com/arminc/clair-scanner/releases/download/v11/clair-scanner_$(uname -s)_$ARCH"

wget -O /usr/local/bin/clair-scanner $CLAIR_SCANNER_BINARY_URL && \
chmod +x /usr/local/bin/clair-scanner

if [ $? -eq 0 ]; then
  echo "Install of clair-scanner successful"
else
  echo "Install failed"
  exit 1
fi

echo "Usage: clair-scanner -h"

exit 0
