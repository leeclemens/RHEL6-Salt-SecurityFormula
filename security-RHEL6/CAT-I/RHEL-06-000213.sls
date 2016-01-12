# Rule Title:  The rsh-server package must not be installed.
# STIG ID: RHEL-06-000213  Rule ID: SV-50392r1_rule  Vuln ID: V-38591
# Severity: CAT I Class: Unclass

RHEL-06-000213:
  pkg.purged:
    - name: rsh-server
    - normalize: True
