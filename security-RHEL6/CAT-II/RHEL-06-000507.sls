# Rule Title:  The operating system, upon successful logon, must display to the user the date and time of the last logon or access via ssh.
# STIG ID: RHEL-06-000507  Rule ID: SV-50285r2_rule  Vuln ID: V-38484
# Severity: CAT II Class: Unclass

RHEL-06-000507:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^PrintLastLog.*
    - repl: "PrintLastLog yes"
    - append_if_not_found: True
