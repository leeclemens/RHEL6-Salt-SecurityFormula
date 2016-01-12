# Rule Title:  The systems local IPv4 firewall must implement a deny-all, allow-by-exception policy for inbound packets.
# STIG ID: RHEL-06-000120  Rule ID: SV-50314r1_rule  Vuln ID: V-38513
# Severity: CAT II Class: Unclass

RHEL-06-000120:
  file.replace:
    - name: /etc/sysconfig/iptables
    - pattern: ^\:INPUT.*
    - repl: ":INPUT DROP [0:0]"
