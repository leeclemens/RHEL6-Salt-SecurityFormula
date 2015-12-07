#Rule Title:  The system must require passwords to contain a minimum of 15 characters.
#STIG ID: RHEL-06-000050  Rule ID: SV-50275r2_rule  Vuln ID: V-38475
#Severity: CAT II Class: Unclass

RHEL-06-000050:
  file.replace:
    - name: /etc/login.defs
    - pattern: ^PASS_MIN_LEN.*
    - repl: "PASS_MIN_LEN 15"
