export def state [--time(-T)] {
    if $time {
        cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_suspended_time | into int | into duration --unit ms
    } else {
        cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status
    }
}