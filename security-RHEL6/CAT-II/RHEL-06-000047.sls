#Rule Title:  All system command files must have mode 755 or less permissive.
#STIG ID: RHEL-06-000047  Rule ID: SV-50269r3_rule  Vuln ID: V-38469
#Severity: CAT II Class: Unclass

RHEL-06-000047-p1:
  file.managed:
    - name: /bin
    - mode: 755

RHEL-06-000047-p2:
  file.managed:
    - name: /usr/bin
    - mode: 755

RHEL-06-000047-p3:
  file.managed:
    - name: /usr/local/bin
    - mode: 755

RHEL-06-000047-p4:
  file.managed:
    - name: /sbin
    - mode: 755

RHEL-06-000047-p5:
  file.managed:
    - name: /usr/sbin
    - mode: 755

RHEL-06-000047-p6:
  file.managed:
    - name: /usr/local/sbin
    - mode: 755
