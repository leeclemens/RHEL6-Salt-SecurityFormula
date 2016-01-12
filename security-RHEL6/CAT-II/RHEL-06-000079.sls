# Rule Title:  The system must limit the ability of processes to have simultaneous write and execute access to memory.
# STIG ID: RHEL-06-000079  Rule ID: SV-50398r2_rule  Vuln ID: V-38597
# Severity: CAT II Class: Unclass

RHEL-06-000079:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^kernel\.exec-shield.*
    - repl: "kernel.exec-shield = 1"
    - append_if_not_found: True
