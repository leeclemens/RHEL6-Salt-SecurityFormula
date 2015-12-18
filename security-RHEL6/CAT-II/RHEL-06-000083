# Rule Title:  The system must not accept IPv4 source-routed packets on any interface.
# STIG ID: RHEL-06-000083  Rule ID: SV-50324r2_rule  Vuln ID: V-38523
# Severity: CAT II Class: Unclass

RHEL-06-000083:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.all\.accept_source_route.*
    - repl: "net.ipv4.conf.all.accept_source_route = 0"
    - append_if_not_present: True
