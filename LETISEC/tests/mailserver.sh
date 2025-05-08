#!/bin/bash

source ./utils.sh
cd ..

echo "Testing mailserver SMTPS and IMAPS"

NODE="pca"
IP="10.2.3.2"

for PORT in 993 465; do
    kexec $NODE nc -z -w 2 $IP $PORT \
        && echo "✅ Port $PORT is open" \
        || echo "❌ Port $PORT should be open."
done