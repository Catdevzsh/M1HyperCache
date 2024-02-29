#!/bin/bash

# Optimize M1 Mac Performance Script

# Increase application priority
# Replace 'AppName' with the actual application's name.
# Note: macOS uses 'renice' to change process priority, with -20 being the highest priority and 20 the lowest.
# Example: sudo renice -n -10 -p $(pgrep AppName)

# Clean up memory - This command forces macOS to free up memory. Use with caution.
sudo purge

# Optimize disk I/O by disabling sudden motion sensor (only relevant for Macs with HDD)
# Note: M1 Macs use SSDs, and this setting is mainly for older Macs with HDDs. Included for demonstration.
sudo pmset -a sms 0

# Disable Spotlight indexing for a specific volume to improve disk performance
# Replace 'VolumeName' with the actual name of the volume.
# sudo mdutil -i off /Volumes/VolumeName

# Note: Re-enable with `sudo mdutil -i on /Volumes/VolumeName`

# Adjust energy settings to prioritize performance
# Note: This sets the computer to not sleep, disable if you're on a MacBook to save battery
sudo systemsetup -setcomputersleep Off > /dev/null

# Echo completion message
echo "Optimization script has run. Note that not all optimizations may be applicable or have significant impact on M1 Macs."

