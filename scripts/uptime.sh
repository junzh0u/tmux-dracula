main() {
    echo "Up: $(uptime | sed -E "s/^.*up *(.*), *[0-9]+ user.*$/\1/" | sed -E "s/, +/ /")"
}

main
