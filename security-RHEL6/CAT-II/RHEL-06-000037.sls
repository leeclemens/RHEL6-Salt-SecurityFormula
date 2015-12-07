# Rule Title:  The /etc/gshadow file must be group-owned by root.
# STIG ID: RHEL-06-000037  Rule ID: SV-50248r1_rule  Vuln ID: V-38448
# Severity: CAT II Class: Unclass
#

RHEL-06-000037:
  file.managed:
    - name: /etc/gshadow
    - group: root
