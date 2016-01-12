# Rule Title:  The system must not have accounts configured with blank or null passwords.
# STIG ID: RHEL-06-000030  Rule ID: SV-50298r2_rule  Vuln ID: V-38497
# Severity: CAT I Class: Unclass

RHEL-06-000030:
  file.replace:
    - name: /etc/pam.d/system-auth
    - pattern: nullok
    - repl: ""
