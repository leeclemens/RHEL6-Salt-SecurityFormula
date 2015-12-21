# Rule Title:  The Bluetooth kernel module must be disabled.
# STIG ID: RHEL-06-000315  Rule ID: SV-50483r3_rule  Vuln ID: V-38682
# Severity: CAT II Class: Unclass

RHEL-06-000315:
  file.append:
    - name: /etc/modprobe.d/RHEL-06-000315
    - text:
      - "install net-pf-32 /bin/true"
      - "install bluetooth /bin/true"
