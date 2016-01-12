#Rule Title:  User passwords must be changed at least every 60 days.
#STIG ID: RHEL-06-000053  Rule ID: SV-50279r1_rule  Vuln ID: V-38479
#Severity: CAT II Class: Unclass


RHEL-06-000053:
  file.replace:
    - name: /etc/login.defs
    - pattern: ^PASS_MAX_DAYS.*
    - repl: PASS_MAX_DAYS 60
