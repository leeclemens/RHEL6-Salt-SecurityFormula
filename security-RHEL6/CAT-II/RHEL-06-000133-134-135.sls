# Rule Title:  All rsyslog-generated log files must be owned by root.
# STIG ID: RHEL-06-000133  Rule ID: SV-50319r2_rule  Vuln ID: V-38518
# Severity: CAT II Class: Unclass

# Rule Title:  All rsyslog-generated log files must be group-owned by root.
# STIG ID: RHEL-06-000134  Rule ID: SV-50320r2_rule  Vuln ID: V-38519
# Severity: CAT II Class: Unclass

# Rule Title:  All rsyslog-generated log files must have mode 0600 or less permissive.
# STIG ID: RHEL-06-000135  Rule ID: SV-50424r2_rule  Vuln ID: V-38623
# Severity: CAT II Class: Unclass

{% logtype, file in pillar.get('rsyslogfiles', {}).items() %}
{{logtype}}:
  file.managed:
    - name: {{file}}
    - user: root
    - group: root
    - mode: 600
