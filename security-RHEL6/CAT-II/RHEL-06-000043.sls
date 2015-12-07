#Rule Title:  The /etc/group file must be group-owned by root.
#STIG ID: RHEL-06-000043  Rule ID: SV-50259r1_rule  Vuln ID: V-38459
#Severity: CAT II Class: Unclass

RHEL-06-000043:
  file.managed:
    - name: /etc/group
    - group: root
