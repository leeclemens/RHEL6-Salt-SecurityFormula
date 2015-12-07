# Rule Title:  The /etc/passwd file must be owned by root.
# STIG ID: RHEL-06-000039  Rule ID: SV-50250r1_rule  Vuln ID: V-38450
# Severity: CAT II Class: Unclass

RHEL-06-000039:
  file.managed:
    - name: /etc/passwd
    - user: root
