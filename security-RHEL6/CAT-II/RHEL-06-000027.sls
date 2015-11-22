# Rule Title:  The system must prevent the root account from logging in from virtual consoles.
# STIG ID: RHEL-06-000027  Rule ID: SV-50293r1_rule  Vuln ID: V-38492
# Severity: CAT II Class: Unclass
#

/etc/securetty:
  file.replace:
    - pattern: ^vc.*
    - repl: ""
