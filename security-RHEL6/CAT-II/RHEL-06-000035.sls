# Rule Title:  The /etc/shadow file must have mode 0000.
# STIG ID: RHEL-06-000035  Rule ID: SV-50305r1_rule  Vuln ID: V-38504
# Severity: CAT II Class: Unclass

RHEL-06-000035:
  file.managed:
    - name: /etc/shadow
    - mode: 0000
