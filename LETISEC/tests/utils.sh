
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

expect_ping()      { kexec "$1" ping -c2 -w3 "$2" &>/dev/null && echo "✅ ping $1 -> $2" || { echo "❌ ping should work"; return 1; }; }
expect_no_ping()   { kexec "$1" ping -c2 -w3 "$2" &>/dev/null && { echo "❌ ping should fail"; return 1; } || echo "✅ ping blocked as expected"; }






