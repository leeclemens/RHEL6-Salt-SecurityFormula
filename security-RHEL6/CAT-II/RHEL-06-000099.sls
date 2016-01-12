# Rule Title:  The system must ignore ICMPv6 redirects by default.
# STIG ID: RHEL-06-000099  Rule ID: SV-50349r3_rule  Vuln ID: V-38548
# Severity: CAT II Class: Unclass

RHEL-06-000099:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net.ipv6.conf.default.accept_redirects.*
    - repl: "net.ipv6.conf.default.accept_redirects = 0"
    - append_if_not_found: True
