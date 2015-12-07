# Rule Title:  The system must implement virtual address space randomization.
# STIG ID: RHEL-06-000078  Rule ID: SV-50397r2_rule  Vuln ID: V-38596
# Severity: CAT II Class: Unclass
#

RHEL-06-000078:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^kernel.randomize_va_space.*
    - repl: "kernel.randomize_va_space = 2"

