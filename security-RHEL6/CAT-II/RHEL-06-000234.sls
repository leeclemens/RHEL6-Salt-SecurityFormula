# Rule Title:  The SSH daemon must ignore .rhosts files.
# STIG ID: RHEL-06-000234  Rule ID: SV-50412r1_rule  Vuln ID: V-38611
# Severity: CAT II Class: Unclass

RHEL-06-000234:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: ^IgnoreRhosts.* 
    - repl: "IgnoreRhosts yes"
    - append_if_not_present: True

