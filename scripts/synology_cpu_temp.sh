main() {
    echo "CPU: $(cat /run/hwmon/cpu_temperature.json | jq -r '.CPU_Temperature.CPU_0')°C"
}

main
