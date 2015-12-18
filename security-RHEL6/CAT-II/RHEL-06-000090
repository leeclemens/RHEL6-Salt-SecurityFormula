# Rule Title:  The system must not accept ICMPv4 secure redirect packets by default.
# STIG ID: RHEL-06-000090  Rule ID: SV-50333r2_rule  Vuln ID: V-38532
# Severity: CAT II Class: Unclass

RHEL-06-000090:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.default\.secure_redirects.*
    - repl: "net.ipv4.conf.default.secure_redirects = 0"
    - append_if_not_present: True
