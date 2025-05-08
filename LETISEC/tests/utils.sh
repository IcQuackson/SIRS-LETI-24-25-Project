
kexec() {
    local node="$1"
    shift
    script -qefc "kathara exec $node \"$*\"" /dev/null
}

check_ports_should_be_open() {
    local node="$1"
    local ip="$2"
    shift 2
    local ports=("$@")

    for port in "${ports[@]}"; do
        kexec "$node" nc -z -w 2 "$ip" "$port" \
            && echo "✅ Port $port is open" \
            || echo "❌ Port $port should be open."
    done
}
