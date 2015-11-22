# Rule Title:  The rsh-server package must not be installed.
# STIG ID: RHEL-06-000213  Rule ID: SV-50392r1_rule  Vuln ID: V-38591
# Severity: CAT I Class: Unclass

rsh-server:
  pkg.purged:
    - normalize: True
