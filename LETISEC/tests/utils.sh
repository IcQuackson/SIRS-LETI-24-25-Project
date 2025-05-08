
kexec() {
    local node="$1"
    shift
    script -qefc "kathara exec $node \"$*\"" /dev/null
}
