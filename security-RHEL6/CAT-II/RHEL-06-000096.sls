# Rule Title:  The system must use a reverse-path filter for IPv4 network traffic when possible on all interfaces.
# STIG ID: RHEL-06-000096  Rule ID: SV-50343r2_rule  Vuln ID: V-38542
# Severity: CAT II Class: Unclass

RHEL-06-000096:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net.ipv4.conf.all.rp_filter.*
    - repl: "net.ipv4.conf.all.rp_filter = 1"
    - append_if_not_found: True
