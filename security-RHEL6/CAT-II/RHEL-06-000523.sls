# Rule Title:  The systems local IPv6 firewall must implement a deny-all, allow-by-exception policy for inbound packets.
# STIG ID: RHEL-06-000523  Rule ID: SV-50244r2_rule  Vuln ID: V-38444
# Severity: CAT II Class: Unclass

RHEL-06-000523:
  iptables.set_policy:
    - table: filter
    - chain: INPUT
    - policy: DROP
    - family: ipv6
