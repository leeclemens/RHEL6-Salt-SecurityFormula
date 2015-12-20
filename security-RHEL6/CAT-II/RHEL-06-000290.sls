# Rule Title:  X Windows must not be enabled unless required.
# STIG ID: RHEL-06-000290  Rule ID: SV-50475r1_rule  Vuln ID: V-38674
# Severity: CAT II Class: Unclass


RHEL-06-000290:
  file.replace:
    - name: /etc/inittab
    - pattern: ^.*initdefault.*
    {% if pillar['gui'] == 'True' %}
    - repl: "id:5:initdefault:"
    {% else %}
    - repl: "id:3:initdefault:"
    {% endif %}
