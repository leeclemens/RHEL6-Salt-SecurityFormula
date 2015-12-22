# Rule Title:  Audit log files must have mode 0640 or less permissive.
# STIG ID: RHEL-06-000383  Rule ID: SV-50299r1_rule  Vuln ID: V-38498
# Severity: CAT II Class: Unclass

# Rule Title:  Audit log files must be owned by root.
# STIG ID: RHEL-06-000384  Rule ID: SV-50296r1_rule  Vuln ID: V-38495
# Severity: CAT II Class: Unclass
#
#
{% for target in salt['cmd.run']('ls '+pillar['auditlogs']).split('\n') %}:
  file.managed:
    - user: root
    - mode: 640
