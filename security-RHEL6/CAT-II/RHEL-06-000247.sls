# Rule Title:  The system clock must be synchronized continuously, or at least daily.
# STIG ID: RHEL-06-000247  Rule ID: SV-50421r1_rule  Vuln ID: V-38620
# Severity: CAT II Class: Unclass


RHEL-06-000247:
  service.running:
    - name: ntpd
    - enable: True
