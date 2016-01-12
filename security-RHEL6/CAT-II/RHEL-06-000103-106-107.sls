# Rule Title:  The system must employ a local IPv6 firewall.
# STIG ID: RHEL-06-000103  Rule ID: SV-50350r3_rule  Vuln ID: V-38549
# Severity: CAT II Class: Unclass

# Rule Title:  The operating system must connect to external networks or information systems only through managed IPv6 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture.
# STIG ID: RHEL-06-000106  Rule ID: SV-50352r3_rule  Vuln ID: V-38551
# Severity: CAT II Class: Unclass

# Rule Title:  The operating system must prevent public IPv6 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.
# STIG ID: RHEL-06-000107  Rule ID: SV-50354r3_rule  Vuln ID: V-38553
# Severity: CAT II Class: Unclass

RHEL-06-000103-106-107:
  service.running:
    - name: ip6tables
    - enable: True
