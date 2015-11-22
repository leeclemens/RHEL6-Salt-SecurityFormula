# Rule Title:  The telnet daemon must not be running.
# STIG ID: RHEL-06-000211  Rule ID: SV-50390r2_rule  Vuln ID: V-38589
# Severity: CAT I Class: Unclass

telnet:
  service.dead:
    - enable: False
