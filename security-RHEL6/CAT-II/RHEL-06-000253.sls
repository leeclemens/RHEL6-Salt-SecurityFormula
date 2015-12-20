# Rule Title:  The LDAP client must use a TLS connection using trust certificates signed by the site CA.
# STIG ID: RHEL-06-000253  Rule ID: SV-50427r1_rule  Vuln ID: V-38626
# Severity: CAT II Class: Unclass


RHEL-06-000253:
  file.replace:
    - name: /etc/pam_ldap.conf
    - pattern: ^tls_cacert.*
    - repl: {{cacert}}
    - append_if_not_found: True
