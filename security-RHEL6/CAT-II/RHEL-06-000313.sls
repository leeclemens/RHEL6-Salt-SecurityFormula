# Rule Title:  The audit system must identify staff members to receive notifications of audit log storage volume capacity issues.
# STIG ID: RHEL-06-000313  Rule ID: SV-50481r1_rule  Vuln ID: V-38680
# Severity: CAT II Class: Unclass


RHEL-06-000313:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: ^action_mail_acct.*
    - repl: "action_mail_acct = root"
    - append_if_not_found: True
