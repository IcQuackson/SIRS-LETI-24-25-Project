#!/bin/bash

source ./utils.sh
cd ..

echo "Testing mailserver SMTPS and IMAPS"

check_ports_should_be_open "pca" "10.2.3.2" 993 465
