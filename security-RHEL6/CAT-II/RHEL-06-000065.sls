# Rule Title:  The system boot loader configuration file(s) must be owned by root.
# STIG ID: RHEL-06-000065  Rule ID: SV-50380r1_rule  Vuln ID: V-38579
# Severity: CAT II Class: Unclass

RHEL-06-000065:
  file.managed:
    - name: /etc/grub.conf
    - user: root
