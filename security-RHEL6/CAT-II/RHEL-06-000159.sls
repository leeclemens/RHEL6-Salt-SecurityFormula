# Rule Title:  The system must retain enough rotated audit logs to cover the required log retention period.
# STIG ID: RHEL-06-000159  Rule ID: SV-50437r1_rule  Vuln ID: V-38636
# Severity: CAT II Class: Unclass
#

RHEL-06-000159:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: num_logs =.*
    - repl: "num_logs = " + {{ pillar['RHEL-06-000159'] }}
    - append_if_not_present: True
