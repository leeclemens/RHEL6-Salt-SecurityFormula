# Rule Title:  The system package management tool must cryptographically verify the authenticity of system software packages during installation.
# STIG ID: RHEL-06-000013  Rule ID: SV-50283r1_rule  Vuln ID: V-38483
# Severity: CAT II Class: Unclass

/etc/yum.conf:
  file.replace:
    - pattern: ^gpgcheck.*
    - repl: "gpgcheck=1"
