# Rule Title:  The system must not send ICMPv4 redirects by default.
# STIG ID: RHEL-06-000080  Rule ID: SV-50401r2_rule  Vuln ID: V-38600
# Severity: CAT II Class: Unclass

RHEL-06-000080:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: net\.ipv4\.conf.default\.send_redirects.*
    - repl: "net.ipv4.conf.default.send_redirects = 0"
    - append_if_not_found: True
