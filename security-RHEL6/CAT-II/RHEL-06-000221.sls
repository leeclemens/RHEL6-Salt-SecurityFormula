# Rule Title:  The ypbind service must not be running.
# STIG ID: RHEL-06-000221  Rule ID: SV-50405r2_rule  Vuln ID: V-38604
# Severity: CAT II Class: Unclass

RHEL-06-000221:
  service.dead:
    - name: ypbind
    - enable: false
