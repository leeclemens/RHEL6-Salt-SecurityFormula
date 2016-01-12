# Rule Title:  If the system is using LDAP for authentication or account information, the system must use a TLS connection using FIPS 140-2 approved cryptographic algorithms.
# STIG ID: RHEL-06-000252  Rule ID: SV-50426r1_rule  Vuln ID: V-38625
# Severity: CAT II Class: Unclass

RHEL-06-000252:
  file.replace:
    - name: /etc/pam_ldap.conf
    - pattern: ^ssl.*
    - repl: "ssl start_tls"
    - append_if_not_found: True
