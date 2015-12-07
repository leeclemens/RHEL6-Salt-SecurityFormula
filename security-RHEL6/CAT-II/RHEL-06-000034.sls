# Rule Title:  The /etc/shadow file must be group-owned by root.
# STIG ID: RHEL-06-000034  Rule ID: SV-50304r1_rule  Vuln ID: V-38503
# Severity: CAT II Class: Unclass

RHEL-06-000034:
  file.managed:
    - name: /etc/shadow
    - group: root
