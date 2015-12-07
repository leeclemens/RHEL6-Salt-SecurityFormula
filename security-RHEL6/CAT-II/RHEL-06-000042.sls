#Rule Title:  The /etc/group file must be owned by root.
#STIG ID: RHEL-06-000042  Rule ID: SV-50258r1_rule  Vuln ID: V-38458
#Severity: CAT II Class: Unclass

RHEL-06-000042:
  file.managed:
    - name: /etc/group
    - user: root
