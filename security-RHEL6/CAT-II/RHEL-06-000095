# Rule Title:  The system must be configured to use TCP syncookies when experiencing a TCP SYN flood.
# STIG ID: RHEL-06-000095  Rule ID: SV-50340r2_rule  Vuln ID: V-38539
# Severity: CAT II Class: Unclass

RHEL-06-000095:
  file.replace:
    - name: /etc/sysctl.conf
    - pattern: ^net\.ipv4\.tcp_syncookies.*
    - repl: "net.ipv4.tcp_syncookies = 1"
    - append_if_not_present: True
