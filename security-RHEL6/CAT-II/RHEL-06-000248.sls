# Rule Title:  The system clock must be synchronized to an authoritative DoD time source.
# STIG ID: RHEL-06-000248  Rule ID: SV-50422r1_rule  Vuln ID: V-38621
# Severity: CAT II Class: Unclass

{% for item, server in pillar.get('ntpservers', {}).items() %}
{{item}}:
  file.append:
    - name: /etc/ntp.conf
    - text: {{server}}
{% endfor %}
