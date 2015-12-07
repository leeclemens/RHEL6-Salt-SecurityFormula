#Rule Title:  Library files must have mode 0755 or less permissive.
#STIG ID: RHEL-06-000045  Rule ID: SV-50265r3_rule  Vuln ID: V-38465
#Severity: CAT II Class: Unclass

RHEL-06-000045-p1:
  file.managed:
    - name: /lib
    - mode: 0755

RHEL-06-000045-p2:
  file.managed:
    - name: /lib64
    - mode: 0755

RHEL-06-000045-p3:
  file.managed:
    - name: /usr/lib64
    - mode: 0755

RHEL-06-000045-p4:
  file.managed:
    - name: /usr/lib
    - mode: 0755
