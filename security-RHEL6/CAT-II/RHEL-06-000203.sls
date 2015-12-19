# Rule Title:  The xinetd service must be disabled if no network services utilizing it are enabled.
# STIG ID: RHEL-06-000203  Rule ID: SV-50383r2_rule  Vuln ID: V-38582
# Severity: CAT II Class: Unclass
#

RHEL-06-000203:
  service.dead:
    - name: xinetd
    - enable: False
