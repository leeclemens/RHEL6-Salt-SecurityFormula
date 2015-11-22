# Rule Title:  The /etc/gshadow file must be owned by root.
# STIG ID: RHEL-06-000036  Rule ID: SV-50243r1_rule  Vuln ID: V-38443
# Severity: CAT II Class: Unclass

/etc/gshadow:
  file.managed:
    - user: root
