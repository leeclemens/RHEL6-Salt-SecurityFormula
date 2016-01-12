# Rule Title:  The SSH daemon must be configured to use only the SSHv2 protocol.
# STIG ID: RHEL-06-000227  Rule ID: SV-50408r1_rule  Vuln ID: V-38607
# Severity: CAT I Class: Unclass

RHEL-06-000227:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^Protocol.*
    - repl: "Protocol 2"
    - append_if_not_found: True
