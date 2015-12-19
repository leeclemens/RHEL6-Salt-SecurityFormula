# Rule Title:  The ypserv package must not be installed.
# STIG ID: RHEL-06-000220  Rule ID: SV-50404r1_rule  Vuln ID: V-38603
# Severity: CAT II Class: Unclass

RHEL-06-000220:
  pkg.purged:
    - name: ypserv
