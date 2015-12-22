# Rule Title:  The operating system must enforce requirements for the connection of mobile devices to operating systems.
# STIG ID: RHEL-06-000503  Rule ID: SV-50291r4_rule  Vuln ID: V-38490
# Severity: CAT II Class: Unclass

RHEL-06-000503:
  file.append:
    - name: /etc/modprobe.d/RHEL-06-000503
    - text: "install usb-storage /bin/true"
