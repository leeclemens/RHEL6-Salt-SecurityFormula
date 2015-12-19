# Rule Title:  The operating system must produce audit records containing sufficient information to establish the identity of any user/subject associated with the event.
# STIG ID: RHEL-06-000145  Rule ID: SV-50429r2_rule  Vuln ID: V-38628
# Severity: CAT II Class: Unclass

# Rule Title:  The operating system must employ automated mechanisms to facilitate the monitoring and control of remote access methods.
# STIG ID: RHEL-06-000148  Rule ID: SV-50432r2_rule  Vuln ID: V-38631
# Severity: CAT II Class: Unclass
#
# Rule Title:  The operating system must produce audit records containing sufficient information to establish what type of events occurred.
# STIG ID: RHEL-06-000154  Rule ID: SV-50433r2_rule  Vuln ID: V-38632
# Severity: CAT II Class: Unclass

RHEL-06-000145-148-154:
  service.running:
    - name: auditd
    - enable: true
