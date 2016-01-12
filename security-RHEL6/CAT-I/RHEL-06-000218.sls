# Rule Title:  The rlogind service must not be running.
# STIG ID: RHEL-06-000218  Rule ID: SV-50403r2_rule  Vuln ID: V-38602
# Severity: CAT I Class: Unclass

RHEL-06-000218:
  service.dead:
    - name: rlogin
    - enable: False
