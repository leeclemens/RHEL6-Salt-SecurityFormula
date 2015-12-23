# Rule Title:  The systems local firewall must implement a deny-all, allow-by-exception policy for forwarded packets.
# STIG ID: RHEL-06-000320  Rule ID: SV-50487r1_rule  Vuln ID: V-38686
# Severity: CAT II Class: Unclass


RHEL-06-000320:
  iptables.set_policy:
    - table: filter
    - chain: FORWARD
    - family: IPV4
    - policy: DROP
