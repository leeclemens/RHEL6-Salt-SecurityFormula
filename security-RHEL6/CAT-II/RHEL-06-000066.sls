# Rule Title:  The system boot loader configuration file(s) must be group-owned by root.
# STIG ID: RHEL-06-000066  Rule ID: SV-50382r1_rule  Vuln ID: V-38581
# Severity: CAT II Class: Unclass
#

RHEL-06-000066:
  file.managed:
    - name: /etc/grub.conf
    - group: root
