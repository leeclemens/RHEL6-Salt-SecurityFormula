# Rule Title:  The snmpd service must not use a default password.
# STIG ID: RHEL-06-000341  Rule ID: SV-50454r1_rule  Vuln ID: V-38653
# Severity: CAT I Class: Unclass

/etc/snmp/snmpd.conf:
  file.replace:
    - pattern: public.*
    - repl: ""
