# Rule Title:  The system must use a Linux Security Module at boot time.
# STIG ID: RHEL-06-000017  Rule ID: SV-65547r1_rule  Vuln ID: V-51337
# Severity: CAT II Class: Unclass

/etc/grub.conf:
  file.replace:
    - pattern: selinux=0
    - repl: ""
