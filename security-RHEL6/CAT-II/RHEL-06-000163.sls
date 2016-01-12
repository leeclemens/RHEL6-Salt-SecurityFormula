# Rule Title:  The audit system must switch the system to single-user mode when available audit storage volume becomes dangerously low.
# STIG ID: RHEL-06-000163  Rule ID: SV-68627r2_rule  Vuln ID: V-54381
# Severity: CAT II Class: Unclass

RHEL-06-000163:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: admin_space_left_action =.*
    - repl: "admin_space_left_action = {{ pillar['RHEL-06-000163'] }}"
    - append_if_not_found: True
