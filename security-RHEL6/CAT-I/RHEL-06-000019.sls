# Rule Title:  There must be no .rhosts or hosts.equiv files on the system.
# STIG ID: RHEL-06-000019  Rule ID: SV-50292r1_rule  Vuln ID: V-38491
# Severity: CAT I Class: Unclass

RHEL-06-000019:
  file.absent:
    - /etc/hosts.equiv

{% for userdir in salt['cmd.run']('ls '+pillar['home']).split('\n') %}
RHEL-06-000019-{{ userdir }}:
  file.absent:
     - name: "/home/{{userdir }}/.rhosts"

{% endfor %}
