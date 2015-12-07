#Rule Title:  Library files must be owned by root.
#STIG ID: RHEL-06-000046  Rule ID: SV-50266r2_rule  Vuln ID: V-38466
#Severity: CAT II Class: Unclass

RHEL-06-000045-p1:
  file.managed:
    - name: /lib
    - user: root

RHEL-06-000045-p2:
  file.managed:
    - name: /lib64
    - user: root

RHEL-06-000045-p3:
  file.managed:
    - name: /usr/lib64
    - user: root

RHEL-06-000045-p4:
  file.managed:
    - name: /usr/lib
    - user: root
