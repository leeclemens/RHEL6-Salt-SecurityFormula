# Rule Title:  The system must employ a local IPv4 firewall.
# STIG ID: RHEL-06-000113  Rule ID: SV-50356r2_rule  Vuln ID: V-38555
# Severity: CAT II Class: Unclass
#
# Rule Title:  The operating system must connect to external networks or information systems only through managed IPv4 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture.
# STIG ID: RHEL-06-000116  Rule ID: SV-50361r2_rule  Vuln ID: V-38560
# Severity: CAT II Class: Unclass
#
# Rule Title:  The operating system must prevent public IPv4 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.
# STIG ID: RHEL-06-000117  Rule ID: SV-50313r2_rule  Vuln ID: V-38512
# Severity: CAT II Class: Unclass

RHEL-06-000113-116-117:
  service.running:
    - name: iptables
    - enable: True
