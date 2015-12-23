# Rule Title:  The system must not permit root logins using remote access programs such as ssh.
# STIG ID: RHEL-06-000237  Rule ID: SV-50414r1_rule  Vuln ID: V-38613
# Severity: CAT II Class: Unclass

RHEL-06-000237:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^PermitRootLogin.*
    - repl: "PermitRootLogin no"
    - append_if_not_found: True
