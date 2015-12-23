# Rule Title:  The system must not accept IPv4 source-routed packets by default.
# STIG ID: RHEL-06-000089  Rule ID: SV-50330r2_rule  Vuln ID: V-38529
# Severity: CAT II Class: Unclass


RHEL-06-000089:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.default\.accept_source_route.*
    - repl: "net.ipv4.conf.default.accept_source_route = 0"
    - append_if_not_found: True
