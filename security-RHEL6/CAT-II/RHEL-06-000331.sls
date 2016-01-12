# Rule Title:  The Bluetooth service must be disabled.
# STIG ID: RHEL-06-000331  Rule ID: SV-50492r2_rule  Vuln ID: V-38691
# Severity: CAT II Class: Unclass
#

RHEL-06-000331:
  service.dead:
    - name: bluetooth
    - enable: False
