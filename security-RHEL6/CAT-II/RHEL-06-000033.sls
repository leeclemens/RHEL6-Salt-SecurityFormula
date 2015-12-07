# Rule Title:  The /etc/shadow file must be owned by root.
# STIG ID: RHEL-06-000033  Rule ID: SV-50303r1_rule  Vuln ID: V-38502
# Severity: CAT II Class: Unclass

RHEL-06-000033:
  file.managed:
    - name: /etc/shadow
    - user: root
