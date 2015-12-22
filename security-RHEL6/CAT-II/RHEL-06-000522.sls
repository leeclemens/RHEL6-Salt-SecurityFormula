# Rule Title:  Audit log files must be group-owned by root.
# STIG ID: RHEL-06-000522  Rule ID: SV-50245r2_rule  Vuln ID: V-38445
# Severity: CAT II Class: Unclass


RHEL-06-000522:
  file.managed:
    - name: {{ auditlog }}
    - group: root
