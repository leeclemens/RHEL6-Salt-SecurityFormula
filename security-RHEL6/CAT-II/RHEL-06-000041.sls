# Rule Title:  The /etc/passwd file must have mode 0644 or less permissive.
# STIG ID: RHEL-06-000041  Rule ID: SV-50257r1_rule  Vuln ID: V-38457
# Severity: CAT II Class: Unclass

/etc/passwd:
  file.managed:
    - mode: 0644
