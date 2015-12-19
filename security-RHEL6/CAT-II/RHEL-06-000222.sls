# Rule Title:  The tftp-server package must not be installed unless required.
# STIG ID: RHEL-06-000222  Rule ID: SV-50407r2_rule  Vuln ID: V-38606
# Severity: CAT II Class: Unclass

RHEL-06-000222:
  pkg.purged:
    - name: tftp-server
