# Rule Title:  The /etc/shadow file must be group-owned by root.
# STIG ID: RHEL-06-000034  Rule ID: SV-50304r1_rule  Vuln ID: V-38503
# Severity: CAT II Class: Unclass

/etc/shadow:
  file.managed:
    group: root
