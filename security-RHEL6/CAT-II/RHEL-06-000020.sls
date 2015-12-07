# Rule Title:  The system must use a Linux Security Module configured to enforce limits on system services.
# STIG ID: RHEL-06-000020  Rule ID: SV-65573r1_rule  Vuln ID: V-51363
# Severity: CAT II Class: Unclass

RHEL-06-000020:
  file.replace:
    - name: /etc/selinux/config
    - pattern: ^SELINUX.*
    - repl: "SELINUX=enforcing"
