# Rule Title:  The audit system must be configured to audit the loading and unloading of dynamic kernel modules.
# STIG ID: RHEL-06-000202  Rule ID: SV-50381r2_rule  Vuln ID: V-38580
# Severity: CAT II Class: Unclass
#

RHEL-06-000202-1:
  file.replace:
    - name: /etc/audit/audit.rules
    - pattern: .*insmod.*
    - repl: "-w /sbin/insmod -p x -k modules"

RHEL-06-000202-2:
  file.replace:
    - name: /etc/audit/audit.rules
    - pattern: .*rmod.*
    - repl: "-w /sbin/rmod -p x -k modules"

RHEL-06-000202-3:
  file.replace:
    - name: /etc/audit/audit.rules
    - pattern: .*modprobe.*
    - repl: "-w /sbin/modprobe -p x -k modules"

RHEL-06-000202-4:
  file.replace:
    - name: /etc/audit/audit.rules
    - pattern: .*init_module.*delete_module.*
    {% if grains['cpuarch:x86_64'] %}
    - repl: "-a always,exit -F arch=b64 -S init_module -S delete_module -k modules"
    {% else %}
    - repl: "-a always,exit -F arch=b32 -S init_module -S delete_module -k modules"
    {% endif %}
