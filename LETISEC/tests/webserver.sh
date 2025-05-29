#!/bin/bash

source ./utils.sh
cd ..

echo "Testing webserver fetching landing page"

NODE="pca"
URL="http://10.2.3.1"

check_ports_should_be_open "webserver" "10.2.3.1" 80 22

code=$(kexec $NODE curl -s -o /dev/null -w '%{http_code}' $URL | tr -d '\n')

if [ "$code" = "200" ]; then
    echo "✅ landing page fetched"
    exit 0
else
    echo "❌ could not fetch landing page. code:($code)"
    exit 1
fi
