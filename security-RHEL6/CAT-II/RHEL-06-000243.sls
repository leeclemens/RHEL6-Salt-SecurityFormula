# Rule Title:  The SSH daemon must be configured to use only FIPS 140-2 approved ciphers.
# STIG ID: RHEL-06-000243  Rule ID: SV-50418r1_rule  Vuln ID: V-38617
# Severity: CAT II Class: Unclass

RHEL-06-000243:
  file.replace:
    - name: /etc/ssh/sshd_config
    - patter: ^Ciphers.*
    - repl: "Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbc"
    - append_if_not_found: True
