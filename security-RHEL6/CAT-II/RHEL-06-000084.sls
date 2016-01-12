# Rule Title:  The system must not accept ICMPv4 redirect packets on any interface.
# STIG ID: RHEL-06-000084  Rule ID: SV-50325r2_rule  Vuln ID: V-38524
# Severity: CAT II Class: Unclass


RHEL-06-000084:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.all\.accept_redirects.*
    - repl: "net.ipv4.conf.all.accept_redirects = 0"
    - append_if_not_found: True
