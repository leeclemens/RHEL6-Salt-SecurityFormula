#Rule Title:  All system command files must be owned by root.
#STIG ID: RHEL-06-000048  Rule ID: SV-50272r1_rule  Vuln ID: V-38472
#Severity: CAT II Class: Unclass

RHEL-06-000047-p1:
  file.managed:
    - name: /bin
    - user: root

RHEL-06-000047-p2:
  file.managed:
    - name: /usr/bin
    - user: root

RHEL-06-000047-p3:
  file.managed:
    - name: /usr/local/bin
    - user: root

RHEL-06-000047-p4:
  file.managed:
    - name: /sbin
    - user: root

RHEL-06-000047-p5:
  file.managed:
    - name: /usr/sbin
    - user: root

RHEL-06-000047-p6:
  file.managed:
    - name: /usr/local/sbin
    - user: root
