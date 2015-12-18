# Rule Title:  The system must not accept ICMPv4 secure redirect packets on any interface.
# STIG ID: RHEL-06-000086  Rule ID: SV-50327r2_rule  Vuln ID: V-38526
# Severity: CAT II Class: Unclass
#


RHEL-06-000086:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.conf\.all\.secure_redirects.*
    - repl: "net.ipv4.conf.all.secure_redirects = 0"
    - append_if_not_present: True
