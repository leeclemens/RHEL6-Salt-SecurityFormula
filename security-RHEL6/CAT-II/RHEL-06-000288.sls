# Rule Title:  The sendmail package must be removed.
# STIG ID: RHEL-06-000288  Rule ID: SV-50472r1_rule  Vuln ID: V-38671
# Severity: CAT II Class: Unclass

RHEL-06-000288:
  pkg.purged:
    - name: sendmail
