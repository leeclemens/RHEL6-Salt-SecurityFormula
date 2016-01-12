# Rule Title:  Mail relaying must be restricted.
# STIG ID: RHEL-06-000249  Rule ID: SV-50423r2_rule  Vuln ID: V-38622
# Severity: CAT II Class: Unclass
#

RHEL-06-000249:
  file.replace:
    - name: /etc/postfix/main.cf
    - pattern: ^inet_interfaces.*
    - repl: inet_interfaces = localhost
    - append_if_not_found: True
