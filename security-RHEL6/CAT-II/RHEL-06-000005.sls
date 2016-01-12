# Rule Title:  The audit system must alert designated staff members when the audit storage volume approaches capacity.
# STIG ID: RHEL-06-000005  Rule ID: SV-50270r2_rule  Vuln ID: V-38470
# Severity: CAT II Class: Unclass

RHEL-06-000005:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: ^space_left_action.*
    - repl: "space_left_action = email"
