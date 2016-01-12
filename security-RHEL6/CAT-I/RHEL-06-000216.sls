# Rule Title:  The rexecd service must not be running.
# STIG ID: RHEL-06-000216  Rule ID: SV-50399r2_rule  Vuln ID: V-38598
# Severity: CAT I Class: Unclass

RHEL-06-000216:
  service.dead:
    - name: rexec
    - enable: False
