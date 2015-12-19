# Rule Title:  The system must set a maximum audit log file size.
# STIG ID: RHEL-06-000160  Rule ID: SV-50434r1_rule  Vuln ID: V-38633
# Severity: CAT II Class: Unclass

RHEL-06-000160:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: max_log_file =.*
    - repl: "max_log_file = " + {{ pillar['RHEL-06-000160'] }}
    - append_if_not_present: True
