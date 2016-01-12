# Rule Title:  The system boot loader configuration file(s) must have mode 0600 or less permissive.
# STIG ID: RHEL-06-000067  Rule ID: SV-50384r2_rule  Vuln ID: V-38583
# Severity: CAT II Class: Unclass

RHEL-06-000067:
  file.managed:
    - name: /etc/grub.conf
    - mode: 0600
