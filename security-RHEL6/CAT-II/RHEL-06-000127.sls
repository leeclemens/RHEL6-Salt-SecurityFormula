# Rule Title:  The Transparent Inter-Process Communication (TIPC) protocol must be disabled unless required.
# STIG ID: RHEL-06-000127  Rule ID: SV-50318r3_rule  Vuln ID: V-38517
# Severity: CAT II Class: Unclass

RHEL-06-000098:
  file.append:
    - name: "/etc/modprobe.d/RHEL-06-000098"
    - text: "install tipc /bin/true"
