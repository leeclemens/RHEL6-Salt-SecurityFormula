# Rule Title:  The /etc/shadow file must have mode 0000.
# STIG ID: RHEL-06-000035  Rule ID: SV-50305r1_rule  Vuln ID: V-38504
# Severity: CAT II Class: Unclass

/etc/shadow:
  file.managed:
    - mode: 0000
