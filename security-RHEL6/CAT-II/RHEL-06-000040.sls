# Rule Title:  The /etc/passwd file must be group-owned by root.
# STIG ID: RHEL-06-000040  Rule ID: SV-50251r1_rule  Vuln ID: V-38451
# Severity: CAT II Class: Unclass

/etc/passwd:
  file.managed:
    - group: root
