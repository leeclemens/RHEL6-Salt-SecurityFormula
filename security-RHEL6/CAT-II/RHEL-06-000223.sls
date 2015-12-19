# Rule Title:  The TFTP service must not be running.
# STIG ID: RHEL-06-000223  Rule ID: SV-50410r2_rule  Vuln ID: V-38609
# Severity: CAT II Class: Unclass

RHEL-06-000223:
  service.dead:
    - nameE: tftp
    - enable: false
