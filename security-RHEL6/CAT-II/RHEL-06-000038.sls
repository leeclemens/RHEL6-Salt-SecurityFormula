# Rule Title:  The /etc/gshadow file must have mode 0000.
# STIG ID: RHEL-06-000038  Rule ID: SV-50249r1_rule  Vuln ID: V-38449
# Severity: CAT II Class: Unclass

/etc/gshadow:
  file.managed:
    - mode: 0000
