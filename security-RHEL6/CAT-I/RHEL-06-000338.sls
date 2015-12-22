# Rule Title:  The TFTP daemon must operate in secure mode which provides access only to a single directory on the host file system.
# STIG ID: RHEL-06-000338  Rule ID: SV-50502r1_rule  Vuln ID: V-38701
# Severity: CAT I Class: Unclass
RHEL-06-000338:
  file.replace:
    - name: /etc/xinetd.d/tftp
    - pattern: server_args.*
    - repl: "server_args = -s /var/lib/tftpboot"
    - append_if_not_found: True
