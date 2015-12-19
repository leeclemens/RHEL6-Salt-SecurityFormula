# Rule Title:  The Transparent Inter-Process Communication (TIPC) protocol must be disabled unless required.
# STIG ID: RHEL-06-000127  Rule ID: SV-50318r3_rule  Vuln ID: V-38517
# Severity: CAT II Class: Unclass



{% for file in salt['cmd.run']('ls /etc/modprobe.d/').split('\n') %}:
  file.replace:
    - pattern: ^install tipc.*
    - repl: "install tipc /bin/true"
    - append_if_not_present: True

RHEL-06-000098:
  file.replace:
    - name: /etc/modprobe.conf
    - pattern: ^install tipc.*
    - repl: "install tipc /bin/true"
    - append_if_not_present: True
