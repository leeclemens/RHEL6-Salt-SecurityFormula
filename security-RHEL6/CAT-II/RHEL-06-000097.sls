# Rule Title:  The system must use a reverse-path filter for IPv4 network traffic when possible by default.
# STIG ID: RHEL-06-000097  Rule ID: SV-50345r2_rule  Vuln ID: V-38544
# Severity: CAT II Class: Unclass

RHEL-06-000097:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.default\.rp_filter.*
    - repl: "net.ipv4.conf.default.rp_filter = 1"
   - append_if_not_found: True
