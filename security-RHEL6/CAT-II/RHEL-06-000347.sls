# Rule Title:  There must be no .netrc files on the system.
# STIG ID: RHEL-06-000347  Rule ID: SV-50420r2_rule  Vuln ID: V-38619
# Severity: CAT II Class: Unclass


{% for target in salt['cmd.run']('find '+pillar['roothome']+' '+pillar['home']+ ' -xdev -name .netrc').split('\n') %}
{{ target }}:
  file.absent:
    - name: {{ target }}

{% endfor %}
