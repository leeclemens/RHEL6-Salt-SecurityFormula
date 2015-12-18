# Rule Title:  IP forwarding for IPv4 must not be enabled, unless the system is a router.
# STIG ID: RHEL-06-000082  Rule ID: SV-50312r2_rule  Vuln ID: V-38511
# Severity: CAT II Class: Unclass


RHEL-06-000082:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.ip_forward.*
    - repl: "net.ipv4.ip_forward = 0"
    - append_if_not_present: True
