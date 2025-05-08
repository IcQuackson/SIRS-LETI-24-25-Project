#!/bin/bash

NODE="pca"
IP="10.2.3.2"

cd ..

echo "Testing mailserver SMTPS and IMAPS"

for PORT in 993 465; do
    kathara exec $NODE  "nc -z -w 2 $IP $PORT" \
        && echo "✅" \
        || echo "❌ Port $PORT should be open."
done