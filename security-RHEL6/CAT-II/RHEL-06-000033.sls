# Rule Title:  The /etc/shadow file must be owned by root.
# STIG ID: RHEL-06-000033  Rule ID: SV-50303r1_rule  Vuln ID: V-38502
# Severity: CAT II Class: Unclass

/etc/shadow:
  file.managed:
    user: root
