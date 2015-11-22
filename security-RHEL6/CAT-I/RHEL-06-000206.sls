# Rule Title:  The telnet-server package must not be installed.
# STIG ID: RHEL-06-000206  Rule ID: SV-50388r1_rule  Vuln ID: V-38587
# Severity: CAT I Class: Unclass

telnet-server:
  pkg.purged:
    - normalize: True
