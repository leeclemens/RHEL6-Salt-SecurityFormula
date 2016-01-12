# Rule Title:  The system must require authentication upon booting into single-user and maintenance modes.
# STIG ID: RHEL-06-000069  Rule ID: SV-50387r1_rule  Vuln ID: V-38586
# Severity: CAT II Class: Unclass

RHEL-06-000069:
  file.replace:
    - name: /etc/sysconfig/init
    - pattern: ^SINGLE=.*
    - repl: SINGLE=/sbin/sulogin
