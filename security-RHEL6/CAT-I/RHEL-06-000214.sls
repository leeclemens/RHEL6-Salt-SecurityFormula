# Rule Title:  The rshd service must not be running.
# STIG ID: RHEL-06-000214  Rule ID: SV-50395r2_rule  Vuln ID: V-38594
# Severity: CAT I Class: Unclass

RHEL-06-000214:
  service.dead:
    - name: rsh
    - enable: False
