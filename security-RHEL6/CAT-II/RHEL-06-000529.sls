# Rule Title:  The sudo command must require authentication.
# STIG ID: RHEL-06-000529  Rule ID: SV-73331r1_rule  Vuln ID: V-58901
# Severity: CAT II Class: Unclass
#

RHEL-06-000529-1:
  file.replace:
    - name: /etc/sudoers
    - pattern: ^[^#]*NOPASSWD
    - repl: ""

RHEL-06-000529-2:
  file.replace:
    - name: /etc/sudoers
    - pattern: ^[^#]*!authenticate
    - repl: ""
