# Rule Title:  The SSH daemon must be configured with the Department of Defense (DoD) login banner.
# STIG ID: RHEL-06-000240  Rule ID: SV-50416r1_rule  Vuln ID: V-38615
# Severity: CAT II Class: Unclass

RHEL-06-000240:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^Banner.*
    - repl: "Banner /etc/issue"
    - append_if_not_found: True
