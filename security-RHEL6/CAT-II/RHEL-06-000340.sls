# Rule Title:  The snmpd service must use only SNMP protocol version 3 or newer.
# STIG ID: RHEL-06-000340  Rule ID: SV-50461r1_rule  Vuln ID: V-38660
# Severity: CAT II Class: Unclass

RHEL-06-000340-1:
  file.replace:
    - name: /etc/snmp/snmpd.conf
    - pattern: .*v1.*
    - repl: ""

RHEL-06-000340-2:
  file.replace:
    - name: /etc/snmp/snmpd.conf
    - pattern: .*v2c.*
    - repl: ""

RHEL-06-000340-3:
  file.replace:
    - name: /etc/snmp/snmpd.conf
    - pattern: .*com2sec.*
    - repl: ""
