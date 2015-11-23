# Rule Title:  There must be no .rhosts or hosts.equiv files on the system.
# STIG ID: RHEL-06-000019  Rule ID: SV-50292r1_rule  Vuln ID: V-38491
# Severity: CAT I Class: Unclass

/etc/hosts.equiv:
  file.absent

{% for userdir in salt['cmd.run']('ls /home').split('\n') %}
/home{{ userdir }}/.rhosts:
  file.absent

{% endfor %}
