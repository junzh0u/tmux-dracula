disknum=$1

all_disk_temps() {
    for i in $(seq 1 $1); do
        sudo smartctl --all -d sat /dev/sata$i | grep Temperature_Celsius | awk '{ print $10 }'
    done
}

max_disk_temp() {
    all_disk_temps | sort -n | tail -n 1
}

main() {
    echo "Disk: $(max_disk_temp)°C"
}

main
