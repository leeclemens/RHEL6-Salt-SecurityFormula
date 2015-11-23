# Rule Title:  The RPM package management tool must cryptographically verify the authenticity of all software packages during installation.
# STIG ID: RHEL-06-000514  Rule ID: SV-50262r1_rule  Vuln ID: V-38462
# Severity: CAT I Class: Unclass

/etc/rpmrc:
  file.replace:
    - pattern: nosignature.*
    - repl: ""

/usr/lib/rpm/rpmrc:
  file.replace:
    - pattern: nosignature.*
    - repl: ""

/usrlib/rpm/redhat/rpmrc:
  file.replace:
    - pattern: nosignature.*
    - repl: ""

/{{ pillar['roothome'] }}/.rpmrc:
  file.replace:
    - pattern: nosignature.*
    - repl: ""
