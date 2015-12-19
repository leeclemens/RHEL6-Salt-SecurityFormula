# Rule Title:  The Stream Control Transmission Protocol (SCTP) must be disabled unless required.
# STIG ID: RHEL-06-000125  Rule ID: SV-50316r3_rule  Vuln ID: V-38515
# Severity: CAT II Class: Unclass

{% for file in salt['cmd.run']('ls /etc/modprobe.d/').split('\n') %}:
  file.replace:
    - pattern: ^install sctp.*
    - repl: "install sctp /bin/true"
    - append_if_not_present: True

RHEL-06-000098:
  file.replace:
    - name: /etc/modprobe.conf
    - pattern: ^install sctp.*
    - repl: "install sctp /bin/true"
    - append_if_not_present: True
