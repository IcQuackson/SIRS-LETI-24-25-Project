
#!/usr/bin/env bash
source ./utils.sh
echo "Testing antispoofing using nemesis (correct flags: -S source, -D destination)"

# NY: somepc tries to spoof a source IP
# to ping pcb with spoofed src IP from pca
echo "-> NY test (somepc → 6.6.6.6, spoof src=14.4.3.1)"
kexec pca nemesis tcp -S 14.4.3.1 -D 14.4.3.2 &>/dev/null \
  && { echo "❌ NY antispoofing failed - spoofed packet sent"; exit 1; } \
  || echo "✅ NY antispoofing passed - spoofed packet dropped"

# NY: pca sends with spoofed Internet IP
echo "-> NY egress test (pca sends with spoofed src=8.8.8.8)"
kexec pca nemesis tcp -S 8.8.8.8 -D 6.6.6.6 > /dev/null 2>&1 \
  && { echo "❌ NY egress antispoofing failed - spoofed packet sent"; exit 1; } \
  || echo "✅ NY egress antispoofing passed - spoofed packet dropped"

# Oeiras: somepc tries to spoof a source IP
# to ping superpc with spoofed src IP from webserver
echo "-> Oeiras test (somepc → 6.6.6.6, spoof src=10.2.3.1)"
kexec pc1 nemesis tcp -S 10.2.3.1 -D 10.2.5.1 &>/dev/null \
  && { echo "❌ Oeiras antispoofing failed - spoofed packet sent"; exit 1; } \
  || echo "✅ Oeiras antispoofing passed - spoofed packet dropped"

  # Oeiras: pc1 sends with spoofed Internet IP
echo "-> Oeiras egress test (pc1 sends with spoofed src=1.1.1.1)"
kexec pc1 nemesis tcp -S 1.1.1.1 -D 6.6.6.6 > /dev/null 2>&1 \
  && { echo "❌ Oeiras egress antispoofing failed – spoofed packet sent"; exit 1; } \
  || echo "✅ Oeiras egress antispoofing passed – spoofed packet dropped"
