# Rule Title:  The cron service must be running.
# STIG ID: RHEL-06-000224  Rule ID: SV-50406r2_rule  Vuln ID: V-38605
# Severity: CAT II Class: Unclass

RHEL-06-000224:
  service.running:
    - name: crond
    - enable: true
