# Rule Title:  A file integrity tool must be installed.
# STIG ID: RHEL-06-000016  Rule ID: SV-50290r1_rule  Vuln ID: V-38489
# Severity: CAT II Class: Unclass

RHEL-06-000016:
  pkg.installed:
    - name: aide

