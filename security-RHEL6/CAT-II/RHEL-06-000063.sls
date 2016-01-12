# Rule Title:  The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (login.defs).
# STIG ID: RHEL-06-000063  Rule ID: SV-50377r1_rule  Vuln ID: V-38576
# Severity: CAT II Class: Unclas


RHEL-06-000063:
  file.replace:
    - name: /etc/login.defs
    - pattern: ^ENCRYPT_METHOD.*
    - repl: "ENCRYPT_METHOD SHA512"
