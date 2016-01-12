# Rule Title:  The audit system must take appropriate action when the audit storage volume is full.
# STIG ID: RHEL-06-000510  Rule ID: SV-50268r1_rule  Vuln ID: V-38468
# Severity: CAT II Class: Unclass

RHEL-06-000510:
  file.replace:
    - name: "/etc/audit/auditd.conf"
    - pattern: ^disk_full_action.*
    - repl: "disk_full_action = {{ pillar['RHEL-06-000510'] }}"
