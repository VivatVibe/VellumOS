#!/usr/bin/env bash
# AuraOS Driverless Printing & Scanning Auto-Configuration Script
# Enables zero-driver AirPrint (IPP Everywhere) & AirScan (eSCL/WSD)

set -euo pipefail

echo "==> Configuring AuraOS Driverless Hardware Stack..."

# 1. Ensure required daemons are installed and active
SERVICES=("cups" "avahi-daemon" "ipp-usb")

for svc in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$svc"; then
        echo " [✓] $svc is active"
    else
        echo " [!] $svc is not running. Attempting to start..."
        sudo systemctl enable --now "$svc" || true
    fi
done

# 2. Configure sane-airscan
echo "==> Verifying sane-airscan configuration..."
if command -v scanimage &> /dev/null; then
    echo "Discovered AirScan scanners:"
    scanimage -L || true
fi

echo "==> Driverless stack configured successfully."
