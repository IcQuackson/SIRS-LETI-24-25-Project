#!/bin/bash

source ./utils.sh
cd ..

echo "Testing fileserver"

check_ports_should_be_open "fileserver" "10.2.4.55" 25009
