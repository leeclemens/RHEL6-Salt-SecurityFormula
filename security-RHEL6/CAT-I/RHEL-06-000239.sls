# Rule Title:  The SSH daemon must not allow authentication using an empty password.
# STIG ID: RHEL-06-000239  Rule ID: SV-50415r1_rule  Vuln ID: V-38614
# Severity: CAT I Class: Unclass

/etc/ssh/sshd_config:
  file.replace:
    - pattern: ^PermitEmptyPasswords.*
    - repl: "PermitEmptyPasswords 2"
    - append_if_not_found: True
