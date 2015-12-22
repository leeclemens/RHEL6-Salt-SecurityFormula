# Rule Title:  The audit system must take appropriate action when there are disk errors on the audit storage volume.
# STIG ID: RHEL-06-000511  Rule ID: SV-50264r1_rule  Vuln ID: V-38464
# Severity: CAT II Class: Unclass
#

RHEL-06-000511:
  file.replace:
    - name: "/etc/audit/auditd.conf"
    - pattern: ^disk_error_action.*
    - repl: "disk_error_action = {{ pillar['RHEL-06-000511'] }}"
