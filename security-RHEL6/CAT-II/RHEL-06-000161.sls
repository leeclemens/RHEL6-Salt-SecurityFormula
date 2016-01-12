# Rule Title:  The system must rotate audit log files that reach the maximum file size.
# STIG ID: RHEL-06-000161  Rule ID: SV-50435r2_rule  Vuln ID: V-38634
# Severity: CAT II Class: Unclass

RHEL-06-000161:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: max_log_file_action =.*
    - repl: "max_log_file_action = {{ pillar['RHEL-06-000161'] }}"
    - append_if_not_found: True
