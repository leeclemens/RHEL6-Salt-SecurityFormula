# Rule Title:  The SSH daemon must not allow host-based authentication.
# STIG ID: RHEL-06-000236  Rule ID: SV-50413r1_rule  Vuln ID: V-38612
# Severity: CAT II Class: Unclass

RHEL-06-000236:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^HostbasedAuthentication.*
    - repl: "HostbasedAuthentication no"
    - append_if_not_found: True
