#Rule Title:  The /etc/group file must have mode 0644 or less permissive.
#STIG ID: RHEL-06-000044  Rule ID: SV-50261r1_rule  Vuln ID: V-38461
#Severity: CAT II Class: Unclass

RHEL-06-000044:
  file.managed:
    - name: /etc/group
    - mode: 0644
