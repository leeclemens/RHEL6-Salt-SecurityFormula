#Rule Title:  The Datagram Congestion Control Protocol (DCCP) must be disabled unless required.
#STIG ID: RHEL-06-000124  Rule ID: SV-50315r3_rule  Vuln ID: V-38514
#Severity: CAT II Class: Unclass


{% for file in salt['cmd.run']('ls /etc/modprobe.d/').split('\n') %}
{{ file }}:
  file.replace:
    - pattern: ^install dccp.*
    - repl: "install dccp /bin/true"
    - append_if_not_present: True
{% endfor %}

RHEL-06-000098:
  file.replace:
    - name: /etc/modprobe.conf
    - pattern: ^install dccp.*
    - repl: "install dccp /bin/true"
    - append_if_not_present: True
