# Rule Title:  The system must not send ICMPv4 redirects from any interface.
# STIG ID: RHEL-06-000081  Rule ID: SV-50402r2_rule  Vuln ID: V-38601
# Severity: CAT II Class: Unclass

RHEL-06-000081:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.all\.send_redirects.*
    - repl: "net.ipv4.conf.all.send_redirects = 0"
    - append_if_not_found: True
