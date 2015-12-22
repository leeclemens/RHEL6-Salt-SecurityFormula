# Rule Title:  The RPM package management tool must cryptographically verify the authenticity of all software packages during installation.
# STIG ID: RHEL-06-000514  Rule ID: SV-50262r1_rule  Vuln ID: V-38462
# Severity: CAT I Class: Unclass

RHEL-06-000514-p1:
  file.replace:
    - name: /etc/rpmrc
    - pattern: nosignature.*
    - repl: ""

RHEL-06-000514-p2:
  file.replace:
    - name: /usr/lib/rpm/rpmrc
    - pattern: nosignature.*
    - repl: ""

RHEL-06-000514-p3:
  file.replace:
    - name: /usr/lib/rpm/redhat/rpmrc
    - pattern: nosignature.*
    - repl: ""

{{ pillar['roothome'] }}/.rpmrc:
  file.replace:
    - pattern: nosignature.*
    - repl: ""
