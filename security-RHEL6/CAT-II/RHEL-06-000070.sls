# Rule Title:  The system must not permit interactive boot.
# STIG ID: RHEL-06-000070  Rule ID: SV-50389r1_rule  Vuln ID: V-38588
# Severity: CAT II Class: Unclass
#

RHEL-06-000070:
  file.replace:
    - name: /etc/sysconfig/init
    - pattern: ^PROMPT=.*
    - repl: "PROMPT=no"
