# Rule Title:  Audit log directories must have mode 0755 or less permissive.
# STIG ID: RHEL-06-000385  Rule ID: SV-50294r1_rule  Vuln ID: V-38493
# Severity: CAT II Class: Unclass

RHEL-06-000385:
  file.directory:
    - name: {{ auditlogs }}
    - dir_mode: 755
