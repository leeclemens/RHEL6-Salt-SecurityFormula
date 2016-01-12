# Rule Title:  The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (libuser.conf).
# STIG ID: RHEL-06-000064  Rule ID: SV-50378r1_rule  Vuln ID: V-38577
# Severity: CAT II Class: Unclass

RHEL-06-000064:
  file.replace:
    - name: /etc/libuser.conf
    - pattern: ^crypt_style .*
    - repl: "crypt_style = sha512"
