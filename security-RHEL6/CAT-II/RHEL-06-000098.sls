# Rule Title:  The IPv6 protocol handler must not be bound to the network stack unless needed.
# STIG ID: RHEL-06-000098  Rule ID: SV-50347r2_rule  Vuln ID: V-38546
# Severity: CAT II Class: Unclass
#

{% if pillar['ipv6'] = 'True' %}
{% else %}
{% for file in salt['cmd.run']('ls /etc/modprobe.d/').split('\n') %}:
  file.replace:
    - pattern: ^options ipv6 disable=.*
    - repl: "options ipv6 disable=" + {{ pillar['disableipv6'] }}
    - append_if_not_found: True

RHEL-06-000098:
  file.replace:
    - name: /etc/modprobe.conf
    - pattern: ^options ipv6 disable=.*
    - repl: "options ipv6 disable=" + {{ pillar['disableipv6'] }}
    - append_if_not_found: True

{% endif %}
