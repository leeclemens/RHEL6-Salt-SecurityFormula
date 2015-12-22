# Rule Title:  The Stream Control Transmission Protocol (SCTP) must be disabled unless required.
# STIG ID: RHEL-06-000125  Rule ID: SV-50316r3_rule  Vuln ID: V-38515
# Severity: CAT II Class: Unclass


RHEL-06-000098:
  file.append:
    - name: "/etc/modprobe.d/RHEL-06-000098"
    - text: "install sctp /bin/true"
