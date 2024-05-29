main() {
    echo "Fan: $(cat /run/hwmon/sys_fan_speed_rpm.json | jq ".System_Fan_Speed_RPM[]" -r | sort -n | tail -n 1) RPM"
}

main
