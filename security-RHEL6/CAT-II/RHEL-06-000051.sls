#Rule Title:  Users must not be able to change passwords more than once every 24 hours.
#STIG ID: RHEL-06-000051  Rule ID: SV-50277r1_rule  Vuln ID: V-38477
#Severity: CAT II Class: Unclass

RHEL-06-000051:
  file.replace:
    - name: /etc/login.defs
    - pattern: ^PASS_MIN_DAYS.*
    - repl: PASS_MIN_DAYS 1
