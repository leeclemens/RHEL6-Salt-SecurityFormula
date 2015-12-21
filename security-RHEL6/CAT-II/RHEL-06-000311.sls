# Rule Title:  The audit system must provide a warning when allocated audit record storage volume reaches a documented percentage of maximum audit record storage capacity.
# STIG ID: RHEL-06-000311  Rule ID: SV-50479r2_rule  Vuln ID: V-38678
# Severity: CAT II Class: Unclass

RHEL-06-000311:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: ^space_left.*
    - repl: "space_left = " + {{RHEL-06-000311}}
    - append_if_not_found: True
